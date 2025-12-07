uint64_t sub_236EC0220(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_236ECF6B4();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC02E8, 0, 0);
}

uint64_t sub_236EC02E8()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 isiOSAppOnMac];

  if (!v2)
  {
    goto LABEL_10;
  }

  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v3 = sub_236ECF764();
  __swift_project_value_buffer(v3, qword_27DE8BD48);
  v4 = sub_236ECF744();
  v5 = sub_236ECF8F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_236EBF000, v4, v5, "This feature is not supported on this platform", v6, 2u);
    MEMORY[0x2383C2210](v6, -1, -1);
  }

  sub_236ECA420();
  v7 = swift_allocError();
  *v8 = 12;
  swift_willThrow();
  if (v7)
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
LABEL_10:
    if (qword_27DE8BD60 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 96);
    v13 = *(v0 + 32);
    v12 = *(v0 + 40);
    v18 = *(v0 + 16);
    v14 = sub_236ECF6E4();
    __swift_project_value_buffer(v14, qword_27DE8BD68);
    sub_236ECF6D4();
    sub_236ECF694();
    v15 = swift_task_alloc();
    *(v0 + 72) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v18;
    *(v15 + 40) = v13;
    *(v15 + 48) = v11 & 1;
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_236EC05BC;
    v17 = *(v0 + 64);

    return sub_236EC0F10("Start Session", 13, 2, v17, &unk_236ED02F0, v15);
  }
}

uint64_t sub_236EC05BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 88) = v1;

  (*(v4[7] + 8))(v4[8], v4[6]);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_236EC0788, 0, 0);
  }

  else
  {

    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_236EC0788()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_236EC07EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 200) = a6;
  *(v6 + 104) = a4;
  *(v6 + 112) = a5;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  v7 = sub_236ECF914();
  *(v6 + 120) = v7;
  *(v6 + 128) = *(v7 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = sub_236ECF904();
  *(v6 + 152) = swift_task_alloc();
  sub_236ECF794();
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC0914, 0, 0);
}

uint64_t sub_236EC0914()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 128);
    v12 = *(v0 + 120);
    sub_236ECF438(0, &qword_27DE8BCC0, 0x277D85C78);
    sub_236ECF784();
    *(v0 + 56) = MEMORY[0x277D84F90];
    sub_236ECF480(&qword_27DE8BCC8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCD0, &qword_236ED0E48);
    sub_236ECF4C8(&qword_27DE8BCD8, &qword_27DE8BCD0, &qword_236ED0E48);
    sub_236ECF984();
    (*(v4 + 104))(v3, *MEMORY[0x277D85260], v12);
    v2 = sub_236ECF934();
    v1 = 0;
  }

  *(v0 + 168) = v2;
  v5 = *(v0 + 200);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  sub_236ECF51C(*(v0 + 96), v0 + 16);
  type metadata accessor for CarKeyRemoteControlSession();
  v8 = swift_allocObject();
  *(v0 + 176) = v8;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  sub_236ECF580((v0 + 16), v8 + 40);
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = v5 & 1;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 80) = v2;
  v9 = v1;
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  *v10 = v0;
  v10[1] = sub_236EC0B6C;

  return sub_236EC223C();
}

uint64_t sub_236EC0B6C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_236EC0D1C;
  }

  else
  {
    v2 = sub_236EC0C80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236EC0C80()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 80);

  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_236EC0D1C()
{
  v1 = *(v0 + 192);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72);
    if ([v3 code] == 5)
    {
      v4 = *(v0 + 168);

      sub_236ECA420();
      swift_allocError();
      v6 = 5;
LABEL_6:
      *v5 = v6;
      swift_willThrow();

      goto LABEL_9;
    }

    if ([v3 code] == 17)
    {
      v4 = *(v0 + 168);

      sub_236ECA420();
      swift_allocError();
      v6 = 11;
      goto LABEL_6;
    }
  }

  v7 = *(v0 + 192);
  v8 = *(v0 + 168);

  sub_236ECA420();
  swift_allocError();
  *v9 = 0;
  swift_willThrow();

LABEL_9:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_236EC0F10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 128) = a3;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_236ECF6B4();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC0FDC, 0, 0);
}

uint64_t sub_236EC0FDC()
{
  v1 = sub_236ECF6D4();
  v2 = sub_236ECF954();
  result = sub_236ECF964();
  if (result)
  {
    v4 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = sub_236ECF6A4();
        _os_signpost_emit_with_name_impl(&dword_236EBF000, v1, v2, v6, v4, "", v5, 2u);
        MEMORY[0x2383C2210](v5, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v4 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v7 = *(v0 + 56);
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 80));
  sub_236ECF724();
  swift_allocObject();
  *(v0 + 104) = sub_236ECF714();
  v9 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_236EC11EC;

  return v9(v0 + 16);
}

