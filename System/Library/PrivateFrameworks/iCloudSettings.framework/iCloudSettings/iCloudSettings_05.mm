uint64_t sub_2758C9FF0()
{
  v0[2] = sub_2759BA4C8();
  v0[3] = sub_2759BA4B8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2758CA09C;

  return sub_2758CA1D8();
}

uint64_t sub_2758CA09C()
{

  v1 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758CDE84, v1, v0);
}

uint64_t sub_2758CA1D8()
{
  v1[2] = v0;
  v2 = type metadata accessor for StaticHeaderImageView(0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v1[10] = swift_task_alloc();
  v4 = sub_2759B8508();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = sub_2759BA4C8();
  v1[16] = sub_2759BA4B8();
  v6 = sub_2759BA468();
  v1[17] = v6;
  v1[18] = v5;

  return MEMORY[0x2822009F8](sub_2758CA420, v6, v5);
}

uint64_t sub_2758CA420()
{
  v57 = v0;
  v1 = *(v0 + 72);
  sub_27586FBC8(*(v0 + 16) + *(*(v0 + 24) + 32), v1, &qword_280A0E8A8, qword_2759C2120);
  v2 = sub_2759B8C48();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_27586BF04(*(v0 + 72), &qword_280A0E8A8, qword_2759C2120);
  }

  else
  {
    if (!*(*(v0 + 16) + 24))
    {
LABEL_17:
      sub_2759B8C08();
      sub_2758CDAB0(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);

      return sub_2759B9158();
    }

    sub_2759B8C38();
    v4 = (v3 + 8);
    v5 = *(v0 + 72);

    (*v4)(v5, v2);
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);
  sub_2759B84F8();

  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = *(v0 + 80);

    sub_27586BF04(v9, &unk_280A0EB10, &qword_2759C0740);
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
      _os_log_impl(&dword_275819000, v11, v12, "StaticHeaderImageView: missing url, image will show as empty", v13, 2u);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v18 = *(v0 + 16);

    v19 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v20 = sub_2759BA518();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    sub_2758CCD94(v18, v15);
    v21 = v19;
    v22 = sub_2759BA4B8();
    v23 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    *(v24 + 16) = v22;
    *(v24 + 24) = v25;
    sub_2758CCDF8(v15, v24 + v23);
    *(v24 + ((v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
    sub_27587D460(0, 0, v14, &unk_2759C56C8, v24);

    v26 = *(v0 + 8);

    return v26();
  }

  v28 = *(v0 + 64);
  v30 = *(v0 + 16);
  v29 = *(v0 + 24);
  (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 80), *(v0 + 88));
  sub_27586FBC8(v30 + *(v29 + 36), v28, &qword_280A0FC48, &qword_2759C79C0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v28, 1, v31) == 1)
  {
    sub_27586BF04(*(v0 + 64), &qword_280A0FC48, &qword_2759C79C0);
LABEL_25:
    v51 = swift_task_alloc();
    *(v0 + 184) = v51;
    *v51 = v0;
    v51[1] = sub_2758CB11C;
    v52 = *(v0 + 112);

    return sub_275873948(v52);
  }

  if (!*(*(v0 + 16) + 24))
  {
    goto LABEL_17;
  }

  sub_2759B8AA8();
  v33 = *(v0 + 64);

  (*(v32 + 8))(v33, v31);
  if ((*(v0 + 200) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 104);
  v35 = *(v0 + 112);
  v36 = *(v0 + 88);
  v37 = *(v0 + 96);
  v38 = sub_2759B89A8();
  *(v0 + 152) = __swift_project_value_buffer(v38, qword_2815ADE70);
  (*(v37 + 16))(v34, v35, v36);
  v39 = sub_2759B8988();
  v40 = sub_2759BA668();
  v41 = os_log_type_enabled(v39, v40);
  v43 = *(v0 + 96);
  v42 = *(v0 + 104);
  v44 = *(v0 + 88);
  if (v41)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v56 = v46;
    *v45 = 136315138;
    v55 = sub_2759B8488();
    v48 = v47;
    v49 = *(v43 + 8);
    v49(v42, v44);
    v50 = sub_2758937B8(v55, v48, &v56);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_275819000, v39, v40, "StaticHeaderImageView: applying system style to image %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x277C85860](v46, -1, -1);
    MEMORY[0x277C85860](v45, -1, -1);
  }

  else
  {

    v49 = *(v43 + 8);
    v49(v42, v44);
  }

  *(v0 + 160) = v49;
  v53 = swift_task_alloc();
  *(v0 + 168) = v53;
  *v53 = v0;
  v53[1] = sub_2758CACB4;
  v54 = *(v0 + 112);

  return sub_275872FC8(v54, 100.0, 100.0);
}

uint64_t sub_2758CACB4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return MEMORY[0x2822009F8](sub_2758CADDC, v4, v3);
}

uint64_t sub_2758CADDC()
{
  v1 = v0[22];

  if (v1)
  {
    v2 = v0[22];
    v30 = v0[14];
    v31 = v0[20];
    v3 = v0[11];
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[2];
    v9 = sub_2759BA518();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_2758CCD94(v8, v5);
    v10 = v2;
    v11 = sub_2759BA4B8();
    v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v11;
    *(v13 + 24) = v14;
    sub_2758CCDF8(v5, v13 + v12);
    *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
    v15 = &unk_2759C56E8;
  }

  else
  {
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_275819000, v16, v17, "StaticHeaderImageView: unable to generate styled image", v18, 2u);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    v30 = v0[14];
    v31 = v0[20];
    v3 = v0[11];
    v19 = v0[6];
    v4 = v0[7];
    v20 = v0[4];
    v21 = v0[5];
    v22 = v0[2];

    v23 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v24 = sub_2759BA518();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    sub_2758CCD94(v22, v19);
    v10 = v23;
    v25 = sub_2759BA4B8();
    v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v13 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    *(v13 + 16) = v25;
    *(v13 + 24) = v27;
    sub_2758CCDF8(v19, v13 + v26);
    *(v13 + ((v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
    v15 = &unk_2759C56E0;
  }

  sub_27587D460(0, 0, v4, v15, v13);

  v31(v30, v3);

  v28 = v0[1];

  return v28();
}

uint64_t sub_2758CB11C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {

    v4 = *(v3 + 136);
    v5 = *(v3 + 144);
    v6 = sub_2758CB5C0;
  }

  else
  {
    v4 = *(v3 + 136);
    v5 = *(v3 + 144);
    v6 = sub_2758CB244;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2758CB244()
{
  v1 = v0[24];

  if (v1)
  {
    v2 = v0[24];
    v32 = v0[14];
    v3 = v0[11];
    v4 = v0[12];
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[2];
    v10 = sub_2759BA518();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_2758CCD94(v9, v6);
    v11 = v2;
    v12 = sub_2759BA4B8();
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    *(v14 + 16) = v12;
    *(v14 + 24) = v15;
    sub_2758CCDF8(v6, v14 + v13);
    *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
    v16 = &unk_2759C56D8;
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v17 = sub_2759B89A8();
    __swift_project_value_buffer(v17, qword_2815ADE70);
    v18 = sub_2759B8988();
    v19 = sub_2759BA648();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_275819000, v18, v19, "StaticHeaderImageView: unable to load raw image", v20, 2u);
      MEMORY[0x277C85860](v20, -1, -1);
    }

    v32 = v0[14];
    v3 = v0[11];
    v4 = v0[12];
    v21 = v0[6];
    v5 = v0[7];
    v22 = v0[4];
    v23 = v0[5];
    v24 = v0[2];

    v25 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v26 = sub_2759BA518();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    sub_2758CCD94(v24, v21);
    v11 = v25;
    v27 = sub_2759BA4B8();
    v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v14 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v14 + 16) = v27;
    *(v14 + 24) = v29;
    sub_2758CCDF8(v21, v14 + v28);
    *(v14 + ((v23 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
    v16 = &unk_2759C56D0;
  }

  sub_27587D460(0, 0, v5, v16, v14);

  (*(v4 + 8))(v32, v3);

  v30 = v0[1];

  return v30();
}

uint64_t sub_2758CB5C0()
{

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA648();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "StaticHeaderImageView: unable to load raw image", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v21 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];

  v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_2758CCD94(v11, v8);
  v14 = v12;
  v15 = sub_2759BA4B8();
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_2758CCDF8(v8, v17 + v16);
  *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_27587D460(0, 0, v7, &unk_2759C56D0, v17);

  (*(v6 + 8))(v21, v5);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2758CB85C()
{
  v0[2] = sub_2759BA4C8();
  v0[3] = sub_2759BA4B8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_27588B550;

  return sub_2758CA1D8();
}

uint64_t sub_2758CB908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_2759BA4C8();
  v5[7] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758CB9A0, v7, v6);
}

uint64_t sub_2758CB9A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + *(type metadata accessor for StaticHeaderImageView(0) + 48));
  *(v0 + 32) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FCE0, &qword_2759C5688);
  sub_2759B9D78();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2758CBA5C()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_2758CBB44(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2758CBC18(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_2758CBCFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2758CDE38(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2758CBD2C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000002759DCD70;
  v6 = 0xD000000000000010;
  v7 = 0xEB00000000726564;
  v8 = 0x6C6F686563616C70;
  if (v2 != 3)
  {
    v8 = 0x646F4D6567616D69;
    v7 = 0xEE00737265696669;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7107189;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2758CBDD0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  v4 = 0x6C6F686563616C70;
  if (v1 != 3)
  {
    v4 = 0x646F4D6567616D69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7107189;
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

unint64_t sub_2758CBE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2758CDE38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2758CBEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758CD9A8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2758CBEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758CD9A8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2758CBF1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v64 = sub_2759B8C88();
  v57 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v67 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v53 - v9;
  v60 = sub_2759B85A8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD18, &qword_2759C56F0);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v12 = &v53 - v11;
  v13 = type metadata accessor for StaticHeaderImageView(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[2] = MEMORY[0x277D84F90];
  sub_2759B8C08();
  sub_2758CDAB0(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v16 = sub_2759B9168();
  v15[3] = v16;
  v15[4] = v17;
  v74 = &type metadata for DefaultApplicationRecordProvider;
  v75 = &off_28847F8A0;
  v18 = type metadata accessor for DefaultIconLoader();
  v19 = objc_allocWithZone(v18);
  __swift_mutable_project_boxed_opaque_existential_1(&v73, &type metadata for DefaultApplicationRecordProvider);
  v72[3] = &type metadata for DefaultApplicationRecordProvider;
  v72[4] = &off_28847F8A0;
  sub_27586E058(v72, v19 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
  v71.receiver = v19;
  v71.super_class = v18;
  v20 = objc_msgSendSuper2(&v71, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(&v73);
  v15[5] = v20;
  v21 = (v15 + *(v13 + 48));
  v72[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC88, &qword_2759C5538);
  sub_2759B9D58();
  v22 = *(&v73 + 1);
  v69 = v73;
  *v21 = v73;
  v21[1] = v22;
  v23 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2758CD9A8(v23, v24, v25);
  v26 = v70;
  sub_2759BAC18();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v65;
  v55 = v20;
  v56 = v16;
  v54 = v13;
  v70 = a1;
  LOBYTE(v73) = 0;
  v28 = sub_2759BAA58();
  v31 = v29;
  if (!v29)
  {
    sub_2759B8598();
    v32 = sub_2759B8588();
    v31 = v33;
    (*(v59 + 8))(v27, v60);
    v28 = v32;
  }

  v34 = v67;
  v35 = v15;
  v36 = v61;
  *v15 = v28;
  v15[1] = v31;
  v65 = v31;
  sub_2759B8C48();
  LOBYTE(v73) = 1;
  sub_2758CDAB0(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  sub_2759BAA68();
  sub_27589F26C(v36, v15 + *(v54 + 32), &qword_280A0E8A8, qword_2759C2120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  LOBYTE(v73) = 2;
  sub_27589B02C(&qword_280A100B0, &qword_280A0FC68, &qword_2759C7830, MEMORY[0x277D23238]);
  v37 = v62;
  sub_2759BAA68();
  v38 = v37;
  v39 = v54;
  sub_27589F26C(v38, v15 + *(v54 + 36), &qword_280A0FC48, &qword_2759C79C0);
  sub_2759B8A38();
  LOBYTE(v73) = 3;
  sub_2758CDAB0(&qword_280A0E738, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
  v40 = v63;
  sub_2759BAA68();
  sub_27589F26C(v40, v15 + *(v39 + 40), &qword_280A0E6B0, &qword_2759C0D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD28, &qword_2759C56F8);
  LOBYTE(v73) = 4;
  sub_2758CD9FC();
  sub_2759BAA68();
  v63 = 0;
  v65 = v12;
  v41 = v72[0];
  v42 = v70;
  v43 = v66;
  if (v72[0])
  {
    v44 = *(v72[0] + 16);
    if (v44)
    {
      v76 = MEMORY[0x277D84F90];
      sub_2759509F0(0, v44, 0);
      v45 = v76;
      *(&v69 + 1) = *(v57 + 16);
      v46 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v62 = v41;
      v47 = &v41[v46];
      *&v69 = *(v57 + 72);
      v48 = (v57 + 8);
      v49 = v64;
      do
      {
        (*(&v69 + 1))(v34, v47, v49);
        sub_2759B8C78();
        v49 = v64;
        (*v48)(v34, v64);
        v76 = v45;
        v51 = *(v45 + 16);
        v50 = *(v45 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_2759509F0((v50 > 1), v51 + 1, 1);
          v49 = v64;
          v45 = v76;
        }

        *(v45 + 16) = v51 + 1;
        sub_275827D1C(&v73, v45 + 40 * v51 + 32);
        v47 += v69;
        --v44;
        v34 = v67;
      }

      while (v44);
      (*(v66 + 8))(v65, v68);

      v42 = v70;
      v52 = v58;
      v39 = v54;
      goto LABEL_16;
    }

    (*(v43 + 8))(v65, v68);
    v45 = MEMORY[0x277D84F90];
    v39 = v54;
  }

  else
  {
    (*(v66 + 8))(v65, v68);
    v45 = 0;
  }

  v52 = v58;
LABEL_16:
  *(v35 + *(v39 + 44)) = v45;
  sub_2758CCD94(v35, v52);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_2758CDAF8(v35);
}

uint64_t sub_2758CCA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758CDAB0(&qword_280A0FC90, type metadata accessor for StaticHeaderImageView, &unk_2759C5618);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2758CCA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758CDAB0(&qword_280A0FC98, type metadata accessor for StaticHeaderImageView, &unk_2759C55C8);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2758CCB14(uint64_t a1)
{
  v2 = sub_2758CDAB0(&qword_280A0FC98, type metadata accessor for StaticHeaderImageView, &unk_2759C55C8);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2758CCB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2758CDAB0(&qword_280A0FCB0, type metadata accessor for StaticHeaderImageView, &unk_2759C5590);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2758CCC4C(uint64_t a1, uint64_t a2)
{
  sub_2758CDAB0(&qword_280A0FC90, type metadata accessor for StaticHeaderImageView, &unk_2759C5618);
  sub_2758CDAB0(&qword_280A0FC98, type metadata accessor for StaticHeaderImageView, &unk_2759C55C8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2758CCD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticHeaderImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758CCDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticHeaderImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758CCE5C()
{
  type metadata accessor for StaticHeaderImageView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return sub_2758CB85C();
}

unint64_t sub_2758CCF28()
{
  result = qword_280A0FCE8;
  if (!qword_280A0FCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FCC8, &qword_2759C5670);
    sub_2758CDAB0(&qword_280A0E720, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    sub_2758CDAB0(&qword_280A0FCF0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FCE8);
  }

  return result;
}

unint64_t sub_2758CD014()
{
  result = qword_280A0FCF8;
  if (!qword_280A0FCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FCB8, &qword_2759C5660);
    sub_27589B02C(&qword_280A0FD00, &qword_280A0FD08, &qword_2759C56A0, MEMORY[0x277CDD7F8]);
    sub_2758CDAB0(&qword_280A0FCF0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FCF8);
  }

  return result;
}

unint64_t sub_2758CD0FC()
{
  result = qword_280A0FD10;
  if (!qword_280A0FD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FCD0, &qword_2759C5678);
    sub_2758CCF28();
    sub_2758CD014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD10);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for StaticHeaderImageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_2759B8C48();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[10];
  v13 = sub_2759B8A38();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758CD404()
{
  type metadata accessor for StaticHeaderImageView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return sub_2758C9FF0();
}

uint64_t sub_2758CD4D0(uint64_t a1)
{
  v4 = *(type metadata accessor for StaticHeaderImageView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2758CB908(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2758CD5F0(uint64_t a1)
{
  v4 = *(type metadata accessor for StaticHeaderImageView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2758CB908(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_10Tm()
{
  v1 = type metadata accessor for StaticHeaderImageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_2759B8C48();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[10];
  v13 = sub_2759B8A38();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v15 + 8, v2 | 7);
}

unint64_t sub_2758CD9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FD20;
  if (!qword_280A0FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD20);
  }

  return result;
}

unint64_t sub_2758CD9FC()
{
  result = qword_280A0FD30;
  if (!qword_280A0FD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FD28, &qword_2759C56F8);
    sub_2758CDAB0(&qword_280A0FD38, MEMORY[0x277D23390], MEMORY[0x277D23398]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD30);
  }

  return result;
}

uint64_t sub_2758CDAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2758CDAF8(uint64_t a1)
{
  v2 = type metadata accessor for StaticHeaderImageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for StaticHeaderImageView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticHeaderImageView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2758CDCA4()
{
  result = qword_280A0FD40;
  if (!qword_280A0FD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FD48, &qword_2759C5710);
    sub_2758CD0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD40);
  }

  return result;
}

unint64_t sub_2758CDD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FD50;
  if (!qword_280A0FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD50);
  }

  return result;
}

unint64_t sub_2758CDD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FD58;
  if (!qword_280A0FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD58);
  }

  return result;
}

unint64_t sub_2758CDDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FD60;
  if (!qword_280A0FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FD60);
  }

  return result;
}

unint64_t sub_2758CDE38(uint64_t a1, uint64_t a2)
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

void sub_2758CDE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_275906750(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = sub_27586F8A0(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        sub_275907270();
        v15 = v17;
      }

      sub_2758D506C(v11, v15);
      *v5 = v15;
    }
  }
}

void sub_2758CDF90(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_275906D20(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_2758A342C();
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_275907A6C();
        v10 = v13;
      }

      sub_2758D521C(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_2758CE094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_27586FBC8(a1, v20 - v9, &unk_280A0E510, &qword_2759C33C0);
  v11 = sub_2759BA518();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_27586BF04(v10, &unk_280A0E510, &qword_2759C33C0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_2759BA468();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2759BA508();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

void ManageStorageDrilldownController.navigationController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*ManageStorageDrilldownController.navigationController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___ICSManageStorageDrilldownController_navigationController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2758CE3E8;
}

void sub_2758CE3E8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t ManageStorageDrilldownController.liftUIDataSource.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ICSManageStorageDrilldownController_liftUIDataSource);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_2758CE628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_27586FBC8(v4 + v8, a4, a2, a3);
}

uint64_t sub_2758CE6B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_2758CE724(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_2758CE724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id ManageStorageDrilldownController.__allocating_init(appBundleID:account:presentingController:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_2758D53E4(a1, a2, a3, a4);

  return v10;
}

id ManageStorageDrilldownController.init(appBundleID:account:presentingController:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v6 = sub_2758D53E4(a1, a2, a3, a4);

  return v6;
}

char *ManageStorageDrilldownController.__allocating_init(appBundleID:account:navigationController:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(v5);
  if (a2)
  {
    v10 = v9;
    v11 = sub_2759BA258();

    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v9 initWithAppBundleID:v11 account:a3 presentingController:0];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v12;
}

char *ManageStorageDrilldownController.init(appBundleID:account:navigationController:)(uint64_t a1, uint64_t a2, void *a3, void *a4, double a5)
{
  v6 = v5;
  if (a2)
  {
    v9 = sub_2759BA258();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 initWithAppBundleID:v9 account:a3 presentingController:0];

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v10;
}

Swift::Void __swiftcall ManageStorageDrilldownController.cancelLoading()()
{
  v1 = v0;
  sub_2758CED90();
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2758937B8(0x6F4C6C65636E6163, 0xEF2928676E696461, &v10);
    _os_log_impl(&dword_275819000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x277C85860](v6, -1, -1);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v7 = v1 + OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask;
  swift_beginAccess();
  if (*(v7 + 24))
  {
    sub_27586E058(v7, &v10);
    v8 = *(&v11 + 1);
    v9 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  sub_2758CE724(&v10, v7, &qword_280A0FD88, &qword_2759C5880);
  swift_endAccess();
}

uint64_t sub_2758CED90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v5 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID);
  v4 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);
  if (v4)
  {
    swift_bridgeObjectRetain_n();
    sub_2759BA4D8();
    v6 = sub_2759BA518();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v7;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    *(v8 + 56) = 1538;
    *(v8 + 58) = 0;
    *(v8 + 64) = 2;
    *(v8 + 72) = 0;
    *(v8 + 80) = v5;
    *(v8 + 88) = v4;
    *(v8 + 96) = 9;
    swift_bridgeObjectRetain_n();
    sub_275931D20(0, 0, v3, &unk_2759C5AB8, v8);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    sub_2759BA4D8();
    v9 = sub_2759BA518();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v10;
    *(v11 + 40) = xmmword_2759C5860;
    *(v11 + 56) = 1538;
    *(v11 + 58) = 0;
    *(v11 + 64) = 2;
    *(v11 + 72) = 0;
    *(v11 + 80) = xmmword_2759C5870;
    *(v11 + 96) = 10;
    sub_275931D20(v5, 0, v3, &unk_2759C5AB0, v11);
  }

  return sub_27586BF04(v3, &unk_280A0E510, &qword_2759C33C0);
}

uint64_t ManageStorageDrilldownController.fetchStorage(for:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_2758CF0B4, 0, 0);
}

uint64_t sub_2758CF0B4()
{
  v16 = v0;
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR___ICSManageStorageDrilldownController_dataController;
  swift_beginAccess();
  sub_27586FBC8(v1 + v2, v0 + 56, &qword_280A0FD98, &qword_2759C5888);
  if (*(v0 + 80))
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    sub_275827D1C((v0 + 56), v0 + 16);
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    v5[2] = v0 + 16;
    v5[3] = v4;
    v5[4] = v3;
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDA0, &unk_2759C5898);
    *v6 = v0;
    v6[1] = sub_2758CF380;

    return MEMORY[0x2822008A0](v0 + 120, 0, 0, 0xD000000000000012, 0x80000002759E0330, sub_2758D579C, v5, v7);
  }

  else
  {
    sub_27586BF04(v0 + 56, &qword_280A0FD98, &qword_2759C5888);
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A238A0);
    v9 = sub_2759B8988();
    v10 = sub_2759BA648();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2758937B8(0xD000000000000012, 0x80000002759E0330, &v15);
      _os_log_impl(&dword_275819000, v9, v10, "%s no data controller, returning nil", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13(0);
  }
}

uint64_t sub_2758CF380()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2758CF508;
  }

  else
  {

    v2 = sub_2758CF49C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2758CF49C()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_2758CF508()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2758CF574(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEC8, &qword_2759C5AA8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v8 + 16))(v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v10, v7);
  (*(v12 + 8))(a3, v17, sub_2758D62E4, v14, v11, v12);
}