uint64_t sub_236EC11EC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_236EC138C;
  }

  else
  {
    v2 = sub_236EC1300;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236EC1300()
{
  sub_236ECA474(*(v0 + 72), *(v0 + 32), *(v0 + 128), *(v0 + 104));

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_236EC138C()
{
  sub_236ECA474(*(v0 + 72), *(v0 + 32), *(v0 + 128), *(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

void sub_236EC14B0(char a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  if ([objc_opt_self() registerCarKeyAppForLaunch:a1 & 1 error:v9])
  {
    v1 = v9[0];
    return;
  }

  v2 = v9[0];
  v3 = sub_236ECF664();

  swift_willThrow();
  v9[0] = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if ([v8 code] != 5)
  {

LABEL_7:
    sub_236ECA420();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v6 = v3;
    goto LABEL_8;
  }

  sub_236ECA420();
  swift_allocError();
  *v5 = 5;
  swift_willThrow();

  v6 = v9[0];
LABEL_8:
}

uint64_t sub_236EC1694(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_236EC19CC()
{
  v1 = v0;
  v2 = sub_236ECF6B4();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_236ECF6E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_27DE8BD68);
  (*(v6 + 16))(v8, v9, v5);
  sub_236ECF6D4();
  sub_236ECF694();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_236ECF6D4();
  v12 = sub_236ECF954();
  v13 = sub_236ECF6A4();
  v36 = v11;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v11, v12, v13, "Get Vehicle Reports", "", v10, 2u);
  v14 = v0[12];
  if (v14)
  {
    v40 = 0;
    v15 = v14;
    v16 = [v15 getVehicleReports_];
    v17 = v40;
    if (!v16)
    {
      v25 = v40;
      v22 = sub_236ECF664();

      swift_willThrow();
LABEL_10:
      v40 = v22;
      v26 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
      sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v1 = v39;
        if ([v39 code] == 12)
        {

          sub_236ECA420();
          v27 = swift_allocError();
          *v28 = 3;
          swift_willThrow();

          if (!v27)
          {
            goto LABEL_15;
          }

LABEL_18:

          (*(v37 + 8))(v4, v38);
          (*(v6 + 8))(v8, v5);
          return v1;
        }
      }

      sub_236ECA420();
      v32 = swift_allocError();
      *v33 = 0;
      swift_willThrow();

      if (!v32)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    v1 = v16;
    sub_236ECF438(0, &qword_27DE8BC90, 0x277D493C0);
    v18 = sub_236ECF7B4();
    v19 = v17;

    v20 = v35[1];
    v21 = sub_236EC1EB8(v18);
    v22 = v20;
    if (v20)
    {

      goto LABEL_10;
    }

    v1 = v21;
  }

  else
  {
    sub_236ECA420();
    v23 = swift_allocError();
    *v24 = 3;
    swift_willThrow();
    if (v23)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v29 = sub_236ECF944();
  v30 = sub_236ECF6A4();
  v31 = v36;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v36, v29, v30, "Get Vehicle Reports", "", v10, 2u);

  MEMORY[0x2383C2210](v10, -1, -1);
  (*(v37 + 8))(v4, v38);
  (*(v6 + 8))(v8, v5);
  return v1;
}

uint64_t sub_236EC1EB8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = a1;
    v53 = MEMORY[0x277D84F90];
    sub_236ECC380(0, v3, 0);
    v6 = v53;
    v7 = v5 + 64;
    result = sub_236ECF994();
    v9 = result;
    v10 = 0;
    v11 = *(v5 + 36);
    v39 = v5 + 72;
    v40 = v3;
    v41 = v11;
    v42 = v5 + 64;
    v43 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
    {
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v11 != *(v5 + 36))
      {
        goto LABEL_24;
      }

      v46 = v9 >> 6;
      v44 = v10;
      v13 = *(*(v5 + 56) + 8 * v9);

      v14 = [v13 readerIdentifier];
      v15 = sub_236ECF7D4();
      v17 = v16;

      v47 = v15;
      v48 = v17;
      v49 = 0;
      v50 = v4;
      v51 = sub_236ECD4C0(v4);
      v52 = sub_236ECD59C(v4);
      v18 = [v13 getSupportedRKEFunctions];
      sub_236ECF438(0, &qword_27DE8BC98, 0x277CCABB0);
      v19 = sub_236ECF814();

      v20 = v13;
      v21 = sub_236ECD6A8(v19, v20, &v47);
      v45 = v2;

      v50 = v21;
      v22 = v51;
      v23 = *(v51 + 16);

      v24 = v23 != 0;
      v26 = v47;
      v25 = v48;
      v27 = v52;
      v53 = v6;
      v29 = *(v6 + 16);
      v28 = *(v6 + 24);
      if (v29 >= v28 >> 1)
      {
        v38 = v24;
        result = sub_236ECC380((v28 > 1), v29 + 1, 1);
        v24 = v38;
        v6 = v53;
      }

      *(v6 + 16) = v29 + 1;
      v30 = v6 + 48 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v25;
      *(v30 + 48) = v24;
      *(v30 + 56) = v21;
      *(v30 + 64) = v22;
      *(v30 + 72) = v27;
      v5 = v43;
      v12 = 1 << *(v43 + 32);
      if (v9 >= v12)
      {
        goto LABEL_25;
      }

      v7 = v42;
      v31 = *(v42 + 8 * v46);
      if ((v31 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      v11 = v41;
      if (v41 != *(v43 + 36))
      {
        goto LABEL_27;
      }

      v32 = v31 & (-2 << (v9 & 0x3F));
      if (v32)
      {
        v12 = __clz(__rbit64(v32)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v4 = MEMORY[0x277D84F90];
      }

      else
      {
        v33 = v46 << 6;
        v34 = v46 + 1;
        v35 = (v39 + 8 * v46);
        v4 = MEMORY[0x277D84F90];
        while (v34 < (v12 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_236ECF42C(v9, v41, 0);
            v12 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_236ECF42C(v9, v41, 0);
      }

LABEL_4:
      v2 = v45;
      v10 = v44 + 1;
      v9 = v12;
      if (v44 + 1 == v40)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_236EC225C()
{
  v0[12] = 0;
  v1 = v0[14];
  if ((*(v1 + 32) & 1) == 0)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC40, &qword_236ED0DE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_236ED02B0;
    *(inited + 32) = 0x61745365676E6172;
    *(inited + 40) = 0xEA00000000007472;
    *(inited + 48) = v3;
    *(inited + 56) = 0x646E4565676E6172;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = v2;
    v5 = sub_236ECCDAC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC48, &qword_236ED0DF0);
    swift_arrayDestroy();
    v0[12] = v5;
    v1 = v0[14];
  }

  v6 = swift_task_alloc();
  v0[15] = v6;
  *(v6 + 16) = v0 + 12;
  *(v6 + 24) = v1;
  v7 = swift_task_alloc();
  v0[16] = v7;
  v8 = sub_236ECF438(0, &qword_27DE8BC38, 0x277D49398);
  *v7 = v0;
  v7[1] = sub_236EC242C;

  return MEMORY[0x2822008A0](v0 + 13, 0, 0, 0xD000000000000014, 0x8000000236ED13A0, sub_236ECE77C, v6, v8);
}

uint64_t sub_236EC242C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_236EC25BC;
  }

  else
  {

    v2 = sub_236EC2548;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236EC2548()
{
  v1 = v0[14];
  v2 = *(v1 + 96);
  *(v1 + 96) = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_236EC25BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_236EC2628(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC58, &qword_236ED0E00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = *a2;
  if (v12)
  {

    sub_236EC2894(v13);

    v12 = sub_236ECF7A4();
  }

  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_236ECE82C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236EC2B48;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  v17 = [v11 startRKESessionWithOptions:v12 startCallback:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();
}

uint64_t sub_236EC2894(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC60, &qword_236ED0E08);
    v2 = sub_236ECFA44();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_236ECEA14(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_236ECEA14(v29, v30);
    result = sub_236ECF9A4();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_236ECEA14(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_236EC2B48(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_236EC2BD4()
{
  v18 = sub_236ECF6B4();
  v0 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_236ECF6E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_27DE8BD68);
  (*(v4 + 16))(v6, v7, v3);
  sub_236ECF6D4();
  sub_236ECF694();
  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = sub_236ECF6D4();
  v10 = sub_236ECF954();
  v11 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v9, v10, v11, "End Session", "", v8, 2u);
  v12 = *(v17[1] + 96);
  if (v12)
  {
    [v12 endSession];
    v13 = sub_236ECF944();
    v14 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v9, v13, v14, "End Session", "", v8, 2u);

    MEMORY[0x2383C2210](v8, -1, -1);
  }

  else
  {
    sub_236ECA420();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
  }

  (*(v0 + 8))(v2, v18);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_236EC2EE8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAB8, &qword_236ED0308);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v38 = sub_236ECF6B4();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_236ECF6E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v33 = a1[1];
  v34 = v11;
  v12 = a1[3];
  v32 = a1[2];
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27DE8BD68);
  (*(v8 + 16))(v10, v13, v7);
  sub_236ECF6D4();
  sub_236ECF694();
  v14 = swift_slowAlloc();
  *v14 = 0;
  v15 = sub_236ECF6D4();
  v16 = sub_236ECF954();
  v36 = v7;
  v17 = v16;
  v18 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v15, v17, v18, "Perform Remote Keyless Entry Action", "", v14, 2u);
  v19 = *(v35 + 96);
  if (v19)
  {
    v20 = sub_236ECF864();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v23 = v33;
    v22 = v34;
    v21[4] = v19;
    v21[5] = v22;
    v24 = v32;
    v21[6] = v23;
    v21[7] = v24;
    v21[8] = v12;
    v25 = v19;

    v26 = sub_236EC36B0(0, 0, v4, &unk_236ED0318, v21);
    type metadata accessor for RemoteKeylessEntryAction.ExecutionRequest();
    v12 = swift_allocObject();
    *(v12 + 16) = v26;
    v27 = sub_236ECF944();
    v28 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v15, v27, v28, "Perform Remote Keyless Entry Action", "", v14, 2u);

    MEMORY[0x2383C2210](v14, -1, -1);
  }

  else
  {
    sub_236ECA420();
    swift_allocError();
    *v29 = 3;
    swift_willThrow();
  }

  (*(v37 + 8))(v6, v38);
  (*(v8 + 8))(v10, v36);
  return v12;
}

uint64_t sub_236EC3320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[19] = a1;
  v8[20] = a4;
  return MEMORY[0x2822009F8](sub_236EC3348, 0, 0);
}

uint64_t sub_236EC3348()
{
  v1 = v0[20];
  v2 = sub_236ECF8C4();
  v0[25] = v2;
  v3 = sub_236ECF8C4();
  v0[26] = v3;
  v4 = sub_236ECF7C4();
  v0[27] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236EC34C8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC88, &qword_236ED0E20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236EC35D8;
  v0[13] = &block_descriptor_190;
  v0[14] = v5;
  [v1 sendRKEFunction:v2 action:v3 readerIdentifier:v4 authorization:0 isEnduring:0 isHandlingExternal:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236EC34C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_236ECF5E4;
  }

  else
  {
    v2 = sub_236ECF5D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236EC35D8(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_236EC36B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAB8, &qword_236ED0308);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_236ECF364(a3, v22 - v9, &qword_27DE8BAB8, &qword_236ED0308);
  v11 = sub_236ECF864();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_236ECF3CC(v10, &qword_27DE8BAB8, &qword_236ED0308);
  }

  else
  {
    sub_236ECF854();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_236ECF824();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_236ECF7E4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_236ECF3CC(a3, &qword_27DE8BAB8, &qword_236ED0308);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_236ECF3CC(a3, &qword_27DE8BAB8, &qword_236ED0308);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

char *sub_236EC3954(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAB8, &qword_236ED0308);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v58 = sub_236ECF6B4();
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_236ECF6E4();
  v67 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v56 = a1[1];
  v14 = a1[3];
  v55 = a1[2];
  v54 = *a2;
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_27DE8BD68);
  (*(v67 + 16))(v12, v15, v10);
  sub_236ECF6D4();
  sub_236ECF694();
  v16 = swift_slowAlloc();
  v59 = v10;
  v60 = v12;
  v17 = v16;
  *v16 = 0;
  v18 = sub_236ECF6D4();
  v19 = sub_236ECF954();
  v20 = sub_236ECF6A4();
  v57 = v18;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v18, v19, v20, "Perform Remote Keyless Entry Enduring Action", "", v17, 2u);
  v21 = *(v3 + 96);
  if (v21)
  {
    v22 = sub_236ECF864();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v21;
    *(v23 + 40) = v13;
    v24 = v13;
    v25 = v56;
    v53 = v17;
    v26 = v55;
    *(v23 + 48) = v56;
    *(v23 + 56) = v26;
    *(v23 + 64) = v14;
    *(v23 + 72) = v54;
    v27 = v21;

    v28 = sub_236EC36B0(0, 0, v8, &unk_236ED0328, v23);
    v29 = objc_allocWithZone(type metadata accessor for RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest(0));

    ObjectType = swift_getObjectType();
    v31 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStream;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAE0, &qword_236ED0370);
    (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
    v33 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStreamContinuation;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
    (*(*(v34 - 8) + 56))(&v29[v33], 1, 1, v34);
    v35 = &v29[OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_action];
    *v35 = v24;
    *(v35 + 1) = v25;
    *(v35 + 2) = v26;
    *(v35 + 3) = v14;
    *&v29[OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_session] = v27;
    *&v29[OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_task] = v28;
    v36 = type metadata accessor for SESRKESessionContinuationDelegateHandler();
    v37 = objc_allocWithZone(v36);
    v38 = &v37[OBJC_IVAR____TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler_delegate];
    *v38 = 0u;
    *(v38 + 1) = 0u;
    *(v38 + 4) = 0;
    *&v37[OBJC_IVAR____TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler_session] = v27;
    v66.receiver = v37;
    v66.super_class = v36;
    v39 = v27;

    v40 = objc_msgSendSuper2(&v66, sel_init);
    [v39 setContinuationDelegate_];
    *&v29[OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_continuationDelegateHandler] = v40;
    v65.receiver = v29;
    v65.super_class = ObjectType;
    v41 = objc_msgSendSuper2(&v65, sel_init);
    v42 = *(v41 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_continuationDelegateHandler);
    v64[3] = ObjectType;
    v64[4] = &off_2849E2848;
    v21 = v41;
    v43 = v42;

    v64[0] = v21;
    sub_236ECF51C(v64, v63);
    v44 = OBJC_IVAR____TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler_delegate;
    swift_beginAccess();
    sub_236ECF2FC(v63, v43 + v44, &qword_27DE8BC28, &qword_236ED0DD8);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    LOBYTE(v44) = sub_236ECF944();
    v45 = v62;
    v46 = sub_236ECF6A4();
    v47 = v44;
    v48 = v57;
    v49 = v53;
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v57, v47, v46, "Perform Remote Keyless Entry Enduring Action", "", v53, 2u);

    MEMORY[0x2383C2210](v49, -1, -1);
    (*(v61 + 8))(v45, v58);
  }

  else
  {
    sub_236ECA420();
    swift_allocError();
    *v50 = 3;
    swift_willThrow();

    (*(v61 + 8))(v62, v58);
  }

  (*(v67 + 8))(v60, v59);
  return v21;
}

uint64_t sub_236EC3FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v10;
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 168) = a5;
  *(v8 + 176) = a6;
  *(v8 + 152) = a1;
  *(v8 + 160) = a4;
  return MEMORY[0x2822009F8](sub_236EC4030, 0, 0);
}

uint64_t sub_236EC4030()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 80;
  v4 = v0 + 144;
  v5 = *(v0 + 160);
  v6 = *(v1 + 232);
  v7 = sub_236ECF8C4();
  *(v1 + 200) = v7;
  v8 = sub_236ECF8C4();
  *(v1 + 208) = v8;
  v9 = sub_236ECF7C4();
  *(v1 + 216) = v9;
  *(v1 + 16) = v1;
  *(v1 + 56) = v4;
  *(v1 + 24) = sub_236EC41B8;
  v10 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC88, &qword_236ED0E20);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_236EC35D8;
  *(v1 + 104) = &block_descriptor_186;
  *(v1 + 112) = v10;
  [v5 sendRKEFunction:v7 action:v8 readerIdentifier:v9 authorization:0 isEnduring:1 isHandlingExternal:v6 & 1 completion:v3];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_236EC41B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_236EC4358;
  }

  else
  {
    v2 = sub_236EC42C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236EC42C8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  v5 = sub_236ECF8B4();
  *v4 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_236EC4358()
{
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void *sub_236EC43F4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAB8, &qword_236ED0308);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v42 = sub_236ECF6B4();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_236ECF6E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v37 = a1[1];
  v38 = v11;
  v12 = a1[3];
  v36 = a1[2];
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27DE8BD68);
  (*(v8 + 16))(v10, v13, v7);
  sub_236ECF6D4();
  sub_236ECF694();
  v14 = swift_slowAlloc();
  *v14 = 0;
  v15 = sub_236ECF6D4();
  v16 = sub_236ECF954();
  v40 = v7;
  v17 = v16;
  v18 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v15, v17, v18, "Perform Remote Keyless Entry Enduring Action", "", v14, 2u);
  v19 = *(v39 + 12);
  if (v19)
  {
    v20 = sub_236ECF864();
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v39 = v10;
    v22 = v8;
    v23 = v38;
    v21[4] = v19;
    v21[5] = v23;
    v34 = v6;
    v35 = v15;
    v24 = v36;
    v25 = v37;
    v21[6] = v37;
    v21[7] = v24;
    v21[8] = v12;
    v26 = v19;

    v27 = sub_236EC36B0(0, 0, v4, &unk_236ED0338, v21);
    type metadata accessor for RemoteKeylessEntryEnduringAction.EnduringExecutionRequest();
    v17 = swift_allocObject();
    v17[2] = v23;
    v17[3] = v25;
    v17[4] = v24;
    v17[5] = v12;
    v17[6] = v27;
    v17[7] = v26;

    LOBYTE(v27) = sub_236ECF944();
    v28 = v34;
    v29 = sub_236ECF6A4();
    v30 = v35;
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v35, v27, v29, "Perform Remote Keyless Entry Enduring Action", "", v14, 2u);

    MEMORY[0x2383C2210](v14, -1, -1);
    (*(v41 + 8))(v28, v42);
    (*(v22 + 8))(v39, v40);
  }

  else
  {
    sub_236ECA420();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();

    (*(v41 + 8))(v6, v42);
    (*(v8 + 8))(v10, v40);
  }

  return v17;
}

uint64_t sub_236EC4850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[19] = a1;
  v8[20] = a4;
  return MEMORY[0x2822009F8](sub_236EC4878, 0, 0);
}

uint64_t sub_236EC4878()
{
  v1 = v0[20];
  v2 = sub_236ECF8C4();
  v0[25] = v2;
  v3 = sub_236ECF8C4();
  v0[26] = v3;
  v4 = sub_236ECF7C4();
  v0[27] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236EC34C8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC88, &qword_236ED0E20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236EC35D8;
  v0[13] = &block_descriptor_182;
  v0[14] = v5;
  [v1 sendRKEFunction:v2 action:v3 readerIdentifier:v4 authorization:0 isEnduring:1 isHandlingExternal:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236EC49F8(uint64_t a1, uint8_t *a2, uint8_t *a3, uint8_t *a4)
{
  v6 = v5;
  v48[2] = a3;
  v48[3] = a4;
  v48[1] = a2;
  v7 = sub_236ECF6B4();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_236ECF6E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_27DE8BD68);
  v50 = v11;
  v51 = v10;
  (*(v11 + 16))(v13, v14, v10);
  sub_236ECF6D4();
  sub_236ECF694();
  v15 = swift_slowAlloc();
  *v15 = 0;
  v16 = v13;
  v17 = sub_236ECF6D4();
  v18 = sub_236ECF954();
  v19 = sub_236ECF6A4();
  v49 = v17;
  v48[0] = v15;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v17, v18, v19, "Send Passthrough Data", "", v15, 2u);
  v20 = *(v4 + 96);
  v21 = v9;
  if (!v20)
  {
    v26 = v9;
    sub_236ECA420();
    v28 = swift_allocError();
    *v29 = 3;
    swift_willThrow();
    v31 = v50;
    v30 = v51;
    if (!v28)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v22 = v20;
  v23 = sub_236ECF674();
  v24 = sub_236ECF7C4();
  v55 = 0;
  v25 = [v22 sendPassthroughMessage:v23 readerIdentifier:v24 error:&v55];

  if (v25)
  {
    v26 = v9;
    v27 = v55;
    goto LABEL_21;
  }

  v32 = v55;
  v33 = sub_236ECF664();

  swift_willThrow();
  v55 = v33;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v35 = v54;
    if ([v35 code] == 19)
    {
      v26 = v21;

      sub_236ECA420();
      v37 = swift_allocError();
      v38 = 6;
      goto LABEL_17;
    }

    if ([v35 code] == 12)
    {
      v26 = v21;

      sub_236ECA420();
      v37 = swift_allocError();
      v38 = 3;
      goto LABEL_17;
    }

    v39 = [v35 code];

    if (v39 == 1)
    {
      v26 = v21;

      sub_236ECA420();
      v37 = swift_allocError();
      v38 = 7;
      goto LABEL_17;
    }

    if ([v35 code] == 13)
    {
      v26 = v21;

      sub_236ECA420();
      v37 = swift_allocError();
      v38 = 1;
LABEL_17:
      *v36 = v38;
      swift_willThrow();

      v31 = v50;
      v30 = v51;
      if (!v37)
      {
        goto LABEL_18;
      }

LABEL_22:

      (*(v52 + 8))(v26, v53);
      return (*(v31 + 8))(v16, v30);
    }
  }

  v26 = v21;

  sub_236ECA420();
  v6 = swift_allocError();
  *v46 = 0;
  swift_willThrow();

LABEL_21:
  v31 = v50;
  v30 = v51;
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_18:
  v40 = sub_236ECF944();
  v41 = v26;
  v42 = sub_236ECF6A4();
  v43 = v40;
  v44 = v49;
  v45 = v48[0];
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v49, v43, v42, "Send Passthrough Data", "", v48[0], 2u);

  MEMORY[0x2383C2210](v45, -1, -1);
  (*(v52 + 8))(v41, v53);
  return (*(v31 + 8))(v16, v30);
}

uint64_t sub_236EC4F98(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v39[1] = a1;
  v39[2] = a2;
  v6 = sub_236ECF6B4();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_236ECF6E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_27DE8BD68);
  v14 = *(v10 + 16);
  v40 = v9;
  v14(v12, v13, v9);
  sub_236ECF6D4();
  sub_236ECF694();
  v15 = swift_slowAlloc();
  *v15 = 0;
  v16 = sub_236ECF6D4();
  v17 = sub_236ECF954();
  LOBYTE(v18) = v8;
  v19 = sub_236ECF6A4();
  v20 = v17;
  v21 = v16;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v16, v20, v19, "Querying Passive Entry Availability", "", v15, 2u);
  v22 = *(v5 + 96);
  if (!v22)
  {
    sub_236ECA420();
    v27 = swift_allocError();
    *v28 = 3;
    swift_willThrow();
    if (!v27)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v18 = v22;
  LOBYTE(v44) = 0;
  v23 = sub_236ECF7C4();
  v45 = 0;
  v24 = [v18 isPassiveEntryAvailable:v23 isAvailable:&v44 error:&v45];

  if (v24)
  {
    LOBYTE(v25) = v44;
    v26 = v45;
    if (!v3)
    {
      goto LABEL_13;
    }

LABEL_10:
    v45 = v4;
    v29 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
    sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v30 = v44;
      if ([v44 code] == 19)
      {

        sub_236ECA420();
        v32 = swift_allocError();
        v33 = 6;
        goto LABEL_16;
      }

      if ([v30 code] == 12)
      {

        sub_236ECA420();
        v32 = swift_allocError();
        v33 = 3;
LABEL_16:
        *v31 = v33;
        swift_willThrow();

        if (!v32)
        {
          goto LABEL_17;
        }

LABEL_20:

        (*(v41 + 8))(v8, v42);
        (*(v10 + 8))(v12, v40);
        return v18 & 1;
      }
    }

    sub_236ECA420();
    v36 = swift_allocError();
    *v37 = 0;
    swift_willThrow();

    if (!v36)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v25 = v45;
  v4 = sub_236ECF664();

  swift_willThrow();
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_13:

  v43 = v25 & 1;
LABEL_17:
  v34 = sub_236ECF944();
  v35 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v21, v34, v35, "Querying Passive Entry Availability", "", v15, 2u);

  LOBYTE(v18) = v43;
  MEMORY[0x2383C2210](v15, -1, -1);
  (*(v41 + 8))(v8, v42);
  (*(v10 + 8))(v12, v40);
  return v18 & 1;
}