uint64_t sub_2758CF708(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEC8, &qword_2759C5AA8);
    return sub_2759BA478();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEC8, &qword_2759C5AA8);
    return sub_2759BA488();
  }
}

void ManageStorageDrilldownController.beginLoading(specifier:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask;
  swift_beginAccess();
  sub_27586FBC8(&v1[v7], v36, &qword_280A0FD88, &qword_2759C5880);
  v8 = v37;
  sub_27586BF04(v36, &qword_280A0FD88, &qword_2759C5880);
  if (v8)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_280A238A0);
    v10 = sub_2759B8988();
    v11 = sub_2759BA668();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_14;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_275819000, v10, v11, "Task already in progress, bailing", v12, 2u);
    v13 = v12;
LABEL_13:
    MEMORY[0x277C85860](v13, -1, -1);
LABEL_14:

    return;
  }

  sub_2758CFC24();
  v14 = &v1[OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID];
  v15 = *&v1[OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8];
  if (v15)
  {
    v16 = *&v1[OBJC_IVAR___ICSManageStorageDrilldownController_account];
    if (v16)
    {
      v34 = *v14;
      v17 = *&v2[OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier];
      *&v2[OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier] = a1;

      v35 = v16;

      v18 = sub_2759BA518();
      v33 = *(*(v18 - 8) + 56);
      v33(v6, 1, 1, v18);
      sub_2759BA4C8();
      v19 = a1;
      v20 = sub_2759BA4B8();
      v21 = swift_allocObject();
      v22 = MEMORY[0x277D85700];
      v21[2] = v20;
      v21[3] = v22;
      v21[4] = a1;
      v23 = v19;
      sub_27587D460(0, 0, v6, &unk_2759C58B0, v21);

      v33(v6, 1, 1, v18);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v25 = v34;
      v24[4] = v2;
      v24[5] = v25;
      v24[6] = v15;
      v24[7] = v23;
      v26 = v23;
      v27 = v2;
      v28 = sub_27587D460(0, 0, v6, &unk_2759C58C0, v24);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDC8, &qword_2759CA7C0);
      v38 = &protocol witness table for Task<A, B>;

      v36[0] = v28;
      swift_beginAccess();
      sub_2758CE724(v36, &v2[v7], &qword_280A0FD88, &qword_2759C5880);
      swift_endAccess();
      return;
    }
  }

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v29 = sub_2759B89A8();
  __swift_project_value_buffer(v29, qword_280A238A0);
  v30 = v2;
  v10 = sub_2759B8988();
  v31 = sub_2759BA648();
  if (os_log_type_enabled(v10, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109376;
    *(v32 + 4) = *(v14 + 1) != 0;
    *(v32 + 8) = 1024;
    *(v32 + 10) = *&v30[OBJC_IVAR___ICSManageStorageDrilldownController_account] != 0;

    _os_log_impl(&dword_275819000, v10, v31, "Unable to load drilldown, appBundleId: %{BOOL}d account: %{BOOL}d", v32, 0xEu);
    v13 = v32;
    goto LABEL_13;
  }
}

uint64_t sub_2758CFC24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v5 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID);
  v4 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);
  if (v4)
  {
    swift_bridgeObjectRetain_n();
    sub_2759BA4D8();
    v6 = sub_2759BA518();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v7;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    *(v8 + 56) = 1538;
    *(v8 + 58) = 0;
    *(v8 + 64) = 0;
    *(v8 + 72) = 0;
    *(v8 + 80) = v5;
    *(v8 + 88) = v4;
    *(v8 + 96) = 9;
    swift_bridgeObjectRetain_n();
    sub_275931D20(0, 0, v3, &unk_2759C5AA0, v8);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    sub_2759BA4D8();
    v9 = sub_2759BA518();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v10;
    *(v11 + 40) = xmmword_2759C5860;
    *(v11 + 56) = 1538;
    *(v11 + 58) = 0;
    *(v11 + 64) = 0;
    *(v11 + 72) = 0;
    *(v11 + 80) = xmmword_2759C5870;
    *(v11 + 96) = 10;
    sub_275931D20(v5, 0, v3, &unk_2759C5A98, v11);
  }

  return sub_27586BF04(v3, &unk_280A0E510, &qword_2759C33C0);
}

uint64_t sub_2758CFED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a4;
  v7[11] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v7[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v10 = sub_2759B8508();
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[21] = v11;
  *v11 = v7;
  v11[1] = sub_2758D0080;

  return ManageStorageDrilldownController.fetchStorage(for:)(a5, a6);
}

uint64_t sub_2758D0080(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_2758D0C20;
  }

  else
  {
    v4 = sub_2758D0194;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2758D0194()
{
  v71 = v0;
  v1 = *(v0 + 184);
  sub_2759BA558();
  v2 = *(v0 + 176);
  if (v1)
  {

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v3 = sub_2759B89A8();
    __swift_project_value_buffer(v3, qword_280A238A0);
    v4 = v1;
    v5 = sub_2759B8988();
    v6 = sub_2759BA648();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v70 = v9;
      *v7 = 136315394;
      *(v7 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E0440, &v70);
      *(v7 + 12) = 2112;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_275819000, v5, v6, "%s encountered error: %@", v7, 0x16u);
      sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x277C85860](v9, -1, -1);
      MEMORY[0x277C85860](v7, -1, -1);
    }

    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = sub_2759BA518();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    sub_2759BA4C8();
    v15 = v13;
    v16 = sub_2759BA4B8();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v13;
    sub_27587D460(0, 0, v12, &unk_2759C5A78, v17);

    goto LABEL_7;
  }

  if (!v2)
  {
    v26 = *(v0 + 136);
    v27 = *(v0 + 128);
    v28 = *(v0 + 112);
    v29 = *(*(v0 + 144) + 56);
    v29(v27, 1, 1, v26);
    sub_27586BF04(v27, &unk_280A0EB10, &qword_2759C0740);
    v29(v28, 1, 1, v26);
    goto LABEL_23;
  }

  v23 = [*(v0 + 176) liftUIURL];
  if (v23)
  {
    v24 = v23;
    sub_2759B84C8();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v30 = *(v0 + 136);
  v31 = *(v0 + 144);
  v33 = *(v0 + 120);
  v32 = *(v0 + 128);
  v34 = *(v31 + 56);
  v34(v33, v25, 1, v30);
  sub_2758B4BD0(v33, v32);
  v35 = *(v31 + 48);
  if (v35(v32, 1, v30) == 1)
  {
    sub_27586BF04(*(v0 + 128), &unk_280A0EB10, &qword_2759C0740);
    v36 = [v2 ruiURL];
    if (v36)
    {
      v37 = v36;
      sub_2759B84C8();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v41 = *(v0 + 136);
    v43 = *(v0 + 104);
    v42 = *(v0 + 112);
    v34(v43, v38, 1, v41);
    sub_2758B4BD0(v43, v42);
    if (v35(v42, 1, v41) != 1)
    {
      v68 = *(v0 + 144);
      v67 = *(v0 + 152);
      v69 = *(v0 + 136);
      (*(v68 + 32))(v67, *(v0 + 112), v69);
      sub_2758D2358();

      (*(v68 + 8))(v67, v69);
LABEL_7:
      v19 = *(v0 + 80);
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      v20 = OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask;
      swift_beginAccess();
      sub_2758CE724(v0 + 16, v19 + v20, &qword_280A0FD88, &qword_2759C5880);
      swift_endAccess();

      v21 = *(v0 + 8);

      return v21();
    }

LABEL_23:
    v44 = *(v0 + 88);
    sub_27586BF04(*(v0 + 112), &unk_280A0EB10, &qword_2759C0740);
    if ([v44 detailControllerClass])
    {
      v45 = *(v0 + 176);
      v47 = *(v0 + 88);
      v46 = *(v0 + 96);
      v48 = *(v0 + 80);
      v49 = sub_2759BA518();
      (*(*(v49 - 8) + 56))(v46, 1, 1, v49);
      sub_2759BA4C8();
      v50 = v47;
      v51 = v48;
      v52 = sub_2759BA4B8();
      v53 = swift_allocObject();
      v54 = MEMORY[0x277D85700];
      v53[2] = v52;
      v53[3] = v54;
      v53[4] = v50;
      v53[5] = v51;
      sub_27587D460(0, 0, v46, &unk_2759C5A88, v53);
    }

    else
    {
      if (qword_280A0E338 != -1)
      {
        swift_once();
      }

      v55 = sub_2759B89A8();
      __swift_project_value_buffer(v55, qword_280A238A0);
      v56 = sub_2759B8988();
      v57 = sub_2759BA648();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_275819000, v56, v57, "Fetch app storage missing rui/lui url or detail class", v58, 2u);
        MEMORY[0x277C85860](v58, -1, -1);
      }

      v59 = *(v0 + 176);
      v61 = *(v0 + 88);
      v60 = *(v0 + 96);

      v62 = sub_2759BA518();
      (*(*(v62 - 8) + 56))(v60, 1, 1, v62);
      sub_2759BA4C8();
      v63 = v61;
      v64 = sub_2759BA4B8();
      v65 = swift_allocObject();
      v66 = MEMORY[0x277D85700];
      v65[2] = v64;
      v65[3] = v66;
      v65[4] = v61;
      sub_27587D460(0, 0, v60, &unk_2759C5A80, v65);
    }

    goto LABEL_7;
  }

  (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 128), *(v0 + 136));
  v39 = swift_task_alloc();
  *(v0 + 192) = v39;
  *v39 = v0;
  v39[1] = sub_2758D09E0;
  v40 = *(v0 + 160);

  return ManageStorageDrilldownController.handleLUIDrilldown(url:)(v40);
}

uint64_t sub_2758D09E0()
{

  return MEMORY[0x2822009F8](sub_2758D0ADC, 0, 0);
}

uint64_t sub_2758D0ADC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 80);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v5 = OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask;
  swift_beginAccess();
  sub_2758CE724(v0 + 16, v4 + v5, &qword_280A0FD88, &qword_2759C5880);
  swift_endAccess();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2758D0C20()
{
  v23 = v0;
  v1 = *(v0 + 184);
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E0440, &v22);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_275819000, v4, v5, "%s encountered error: %@", v6, 0x16u);
    sub_27586BF04(v7, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = sub_2759BA518();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_2759BA4C8();
  v14 = v12;
  v15 = sub_2759BA4B8();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v12;
  sub_27587D460(0, 0, v11, &unk_2759C5A78, v16);

  v18 = *(v0 + 80);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v19 = OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask;
  swift_beginAccess();
  sub_2758CE724(v0 + 16, v18 + v19, &qword_280A0FD88, &qword_2759C5880);
  swift_endAccess();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t ManageStorageDrilldownController.handleLUIDrilldown(url:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758D1044, 0, 0);
}

uint64_t sub_2758D1044()
{
  v1 = v0[21];
  v2 = OBJC_IVAR___ICSManageStorageDrilldownController_account;
  v3 = *(v1 + OBJC_IVAR___ICSManageStorageDrilldownController_account);
  v0[24] = v3;
  if (!v3 || (v4 = (v1 + OBJC_IVAR___ICSManageStorageDrilldownController_liftUIDataSource), swift_beginAccess(), v5 = *v4, v0[25] = *v4, !v5))
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v9 = v0[21];
    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_280A238A0);
    v11 = v9;
    v12 = sub_2759B8988();
    v13 = sub_2759BA648();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[21];
    if (v14)
    {
      v16 = swift_slowAlloc();
      *v16 = 67109376;
      *(v16 + 4) = *(v1 + v2) != 0;
      *(v16 + 8) = 1024;
      v17 = OBJC_IVAR___ICSManageStorageDrilldownController_liftUIDataSource;
      swift_beginAccess();
      *(v16 + 10) = *&v15[v17] != 0;

      _os_log_impl(&dword_275819000, v12, v13, "Unable to load liftui drilldown, account: %{BOOL}d liftUIDataSource: %{BOOL}d", v16, 0xEu);
      MEMORY[0x277C85860](v16, -1, -1);
    }

    else
    {
    }

    v18 = v0[23];
    v19 = *(v0[21] + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
    v20 = sub_2759BA518();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    sub_2759BA4C8();
    v21 = v19;
    v22 = sub_2759BA4B8();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v19;
    sub_27587D460(0, 0, v18, &unk_2759C58E8, v23);

    v25 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[26] = v4[1];
  v0[27] = sub_2759BA4C8();
  v6 = v3;
  swift_unknownObjectRetain();
  v0[28] = sub_2759BA4B8();
  v8 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D1378, v8, v7);
}

uint64_t sub_2758D1378()
{
  v1 = *(v0 + 192);

  *(v0 + 232) = sub_275896398(v1, 0);

  return MEMORY[0x2822009F8](sub_2758D13F4, 0, 0);
}

uint64_t sub_2758D13F4()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = v1;
  *(v0 + 240) = sub_2759BA4B8();
  v5 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D1490, v5, v4);
}