void sub_236EC5494(uint64_t *a5@<X8>)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v7 = *(v5 + 96);
  if (!v7)
  {
    sub_236ECA420();
    swift_allocError();
    *v27 = 3;
    swift_willThrow();
    return;
  }

  v8 = v7;
  v9 = sub_236ECF674();
  v10 = sub_236ECF7C4();
  v41[0] = 0;
  v11 = [v8 sign:v9 readerIdentifier:v10 error:v41];

  if (v11)
  {
    v12 = v41[0];
    v13 = [v11 appBundleID];
    v14 = sub_236ECF7D4();
    v38 = v15;
    v39 = v14;

    v16 = [v11 nonce];
    v17 = sub_236ECF684();
    v36 = v18;
    v37 = v17;

    v19 = [v11 signedData];
    v20 = sub_236ECF684();
    v22 = v21;

    v23 = [v11 signature];
    v24 = sub_236ECF684();
    v26 = v25;

    *a5 = v39;
    a5[1] = v38;
    a5[2] = v37;
    a5[3] = v36;
    a5[4] = v20;
    a5[5] = v22;
    a5[6] = v24;
    a5[7] = v26;
    return;
  }

  v28 = v41[0];
  v29 = sub_236ECF664();

  swift_willThrow();
  v41[0] = v29;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v31 = v40;
    if ([v31 code] == 12)
    {

      sub_236ECA420();
      swift_allocError();
      v33 = 3;
LABEL_12:
      *v32 = v33;
      swift_willThrow();

      return;
    }

    v34 = [v31 code];

    if (v34 == 17)
    {

      sub_236ECA420();
      swift_allocError();
      v33 = 11;
      goto LABEL_12;
    }

    if ([v31 code] == 19)
    {

      sub_236ECA420();
      swift_allocError();
      v33 = 6;
      goto LABEL_12;
    }
  }

  sub_236ECA420();
  swift_allocError();
  *v35 = 0;
  swift_willThrow();
}

uint64_t CarKeyRemoteControlSession.Attestation.appBundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CarKeyRemoteControlSession.Attestation.nonce.getter()
{
  v1 = *(v0 + 16);
  sub_236ECAA74(v1, *(v0 + 24));
  return v1;
}

uint64_t CarKeyRemoteControlSession.Attestation.signedData.getter()
{
  v1 = *(v0 + 32);
  sub_236ECAA74(v1, *(v0 + 40));
  return v1;
}

uint64_t CarKeyRemoteControlSession.Attestation.signature.getter()
{
  v1 = *(v0 + 48);
  sub_236ECAA74(v1, *(v0 + 56));
  return v1;
}

uint64_t CarKeyRemoteControlSession.ContinuationStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v1);
  return sub_236ECFAF4();
}

uint64_t sub_236EC59A4()
{
  v1 = *v0;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v1);
  return sub_236ECFAF4();
}

uint64_t sub_236EC5A18(uint64_t a1)
{
  v2 = *v1;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v2);
  return sub_236ECFAF4();
}

id *CarKeyRemoteControlSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return v0;
}

uint64_t CarKeyRemoteControlSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t VehicleReport.identifier.getter()
{
  v1 = *v0;

  return v1;
}

CarKey::FunctionStatus_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VehicleReport.status(for:)(CarKey::FunctionIdentifier a1)
{
  v41 = v1;
  v4 = sub_236ECF6B4();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_236ECF6E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1.rawValue;
  v13 = *(v2 + 24);
  v12 = *(v2 + 32);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_27DE8BD68);
  v42 = v8;
  v15 = *(v8 + 16);
  v45 = v7;
  v15(v10, v14, v7);
  sub_236ECF6D4();
  sub_236ECF694();
  v16 = swift_slowAlloc();
  *v16 = 0;
  v17 = sub_236ECF6D4();
  v18 = sub_236ECF954();
  v19 = sub_236ECF6A4();
  v43 = v17;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v17, v18, v19, "Getting Function Status", "", v16, 2u);
  v20 = *(v13 + 16);
  v21 = (v13 + 32);
  v22 = v44;
  do
  {
    if (!v20)
    {
      if (qword_27DE8BD40 != -1)
      {
        swift_once();
      }

      v27 = sub_236ECF764();
      __swift_project_value_buffer(v27, qword_27DE8BD48);
      v28 = sub_236ECF744();
      v29 = sub_236ECF8F4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = v11;
        _os_log_impl(&dword_236EBF000, v28, v29, "Unknown function %ld", v30, 0xCu);
        MEMORY[0x2383C2210](v30, -1, -1);
      }

      sub_236ECA420();
      v31 = swift_allocError();
      *v32 = 4;
      swift_willThrow();
      v25 = v45;
      if (!v31)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v23 = *v21++;
    --v20;
  }

  while (v23 != v11);
  if (*(v12 + 16))
  {
    v24 = sub_236ECC128(v11);
    v25 = v45;
    if (v26)
    {
      v11 = *(*(v12 + 56) + 8 * v24);
      v48 = 0;
      if (!v22)
      {
        goto LABEL_19;
      }

LABEL_17:

      goto LABEL_20;
    }

    v11 = 0;
    v48 = 1;
    if (v22)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = 0;
    v25 = v45;
    v48 = 1;
    if (v44)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v33 = sub_236ECF944();
  v34 = sub_236ECF6A4();
  v35 = v33;
  v36 = v43;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v43, v35, v34, "Getting Function Status", "", v16, 2u);

  LOBYTE(v36) = v48;
  MEMORY[0x2383C2210](v16, -1, -1);
  v37 = v41;
  *v41 = v11;
  *(v37 + 8) = v36;
LABEL_20:
  (*(v46 + 8))(v6, v47);
  v38 = (*(v42 + 8))(v10, v25);
  result.value.rawValue = v38;
  result.is_nil = v39;
  return result;
}

NSObject *VehicleReport.proprietaryData(for:)(uint64_t *a1)
{
  v41 = sub_236ECF6B4();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_236ECF6E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v1 + 24);
  v11 = *(v1 + 40);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_27DE8BD68);
  v36 = v6;
  v13 = *(v6 + 16);
  v39 = v5;
  v13(v8, v12, v5);
  sub_236ECF6D4();
  sub_236ECF694();
  v14 = swift_slowAlloc();
  *v14 = 0;
  v15 = sub_236ECF6D4();
  v16 = sub_236ECF954();
  v17 = sub_236ECF6A4();
  v37 = v15;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v15, v16, v17, "Getting Function Proprietary Data", "", v14, 2u);
  v18 = *(v10 + 16);
  v19 = (v10 + 32);
  v20 = v38;
  do
  {
    if (!v18)
    {
      if (qword_27DE8BD40 != -1)
      {
        swift_once();
      }

      v26 = sub_236ECF764();
      __swift_project_value_buffer(v26, qword_27DE8BD48);
      v25 = sub_236ECF744();
      v27 = sub_236ECF8F4();
      if (os_log_type_enabled(v25, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = v9;
        _os_log_impl(&dword_236EBF000, v25, v27, "Unknown function %ld", v28, 0xCu);
        MEMORY[0x2383C2210](v28, -1, -1);
      }

      sub_236ECA420();
      v29 = swift_allocError();
      *v30 = 4;
      swift_willThrow();
      if (!v29)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v21 = *v19++;
    --v18;
  }

  while (v21 != v9);
  if (*(v11 + 16))
  {
    v22 = sub_236ECC128(v9);
    if (v23)
    {
      v24 = *(v11 + 56) + 16 * v22;
      v25 = *v24;
      sub_236ECAA74(*v24, *(v24 + 8));
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_17:

      (*(v40 + 8))(v4, v41);
      (*(v36 + 8))(v8, v39);
      return v25;
    }
  }

  v25 = 0;
  if (v20)
  {
    goto LABEL_17;
  }

LABEL_18:
  v31 = sub_236ECF944();
  v32 = sub_236ECF6A4();
  v33 = v37;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v37, v31, v32, "Getting Function Proprietary Data", "", v14, 2u);

  MEMORY[0x2383C2210](v14, -1, -1);
  (*(v40 + 8))(v4, v41);
  (*(v36 + 8))(v8, v39);
  return v25;
}

uint64_t RemoteKeylessEntryAction.recipientVehicleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

CarKey::RemoteKeylessEntryAction __swiftcall RemoteKeylessEntryAction.init(functionID:actionID:vehicleID:)(CarKey::FunctionIdentifier functionID, CarKey::ActionIdentifier actionID, Swift::String vehicleID)
{
  v4 = *actionID.rawValue;
  v3->_countAndFlagsBits = *functionID.rawValue;
  v3->_object = v4;
  v3[1] = vehicleID;
  result.recipientVehicleID = vehicleID;
  result.actionID = actionID;
  result.functionID = functionID;
  return result;
}

uint64_t RemoteKeylessEntryAction.ExecutionRequest.results()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_236ECF6B4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC64F4, 0, 0);
}

uint64_t sub_236EC64F4()
{
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v1 = sub_236ECF6E4();
  v0[8] = __swift_project_value_buffer(v1, qword_27DE8BD68);
  sub_236ECF6D4();
  sub_236ECF694();

  v2 = sub_236ECF6D4();
  v3 = sub_236ECF954();
  if (sub_236ECF964())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v2, v3, v5, " Waiting for Remote Keyless Entry Action Results", "", v4, 2u);
    MEMORY[0x2383C2210](v4, -1, -1);
  }

  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];

  (*(v9 + 16))(v7, v6, v8);
  sub_236ECF724();
  swift_allocObject();
  v0[9] = sub_236ECF714();
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_236EC66C8;
  v11 = v0[2];
  v12 = v0[3];

  return sub_236EC696C(v11, v12);
}

uint64_t sub_236EC66C8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_236EC68A4;
  }

  else
  {
    v2 = sub_236EC67DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236EC67DC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Action Results", 2, v0[9]);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_236EC68A4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Action Results", 2, v0[9]);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_236EC696C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_236EC698C, 0, 0);
}

uint64_t sub_236EC698C()
{
  v1 = *(v0[5] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  v0[7] = v3;
  *v2 = v0;
  v2[1] = sub_236EC6A5C;
  v4 = v0[4];
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v4, v1, &type metadata for ExecutionStatus, v3, v5);
}

uint64_t sub_236EC6A5C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236EC6B90, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_236EC6B90()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = v1;
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    if ([v3 code] == 19)
    {
      v4 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v6 = 6;
LABEL_14:
      *v5 = v6;
      swift_willThrow();

      v11 = *(v0 + 16);
      goto LABEL_17;
    }

    if ([v3 code] == 12)
    {
      v7 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v6 = 3;
      goto LABEL_14;
    }

    if ([v3 code] == 13)
    {
      v8 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v6 = 1;
      goto LABEL_14;
    }

    if ([v3 code] == 18)
    {
      v9 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v6 = 2;
      goto LABEL_14;
    }

    v10 = [v3 code];

    if (v10 == 14)
    {

      sub_236ECA420();
      swift_allocError();
      v6 = 8;
      goto LABEL_14;
    }

    if ([v3 code] == 15)
    {

      sub_236ECA420();
      swift_allocError();
      v6 = 9;
      goto LABEL_14;
    }
  }

  v12 = *(v0 + 64);

  sub_236ECA420();
  swift_allocError();
  *v13 = 0;
  swift_willThrow();
  v11 = v12;
LABEL_17:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t RemoteKeylessEntryAction.ExecutionRequest.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.eventStream.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC0, &qword_236ED0350);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC8, &qword_236ED0358);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD8, &qword_236ED0368);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStream;
  swift_beginAccess();
  sub_236ECF364(v1 + v17, v16, &qword_27DE8BAD8, &qword_236ED0368);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAE0, &qword_236ED0370);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    return (*(v19 + 32))(v29, v16, v18);
  }

  sub_236ECF3CC(v16, &qword_27DE8BAD8, &qword_236ED0368);
  (*(v5 + 104))(v7, *MEMORY[0x277D85778], v4);
  v20 = v29;
  sub_236EC72E8(v29, v10, v7);
  (*(v5 + 8))(v7, v4);
  (*(v19 + 16))(v14, v20, v18);
  (*(v19 + 56))(v14, 0, 1, v18);
  swift_beginAccess();
  sub_236ECF2FC(v14, v1 + v17, &qword_27DE8BAD8, &qword_236ED0368);
  swift_endAccess();
  v22 = v26;
  v21 = v27;
  v23 = v28;
  (*(v26 + 32))(v28, v10, v27);
  (*(v22 + 56))(v23, 0, 1, v21);
  v24 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStreamContinuation;
  swift_beginAccess();
  sub_236ECF2FC(v23, v1 + v24, &qword_27DE8BAC0, &qword_236ED0350);
  return swift_endAccess();
}

uint64_t sub_236EC72E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC8, &qword_236ED0358);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAE0, &qword_236ED0370);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC0, &qword_236ED0350);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v16, 1, 1, v17);
  (*(v4 + 16))(v6, v22, v3);
  v24 = v16;
  sub_236ECF894();
  (*(v8 + 16))(v23, v10, v7);
  sub_236ECF364(v16, v14, &qword_27DE8BAC0, &qword_236ED0350);
  result = (*(v18 + 48))(v14, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    (*(v18 + 32))(v21, v14, v17);
    return sub_236ECF3CC(v16, &qword_27DE8BAC0, &qword_236ED0350);
  }

  return result;
}

uint64_t sub_236EC760C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD8, &qword_236ED0368);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v28 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC8, &qword_236ED0358);
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAE0, &qword_236ED0370);
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC0, &qword_236ED0350);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStreamContinuation;
  swift_beginAccess();
  v30 = v1;
  sub_236ECF364(v1 + v16, v15, &qword_27DE8BAC0, &qword_236ED0350);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    return (*(v18 + 32))(v33, v15, v17);
  }

  sub_236ECF3CC(v15, &qword_27DE8BAC0, &qword_236ED0350);
  v19 = v4;
  v20 = *(v4 + 104);
  v21 = v31;
  v20(v6, *MEMORY[0x277D85778], v31);
  v22 = v33;
  sub_236EC72E8(v9, v33, v6);
  (*(v19 + 8))(v6, v21);
  v23 = v32;
  v24 = v29;
  (*(v7 + 32))(v32, v9, v29);
  (*(v7 + 56))(v23, 0, 1, v24);
  v25 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStream;
  v26 = v30;
  swift_beginAccess();
  sub_236ECF2FC(v23, v26 + v25, &qword_27DE8BAD8, &qword_236ED0368);
  swift_endAccess();
  (*(v18 + 16))(v13, v22, v17);
  (*(v18 + 56))(v13, 0, 1, v17);
  swift_beginAccess();
  sub_236ECF2FC(v13, v26 + v16, &qword_27DE8BAC0, &qword_236ED0350);
  return swift_endAccess();
}

uint64_t sub_236EC7A50(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC30, &qword_236ED0DE0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v13 = sub_236ECF764();
  __swift_project_value_buffer(v13, qword_27DE8BD48);
  v14 = sub_236ECF744();
  v15 = sub_236ECF8E4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v10;
    v17 = v9;
    v18 = a1;
    v19 = v7;
    v20 = a2;
    v21 = v6;
    v22 = v16;
    *v16 = 0;
    _os_log_impl(&dword_236EBF000, v14, v15, "Sending ContinuationRequest over the AsyncStream", v16, 2u);
    v23 = v22;
    v6 = v21;
    a2 = v20;
    v7 = v19;
    a1 = v18;
    v9 = v17;
    v10 = v30;
    MEMORY[0x2383C2210](v23, -1, -1);
  }

  sub_236EC760C(v12);
  v24 = *(v3 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_session);
  v25 = *(v3 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_action + 16);
  v26 = *(v3 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_action + 24);
  v32 = a1;
  v33 = a2;
  v34 = *(v3 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_action);
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v27 = v24;

  sub_236ECAAC8(a1, a2);
  sub_236ECF874();
  (*(v7 + 8))(v9, v6);
  return (*(v31 + 8))(v12, v10);
}

uint64_t RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.results()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_236ECF6B4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC7DEC, 0, 0);
}

uint64_t sub_236EC7DEC()
{
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_236ECF6E4();
  v0[8] = __swift_project_value_buffer(v2, qword_27DE8BD68);
  sub_236ECF6D4();
  sub_236ECF694();
  v3 = v1;
  v4 = sub_236ECF6D4();
  v5 = sub_236ECF954();
  if (sub_236ECF964())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v4, v5, v7, " Waiting for Remote Keyless Entry Enduring Action Results", "", v6, 2u);
    MEMORY[0x2383C2210](v6, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[4];
  v11 = v0[5];

  (*(v11 + 16))(v9, v8, v10);
  sub_236ECF724();
  swift_allocObject();
  v0[9] = sub_236ECF714();
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_236EC7FBC;
  v13 = v0[2];
  v14 = v0[3];

  return sub_236EC8268(v13, v14);
}

uint64_t sub_236EC7FBC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_236EC819C;
  }

  else
  {
    v2 = sub_236EC80D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236EC80D0()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Enduring Action Results", 2, v0[9]);

  (*(v3 + 8))(v1, v2);
  sub_236EC881C(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_236EC819C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Enduring Action Results", 2, v0[9]);

  (*(v3 + 8))(v1, v2);
  sub_236EC881C(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_236EC8268(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_236EC8288, 0, 0);
}

uint64_t sub_236EC8288()
{
  v1 = *(v0[5] + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_task);
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  v0[7] = v3;
  *v2 = v0;
  v2[1] = sub_236EC8360;
  v4 = v0[4];
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v4, v1, &type metadata for ExecutionStatus, v3, v5);
}

uint64_t sub_236EC8360()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236ECF644, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.stop()()
{
  v1 = v0;
  v2 = sub_236ECF6B4();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_236ECF6E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_27DE8BD68);
  (*(v6 + 16))(v8, v9, v5);
  sub_236ECF6D4();
  sub_236ECF694();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_236ECF6D4();
  v12 = sub_236ECF954();
  v13 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v11, v12, v13, " Waiting for Remote Keyless Entry Action Results", "", v10, 2u);
  v14 = *(v0 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_session);
  v31 = v1;
  v15 = sub_236ECF8C4();
  v16 = sub_236ECF7C4();
  v17 = [v14 cancelRKEFunction:v15 readerIdentifier:v16];

  if (v17)
  {
    v18 = v17;
    v19 = sub_236ECF654();
    v20 = [v19 code];

    sub_236ECA420();
    v21 = swift_allocError();
    v23 = v20 - 12;
    v24 = v21;
    if (v23 >= 8)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0x600000A00000003uLL >> (8 * v23);
    }

    *v22 = v25;
    swift_willThrow();

    if (v24)
    {
      goto LABEL_8;
    }