uint64_t sub_2758D1490()
{
  v1 = v0[29];
  v2 = v0[24];

  v3 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
  v0[31] = sub_2758A5B3C(v2, v1, 0);

  return MEMORY[0x2822009F8](sub_2758D1524, 0, 0);
}

uint64_t sub_2758D1524()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[23];
  v4 = v0[21];
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v7 = sub_2759BA518();
  v0[32] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v0[33] = v9;
  v0[34] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v3, 1, 1, v7);
  v10 = v1;
  v11 = sub_2759BA4B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  sub_27587D460(0, 0, v3, &unk_2759C58F0, v12);

  v14 = swift_task_alloc();
  v0[35] = v14;
  v14[2] = v2;
  v14[3] = v10;
  v14[4] = v4;
  v15 = swift_task_alloc();
  v0[36] = v15;
  *v15 = v0;
  v15[1] = sub_2758D1758;
  v16 = MEMORY[0x277D84F78] + 8;
  v17 = MEMORY[0x277D84F78] + 8;
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v15, v16, v17, 0, 0, &unk_2759C5900, v14, v18);
}

uint64_t sub_2758D1758()
{

  return MEMORY[0x2822009F8](sub_2758D1870, 0, 0);
}

uint64_t sub_2758D1870()
{
  v1 = v0[26];
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_2758D1928;
  v4 = v0[20];

  return sub_275859678(v4, ObjectType, v1);
}

uint64_t sub_2758D1928(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[38] = a1;
  v4[39] = a2;
  v4[40] = v2;

  if (v2)
  {
    v5 = sub_2758D20D4;
  }

  else
  {
    v5 = sub_2758D1A40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2758D1A40()
{
  v1 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7D8, &qword_2759C4698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(inited + 32) = 0x725564616F6C6572;
  *(inited + 40) = 0xE90000000000006CLL;
  *(inited + 48) = sub_2759B8488();
  *(inited + 56) = v3;
  v4 = sub_2758A30D4(inited);
  swift_setDeallocating();
  sub_27586BF04(inited + 32, &qword_280A0FDF0, &unk_2759C46A0);
  v0[19] = v4;
  v5 = *(v1 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID);

    sub_2758CDE88(v6, v5, 0x6449656C646E7562, 0xE800000000000000);
  }

  v7 = v0[22];
  v0[41] = sub_2758D284C(v0[31]);
  v8 = sub_2759B8508();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_task_alloc();
  v0[42] = v9;
  *v9 = v0;
  v9[1] = sub_2758D1C08;
  v10 = v0[22];

  return sub_275921A1C(v10);
}

uint64_t sub_2758D1C08()
{
  v1 = *(*v0 + 176);

  sub_27586BF04(v1, &unk_280A0EB10, &qword_2759C0740);

  return MEMORY[0x2822009F8](sub_2758D1D30, 0, 0);
}

uint64_t sub_2758D1D30()
{
  v1 = v0[40];
  sub_2759BA558();
  v2 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  if (v1)
  {

    sub_27585A900(v4, v3);

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_280A238A0);
    v6 = v1;
    v7 = sub_2759B8988();
    v8 = sub_2759BA648();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_275819000, v7, v8, "Error while loading LiftUI Manage Storage page: %@", v9, 0xCu);
      sub_27586BF04(v10, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v10, -1, -1);
      MEMORY[0x277C85860](v9, -1, -1);
    }

    v13 = v0[33];
    v14 = v0[32];
    v36 = v0[31];
    v37 = v0[29];
    v39 = v0[24];
    v15 = v0[23];
    v16 = v0[21];

    v17 = *(v16 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
    v13(v15, 1, 1, v14);
    v18 = v17;
    v19 = sub_2759BA4B8();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v17;
    sub_27587D460(0, 0, v15, &unk_2759C5908, v20);

    swift_unknownObjectRelease();
  }

  else
  {
    v22 = v0[31];
    v23 = v0[29];
    v38 = v0[24];
    v24 = v0[23];
    v25 = v0[21];
    (v0[33])(v24, 1, 1, v0[32]);
    v26 = v23;
    v27 = v22;
    sub_2758755BC(v4, v3);
    v28 = v2;
    v29 = v25;
    v30 = sub_2759BA4B8();
    v31 = v0[19];
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    v32[2] = v30;
    v32[3] = v33;
    v32[4] = v4;
    v32[5] = v3;
    v32[6] = v28;
    v32[7] = v26;
    v32[8] = v27;
    v32[9] = v31;
    v32[10] = v29;
    sub_27587D460(0, 0, v24, &unk_2759C5920, v32);

    sub_27585A900(v4, v3);

    swift_unknownObjectRelease();
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_2758D20D4()
{
  v1 = v0[40];
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_275819000, v4, v5, "Error while loading LiftUI Manage Storage page: %@", v6, 0xCu);
    sub_27586BF04(v7, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v7, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  v10 = v0[33];
  v11 = v0[32];
  v21 = v0[31];
  v22 = v0[29];
  v23 = v0[24];
  v12 = v0[23];
  v13 = v0[21];

  v14 = *(v13 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
  v10(v12, 1, 1, v11);
  v15 = v14;
  v16 = sub_2759BA4B8();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v14;
  sub_27587D460(0, 0, v12, &unk_2759C5908, v17);

  swift_unknownObjectRelease();

  v19 = v0[1];

  return v19();
}

void sub_2758D2358()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30[-v3];
  v5 = OBJC_IVAR___ICSManageStorageDrilldownController_account;
  v6 = *&v0[OBJC_IVAR___ICSManageStorageDrilldownController_account];
  if (v6 && (swift_beginAccess(), (v7 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v8 = v7;
    v9 = objc_allocWithZone(MEMORY[0x277D7F4B8]);
    v10 = v6;
    v11 = [v9 initWithNavigationController:v8 initialAction:0 account:v10];
    v12 = OBJC_IVAR___ICSManageStorageDrilldownController_ruiDelegate;
    v13 = *&v0[OBJC_IVAR___ICSManageStorageDrilldownController_ruiDelegate];
    *&v0[OBJC_IVAR___ICSManageStorageDrilldownController_ruiDelegate] = v11;

    v14 = *&v0[v12];
    if (v14)
    {
      [v14 setDelegate_];
      v15 = *&v0[v12];
      if (v15)
      {
        v16 = v15;
        v17 = sub_2759B84B8();
        [v16 loadURL:v17 postBody:0];
      }
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_280A238A0);
    v19 = v0;
    v20 = sub_2759B8988();
    v21 = sub_2759BA648();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109376;
      *(v22 + 4) = *&v1[v5] != 0;
      *(v22 + 8) = 1024;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        v24 = 1;
      }

      else
      {
        v24 = 0;
      }

      *(v22 + 10) = v24;

      _os_log_impl(&dword_275819000, v20, v21, "Unable to load rui drilldown, account: %{BOOL}d navigationController: %{BOOL}d", v22, 0xEu);
      MEMORY[0x277C85860](v22, -1, -1);
    }

    else
    {

      v20 = v19;
    }

    v25 = *(&v19->isa + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
    v26 = sub_2759BA518();
    (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
    sub_2759BA4C8();
    v10 = v25;
    v27 = sub_2759BA4B8();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v25;
    sub_27587D460(0, 0, v4, &unk_2759C5A90, v28);
  }
}

uint64_t ManageStorageDrilldownController.handleDetailControllerClass(specifier:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2759BA4C8();
  v7 = a1;
  v8 = v1;
  v9 = sub_2759BA4B8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v8;
  sub_27587D460(0, 0, v5, &unk_2759C5930, v10);
}

char *sub_2758D284C(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID];
  v47 = *&v1[OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8];
  if (!v47)
  {
LABEL_15:
    if (qword_2815ADD30 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  v46 = *v2;
  v3 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v5 = *(a1 + v3);
  v43 = v1;
  v44 = v2;
  if (v5 >> 62)
  {
    v6 = sub_2759BA9E8();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
LABEL_14:

    v1 = v43;
    v2 = v44;
    goto LABEL_15;
  }

  v7 = 0;
  v45 = v5 & 0xC000000000000001;
  v1 = (v5 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v45)
    {
      v8 = MEMORY[0x277C846A0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v2 = *(*&v8[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
    v52[0] = v46;
    v52[1] = v47;
    MEMORY[0x28223BE20](v8);
    v42[2] = v52;

    v11 = sub_2758A34DC(sub_275875530, v42, v2);

    if (v11)
    {

      goto LABEL_24;
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_16:
  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_2815ADE70);
  v13 = v1;
  v14 = sub_2759B8988();
  v15 = sub_2759BA648();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v52[0] = v17;
    *v16 = 136315138;
    if (v2[1])
    {
      v18 = *v2;
      v19 = v2[1];
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_2758937B8(v18, v19, v52);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_275819000, v14, v15, "ManageStorageDrilldownController unable to find app view model for bundleId: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x277C85860](v17, -1, -1);
    MEMORY[0x277C85860](v16, -1, -1);
  }

  v21 = sub_2758A2A88(MEMORY[0x277D84F90]);
  v22 = objc_allocWithZone(type metadata accessor for ManageStorageApp());
  v23 = ManageStorageApp.init(_:)(v21);
  v53 = &type metadata for DefaultApplicationRecordProvider;
  v54 = &off_28847F8A0;
  v24 = type metadata accessor for DefaultIconLoader();
  v25 = objc_allocWithZone(v24);
  __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  v50 = &type metadata for DefaultApplicationRecordProvider;
  v51 = &off_28847F8A0;
  sub_27586E058(v49, v25 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
  v48.receiver = v25;
  v48.super_class = v24;
  v26 = objc_msgSendSuper2(&v48, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v52);
  v53 = v24;
  v54 = &off_28847F800;
  v52[0] = v26;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v52, v24);
  MEMORY[0x28223BE20](v27);
  v29 = (&v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v29;
  v50 = v24;
  v51 = &off_28847F800;
  v49[0] = v31;
  v32 = objc_allocWithZone(type metadata accessor for ManageStorageAppViewModel(0));
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  MEMORY[0x28223BE20](v33);
  v35 = (&v43 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v9 = sub_2758ACAE4(v23, -1, *v35, v32);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v52);
  v37 = v2[1];
  if (v37)
  {
    v38 = *v2;
    v39 = *&v9[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEB0, &qword_2759C2620);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_2759C17A0;
    *(v40 + 32) = v38;
    *(v40 + 40) = v37;
    *(v39 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds) = v40;

LABEL_24:
  }

  return v9;
}

uint64_t sub_2758D2E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758D2EB4, 0, 0);
}

uint64_t sub_2758D2EB4()
{
  v1 = v0[6];
  v17 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_2759BA518();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v7 = v2;
  sub_2758CE094(v1, &unk_2759C5A40, v6);
  sub_27586BF04(v1, &unk_280A0E510, &qword_2759C33C0);
  v5(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v9 = v3;
  sub_2758CE094(v1, &unk_2759C5A50, v8);
  sub_27586BF04(v1, &unk_280A0E510, &qword_2759C33C0);
  v10 = *(v17 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);
  if (v10 && (*(v17 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID) == 0xD000000000000010 && v10 == 0x80000002759DF530 || (sub_2759BAAC8() & 1) != 0))
  {
    v11 = v0[6];
    v12 = v0[4];
    v5(v11, 1, 1, v4);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    v14 = v12;
    sub_2758CE094(v11, &unk_2759C5A60, v13);
    sub_27586BF04(v11, &unk_280A0E510, &qword_2759C33C0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2758D3138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return sub_27588A44C(1);
}

uint64_t sub_2758D31CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(0, 0);
}

uint64_t sub_2758D3268()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return ManageStorageAppsListViewModel.fetchHealthEnabled()();
}

uint64_t sub_2758D32FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = v13;
  v8[44] = v14;
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DE0, &unk_2759CF4C0);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = type metadata accessor for ManageStorageLiftUIDrilldownView(0);
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE70, &qword_2759C59B0);
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  sub_2759BA4C8();
  v8[53] = sub_2759BA4B8();
  v10 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D3470, v10, v9);
}

uint64_t sub_2758D3470()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 344);
  v34 = *(v0 + 328);
  v35 = *(v0 + 336);
  v33 = *(v0 + 320);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);

  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE78, &qword_2759CEB20);
  v6 = sub_2758D5E48();
  *(v0 + 16) = v3;
  *(v0 + 48) = v6;
  sub_2759B8C08();
  swift_allocObject();

  v7 = sub_2759B8BF8();
  *(v0 + 248) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E7F0, &unk_2759C1230);
  sub_2759B9D58();
  v8 = *(v0 + 120);
  v9 = *(v1 + 36);
  *(v2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(v0 + 136) = v5;
  *(v0 + 144) = v4;
  sub_2758755BC(v5, v4);
  sub_2759B9D58();
  v10 = *(v0 + 112);
  *v2 = *(v0 + 96);
  *(v2 + 16) = v10;
  *(v0 + 256) = v33;
  type metadata accessor for ManageStorageAppViewModel(0);
  v11 = v33;
  sub_2759B9D58();
  v12 = *(v0 + 160);
  *(v2 + 24) = *(v0 + 152);
  *(v2 + 32) = v12;
  *(v0 + 264) = v34;
  v13 = v34;
  sub_2759B9D58();

  *(v2 + 40) = *(v0 + 168);
  *(v0 + 272) = v35;
  type metadata accessor for ManageStorageAppsListViewModel(0);
  v14 = v35;
  sub_2759B9D58();
  v15 = *(v0 + 192);
  *(v2 + 56) = *(v0 + 184);
  *(v2 + 64) = v15;
  *(v0 + 280) = v7;

  sub_2759B9D58();
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  *(v2 + 72) = v16;
  *(v2 + 80) = v17;
  *(v0 + 216) = v16;
  *(v0 + 224) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE98, &unk_2759C59F0);
  sub_2759B9D68();
  sub_27586FBC8(v0 + 16, v0 + 56, &qword_280A0FEA0, &qword_2759CF500);
  v18 = *(v0 + 80);
  v19 = *(v0 + 368);
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 56), v18);

    sub_2759B8B08();
    v20 = sub_2759B8AF8();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {

    sub_27586BF04(v0 + 56, &qword_280A0FEA0, &qword_2759CF500);
    v20 = sub_2759B8AF8();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  }

  v21 = *(v0 + 416);
  v31 = *(v0 + 400);
  v32 = *(v0 + 408);
  v36 = *(v0 + 392);
  v30 = *(v0 + 384);
  v22 = *(v0 + 360);
  sub_2759B8C28();

  *(v0 + 232) = v16;
  *(v0 + 240) = v17;
  sub_2759B9D68();

  sub_2758F649C();
  sub_2759BA208();

  sub_2759B8AF8();
  (*(*(v20 - 8) + 56))(v22, 0, 1, v20);
  sub_2759B8C28();

  sub_27586BF04(v0 + 16, &qword_280A0FEA0, &qword_2759CF500);
  sub_2758D5EC4(v30, v36);
  Strong = swift_unknownObjectWeakLoadStrong();
  KeyPath = swift_getKeyPath();
  sub_2758D5EC4(v36, v21);
  v25 = (v21 + *(v31 + 36));
  *v25 = KeyPath;
  v25[1] = Strong;
  sub_27586FBC8(v21, v32, &qword_280A0FE70, &qword_2759C59B0);
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEA8, &unk_2759C5A28));
  v27 = sub_2759B9508();
  ManageStorageDrilldownController.present(_:)(v27);

  sub_27586BF04(v21, &qword_280A0FE70, &qword_2759C59B0);

  v28 = *(v0 + 8);

  return v28();
}

Swift::Void __swiftcall ManageStorageDrilldownController.present(_:)(UIViewController *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_280A238A0);
    v10 = sub_2759B8988();
    v11 = sub_2759BA648();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_275819000, v10, v11, "ICSManageStorageViewController: presenting from PSController", v12, 2u);
      MEMORY[0x277C85860](v12, -1, -1);
    }

    [v8 showController:a1 animate:1];
LABEL_13:
    sub_2758D40F0();

    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v8 = v13;
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_280A238A0);
    v15 = sub_2759B8988();
    v16 = sub_2759BA648();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_275819000, v15, v16, "ICSManageStorageViewController: no presenting controller available. Falling back to navigation controller", v17, 2u);
      MEMORY[0x277C85860](v17, -1, -1);
    }

    [v8 pushViewController:a1 animated:1];
    goto LABEL_13;
  }

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v24 = sub_2759B89A8();
  __swift_project_value_buffer(v24, qword_280A238A0);
  v25 = sub_2759B8988();
  v26 = sub_2759BA648();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_275819000, v25, v26, "ICSManageStorageViewController: no presenting controller or navigation controller available", v27, 2u);
    MEMORY[0x277C85860](v27, -1, -1);
  }

LABEL_14:
  v18 = *(v2 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
  v19 = sub_2759BA518();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  sub_2759BA4C8();
  v20 = v18;
  v21 = sub_2759BA4B8();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v18;
  sub_27587D460(0, 0, v6, &unk_2759C5938, v22);
}

uint64_t sub_2758D3DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5[4] = swift_task_alloc();
  v5[5] = sub_2759BA4C8();
  v5[6] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D3EB8, v7, v6);
}

uint64_t sub_2758D3EB8()
{
  v1 = v0[2];

  [v1 detailControllerClass];
  v2 = CreateDetailControllerInstanceWithClass();
  if (v2)
  {
    v3 = v2;
    [v2 setSpecifier_];
    v4 = v3;
    ManageStorageDrilldownController.present(_:)(v4);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_2815ADE70);
    v6 = sub_2759B8988();
    v7 = sub_2759BA648();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_275819000, v6, v7, "Unable to push detail controller, no detail controller", v8, 2u);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    v9 = v0[4];
    v10 = v0[3];

    v11 = *(v10 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
    v12 = sub_2759BA518();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = v11;
    v14 = sub_2759BA4B8();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v11;
    sub_27587D460(0, 0, v9, &unk_2759C59A0, v15);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_2758D40F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v5 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID);
  v4 = *(v0 + OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID + 8);
  if (v4)
  {

    sub_2759BA4D8();
    v6 = sub_2759BA518();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v7;
    *(v8 + 40) = v5;
    *(v8 + 48) = v4;
    *(v8 + 56) = 6665;
    *(v8 + 58) = 1;
    *(v8 + 64) = 0;
    *(v8 + 72) = 1;
    *(v8 + 80) = 0;
    *(v8 + 88) = 0;
    *(v8 + 96) = -1;

    sub_275931D20(0, 0, v3, &unk_2759C5998, v8);
  }

  else
  {
    sub_2759BA4D8();
    v9 = sub_2759BA518();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v10;
    *(v11 + 40) = xmmword_2759C5870;
    *(v11 + 56) = 6666;
    *(v11 + 58) = 1;
    *(v11 + 64) = 0;
    *(v11 + 72) = 1;
    *(v11 + 80) = 0;
    *(v11 + 88) = 0;
    *(v11 + 96) = -1;
    sub_275931D20(v5, 0, v3, &unk_2759C4530, v11);
  }

  return sub_27586BF04(v3, &unk_280A0E510, &qword_2759C33C0);
}

uint64_t sub_2758D4394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2759BA4C8();
  *(v4 + 64) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D442C, v6, v5);
}

uint64_t sub_2758D442C()
{
  v1 = *(v0 + 56);

  if (!v1)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_9:
    sub_27586BF04(v0 + 16, &qword_280A0ED70, &qword_2759C6C60);
    goto LABEL_10;
  }

  if ([*(v0 + 56) propertyForKey_])
  {
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  if (!*(v0 + 40))
  {
    goto LABEL_9;
  }

  sub_275861AF8(0, &qword_280A0FEB8, 0x277D75B48);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 48);
    v3 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    v4 = [objc_opt_self() systemGrayColor];
    [v3 setColor_];

    [v3 startAnimating];
    [v2 setAccessoryView_];
  }

LABEL_10:
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2758D45E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  sub_2759BA4C8();
  *(v4 + 64) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758D4678, v6, v5);
}

uint64_t sub_2758D4678()
{
  v1 = *(v0 + 56);

  if (!v1)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_10:
    sub_27586BF04(v0 + 16, &qword_280A0ED70, &qword_2759C6C60);
    goto LABEL_18;
  }

  v2 = *(v0 + 56);
  if ([v2 propertyForKey_])
  {
    sub_2759BA818();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *(v0 + 16) = v7;
  *(v0 + 32) = v8;
  if (!*(v0 + 40))
  {
    goto LABEL_10;
  }

  sub_275861AF8(0, &qword_280A0FEB8, 0x277D75B48);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    if ([v2 propertyForKey_])
    {
      sub_2759BA818();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    *(v0 + 16) = v7;
    *(v0 + 32) = v8;
    if (*(v0 + 40))
    {
      sub_275861AF8(0, &qword_280A0FEC0, 0x277D75D18);
      if (swift_dynamicCast())
      {
        v4 = *(v0 + 48);
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      sub_27586BF04(v0 + 16, &qword_280A0ED70, &qword_2759C6C60);
      v4 = 0;
    }

    [v3 setAccessoryView_];
  }

LABEL_18:
  v5 = *(v0 + 8);

  return v5();
}

uint64_t ManageStorageDrilldownController.loadFinished(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238A0);
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_275819000, v6, v7, "Storage used VC load finished with success.", v8, 2u);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v9 = *(v1 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_2759BA4C8();
  v11 = v9;
  v12 = sub_2759BA4B8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v9;
  sub_27587D460(0, 0, v4, &unk_2759C5940, v13);

  return sub_2758D40F0();
}

void ManageStorageDrilldownController.loadFailed(_:withError:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v8 = sub_2759B89A8();
  __swift_project_value_buffer(v8, qword_280A238A0);
  v9 = a2;
  v10 = sub_2759B8988();
  v11 = sub_2759BA648();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    if (a2)
    {
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v12 + 4) = v15;
    *v13 = v16;
    _os_log_impl(&dword_275819000, v10, v11, "Storage used VC load failed with error %@", v12, 0xCu);
    sub_27586BF04(v13, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  v17 = *(v3 + OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier);
  v18 = sub_2759BA518();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_2759BA4C8();
  v19 = v17;
  v20 = sub_2759BA4B8();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v17;
  sub_27587D460(0, 0, v7, &unk_2759C5948, v21);
}

id ManageStorageDrilldownController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManageStorageDrilldownController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2758D503C(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_2758D506C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2759BA848() + 1) & ~v5;
    do
    {
      sub_2759BABD8();

      sub_2759BA328();
      v9 = sub_2759BAC08();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_2758D521C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2759BA848() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_2759BA298();
      sub_2759BABD8();
      v10 = v9;
      sub_2759BA328();
      v11 = sub_2759BAC08();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

id sub_2758D53E4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR___ICSManageStorageDrilldownController_appBundleID];
  *v9 = 0;
  *(v9 + 1) = 0;
  v36 = OBJC_IVAR___ICSManageStorageDrilldownController_account;
  *&v4[OBJC_IVAR___ICSManageStorageDrilldownController_account] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___ICSManageStorageDrilldownController_activeSpecifier] = 0;
  *&v4[OBJC_IVAR___ICSManageStorageDrilldownController_ruiDelegate] = 0;
  v10 = &v4[OBJC_IVAR___ICSManageStorageDrilldownController_liftUIDataSource];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR___ICSManageStorageDrilldownController_anyLoadingTask];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = &v4[OBJC_IVAR___ICSManageStorageDrilldownController_dataController];
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v13 = sub_2759B89A8();
  __swift_project_value_buffer(v13, qword_280A238A0);

  v14 = sub_2759B8988();
  v15 = sub_2759BA668();

  if (os_log_type_enabled(v14, v15))
  {
    v35 = a1;
    v16 = swift_slowAlloc();
    v34 = ObjectType;
    v17 = swift_slowAlloc();
    v38[0] = v17;
    *v16 = 136315138;
    v33 = v12;
    if (a2)
    {
      v18 = v35;
    }

    else
    {
      v18 = 7104878;
    }

    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_2758937B8(v18, v19, v38);

    *(v16 + 4) = v20;
    v12 = v33;
    _os_log_impl(&dword_275819000, v14, v15, "ManageStorageDrilldownController initializing for bundleID: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v21 = v17;
    ObjectType = v34;
    MEMORY[0x277C85860](v21, -1, -1);
    v22 = v16;
    a1 = v35;
    MEMORY[0x277C85860](v22, -1, -1);
  }

  *v9 = a1;
  *(v9 + 1) = a2;

  v23 = *&v5[v36];
  *&v5[v36] = a3;
  v24 = a3;

  swift_unknownObjectWeakAssign();
  objc_allocWithZone(type metadata accessor for ICSAnalyticsController());
  v25 = v24;
  v26 = sub_275935F68(a3);

  *&v5[OBJC_IVAR___ICSManageStorageDrilldownController_analyticsController] = v26;
  if (a3)
  {
    v27 = objc_allocWithZone(sub_2759B8698());
    v28 = v25;
    v29 = sub_2759B8688();
    v30 = sub_2758D63D0();
    swift_beginAccess();
    *v10 = v29;
    v10[1] = v30;
    swift_unknownObjectRelease();
    v31 = [objc_allocWithZone(MEMORY[0x277D7F338]) initWithAccount_];
    v38[3] = sub_275861AF8(0, &qword_280A0FED8, 0x277D7F338);
    v38[4] = &protocol witness table for ICQCloudStorageDataController;

    v38[0] = v31;
    swift_beginAccess();
    sub_2758CE724(v38, v12, &qword_280A0FD98, &qword_2759C5888);
    swift_endAccess();
  }

  v39.receiver = v5;
  v39.super_class = ObjectType;
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t sub_2758D57A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758D4394(a1, v4, v5, v6);
}

uint64_t sub_2758D585C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_2758CFED4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2758D5930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758D45E0(a1, v4, v5, v6);
}

uint64_t sub_2758D59E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758A57F0(a1, v4, v5, v6);
}

uint64_t sub_2758D5A98(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_27585F7A0;

  return sub_2758D2E14(a1, a2, v6, v7, v8);
}

uint64_t sub_2758D5B5C(uint64_t a1)
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
  v10[1] = sub_27585F7A0;

  return sub_2758D32FC(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2758D5C50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758D3DE4(a1, v4, v5, v7, v6);
}

void _s14iCloudSettings32ManageStorageDrilldownControllerC11loadStartedyyypSgF_0()
{
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_280A238A0);
  oslog = sub_2759B8988();
  v1 = sub_2759BA668();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_275819000, oslog, v1, "Storage used VC loading started", v2, 2u);
    MEMORY[0x277C85860](v2, -1, -1);
  }
}

unint64_t sub_2758D5E48()
{
  result = qword_280A0FE80;
  if (!qword_280A0FE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FE78, &qword_2759CEB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FE80);
  }

  return result;
}

uint64_t sub_2758D5EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageLiftUIDrilldownView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758D5F28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return sub_2758D3138();
}

uint64_t sub_2758D5FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return sub_2758D31CC();
}

uint64_t sub_2758D6090()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return sub_2758D3268();
}

uint64_t objectdestroy_30Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2758D61CC(uint64_t a1)
{
  v11 = *(v1 + 24);
  v12 = *(v1 + 16);
  v9 = *(v1 + 40);
  v10 = *(v1 + 32);
  v8 = *(v1 + 48);
  v4 = *(v1 + 57);
  v5 = *(v1 + 56);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585A7E4;

  return sub_275934914(a1, v12, v11, v10, v9, v8, v5, v4);
}

uint64_t sub_2758D62E4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEC8, &qword_2759C5AA8);

  return sub_2758CF708(a1, a2);
}

uint64_t objectdestroy_55Tm()
{
  swift_unknownObjectRelease();

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

unint64_t sub_2758D63D0()
{
  result = qword_280A0FED0;
  if (!qword_280A0FED0)
  {
    sub_2759B8698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FED0);
  }

  return result;
}

uint64_t sub_2758D6454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEE0, &qword_2759C5B68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-v6];
  v18 = a1;
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEE8, &qword_2759C5B70);
  sub_27589B02C(&qword_280A0FEF0, &qword_280A0FEE8, &qword_2759C5B70, MEMORY[0x277CE14C0]);
  sub_2759B9938();
  type metadata accessor for iCloudHomeViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_2759B83C8();
  v12 = v11;

  v20 = v10;
  v21 = v12;
  v13 = sub_27589B02C(&qword_280A0FEF8, &qword_280A0FEE0, &qword_2759C5B68, MEMORY[0x277CDE5A0]);
  sub_27589F2D4(v13, v14, v15);
  sub_2759B9AC8();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2758D66B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF00, &qword_2759C5B78);
  v5 = *(v42 - 8);
  v6 = MEMORY[0x28223BE20](v42);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF08, &qword_2759C5B80);
  v41 = *(v11 - 8);
  v12 = v41;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v46 = a1;
  v47 = a2;
  sub_2758D70D4(&v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF10, &qword_2759C5B88);
  sub_2758D7594();
  v40 = v17;
  sub_2759B9F48();
  v44 = a1;
  v45 = a2;
  type metadata accessor for iCloudHomeViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_2759B83C8();
  v22 = v21;

  v48 = v20;
  v49 = v22;
  sub_27589F2D4(v23, v24, v25);
  v48 = sub_2759B99C8();
  v49 = v26;
  v50 = v27 & 1;
  v51 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF40, &qword_2759C5BA0);
  sub_27589B02C(&qword_280A0FF48, &qword_280A0FF40, &qword_2759C5BA0, MEMORY[0x277CDF068]);
  v38 = v10;
  sub_2759B9F48();
  v29 = *(v12 + 16);
  v39 = v15;
  v29(v15, v17, v11);
  v30 = *(v5 + 16);
  v31 = v10;
  v32 = v42;
  v30(v8, v31, v42);
  v33 = v43;
  v29(v43, v15, v11);
  v34 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF50, &qword_2759C5BA8) + 48)];
  v30(v34, v8, v32);
  v35 = *(v5 + 8);
  v35(v38, v32);
  v36 = *(v41 + 8);
  v36(v40, v11);
  v35(v8, v32);
  return (v36)(v39, v11);
}

uint64_t sub_2758D6B0C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF58, &qword_2759C5BB0);
  sub_2759B9D68();
  sub_2759BA4C8();

  v5 = sub_2759BA4B8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v16;

  v8 = sub_2759BA4B8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v16;
  sub_2759B9EA8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF70, &qword_2759C5BC0);
  sub_27589B02C(&qword_280A0FF78, &qword_280A0FF70, &qword_2759C5BC0, MEMORY[0x277CDEFF0]);
  sub_2759B9E18();
  sub_2759B9D68();
  swift_getKeyPath();
  sub_2758D76B0();
  sub_2759B8638();

  v10 = *(v16 + 40);
  v11 = [v10 isAppCellularDataModificationAllowed];

  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v11 ^ 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF10, &qword_2759C5B88);
  v15 = (a3 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_2758D7708;
  v15[2] = v13;
  return result;
}

uint64_t sub_2758D6DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF60, &qword_2759C5BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF88, qword_2759C5C20);
  sub_27589B02C(&qword_280A0FF68, &qword_280A0FF60, &qword_2759C5BB8, MEMORY[0x277CE1138]);
  sub_27589B02C(&qword_280A0FF90, &qword_280A0FF88, qword_2759C5C20, MEMORY[0x277D7EA70]);

  return sub_2759B9D48();
}

double sub_2758D6EDC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for iCloudHomeViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2759B83C8();

  sub_27589F2D4(v4, v5, v6);
  v7 = sub_2759B99C8();
  v9 = v8;
  *a1 = v7;
  *(a1 + 8) = v8;
  v11 = v10 & 1;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_27589F3E4(v7, v8, v10 & 1);

  sub_27589F328(v7, v9, v11);

  return result;
}

uint64_t sub_2758D7014()
{
  v0 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v1 = sub_2759BA258();
  [v0 initWithType_];

  v2 = [objc_opt_self() imageDescriptorNamed_];

  return sub_2759B8888();
}

uint64_t sub_2758D70D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2759BA258();
  v3 = SFLocalizableWAPIStringKeyForKey();

  sub_2759BA298();
  type metadata accessor for iCloudHomeViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_2759B83C8();

  sub_27589F2D4(v6, v7, v8);
  result = sub_2759B99C8();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_2758D7208(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF58, &qword_2759C5BB0);
  sub_2759B9D68();
  sub_2759BA4C8();

  v2 = sub_2759BA4B8();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v8;

  v5 = sub_2759BA4B8();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v8;
  sub_2759B9EA8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FF60, &qword_2759C5BB8);
  sub_27589B02C(&qword_280A0FF68, &qword_280A0FF60, &qword_2759C5BB8, MEMORY[0x277CE1138]);
  return sub_2759B9E18();
}

__n128 sub_2758D73C4@<Q0>(void (*a1)(__n128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2759B9418();
  a1(&v10);
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v8 = v14;
  result = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  return result;
}

double sub_2758D7444@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for iCloudHomeViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_2759B83C8();

  sub_27589F2D4(v4, v5, v6);
  v7 = sub_2759B99C8();
  v9 = v8;
  *a1 = v7;
  *(a1 + 8) = v8;
  v11 = v10 & 1;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_27589F3E4(v7, v8, v10 & 1);

  sub_27589F328(v7, v9, v11);

  return result;
}

unint64_t sub_2758D7594()
{
  result = qword_280A0FF18;
  if (!qword_280A0FF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FF10, &qword_2759C5B88);
    sub_27589B02C(&qword_280A0FF20, &qword_280A0FF28, &qword_2759C5B90, MEMORY[0x277CDF068]);
    sub_27589B02C(&qword_280A0FF30, &qword_280A0FF38, &qword_2759C5B98, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FF18);
  }

  return result;
}

unint64_t sub_2758D76B0()
{
  result = qword_280A0FF80;
  if (!qword_280A0FF80)
  {
    type metadata accessor for ICSDriveCellularViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FF80);
  }

  return result;
}

uint64_t sub_2758D7710()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC14iCloudSettings17DeviceOrientation_listener))
  {

    sub_2759B8CA8();
  }

  v2 = OBJC_IVAR____TtC14iCloudSettings17DeviceOrientation__orientation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FFC8, &unk_2759C5D20);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceOrientation(uint64_t a1)
{
  result = qword_280A0FFA8;
  if (!qword_280A0FFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758D7844(uint64_t a1)
{
  sub_2758D78DC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2758D78DC()
{
  if (!qword_280A0FFB8)
  {
    v0 = sub_2759B8D08();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0FFB8);
    }
  }
}

unint64_t sub_2758D7940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FFC0;
  if (!qword_280A0FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FFC0);
  }

  return result;
}

uint64_t sub_2758D7994@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2759B8CC8();
  *a2 = result;
  return result;
}

unint64_t iCloudPlusFeature.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x505F4547414E414DLL;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x535F44554F4C4349;
  }

  v4 = 0x5F594D5F45444948;
  if (v1 != 3)
  {
    v4 = 0x5F4D55494D455250;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x535F594C494D4146;
  if (v1 != 1)
  {
    v5 = 0x5F45544156495250;
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

iCloudSettings::iCloudPlusFeature_optional __swiftcall iCloudPlusFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2759BAA48();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2758D7B60(uint64_t result)
{
  v2 = *v1;
  if (v2 != 5)
  {
    if (v2 == 2)
    {
      return [objc_opt_self() isCloudPrivateRelayAllowed] ^ 1;
    }

    return 0;
  }

  if (!result)
  {
    return result;
  }

  v3 = result;
  if ([v3 aa_needsEmailConfiguration])
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_2815ADE70);
    v5 = sub_2759B8988();
    v6 = sub_2759BA668();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "iCloud mail is not yet setup, will not show CED tile.";
    goto LABEL_17;
  }

  v9 = objc_opt_self();
  v3 = v3;
  v10 = [v9 sharedManager];
  v11 = [v10 shouldShowDataclass:*MEMORY[0x277CB89C8] forAccount:v3];

  if (v11)
  {

    return 0;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_2815ADE70);
  v5 = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "iCloud mail is not allowed on this account type, will not show CED tile.";
LABEL_17:
    _os_log_impl(&dword_275819000, v5, v6, v8, v7, 2u);
    MEMORY[0x277C85860](v7, -1, -1);
  }

LABEL_18:

  return 1;
}

uint64_t iCloudPlusFeature.title.getter()
{
  type metadata accessor for iCloudHomeViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2759B83C8();

  return v2;
}