LABEL_10:
    v26 = sub_236ECF944();
    v27 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v11, v26, v27, " Waiting for Remote Keyless Entry Action Results", "", v10, 2u);

    MEMORY[0x2383C2210](v10, -1, -1);
    goto LABEL_11;
  }

  if (!v28[1])
  {
    goto LABEL_10;
  }

LABEL_8:

LABEL_11:
  (*(v29 + 8))(v4, v30);
  (*(v6 + 8))(v8, v5);
  sub_236EC881C(v31);
}

uint64_t sub_236EC881C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD8, &qword_236ED0368);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC0, &qword_236ED0350);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23[-v13];
  v15 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStreamContinuation;
  swift_beginAccess();
  sub_236ECF364(a1 + v15, v10, &qword_27DE8BAC0, &qword_236ED0350);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_236ECF3CC(v10, &qword_27DE8BAC0, &qword_236ED0350);
  }

  (*(v12 + 32))(v14, v10, v11);
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v17 = sub_236ECF764();
  __swift_project_value_buffer(v17, qword_27DE8BD48);
  v18 = sub_236ECF744();
  v19 = sub_236ECF8E4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_236EBF000, v18, v19, "Finishing event stream", v20, 2u);
    MEMORY[0x2383C2210](v20, -1, -1);
  }

  sub_236ECF884();
  (*(v12 + 8))(v14, v11);
  (*(v12 + 56))(v8, 1, 1, v11);
  swift_beginAccess();
  sub_236ECF2FC(v8, a1 + v15, &qword_27DE8BAC0, &qword_236ED0350);
  swift_endAccess();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAE0, &qword_236ED0370);
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStream;
  swift_beginAccess();
  sub_236ECF2FC(v4, a1 + v22, &qword_27DE8BAD8, &qword_236ED0368);
  return swift_endAccess();
}

uint64_t RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.ContinuationRequest.data.getter()
{
  v1 = *v0;
  sub_236ECAAC8(*v0, *(v0 + 8));
  return v1;
}

id RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.ContinuationRequest.confirm(_:)(uint64_t a1, unint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = *(v2 + 32);
  v5 = sub_236ECF8C4();
  v6 = sub_236ECF8C4();
  v7 = a2;
  v8 = v6;
  if (v7 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_236ECF674();
  }

  v10 = sub_236ECF7C4();
  v14[0] = 0;
  v11 = [v4 continueExecutingRKEFunction:v5 action:v8 arbitraryData:v9 readerIdentifier:v10 error:v14];

  if (v11)
  {
    return v14[0];
  }

  v13 = v14[0];
  sub_236ECF664();

  return swift_willThrow();
}

id RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RemoteKeylessEntryEnduringAction.EnduringExecutionRequest.results()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_236ECF6B4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC8FB0, 0, 0);
}

uint64_t sub_236EC8FB0()
{
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v1 = sub_236ECF6E4();
  v0[8] = __swift_project_value_buffer(v1, qword_27DE8BD68);
  sub_236ECF6D4();
  sub_236ECF694();

  v2 = sub_236ECF6D4();
  v3 = sub_236ECF954();
  if (sub_236ECF964())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v2, v3, v5, " Waiting for Remote Keyless Entry Enduring Action Results", "", v4, 2u);
    MEMORY[0x2383C2210](v4, -1, -1);
  }

  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];

  (*(v9 + 16))(v7, v6, v8);
  sub_236ECF724();
  swift_allocObject();
  v0[9] = sub_236ECF714();
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_236EC9184;
  v11 = v0[2];
  v12 = v0[3];

  return sub_236EC9428(v11, v12);
}

uint64_t sub_236EC9184()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_236EC9360;
  }

  else
  {
    v2 = sub_236EC9298;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236EC9298()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Enduring Action Results", 2, v0[9]);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_236EC9360()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Enduring Action Results", 2, v0[9]);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_236EC9428(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_236EC9448, 0, 0);
}

uint64_t sub_236EC9448()
{
  v1 = *(v0[5] + 48);
  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  v0[7] = v3;
  *v2 = v0;
  v2[1] = sub_236EC9518;
  v4 = v0[4];
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v4, v1, &type metadata for ExecutionStatus, v3, v5);
}

uint64_t sub_236EC9518()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236EC964C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_236EC964C()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = v1;
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    if ([v3 code] == 19)
    {
      v4 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v6 = 6;
LABEL_12:
      *v5 = v6;
      swift_willThrow();

      v10 = *(v0 + 16);
      goto LABEL_15;
    }

    if ([v3 code] == 12)
    {
      v7 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v6 = 3;
      goto LABEL_12;
    }

    if ([v3 code] == 13)
    {
      v8 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v6 = 1;
      goto LABEL_12;
    }

    v9 = [v3 code];

    if (v9 == 18)
    {

      sub_236ECA420();
      swift_allocError();
      v6 = 2;
      goto LABEL_12;
    }

    if ([v3 code] == 14)
    {

      sub_236ECA420();
      swift_allocError();
      v6 = 8;
      goto LABEL_12;
    }
  }

  v11 = *(v0 + 64);

  sub_236ECA420();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();
  v10 = v11;
LABEL_15:

  v13 = *(v0 + 8);

  return v13();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RemoteKeylessEntryEnduringAction.EnduringExecutionRequest.stop()()
{
  v28 = sub_236ECF6B4();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v2 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_236ECF6E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_27DE8BD68);
  v8 = *(v4 + 16);
  v26 = v3;
  v8(v6, v7, v3);
  sub_236ECF6D4();
  sub_236ECF694();
  v9 = swift_slowAlloc();
  *v9 = 0;
  v10 = sub_236ECF6D4();
  v11 = sub_236ECF954();
  v12 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v10, v11, v12, " Waiting for Remote Keyless Entry Action Results", "", v9, 2u);
  v13 = *(v0 + 56);
  v14 = sub_236ECF8C4();
  v15 = sub_236ECF7C4();
  v16 = [v13 cancelRKEFunction:v14 readerIdentifier:v15];

  if (v16)
  {
    v17 = v16;
    v18 = sub_236ECF654();
    v19 = [v18 code];

    sub_236ECA420();
    v21 = swift_allocError();
    if ((v19 - 12) >= 8)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0x600000A00000003uLL >> (8 * (v19 - 12));
    }

    *v20 = v22;
    swift_willThrow();

    if (v21)
    {
      goto LABEL_8;
    }

LABEL_10:
    v23 = sub_236ECF944();
    v24 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v10, v23, v24, " Waiting for Remote Keyless Entry Action Results", "", v9, 2u);

    MEMORY[0x2383C2210](v9, -1, -1);
    goto LABEL_11;
  }

  if (!v25[1])
  {
    goto LABEL_10;
  }

LABEL_8:

LABEL_11:
  (*(v27 + 8))(v2, v28);
  (*(v4 + 8))(v6, v26);
}

uint64_t RemoteKeylessEntryEnduringAction.EnduringExecutionRequest.deinit()
{

  return v0;
}

uint64_t RemoteKeylessEntryEnduringAction.EnduringExecutionRequest.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

id sub_236EC9DF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_236EC9E98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_236EC9EB8()
{
  v1 = *v0;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v1);
  return sub_236ECFAF4();
}

uint64_t sub_236EC9F30(uint64_t a1)
{
  v2 = *v1;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v2);
  return sub_236ECFAF4();
}

uint64_t CarKeyErrorCode.hashValue.getter()
{
  v1 = *v0;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v1);
  return sub_236ECFAF4();
}

uint64_t sub_236ECA034()
{
  v0 = sub_236ECF764();
  __swift_allocate_value_buffer(v0, qword_27DE8BD48);
  __swift_project_value_buffer(v0, qword_27DE8BD48);
  return sub_236ECF754();
}

uint64_t sub_236ECA0A8()
{
  v0 = sub_236ECF764();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_236ECF6E4();
  __swift_allocate_value_buffer(v4, qword_27DE8BD68);
  __swift_project_value_buffer(v4, qword_27DE8BD68);
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27DE8BD48);
  (*(v1 + 16))(v3, v5, v0);
  return sub_236ECF6C4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_236ECA21C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_236ECA2E4;

  return sub_236EC07EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_236ECA2E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

unint64_t sub_236ECA420()
{
  result = qword_27DE8BAB0;
  if (!qword_27DE8BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BAB0);
  }

  return result;
}