uint64_t iCloudPlusFeature.cachedImage.getter()
{
  result = 0;
  v2 = *v0;
  if (v2 < 4 || v2 == 5)
  {
    type metadata accessor for iCloudHomeViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    return sub_2759B9D38();
  }

  return result;
}

unint64_t iCloudPlusFeature.utTypeIdentifier.getter()
{
  v1 = 0xD000000000000021;
  v2 = *v0;
  v3 = 0xD000000000000035;
  v4 = 0xD000000000000029;
  if (v2 != 5)
  {
    v3 = 0xD000000000000029;
  }

  v5 = 0xD00000000000002FLL;
  if (v2 == 3)
  {
    v4 = 0xD00000000000002FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2758D820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0FFD0;
  if (!qword_280A0FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FFD0);
  }

  return result;
}

double sub_2758D826C(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

void sub_2758D83D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000004E414CLL;
  v4 = 0x505F4547414E414DLL;
  v5 = 0x80000002759DCD20;
  v6 = 0xD000000000000013;
  if (v2 != 5)
  {
    v6 = 0x535F44554F4C4349;
    v5 = 0xEE00454741524F54;
  }

  v7 = 0xED00004C49414D45;
  v8 = 0x5F594D5F45444948;
  if (v2 != 3)
  {
    v8 = 0x5F4D55494D455250;
    v7 = 0xEB00000000505041;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00474E49524148;
  v10 = 0x535F594C494D4146;
  if (v2 != 1)
  {
    v10 = 0x5F45544156495250;
    v9 = 0xED000059414C4552;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_2758D84FC()
{
  result = qword_280A0FFD8;
  if (!qword_280A0FFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FFE0, &qword_2759C5DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FFD8);
  }

  return result;
}

uint64_t sub_2758D85BC(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v26 = a1;
  v5 = sub_2759B8938();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2759B88F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2759B8918();
  sub_2759B8948();
  v25 = sub_2759BA708();
  result = sub_2759BA7B8();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a3 & 1) == 0)
  {
    if (v26)
    {
LABEL_9:

      sub_2759B8978();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v15 = 0;
        v16 = 0;
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v17 = "%{public}s";
        v16 = 2;
        v15 = 1;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = v16;
      *(v18 + 1) = v15;
      *(v18 + 2) = 2082;
      v20 = sub_2759BA8E8();
      v22 = sub_2758937B8(v20, v21, &v27);

      *(v18 + 4) = v22;
      v23 = sub_2759B88E8();
      _os_signpost_emit_with_name_impl(&dword_275819000, v13, v25, v23, v26, v17, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x277C85860](v19, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v26 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v26 & 0xFFFFF800) != 0xD800)
  {
    if (v26 >> 16 <= 0x10)
    {
      v26 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2758D88D0(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_2759B88F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2759B8918();
  v12 = sub_2759BA718();
  result = sub_2759BA7B8();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = v12;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v16 = sub_2759BA8E8();
      v18 = sub_2758937B8(v16, v17, &v22);

      *(v14 + 4) = v18;
      v19 = sub_2759B88E8();
      _os_signpost_emit_with_name_impl(&dword_275819000, v11, v21, v19, a1, "%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x277C85860](v15, -1, -1);
      MEMORY[0x277C85860](v14, -1, -1);
LABEL_10:

      (*(v8 + 16))(v10, a4, v7);
      sub_2759B8968();
      swift_allocObject();
      return sub_2759B8958();
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t TaskIdentifier.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x277C840E0](*v0, v0[1]);
  MEMORY[0x277C840E0](2108704, 0xE300000000000000);
  MEMORY[0x277C840E0](v1, v2);
  MEMORY[0x277C840E0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_2758D8B7C()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x277C840E0](*v0, v0[1]);
  MEMORY[0x277C840E0](2108704, 0xE300000000000000);
  MEMORY[0x277C840E0](v1, v2);
  MEMORY[0x277C840E0](93, 0xE100000000000000);
  return 91;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2758D8C08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2758D8C50(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id UITableViewCell.setSeparatorInsetToLayoutMargins(additionalPadding:)()
{
  [v0 layoutMargins];

  return [v0 setSeparatorInset_];
}

void sub_2758D8CF4(void *a1)
{
  v1 = a1;
  [v1 layoutMargins];
  [v1 setSeparatorInset_];
}

uint64_t sub_2758D8D5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = sub_2759B87B8();
  sub_2758DC850(&qword_280A0EFC0, MEMORY[0x277D402D0], MEMORY[0x277D402D8]);
  v13[0] = v3;
  v13[1] = v5;
  v13[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v13);

  sub_2759B9B18();

  v6 = OpaqueTypeMetadata2;
  v7 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v13, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v8 = sub_2759B8798();
  sub_2758DC850(&unk_280A10070, MEMORY[0x277D40290], MEMORY[0x277D402B8]);
  v10[0] = v6;
  v10[1] = v8;
  v10[2] = v7;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v10);

  sub_2759B9B18();

  __swift_project_boxed_opaque_existential_1(v10, v11);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2758D90A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B87B8();
  v8[3] = v4;
  v8[4] = &off_288480E78;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  v6 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_appendSettingsNavigationPath;
  swift_beginAccess();
  sub_2758CE724(v8, a2 + v6, &qword_280A10028, &qword_2759CCFB0);
  return swift_endAccess();
}

uint64_t sub_2758D9188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C60, &qword_2759C6060);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2759B8798();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_navigationMode;
  swift_beginAccess();
  sub_2758CE724(v6, a2 + v9, &unk_280A11C60, &qword_2759C6060);
  return swift_endAccess();
}

uint64_t sub_2758D92CC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10008, &qword_2759C5F68);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758D9398, 0, 0);
}

uint64_t sub_2758D9398()
{
  v18 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_attributes;
  swift_beginAccess();
  if ((*(v1 + 48))(v3 + v4, 1, v2))
  {
    v16 = sub_2758A289C(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v0[9] + 16))(v0[10], v3 + v4, v0[8]);
    sub_2758DC754();
    sub_2759B8AA8();
    (*(v0[9] + 8))(v0[10], v0[8]);
    v16 = v0[5];
  }

  v0[11] = v16;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A23900);

  v6 = sub_2759B8988();
  v7 = sub_2759BA668();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    sub_2759B8AF8();
    v10 = sub_2759BA1E8();
    v12 = sub_2758937B8(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_275819000, v6, v7, "Pushing backup controller with attributes %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_2758D9664;
  v14 = v0[6];

  return sub_2758DA144(v14);
}

uint64_t sub_2758D9664(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_2758D9764, 0, 0);
}

uint64_t sub_2758D9764()
{
  v1 = *(v0 + 104);
  sub_2758DB920(*(v0 + 88));
  v3 = v2;

  if (v1)
  {
    v4 = *(v0 + 104);
    v5 = v3;
    v6 = sub_2759BA258();
    [v4 setProperty:v5 forKey:v6];
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 104);

  return v7(v8);
}

uint64_t sub_2758D9850(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61636F4C7369;
  }

  else
  {
    v3 = 0x7475626972747461;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61636F4C7369;
  }

  else
  {
    v5 = 0x7475626972747461;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEA00000000007365;
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

uint64_t sub_2758D98FC()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_2758D9984(uint64_t a1)
{
  sub_2759BA328();

  return result;
}

uint64_t sub_2758D99F8(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

void sub_2758D9A7C(char *a2@<X8>)
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

void sub_2758D9ADC(uint64_t *a1@<X8>)
{
  v2 = 0x7475626972747461;
  if (*v1)
  {
    v2 = 0x6C61636F4C7369;
  }

  v3 = 0xEA00000000007365;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2758D9B20()
{
  if (*v0)
  {
    return 0x6C61636F4C7369;
  }

  else
  {
    return 0x7475626972747461;
  }
}

void sub_2758D9B60(char *a3@<X8>)
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

uint64_t sub_2758D9BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758DC898(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2758D9C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758DC898(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

id *sub_2758D9C3C(void *a1)
{
  v3 = v1;
  v40 = *v3;
  v41 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10090, &qword_2759C6140);
  MEMORY[0x28223BE20](v7 - 8);
  v35 = &v30 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10098, &qword_2759C6148);
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v30 - v9;
  v3[2] = 0;
  v11 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_attributes;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10008, &qword_2759C5F68);
  v13 = *(*(v12 - 8) + 56);
  v42 = v11;
  v13(v3 + v11, 1, 1, v12);
  v37 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_store;
  *(v3 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_store) = 0;
  v38 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_localStore;
  *(v3 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_localStore) = 0;
  v14 = v3 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_appendSettingsNavigationPath;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  v15 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_navigationMode;
  v16 = sub_2759B8798();
  v17 = *(*(v16 - 8) + 56);
  v39 = v15;
  v17(v3 + v15, 1, 1, v16);
  v18 = a1[3];
  v44 = a1;
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2758DC898(v19, v20, v21);
  v22 = v41;
  sub_2759BAC18();
  if (v22)
  {
    v23 = v42;

    sub_27586BF04(v3 + v23, &qword_280A10090, &qword_2759C6140);

    sub_27586BF04(v14, &qword_280A10028, &qword_2759CCFB0);
    sub_27586BF04(v3 + v39, &unk_280A11C60, &qword_2759C6060);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v32;
    v43 = 0;
    sub_2758DC8EC(&qword_280A100A8, &qword_280A10008, &qword_2759C5F68);
    sub_2759BAA68();
    v25 = v35;
    v26 = v42;
    swift_beginAccess();
    sub_2758CE724(v25, v3 + v26, &qword_280A10090, &qword_2759C6140);
    swift_endAccess();
    v43 = 1;
    sub_2758DC8EC(&qword_280A100B0, &qword_280A0FC68, &qword_2759C7830);
    v27 = v34;
    v28 = v36;
    sub_2759BAA78();
    (*(v33 + 8))(v10, v28);
    (*(v31 + 32))(v3 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_isLocal, v27, v24);
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  return v3;
}

uint64_t sub_2758DA144(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758DA210, 0, 0);
}

uint64_t sub_2758DA210()
{
  v23 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_280A23900);
    v9 = sub_2759B8988();
    v10 = sub_2759BA648();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2758937B8(0xD000000000000020, 0x80000002759E06C0, &v22);
      _os_log_impl(&dword_275819000, v9, v10, "%s missing account", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v13 = *(v0 + 8);

    __asm { BRAA            X2, X16 }
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account);
  *(v0 + 56) = v6;
  (*(v3 + 16))(v4, v1 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_isLocal, v5);
  v7 = v6;
  sub_2759B8AA8();
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  if (*(v0 + 112) == 1)
  {
    *(v0 + 64) = objc_opt_self();
    sub_2759BA4C8();
    v14 = v7;
    *(v0 + 72) = sub_2759BA4B8();
    v15 = sub_2759BA468();
    v17 = v16;
    v18 = sub_2758DA64C;
  }

  else
  {
    *(v0 + 88) = objc_opt_self();
    sub_2759BA4C8();
    v19 = v7;
    *(v0 + 96) = sub_2759BA4B8();
    v15 = sub_2759BA468();
    v17 = v20;
    v18 = sub_2758DA750;
  }

  return MEMORY[0x2822009F8](v18, v15, v17);
}

uint64_t sub_2758DA64C()
{
  v1 = v0[8];
  v2 = v0[7];

  v0[10] = [v1 specifierForAccount_];

  return MEMORY[0x2822009F8](sub_2758DA6DC, 0, 0);
}

uint64_t sub_2758DA6DC()
{
  v1 = v0[7];

  v2 = v0[10];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2758DA750()
{
  v1 = v0[11];
  v2 = v0[7];

  v0[13] = [v1 specifierForAccount_];

  return MEMORY[0x2822009F8](sub_2758DA7E0, 0, 0);
}

uint64_t sub_2758DA7E0()
{
  v1 = v0[7];

  v2 = v0[13];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2758DA854(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_2759B8768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = a1;
  sub_2759B8758();
  v14 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v1 + v14, &v27, &qword_280A10028, &qword_2759CCFB0);
  if (v28)
  {
    sub_275827D1C(&v27, v29);
    v15 = sub_2759BA518();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    sub_27586E058(v29, &v27);
    (*(v7 + 16))(v10, v12, v6);
    sub_2759BA4C8();
    v16 = sub_2759BA4B8();
    v17 = (*(v7 + 80) + 72) & ~*(v7 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_275827D1C(&v27, v18 + 32);
    (*(v7 + 32))(v18 + v17, v10, v6);
    sub_27587D460(0, 0, v5, &unk_2759C6078, v18);

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_27586BF04(&v27, &qword_280A10028, &qword_2759CCFB0);
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v20 = sub_2759B89A8();
    __swift_project_value_buffer(v20, qword_280A23900);
    v21 = sub_2759B8988();
    v22 = sub_2759BA648();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_2758937B8(0xD00000000000001DLL, 0x80000002759E0680, v29);
      _os_log_impl(&dword_275819000, v21, v22, "%s missing appendSettingsNavigationPath", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x277C85860](v24, -1, -1);
      MEMORY[0x277C85860](v23, -1, -1);
    }
  }

  return (*(v7 + 8))(v12, v6);
}

void sub_2758DAC20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A23900);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E06A0, &v29);
    _os_log_impl(&dword_275819000, v7, v8, "%s NavigationMode is not stateDriven, using legacy navigation", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  [a1 detailControllerClass];
  v11 = CreateDetailControllerInstanceWithClass();
  if (v11)
  {
    v12 = v11;
    if (*(v1 + 16))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        [v12 setSpecifier_];
        v15 = sub_2759BA518();
        (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
        sub_2759BA4C8();
        v16 = v14;
        v17 = v12;
        v18 = sub_2759BA4B8();
        v19 = swift_allocObject();
        v20 = MEMORY[0x277D85700];
        v19[2] = v18;
        v19[3] = v20;
        v19[4] = v16;
        v19[5] = v17;
        sub_27587D460(0, 0, v5, &unk_2759C6090, v19);

        return;
      }
    }

    v28 = sub_2759B8988();
    v21 = sub_2759BA648();
    if (os_log_type_enabled(v28, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E06A0, &v29);
      _os_log_impl(&dword_275819000, v28, v21, "%s missing navController", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x277C85860](v23, -1, -1);
      MEMORY[0x277C85860](v22, -1, -1);

LABEL_13:
      return;
    }
  }

  else
  {
    v28 = sub_2759B8988();
    v24 = sub_2759BA648();
    if (os_log_type_enabled(v28, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759E06A0, &v29);
      _os_log_impl(&dword_275819000, v28, v24, "%s missing detailController", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x277C85860](v26, -1, -1);
      MEMORY[0x277C85860](v25, -1, -1);
      goto LABEL_13;
    }
  }

  v27 = v28;
}

uint64_t sub_2758DB0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758DB13C, v7, v6);
}

uint64_t sub_2758DB13C()
{
  v1 = *(v0 + 16);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2759B8768();
  sub_2758DC850(&unk_280A10030, MEMORY[0x277D40250], MEMORY[0x277D40258]);
  sub_2759B87A8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2758DB20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758DB2A4, v7, v6);
}

uint64_t sub_2758DB2A4()
{
  v1 = v0[3];
  v2 = v0[2];

  [v2 pushViewController:v1 animated:1];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2758DB320()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_isLocal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_attributes, &qword_280A10090, &qword_2759C6140);

  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_appendSettingsNavigationPath, &qword_280A10028, &qword_2759CCFB0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_navigationMode, &unk_280A11C60, &qword_2759C6060);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PushBackupControllerAction(uint64_t a1)
{
  result = qword_280A0FFE8;
  if (!qword_280A0FFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758DB4A4(uint64_t a1)
{
  sub_2758DB5C0();
  if (v1 <= 0x3F)
  {
    sub_2758DB618(319);
    if (v2 <= 0x3F)
    {
      sub_2758DB67C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2758DB5C0()
{
  if (!qword_280A0FFF8)
  {
    v0 = sub_2759B8AB8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0FFF8);
    }
  }
}

void sub_2758DB618(uint64_t a1)
{
  if (!qword_280A10000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10008, &qword_2759C5F68);
    v1 = sub_2759BA7D8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A10000);
    }
  }
}

void sub_2758DB67C(uint64_t a1)
{
  if (!qword_280A10010)
  {
    sub_2759B8798();
    v1 = sub_2759BA7D8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A10010);
    }
  }
}

uint64_t sub_2758DB6D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585A7E4;

  return sub_2758DC018(a1);
}

id *sub_2758DB838@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2758D9C3C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_2758DB920(uint64_t a1)
{
  v2 = sub_2759B8AF8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v65 = &v47[-v8];
  MEMORY[0x28223BE20](v7);
  v51 = &v47[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10048, &unk_2759CCC00);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v62 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v61 = &v47[-v13];
  v55 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v63 = (v3 + 32);
  v64 = (v3 + 16);
  v59 = (v3 + 88);
  v58 = *MEMORY[0x277D232A0];
  v50 = *MEMORY[0x277D23248];
  v49 = *MEMORY[0x277D23288];
  v48 = *MEMORY[0x277D23258];
  v57 = (v3 + 8);
  v52 = v3;
  v53 = a1;
  v54 = (v3 + 96);

  v19 = 0;
  v66 = v6;
  v60 = v2;
  v56 = a1 + 64;
  while (v17)
  {
    v20 = v19;
LABEL_13:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = v23 | (v20 << 6);
    v25 = v52;
    v26 = (*(v53 + 48) + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    v29 = v51;
    (*(v52 + 16))(v51, *(v53 + 56) + *(v52 + 72) * v24, v2);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
    v31 = *(v30 + 48);
    v32 = v2;
    v33 = v62;
    *v62 = v28;
    *(v33 + 1) = v27;
    (*(v25 + 32))(&v33[v31], v29, v32);
    (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

    v6 = v66;
LABEL_14:
    v34 = v33;
    v35 = v61;
    sub_2758DC7D0(v34, v61);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {

      return;
    }

    v37 = &v35[*(v36 + 48)];
    v38 = v65;
    v2 = v60;
    (*v63)(v65, v37, v60);
    (*v64)(v6, v38, v2);
    v39 = (*v59)(v6, v2);
    if (v39 == v58)
    {
      (*v54)(v6, v2);

      v6 = v66;

      v14 = v56;
    }

    else
    {
      v14 = v56;
      if (v39 == v50)
      {
        (*v54)(v6, v2);
        v67 = *(*v66 + 16);
        sub_2759BAA98();
        v6 = v66;
      }

      else if (v39 == v49)
      {
        (*v54)(v6, v2);
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_2759BA568();
      }

      else
      {
        if (v39 != v48)
        {
          v46 = *v57;
          (*v57)(v6, v2);
          v46(v65, v2);

          continue;
        }

        (*v54)(v6, v2);
        v41 = *(*v66 + 16);
        v67 = 0;
        v68 = 0xE000000000000000;
        if (v41)
        {
          v42 = 1702195828;
        }

        else
        {
          v42 = 0x65736C6166;
        }

        if (v41)
        {
          v43 = 0xE400000000000000;
        }

        else
        {
          v43 = 0xE500000000000000;
        }

        MEMORY[0x277C840E0](v42, v43);
        v6 = v66;
      }
    }

    v44 = sub_2759BA258();

    v45 = sub_2759BA258();

    [v55 setObject:v45 forKeyedSubscript:v44];

    (*v57)(v65, v2);
  }

  if (v18 <= v19 + 1)
  {
    v21 = v19 + 1;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 - 1;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
      v33 = v62;
      (*(*(v40 - 8) + 56))(v62, 1, 1, v40);
      v17 = 0;
      v19 = v22;
      goto LABEL_14;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2758DC018(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C60, &qword_2759C6060);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758DC0C0, 0, 0);
}

uint64_t sub_2758DC0C0()
{
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  v0[9] = __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "PushBackupControllerAction", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2758DC214;
  v6 = v0[5];

  return sub_2758D92CC(v6);
}

uint64_t sub_2758DC214(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_2758DC314, 0, 0);
}

uint64_t sub_2758DC314(uint64_t a1)
{
  v17 = v1;
  v2 = v1[11];
  if (v2)
  {
    v3 = v1[8];
    v4 = v1[6];
    v5 = OBJC_IVAR____TtC14iCloudSettings26PushBackupControllerAction_navigationMode;
    swift_beginAccess();
    sub_27586FBC8(v4 + v5, v3, &unk_280A11C60, &qword_2759C6060);
    v6 = sub_2759B8798();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v3, 1, v6) != 1)
    {
      v8 = v1[7];
      sub_27586FBC8(v1[8], v8, &unk_280A11C60, &qword_2759C6060);
      if ((*(v7 + 88))(v8, v6) == *MEMORY[0x277D40278])
      {
        sub_2758DA854(v2);
LABEL_10:
        v13 = v1[8];

        sub_27586BF04(v13, &unk_280A11C60, &qword_2759C6060);
        goto LABEL_11;
      }

      (*(v7 + 8))(v1[7], v6);
    }

    sub_2758DAC20(v2);
    goto LABEL_10;
  }

  v9 = sub_2759B8988();
  v10 = sub_2759BA648();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2758937B8(0xD00000000000001FLL, 0x80000002759E0660, &v16);
    _os_log_impl(&dword_275819000, v9, v10, "%s failed to assemble specifier, bailing.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x277C85860](v12, -1, -1);
    MEMORY[0x277C85860](v11, -1, -1);
  }

LABEL_11:

  v14 = v1[1];

  return v14();
}

uint64_t sub_2758DC5A0(uint64_t a1)
{
  v4 = *(sub_2759B8768() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758DB0A4(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_2758DC694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758DB20C(a1, v4, v5, v7, v6);
}

unint64_t sub_2758DC754()
{
  result = qword_280A12850;
  if (!qword_280A12850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10040, &qword_2759C2630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12850);
  }

  return result;
}

uint64_t sub_2758DC7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10048, &unk_2759CCC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758DC850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2758DC898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A100A0;
  if (!qword_280A100A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A100A0);
  }

  return result;
}

uint64_t sub_2758DC8EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2758DC954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A100B8;
  if (!qword_280A100B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A100B8);
  }

  return result;
}

unint64_t sub_2758DC9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A100C0;
  if (!qword_280A100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A100C0);
  }

  return result;
}

unint64_t sub_2758DCA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A100C8;
  if (!qword_280A100C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A100C8);
  }

  return result;
}

id sub_2758DCA58()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_account) aa_altDSID];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() contextForAccountWithAltDSID_];
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A238A0);
    v5 = sub_2759B8988();
    v6 = sub_2759BA648();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2758937B8(0x65746E6F43706463, 0xEA00000000007478, &v10);
      _os_log_impl(&dword_275819000, v5, v6, "altDSID is not available, returning nil for %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x277C85860](v8, -1, -1);
      MEMORY[0x277C85860](v7, -1, -1);
    }

    return 0;
  }

  return v3;
}

uint64_t sub_2758DCBF0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_2758DCCBC(uint64_t a1)
{
  v2 = v1;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238A0);
  v5 = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_275819000, v5, v6, "Updating isADPEnabled state.", v7, 2u);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  if (((a1 == 1) ^ *(v2 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__isADPEnabled)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
    sub_2759B8628();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__isADPEnabled) = a1 == 1;
  }
}

uint64_t sub_2758DCEC8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  return *(v2 + *a2);
}

uint64_t sub_2758DCF68@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v2 = sub_2759B8358();
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x28223BE20](v2);
  v79 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2759B8368();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2759B8388();
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102C0, &qword_2759C63B8);
  MEMORY[0x28223BE20](v7 - 8);
  v82 = &v63 - v8;
  v72 = sub_2759B8508();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v74 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v73 = &v63 - v13;
  v14 = sub_2759B85C8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2759B8458();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2759BA248();
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v66 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v65 = sub_2759B8468();
  v86 = *(v65 - 8);
  v22 = MEMORY[0x28223BE20](v65);
  v67 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v84 = &v63 - v25;
  MEMORY[0x28223BE20](v24);
  v85 = &v63 - v26;
  swift_getKeyPath();
  v70 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel___observationRegistrar;
  v68 = v1;
  v87 = v1;
  v69 = sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  sub_2759BA238();
  v27 = type metadata accessor for iCloudHomeViewModel(0);
  *v18 = v27;
  v28 = *MEMORY[0x277CC9120];
  v29 = *(v16 + 104);
  v29(v18, v28, v15);
  sub_2759B85B8();
  sub_2759B8478();
  v30 = v65;
  sub_2759BA238();
  *v18 = v27;
  v29(v18, v28, v15);
  v31 = v71;
  sub_2759B85B8();
  v32 = v84;
  v33 = v72;
  sub_2759B8478();
  v34 = *(v86 + 16);
  v35 = v67;
  v34(v67, v85, v30);
  v87 = sub_2759BA2E8();
  v88 = v36;

  MEMORY[0x277C840E0](32, 0xE100000000000000);

  MEMORY[0x277C840E0](91, 0xE100000000000000);

  v38 = v87;
  v37 = v88;
  v39 = v30;
  v34(v35, v32, v30);
  v40 = sub_2759BA2E8();
  v42 = v41;
  v87 = v38;
  v88 = v37;

  MEMORY[0x277C840E0](v40, v42);

  v44 = v87;
  v43 = v88;
  v89 = 10333;
  v90 = 0xE200000000000000;
  swift_getKeyPath();
  v87 = v68;
  v45 = v68;
  sub_2759B8638();

  v46 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  swift_beginAccess();
  v47 = v45 + v46;
  v48 = v73;
  sub_27586FBC8(v47, v73, &unk_280A0EB10, &qword_2759C0740);
  v49 = v31;
  if ((*(v31 + 48))(v48, 1, v33))
  {
    sub_27586BF04(v48, &unk_280A0EB10, &qword_2759C0740);
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  else
  {
    v52 = *(v31 + 16);
    v53 = v64;
    v52(v64, v48, v33);
    sub_27586BF04(v48, &unk_280A0EB10, &qword_2759C0740);
    v54 = sub_2759B8488();
    v51 = v55;
    (*(v49 + 8))(v53, v33);
    v50 = v54;
  }

  MEMORY[0x277C840E0](v50, v51);

  MEMORY[0x277C840E0](41, 0xE100000000000000);
  v56 = v89;
  v57 = v90;
  v89 = v44;
  v90 = v43;

  MEMORY[0x277C840E0](v56, v57);

  (*(v49 + 56))(v74, 1, 1, v33);
  (*(v76 + 104))(v77, *MEMORY[0x277CC8BB0], v78);
  (*(v80 + 104))(v79, *MEMORY[0x277CC8B98], v81);
  sub_2759B8378();
  v58 = v82;
  sub_2759B8398();
  v59 = *(v86 + 8);
  v59(v84, v39);
  v59(v85, v39);
  v60 = sub_2759B83B8();
  v61 = *(v60 - 8);
  (*(v61 + 56))(v58, 0, 1, v60);
  return (*(v61 + 32))(v83, v58, v60);
}

uint64_t sub_2758DDADC()
{
  v1 = sub_2759B85C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2759B8458();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2759BA248();
  MEMORY[0x28223BE20](v6 - 8);
  swift_getKeyPath();
  v9 = v0;
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  sub_2759BA238();
  *v5 = type metadata accessor for iCloudHomeViewModel(0);
  (*(v3 + 104))(v5, *MEMORY[0x277CC9120], v2);
  sub_2759B85B8();
  return sub_2759B8478();
}

uint64_t sub_2758DDD4C()
{
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2758DDDF8@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_2758DDEF0()
{
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  return swift_unknownObjectRetain();
}

uint64_t sub_2758DDF9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager);
  return swift_unknownObjectRetain();
}

uint64_t sub_2758DE050(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8628();
}

void *sub_2758DE10C()
{
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter);
  v2 = v1;
  return v1;
}

id sub_2758DE1BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter);
  *a2 = v4;

  return v4;
}

void sub_2758DE27C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A10308, 0x277CECA58);
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_2758DE428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__isADPEnabled);
  return result;
}

uint64_t sub_2758DE528(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
    sub_2759B8628();
  }

  return result;
}

void sub_2758DE654(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager] = 0;
  *&v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter] = 0;
  v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__isADPEnabled] = 0;
  v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading] = 0;
  v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess] = 0;
  v8 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  v9 = sub_2759B8508();
  v10 = *(*(v9 - 8) + 56);
  v10(&v2[v8], 1, 1, v9);
  v10(&v2[v8], 1, 1, v9);
  sub_2759B8668();
  *&v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_accountManager] = a1;
  v11 = a1;
  v12 = [v11 accounts];
  if (!v12)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  type metadata accessor for AIDAServiceType(0);
  sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
  sub_2758E6A0C(&qword_280A0E500, type metadata accessor for AIDAServiceType, &unk_2759C06F0);
  v14 = sub_2759BA1D8();

  if (*(v14 + 16))
  {
    v15 = sub_2758A342C();
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);
LABEL_7:

      *&v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_account] = v17;
      v26.receiver = v2;
      v26.super_class = ObjectType;
      v20 = objc_msgSendSuper2(&v26, sel_init);
      v21 = sub_2759BA518();
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
      sub_2759BA4C8();
      v22 = v20;
      v23 = sub_2759BA4B8();
      v24 = swift_allocObject();
      v25 = MEMORY[0x277D85700];
      v24[2] = v23;
      v24[3] = v25;
      v24[4] = v22;
      sub_27587D460(0, 0, v7, &unk_2759C6558, v24);

      sub_2758DEDE8();
      sub_2758DF4E0();

      return;
    }
  }

  v18 = [objc_opt_self() defaultStore];
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = v18;
  v17 = [v18 aa_primaryAppleAccount];

  if (v17)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_2758DE9DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  swift_beginAccess();
  sub_27586FBC8(v1 + v6, v5, &unk_280A0EB10, &qword_2759C0740);
  v7 = sub_2758E5E0C(v5, a1);
  sub_27586BF04(v5, &unk_280A0EB10, &qword_2759C0740);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
    sub_2759B8628();
  }

  else
  {
    swift_beginAccess();
    sub_2758E6474(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_27586BF04(a1, &unk_280A0EB10, &qword_2759C0740);
}

uint64_t sub_2758DEBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4[3] = swift_task_alloc();
  v4[4] = sub_2759BA4C8();
  v4[5] = sub_2759BA4B8();
  v4[6] = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758DECA8, v6, v5);
}

uint64_t sub_2758DECA8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  v3 = sub_2759BA518();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = v2;
  sub_275931FC0(0, 0, v1, &unk_2759C6578, v4);

  sub_27586BF04(v1, &unk_280A0E510, &qword_2759C33C0);
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27588E9C8, v7, v6);
}

void sub_2758DEDE8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_account];
  v3 = [v2 aa_altDSID];
  if (v3 && (v4 = v3, v5 = [objc_opt_self() sharedInstance], v6 = objc_msgSend(v5, sel_authKitAccountWithAltDSID_, v4), v5, v4, v6))
  {
    v7 = sub_2759BA258();
    v8 = [v6 accountPropertyForKey_];

    if (v8)
    {
      sub_2759BA818();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v35[0] = v33;
    v35[1] = v34;
    if (*(&v34 + 1))
    {
      sub_275861AF8(0, &qword_280A0ED90, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        if (qword_280A0E338 != -1)
        {
          swift_once();
        }

        v17 = sub_2759B89A8();
        __swift_project_value_buffer(v17, qword_280A238A0);
        v18 = v32;
        v19 = sub_2759B8988();
        v20 = sub_2759BA668();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 67109120;
          *(v21 + 4) = [v18 BOOLValue];

          _os_log_impl(&dword_275819000, v19, v20, "Updating web access state to: %{BOOL}d", v21, 8u);
          MEMORY[0x277C85860](v21, -1, -1);
        }

        else
        {

          v19 = v18;
        }

        v28 = [v18 BOOLValue];
        v29 = v28;
        v30 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess;
        if (v28 == v1[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess])
        {

          v1[v30] = v29;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *&v35[0] = v1;
          sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
          sub_2759B8628();
        }

        return;
      }
    }

    else
    {
      sub_27586BF04(v35, &qword_280A0ED70, &qword_2759C6C60);
    }

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v22 = sub_2759B89A8();
    __swift_project_value_buffer(v22, qword_280A238A0);
    v23 = sub_2759B8988();
    v24 = sub_2759BA668();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_275819000, v23, v24, "Web access state not found setting to false", v25, 2u);
      MEMORY[0x277C85860](v25, -1, -1);
    }

    v26 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess;
    if (v1[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess])
    {
      v27 = swift_getKeyPath();
      MEMORY[0x28223BE20](v27);
      *&v35[0] = v1;
      sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
      sub_2759B8628();
    }

    else
    {

      v1[v26] = 0;
    }
  }

  else
  {
    if (v1[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess])
    {
      v9 = swift_getKeyPath();
      MEMORY[0x28223BE20](v9);
      *&v35[0] = v1;
      sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
      sub_2759B8628();
    }

    else
    {
      v1[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccess] = 0;
    }

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_280A238A0);
    v11 = v1;
    v12 = sub_2759B8988();
    v13 = sub_2759BA648();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v2;
      *v15 = v2;
      v16 = v2;
      _os_log_impl(&dword_275819000, v12, v13, "Unable to get AuthKit account for account: %@", v14, 0xCu);
      sub_27586BF04(v15, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v15, -1, -1);
      MEMORY[0x277C85860](v14, -1, -1);
    }
  }
}

void sub_2758DF4E0()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_280A0E390 != -1)
  {
    swift_once();
  }

  v2 = qword_280A239A0;
  v3 = [objc_opt_self() mainQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v8[4] = sub_2758E6B08;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2759B4A74;
  v8[3] = &block_descriptor_110;
  v5 = _Block_copy(v8);
  v6 = v0;

  v7 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();
}

uint64_t sub_2758DF664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v5[2] = sub_2759BA4C8();
  v5[3] = sub_2759BA4B8();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_27588B550;

  return sub_2758DF720(v6);
}

uint64_t sub_2758DF720(char a1)
{
  *(v2 + 328) = v1;
  *(v2 + 562) = a1;
  v3 = sub_2759B8248();
  *(v2 + 336) = v3;
  *(v2 + 344) = *(v3 - 8);
  *(v2 + 352) = swift_task_alloc();
  v4 = sub_2759B8508();
  *(v2 + 360) = v4;
  *(v2 + 368) = *(v4 - 8);
  *(v2 + 376) = swift_task_alloc();
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();
  *(v2 + 424) = swift_task_alloc();
  sub_2759BA4C8();
  *(v2 + 432) = sub_2759BA4B8();
  v6 = sub_2759BA468();
  *(v2 + 440) = v6;
  *(v2 + 448) = v5;

  return MEMORY[0x2822009F8](sub_2758DF8E8, v6, v5);
}