uint64_t sub_236ECA474(uint64_t a1, const char *a2, char a3, uint64_t a4)
{
  v21 = a2;
  v5 = sub_236ECF6F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_236ECF6B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_236ECF6D4();
  sub_236ECF704();
  v20 = sub_236ECF944();
  result = sub_236ECF964();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a3 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      sub_236ECF734();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_236ECF6A4();
      _os_signpost_emit_with_name_impl(&dword_236EBF000, v13, v20, v18, v15, v16, v17, 2u);
      MEMORY[0x2383C2210](v17, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_236ECA718(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_236ECF628;

  return sub_236EC3320(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_236ECA80C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_236ECF628;

  return sub_236EC3FFC(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest(uint64_t a1)
{
  result = qword_27DE8C520;
  if (!qword_27DE8C520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_236ECA988(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_236ECF628;

  return sub_236EC4850(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_236ECAA74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_236ECAAC8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_236ECAA74(result, a2);
  }

  return result;
}

unint64_t sub_236ECAAE0()
{
  result = qword_27DE8BAE8;
  if (!qword_27DE8BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BAE8);
  }

  return result;
}

unint64_t sub_236ECAB38()
{
  result = qword_27DE8BAF0;
  if (!qword_27DE8BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BAF0);
  }

  return result;
}

unint64_t sub_236ECAB90()
{
  result = qword_27DE8BAF8;
  if (!qword_27DE8BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BAF8);
  }

  return result;
}

unint64_t sub_236ECABE8()
{
  result = qword_27DE8BB00;
  if (!qword_27DE8BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BB00);
  }

  return result;
}

unint64_t sub_236ECAC40()
{
  result = qword_27DE8BB08;
  if (!qword_27DE8BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BB08);
  }

  return result;
}

uint64_t dispatch thunk of static CarKeyRemoteControl.start(delegate:subscriptionRange:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v14 = (*(v5 + 80) + **(v5 + 80));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_236ECAE10;

  return v14(a1, a2, a3, a4 & 1, a5);
}

uint64_t sub_236ECAE10(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CarKeyRemoteControlSession.perform(_:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 216))();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t sub_236ECB1B0(uint64_t a1, int a2)
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

uint64_t sub_236ECB1F8(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CarKeyRemoteControlSession.ContinuationStrategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarKeyRemoteControlSession.ContinuationStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_236ECB430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_236ECB478(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_236ECB528(uint64_t a1)
{
  sub_236ECB6A8(319, &qword_27DE8BBA0, &qword_27DE8BAE0, &qword_236ED0370);
  if (v1 <= 0x3F)
  {
    sub_236ECB6A8(319, &qword_27DE8BBA8, &qword_27DE8BAD0, &qword_236ED0360);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
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

void sub_236ECB6A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_236ECF974();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_236ECB758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_236ECB7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_236ECB804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_236ECB84C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for FunctionStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FunctionStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CarKeyErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarKeyErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_236ECBAC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_236ECBB90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_236ECECA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_236ECBB90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_236ECBC9C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_236ECF9F4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_236ECBC9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_236ECBCE8(a1, a2);
  sub_236ECBE18(&unk_2849E27A8);
  return v3;
}

void *sub_236ECBCE8(uint64_t a1, unint64_t a2)
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

  v6 = sub_236ECBF04(v5, 0);
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

  result = sub_236ECF9F4();
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
        v10 = sub_236ECF804();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_236ECBF04(v10, 0);
        result = sub_236ECF9D4();
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

uint64_t sub_236ECBE18(uint64_t result)
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

  result = sub_236ECBF78(result, v11, 1, v3);
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

void *sub_236ECBF04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC80, &qword_236ED0E18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_236ECBF78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC80, &qword_236ED0E18);
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

unint64_t sub_236ECC06C(uint64_t a1, uint64_t a2)
{
  sub_236ECFAD4();
  sub_236ECF7F4();
  v4 = sub_236ECFAF4();

  return sub_236ECC194(a1, a2, v4);
}

unint64_t sub_236ECC0E4(uint64_t a1)
{
  v2 = sub_236ECF9A4();

  return sub_236ECC24C(a1, v2);
}

unint64_t sub_236ECC128(uint64_t a1)
{
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](a1);
  v2 = sub_236ECFAF4();

  return sub_236ECC314(a1, v2);
}

unint64_t sub_236ECC194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_236ECFA54())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_236ECC24C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_236ECEA70(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2383C1C20](v9, a1);
      sub_236ECEACC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_236ECC314(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *sub_236ECC380(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_236ECC3C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_236ECC3A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_236ECC4E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_236ECC3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCB8, &qword_236ED0E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_236ECC4E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCB0, &qword_236ED0E38);
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

uint64_t sub_236ECC5E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA8, &qword_236ED0E30);
  result = sub_236ECFA34();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_236ECAA74(v29, *(&v29 + 1));
      }

      sub_236ECFAD4();
      MEMORY[0x2383C1D50](v20);
      result = sub_236ECFAF4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_236ECC878(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA0, &qword_236ED0E28);
  result = sub_236ECFA34();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_236ECFAD4();
      MEMORY[0x2383C1D50](v20);
      result = sub_236ECFAF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

void *sub_236ECCAF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA8, &qword_236ED0E30);
  v2 = *v0;
  v3 = sub_236ECFA24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_236ECAA74(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_236ECCC60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA0, &qword_236ED0E28);
  v2 = *v0;
  v3 = sub_236ECFA24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_236ECCDAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC50, &qword_236ED0DF8);
    v3 = sub_236ECFA44();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_236ECC06C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_236ECCEA8(uint64_t a1)
{
  v1 = sub_236ECF774();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_236ECF794();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_236ECF654();
    v12 = [v11 code];

    if (v12 == 17)
    {
      v13 = 11;
    }

    else
    {
      v13 = 0;
    }

    v19 = *(v10 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = v13;
    aBlock[4] = sub_236ECF084;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_236EC1694;
    aBlock[3] = &block_descriptor_173;
    v17 = _Block_copy(aBlock);
    v18 = v5;

    sub_236ECF784();
    v20 = MEMORY[0x277D84F90];
    sub_236ECF480(&qword_27DE8BC68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v15 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF4C8(&qword_27DE8BC78, &qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF984();
    v16 = v17;
    MEMORY[0x2383C1B90](0, v15, v4, v17);
    _Block_release(v16);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v15, v18);
  }

  return result;
}

uint64_t sub_236ECD1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_236ECF774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_236ECF794();
  v21 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + 80);
    v20 = v12;
    v16 = result;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a1;
    v17[4] = a2;
    v17[5] = a3;
    v17[6] = a4;
    aBlock[4] = sub_236ECEF14;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_236EC1694;
    aBlock[3] = &block_descriptor_167;
    v18 = _Block_copy(aBlock);

    sub_236ECF784();
    v22 = MEMORY[0x277D84F90];
    sub_236ECF480(&qword_27DE8BC68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF4C8(&qword_27DE8BC78, &qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF984();
    MEMORY[0x2383C1B90](0, v14, v11, v18);
    _Block_release(v18);
    (*(v9 + 8))(v11, v8);
    (*(v21 + 8))(v14, v20);
  }

  return result;
}

unint64_t sub_236ECD4C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA0, &qword_236ED0E28);
    v3 = sub_236ECFA44();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_236ECC128(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_236ECD59C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA8, &qword_236ED0E30);
  v3 = sub_236ECFA44();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_236ECC128(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_236ECAA74(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_236ECC128(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_236ECD6A8(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v7 = a1;
  v66 = MEMORY[0x277D84F90];
  a1 = sub_236ECC3A0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v66;
    v9 = v7;
    v60 = v7;
    v61 = v7 & 0xC000000000000001;
    v57 = v3;
    v58 = v7 & 0xFFFFFFFFFFFFFF8;
    v59 = v5;
    while (1)
    {
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v56 = a1;
        v5 = sub_236ECFA14();
        a1 = v56;
        goto LABEL_3;
      }

      v63 = v6;
      if (v61)
      {
        v10 = MEMORY[0x2383C1C50](v8, v9);
      }

      else
      {
        if (v8 >= *(v58 + 16))
        {
          goto LABEL_45;
        }

        v10 = *(v9 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 integerValue];
      v13 = [a2 getStatusForRKEFunction_];
      v64 = v11;
      if (v13)
      {
        break;
      }

LABEL_23:
      v29 = [a2 getProprietaryDataForRKEFunction_];
      v62 = v8 + 1;
      if (!v29)
      {

        v43 = v59;
        v9 = v60;
        v6 = v63;
        goto LABEL_36;
      }

      v30 = a2;
      v31 = v29;
      v32 = sub_236ECF684();
      a2 = v33;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(a3 + 40);
      *(a3 + 40) = 0x8000000000000000;
      v36 = v12;
      v38 = sub_236ECC128(v12);
      v39 = v35[2];
      v40 = (v37 & 1) == 0;
      a1 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_44;
      }

      v41 = v37;
      if (v35[3] >= a1)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = a2;
          a1 = sub_236ECCAF8();
          goto LABEL_31;
        }
      }

      else
      {
        sub_236ECC5E4(a1, isUniquelyReferenced_nonNull_native);
        a1 = sub_236ECC128(v36);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_50;
        }

        v38 = a1;
      }

      v44 = a2;
LABEL_31:
      a2 = v30;
      if (v41)
      {
        v45 = (v35[7] + 16 * v38);
        v46 = *v45;
        v47 = v45[1];
        *v45 = v32;
        v45[1] = v44;
        sub_236ECE6C4(v46, v47);
      }

      else
      {
        v35[(v38 >> 6) + 8] |= 1 << v38;
        *(v35[6] + 8 * v38) = v36;
        v48 = (v35[7] + 16 * v38);
        *v48 = v32;
        v48[1] = v44;
        v49 = v35[2];
        v22 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v22)
        {
          goto LABEL_47;
        }

        v35[2] = v50;
      }

      *(a3 + 40) = v35;

      v43 = v59;
      v9 = v60;
      v6 = v63;
      v12 = v36;