uint64_t sub_2758DF8E8()
{
  v1 = *(v0 + 328);
  v2 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading;
  *(v0 + 456) = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    *(v0 + 304) = v1;
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
    sub_2759B8628();
  }

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  *(v0 + 464) = __swift_project_value_buffer(v4, qword_280A238A0);
  v5 = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 562);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_275819000, v5, v6, "ADP loadRemoteUIForEnablingWebAccessState: %{BOOL}d", v8, 8u);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v9 = *(v0 + 562);

  v10 = [objc_opt_self() bagForAltDSID_];
  v11 = v10;
  *(v0 + 472) = v10;
  if (v9 != 1)
  {
    if (v10)
    {
      v15 = [v10 webAccessDisableURL];
      if (v15)
      {
        v16 = v15;
        sub_2759B84C8();

        v14 = 0;
      }

      else
      {
        v14 = 1;
      }

      v17 = *(v0 + 424);
      v18 = *(v0 + 408);
      goto LABEL_20;
    }

LABEL_15:
    (*(*(v0 + 368) + 56))(*(v0 + 424), 1, 1, *(v0 + 360));
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v12 = [v10 webAccessEnableURL];
  if (v12)
  {
    v13 = v12;
    sub_2759B84C8();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v18 = *(v0 + 416);
  v17 = *(v0 + 424);
LABEL_20:
  (*(*(v0 + 368) + 56))(v18, v14, 1, *(v0 + 360));
  sub_2758B4BD0(v18, v17);
LABEL_21:
  v19 = *(v0 + 400);
  v20 = *(v0 + 360);
  v21 = *(v0 + 368);
  sub_27586FBC8(*(v0 + 424), v19, &unk_280A0EB10, &qword_2759C0740);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v22 = *(v0 + 400);

    sub_27586BF04(v22, &unk_280A0EB10, &qword_2759C0740);
LABEL_28:
    v29 = sub_2759B8988();
    v30 = sub_2759BA648();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_275819000, v29, v30, "ADP loadRemoteUIForEnablingWebAccessState: no url or navigationController", v31, 2u);
      MEMORY[0x277C85860](v31, -1, -1);
      v32 = v29;
    }

    else
    {
      v32 = v11;
      v11 = v29;
    }

    sub_27586BF04(*(v0 + 424), &unk_280A0EB10, &qword_2759C0740);

    v33 = *(v0 + 8);

    return v33();
  }

  v23 = *(v0 + 328);
  (*(*(v0 + 368) + 32))(*(v0 + 392), *(v0 + 400), *(v0 + 360));
  swift_getKeyPath();
  *(v0 + 480) = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel___observationRegistrar;
  *(v0 + 312) = v23;
  *(v0 + 488) = sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 496) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 392), *(v0 + 360));

    goto LABEL_28;
  }

  v25 = Strong;
  v26 = objc_opt_self();
  *(v0 + 504) = v26;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 560;
  *(v0 + 24) = sub_2758DFF50;
  v27 = swift_continuation_init();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102E0, &qword_2759C2E10);
  *(v0 + 512) = v28;
  *(v0 + 200) = v28;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_2758DCBF0;
  *(v0 + 168) = &block_descriptor_5;
  *(v0 + 176) = v27;
  [v26 repairPrimaryAppleAccountInViewController:v25 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2758DFF50()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 520) = v2;
  v3 = *(v1 + 448);
  v4 = *(v1 + 440);
  if (v2)
  {
    v5 = sub_2758E0A60;
  }

  else
  {
    v5 = sub_2758E0080;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2758E0080()
{
  v54 = v0;
  v1 = *(v0 + 560);

  if (v1 == 1)
  {
    v51 = *(*(v0 + 368) + 16);
    v51(*(v0 + 384), *(v0 + 392), *(v0 + 360));
    v2 = sub_2759B8988();
    v3 = sub_2759BA668();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 384);
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v53 = v50;
      *v8 = 136315138;
      sub_2758E6A0C(&qword_280A10300, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v9 = sub_2759BAA98();
      v11 = v10;
      v12 = *(v6 + 8);
      v12(v5, v7);
      v13 = sub_2758937B8(v9, v11, &v53);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_275819000, v2, v3, "ADP loadRemoteUIForEnablingWebAccessState with url: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x277C85860](v50, -1, -1);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    else
    {

      v12 = *(v6 + 8);
      v12(v5, v7);
    }

    *(v0 + 528) = v12;
    v18 = *(v0 + 504);
    v49 = *(v0 + 512);
    v19 = *(v0 + 496);
    v20 = *(v0 + 376);
    v47 = *(v0 + 360);
    v48 = *(v0 + 392);
    v21 = *(v0 + 328);
    v22 = *(v21 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_accountManager);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F0, &qword_2759C4560);
    *(swift_allocObject() + 16) = xmmword_2759C2410;
    v23 = v19;
    v24 = [v18 getWebAccessStatusUpdateHook];
    sub_2759BA818();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102F8, &qword_2759C6488);
    swift_dynamicCast();
    v25 = objc_allocWithZone(MEMORY[0x277CECA58]);
    v26 = sub_2759BA3D8();

    v27 = [v25 initWithAccountManager:v22 presenter:v23 hooks:v26];
    *(v0 + 536) = v27;

    [v27 setDelegate_];
    v28 = v27;
    sub_2758DE27C(v27);
    v51(v20, v48, v47);
    sub_2759B8208();
    sub_2759B81D8();
    v29 = sub_2759B81E8();
    *(v0 + 544) = v29;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 561;
    *(v0 + 88) = sub_2758E0758;
    v30 = swift_continuation_init();
    *(v0 + 264) = v49;
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2758DCBF0;
    *(v0 + 232) = &block_descriptor_40;
    *(v0 + 240) = v30;
    [v28 loadRequest:v29 completion:?];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CFD418] code:0 userInfo:0];
    swift_willThrow();
    v15 = *(v0 + 456);
    v16 = *(v0 + 328);
    if (*(v16 + v15))
    {
      swift_getKeyPath();
      v17 = swift_task_alloc();
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v0 + 320) = v16;
      sub_2759B8628();
    }

    else
    {

      *(v16 + v15) = 0;
    }

    v31 = v14;
    v32 = sub_2759B8988();
    v33 = sub_2759BA648();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 496);
    v36 = *(v0 + 472);
    v37 = *(v0 + 392);
    v38 = *(v0 + 360);
    v39 = *(v0 + 368);
    if (v34)
    {
      v52 = *(v0 + 392);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v14;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_275819000, v32, v33, "ADP loadRemoteUIForEnablingWebAccessState: error: %@", v40, 0xCu);
      sub_27586BF04(v41, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v41, -1, -1);
      v44 = v40;
      v37 = v52;
      MEMORY[0x277C85860](v44, -1, -1);
    }

    (*(v39 + 8))(v37, v38);
    sub_27586BF04(*(v0 + 424), &unk_280A0EB10, &qword_2759C0740);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_2758E0758()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 552) = v2;
  v3 = *(v1 + 448);
  v4 = *(v1 + 440);
  if (v2)
  {
    v5 = sub_2758E0D14;
  }

  else
  {
    v5 = sub_2758E0888;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2758E0888()
{
  v1 = *(v0 + 544);

  v2 = *(v0 + 561);

  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_275819000, v3, v4, "ADP loadRemoteUIForEnablingWebAccessState: success: %{BOOL}d", v5, 8u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = *(v0 + 536);
  v15 = *(v0 + 528);
  v7 = *(v0 + 472);
  v8 = *(v0 + 392);
  v9 = *(v0 + 360);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  v12 = *(v0 + 336);

  (*(v11 + 8))(v10, v12);
  v15(v8, v9);
  sub_27586BF04(*(v0 + 424), &unk_280A0EB10, &qword_2759C0740);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2758E0A60(uint64_t a1)
{
  v2 = v1[62];
  swift_willThrow();

  v3 = v1[65];
  v4 = v1[57];
  v5 = v1[41];
  if (*(v5 + v4))
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v1[40] = v5;
    sub_2759B8628();
  }

  else
  {

    *(v5 + v4) = 0;
  }

  v7 = v3;
  v8 = sub_2759B8988();
  v9 = sub_2759BA648();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[62];
  v12 = v1[59];
  v13 = v1[49];
  v14 = v1[45];
  v15 = v1[46];
  if (v10)
  {
    v23 = v1[49];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_275819000, v8, v9, "ADP loadRemoteUIForEnablingWebAccessState: error: %@", v16, 0xCu);
    sub_27586BF04(v17, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v17, -1, -1);
    v20 = v16;
    v13 = v23;
    MEMORY[0x277C85860](v20, -1, -1);
  }

  (*(v15 + 8))(v13, v14);
  sub_27586BF04(v1[53], &unk_280A0EB10, &qword_2759C0740);

  v21 = v1[1];

  return v21();
}

uint64_t sub_2758E0D14(uint64_t a1)
{
  v2 = v1[68];
  v3 = v1[67];
  v5 = v1[43];
  v4 = v1[44];
  v6 = v1[42];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  v7 = v1[69];
  v8 = v1[57];
  v9 = v1[41];
  if (*(v9 + v8))
  {
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    v1[40] = v9;
    sub_2759B8628();
  }

  else
  {

    *(v9 + v8) = 0;
  }

  v11 = v7;
  v12 = sub_2759B8988();
  v13 = sub_2759BA648();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v1[62];
  v16 = v1[59];
  v17 = v1[49];
  v18 = v1[45];
  v19 = v1[46];
  if (v14)
  {
    v27 = v1[49];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v7;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_275819000, v12, v13, "ADP loadRemoteUIForEnablingWebAccessState: error: %@", v20, 0xCu);
    sub_27586BF04(v21, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v21, -1, -1);
    v24 = v20;
    v17 = v27;
    MEMORY[0x277C85860](v24, -1, -1);
  }

  (*(v19 + 8))(v17, v18);
  sub_27586BF04(v1[53], &unk_280A0EB10, &qword_2759C0740);

  v25 = v1[1];

  return v25();
}

uint64_t sub_2758E0FF0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  v3 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  swift_beginAccess();
  return sub_27586FBC8(v5 + v3, a1, &unk_280A0EB10, &qword_2759C0740);
}

uint64_t sub_2758E10C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  v4 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  swift_beginAccess();
  return sub_27586FBC8(v3 + v4, a2, &unk_280A0EB10, &qword_2759C0740);
}

uint64_t sub_2758E11A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_27586FBC8(a1, &v6 - v3, &unk_280A0EB10, &qword_2759C0740);
  return sub_2758DE9DC(v4);
}

uint64_t sub_2758E124C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpLearnMoreURL;
  swift_beginAccess();
  sub_2758E6474(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2758E12B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v4[4] = swift_task_alloc();
  v5 = sub_2759B8508();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758E13D0, 0, 0);
}

id sub_2758E13D0()
{
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v2 = result;
    v3 = [result webAccessKBURL];

    if (v3)
    {
      v5 = *(v0 + 72);
      v4 = *(v0 + 80);
      v6 = *(v0 + 64);
      v7 = *(v0 + 40);
      v8 = *(v0 + 48);
      v9 = *(v0 + 32);
      v30 = v9;
      v28 = *(v0 + 24);
      sub_2759B84C8();

      v10 = *(v8 + 32);
      v11 = v4;
      v29 = v4;
      v10(v4, v5, v7);
      v12 = sub_2759BA518();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      v13 = v6;
      (*(v8 + 16))(v6, v11, v7);
      sub_2759BA4C8();
      v14 = v28;
      v15 = sub_2759BA4B8();
      v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      *(v17 + 2) = v15;
      *(v17 + 3) = v18;
      *(v17 + 4) = v14;
      v10(&v17[v16], v13, v7);
      v19 = sub_27587D460(0, 0, v30, &unk_2759C6598, v17);
      (*(v8 + 8))(v29, v7);
    }

    else
    {
      v21 = *(v0 + 24);
      v20 = *(v0 + 32);
      v22 = sub_2759BA518();
      (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
      sub_2759BA4C8();
      v23 = v21;
      v24 = sub_2759BA4B8();
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      v25[2] = v24;
      v25[3] = v26;
      v25[4] = v23;
      v19 = sub_27587D460(0, 0, v20, &unk_2759C6588, v25);
    }

    **(v0 + 16) = v19;

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2758E16E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v5[4] = swift_task_alloc();
  sub_2759BA4C8();
  v5[5] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E17B4, v7, v6);
}

uint64_t sub_2758E17B4()
{
  v1 = v0[4];
  v2 = v0[3];

  v3 = sub_2759B8508();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_2758DE9DC(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2758E18AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v4[3] = swift_task_alloc();
  sub_2759BA4C8();
  v4[4] = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E197C, v6, v5);
}

uint64_t sub_2758E197C()
{
  v1 = *(v0 + 24);

  v2 = sub_2759B8508();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_2758DE9DC(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2758E1A30(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238A0);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275819000, v7, v8, "Web access status change notification received. Re-fetching status.", v9, 2u);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v12 = a2;
  sub_27587D460(0, 0, v5, &unk_2759C6568, v11);
}

uint64_t sub_2758E1C14()
{
  sub_2759BA4C8();
  *(v0 + 24) = sub_2759BA4B8();
  v2 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E6E58, v2, v1);
}

id ADPSectionViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ADPSectionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ADPSectionViewModel.beginEnablementFlow(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_27586FBC8(a1, v6, &unk_280A0EB10, &qword_2759C0740);
  sub_2759BA4C8();
  v11 = v1;
  v12 = sub_2759BA4B8();
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v12;
  v14[3] = v15;
  v14[4] = v11;
  sub_2758B4BD0(v6, v14 + v13);
  sub_27587D460(0, 0, v9, &unk_2759C62A8, v14);
}

uint64_t sub_2758E203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v6 = sub_2759B8508();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v7 = sub_2759B8248();
  v5[34] = v7;
  v5[35] = *(v7 - 8);
  v5[36] = swift_task_alloc();
  sub_2759BA4C8();
  v5[37] = sub_2759BA4B8();
  v9 = sub_2759BA468();
  v5[38] = v9;
  v5[39] = v8;

  return MEMORY[0x2822009F8](sub_2758E21D0, v9, v8);
}

uint64_t sub_2758E21D0()
{
  v45 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  v0[40] = __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "beginning ADP enablement flow", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[27];

  swift_getKeyPath();
  v0[41] = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel___observationRegistrar;
  v0[24] = v5;
  v0[42] = sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[43] = Strong;
  if (Strong)
  {
    v7 = Strong;
    v8 = v0[27];
    swift_getKeyPath();
    v0[25] = v8;
    sub_2759B8638();

    v9 = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager;
    v0[44] = OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager;
    v10 = *(v8 + v9);
    if (v10)
    {
      [v10 startSpinner];
    }

    v11 = v0[33];
    v12 = v0[29];
    v13 = v0[30];
    v14 = v0[27];
    v15 = v0[28];
    v16 = [objc_allocWithZone(MEMORY[0x277CECA58]) initWithAccountManager:*(v14 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_accountManager) hookType:2 presenter:v7];
    v0[45] = v16;
    [v16 setDelegate_];
    v17 = v16;
    sub_2758DE27C(v16);
    sub_27586FBC8(v15, v11, &unk_280A0EB10, &qword_2759C0740);
    v18 = *(v13 + 48);
    v19 = v18(v11, 1, v12);
    if (v19 == 1)
    {
      __break(1u);
    }

    else
    {
      sub_2759B8208();
      sub_2759B81D8();
      v20 = sub_2759B8988();
      v21 = sub_2759BA668();
      if (os_log_type_enabled(v20, v21))
      {
        v43 = v17;
        v22 = v0[32];
        v23 = v0[29];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v44 = v25;
        *v24 = 136315138;
        swift_beginAccess();
        sub_2759B8218();
        v26 = v18(v22, 1, v23);
        v27 = v0[32];
        if (v26)
        {
          sub_27586BF04(v0[32], &unk_280A0EB10, &qword_2759C0740);
          swift_endAccess();
          v28 = 0;
          v29 = 0xE000000000000000;
        }

        else
        {
          v35 = v0[30];
          v36 = v0[31];
          v37 = v0[29];
          (*(v35 + 16))(v36, v0[32], v37);
          sub_27586BF04(v27, &unk_280A0EB10, &qword_2759C0740);
          swift_endAccess();
          v38 = sub_2759B8488();
          v29 = v39;
          (*(v35 + 8))(v36, v37);
          v28 = v38;
        }

        v17 = v43;
        v40 = sub_2758937B8(v28, v29, &v44);

        *(v24 + 4) = v40;
        _os_log_impl(&dword_275819000, v20, v21, "ADP enablement launching RUI url: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x277C85860](v25, -1, -1);
        MEMORY[0x277C85860](v24, -1, -1);
      }

      swift_beginAccess();
      v41 = sub_2759B81E8();
      v0[46] = v41;
      v0[2] = v0;
      v0[7] = v0 + 48;
      v0[3] = sub_2758E2830;
      v42 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102E0, &qword_2759C2E10);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2758DCBF0;
      v0[13] = &block_descriptor_100;
      v0[14] = v42;
      [v17 loadRequest:v41 completion:v0 + 10];
      v19 = (v0 + 2);
    }

    return MEMORY[0x282200938](v19);
  }

  else
  {

    v30 = sub_2759B8988();
    v31 = sub_2759BA648();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_275819000, v30, v31, "ADP enablement flow cancelled due to missing navigationController", v32, 2u);
      MEMORY[0x277C85860](v32, -1, -1);
    }

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_2758E2830()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  v3 = *(v1 + 312);
  v4 = *(v1 + 304);
  if (v2)
  {
    v5 = sub_2758E2B1C;
  }

  else
  {
    v5 = sub_2758E2960;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2758E2960()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 384);

  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_275819000, v3, v4, "ADP enablement RUI presented success: %{BOOL}d", v5, 8u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  v6 = *(v0 + 352);
  v7 = *(v0 + 216);
  swift_getKeyPath();
  *(v0 + 208) = v7;
  sub_2759B8638();

  v8 = *(v7 + v6);
  v9 = *(v0 + 360);
  v10 = *(v0 + 344);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v13 = *(v0 + 272);
  if (v8)
  {
    [swift_unknownObjectRetain() stopSpinner];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v12 + 8))(v11, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2758E2B1C()
{
  v2 = v0[46];
  v1 = v0[47];

  swift_willThrow();

  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[47];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_275819000, v4, v5, "ADP enablement RUI failed with error: %@", v8, 0xCu);
    sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[44];
  v13 = v0[27];
  swift_getKeyPath();
  v0[26] = v13;
  sub_2759B8638();

  v14 = *(v13 + v12);
  v15 = v0[45];
  v16 = v0[43];
  v18 = v0[35];
  v17 = v0[36];
  v19 = v0[34];
  if (v14)
  {
    [swift_unknownObjectRetain() stopSpinner];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_2758E2D5C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2758E203C(a1, v6, v7, v8, v1 + v5);
}

uint64_t ADPSectionViewModel.setDelegate(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2759BA4C8();
  swift_unknownObjectRetain();
  v7 = v1;
  v8 = sub_2759BA4B8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = a1;
  sub_27587D460(0, 0, v5, &unk_2759C62C0, v9);
}

uint64_t sub_2758E325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2759BA4C8();
  v5[5] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E32F4, v7, v6);
}

uint64_t sub_2758E32F4()
{

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA638();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Setting ADP state manager", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v0[2] = v6;
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8628();

  v8 = v0[1];

  return v8();
}

uint64_t sub_2758E34CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758E325C(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall ADPSectionViewModel.presentAccountRecoveryFlow()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_2759BA518();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_2759BA4C8();
  v5 = v0;
  v6 = sub_2759BA4B8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_27587D460(0, 0, v3, &unk_2759C62D0, v7);
}

uint64_t sub_2758E3800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_2759BA4C8();
  *(v4 + 32) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E3898, v6, v5);
}

uint64_t sub_2758E3898()
{

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A238A0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA638();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Presenting account recovery flow", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[3];

  swift_getKeyPath();
  v0[2] = v5;
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [objc_opt_self() showAccountRecoveryFromViewController:Strong accountManager:*(v0[3] + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_accountManager)];
  }

  else
  {
    v7 = sub_2759B8988();
    v8 = sub_2759BA648();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_275819000, v7, v8, "Account recovery navigation controller is nil", v9, 2u);
      MEMORY[0x277C85860](v9, -1, -1);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_2758E3AE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E3800(a1, v4, v5, v6);
}

uint64_t ADPSectionViewModel.remoteUIRequestComplete(_:error:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_2759BA518();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2759BA4C8();
  v8 = a2;
  v9 = v2;
  v10 = sub_2759BA4B8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = v9;
  sub_27587D460(0, 0, v6, &unk_2759C62E0, v11);
}

uint64_t sub_2758E3DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_2759BA4C8();
  v5[5] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E3E94, v7, v6);
}

uint64_t sub_2758E3E94()
{

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    if (v6)
    {
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 4) = v10;
    *v8 = v11;
    _os_log_impl(&dword_275819000, v4, v5, "ADP enablement RUI completed with error: %@", v7, 0xCu);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v12 = v0[3];

  if (v12)
  {
    v13 = v0[4];
    swift_getKeyPath();
    v0[2] = v13;
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
    sub_2759B8638();

    v14 = *(v13 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager);
    if (v14)
    {
      [v14 setNetworkError];
    }
  }

  sub_2758DEDE8();
  v15 = v0[1];

  return v15();
}

uint64_t sub_2758E40D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758E3DFC(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall ADPSectionViewModel.remoteUIDidReceiveHTTPResponse(_:)(NSHTTPURLResponse a1)
{
  v2 = v1;
  isa = a1.super.super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_280A238A0);
  v8 = isa;
  v9 = sub_2759B8988();
  v10 = sub_2759BA668();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = [(objc_class *)v8 statusCode];

    _os_log_impl(&dword_275819000, v9, v10, "ADP enablement RUI received response with status code: %ld", v11, 0xCu);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  if ([(objc_class *)v8 statusCode]!= 401 && [(objc_class *)v8 statusCode]!= 302)
  {
    v12 = sub_2759BA518();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_2759BA4C8();
    v13 = v8;
    v14 = v2;
    v15 = sub_2759BA4B8();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    v16[5] = v13;
    sub_27587D460(0, 0, v6, &unk_2759C62F0, v16);
  }
}

uint64_t sub_2758E45F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E468C, v7, v6);
}

uint64_t sub_2758E468C()
{
  v1 = *(v0 + 24);

  v5.super.super.isa = v1;
  ADPSectionViewModel.harvestWebAccessData(from:)(v5);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2758E46F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_2758E45F4(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall ADPSectionViewModel.harvestWebAccessData(from:)(NSHTTPURLResponse from)
{
  v2 = v1;
  isa = from.super.super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27[-v5 - 8];
  v7 = [(objc_class *)isa allHeaderFields];
  v8 = sub_2759BA1D8();

  *&v29[0] = 0xD000000000000014;
  *(&v29[0] + 1) = 0x80000002759E0720;
  sub_2759BA878();
  if (*(v8 + 16) && (v9 = sub_2758A24F8(v27), (v10 & 1) != 0))
  {
    sub_275864C94(*(v8 + 56) + 32 * v9, v29);
    sub_275864C40(v27);
  }

  else
  {

    sub_275864C40(v27);
    memset(v29, 0, sizeof(v29));
  }

  sub_27586FBC8(v29, v27, &qword_280A0ED70, &qword_2759C6C60);
  if (!v28)
  {
    sub_27586BF04(v29, &qword_280A0ED70, &qword_2759C6C60);
    v25 = v27;
    goto LABEL_12;
  }

  sub_275861AF8(0, &qword_280A0ED90, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v25 = v29;
LABEL_12:
    sub_27586BF04(v25, &qword_280A0ED70, &qword_2759C6C60);
    return;
  }

  v11 = v26;
  v12 = sub_2759BA778();
  v13 = sub_2759BA788();

  if ((v13 & 1) == 0)
  {
    v14 = [*&v2[OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel_account] aa_altDSID];
    if (v14)
    {
      v15 = v14;
      v16 = sub_2759BA298();
      v18 = v17;

      v19 = sub_2759BA518();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      sub_2759BA4C8();
      v20 = v11;
      v21 = v2;
      v22 = sub_2759BA4B8();
      v23 = swift_allocObject();
      v24 = MEMORY[0x277D85700];
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v20;
      v23[5] = v16;
      v23[6] = v18;
      v23[7] = v21;
      sub_27587D460(0, 0, v6, &unk_2759C6308, v23);

      goto LABEL_10;
    }
  }

  sub_27586BF04(v29, &qword_280A0ED70, &qword_2759C6C60);
}

uint64_t sub_2758E4B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v7[22] = swift_task_alloc();
  v7[23] = sub_2759BA4C8();
  v7[24] = sub_2759BA4B8();
  v9 = sub_2759BA468();
  v7[25] = v9;
  v7[26] = v8;

  return MEMORY[0x2822009F8](sub_2758E4C34, v9, v8);
}

uint64_t sub_2758E4C34()
{
  v35 = v0;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_2759B89A8();
  v0[27] = __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;

  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = v8;
    *(v9 + 14) = sub_2758937B8(v7, v6, &v34);
    _os_log_impl(&dword_275819000, v4, v5, "Saving new web access: %@ to account: %s", v9, 0x16u);
    sub_27586BF04(v10, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v13 = [objc_opt_self() sharedInstance];
  v14 = sub_2759BA258();
  v15 = [v13 authKitAccountWithAltDSID_];
  v0[28] = v15;

  if (v15)
  {
    v16 = v0[18];
    v17 = v15;
    v18 = sub_2759BA258();
    [v17 setAccountProperty:v16 forKey:v18];

    v19 = [v17 accountStore];
    v0[29] = v19;
    if (v19)
    {
      v20 = v19;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_2758E5150;
      v21 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102E0, &qword_2759C2E10);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2758DCBF0;
      v0[13] = &block_descriptor_92;
      v0[14] = v21;
      [v20 saveAccount:v17 withCompletionHandler:v0 + 10];
      v19 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v19);
  }

  else
  {

    v22 = v0[18];

    v23 = sub_2759B8988();
    v24 = sub_2759BA668();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[19];
      v25 = v0[20];
      v27 = v0[18];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v28 = 138412802;
      *(v28 + 4) = v27;
      *v29 = v27;
      *(v28 + 12) = 2080;
      v31 = v27;
      *(v28 + 14) = sub_2758937B8(v26, v25, &v34);
      *(v28 + 22) = 1024;
      *(v28 + 24) = 0;
      _os_log_impl(&dword_275819000, v23, v24, "Saved new web access: %@ to account: %s success: %{BOOL}d", v28, 0x1Cu);
      sub_27586BF04(v29, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x277C85860](v30, -1, -1);
      MEMORY[0x277C85860](v28, -1, -1);
    }

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_2758E5150()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_2758E5508;
  }

  else
  {
    v5 = sub_2758E5280;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2758E5280()
{
  v23 = v0;
  v1 = *(v0 + 232);

  v2 = *(v0 + 248);

  v3 = *(v0 + 144);

  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = v8;
    *(v9 + 14) = sub_2758937B8(v7, v6, &v22);
    *(v9 + 22) = 1024;
    *(v9 + 24) = v2;
    _os_log_impl(&dword_275819000, v4, v5, "Saved new web access: %@ to account: %s success: %{BOOL}d", v9, 0x1Cu);
    sub_27586BF04(v10, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  if (v2)
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 168);
    v15 = sub_2759BA518();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = v14;
    v17 = sub_2759BA4B8();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v16;
    sub_27587D460(0, 0, v13, &unk_2759C6520, v18);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2758E5508()
{
  v16 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  swift_willThrow();

  v3 = *(v0 + 144);

  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = v8;
    *(v9 + 14) = sub_2758937B8(v7, v6, &v15);
    *(v9 + 22) = 1024;
    *(v9 + 24) = 0;
    _os_log_impl(&dword_275819000, v4, v5, "Saved new web access: %@ to account: %s success: %{BOOL}d", v9, 0x1Cu);
    sub_27586BF04(v10, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2758E56F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2759BA4C8();
  *(v4 + 24) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E5788, v6, v5);
}

uint64_t sub_2758E5788()
{

  sub_2758DEDE8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2758E57F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  sub_2759BA4C8();
  v4[10] = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758E5888, v6, v5);
}

uint64_t sub_2758E5888()
{
  v1 = v0[9];

  swift_getKeyPath();
  v0[2] = v1;
  sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[9];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v0[6] = sub_2758E68F4;
    v0[7] = v4;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_27586249C;
    v0[5] = &block_descriptor_80;
    v5 = _Block_copy(v0 + 2);
    v6 = v3;

    [Strong dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }

  *v0[8] = Strong == 0;
  v7 = v0[1];

  return v7();
}

void sub_2758E5A38(uint64_t a1)
{
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = sub_2759B8988();
  v4 = sub_2759BA668();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275819000, v3, v4, "ADP navigationController dismissed", v5, 2u);
    MEMORY[0x277C85860](v5, -1, -1);
  }

  if (*(a1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
    sub_2759B8628();
  }

  if (*(a1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading))
  {
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    sub_2758E6A0C(&qword_280A0EFD0, type metadata accessor for ADPSectionViewModel, &protocol conformance descriptor for ADPSectionViewModel);
    sub_2759B8628();
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__webAccessIsLoading) = 0;
  }

  sub_2758DEDE8();
}

uint64_t sub_2758E5D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_2758E4B5C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2758E5E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B8508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A102D0, &qword_2759C6410);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_27586FBC8(a1, &v21 - v13, &unk_280A0EB10, &qword_2759C0740);
  sub_27586FBC8(a2, &v14[v15], &unk_280A0EB10, &qword_2759C0740);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_27586FBC8(v14, v10, &unk_280A0EB10, &qword_2759C0740);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_2758E6A0C(&qword_280A102D8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v18 = sub_2759BA228();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_27586BF04(v14, &unk_280A0EB10, &qword_2759C0740);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_27586BF04(v14, &qword_280A102D0, &qword_2759C6410);
    v17 = 1;
    return v17 & 1;
  }

  sub_27586BF04(v14, &unk_280A0EB10, &qword_2759C0740);
  v17 = 0;
  return v17 & 1;
}

uint64_t _s14iCloudSettings19ADPSectionViewModelC18remoteUIDidDismissyySo18RemoteUIControllerCF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238A0);
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_275819000, v6, v7, "ADP RemoteUIDidDismiss", v8, 2u);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v9 = sub_2759BA518();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_2759BA4C8();
  v10 = v1;
  v11 = sub_2759BA4B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  sub_27587DA58(0, 0, v4, &unk_2759C6510, v12);
}

uint64_t type metadata accessor for ADPSectionViewModel(uint64_t a1)
{
  result = qword_280A10188;
  if (!qword_280A10188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758E6360(uint64_t a1)
{
  sub_2758BB454(319);
  if (v1 <= 0x3F)
  {
    sub_2759B8678();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2758E6474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2758E6548()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__grandSlamPresenter) = v2;
  v4 = v2;
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758E6658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2758E325C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_2759B8508();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758E6840(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E57F0(a1, v4, v5, v6);
}

uint64_t sub_2758E68FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E56F0(a1, v4, v5, v6);
}

uint64_t sub_2758E69C8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings19ADPSectionViewModel__adpStateManager) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_2758E6A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2758E6A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758DEBC8(a1, v4, v5, v6);
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2758E6B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E1BF4(a1, v4, v5, v6);
}

uint64_t sub_2758E6BDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E12B8(a1, v4, v5, v6);
}

uint64_t sub_2758E6C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758E18AC(a1, v4, v5, v6);
}

uint64_t sub_2758E6D44(uint64_t a1)
{
  v4 = *(sub_2759B8508() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2758E16E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2758E6EDC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A23900);
  v6 = sub_2759B8988();
  v7 = sub_2759BA648();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_275819000, v6, v7, "NotesDeeplinkAction: USING FALLBACK URL", v8, 2u);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  sub_2759B84F8();
  v9 = sub_2759B8508();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v4, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a1, v4, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_2758E70AC()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_2758E7128(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

void sub_2758E7180(BOOL *a2@<X8>)
{
  v3 = sub_2759BAA48();

  *a2 = v3 != 0;
}

void sub_2758E7218(BOOL *a3@<X8>)
{
  v4 = sub_2759BAA48();

  *a3 = v4 != 0;
}

uint64_t sub_2758E7270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758E82E8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2758E72AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2758E82E8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

id *sub_2758E72E8(void *a1)
{
  v2 = v1;
  v29 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10338, &qword_2759C6710);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v2[2] = 0;
  v9 = OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_destination;
  v10 = sub_2759B8C48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v2 + v9, 1, 1, v10);
  v14 = a1[3];
  v31 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2758E82E8(v15, v16, v17);
  v18 = v35;
  sub_2759BAC18();
  if (v18)
  {

    sub_27586BF04(v2 + OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_destination, &qword_280A0E8A8, qword_2759C2120);
    swift_deallocPartialClassInstance();
    v19 = v31;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v2;
  }

  v29 = v13;
  v35 = v12;
  v20 = v9;
  v21 = v27;
  v22 = v31;
  sub_2758E833C(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  v23 = v28;
  sub_2759BAA68();
  v24 = v30;
  swift_beginAccess();
  sub_27585F470(v24, v2 + v20);
  swift_endAccess();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v26 = result;
    v33 = sub_2758E8384();
    v34 = &off_288484B08;
    *&v32 = v26;
    (*(v21 + 8))(v8, v23);
    sub_275827D1C(&v32, v2 + OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_lsWorkspace);
    v19 = v22;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2758E7680()
{
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_destination, &qword_280A0E8A8, qword_2759C2120);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_lsWorkspace));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotesDeeplinkAction(uint64_t a1)
{
  result = qword_280A10310;
  if (!qword_280A10310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2758E7760(uint64_t a1)
{
  sub_27585EA38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2758E7804(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585A7E4;

  return sub_2758E7B60(a1);
}

uint64_t sub_2758E78B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();
}

id *sub_2758E7A78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2758E72E8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2758E7B60(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v2[7] = swift_task_alloc();
  v3 = sub_2759B8508();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_2759B8C48();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758E7CC0, 0, 0);
}

id sub_2758E7CC0()
{
  v52 = v0;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "NotesDeeplinkAction: performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[6];

  v8 = OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_destination;
  swift_beginAccess();
  if ((*(v6 + 48))(v7 + v8, 1, v5))
  {
    goto LABEL_7;
  }

  (*(v0[13] + 16))(v0[14], v7 + v8, v0[12]);
  sub_2759B8C38();
  (*(v0[13] + 8))(v0[14], v0[12]);

  v15 = sub_2759BAA48();

  if (v15 > 1)
  {

LABEL_7:
    v9 = sub_2759B8988();
    v10 = sub_2759BA648();
    if (!os_log_type_enabled(v9, v10))
    {
LABEL_10:

      goto LABEL_11;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "NotesDeeplinkAction: unable to parse destination, bailing";
LABEL_9:
    _os_log_impl(&dword_275819000, v9, v10, v12, v11, 2u);
    MEMORY[0x277C85860](v11, -1, -1);
    goto LABEL_10;
  }

  v16 = *(v0[6] + 16);
  if (!v16)
  {

    v9 = sub_2759B8988();
    v10 = sub_2759BA648();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_10;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "NotesDeeplinkAction: no account available, bailing";
    goto LABEL_9;
  }

  v17 = *&v16[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account];
  v18 = v16;
  result = [v17 identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;

  sub_2759BA298();
  v20 = v0[11];
  v50 = v18;
  if (v15)
  {

    sub_2758E6EDC(v20);
  }

  else
  {

    v21 = [objc_opt_self() defaultCloudFolderURLForACAccountID_];

    sub_2759B84C8();
  }

  v22 = v0[11];
  v48 = v0[10];
  v24 = v0[8];
  v23 = v0[9];
  v25 = v0[7];
  v26 = (v0[6] + OBJC_IVAR____TtC14iCloudSettings19NotesDeeplinkAction_lsWorkspace);
  v27 = v26[3];
  v28 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v29 = *(v23 + 16);
  v29(v25, v22, v24);
  (*(v23 + 56))(v25, 0, 1, v24);
  v30 = sub_2758A2A88(MEMORY[0x277D84F90]);
  v31 = (*(v28 + 8))(v25, v30, v27, v28);

  sub_27586BF04(v25, &unk_280A0EB10, &qword_2759C0740);
  v29(v48, v22, v24);
  v32 = sub_2759B8988();
  v33 = sub_2759BA668();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[10];
  v36 = v0[11];
  v38 = v0[8];
  v37 = v0[9];
  if (v34)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v51 = v40;
    *v39 = 136315394;
    v47 = v31;
    v41 = sub_2759B8488();
    v49 = v36;
    v43 = v42;
    v44 = *(v37 + 8);
    v44(v35, v38);
    v45 = sub_2758937B8(v41, v43, &v51);

    *(v39 + 4) = v45;
    *(v39 + 12) = 1024;
    *(v39 + 14) = v47 & 1;
    _os_log_impl(&dword_275819000, v32, v33, "NotesDeeplinkAction: opened link %s with success %{BOOL}d", v39, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x277C85860](v40, -1, -1);
    MEMORY[0x277C85860](v39, -1, -1);

    v44(v49, v38);
  }

  else
  {

    v46 = *(v37 + 8);
    v46(v35, v38);
    v46(v36, v38);
  }

LABEL_11:

  v13 = v0[1];

  return v13();
}

unint64_t sub_2758E82E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10340;
  if (!qword_280A10340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10340);
  }

  return result;
}

uint64_t sub_2758E833C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2758E8384()
{
  result = qword_280A10348;
  if (!qword_280A10348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A10348);
  }

  return result;
}