LABEL_36:
      v67 = v6;
      v52 = *(v6 + 16);
      v51 = *(v6 + 24);
      if (v52 >= v51 >> 1)
      {
        v53 = v12;
        v54 = v9;
        a1 = sub_236ECC3A0((v51 > 1), v52 + 1, 1);
        v9 = v54;
        v12 = v53;
        v6 = v67;
      }

      *(v6 + 16) = v52 + 1;
      *(v6 + 8 * v52 + 32) = v12;
      ++v8;
      if (v62 == v43)
      {
        return v6;
      }
    }

    v14 = v13;
    v15 = a2;
    v16 = [v13 integerValue];
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a3 + 32);
    *(a3 + 32) = 0x8000000000000000;
    a2 = v12;
    a1 = sub_236ECC128(v12);
    v20 = v18[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_43;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((v17 & 1) == 0)
      {
        v26 = a1;
        sub_236ECCC60();
        a1 = v26;
        if (v24)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_236ECC878(v23, v17);
      a1 = sub_236ECC128(a2);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_50;
      }
    }

    if (v24)
    {
LABEL_18:
      *(v18[7] + 8 * a1) = v16;
      v12 = a2;
LABEL_22:

      *(a3 + 32) = v18;

      a2 = v15;
      v11 = v64;
      goto LABEL_23;
    }

LABEL_20:
    v18[(a1 >> 6) + 8] |= 1 << a1;
    *(v18[6] + 8 * a1) = a2;
    *(v18[7] + 8 * a1) = v16;
    v27 = v18[2];
    v22 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v22)
    {
      goto LABEL_46;
    }

    v12 = a2;
    v18[2] = v28;
    goto LABEL_22;
  }

  __break(1u);
LABEL_50:
  result = sub_236ECFA74();
  __break(1u);
  return result;
}

void sub_236ECDB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_236ECF774();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_236ECF794();
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    strcpy(v37, "xpcEventName");
    BYTE5(v37[1]) = 0;
    HIWORD(v37[1]) = -5120;
    sub_236ECF9C4();
    if (*(a1 + 16) && (v15 = sub_236ECC0E4(&v38), (v16 & 1) != 0))
    {
      sub_236ECECA0(*(a1 + 56) + 32 * v15, aBlock);
      sub_236ECEACC(&v38);
      if (swift_dynamicCast())
      {
        v34 = v7;
        v18 = v37[0];
        v17 = v37[1];
        if (v37[0] == 0xD000000000000042 && 0x8000000236ED1430 == v37[1] || (sub_236ECFA54() & 1) != 0 || v18 == 0xD00000000000003FLL && 0x8000000236ED1480 == v17)
        {
        }

        else
        {
          v32 = sub_236ECFA54();

          if ((v32 & 1) == 0)
          {
LABEL_29:

            return;
          }
        }

        v23 = sub_236EC19CC();
        v24 = v23[2] + 1;
        v25 = 4;
        while (--v24)
        {
          v26 = *&v23[v25 + 2];
          v27 = *&v23[v25];
          v40 = *&v23[v25 + 4];
          v38 = v27;
          v39 = v26;
          if (v27 != a2 || *(&v27 + 1) != a3)
          {
            v25 += 6;
            if ((sub_236ECFA54() & 1) == 0)
            {
              continue;
            }
          }

          sub_236ECECFC(&v38, aBlock);

          v33 = *(v14 + 80);
          v29 = swift_allocObject();
          v30 = v39;
          *(v29 + 24) = v38;
          *(v29 + 16) = v14;
          *(v29 + 40) = v30;
          *(v29 + 56) = v40;
          aBlock[4] = sub_236ECED8C;
          aBlock[5] = v29;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_236EC1694;
          aBlock[3] = &block_descriptor_161;
          v31 = _Block_copy(aBlock);

          sub_236ECF784();
          v37[0] = MEMORY[0x277D84F90];
          sub_236ECF480(&qword_27DE8BC68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC70, &qword_236ED0E10);
          sub_236ECF4C8(&qword_27DE8BC78, &qword_27DE8BC70, &qword_236ED0E10);
          sub_236ECF984();
          MEMORY[0x2383C1B90](0, v12, v9, v31);
          _Block_release(v31);
          (*(v34 + 8))(v9, v6);
          (*(v35 + 8))(v12, v10);

          return;
        }

        goto LABEL_29;
      }
    }

    else
    {
      sub_236ECEACC(&v38);
    }

    if (qword_27DE8BD40 != -1)
    {
      swift_once();
    }

    v19 = sub_236ECF764();
    __swift_project_value_buffer(v19, qword_27DE8BD48);
    v20 = sub_236ECF744();
    v21 = sub_236ECF8D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_236EBF000, v20, v21, "Unable to convert event name to string, dropping event", v22, 2u);
      MEMORY[0x2383C2210](v22, -1, -1);
    }
  }
}

uint64_t sub_236ECE210(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_236ECF774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_236ECF794();
  v21 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + 80);
    v20 = v12;
    v16 = result;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a1;
    v17[4] = a2;
    v17[5] = a3;
    v17[6] = a4;
    aBlock[4] = sub_236ECEB68;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_236EC1694;
    aBlock[3] = &block_descriptor_155;
    v18 = _Block_copy(aBlock);

    sub_236ECAA74(a1, a2);

    sub_236ECF784();
    v22 = MEMORY[0x277D84F90];
    sub_236ECF480(&qword_27DE8BC68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF4C8(&qword_27DE8BC78, &qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF984();
    MEMORY[0x2383C1B90](0, v14, v11, v18);
    _Block_release(v18);
    (*(v9 + 8))(v11, v8);
    (*(v21 + 8))(v14, v20);
  }

  return result;
}

uint64_t sub_236ECE518(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v6 = sub_236ECF764();
  __swift_project_value_buffer(v6, qword_27DE8BD48);
  v7 = sub_236ECF744();
  v8 = sub_236ECF8E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_236EBF000, v7, v8, "Received continuation request", v9, 2u);
    MEMORY[0x2383C2210](v9, -1, -1);
  }

  v10 = OBJC_IVAR____TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler_delegate;
  swift_beginAccess();
  sub_236ECF364(v3 + v10, v13, &qword_27DE8BC28, &qword_236ED0DD8);
  if (!v14)
  {
    return sub_236ECF3CC(v13, &qword_27DE8BC28, &qword_236ED0DD8);
  }

  sub_236ECF51C(v13, v12);
  sub_236ECF3CC(v13, &qword_27DE8BC28, &qword_236ED0DD8);
  __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
  sub_236EC7A50(a1, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_236ECE6B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_236ECE6C4(result, a2);
  }

  return result;
}

uint64_t sub_236ECE6C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_236ECE784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC58, &qword_236ED0E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_236ECE82C(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC58, &qword_236ED0E00) - 8);
  if (a2)
  {
    v15.receiver = a2;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC58, &qword_236ED0E00);
    return sub_236ECF834();
  }

  else if (a1)
  {
    v8 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
    v9 = type metadata accessor for RKESessionDelegate();
    v10 = objc_allocWithZone(v9);
    swift_weakInit();
    swift_weakAssign();
    v15.receiver = v10;
    v15.super_class = v9;
    v11 = a1;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    v13 = *(v8 + 88);
    *(v8 + 88) = v12;
    v14 = v12;

    [v11 setDelegate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC58, &qword_236ED0E00);
    return sub_236ECF844();
  }

  else
  {
    result = sub_236ECFA04();
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_236ECEA14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_236ECEB20()
{

  sub_236ECE6C4(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_236ECEB68()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v6 = sub_236ECF764();
  __swift_project_value_buffer(v6, qword_27DE8BD48);
  v7 = sub_236ECF744();
  v8 = sub_236ECF8D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_236EBF000, v7, v8, "Calling delegate didReceivePassthroughData", v9, 2u);
    MEMORY[0x2383C2210](v9, -1, -1);
  }

  v10 = v1[8];
  v11 = v1[9];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v10);
  return (*(v11 + 32))(v1, v2, v3, v4, v5, v10, v11);
}

uint64_t sub_236ECECA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_236ECED34()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_236ECED8C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v3 = sub_236ECF764();
  __swift_project_value_buffer(v3, qword_27DE8BD48);
  v4 = sub_236ECF744();
  v5 = sub_236ECF8D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_236EBF000, v4, v5, "Calling delegate vehicleDidUpdateReport", v6, 2u);
    MEMORY[0x2383C2210](v6, -1, -1);
  }

  v7 = v2[8];
  v8 = v2[9];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 5, v7);
  v9 = *(v1 + 40);
  v11[0] = *(v1 + 24);
  v11[1] = v9;
  v11[2] = *(v1 + 56);
  return (*(v8 + 24))(v2, v11, v7, v8);
}

uint64_t sub_236ECEECC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_236ECEF14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v6 = sub_236ECF764();
  __swift_project_value_buffer(v6, qword_27DE8BD48);
  v7 = sub_236ECF744();
  v8 = sub_236ECF8D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_236EBF000, v7, v8, "Calling delegate didCreateKey", v9, 2u);
    MEMORY[0x2383C2210](v9, -1, -1);
  }

  v10 = v1[8];
  v11 = v1[9];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v10);
  return (*(v11 + 16))(v1, v2, v3, v4, v5, v10, v11);
}

uint64_t sub_236ECF04C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_236ECF084()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v3 = sub_236ECF764();
  __swift_project_value_buffer(v3, qword_27DE8BD48);
  v4 = sub_236ECF744();
  v5 = sub_236ECF8D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_236EBF000, v4, v5, "Calling delegate didInvalidateWithError", v6, 2u);
    MEMORY[0x2383C2210](v6, -1, -1);
  }

  v7 = v1[8];
  v8 = v1[9];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v7);
  v10 = v2;
  return (*(v8 + 8))(v1, &v10, v7, v8);
}

uint64_t sub_236ECF1B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_236ECF3CC(v3, &qword_27DE8BAC0, &qword_236ED0350);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v7 = *(v4 - 8);
  (*(v7 + 16))(v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v3, 0, 1, v4);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_236ECF2FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_236ECF364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_236ECF3CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_236ECF42C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_236ECF438(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_236ECF480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_236ECF4C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_236ECF51C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_236ECF580(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}