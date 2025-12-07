uint64_t sub_21BC3B7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v14;
  *(v8 + 56) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 112) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v10 = sub_21BE26A4C();
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = sub_21BE28D7C();
  *(v8 + 96) = sub_21BE28D6C();
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_21BC3B920;

  return sub_21BC397F4(a5);
}

uint64_t sub_21BC3B920()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC3BA5C, v1, v0);
}

uint64_t sub_21BC3BA5C()
{
  v25 = v0;

  sub_21BE2614C();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 112);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136315138;
    if (v3 > 3)
    {
      v14 = 0xEE0065636E617473;
      v15 = 0x69446E6565726373;
      v16 = 0xE400000000000000;
      v17 = 1702257011;
      if (v3 != 6)
      {
        v17 = 0x6874695765766173;
        v16 = 0xEF776569566E6950;
      }

      if (v3 != 4)
      {
        v15 = 0x65646F6373736170;
        v14 = 0xE800000000000000;
      }

      if (v3 <= 5)
      {
        v9 = v15;
      }

      else
      {
        v9 = v17;
      }

      if (v3 <= 5)
      {
        v10 = v14;
      }

      else
      {
        v10 = v16;
      }
    }

    else
    {
      v6 = 0xD000000000000013;
      v7 = 0x800000021BE545B0;
      if (v3 != 2)
      {
        v6 = 0xD000000000000011;
        v7 = 0x800000021BE545D0;
      }

      v8 = 0x800000021BE54570;
      if (v3)
      {
        v8 = 0x800000021BE54590;
      }

      if (v3 <= 1)
      {
        v9 = 0xD000000000000013;
      }

      else
      {
        v9 = v6;
      }

      if (v3 <= 1)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }
    }

    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = sub_21BB3D81C(v9, v10, &v24);

    *(v4 + 4) = v21;
    _os_log_impl(&dword_21BB35000, v1, v2, "ExpressParentalControlHook.processElement: Invoking action for actionType: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x21CF05C50](v5, -1, -1);
    MEMORY[0x21CF05C50](v4, -1, -1);

    (*(v19 + 8))(v18, v20);
  }

  else
  {
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 64);

    (*(v12 + 8))(v11, v13);
  }

  sub_21BC3BE1C(*(v0 + 112), *(v0 + 32), *(v0 + 24), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21BC3BE1C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v7 = v6;
  v75 = a5;
  v76 = a6;
  v72 = a4;
  v70 = a2;
  v9 = a1;
  swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v68 - v11;
  v13 = sub_21BE26A4C();
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v69 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AE8, &qword_21BE39198);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v68 - v20;
  v22 = sub_21BE2672C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v71 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 > 4u)
  {
    if (v9 == 5)
    {
      v52 = v76;

      sub_21BC400FC(v72, v7, v75, v52);
    }

    else
    {
      if (v9 == 6)
      {
        v36 = sub_21BE28DAC();
        (*(*(v36 - 8) + 56))(v12, 1, 1, v36);
        sub_21BE28D7C();
        v37 = v76;

        v38 = v72;
        v39 = v6;
        v40 = sub_21BE28D6C();
        v41 = swift_allocObject();
        v42 = MEMORY[0x277D85700];
        v41[2] = v40;
        v41[3] = v42;
        v41[4] = v39;
        v41[5] = v38;
        v41[6] = v75;
        v41[7] = v37;
        sub_21BBA932C(0, 0, v12, &unk_21BE391A8, v41);
      }

      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = v76;

      v55 = v72;
      sub_21BC4067C(v55, v7, v53, v55, v75, v54);
    }
  }

  sub_21BD528AC(v9, v21);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    v43 = v22;
    v44 = v23;
    v45 = *(v23 + 32);
    v46 = v71;
    v68 = v43;
    v45(v71, v21);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    __swift_project_boxed_opaque_existential_1Tm(&v6[OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore], *&v6[OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24]);
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    *(v49 + 24) = v48;
    *(v49 + 32) = v9;
    v50 = v70;
    *(v49 + 40) = a3;
    *(v49 + 48) = v50;

    v51 = a3;

    v56 = sub_21BC8FF18(v46, sub_21BC40ECC, v49);

    swift_beginAccess();
    v57 = *(v47 + 16);
    *(v47 + 16) = v56;
    v58 = v56;

    v59 = v69;
    sub_21BE2614C();
    v60 = v58;
    v61 = sub_21BE26A2C();
    v62 = sub_21BE28FFC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v77 = v65;
      *v63 = 136315394;
      *(v63 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, &v77);
      *(v63 + 12) = 2112;
      *(v63 + 14) = v60;
      *v64 = v56;
      v66 = v60;
      _os_log_impl(&dword_21BB35000, v61, v62, "ExpressParentalControlHook.%s presenting view controller %@", v63, 0x16u);
      sub_21BB3A4CC(v64, &qword_27CDB7AF0, &qword_21BE37410);
      v67 = v64;
      v46 = v71;
      MEMORY[0x21CF05C50](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x21CF05C50](v65, -1, -1);
      MEMORY[0x21CF05C50](v63, -1, -1);
    }

    (*(v73 + 8))(v59, v74);
    [v72 presentViewController:v60 animated:1 completion:0];
    v75(1, 0);

    (*(v44 + 8))(v46, v68);
  }

  sub_21BB3A4CC(v21, &qword_27CDB7AE8, &qword_21BE39198);
  sub_21BE2614C();
  v25 = sub_21BE26A2C();
  v26 = sub_21BE28FDC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v78[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, v78);
    *(v27 + 12) = 2080;
    v29 = 0xEE0065636E617473;
    v30 = 0x69446E6565726373;
    if (v9 == 3)
    {
      v30 = 0xD000000000000011;
      v29 = 0x800000021BE545D0;
    }

    if (v9 == 2)
    {
      v30 = 0xD000000000000013;
      v29 = 0x800000021BE545B0;
    }

    v31 = 0x800000021BE54570;
    if (v9)
    {
      v31 = 0x800000021BE54590;
    }

    if (v9 <= 1u)
    {
      v32 = 0xD000000000000013;
    }

    else
    {
      v32 = v30;
    }

    if (v9 <= 1u)
    {
      v33 = v31;
    }

    else
    {
      v33 = v29;
    }

    v34 = sub_21BB3D81C(v32, v33, v78);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_21BB35000, v25, v26, "ExpressParentalControlHook.%s could not convert %s to STPaneType", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v28, -1, -1);
    MEMORY[0x21CF05C50](v27, -1, -1);
  }

  (*(v73 + 8))(v16, v74);
  return (v75)(0, 0);
}

void sub_21BC3C894(char a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_21BE26A4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_21BE28DAC();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE28D7C();

    v22 = a4;

    v23 = a2;
    v24 = sub_21BE28D6C();
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    *(v25 + 16) = v24;
    *(v25 + 24) = v26;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
    *(v25 + 48) = a5;
    *(v25 + 56) = a6;
    *(v25 + 64) = a1 & 1;
    *(v25 + 72) = a2;

    sub_21BBA932C(0, 0, v17, &unk_21BE391C8, v25);
  }

  else
  {
    sub_21BE2614C();
    v27 = sub_21BE26A2C();
    v28 = sub_21BE28FDC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, &v31);
      _os_log_impl(&dword_21BB35000, v27, v28, "ExpressParentalControlHook.%s self is unexpectedly nil", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x21CF05C50](v30, -1, -1);
      MEMORY[0x21CF05C50](v29, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_21BC3CBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v14;
  *(v8 + 184) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = sub_21BE26A4C();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  sub_21BE28D7C();
  *(v8 + 128) = sub_21BE28D6C();
  v11 = sub_21BE28D0C();
  *(v8 + 136) = v11;
  *(v8 + 144) = v10;

  return MEMORY[0x2822009F8](sub_21BC3CCF4, v11, v10);
}

uint64_t sub_21BC3CCF4()
{
  v22 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_21BE2614C();
    v3 = sub_21BE26A2C();
    v4 = sub_21BE28FCC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21BB35000, v3, v4, "Saving parental controls", v5, 2u);
      MEMORY[0x21CF05C50](v5, -1, -1);
    }

    v6 = v0[15];
    v7 = v0[10];
    v8 = v0[11];

    v9 = *(v8 + 8);
    v0[20] = v9;
    v9(v6, v7);
    __swift_project_boxed_opaque_existential_1Tm((v2 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(v2 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24));
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_21BC3CFD0;

    return sub_21BC8F59C();
  }

  else
  {

    sub_21BE2614C();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FDC();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[10];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, &v21);
      _os_log_impl(&dword_21BB35000, v12, v13, "ExpressParentalControlHook.%s self is unexpectedly nil", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x21CF05C50](v19, -1, -1);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_21BC3CFD0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_21BC3D260;
  }

  else
  {
    v5 = sub_21BC3D10C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BC3D10C()
{

  sub_21BE2614C();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FBC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 160);
  v5 = *(v0 + 112);
  v6 = *(v0 + 80);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v1, v2, "Saved parental controls", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  v4(v5, v6);
  v8 = *(v0 + 152);
  (*(v0 + 56))(*(v0 + 184), *(v0 + 72));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BC3D260()
{
  v1 = *(v0 + 176);

  sub_21BE2614C();
  v2 = v1;
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_21BB35000, v3, v4, "Failed to save parental controls: %@", v6, 0xCu);
    sub_21BB3A4CC(v7, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v7, -1, -1);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  v12 = *(v0 + 104);
  v13 = *(v0 + 80);
  v14 = *(v0 + 48);

  v11(v12, v13);
  sub_21BC3FE10(v14);

  v15 = *(v0 + 152);
  (*(v0 + 56))(*(v0 + 184), *(v0 + 72));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_21BC3D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_21BE26A4C();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  sub_21BE28D7C();
  v7[10] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v7[11] = v10;
  v7[12] = v9;

  return MEMORY[0x2822009F8](sub_21BC3D540, v10, v9);
}

uint64_t sub_21BC3D540()
{
  __swift_project_boxed_opaque_existential_1Tm((*(v0 + 16) + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(*(v0 + 16) + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_21BC3D5E8;

  return sub_21BC8F59C();
}

uint64_t sub_21BC3D5E8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_21BC3D850;
  }

  else
  {
    v5 = sub_21BC3D724;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BC3D724()
{

  sub_21BE2614C();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FBC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v1, v2, "Saved parental controls", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);
  (*(v0 + 32))(1, 0);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21BC3D850()
{
  v1 = *(v0 + 112);

  sub_21BE2614C();
  v2 = v1;
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_21BB35000, v3, v4, "Failed to save parental controls: %@", v6, 0xCu);
    sub_21BB3A4CC(v7, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v7, -1, -1);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  v10 = *(v0 + 112);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v13 = *(v0 + 48);
  v14 = *(v0 + 24);

  (*(v12 + 8))(v11, v13);
  sub_21BC3FE10(v14);

  (*(v0 + 32))(1, 0);

  v15 = *(v0 + 8);

  return v15();
}

void sub_21BC3DA08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v42 = v10;
    sub_21BC3E0EC(v7, a4, a5);
    swift_beginAccess();
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = v21;
      sub_21BE2614C();
      v23 = v22;
      v24 = sub_21BE26A2C();
      v25 = sub_21BE28FFC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v41 = v9;
        v28 = v27;
        v29 = swift_slowAlloc();
        v43[0] = v29;
        *v26 = 136315394;
        *(v26 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, v43);
        *(v26 + 12) = 2112;
        *(v26 + 14) = v23;
        *v28 = v21;
        v30 = v23;
        _os_log_impl(&dword_21BB35000, v24, v25, "ExpressParentalControlHook.%s dismissing presented view controller %@", v26, 0x16u);
        sub_21BB3A4CC(v28, &qword_27CDB7AF0, &qword_21BE37410);
        MEMORY[0x21CF05C50](v28, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x21CF05C50](v29, -1, -1);
        MEMORY[0x21CF05C50](v26, -1, -1);

        (*(v42 + 8))(v18, v41);
      }

      else
      {

        (*(v42 + 8))(v18, v9);
      }

      [v23 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      sub_21BE2614C();
      v35 = sub_21BE26A2C();
      v36 = sub_21BE28FDC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v43[0] = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, v43);
        _os_log_impl(&dword_21BB35000, v35, v36, "ExpressParentalControlHook.%s stViewController is unexpectedly nil", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x21CF05C50](v38, -1, -1);
        MEMORY[0x21CF05C50](v37, -1, -1);
      }

      (*(v42 + 8))(v16, v9);
    }
  }

  else
  {
    sub_21BE2614C();
    v31 = sub_21BE26A2C();
    v32 = sub_21BE28FDC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, v44);
      _os_log_impl(&dword_21BB35000, v31, v32, "ExpressParentalControlHook.%s dismiss called after self is deallocated.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x21CF05C50](v34, -1, -1);
      MEMORY[0x21CF05C50](v33, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
  }

  swift_beginAccess();
  v39 = *(a1 + 16);
  *(a1 + 16) = 0;
}

void sub_21BC3DEF4(uint64_t a1, void (*a2)(uint64_t, void))
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2614C();
  v8 = sub_21BE26A2C();
  v9 = sub_21BE28FFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE58DC0, v14);
    _os_log_impl(&dword_21BB35000, v8, v9, "ExpressParentalControlHook.%s showPinView completed.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  a2(1, 0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12)
  {
    swift_beginAccess();
    *(a1 + 16) = 0;
  }
}

uint64_t sub_21BC3E0EC(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v101 = a2;
  v5 = sub_21BE266DC();
  v98 = *(v5 - 8);
  v99 = v5;
  MEMORY[0x28223BE20](v5);
  v95 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  MEMORY[0x28223BE20](v7 - 8);
  v96 = v94 - v8;
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 1);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v100 = (v94 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v102 = v94 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v94 - v18;
  sub_21BE2614C();
  v20 = sub_21BE26A2C();
  v21 = sub_21BE28FFC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = a1;
    v24 = v10;
    v25 = v9;
    v26 = swift_slowAlloc();
    *&v105[0] = v26;
    *v22 = 136315138;
    *(v22 + 4) = sub_21BB3D81C(0xD00000000000002DLL, 0x800000021BE58D30, v105);
    _os_log_impl(&dword_21BB35000, v20, v21, "ExpressParentalControlHook.%s invoking script function actionType:", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    v27 = v26;
    v9 = v25;
    v10 = v24;
    a1 = v23;
    MEMORY[0x21CF05C50](v27, -1, -1);
    MEMORY[0x21CF05C50](v22, -1, -1);
  }

  v28 = *(v10 + 8);
  (v28)(v19, v9);
  v106[0] = 25705;
  v106[1] = 0xE200000000000000;
  sub_21BE2958C();
  if (*(a3 + 16) && (v29 = sub_21BBB31E8(v105), (v30 & 1) != 0))
  {
    sub_21BB3DCD4(*(a3 + 56) + 32 * v29, v106);
    sub_21BBB7238(v105);
    v31 = swift_dynamicCast();
    if (v31)
    {
      v32 = v103;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v104;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    sub_21BBB7238(v105);
    v32 = 0;
    v33 = 0;
  }

  v103 = 0xD000000000000010;
  v104 = 0x800000021BE58CE0;
  sub_21BE2958C();
  if (!*(a3 + 16) || (v34 = sub_21BBB31E8(v105), (v35 & 1) == 0))
  {
    sub_21BBB7238(v105);
    v38 = 0;
    v37 = 0;
LABEL_26:
    sub_21BE2614C();

    v46 = sub_21BE26A2C();
    v47 = sub_21BE28FFC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v102 = v13;
      v49 = v37;
      v50 = v48;
      v51 = swift_slowAlloc();
      v99 = v10;
      v52 = v51;
      v106[0] = v51;
      *v50 = 136315650;
      *(v50 + 4) = sub_21BB3D81C(0xD00000000000002DLL, 0x800000021BE58D30, v106);
      v101 = v9;
      *(v50 + 12) = 2080;
      *&v105[0] = v32;
      *(&v105[0] + 1) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
      v100 = v28;
      v53 = sub_21BE28A5C();
      v55 = sub_21BB3D81C(v53, v54, v106);

      *(v50 + 14) = v55;
      *(v50 + 22) = 2080;
      *&v105[0] = v49;
      *(&v105[0] + 1) = v38;
      v56 = sub_21BE28A5C();
      v58 = sub_21BB3D81C(v56, v57, v106);

      *(v50 + 24) = v58;
      _os_log_impl(&dword_21BB35000, v46, v47, "ExpressParentalControlHook.%s no name or id found. id: %s, functionName: %s", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v52, -1, -1);
      MEMORY[0x21CF05C50](v50, -1, -1);

      return v100(v102, v101);
    }

    v60 = v13;
    return (v28)(v60, v9);
  }

  sub_21BB3DCD4(*(a3 + 56) + 32 * v34, v106);
  sub_21BBB7238(v105);
  v36 = swift_dynamicCast();
  if (v36)
  {
    v37 = v103;
  }

  else
  {
    v37 = 0;
  }

  if (v36)
  {
    v38 = v104;
  }

  else
  {
    v38 = 0;
  }

  if (!v33 || !v38)
  {
    goto LABEL_26;
  }

  if (a1 > 4u)
  {

    v61 = v100;
    sub_21BE2614C();
    v62 = sub_21BE26A2C();
    v63 = sub_21BE28FFC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = a1;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v105[0] = v66;
      *v65 = 136315394;
      *(v65 + 4) = sub_21BB3D81C(0xD00000000000002DLL, 0x800000021BE58D30, v105);
      *(v65 + 12) = 2080;
      v67 = v28;
      if (v64 == 5)
      {
        v68 = 0xE800000000000000;
        v69 = 0x65646F6373736170;
      }

      else if (v64 == 6)
      {
        v68 = 0xE400000000000000;
        v69 = 1702257011;
      }

      else
      {
        v68 = 0xEF776569566E6950;
        v69 = 0x6874695765766173;
      }

      v93 = sub_21BB3D81C(v69, v68, v105);

      *(v65 + 14) = v93;
      _os_log_impl(&dword_21BB35000, v62, v63, "ExpressParentalControlHook.%s skipping script invocation for actionType: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v66, -1, -1);
      MEMORY[0x21CF05C50](v65, -1, -1);

      return v67(v61, v9);
    }

    v60 = v61;
    return (v28)(v60, v9);
  }

  v100 = v28;
  v39 = *__swift_project_boxed_opaque_existential_1Tm((v97 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(v97 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24));
  v40 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  swift_beginAccess();
  v41 = v96;
  sub_21BBA3854(v39 + v40, v96, &qword_27CDB7AC8, &qword_21BE3CC70);
  v43 = v98;
  v42 = v99;
  v44 = (*(v98 + 48))(v41, 1, v99);
  v94[0] = v32;
  if (v44 == 1)
  {
    v45 = sub_21BBB5D24(MEMORY[0x277D84F90]);
  }

  else
  {
    v70 = v41;
    v71 = v95;
    (*(v43 + 32))(v95, v70, v42);
    v72 = sub_21BD56220(v71);
    (*(v43 + 8))(v71, v42);
    v45 = v72;
  }

  v73 = v102;
  sub_21BE2614C();

  v74 = sub_21BE26A2C();
  v75 = sub_21BE28FFC();
  v98 = v45;

  LODWORD(v97) = v75;
  v76 = os_log_type_enabled(v74, v75);
  v94[1] = v37;
  if (v76)
  {
    v99 = v10;
    v77 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *&v105[0] = v96;
    *v77 = 136315906;
    *(v77 + 4) = sub_21BB3D81C(0xD00000000000002DLL, 0x800000021BE58D30, v105);
    *(v77 + 12) = 2080;
    *(v77 + 14) = sub_21BB3D81C(v37, v38, v105);
    *(v77 + 22) = 2080;
    v78 = sub_21BE2891C();
    v80 = sub_21BB3D81C(v78, v79, v105);

    v81 = 0xEE0065636E617473;
    *(v77 + 24) = v80;
    *(v77 + 32) = 2080;
    v82 = 0x69446E6565726373;
    if (a1 == 3)
    {
      v82 = 0xD000000000000011;
      v81 = 0x800000021BE545D0;
    }

    if (a1 == 2)
    {
      v82 = 0xD000000000000013;
      v81 = 0x800000021BE545B0;
    }

    v83 = 0x800000021BE54570;
    if (a1)
    {
      v83 = 0x800000021BE54590;
    }

    if (a1 <= 1u)
    {
      v84 = 0xD000000000000013;
    }

    else
    {
      v84 = v82;
    }

    if (a1 <= 1u)
    {
      v85 = v83;
    }

    else
    {
      v85 = v81;
    }

    v86 = v94[0];
    v87 = sub_21BB3D81C(v84, v85, v105);

    *(v77 + 34) = v87;
    _os_log_impl(&dword_21BB35000, v74, v97, "ExpressParentalControlHook.%s invoking script %s dict: %s actionType: %s", v77, 0x2Au);
    v88 = v96;
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v88, -1, -1);
    MEMORY[0x21CF05C50](v77, -1, -1);

    v100(v102, v9);
  }

  else
  {

    v100(v73, v9);
    v86 = v94[0];
  }

  v89 = sub_21BE289CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_21BE33260;
  *(v90 + 56) = MEMORY[0x277D837D0];
  *(v90 + 32) = v86;
  *(v90 + 40) = v33;
  *(v90 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB7AD8, &qword_21BE4BBF0);
  *(v90 + 64) = v98;
  v91 = sub_21BE28C1C();

  v92 = [v101 invokeScriptFunction:v89 withArguments:v91];

  if (v92)
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v105, 0, sizeof(v105));
  }

  return sub_21BB3A4CC(v105, &qword_27CDB5940, &unk_21BE32B10);
}

id sub_21BC3ED54(void *a1)
{
  v2 = sub_21BE26A4C();
  v57 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v54 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v54 - v9;
  v11 = sub_21BE266DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v58 = 0xD000000000000010;
  v59 = 0x800000021BE58CE0;
  sub_21BE2958C();
  v56 = a1;
  result = [a1 clientInfo];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = sub_21BE2890C();

  if (*(v20 + 16) && (v21 = sub_21BBB31E8(v60), (v22 & 1) != 0))
  {
    sub_21BB3DCD4(*(v20 + 56) + 32 * v21, v61);
    sub_21BBB7238(v60);

    if (swift_dynamicCast())
    {
      v24 = v58;
      v23 = v59;
      v25 = *__swift_project_boxed_opaque_existential_1Tm((&v55->isa + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(&v55[3].isa + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore));
      v26 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
      swift_beginAccess();
      sub_21BBA3854(v25 + v26, v17, &qword_27CDB7AC8, &qword_21BE3CC70);
      if ((*(v12 + 48))(v17, 1, v11) == 1)
      {
        v27 = sub_21BBB5D24(MEMORY[0x277D84F90]);
      }

      else
      {
        (*(v12 + 32))(v14, v17, v11);
        v27 = sub_21BD56220(v14);
        (*(v12 + 8))(v14, v11);
      }

      sub_21BE2614C();

      v42 = sub_21BE26A2C();
      v43 = sub_21BE28FFC();

      v55 = v42;
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v60[0] = v54;
        *v44 = 136315650;
        *(v44 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE58D00, v60);
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_21BB3D81C(v24, v23, v60);
        *(v44 + 22) = 2080;
        v45 = sub_21BE2891C();
        v47 = sub_21BB3D81C(v45, v46, v60);

        *(v44 + 24) = v47;
        v48 = v55;
        _os_log_impl(&dword_21BB35000, v55, v43, "%s running on load complete function: %s dict: %s", v44, 0x20u);
        v49 = v54;
        swift_arrayDestroy();
        MEMORY[0x21CF05C50](v49, -1, -1);
        MEMORY[0x21CF05C50](v44, -1, -1);
      }

      else
      {
      }

      (*(v57 + 8))(v10, v2);
      v50 = sub_21BE289CC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_21BE32770;
      *(v51 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB7AD8, &qword_21BE4BBF0);
      *(v51 + 32) = v27;
      v52 = sub_21BE28C1C();

      v53 = [v56 invokeScriptFunction:v50 withArguments:v52];

      if (v53)
      {
        sub_21BE294BC();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v60, 0, 32);
      }

      return sub_21BB3A4CC(v60, &qword_27CDB5940, &unk_21BE32B10);
    }
  }

  else
  {

    sub_21BBB7238(v60);
  }

  sub_21BE2614C();
  v28 = sub_21BE26A2C();
  v29 = sub_21BE28FFC();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v57;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v60[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE58D00, v60);
    _os_log_impl(&dword_21BB35000, v28, v29, "ExpressParentalControlHook.%s function name found", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x21CF05C50](v33, -1, -1);
    MEMORY[0x21CF05C50](v32, -1, -1);
  }

  v34 = *(v31 + 8);
  v34(v8, v2);
  sub_21BE2614C();
  v35 = sub_21BE26A2C();
  v36 = sub_21BE28FFC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v61[0] = v38;
    *v37 = 136315394;
    *(v37 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE58D00, v61);
    *(v37 + 12) = 2080;
    v60[0] = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
    v39 = sub_21BE28A5C();
    v41 = sub_21BB3D81C(v39, v40, v61);

    *(v37 + 14) = v41;
    _os_log_impl(&dword_21BB35000, v35, v36, "%s  functionName: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v38, -1, -1);
    MEMORY[0x21CF05C50](v37, -1, -1);
  }

  return (v34)(v5, v2);
}

id ExpressParentalControlHook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpressParentalControlHook();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21BC3F624(uint64_t a1)
{
  v2 = type metadata accessor for ParentalControlStore(0);
  v14[3] = v2;
  v14[4] = &off_282D8DAE0;
  v14[0] = a1;
  v3 = type metadata accessor for ExpressParentalControlHook();
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v14, v2);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = v2;
  v13[4] = &off_282D8DAE0;
  v13[0] = v9;
  swift_unknownObjectWeakInit();
  sub_21BB3A35C(v13, v4 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore);
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v10;
}

uint64_t sub_21BC3F77C(void *a1)
{
  v1 = [a1 clientInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = sub_21BE2890C();

  sub_21BE2958C();
  if (!*(v3 + 16) || (v4 = sub_21BBB31E8(&v8), (v5 & 1) == 0))
  {

    sub_21BBB7238(&v8);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  sub_21BB3DCD4(*(v3 + 56) + 32 * v4, &v9);
  sub_21BBB7238(&v8);

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_21BB3A4CC(&v9, &qword_27CDB5940, &unk_21BE32B10);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v6 = 0;
    return v6 & 1;
  }

  v6 = sub_21BE28B6C();

  return v6 & 1;
}

uint64_t sub_21BC3F8E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC3AE50(a1, v4, v5, v7, v6);
}

uint64_t sub_21BC3F9A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 64);
  v12 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21BBA6A64;

  return sub_21BC3B7F0(a1, v4, v5, v6, v7, v9, v12, v8);
}

uint64_t dispatch thunk of ExpressParentalControlHook.shouldMatch(_:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
}

uint64_t dispatch thunk of ExpressParentalControlHook.processObjectModel(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8C3C;

  return v7(a1);
}

uint64_t sub_21BC3FD3C(uint64_t a1)
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
  v10[1] = sub_21BBB7EB8;

  return sub_21BC3D43C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_21BC3FE10(void *a1)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_21BE2599C();

  v5 = [v3 bundleForClass_];
  sub_21BE2599C();

  v6 = sub_21BE289CC();

  v7 = sub_21BE289CC();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:{1, 0x800000021BE58E20}];

  v9 = [v3 bundleForClass_];
  sub_21BE2599C();

  v10 = sub_21BE289CC();

  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BBB1C7C;
  aBlock[3] = &block_descriptor_10;
  v11 = _Block_copy(aBlock);

  v12 = [objc_opt_self() actionWithTitle:v10 style:0 handler:{v11, 0xE200000000000000}];
  _Block_release(v11);

  [v8 addAction_];
  [a1 presentViewController:v8 animated:1 completion:0];
}

void sub_21BC400FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v7 = sub_21BE26A4C();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v26[1] = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v26[0] = v26 - v10;
  v11 = sub_21BE2672C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v26[3] = a3;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  __swift_project_boxed_opaque_existential_1Tm((a2 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(a2 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24));
  (*(v12 + 104))(v14, *MEMORY[0x277D4BD20], v11);
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = sub_21BC40EDC;
  v17[4] = v15;
  v26[2] = a4;

  v18 = sub_21BC8FF18(v14, sub_21BC40F04, v17);

  (*(v12 + 8))(v14, v11);
  swift_beginAccess();
  v19 = *(v16 + 16);
  *(v16 + 16) = v18;
  v20 = v18;

  v21 = v26[0];
  sub_21BE2614C();
  v22 = sub_21BE26A2C();
  v23 = sub_21BE28FFC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE58DC0, &v30);
    _os_log_impl(&dword_21BB35000, v22, v23, "ExpressParentalControlHook.%s pushing pin view controller", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x21CF05C50](v25, -1, -1);
    MEMORY[0x21CF05C50](v24, -1, -1);
  }

  (*(v27 + 8))(v21, v28);
  [v29 pushViewController:v20 animated:1];
}

void sub_21BC4067C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v45 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v11 - 8);
  v39 = &v37 - v12;
  v13 = sub_21BE26A4C();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v43 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v41 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v38 = &v37 - v18;
  v19 = sub_21BE2672C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v40 = a5;
  v23[4] = a5;
  v23[5] = a6;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  __swift_project_boxed_opaque_existential_1Tm((a2 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(a2 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24));
  v25 = *MEMORY[0x277D4BD20];
  v26 = *(v20 + 104);
  v44 = v19;
  v26(v22, v25, v19);
  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = sub_21BC40F10;
  v27[4] = v23;
  v42 = a3;

  v28 = a4;

  v48 = v23;

  v29 = sub_21BC8FF18(v22, sub_21BC41158, v27);

  (*(v20 + 8))(v22, v44);
  swift_beginAccess();
  v30 = *(v24 + 16);
  *(v24 + 16) = v29;
  v31 = v29;

  v32 = v38;
  sub_21BE2614C();
  v33 = sub_21BE26A2C();
  v34 = sub_21BE28FFC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE58DC0, &v50);
    _os_log_impl(&dword_21BB35000, v33, v34, "ExpressParentalControlHook.%s pushing pin view controller", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x21CF05C50](v36, -1, -1);
    MEMORY[0x21CF05C50](v35, -1, -1);
  }

  (*(v46 + 8))(v32, v47);
  [v45 pushViewController:v31 animated:1];
}

uint64_t objectdestroy_32Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21BC40F5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21BBB7EB8;

  return sub_21BC3CBC8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_44Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BC410A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BC3B094(v2, v3, v4);
}

unint64_t sub_21BC41164(void *a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_21BE29B7C();
    if (v3 <= 0x3F)
    {
      v1 = sub_21BC41568();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_21BC41244(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_21BC41388(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_21BC41568()
{
  result = qword_27CDB7B80;
  if (!qword_27CDB7B80)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CDB7B80);
  }

  return result;
}

uint64_t sub_21BC41604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v33 = *(a1 - 8);
  v34 = *(v33 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v32 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 16);
  v7 = *(v4 + 40);
  v8 = sub_21BE268BC();
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v30 = v28 - v9;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE4688], v8);
  v10 = *(a1 + 48);
  v46[1] = v8;
  v48 = WitnessTable;
  v49 = v10;
  v11.i64[0] = v6;
  v29 = v11;
  v41 = *(a1 + 24);
  v47 = v41;
  v36 = v41.i64[1];
  v12 = sub_21BE285DC();
  v39 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v31 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = v28 - v15;
  *&v16 = vdupq_laneq_s64(v41, 1).u64[0];
  *(&v16 + 1) = v7;
  v42 = vzip1q_s64(v29, v41);
  v43 = v16;
  v17 = *(a1 + 56);
  v44 = v10;
  v45 = v17;
  v29.i64[0] = swift_getKeyPath();
  v28[0] = v2;
  sub_21BE28EEC();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_21BE2973C();
  v28[1] = sub_21BE2969C();
  v18 = v33;
  v19 = v32;
  (*(v33 + 16))(v32, v28[0], a1);
  v20 = v18;
  v21 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = v41;
  *(v22 + 40) = v7;
  *(v22 + 48) = v10;
  *(v22 + 56) = v17;
  (*(v20 + 32))(v22 + v21, v19, a1);
  v23 = swift_allocObject();
  *(v23 + 16) = v6;
  *(v23 + 24) = v41;
  *(v23 + 40) = v7;
  *(v23 + 48) = v10;
  *(v23 + 56) = v17;
  *(v23 + 64) = sub_21BC41CC4;
  *(v23 + 72) = v22;
  v24 = v31;
  sub_21BE285BC();

  v46[0] = v17;
  swift_getWitnessTable(MEMORY[0x277CE1290], v12, v46);
  v25 = v35;
  sub_21BD37338();
  v26 = *(v39 + 8);
  v26(v24, v12);
  sub_21BD37338();
  return (v26)(v25, v12);
}

uint64_t sub_21BC41AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a6 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  v27[0] = v19;
  v27[1] = v20;
  v27[2] = v21;
  v27[3] = v22;
  v27[4] = v23;
  v27[5] = a9;
  v24 = type metadata accessor for EnumeratedForEach(0, v27);
  (*(a3 + *(v24 + 72)))(a1, a2);
  sub_21BD37338();
  v25 = *(v13 + 8);
  v25(v16, a6);
  sub_21BD37338();
  return (v25)(v18, a6);
}

uint64_t sub_21BC41C1C(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v9, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_21BC41CC4(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v11 = *(type metadata accessor for EnumeratedForEach(0, v13) - 8);
  return sub_21BC41AA8(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

uint64_t type metadata accessor for ParentalControlView(uint64_t a1)
{
  result = qword_27CDB7B88;
  if (!qword_27CDB7B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC41E3C(uint64_t a1)
{
  type metadata accessor for ParentalControlDataItem(319);
  if (v1 <= 0x3F)
  {
    sub_21BC41F08(319);
    if (v2 <= 0x3F)
    {
      sub_21BC41F9C();
      if (v3 <= 0x3F)
      {
        type metadata accessor for AgeBasedPresetFlow();
        if (v4 <= 0x3F)
        {
          sub_21BC41FE8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21BC41F08(uint64_t a1)
{
  if (!qword_27CDB7B98)
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BC42484(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
    v1 = sub_21BE2728C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB7B98);
    }
  }
}

unint64_t sub_21BC41F9C()
{
  result = qword_27CDB7BA0;
  if (!qword_27CDB7BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB7BA0);
  }

  return result;
}

void sub_21BC41FE8(uint64_t a1)
{
  if (!qword_27CDB7BA8)
  {
    type metadata accessor for FamilyPictureStore(255);
    sub_21BC42484(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore, protocol conformance descriptor for AsyncStore<A>);
    v1 = sub_21BE270DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB7BA8);
    }
  }
}

id sub_21BC42098()
{
  type metadata accessor for ParentalControlView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = [v11 profilePictureForFamilyMember:*(v0 + *(type metadata accessor for ParentalControlDataItem(0) + 24)) pictureDiameter:36.0];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE25BFC();
    v5 = v4;

    v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v7 = sub_21BE25BCC();
    v8 = [v6 initWithData_];

    sub_21BBBEF94(v3, v5);
    if (v8)
    {
      return v8;
    }
  }

  else
  {
  }

  v9 = sub_21BE289CC();
  v8 = [objc_opt_self() systemImageNamed_];

  if (v8)
  {
    return v8;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BC42268@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ParentalControlDataItem(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BC1E044(v1, v5);
  v6 = sub_21BC42098();
  return sub_21BC86024(v5, v6, a1);
}

uint64_t sub_21BC422F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_21BE289CC();
  [v0 setLocalizedDateFormatFromTemplate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D837D0];
  *(v2 + 16) = xmmword_21BE33260;
  *(v2 + 56) = v3;
  *(v2 + 32) = 1702125892;
  *(v2 + 40) = 0xE400000000000000;
  v4 = sub_21BE25CAC();
  v5 = [v0 stringFromDate_];

  v6 = sub_21BE28A0C();
  v8 = v7;

  *(v2 + 88) = v3;
  *(v2 + 64) = v6;
  *(v2 + 72) = v8;
  sub_21BE29AAC();

  v9 = sub_21BE25CAC();
  v10 = [v0 stringFromDate_];

  v11 = sub_21BE28A0C();
  return v11;
}

uint64_t sub_21BC42484(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_21BC424CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = *v0;
  v5 = type metadata accessor for CircleStateControllerHostView(0);
  sub_21BBF0D04(v0 + *(v5 + 20), v3);
  v6 = *(v0 + *(v5 + 24));
  type metadata accessor for CircleStateControllerHostView.Coordinator(0);
  v7 = swift_allocObject();
  v7[3] = 0;
  v8 = (v7 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete);
  *v8 = &unk_21BE39510;
  v8[1] = 0;
  v7[4] = v4;
  v9 = objc_allocWithZone(FACircleStateController);

  v10 = v4;
  v7[2] = [v9 init];
  sub_21BC438F8(v3, v7 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_url);
  *(v7 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_additionalParameters) = v6;
  return v7;
}

void *sub_21BC42608()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  MEMORY[0x28223BE20](v2);
  sub_21BE26EEC();
  sub_21BC43C84();
  v3 = sub_21BE2852C();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C10, &qword_21BE39528));
  v5 = MEMORY[0x277D85000];
  *&v4[*((*MEMORY[0x277D85000] & *v4) + qword_27CDD42E8 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = sub_21BE2774C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C08, &qword_21BE39518);
  sub_21BE27B1C();
  *(v6 + *((*v5 & *v6) + qword_27CDD42E8 + 16) + 8) = &off_282D8BAA8;
  swift_unknownObjectWeakAssign();

  sub_21BE27B1C();
  v7 = *(v3 + 16);

  [v7 setPresenter_];

  sub_21BE27B1C();
  v8 = (v1 + *(type metadata accessor for CircleStateControllerHostView(0) + 28));
  v10 = *v8;
  v9 = v8[1];
  v11 = (v3 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete);
  *v11 = v10;
  v11[1] = v9;

  return v6;
}

uint64_t sub_21BC42860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C08, &qword_21BE39518);
  sub_21BE27B1C();
  v5 = (v3 + *(a3 + 28));
  v7 = *v5;
  v6 = v5[1];
  v8 = (v10 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete);
  *v8 = v7;
  v8[1] = v6;
}

void *sub_21BC428EC@<X0>(void *a1@<X8>)
{
  result = sub_21BC424CC();
  *a1 = result;
  return result;
}

uint64_t sub_21BC42914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BC43C40(&qword_27CDB7C00, byte_21BE39448);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BC42994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BC43C40(&qword_27CDB7C00, byte_21BE39448);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BC42A14(uint64_t a1)
{
  sub_21BC43C40(&qword_27CDB7C00, byte_21BE39448);
  sub_21BE27ABC();
  __break(1u);
}

uint64_t sub_21BC42A58()
{
  if (*(v0 + 24))
  {

    sub_21BE28DDC();
  }

  sub_21BC12FE4(v0 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_url);

  return swift_deallocClassInstance();
}

void sub_21BC42B60(uint64_t a1)
{
  sub_21BBF088C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21BC42C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = sub_21BE26A4C();
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  sub_21BE28D7C();
  v7[31] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v7[32] = v10;
  v7[33] = v9;

  return MEMORY[0x2822009F8](sub_21BC42D6C, v10, v9);
}

uint64_t sub_21BC42D6C()
{
  v51 = v0;
  v1 = v0[22];
  v2 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[34] = v2;
  v3 = *(v1 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_additionalParameters);
  if (v3)
  {
    sub_21BCA31D4(v3);
    v4 = sub_21BE288EC();

    [v2 setAdditionalParameters_];
  }

  v49 = v3;
  v5 = v0[30];
  sub_21BBF0D04(v0[23], v5);
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  v47 = *(v7 + 48);
  v8 = v47(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = v0[30];
    v9 = sub_21BE25B2C();
    (*(v7 + 8))(v10, v6);
  }

  v46 = v7;
  v11 = v0[29];
  v12 = v0[23];
  v13 = v0[21];
  [v2 setUrlForContext_];

  sub_21BE2614C();
  sub_21BBF0D04(v12, v11);

  v14 = v13;
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FCC();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[29];
  if (v17)
  {
    v45 = v2;
    v19 = v0[28];
    v20 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v20 = 136315906;
    v21 = sub_21BE28A0C();
    v23 = sub_21BB3D81C(v21, v22, &v50);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    sub_21BBF0D04(v18, v19);
    v24 = v47(v19, 1, v6);
    v25 = v0[28];
    if (v24 == 1)
    {
      sub_21BC12FE4(v0[28]);
      v26 = 0xE100000000000000;
      v27 = 45;
    }

    else
    {
      v27 = sub_21BE25AFC();
      v26 = v31;
      (*(v46 + 8))(v25, v6);
    }

    v32 = v0[26];
    v48 = v0[27];
    v33 = v0[25];
    sub_21BC12FE4(v0[29]);
    v34 = sub_21BB3D81C(v27, v26, &v50);

    *(v20 + 14) = v34;
    *(v20 + 22) = 2080;
    v0[19] = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7BC8, &qword_21BE39430);
    v35 = sub_21BE28A5C();
    v37 = sub_21BB3D81C(v35, v36, &v50);

    *(v20 + 24) = v37;
    *(v20 + 32) = 2080;
    v0[20] = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7BD0, &qword_21BE39438);
    v38 = sub_21BE28A5C();
    v40 = sub_21BB3D81C(v38, v39, &v50);

    *(v20 + 34) = v40;
    _os_log_impl(&dword_21BB35000, v15, v16, "will load context with eventType: %s, url: %s, additionalParameters: %s %s", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v44, -1, -1);
    MEMORY[0x21CF05C50](v20, -1, -1);

    (*(v32 + 8))(v48, v33);
    v2 = v45;
  }

  else
  {
    v29 = v0[26];
    v28 = v0[27];
    v30 = v0[25];

    sub_21BC12FE4(v18);
    (*(v29 + 8))(v28, v30);
  }

  v41 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC432AC;
  v42 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_11;
  v0[14] = v42;
  [v41 performWithContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC432AC()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);

  return MEMORY[0x2822009F8](sub_21BC433B4, v2, v1);
}

uint64_t sub_21BC433B4()
{
  v1 = v0[22];
  v2 = v0[18];
  v0[35] = v2;
  v3 = (v1 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete);
  v4 = *v3;
  v0[36] = v3[1];

  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_21BC434D4;
  v6 = v0[24];

  return v8(v2, v6);
}

uint64_t sub_21BC434D4()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_21BC43618, v3, v2);
}

uint64_t sub_21BC43618()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BC436C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  if (a1)
  {
    if (!v1[3])
    {
      sub_21BE28D8C();
      v12 = sub_21BE28DAC();
      (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
      v13 = v1[4];
      v14 = v1[2];
      sub_21BBF0D04(v1 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_url, v7);
      sub_21BE28D7C();
      v15 = v13;
      v16 = v14;

      v17 = v1;
      v18 = sub_21BE28D6C();
      v19 = (*(v4 + 80) + 48) & ~*(v4 + 80);
      v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      v22 = MEMORY[0x277D85700];
      v21[2] = v18;
      v21[3] = v22;
      v21[4] = v15;
      v21[5] = v17;
      sub_21BC438F8(v7, v21 + v19);
      *(v21 + v20) = v16;
      v17[3] = sub_21BBA932C(0, 0, v11, &unk_21BE39420, v21);
    }
  }

  return result;
}

uint64_t sub_21BC438F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC43968(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21BBA6A64;

  return sub_21BC42C24(a1, v7, v8, v9, v10, v1 + v6, v11);
}

void sub_21BC43AF4(uint64_t a1)
{
  type metadata accessor for FACircleEventType(319);
  if (v1 <= 0x3F)
  {
    sub_21BBF088C(319);
    if (v2 <= 0x3F)
    {
      sub_21BC43BA8(319);
      if (v3 <= 0x3F)
      {
        sub_21BC41568();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BC43BA8(uint64_t a1)
{
  if (!qword_27CDB7BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7BF0, &qword_21BE39440);
    v1 = sub_21BE2946C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB7BE8);
    }
  }
}

uint64_t sub_21BC43C40(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CircleStateControllerHostView(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BC43C84()
{
  result = qword_27CDBC4E0;
  if (!qword_27CDBC4E0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7020, &qword_21BE39520);
    result = swift_getWitnessTable(MEMORY[0x277CDD7F8], v3, v0, v1);
    atomic_store(result, &qword_27CDBC4E0);
  }

  return result;
}

uint64_t sub_21BC43D3C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v3;
}

uint64_t sub_21BC43DA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC43E1C()
{
  sub_21BC46FB4();
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showAppleCardRow;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__hasPendingCardInvite, v3);
  v4(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showShareAppleCardFlow, v3);
  v4(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showAppleCardDetails, v3);
  v5 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__transactionLimitForMember;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C80, &qword_21BE3B3A0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t sub_21BC43FA4()
{
  sub_21BC43E1C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MemberDetailsAppleCardViewModel(uint64_t a1)
{
  result = qword_27CDB7C48;
  if (!qword_27CDB7C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC44050()
{
  v1[152] = v0;
  v2 = sub_21BE26A4C();
  v1[153] = v2;
  v1[154] = *(v2 - 8);
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  sub_21BE28D7C();
  v1[163] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[164] = v4;
  v1[165] = v3;

  return MEMORY[0x2822009F8](sub_21BC4419C, v4, v3);
}

uint64_t sub_21BC4419C()
{
  v1 = *(v0[152] + 32);
  v0[166] = v1;
  v0[10] = v0;
  v0[15] = v0 + 1422;
  v0[11] = sub_21BC442C4;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
  v0[167] = v3;
  v0[65] = v3;
  v0[58] = MEMORY[0x277D85DD0];
  v0[59] = 1107296256;
  v0[60] = sub_21BBDC4C4;
  v0[61] = &block_descriptor_12;
  v0[62] = v2;
  [v1 hasAppleCardWithCompletion_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_21BC442C4()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);

  return MEMORY[0x2822009F8](sub_21BC443CC, v2, v1);
}

uint64_t sub_21BC443CC()
{
  if (*(v0 + 1422) == 1)
  {
    v1 = *(v0 + 1328);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1208;
    *(v0 + 216) = sub_21BC4472C;
    v2 = swift_continuation_init();
    *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C60, &qword_21BE39660);
    *(v0 + 624) = v2;
    *(v0 + 592) = MEMORY[0x277D85DD0];
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_21BE17340;
    *(v0 + 616) = &block_descriptor_38;
    [v1 appleCardAccountStateWithCompletion_];

    return MEMORY[0x282200938](v0 + 208);
  }

  else
  {

    sub_21BE2614C();
    v3 = sub_21BE26A2C();
    v4 = sub_21BE28FFC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21BB35000, v3, v4, "MemberDetailsAppleCardViewModel, orgainzer does not have Apple Card", v5, 2u);
      MEMORY[0x21CF05C50](v5, -1, -1);
    }

    v6 = *(v0 + 1240);
    v7 = *(v0 + 1232);
    v8 = *(v0 + 1224);
    v9 = *(v0 + 1216);

    (*(v7 + 8))(v6, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1176) = 0;
    *(v0 + 1184) = 0xE000000000000000;

    sub_21BE26CBC();
    v10 = *(v9 + 16);
    v11 = *(v9 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    sub_21BE26CAC();

    sub_21BE20A9C(v10, v12, *(v0 + 1160), *(v0 + 1168));

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_21BC4472C()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);

  return MEMORY[0x2822009F8](sub_21BC44834, v2, v1);
}

uint64_t sub_21BC44834(uint64_t a1)
{
  v2 = v1[151];
  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21BB35000, v3, v4, "MemberDetailsAppleCardViewModel, current user account state %ld", v5, 0xCu);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v6 = v1[162];
  v7 = v1[154];
  v8 = v1[153];

  v9 = *(v7 + 8);
  v1[168] = v9;
  v1[169] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  if (v2 == 1)
  {
    v10 = *(v1[152] + 24);
    if (v10)
    {
      v11 = [v10 altDSID];
      if (v11)
      {
        v12 = v11;
        sub_21BE28A0C();
      }
    }

    v24 = v1[166];
    v25 = sub_21BE289CC();
    v1[170] = v25;

    v1[42] = v1;
    v1[47] = v1 + 149;
    v1[43] = sub_21BC44CA8;
    v26 = swift_continuation_init();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C68, &qword_21BE39668);
    v1[171] = v27;
    v1[105] = v27;
    v1[102] = v26;
    v1[98] = MEMORY[0x277D85DD0];
    v1[99] = 1107296256;
    v1[100] = sub_21BE17340;
    v1[101] = &block_descriptor_41;
    [v24 appleCardAccessLevelForAltDSID:v25 completion:v1 + 98];

    return MEMORY[0x282200938](v1 + 42);
  }

  else
  {

    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "MemberDetailsAppleCardViewModel, account state is not active. Don't show apple card row", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    v16 = v1[156];
    v17 = v1[153];
    v18 = v1[152];

    v9(v16, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    v1[141] = 0;
    v1[142] = 0xE000000000000000;

    sub_21BE26CBC();
    v19 = *(v18 + 16);
    v20 = *(v18 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    sub_21BE26CAC();

    sub_21BE20A9C(v19, v21, v1[139], v1[140]);

    v22 = v1[1];

    return v22();
  }
}

uint64_t sub_21BC44CA8()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);

  return MEMORY[0x2822009F8](sub_21BC44DB0, v2, v1);
}

uint64_t sub_21BC44DB0()
{
  v1 = *(v0 + 1192);

  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_21BB35000, v2, v3, "MemberDetailsAppleCardViewModel, current user access level %lu", v4, 0xCu);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = *(v0 + 1344);
  v6 = *(v0 + 1288);
  v7 = *(v0 + 1224);

  v5(v6, v7);
  if (v1 == 1)
  {
    v8 = *(v0 + 1216);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1421) = 1;

    sub_21BE26CBC();
    v9 = *(v8 + 16);
    *(v0 + 1376) = v9;
    v10 = [v9 altDSID];
    if (v10)
    {
      v11 = v10;
      sub_21BE28A0C();
    }

    v18 = *(v0 + 1336);
    v19 = *(v0 + 1328);
    v20 = sub_21BE289CC();
    *(v0 + 1384) = v20;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1416;
    *(v0 + 24) = sub_21BC451B0;
    v21 = swift_continuation_init();
    *(v0 + 904) = v18;
    *(v0 + 880) = v21;
    *(v0 + 848) = MEMORY[0x277D85DD0];
    *(v0 + 856) = 1107296256;
    *(v0 + 864) = sub_21BBDC4C4;
    *(v0 + 872) = &block_descriptor_50;
    [v19 appleCardIsSharedWithWithAltDSID:v20 completion:v0 + 848];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v12 = *(v0 + 1216);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1016) = 0;
    *(v0 + 1024) = 0xE000000000000000;

    sub_21BE26CBC();
    v13 = *(v12 + 16);
    v14 = *(v12 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v14;
    sub_21BE26CAC();

    sub_21BE20A9C(v13, v15, *(v0 + 984), *(v0 + 992));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_21BC451B0()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);

  return MEMORY[0x2822009F8](sub_21BC452B8, v2, v1);
}

uint64_t sub_21BC452B8()
{
  v32 = v0;
  v1 = *(v0 + 1416);

  if (v1 == 1)
  {
    sub_21BE2614C();

    v2 = sub_21BE26A2C();
    v3 = sub_21BE28FFC();

    if (os_log_type_enabled(v2, v3))
    {
      v29 = *(v0 + 1344);
      v30 = *(v0 + 1352);
      v4 = *(v0 + 1280);
      v5 = *(v0 + 1224);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136315138;
      v8 = sub_21BE2917C();
      v10 = sub_21BB3D81C(v8, v9, &v31);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_21BB35000, v2, v3, "MemberDetailsAppleCardViewModel, card shared with member %s, show details flow", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x21CF05C50](v7, -1, -1);
      MEMORY[0x21CF05C50](v6, -1, -1);

      v29(v4, v5);
    }

    else
    {
      v13 = *(v0 + 1344);
      v14 = *(v0 + 1280);
      v15 = *(v0 + 1224);

      v13(v14, v15);
    }

    v16 = *(v0 + 1376);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1417) = 1;

    sub_21BE26CBC();
    v17 = [v16 altDSID];
    if (v17)
    {
      v18 = v17;
      sub_21BE28A0C();
    }

    v19 = v0 + 272;
    v24 = *(v0 + 1368);
    v25 = *(v0 + 1328);
    v26 = sub_21BE289CC();
    *(v0 + 1392) = v26;

    *(v0 + 272) = v0;
    *(v0 + 312) = v0 + 1200;
    *(v0 + 280) = sub_21BC456C4;
    v27 = swift_continuation_init();
    *(v0 + 712) = v24;
    *(v0 + 688) = v27;
    *(v0 + 656) = MEMORY[0x277D85DD0];
    *(v0 + 664) = 1107296256;
    *(v0 + 672) = sub_21BE17340;
    *(v0 + 680) = &block_descriptor_74;
    [v25 appleCardAccessLevelForAltDSID:v26 completion:{v0 + 656, v29, v30, v31}];
  }

  else
  {
    v11 = [*(v0 + 1376) altDSID];
    if (v11)
    {
      v12 = v11;
      sub_21BE28A0C();
    }

    v19 = v0 + 400;
    v20 = *(v0 + 1336);
    v21 = *(v0 + 1328);
    v22 = sub_21BE289CC();
    *(v0 + 1408) = v22;

    *(v0 + 400) = v0;
    *(v0 + 440) = v0 + 1420;
    *(v0 + 408) = sub_21BC463B8;
    v23 = swift_continuation_init();
    *(v0 + 776) = v20;
    *(v0 + 752) = v23;
    *(v0 + 720) = MEMORY[0x277D85DD0];
    *(v0 + 728) = 1107296256;
    *(v0 + 736) = sub_21BBDC4C4;
    *(v0 + 744) = &block_descriptor_53;
    [v21 hasSentPendingAppleCardInvitationToUserWithAltDSID:v22 completion:{v0 + 720, v29, v30, v31}];
  }

  return MEMORY[0x282200938](v19);
}

uint64_t sub_21BC456C4()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);

  return MEMORY[0x2822009F8](sub_21BC457CC, v2, v1);
}

uint64_t sub_21BC457CC()
{
  v31 = v0;
  v1 = *(v0 + 1200);

  sub_21BE2614C();

  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();

  if (os_log_type_enabled(v2, v3))
  {
    v29 = *(v0 + 1344);
    v4 = *(v0 + 1272);
    v5 = *(v0 + 1224);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315394;
    v8 = sub_21BE2917C();
    v10 = sub_21BB3D81C(v8, v9, &v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v1;
    _os_log_impl(&dword_21BB35000, v2, v3, "MemberDetailsAppleCardViewModel, member access level %s : %lu", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x21CF05C50](v7, -1, -1);
    MEMORY[0x21CF05C50](v6, -1, -1);

    v29(v4, v5);
    if (v1 != 1)
    {
LABEL_3:
      v11 = *(v0 + 1376);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 1144) = 0;
      *(v0 + 1152) = 0xE000000000000000;

      sub_21BE26CBC();
      v12 = [v11 altDSID];
      if (v12)
      {
        v13 = v12;
        sub_21BE28A0C();
      }

      v26 = *(v0 + 1328);
      v27 = sub_21BE289CC();
      *(v0 + 1400) = v27;

      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 912;
      *(v0 + 152) = sub_21BC45CF4;
      v28 = swift_continuation_init();
      *(v0 + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C70, &unk_21BE39790);
      *(v0 + 560) = v28;
      *(v0 + 528) = MEMORY[0x277D85DD0];
      *(v0 + 536) = 1107296256;
      *(v0 + 544) = sub_21BC69644;
      *(v0 + 552) = &block_descriptor_77;
      [v26 appleCardTransactionLimitForAltDSID:v27 completion:v0 + 528];

      return MEMORY[0x282200938](v0 + 144);
    }
  }

  else
  {
    v14 = *(v0 + 1344);
    v15 = *(v0 + 1272);
    v16 = *(v0 + 1224);

    v14(v15, v16);
    if (v1 != 1)
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = sub_21BE2599C();
  v21 = v20;

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 936) = v19;
  *(v0 + 944) = v21;

  sub_21BE26CBC();
  v22 = *(*(v0 + 1216) + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v22;
  sub_21BE26CAC();

  sub_21BE20A9C(*(v0 + 1376), v23, *(v0 + 968), *(v0 + 976));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_21BC45CF4()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);

  return MEMORY[0x2822009F8](sub_21BC45DFC, v2, v1);
}

uint64_t sub_21BC45DFC()
{
  v1 = *(v0 + 1400);

  v2 = *(v0 + 912);
  v3 = *(v0 + 928);

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *(v0 + 1216);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = sub_21BE2599C();
    v10 = v9;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 952) = v8;
    *(v0 + 960) = v10;

    sub_21BE26CBC();

    v11 = (v0 + 1096);

    v12 = *(v5 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v12;
    sub_21BE26CAC();
    v14 = 1104;
  }

  else
  {
    v15 = objc_allocWithZone(MEMORY[0x277D37E50]);
    v16 = v2;

    v17 = sub_21BE289CC();

    v18 = [v15 initWithAmount:v16 currency:v17 exponent:0];

    if (v18)
    {
      v19 = [v18 formattedStringValue];
      v20 = *(v0 + 1216);
      if (v19)
      {
        v21 = v19;
        v22 = sub_21BE28A0C();
        v24 = v23;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_21BE32770;
        *(v25 + 56) = MEMORY[0x277D837D0];
        *(v25 + 64) = sub_21BBBEFE8();
        *(v25 + 32) = v22;
        *(v25 + 40) = v24;
        type metadata accessor for ConfirmChildAgeViewModel();
        v26 = swift_getObjCClassFromMetadata();
        v27 = objc_opt_self();

        v11 = (v0 + 968);
        v28 = [v27 bundleForClass_];
        sub_21BE2599C();

        v29 = sub_21BE289DC();
        v31 = v30;

        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 1000) = v29;
        *(v0 + 1008) = v31;

        sub_21BE26CBC();

        v32 = *(*(v0 + 1216) + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
        swift_getKeyPath();
        swift_getKeyPath();
        v13 = v32;
        sub_21BE26CAC();
        v14 = 976;
      }

      else
      {
        v11 = (v0 + 1032);

        v35 = *(v20 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
        swift_getKeyPath();
        swift_getKeyPath();
        v13 = v35;
        sub_21BE26CAC();
        v14 = 1040;
      }
    }

    else
    {
      v11 = (v0 + 1080);
      v33 = *(v0 + 1216);

      v34 = *(v33 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
      swift_getKeyPath();
      swift_getKeyPath();
      v13 = v34;
      sub_21BE26CAC();
      v14 = 1088;
    }
  }

  sub_21BE20A9C(*(v0 + 1376), v13, *v11, *(v0 + v14));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_21BC463B8()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);

  return MEMORY[0x2822009F8](sub_21BC464C0, v2, v1);
}

uint64_t sub_21BC464C0()
{
  v36 = v0;
  v1 = *(v0 + 1408);

  v2 = *(v0 + 1420);

  sub_21BE2614C();

  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();

  if (os_log_type_enabled(v3, v4))
  {
    v33 = *(v0 + 1344);
    v5 = *(v0 + 1264);
    v6 = *(v0 + 1224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315394;
    v9 = sub_21BE2917C();
    v11 = sub_21BB3D81C(v9, v10, &v35);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v2;
    _os_log_impl(&dword_21BB35000, v3, v4, "MemberDetailsAppleCardViewModel, %s hasPendingInviteForMember %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x21CF05C50](v8, -1, -1);
    MEMORY[0x21CF05C50](v7, -1, -1);

    v33(v5, v6);
    if ((v2 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = (v0 + 1418);
    goto LABEL_8;
  }

  v22 = *(v0 + 1344);
  v23 = *(v0 + 1264);
  v24 = *(v0 + 1224);

  v22(v23, v24);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = (v0 + 1419);
  sub_21BE2614C();

  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FFC();

  if (os_log_type_enabled(v13, v14))
  {
    v34 = *(v0 + 1344);
    v15 = *(v0 + 1256);
    v16 = *(v0 + 1224);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    v19 = sub_21BE2917C();
    v21 = sub_21BB3D81C(v19, v20, &v35);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_21BB35000, v13, v14, "MemberDetailsAppleCardViewModel, card not shared with member %s, show share flow", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x21CF05C50](v18, -1, -1);
    MEMORY[0x21CF05C50](v17, -1, -1);

    v34(v15, v16);
  }

  else
  {
    v25 = *(v0 + 1344);
    v26 = *(v0 + 1256);
    v27 = *(v0 + 1224);

    v25(v26, v27);
  }

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  *v12 = 1;

  sub_21BE26CBC();
  v28 = *(v0 + 1216);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1048) = 0;
  *(v0 + 1056) = 0xE000000000000000;

  sub_21BE26CBC();
  v29 = *(v28 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v29;
  sub_21BE26CAC();

  sub_21BE20A9C(*(v0 + 1376), v30, *(v0 + 1064), *(v0 + 1072));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_21BC4694C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "MemberDetailsAppleCardViewModel, got notification to update service account", v11, 2u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_21BE28D7C();

  v13 = sub_21BE28D6C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v1;
  sub_21BBA932C(0, 0, v4, &unk_21BE39608, v14);
}

uint64_t sub_21BC46B84()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BC44050();
}

void sub_21BC46C6C(uint64_t a1)
{
  sub_21BC46D8C(319, &qword_280BD6A70, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_21BC46D8C(319, &qword_27CDB7C58, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21BC46D8C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21BE26CCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21BC46DD8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MemberDetailsAppleCardViewModel(0);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t sub_21BC46E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BC46B84();
}

uint64_t sub_21BC46F44(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

unint64_t sub_21BC46FB4()
{
  result = qword_280BD6908;
  if (!qword_280BD6908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD6908);
  }

  return result;
}

void sub_21BC47030(void *a1)
{
  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21BE397B0;
  v6 = [v2 topAnchor];
  v7 = [a1 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [v2 leftAnchor];
  v10 = [a1 leftAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  v12 = [v2 rightAnchor];
  v13 = [a1 rightAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v5 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v5 + 56) = v17;
  sub_21BC47284();
  v18 = sub_21BE28C1C();

  [v4 activateConstraints_];
}

unint64_t sub_21BC47284()
{
  result = qword_27CDBBAE0;
  if (!qword_27CDBBAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDBBAE0);
  }

  return result;
}

uint64_t sub_21BC472D0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_21BC4732C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21BC473A8@<X0>(uint64_t a1@<X2>, BOOL *a3@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21BE26CAC();

    *a3 = (v5 & 1) == 0;
  }

  else
  {
    type metadata accessor for FamilyNetworkMonitor(0);
    sub_21BC49030();
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BC4746C(uint64_t a1, uint64_t a2)
{
  sub_21BE28D7C();

  v4 = sub_21BE28D6C();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_21BE2857C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v14, v9);

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();

  return v12;
}

uint64_t sub_21BC47664(uint64_t a1, uint64_t a2)
{
  sub_21BE28D7C();

  v4 = sub_21BE28D6C();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_21BE2857C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v12, v9);
  v10 = v12;

  if (v10 == 1)
  {
    if (qword_27CDB4FA8 != -1)
    {
      swift_once();
    }
  }

  else if (sub_21BE2866C())
  {
    return sub_21BE2833C();
  }

  else
  {
    return sub_21BE2832C();
  }
}

uint64_t sub_21BC477E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE282FC();
  sub_21BE2866C();
  sub_21BE2866C();
  sub_21BE2869C();
  sub_21BE26F2C();
  *&v13[3] = *&v13[27];
  *&v13[11] = *&v13[35];
  *&v13[19] = v14;
  *v7 = v2;
  *&v7[8] = 256;
  *&v7[10] = *v13;
  *&v7[26] = *&v13[8];
  *&v7[42] = *&v13[16];
  *&v7[56] = *(&v14 + 1);
  v3 = *v7;
  v4 = *&v7[16];
  v5 = *&v7[48];
  *(a1 + 32) = *&v7[32];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 64) = 1551;
  *(a1 + 72) = 0;
  *(a1 + 80) = &unk_282D85AF0;
  *(a1 + 88) = &unk_282D85B20;
  *(a1 + 96) = 0;
  sub_21BBA3854(v7, &v8, &qword_27CDB76F8, &qword_21BE387A0);
  v8 = v2;
  v9 = 256;
  v10 = *v13;
  v11 = *&v13[8];
  *v12 = *&v13[16];
  *&v12[14] = *&v13[23];
  return sub_21BB3A4CC(&v8, &qword_27CDB76F8, &qword_21BE387A0);
}

uint64_t sub_21BC4794C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C88, &qword_21BE39860);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C90, &qword_21BE39868);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  if (sub_21BE2866C())
  {
    v12 = sub_21BE2771C();
  }

  else
  {
    v12 = sub_21BE2770C();
  }

  *v8 = v12;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C98, &qword_21BE39870);
  sub_21BC47B58(a1, a2, &v8[*(v13 + 44)]);
  sub_21BE2869C();
  sub_21BE2725C();
  sub_21BBB7D84(v8, v11, &qword_27CDB7C88, &qword_21BE39860);
  v14 = &v11[*(v9 + 36)];
  v15 = v22[5];
  *(v14 + 4) = v22[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v22[6];
  v16 = v22[1];
  *v14 = v22[0];
  *(v14 + 1) = v16;
  v17 = v22[3];
  *(v14 + 2) = v22[2];
  *(v14 + 3) = v17;
  v18 = sub_21BE271CC();
  v19 = sub_21BE27B7C();
  sub_21BBB7D84(v11, a3, &qword_27CDB7C90, &qword_21BE39868);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CA0, &qword_21BE39878);
  v21 = a3 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = v19;
  return result;
}

uint64_t sub_21BC47B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v143 = a3;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CE8, &unk_21BE363C0);
  MEMORY[0x28223BE20](v127);
  v146 = &v115 - v5;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F80, &qword_21BE363B0);
  MEMORY[0x28223BE20](v128);
  v131 = &v115 - v6;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CA8, &qword_21BE39880);
  MEMORY[0x28223BE20](v130);
  v140 = &v115 - v7;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CB0, &qword_21BE39888);
  MEMORY[0x28223BE20](v137);
  v138 = &v115 - v8;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CB8, &qword_21BE39890);
  MEMORY[0x28223BE20](v135);
  v139 = &v115 - v9;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CC0, &qword_21BE39898);
  v10 = MEMORY[0x28223BE20](v136);
  v142 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v115 - v13;
  MEMORY[0x28223BE20](v12);
  v141 = &v115 - v14;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CC8, &unk_21BE398A0);
  MEMORY[0x28223BE20](v119);
  v125 = &v115 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CD0, &qword_21BE3E530);
  MEMORY[0x28223BE20](v123);
  v126 = &v115 - v16;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CD8, &qword_21BE398B0);
  MEMORY[0x28223BE20](v124);
  v122 = &v115 - v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CE0, &qword_21BE398B8);
  v18 = MEMORY[0x28223BE20](v121);
  v133 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v120 = &v115 - v21;
  MEMORY[0x28223BE20](v20);
  v149 = &v115 - v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CE8, &qword_21BE398C0);
  v129 = *(v132 - 8);
  v23 = MEMORY[0x28223BE20](v132);
  v145 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v115 - v25;
  v27 = sub_21BE275DC();
  v154 = 1;
  v147 = a1;
  v148 = a2;
  sub_21BC4892C(&v167);
  v161 = v173;
  v162 = v174;
  v163 = v175;
  v157 = v169;
  v158 = v170;
  v159 = v171;
  v160 = v172;
  v155 = v167;
  v156 = v168;
  v165[6] = v173;
  v165[7] = v174;
  v165[8] = v175;
  v165[2] = v169;
  v165[3] = v170;
  v165[4] = v171;
  v165[5] = v172;
  v164 = v176[0];
  v166 = v176[0];
  v165[0] = v167;
  v165[1] = v168;
  sub_21BBA3854(&v155, &v151, &qword_27CDB7CF0, &qword_21BE398C8);
  sub_21BB3A4CC(v165, &qword_27CDB7CF0, &qword_21BE398C8);
  *&v153[55] = v158;
  *&v153[39] = v157;
  *&v153[103] = v161;
  *&v153[119] = v162;
  *&v153[135] = v163;
  v153[151] = v164;
  *&v153[71] = v159;
  *&v153[87] = v160;
  *&v153[7] = v155;
  *&v153[23] = v156;
  *(&v152[6] + 1) = *&v153[96];
  *(&v152[7] + 1) = *&v153[112];
  *(&v152[8] + 1) = *&v153[128];
  *(&v152[2] + 1) = *&v153[32];
  *(&v152[3] + 1) = *&v153[48];
  *(&v152[4] + 1) = *&v153[64];
  *(&v152[5] + 1) = *&v153[80];
  *(v152 + 1) = *v153;
  v151 = v27;
  LOBYTE(v152[0]) = v154;
  *(&v152[9] + 1) = *&v153[144];
  *(&v152[1] + 1) = *&v153[16];
  sub_21BE2867C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CF8, &qword_21BE398D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D00, &unk_21BE398D8);
  sub_21BB3B038(&qword_27CDB7D08, &qword_27CDB7CF8, &qword_21BE398D0, MEMORY[0x277CE1138]);
  sub_21BC48C0C();
  v144 = v26;
  sub_21BE281EC();
  v174 = v152[6];
  v175 = v152[7];
  v176[0] = v152[8];
  *(v176 + 9) = *(&v152[8] + 9);
  v171 = v152[3];
  v172 = v152[4];
  v173 = v152[5];
  v167 = v151;
  v168 = v152[0];
  v169 = v152[1];
  v170 = v152[2];
  sub_21BB3A4CC(&v167, &qword_27CDB7CF8, &qword_21BE398D0);
  *&v151 = sub_21BC48E64();
  *(&v151 + 1) = v28;
  v118 = sub_21BB41FA4();
  v29 = sub_21BE27DBC();
  v31 = v30;
  v33 = v32;
  if (sub_21BE2866C())
  {
    sub_21BE27C7C();
  }

  else
  {
    sub_21BE27C0C();
  }

  v34 = sub_21BE27D9C();
  v36 = v35;
  v38 = v37;

  sub_21BBC7C7C(v29, v31, v33 & 1);

  v39 = sub_21BE27D8C();
  v116 = v40;
  v117 = v39;
  v42 = v41;
  v44 = v43;
  sub_21BBC7C7C(v34, v36, v38 & 1);

  LOBYTE(v34) = sub_21BE27B8C();
  v45 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v34)
  {
    v45 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v42 & 1;
  v154 = v42 & 1;
  v150 = 0;
  v55 = v125;
  v56 = &v125[*(v119 + 36)];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660);
  v57 = *(v119 + 28);
  v58 = sub_21BE27D7C();
  v59 = *(*(v58 - 8) + 56);
  v59(v56 + v57, 1, 1, v58);
  *v56 = swift_getKeyPath();
  v60 = v116;
  *v55 = v117;
  *(v55 + 8) = v60;
  *(v55 + 16) = v54;
  *(v55 + 24) = v44;
  *(v55 + 32) = v45;
  *(v55 + 40) = v47;
  *(v55 + 48) = v49;
  *(v55 + 56) = v51;
  *(v55 + 64) = v53;
  *(v55 + 72) = 0;
  v61 = sub_21BE2832C();
  KeyPath = swift_getKeyPath();
  v63 = v126;
  sub_21BBB7D84(v55, v126, &qword_27CDB7CC8, &unk_21BE398A0);
  v64 = (v63 + *(v123 + 36));
  *v64 = KeyPath;
  v64[1] = v61;
  LOBYTE(KeyPath) = (sub_21BE2866C() & 1) == 0;
  v65 = swift_getKeyPath();
  v66 = v63;
  v67 = v122;
  sub_21BBB7D84(v66, v122, &qword_27CDB7CD0, &qword_21BE3E530);
  v68 = v67 + *(v124 + 36);
  *v68 = v65;
  *(v68 + 8) = KeyPath;
  v69 = v120;
  sub_21BBB7D84(v67, v120, &qword_27CDB7CD8, &qword_21BE398B0);
  *(v69 + *(v121 + 36)) = 256;
  sub_21BBB7D84(v69, v149, &qword_27CDB7CE0, &qword_21BE398B8);
  *&v151 = sub_21BC4746C(v147, v148);
  *(&v151 + 1) = v70;
  v71 = sub_21BE27DBC();
  v73 = v72;
  LOBYTE(v67) = v74;
  v76 = v75;
  v77 = v146;
  v78 = (v146 + *(v127 + 36));
  v59(v78 + *(v119 + 28), 1, 1, v58);
  *v78 = swift_getKeyPath();
  *v77 = v71;
  *(v77 + 8) = v73;
  *(v77 + 16) = v67 & 1;
  *(v77 + 24) = v76;
  if (sub_21BE2866C())
  {
    v79 = sub_21BE27C8C();
  }

  else
  {
    v79 = sub_21BE27BFC();
  }

  v80 = v79;
  v81 = v140;
  v82 = swift_getKeyPath();
  v83 = v131;
  sub_21BBB7D84(v146, v131, &qword_27CDB5CE8, &unk_21BE363C0);
  v84 = (v83 + *(v128 + 36));
  *v84 = v82;
  v84[1] = v80;
  v85 = sub_21BC47664(v147, v148);
  v86 = swift_getKeyPath();
  sub_21BBB7D84(v83, v81, &qword_27CDB6F80, &qword_21BE363B0);
  v87 = (v81 + *(v130 + 36));
  *v87 = v86;
  v87[1] = v85;
  LOBYTE(v86) = sub_21BE27B9C();
  v88 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v86)
  {
    v88 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v97 = v138;
  sub_21BBB7D84(v81, v138, &qword_27CDB7CA8, &qword_21BE39880);
  v98 = v97 + *(v137 + 36);
  *v98 = v88;
  *(v98 + 8) = v90;
  *(v98 + 16) = v92;
  *(v98 + 24) = v94;
  *(v98 + 32) = v96;
  *(v98 + 40) = 0;
  v99 = v139;
  sub_21BBB7D84(v97, v139, &qword_27CDB7CB0, &qword_21BE39888);
  *(v99 + *(v135 + 36)) = 256;
  LOBYTE(v97) = (sub_21BE2866C() & 1) == 0;
  v100 = swift_getKeyPath();
  v101 = v99;
  v102 = v134;
  sub_21BBB7D84(v101, v134, &qword_27CDB7CB8, &qword_21BE39890);
  v103 = v102 + *(v136 + 36);
  *v103 = v100;
  *(v103 + 8) = v97;
  v104 = v141;
  sub_21BBB7D84(v102, v141, &qword_27CDB7CC0, &qword_21BE39898);
  v105 = v129;
  v106 = *(v129 + 16);
  v107 = v145;
  v108 = v132;
  v106(v145, v144, v132);
  v109 = v133;
  sub_21BBA3854(v149, v133, &qword_27CDB7CE0, &qword_21BE398B8);
  v110 = v142;
  sub_21BBA3854(v104, v142, &qword_27CDB7CC0, &qword_21BE39898);
  v111 = v143;
  v106(v143, v107, v108);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D18, &unk_21BE399A8);
  sub_21BBA3854(v109, &v111[*(v112 + 48)], &qword_27CDB7CE0, &qword_21BE398B8);
  sub_21BBA3854(v110, &v111[*(v112 + 64)], &qword_27CDB7CC0, &qword_21BE39898);
  sub_21BB3A4CC(v104, &qword_27CDB7CC0, &qword_21BE39898);
  sub_21BB3A4CC(v149, &qword_27CDB7CE0, &qword_21BE398B8);
  v113 = *(v105 + 8);
  v113(v144, v108);
  sub_21BB3A4CC(v110, &qword_27CDB7CC0, &qword_21BE39898);
  sub_21BB3A4CC(v109, &qword_27CDB7CE0, &qword_21BE398B8);
  return (v113)(v145, v108);
}

uint64_t sub_21BC4892C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21BE2869C();
  v5 = v4;
  sub_21BC477E4(&v27);
  v20 = v31;
  v21 = v32;
  v22 = v33;
  v16 = v27;
  v17 = v28;
  v18 = v29;
  v19 = v30;
  v23[0] = v27;
  v23[1] = v28;
  v23[2] = v29;
  v23[3] = v30;
  v23[4] = v31;
  v23[5] = v32;
  v24 = v33;
  sub_21BBA3854(&v16, v25, &qword_27CDB7D20, &qword_21BE39A00);
  sub_21BB3A4CC(v23, &qword_27CDB7D20, &qword_21BE39A00);
  v32 = v20;
  v33 = v21;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v25[1] = v16;
  v25[2] = v17;
  v34 = v22;
  v15 = 1;
  *&v25[0] = v3;
  *(&v25[0] + 1) = v5;
  v26 = v22;
  v25[5] = v20;
  v25[6] = v21;
  v25[3] = v18;
  v25[4] = v19;
  *&v14[55] = v18;
  *&v14[39] = v17;
  *&v14[23] = v16;
  *&v14[7] = v25[0];
  v14[119] = v22;
  *&v14[103] = v21;
  *&v14[87] = v20;
  *&v14[71] = v19;
  v13[120] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v6 = *v14;
  v7 = *&v14[16];
  v8 = *&v14[32];
  *(a2 + 57) = *&v14[48];
  *(a2 + 41) = v8;
  *(a2 + 25) = v7;
  *(a2 + 9) = v6;
  v9 = *&v14[64];
  v10 = *&v14[80];
  v11 = *&v14[96];
  *(a2 + 121) = *&v14[112];
  *(a2 + 105) = v11;
  *(a2 + 89) = v10;
  *(a2 + 73) = v9;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  *&v27 = v3;
  *(&v27 + 1) = v5;
  sub_21BBA3854(v25, v13, &qword_27CDB7D28, &qword_21BE39A08);
  return sub_21BB3A4CC(&v27, &qword_27CDB7D28, &qword_21BE39A08);
}

uint64_t sub_21BC48AF0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[9];
  v27[8] = a1[8];
  v28[0] = v4;
  *(v28 + 9) = *(a1 + 153);
  v5 = a1[5];
  v27[4] = a1[4];
  v27[5] = v5;
  v6 = a1[7];
  v27[6] = a1[6];
  v27[7] = v6;
  v7 = a1[1];
  v27[0] = *a1;
  v27[1] = v7;
  v8 = a1[3];
  v27[2] = a1[2];
  v27[3] = v8;
  v9 = sub_21BE27B9C();
  sub_21BE26E0C();
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[6];
  v36 = a1[7];
  v37 = v10;
  v38[0] = v11;
  *(v38 + 9) = *(a1 + 153);
  v13 = a1[5];
  v33 = a1[4];
  v34 = v13;
  v35 = v12;
  v14 = a1[1];
  v29 = *a1;
  v30 = v14;
  v15 = a1[3];
  v31 = a1[2];
  v32 = v15;
  v16 = v38[0];
  *(a2 + 128) = v37;
  *(a2 + 144) = v16;
  *(a2 + 160) = v38[1];
  v17 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v17;
  v18 = v36;
  *(a2 + 96) = v35;
  *(a2 + 112) = v18;
  v19 = v30;
  *a2 = v29;
  *(a2 + 16) = v19;
  v20 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v20;
  *(a2 + 176) = v9;
  *(a2 + 184) = v21;
  *(a2 + 192) = v22;
  *(a2 + 200) = v23;
  *(a2 + 208) = v24;
  *(a2 + 216) = 0;
  return sub_21BBA3854(v27, v26, &qword_27CDB7CF8, &qword_21BE398D0);
}

unint64_t sub_21BC48C0C()
{
  result = qword_27CDB7D10;
  if (!qword_27CDB7D10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7D00, &unk_21BE398D8);
    v4[0] = sub_21BB3B038(&qword_27CDB7D08, &qword_27CDB7CF8, &qword_21BE398D0, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB7D10);
  }

  return result;
}

uint64_t sub_21BC48CC4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v4;
  return result;
}

uint64_t sub_21BC48D44(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BC48DB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE2740C();
  *a1 = result;
  return result;
}

uint64_t sub_21BC48E0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2735C();
  *a1 = result;
  return result;
}

uint64_t sub_21BC48E64()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D07F38], v0);
  MEMORY[0x21CF01150](v3);
  (*(v1 + 8))(v3, v0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE2599C();

  return v6;
}

unint64_t sub_21BC49030()
{
  result = qword_27CDBC320;
  if (!qword_27CDBC320)
  {
    v3 = type metadata accessor for FamilyNetworkMonitor(255);
    result = swift_getWitnessTable(protocol conformance descriptor for FamilyNetworkMonitor, v3, v0, v1);
    atomic_store(result, &qword_27CDBC320);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_21BC490C8()
{
  result = qword_27CDB7D30;
  if (!qword_27CDB7D30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7CA0, &qword_21BE39878);
    v4[0] = sub_21BC49154();
    v4[1] = MEMORY[0x277CE0880];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB7D30);
  }

  return result;
}

unint64_t sub_21BC49154()
{
  result = qword_27CDB7D38;
  if (!qword_27CDB7D38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7C90, &qword_21BE39868);
    v4[0] = sub_21BB3B038(&qword_27CDB7D40, &qword_27CDB7C88, &qword_21BE39860, MEMORY[0x277CE1198]);
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB7D38);
  }

  return result;
}

uint64_t sub_21BC49210()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v1[4] = swift_task_alloc();
  sub_21BE28D7C();
  v1[5] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_21BC492E0, v3, v2);
}

void sub_21BC492E0()
{
  v1 = *(v0[3] + 40);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_21BBE7748;
    v5 = v0[4];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC493F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[4] = swift_task_alloc();
  sub_21BE28D7C();
  v2[5] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_21BC494C4, v4, v3);
}

void sub_21BC494C4()
{
  v1 = *(v0[3] + 40);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_21BC495D8;
    v5 = v0[4];
    v6 = v0[2];

    v7(v6, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC495D8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  sub_21BB3A4CC(v3, &qword_27CDB5790, &qword_21BE32800);

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_21BBDDD54;
  }

  else
  {
    v6 = sub_21BBDDCE8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BC49764(void *__src)
{
  memcpy(v6, __src, sizeof(v6));
  v2 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 16)) = 0;
  *(v1 + *((*v2 & *v1) + qword_27CDD4138 + 24)) = 0;
  *(v1 + *((*v2 & *v1) + qword_27CDD4138 + 32)) = 0;
  *(v1 + *((*v2 & *v1) + qword_27CDD4138 + 40)) = 0;
  v3 = *((*v2 & *v1) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v1 + v3) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v4 = *((*v2 & *v1) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v1 + v4) = qword_280BD79E0;

  return sub_21BE2774C();
}

uint64_t sub_21BC499C8(uint64_t a1)
{
  v3 = type metadata accessor for MultipleInviteViewForInvitee(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 16)) = 0;
  *(v1 + *((*v6 & *v1) + qword_27CDD4138 + 24)) = 0;
  *(v1 + *((*v6 & *v1) + qword_27CDD4138 + 32)) = 0;
  *(v1 + *((*v6 & *v1) + qword_27CDD4138 + 40)) = 0;
  v7 = *((*v6 & *v1) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v1 + v7) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v8 = *((*v6 & *v1) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v1 + v8) = qword_280BD79E0;
  sub_21BC50054(a1, v5);

  v9 = sub_21BE2774C();
  sub_21BC500B8(a1);
  return v9;
}

uint64_t sub_21BC49C88(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D85000];
  *(v2 + *((*MEMORY[0x277D85000] & *v2) + qword_27CDD4138 + 16)) = 0;
  *(v2 + *((*v3 & *v2) + qword_27CDD4138 + 24)) = 0;
  *(v2 + *((*v3 & *v2) + qword_27CDD4138 + 32)) = 0;
  *(v2 + *((*v3 & *v2) + qword_27CDD4138 + 40)) = 0;
  v4 = *((*v3 & *v2) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v2 + v4) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v5 = *((*v3 & *v2) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v2 + v5) = qword_280BD79E0;

  return sub_21BE2774C();
}

uint64_t sub_21BC49EE0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = MEMORY[0x277D85000];
  *(v3 + *((*MEMORY[0x277D85000] & *v3) + qword_27CDD4138 + 16)) = 0;
  *(v3 + *((*v4 & *v3) + qword_27CDD4138 + 24)) = 0;
  *(v3 + *((*v4 & *v3) + qword_27CDD4138 + 32)) = 0;
  *(v3 + *((*v4 & *v3) + qword_27CDD4138 + 40)) = 0;
  v5 = *((*v4 & *v3) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v3 + v5) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v6 = *((*v4 & *v3) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v3 + v6) = qword_280BD79E0;

  return sub_21BE2774C();
}

uint64_t sub_21BC4A140()
{
  result = sub_21BE289CC();
  qword_280BD7EF8 = result;
  return result;
}

id static FamilySettingsFactory.FamilySettingsViewsHaveChanged.getter()
{
  if (qword_280BD7EF0 != -1)
  {
    swift_once();
  }

  v1 = qword_280BD7EF8;

  return v1;
}

void *sub_21BC4A268()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 48);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_21BE2950C();
    sub_21BE26BDC();
    sub_21BC5000C(&qword_27CDB6E60, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_21BE28E7C();
    v2 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_21BC50480(v2);
      *(v1 + 48) = MEMORY[0x277D84FA0];

      v16 = [objc_opt_self() defaultCenter];
      [v16 removeObserver_];

      v17 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_invitationStatus;
      v18 = sub_21BE2626C();
      (*(*(v18 - 8) + 8))(v1 + v17, v18);

      return v1;
    }

    while (1)
    {
      sub_21BE26BCC();

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_21BE2953C())
      {
        sub_21BE26BDC();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC4A59C()
{
  sub_21BC4A268();

  return swift_deallocClassInstance();
}

uint64_t sub_21BC4A5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_21BE28D7C();
  *(v4 + 56) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC4A694, v6, v5);
}

uint64_t sub_21BC4A694()
{
  v7 = v0;
  v1 = v0[6];

  sub_21BB422BC(&v6);
  v3 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint);
  v2 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint + 8);
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v3;
  v0[3] = v2;

  sub_21BC4A744(&v6, (v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = v0[1];

  return v4();
}

void sub_21BC4A744(char *a1, uint64_t a2)
{
  v4 = *a1;
  sub_21BB422BC(&v12);
  v5 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus;
  v6 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus);
  if (v12 == 5)
  {
    if (v6 == 5)
    {
      goto LABEL_7;
    }

LABEL_6:
    v7 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView);
    *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView) = 0;

    *(v2 + v5) = 0;
    goto LABEL_7;
  }

  if (v6 == 5 || (sub_21BB42864(v12, v6) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = [objc_opt_self() defaultCenter];
  if (qword_280BD7EF0 != -1)
  {
    swift_once();
  }

  v9 = qword_280BD7EF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DF8, &unk_21BE39E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  v12 = 0x7574617453776F72;
  v13 = 0xE900000000000073;
  sub_21BE2958C();
  *(inited + 96) = &type metadata for FamilyRowStatus;
  *(inited + 72) = v4;
  v12 = 0x6565757172616DLL;
  v13 = 0xE700000000000000;
  sub_21BE2958C();
  sub_21BB3DCD4(a2, inited + 144);
  sub_21BBB5D24(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5900, &qword_21BE32AB0);
  swift_arrayDestroy();
  v11 = sub_21BE288EC();

  [v8 postNotificationName:v9 object:0 userInfo:v11];
}

uint64_t sub_21BC4A978()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 96);
  if (v0)
  {

    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);
    v5 = *(v3 + 152);
    v6 = *(v3 + 160);
    v7 = sub_21BC4AC50;
  }

  else
  {
    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v3 + 152);
    v6 = *(v3 + 160);
    v7 = sub_21BC4AB08;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BC4AB08()
{

  v0[26] = v0[6];
  v1 = v0[15];
  v2 = v0[16];

  return MEMORY[0x2822009F8](sub_21BC4AB74, v1, v2);
}

uint64_t sub_21BC4AB74()
{
  v1 = v0[9];
  v2 = *(v1 + 56);
  *(v1 + 56) = v0[26];

  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  v0[27] = qword_280BDCBF0;
  v0[28] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v0[29] = v4;
  v0[30] = v3;

  return MEMORY[0x2822009F8](sub_21BC4AD8C, v4, v3);
}

uint64_t sub_21BC4AC50()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_21BC4ACB4, v1, v2);
}

uint64_t sub_21BC4ACB4()
{
  v1 = v0[9];
  v2 = *(v1 + 56);
  *(v1 + 56) = 0;

  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  v0[27] = qword_280BDCBF0;
  v0[28] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v0[29] = v4;
  v0[30] = v3;

  return MEMORY[0x2822009F8](sub_21BC4AD8C, v4, v3);
}

void sub_21BC4AD8C()
{
  v1 = *(*(v0 + 216) + 40);
  *(v0 + 248) = v1;
  if (v1)
  {
    (*(v0 + 184))(*(v0 + 88), 1, 1, *(v0 + 176));
    v4 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v2 = swift_task_alloc();
    *(v0 + 256) = v2;
    *v2 = v0;
    v2[1] = sub_21BC4AE74;
    v3 = *(v0 + 88);

    v4(v0 + 56, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC4AE74()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 88);
  if (v0)
  {

    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);
    v5 = *(v3 + 232);
    v6 = *(v3 + 240);
    v7 = sub_21BC4B138;
  }

  else
  {
    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v3 + 232);
    v6 = *(v3 + 240);
    v7 = sub_21BC4B004;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BC4B004()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_21BC4B070, v1, v2);
}

uint64_t sub_21BC4B070(uint64_t a1)
{
  if (qword_280BD86B0 != -1)
  {
    swift_once();
  }

  v1[33] = qword_280BD86B8;
  v1[34] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v1[35] = v3;
  v1[36] = v2;

  return MEMORY[0x2822009F8](sub_21BC4B19C, v3, v2);
}

uint64_t sub_21BC4B138()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_21BC504D8, v1, v2);
}

void sub_21BC4B19C()
{
  v1 = *(*(v0 + 264) + 40);
  *(v0 + 296) = v1;
  if (v1)
  {
    (*(v0 + 184))(*(v0 + 80), 1, 1, *(v0 + 176));
    v4 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v2 = swift_task_alloc();
    *(v0 + 304) = v2;
    *v2 = v0;
    v2[1] = sub_21BC4B284;
    v3 = *(v0 + 80);

    v4(v0 + 16, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC4B284()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 80);
  if (v0)
  {

    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);
    v5 = *(v3 + 280);
    v6 = *(v3 + 288);
    v7 = sub_21BC4B584;
  }

  else
  {

    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v3 + 280);
    v6 = *(v3 + 288);
    v7 = sub_21BC4B428;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BC4B428()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_21BC4B48C, v1, v2);
}

uint64_t sub_21BC4B48C()
{
  v1 = v0[9];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount);
  *(v1 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount) = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BC4B584()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_21BC504DC, v1, v2);
}

uint64_t sub_21BC4B5E8()
{
  v19 = v0;

  sub_21BE260FC();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FFC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_21BB3D81C(0xD000000000000018, 0x800000021BE581A0, &v18);
    _os_log_impl(&dword_21BB35000, v1, v2, "%s account change", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x21CF05C50](v8, -1, -1);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = v0[6];
    v12 = sub_21BE28DAC();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

    v13 = sub_21BE28D6C();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v10;
    sub_21BBA932C(0, 0, v11, &unk_21BE39DC0, v14);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_21BC4B848()
{
  v62 = v0;

  sub_21BE260FC();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FFC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v61 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_21BB3D81C(0xD000000000000018, 0x800000021BE581A0, &v61);
    _os_log_impl(&dword_21BB35000, v1, v2, "%s family circle change", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x21CF05C50](v8, -1, -1);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = v0[36];
    v11 = v0[28];
    v12 = v0[29];
    v13 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_invitationStatus;
    v14 = Strong;
    swift_beginAccess();
    (*(v12 + 16))(v10, v14 + v13, v11);

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v0[35];
  v17 = v0[28];
  v18 = *(v0[29] + 56);
  v18(v0[36], v15, 1, v17);
  v18(v16, 1, 1, v17);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v19 = v0[23];
    if (v19)
    {
      v21 = v0[34];
      v20 = v0[35];
      v22 = v0[28];
      sub_21BE2909C();
      sub_21BB3A4CC(v20, &qword_27CDB7DF0, &qword_21BE39D50);
      v18(v21, 0, 1, v22);
      sub_21BC5031C(v21, v20);
      swift_beginAccess();
      v23 = swift_weakLoadStrong();
      if (v23)
      {
        v24 = *(v23 + 56);
        *(v23 + 56) = v19;
        v25 = v19;
      }

      v26 = v0[33];
      v27 = v0[28];
      v28 = v0[29];
      sub_21BBA3854(v0[35], v26, &qword_27CDB7DF0, &qword_21BE39D50);
      v29 = (*(v28 + 48))(v26, 1, v27);
      v30 = v0[33];
      if (v29 == 1)
      {

        sub_21BB3A4CC(v30, &qword_27CDB7DF0, &qword_21BE39D50);
      }

      else
      {
        (*(v0[29] + 32))(v0[31], v0[33], v0[28]);
        swift_beginAccess();
        v31 = swift_weakLoadStrong();

        if (v31)
        {
          v32 = v0[31];
          v33 = v0[28];
          v34 = v0[29];
          v35 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_invitationStatus;
          swift_beginAccess();
          (*(v34 + 24))(v31 + v35, v32, v33);
          swift_endAccess();
        }

        (*(v0[29] + 8))(v0[31], v0[28]);
      }
    }
  }

  v36 = v0[35];
  v37 = v0[28];
  v38 = v0[29];
  v39 = v0[27];
  v40 = *(v0[26] + 48);
  sub_21BBA3854(v0[36], v39, &qword_27CDB7DF0, &qword_21BE39D50);
  sub_21BBA3854(v36, v39 + v40, &qword_27CDB7DF0, &qword_21BE39D50);
  v41 = *(v38 + 48);
  if (v41(v39, 1, v37) == 1)
  {
    if (v41(v39 + v40, 1, v0[28]) == 1)
    {
      sub_21BB3A4CC(v0[27], &qword_27CDB7DF0, &qword_21BE39D50);
      goto LABEL_24;
    }
  }

  else
  {
    v42 = v0[28];
    sub_21BBA3854(v0[27], v0[32], &qword_27CDB7DF0, &qword_21BE39D50);
    v43 = v41(v39 + v40, 1, v42);
    v44 = v0[32];
    if (v43 != 1)
    {
      v53 = v0[29];
      v52 = v0[30];
      v55 = v0[27];
      v54 = v0[28];
      (*(v53 + 32))(v52, v39 + v40, v54);
      sub_21BC5000C(&qword_280BD89D0, MEMORY[0x277D07FC0], MEMORY[0x277D07FC8]);
      v56 = sub_21BE2899C();
      v57 = *(v53 + 8);
      v57(v52, v54);
      v57(v44, v54);
      sub_21BB3A4CC(v55, &qword_27CDB7DF0, &qword_21BE39D50);
      if (v56)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    (*(v0[29] + 8))(v0[32], v0[28]);
  }

  sub_21BB3A4CC(v0[27], &qword_27CDB7DE8, &qword_21BE39D48);
LABEL_21:
  swift_beginAccess();
  v45 = swift_weakLoadStrong();
  if (v45)
  {
    v46 = v45;
    v47 = v0[25];
    v48 = sub_21BE28DAC();
    (*(*(v48 - 8) + 56))(v47, 1, 1, v48);

    v49 = sub_21BE28D6C();
    v50 = swift_allocObject();
    v51 = MEMORY[0x277D85700];
    v50[2] = v49;
    v50[3] = v51;
    v50[4] = v46;
    sub_21BBA932C(0, 0, v47, &unk_21BE39DA0, v50);
  }

LABEL_24:
  v58 = v0[36];
  sub_21BB3A4CC(v0[35], &qword_27CDB7DF0, &qword_21BE39D50);
  sub_21BB3A4CC(v58, &qword_27CDB7DF0, &qword_21BE39D50);

  v59 = v0[1];

  return v59();
}

uint64_t sub_21BC4C004(uint64_t a1, uint64_t a2)
{
  v2[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[10] = swift_task_alloc();
  v3 = sub_21BE25D6C();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_21BE26A4C();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = sub_21BE28D7C();
  v2[19] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC4C19C, v6, v5);
}

uint64_t sub_21BC4C19C()
{
  v41 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_21BE260FC();
    v3 = sub_21BE26A2C();
    v4 = sub_21BE28FFC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[17];
    v7 = v0[14];
    v8 = v0[15];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v40 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_21BB3D81C(0xD000000000000018, 0x800000021BE581A0, &v40);
      _os_log_impl(&dword_21BB35000, v3, v4, "%s family marque change", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x21CF05C50](v10, -1, -1);
      MEMORY[0x21CF05C50](v9, -1, -1);
    }

    v11 = *(v8 + 8);
    v11(v6, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v13 = v0[2];
    v12 = v0[3];
    v15 = v0[4];
    v14 = v0[5];
    v16 = (v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages);
    v17 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages + 16);
    v18 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages + 24);
    v19 = v13 == *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages) && v12 == *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages + 8);
    if (v19 || (sub_21BE2995C()) && (v15 == v17 && v14 == v18 || (sub_21BE2995C()))
    {

      sub_21BE260FC();
      v20 = sub_21BE26A2C();
      v21 = sub_21BE28FCC();
      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[16];
      v24 = v0[14];
      if (v22)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_21BB35000, v20, v21, "No real marque changes detected", v25, 2u);
        MEMORY[0x21CF05C50](v25, -1, -1);
      }

      else
      {
      }

      v11(v23, v24);
    }

    else
    {
      v26 = v0[12];
      v27 = v0[13];
      v38 = v0[11];
      v39 = v0[10];
      *v16 = v13;
      v16[1] = v12;
      v16[2] = v15;
      v16[3] = v14;

      sub_21BE25D5C();
      v28 = sub_21BE25D2C();
      v30 = v29;
      (*(v26 + 8))(v27, v38);
      v31 = (v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint);
      *v31 = v28;
      v31[1] = v30;

      v32 = sub_21BE28DAC();
      (*(*(v32 - 8) + 56))(v39, 1, 1, v32);

      v33 = sub_21BE28D6C();
      v34 = swift_allocObject();
      v35 = MEMORY[0x277D85700];
      v34[2] = v33;
      v34[3] = v35;
      v34[4] = v2;
      sub_21BBA932C(0, 0, v39, &unk_21BE39D30, v34);
    }
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_21BC4C608()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBDBEE0, v1, v0);
}

uint64_t sub_21BC4C744@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21BE275DC();
  sub_21BC4CAD4(&v49);
  v33 = *&v50[16];
  v34 = *&v50[32];
  v35 = *&v50[48];
  v31 = v49;
  v32 = *v50;
  v36[2] = *&v50[16];
  v36[3] = *&v50[32];
  v37 = *&v50[48];
  v36[0] = v49;
  v36[1] = *v50;
  sub_21BBA3854(&v31, &v46, &qword_27CDB7D98, &qword_21BE39C38);
  sub_21BB3A4CC(v36, &qword_27CDB7D98, &qword_21BE39C38);
  *(&v30[1] + 7) = v32;
  *(&v30[2] + 7) = v33;
  *(&v30[3] + 7) = v34;
  *(&v30[4] + 7) = v35;
  *(v30 + 7) = v31;
  v4 = sub_21BE275DC();
  LOBYTE(v20[0]) = 1;
  sub_21BC4CCFC(&v49);
  v40 = *&v50[16];
  v41 = *&v50[32];
  v38 = v49;
  v39 = *v50;
  v43[1] = *v50;
  v43[2] = *&v50[16];
  v43[3] = *&v50[32];
  v43[4] = *&v50[48];
  v42 = *&v50[48];
  v43[0] = v49;
  sub_21BBA3854(&v38, &v46, &qword_27CDB7DA0, &qword_21BE39C40);
  sub_21BB3A4CC(v43, &qword_27CDB7DA0, &qword_21BE39C40);
  *&v29[23] = v39;
  *&v29[39] = v40;
  *&v29[55] = v41;
  *&v29[71] = v42;
  *&v29[7] = v38;
  v5 = sub_21BE282DC();
  v6 = sub_21BE27B7C();
  v44[0] = v3;
  v44[1] = 0;
  LOBYTE(v45[0]) = 1;
  *(v45 + 1) = v30[0];
  *(&v45[3] + 1) = v30[3];
  *(&v45[2] + 1) = v30[2];
  *(&v45[1] + 1) = v30[1];
  v45[4] = *(&v30[3] + 15);
  *&v27[23] = v45[0];
  *&v27[7] = v3;
  *&v27[87] = *(&v30[3] + 15);
  *&v27[71] = v45[3];
  *&v27[55] = v45[2];
  *&v27[39] = v45[1];
  v7 = *&v29[16];
  *&v47[17] = *&v29[16];
  v8 = *v29;
  *&v47[1] = *v29;
  *&v47[80] = *&v29[79];
  v9 = *&v29[64];
  *&v47[65] = *&v29[64];
  v10 = *&v29[48];
  *&v47[49] = *&v29[48];
  v11 = *&v29[32];
  *&v47[33] = *&v29[32];
  v12 = *&v27[48];
  *(a2 + 41) = *&v27[32];
  v13 = *v27;
  *(a2 + 25) = *&v27[16];
  *(a2 + 9) = v13;
  v14 = *&v27[64];
  v15 = *&v27[80];
  *(a2 + 104) = *&v27[95];
  *(a2 + 89) = v15;
  v46 = v4;
  v47[0] = 1;
  *&v47[88] = v5;
  *(a2 + 73) = v14;
  *(a2 + 57) = v12;
  v16 = *&v47[32];
  *(a2 + 144) = *&v47[16];
  *(a2 + 160) = v16;
  v17 = *v47;
  *(a2 + 112) = v46;
  *(a2 + 128) = v17;
  v18 = *&v47[80];
  *(a2 + 192) = *&v47[64];
  *(a2 + 208) = v18;
  *(a2 + 176) = *&v47[48];
  *&v50[17] = v7;
  v28 = 1;
  v48 = v6;
  v26 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 224) = v6;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  v49 = v4;
  v50[0] = 1;
  *&v50[1] = v8;
  *&v51[15] = *&v29[79];
  v52 = v5;
  *v51 = v9;
  *&v50[49] = v10;
  *&v50[33] = v11;
  v53 = v6;
  sub_21BBA3854(v44, v20, &qword_27CDB7DA8, &qword_21BE39C48);
  sub_21BBA3854(&v46, v20, &qword_27CDB7DB0, &qword_21BE39C50);
  sub_21BB3A4CC(&v49, &qword_27CDB7DB0, &qword_21BE39C50);
  v20[0] = v3;
  v20[1] = 0;
  v21 = 1;
  v23 = v30[1];
  v24 = v30[2];
  v25[0] = v30[3];
  *(v25 + 15) = *(&v30[3] + 15);
  v22 = v30[0];
  return sub_21BB3A4CC(v20, &qword_27CDB7DA8, &qword_21BE39C48);
}

void sub_21BC4CAD4(uint64_t a1@<X8>)
{
  v2 = sub_21BE2838C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_21BE289CC();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7 withConfiguration:0];

  if (v9)
  {
    v10 = v9;
    sub_21BE2836C();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v9 = sub_21BE283CC();

    (*(v3 + 8))(v5, v2);
    sub_21BE2869C();
    sub_21BE26F2C();

    v15[8] = 1;
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = v14;
  *(a1 + 24) = v11;
  *(a1 + 40) = v12;
  *(a1 + 56) = v13;
}

double sub_21BC4CCFC@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();
  v6 = v5;

  *&v19 = v4;
  *(&v19 + 1) = v6;
  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  LOBYTE(v6) = v10;
  sub_21BE27BEC();
  v11 = sub_21BE27D9C();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v7, v9, v6 & 1);

  sub_21BE2869C();
  sub_21BE26F2C();
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  *(a1 + 32) = v19;
  *(a1 + 48) = v20;
  result = *&v21;
  *(a1 + 64) = v21;
  return result;
}

void *sub_21BC4CE84(unsigned __int8 *a1)
{
  v2 = v1;
  v120 = *MEMORY[0x277D85DE8];
  v113 = type metadata accessor for MultipleInviteViewForInvitee(0);
  MEMORY[0x28223BE20](v113);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE26A4C();
  v114 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v112 = &v106 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v106 - v12;
  v14 = sub_21BE25FCC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = *a1;
  v18 = *MEMORY[0x277D07F18];
  v111 = *(v15 + 104);
  v111(v17, v18, v14);
  LOBYTE(a1) = MEMORY[0x21CF01150](v17);
  v110 = *(v15 + 8);
  v110(v17, v14);
  if ((a1 & 1) == 0)
  {
    v28 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView;
    v29 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView);
    if (v29)
    {
      goto LABEL_6;
    }

    v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D60, &qword_21BE39BC8));
    v32 = sub_21BC49EE0(sub_21BDCFB14, 0, 0);
    v33 = *(v2 + v28);
    *(v2 + v28) = v32;
    v34 = v32;

    *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = 1;
    return v34;
  }

  v19 = v2[7];
  v109 = v6;
  if (!v19)
  {
    v108 = v2;
    sub_21BE260FC();
    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FFC();
    v22 = os_log_type_enabled(v20, v21);
    v106 = v5;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v117 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE59270, &v117);
      _os_log_impl(&dword_21BB35000, v20, v21, "%s appears to be here from direct navigation", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);

      v25 = *(v114 + 8);
      v26 = v13;
      v27 = v109;
    }

    else
    {

      v25 = *(v114 + 8);
      v26 = v13;
      v27 = v6;
    }

    v107 = v25;
    (v25)(v26, v27);
    v35 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
    [v35 setCachePolicy_];
    *&v117 = 0;
    v36 = [v35 fetchCachedFamilyCircle_];
    v37 = v117;
    if (v36)
    {
      v2 = v108;
      v38 = v108[7];
      v108[7] = v36;
      v39 = v36;
      v40 = v37;
      v41 = v39;

      FAFamilyCircle.rowStatusForFamily()();
      v115 = v117;
    }

    else
    {
      v42 = v117;
      v43 = sub_21BE25A8C();

      swift_willThrow();
      v2 = v108;
    }

    v19 = v2[7];
    v5 = v106;
    if (!v19)
    {
      sub_21BE260FC();
      v52 = sub_21BE26A2C();
      v53 = sub_21BE28FDC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_21BB35000, v52, v53, "Invalid no family!!", v54, 2u);
        MEMORY[0x21CF05C50](v54, -1, -1);
      }

      v55 = v107(v9, v109);
      return sub_21BC4FDD4(v55);
    }
  }

  v44 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView;
  v29 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView);
  if (!v29)
  {
    v48 = v19;
    v47 = v115;
    if (v115 <= 2)
    {
LABEL_23:
      if ((v47 - 1) < 2)
      {
        v107 = v44;
        v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D60, &qword_21BE39BC8));
        v34 = sub_21BC49EE0(sub_21BDCFB14, 0, 0);
        v51 = [v34 navigationItem];
        [v51 setLargeTitleDisplayMode_];

LABEL_52:
        *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = v47;
        if (v47 == 1)
        {
          goto LABEL_53;
        }

        v98 = sub_21BE2995C();

        if (v98)
        {

          goto LABEL_58;
        }

        if (v47 == 2)
        {
LABEL_53:
        }

        else
        {
          v99 = sub_21BE2995C();

          if ((v99 & 1) == 0)
          {
            v101 = 0;
            goto LABEL_59;
          }
        }

LABEL_58:
        v100 = v34;
        v101 = v34;
LABEL_59:
        v102 = *(v107 + v2);
        *(v107 + v2) = v101;

        return v34;
      }

      v58 = v112;
      sub_21BE260FC();
      v59 = sub_21BE26A2C();
      v60 = sub_21BE28FDC();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_21BB35000, v59, v60, "Invalid fallthrough!", v61, 2u);
        MEMORY[0x21CF05C50](v61, -1, -1);
      }

      v62 = (*(v114 + 8))(v58, v109);
      v63 = sub_21BC4FDD4(v62);
LABEL_65:
      v34 = v63;

      return v34;
    }

LABEL_34:
    if (v47 != 3 || (v111(v17, *MEMORY[0x277D07EF8], v14), v64 = MEMORY[0x21CF01150](v17), v110(v17, v14), (v64 & 1) == 0))
    {
      v73 = v2;
      v74 = v2[3];
      v107 = v44;
      v108 = v73;
      v75 = v73[5];
      v76 = type metadata accessor for FamilyPictureStore(0);
      v118 = v76;
      v119 = &off_282D95F60;
      *&v117 = v75;
      type metadata accessor for MultipleInviteViewModel(0);
      v77 = v5;
      v78 = swift_allocObject();
      v79 = __swift_mutable_project_boxed_opaque_existential_1(&v117, v76);
      MEMORY[0x28223BE20](v79);
      v81 = (&v106 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v82 + 16))(v81);
      v83 = *v81;

      sub_21BC4F8AC(v74, v83, v78);
      __swift_destroy_boxed_opaque_existential_0Tm(&v117);
      sub_21BC5000C(&qword_27CDB7D68, type metadata accessor for MultipleInviteViewModel, protocol conformance descriptor for MultipleInviteViewModel);

      *v77 = sub_21BE270CC();
      *(v77 + 8) = v84;
      v116 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D70, &qword_21BE39BD0);
      sub_21BE283EC();
      *(v77 + 16) = v117;
      v85 = v113;
      v86 = *(v113 + 24);
      *(v77 + v86) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
      swift_storeEnumTagMultiPayload();
      sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
      v87 = [swift_getObjCClassFromMetadata() defaultCenter];
      if (qword_27CDB4EE8 != -1)
      {
        swift_once();
      }

      sub_21BE2935C();

      v88 = v77 + *(v85 + 32);
      LOBYTE(v116) = 0;
      sub_21BE283EC();
      v89 = *(&v117 + 1);
      *v88 = v117;
      *(v88 + 8) = v89;
      v90 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D78, &qword_21BE39C10));
      v34 = sub_21BC499C8(v77);
      if (v47 == 4)
      {
        v91 = sub_21BE2995C();

        if ((v91 & 1) == 0)
        {
          type metadata accessor for ConfirmChildAgeViewModel();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v93 = [objc_opt_self() bundleForClass_];
          v94 = sub_21BE2599C();
          v96 = v95;

          *&v117 = v94;
          *(&v117 + 1) = v96;
          sub_21BE28B8C();
        }
      }

      else
      {
      }

      v97 = sub_21BE289CC();

      [v34 setTitle_];

      if (qword_27CDB4F20 != -1)
      {
        swift_once();
      }

      sub_21BC83E50();

      v2 = v108;
      goto LABEL_52;
    }

    v65 = *(v2 + v44);
    *(v2 + v44) = 0;

    *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = 0;
    v66 = sub_21BE290EC();
    if (v66 >> 62)
    {
      v103 = v66;
      v104 = sub_21BE2951C();
      v66 = v103;
      if (v104)
      {
LABEL_38:
        if ((v66 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x21CF047C0](0);
        }

        else
        {
          if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v67 = *(v66 + 32);
        }

        v68 = v67;

        v69 = [v68 code];

        if (v69)
        {
          v70 = sub_21BE28A0C();
          v72 = v71;

LABEL_64:
          v105 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D80, &qword_21BE39C18));
          v63 = sub_21BC49C88(v70, v72);
          goto LABEL_65;
        }

LABEL_63:
        v70 = 0;
        v72 = 0xE000000000000000;
        goto LABEL_64;
      }
    }

    else if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    goto LABEL_63;
  }

  v45 = v2;
  v46 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus);
  v47 = v115;
  if (v115 != 5)
  {
    if (v46 == 5)
    {
      goto LABEL_22;
    }

    v106 = v5;
    v107 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView;
    v108 = v29;
    v56 = v115;
    v57 = v19;
    v34 = v108;
    if ((sub_21BB42864(v56, v46) & 1) == 0)
    {

      v2 = v45;
      v47 = v115;
      v5 = v106;
      v44 = v107;
      if (v115 <= 2)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }

    return v34;
  }

  if (v46 != 5)
  {
LABEL_22:
    v49 = v19;
    v2 = v45;
    if (v47 <= 2)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_6:

  return v29;
}

uint64_t sub_21BC4DD44(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v62 = a2;
  v59 = type metadata accessor for FamilyRowView(0);
  MEMORY[0x28223BE20](v59);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = *a1;
  sub_21BE260FC();

  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FCC();
  v63 = a3;

  if (os_log_type_enabled(v15, v16))
  {
    v60 = v11;
    v61 = v8;
    v58 = v7;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v65 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE59230, &v65);
    *(v17 + 12) = 2080;
    v19 = 0x69766E49746E6573;
    v20 = 0xEA00000000006574;
    v21 = 0x6465766965636572;
    v22 = 0xEE00657469766E49;
    if (v14 != 3)
    {
      v21 = 0xD000000000000013;
      v22 = 0x800000021BE54640;
    }

    if (v14 != 2)
    {
      v19 = v21;
      v20 = v22;
    }

    v23 = 0x796C696D6166;
    if (!v14)
    {
      v23 = 0x6E6564646968;
    }

    if (v14 <= 1)
    {
      v24 = v23;
    }

    else
    {
      v24 = v19;
    }

    if (v14 <= 1)
    {
      v25 = 0xE600000000000000;
    }

    else
    {
      v25 = v20;
    }

    v26 = sub_21BB3D81C(v24, v25, &v65);

    *(v17 + 14) = v26;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_21BB3D81C(v62, v63, &v65);
    _os_log_impl(&dword_21BB35000, v15, v16, "%s returning a row for:%s hint:%s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v18, -1, -1);
    MEMORY[0x21CF05C50](v17, -1, -1);

    v8 = v61;
    v27 = *(v61 + 8);
    v7 = v58;
    v27(v13, v58);
    v11 = v60;
  }

  else
  {

    v27 = *(v8 + 8);
    v27(v13, v7);
  }

  v28 = v64;
  v29 = *(v64 + 56);
  if (v29)
  {
    goto LABEL_17;
  }

  FamilyRowCache.rowStatusFromCache()();
  v30 = v65;
  if (v65 != 5)
  {
    v29 = *(v28 + 56);
    if (!v29)
    {
      KeyPath = swift_getKeyPath();
      v32 = v59;
      *&v6[*(v59 + 20)] = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D48, &qword_21BE39B88);
      swift_storeEnumTagMultiPayload();
      *v6 = 0;
      v6[8] = v30;
      v33 = v63;
      *(v6 + 2) = v62;
      *(v6 + 3) = v33;
      v34 = *(v32 + 24);
      *&v6[v34] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D50, &qword_21BE39BC0);
      swift_storeEnumTagMultiPayload();
      sub_21BC5000C(&qword_27CDB7D58, type metadata accessor for FamilyRowView, byte_21BE3E7A8);

      return sub_21BE2852C();
    }

    goto LABEL_17;
  }

  v29 = *(v28 + 56);
  if (v29)
  {
LABEL_17:
    if (v14)
    {
      v35 = sub_21BE2995C();
      v36 = v29;

      if ((v35 & 1) == 0)
      {
        v53 = swift_getKeyPath();
        v54 = v59;
        *&v6[*(v59 + 20)] = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D48, &qword_21BE39B88);
        swift_storeEnumTagMultiPayload();
        *v6 = v29;
        v6[8] = v14;
        v55 = v63;
        *(v6 + 2) = v62;
        *(v6 + 3) = v55;
        v56 = *(v54 + 24);
        *&v6[v56] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D50, &qword_21BE39BC0);
        swift_storeEnumTagMultiPayload();
        sub_21BC5000C(&qword_27CDB7D58, type metadata accessor for FamilyRowView, byte_21BE3E7A8);

        return sub_21BE2852C();
      }
    }

    else
    {
    }
  }

  sub_21BE260FC();

  v37 = sub_21BE26A2C();
  v38 = sub_21BE28FDC();

  if (os_log_type_enabled(v37, v38))
  {
    v60 = v11;
    v61 = v8;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v65 = v41;
    *v39 = 136315394;
    v42 = 0x69766E49746E6573;
    v43 = 0xEA00000000006574;
    v44 = 0x6465766965636572;
    v45 = 0xEE00657469766E49;
    if (v14 != 3)
    {
      v44 = 0xD000000000000013;
      v45 = 0x800000021BE54640;
    }

    if (v14 != 2)
    {
      v42 = v44;
      v43 = v45;
    }

    v46 = 0x796C696D6166;
    if (!v14)
    {
      v46 = 0x6E6564646968;
    }

    if (v14 <= 1)
    {
      v47 = v46;
    }

    else
    {
      v47 = v42;
    }

    if (v14 <= 1)
    {
      v48 = 0xE600000000000000;
    }

    else
    {
      v48 = v43;
    }

    v49 = sub_21BB3D81C(v47, v48, &v65);

    *(v39 + 4) = v49;
    *(v39 + 12) = 2112;
    v50 = *(v64 + 56);
    *(v39 + 14) = v50;
    *v40 = v50;
    v51 = v50;
    _os_log_impl(&dword_21BB35000, v37, v38, "Invalid row request %s for %@!", v39, 0x16u);
    sub_21BB3A4CC(v40, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x21CF05C50](v41, -1, -1);
    MEMORY[0x21CF05C50](v39, -1, -1);

    v52 = v60;
  }

  else
  {

    v52 = v11;
  }

  v27(v52, v7);
  return sub_21BE2852C();
}

uint64_t sub_21BC4E5C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = *v0;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_21BE28D7C();

  v6 = sub_21BE28D6C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  sub_21BBA932C(0, 0, v3, &unk_21BE39B48, v7);
}

void sub_21BC4E6E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView;
  if (*(a2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView))
  {
    sub_21BE260FC();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_21BB3D81C(0x4D726F74696E6F6DLL, 0xEF292879726F6D65, &v14);
      _os_log_impl(&dword_21BB35000, v8, v9, "%s releasing cached view", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x21CF05C50](v11, -1, -1);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v12 = *(a2 + v7);
    *(a2 + v7) = 0;

    *(a2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = 0;
  }
}

uint64_t sub_21BC4E8BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE2581C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_21BE2580C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21BC4E9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_21BE25D6C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_21BE2626C();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[13] = swift_task_alloc();
  v7 = sub_21BE26A4C();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = sub_21BE28D7C();
  v4[19] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[20] = v9;
  v4[21] = v8;

  return MEMORY[0x2822009F8](sub_21BC4EBA4, v9, v8);
}

uint64_t sub_21BC4EBA4()
{
  v56 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = v0[5];
  v0[22] = v1;
  if (!v1)
  {

    sub_21BE260FC();
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FFC();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v55 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE592D0, &v55);
      _os_log_impl(&dword_21BB35000, v6, v7, "%s user logged out?", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x21CF05C50](v13, -1, -1);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    v14 = v0[6];
    v15 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount;
    v16 = v14;
    if (*(v14 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount))
    {
      v18 = v0[11];
      v17 = v0[12];
      v19 = v0[10];
      v20 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
      sub_21BE2909C();

      v21 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_invitationStatus;
      swift_beginAccess();
      (*(v18 + 40))(v14 + v21, v17, v19);
      swift_endAccess();
      if (qword_280BD84F8 != -1)
      {
        swift_once();
      }

      v23 = v0[8];
      v22 = v0[9];
      v25 = v0[6];
      v24 = v0[7];
      v26 = *algn_280BD8508;
      v27 = qword_280BD8510;
      v28 = unk_280BD8518;
      v29 = (v25 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages);
      *v29 = qword_280BD8500;
      v29[1] = v26;
      v29[2] = v27;
      v29[3] = v28;

      sub_21BE25D5C();
      v30 = sub_21BE25D2C();
      v32 = v31;
      (*(v23 + 8))(v22, v24);
      v33 = (v25 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint);
      *v33 = v30;
      v33[1] = v32;

      v16 = v0[6];
    }

    v34 = v0[13];
    v35 = *(v16 + 56);
    *(v16 + 56) = 0;

    v36 = *(v14 + v15);
    *(v14 + v15) = 0;

    v37 = sub_21BE28DAC();
    (*(*(v37 - 8) + 56))(v34, 1, 1, v37);

    v38 = sub_21BE28D6C();
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    v39[2] = v38;
    v39[3] = v40;
    v39[4] = v16;
    sub_21BBA932C(0, 0, v34, &unk_21BE39E10, v39);
    goto LABEL_11;
  }

  v2 = v0[6];
  v3 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount;
  v4 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount);
  v5 = v4;
  v58.value.super.isa = v4;
  LOBYTE(v4) = ACAccount.isSameUser(_:)(v58);

  if (v4)
  {

LABEL_11:

    v41 = v0[1];

    return v41();
  }

  sub_21BE260FC();
  v43 = sub_21BE26A2C();
  v44 = sub_21BE28FFC();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v0[17];
  v48 = v0[14];
  v47 = v0[15];
  if (v45)
  {
    v54 = v0[17];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE592D0, &v55);
    _os_log_impl(&dword_21BB35000, v43, v44, "%s new? user logged in...", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x21CF05C50](v50, -1, -1);
    MEMORY[0x21CF05C50](v49, -1, -1);

    (*(v47 + 8))(v54, v48);
  }

  else
  {

    (*(v47 + 8))(v46, v48);
  }

  v51 = *(v2 + v3);
  *(v2 + v3) = v1;
  v52 = v1;

  v53 = swift_task_alloc();
  v0[23] = v53;
  *v53 = v0;
  v53[1] = sub_21BC4F178;

  return sub_21BB448F0();
}

uint64_t sub_21BC4F178()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21BC4F298, v3, v2);
}

uint64_t sub_21BC4F298()
{
  v1 = v0[22];
  v2 = v0[13];
  v3 = v0[6];

  v4 = sub_21BE28DAC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v5 = sub_21BE28D6C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  sub_21BBA932C(0, 0, v2, &unk_21BE39E18, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BC4F3E8(uint64_t a1)
{
  v2 = sub_21BE2788C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE273FC();
}

uint64_t sub_21BC4F4B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v7;
  v10[5] = v6;
  v10[6] = v9;
  v10[7] = v8;

  sub_21BE2633C();
}

uint64_t sub_21BC4F568(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  *(v3 + 16) = *a3;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v8 = (a1 + *a1);
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  *v6 = v3;
  v6[1] = sub_21BC4F66C;

  return v8(v3 + 16);
}

uint64_t sub_21BC4F66C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_21BC4F780;
  }

  else
  {
    v2 = sub_21BC086DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BC4F798()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_21BC504E0;
  }

  else
  {
    v2 = sub_21BC504E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BC4F8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72B0, &qword_21BE36C60);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - v11;
  v23[3] = type metadata accessor for FamilyCircleStore(0);
  v23[4] = &protocol witness table for FamilyCircleStore;
  v23[0] = a1;
  v22[3] = type metadata accessor for FamilyPictureStore(0);
  v22[4] = &off_282D95F60;
  v22[0] = a2;
  *(a3 + 96) = 0;
  v13 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {
    v14 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  *(a3 + 104) = v14;
  v15 = OBJC_IVAR____TtC14FamilyCircleUI23MultipleInviteViewModel__invites;
  v21[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72D0, &qword_21BE36D30);
  sub_21BE26C6C();
  (*(v10 + 32))(a3 + v15, v12, v9);
  sub_21BB3A35C(v23, a3 + 16);
  sub_21BB3A35C(v22, a3 + 56);
  v16 = sub_21BE28DAC();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_21BE28D7C();

  v17 = sub_21BE28D6C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a3;
  sub_21BBA932C(0, 0, v8, &unk_21BE39C20, v18);

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  return a3;
}

uint64_t sub_21BC4FB54(unsigned __int8 *a1)
{
  v2 = sub_21BE25FCC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  (*(v3 + 104))(v5, *MEMORY[0x277D07EF8], v2);
  LOBYTE(a1) = MEMORY[0x21CF01150](v5);
  (*(v3 + 8))(v5, v2);
  if (a1)
  {
    if (v6 == 3)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_21BE2995C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21BC4FD20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BC4A5FC(a1, v4, v5, v6);
}

uint64_t sub_21BC4FDD4(uint64_t a1)
{
  v1 = sub_21BE2770C();
  v9 = 1;
  sub_21BC4C744(&__src);
  v28 = *&v11[176];
  v29 = *&v11[192];
  v30 = *&v11[208];
  v24 = *&v11[112];
  v25 = *&v11[128];
  v26 = *&v11[144];
  v27 = *&v11[160];
  v20 = *&v11[48];
  v21 = *&v11[64];
  v22 = *&v11[80];
  v23 = *&v11[96];
  v16 = __src;
  v17 = *v11;
  v18 = *&v11[16];
  v19 = *&v11[32];
  v32[12] = *&v11[176];
  v32[13] = *&v11[192];
  v32[14] = *&v11[208];
  v32[8] = *&v11[112];
  v32[9] = *&v11[128];
  v32[10] = *&v11[144];
  v32[11] = *&v11[160];
  v32[4] = *&v11[48];
  v32[5] = *&v11[64];
  v32[6] = *&v11[80];
  v32[7] = *&v11[96];
  v32[0] = __src;
  v32[1] = *v11;
  v31 = v11[224];
  v33 = v11[224];
  v32[2] = *&v11[16];
  v32[3] = *&v11[32];
  sub_21BBA3854(&v16, v7, &qword_27CDB7D88, &qword_21BE39C28);
  sub_21BB3A4CC(v32, &qword_27CDB7D88, &qword_21BE39C28);
  *&v8[199] = v28;
  *&v8[215] = v29;
  *&v8[231] = v30;
  *&v8[135] = v24;
  *&v8[151] = v25;
  *&v8[167] = v26;
  *&v8[183] = v27;
  *&v8[71] = v20;
  *&v8[87] = v21;
  *&v8[103] = v22;
  *&v8[119] = v23;
  *&v8[7] = v16;
  *&v8[23] = v17;
  *&v8[39] = v18;
  v8[247] = v31;
  *&v8[55] = v19;
  v2 = v9;
  v3 = sub_21BE282DC();
  v4 = sub_21BE27B7C();
  *&v11[193] = *&v8[192];
  *&v11[209] = *&v8[208];
  v12 = *&v8[224];
  *&v11[129] = *&v8[128];
  *&v11[145] = *&v8[144];
  *&v11[161] = *&v8[160];
  *&v11[177] = *&v8[176];
  *&v11[65] = *&v8[64];
  *&v11[81] = *&v8[80];
  *&v11[97] = *&v8[96];
  *&v11[113] = *&v8[112];
  *&v11[1] = *v8;
  *&v11[17] = *&v8[16];
  *&v11[33] = *&v8[32];
  __src = v1;
  v11[0] = v2;
  v13 = *&v8[240];
  *&v11[49] = *&v8[48];
  v14 = v3;
  v15 = v4;
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D90, &qword_21BE39C30));
  return sub_21BC49764(&__src);
}

uint64_t sub_21BC5000C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BC50054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipleInviteViewForInvitee(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC500B8(uint64_t a1)
{
  v2 = type metadata accessor for MultipleInviteViewForInvitee(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC50114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BC18588(a1, v4, v5, v6);
}

uint64_t sub_21BC501C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BC4C004(a1, v1);
}

uint64_t sub_21BC5026C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC4F568(v2, v3, v0 + 32);
}

uint64_t sub_21BC5031C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DF0, &qword_21BE39D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_82Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21BC503CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BC4E9B0(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t type metadata accessor for RecoveryContactView(uint64_t a1)
{
  result = qword_27CDB7E00;
  if (!qword_27CDB7E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC5055C(uint64_t a1)
{
  type metadata accessor for RecoveryContactDataItem(319);
  if (v1 <= 0x3F)
  {
    sub_21BC41F08(319);
    if (v2 <= 0x3F)
    {
      sub_21BC505F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21BC505F8()
{
  result = qword_27CDB7E10;
  if (!qword_27CDB7E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB7E10);
  }

  return result;
}

id sub_21BC50660()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BC50760()
{
  if (*(v0 + *(type metadata accessor for RecoveryContactDataItem(0) + 24)) >> 62)
  {
    sub_21BE2951C();
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_21BE2599C();

  return v3;
}

uint64_t sub_21BC50890()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE32770;
  v2 = *(v0 + *(type metadata accessor for RecoveryContactDataItem(0) + 24));
  if (v2 >> 62)
  {
    v3 = sub_21BE2951C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v4;
  *(v1 + 32) = v3;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_21BE2599C();

  v8 = sub_21BE289DC();

  return v8;
}

unint64_t sub_21BC50A14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v40 - v2;
  v4 = sub_21BE25D1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecoveryContactDataItem(0);
  v9 = *(v0 + *(v8 + 24));
  if (v9 >> 62)
  {
    v10 = sub_21BE2951C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = __OFSUB__(v10, 1);
  result = v10 - 1;
  if (v11)
  {
    __break(1u);
  }

  else if ((v9 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v9 + 8 * result + 32);
      goto LABEL_9;
    }

    __break(1u);
    return result;
  }

  v13 = MEMORY[0x21CF047C0](result, v9);
LABEL_9:
  v14 = v13;
  v15 = [v13 firstName];

  if (!v15)
  {
LABEL_11:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_21BE2599C();
    goto LABEL_12;
  }

  v16 = sub_21BE28A0C();
LABEL_12:
  v19 = v16;
  v20 = v17;

  sub_21BC1E1AC(v0 + *(v8 + 20), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21BC51500(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_21BE32770;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_21BBBEFE8();
    *(v21 + 32) = v19;
    *(v21 + 40) = v20;
    type metadata accessor for ConfirmChildAgeViewModel();
    v22 = swift_getObjCClassFromMetadata();
    v23 = objc_opt_self();

    v24 = [v23 bundleForClass_];
    sub_21BE2599C();

    v25 = sub_21BE289DC();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v26 = *(v0 + *(type metadata accessor for RecoveryContactView(0) + 24));
    v27 = sub_21BE289CC();
    [v26 setLocalizedDateFormatFromTemplate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21BE33260;
    v41 = v4;
    v29 = v7;
    v30 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v31 = sub_21BBBEFE8();
    *(v28 + 64) = v31;
    *(v28 + 32) = v19;
    *(v28 + 40) = v20;
    v32 = sub_21BE25CAC();
    v33 = [v26 stringFromDate_];

    v34 = sub_21BE28A0C();
    v36 = v35;

    *(v28 + 96) = v30;
    *(v28 + 104) = v31;
    *(v28 + 72) = v34;
    *(v28 + 80) = v36;
    type metadata accessor for ConfirmChildAgeViewModel();
    v37 = swift_getObjCClassFromMetadata();
    v38 = objc_opt_self();

    v39 = [v38 bundleForClass_];
    sub_21BE2599C();

    v25 = sub_21BE289DC();

    (*(v5 + 8))(v29, v41);
  }

  return v25;
}

uint64_t sub_21BC50FA8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for RecoveryContactNotSetupCell(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7E18, &qword_21BE39EC8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  IsSetupCell = type metadata accessor for RecoveryContactIsSetupCell(0);
  MEMORY[0x28223BE20](IsSetupCell);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 == 1)
  {
    v12 = sub_21BC50760();
    v31 = v13;
    v32 = v12;
    v14 = sub_21BC50890();
    v30 = v15;
    v16 = sub_21BC50A14();
    v33 = a1;
    v18 = v17;
    v19 = sub_21BC50660();
    sub_21BC51438(v1, &v11[*(IsSetupCell + 36)], type metadata accessor for RecoveryContactDataItem);
    type metadata accessor for ChecklistStateVars(0);
    sub_21BC513F0(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
    *v11 = sub_21BE26E9C();
    v11[8] = v20 & 1;
    v21 = v31;
    *(v11 + 2) = v32;
    *(v11 + 3) = v21;
    v22 = v30;
    *(v11 + 4) = v14;
    *(v11 + 5) = v22;
    *(v11 + 6) = v16;
    *(v11 + 7) = v18;
    *(v11 + 8) = v19;
    sub_21BC51438(v11, v8, type metadata accessor for RecoveryContactIsSetupCell);
    swift_storeEnumTagMultiPayload();
    sub_21BC513F0(&qword_27CDB7E20, type metadata accessor for RecoveryContactIsSetupCell, byte_21BE4819C);
    sub_21BC513F0(&qword_27CDB7E28, type metadata accessor for RecoveryContactNotSetupCell, byte_21BE33910);
    sub_21BE2784C();
    v23 = type metadata accessor for RecoveryContactIsSetupCell;
    v24 = v11;
  }

  else
  {
    v25 = sub_21BC50660();
    sub_21BC51438(v1, &v5[v3[6]], type metadata accessor for RecoveryContactDataItem);
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    *(v5 + 2) = v25;
    v26 = v3[7];
    *&v5[v26] = [objc_allocWithZone(type metadata accessor for CustodianSetupFlowDelegate()) init];
    v27 = v3[8];
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5E70, &qword_21BE33908);
    sub_21BE283EC();
    *&v5[v27] = v35;
    sub_21BC51438(v5, v8, type metadata accessor for RecoveryContactNotSetupCell);
    swift_storeEnumTagMultiPayload();
    sub_21BC513F0(&qword_27CDB7E20, type metadata accessor for RecoveryContactIsSetupCell, byte_21BE4819C);
    sub_21BC513F0(&qword_27CDB7E28, type metadata accessor for RecoveryContactNotSetupCell, byte_21BE33910);
    sub_21BE2784C();
    v23 = type metadata accessor for RecoveryContactNotSetupCell;
    v24 = v5;
  }

  return sub_21BC514A0(v24, v23);
}

uint64_t sub_21BC513F0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BC51438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BC514A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21BC51500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC51568()
{
  result = qword_27CDB7E30;
  if (!qword_27CDB7E30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7E38, qword_21BE39F10);
    v4[0] = sub_21BC513F0(&qword_27CDB7E20, type metadata accessor for RecoveryContactIsSetupCell, byte_21BE4819C);
    v4[1] = sub_21BC513F0(&qword_27CDB7E28, type metadata accessor for RecoveryContactNotSetupCell, byte_21BE33910);
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDB7E30);
  }

  return result;
}

uint64_t sub_21BC51654()
{
  result = sub_21BE289CC();
  qword_27CDB7E40 = result;
  return result;
}

uint64_t sub_21BC516B0()
{
  result = sub_21BE289CC();
  qword_27CDB7E48 = result;
  return result;
}

uint64_t sub_21BC5170C()
{
  result = sub_21BE289CC();
  qword_27CDB7E50 = result;
  return result;
}

uint64_t sub_21BC51768()
{
  result = sub_21BE289CC();
  qword_27CDB7E58 = result;
  return result;
}

uint64_t sub_21BC517C4()
{
  result = sub_21BE289CC();
  qword_27CDB7E60 = result;
  return result;
}

uint64_t sub_21BC51820()
{
  result = sub_21BE289CC();
  qword_27CDB7E68 = result;
  return result;
}

uint64_t sub_21BC5187C()
{
  result = sub_21BE289CC();
  qword_27CDB7E70 = result;
  return result;
}

uint64_t sub_21BC518D8()
{
  result = sub_21BE289CC();
  qword_27CDB7E78 = result;
  return result;
}

uint64_t sub_21BC51934()
{
  result = sub_21BE289CC();
  qword_27CDB7E80 = result;
  return result;
}

uint64_t sub_21BC51990()
{
  result = sub_21BE289CC();
  qword_27CDB7E88 = result;
  return result;
}

uint64_t sub_21BC519EC()
{
  result = sub_21BE289CC();
  qword_27CDB7E90 = result;
  return result;
}

uint64_t sub_21BC51A48()
{
  result = sub_21BE289CC();
  qword_27CDB7E98 = result;
  return result;
}

uint64_t sub_21BC51AA4()
{
  result = sub_21BE289CC();
  qword_280BD7038 = result;
  return result;
}

uint64_t sub_21BC51B00()
{
  result = sub_21BE289CC();
  qword_280BD6FC0 = result;
  return result;
}

uint64_t sub_21BC51B80()
{
  result = sub_21BE289CC();
  qword_27CDB7EA0 = result;
  return result;
}

uint64_t sub_21BC51BDC()
{
  result = sub_21BE289CC();
  qword_27CDB7EA8 = result;
  return result;
}

uint64_t sub_21BC51C38()
{
  result = sub_21BE289CC();
  qword_27CDB7EB0 = result;
  return result;
}

uint64_t sub_21BC51C94()
{
  result = sub_21BE289CC();
  qword_27CDB7EB8 = result;
  return result;
}

id sub_21BC51CF0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void sub_21BC51D50(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21BE32770;
    swift_getErrorValue();
    v5 = a1;
    v6 = sub_21BE29A5C();
    v8 = v7;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_21BBBEFE8();
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v9 = sub_21BE28A2C();
    v11 = v10;
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FDC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      v16 = sub_21BB3D81C(v9, v11, &v17);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_21BB35000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x21CF05C50](v15, -1, -1);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21BC51F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BC52040;

  return v9(a1, a2, a3);
}

uint64_t sub_21BC52040(uint64_t a1, int a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 0x10101);
}

uint64_t sub_21BC5214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21BBA6A64;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21BC5228C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21BC522AC, 0, 0);
}

uint64_t sub_21BC522AC()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  *v3 = v0;
  v3[1] = sub_21BC523B4;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000001CLL, 0x800000021BE59750, sub_21BC529C0, v2, v4);
}

uint64_t sub_21BC523B4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21BC524F0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21BC524F0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21BC52554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EC0, &qword_21BE39F98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_21BC529C8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BCCB2E0;
  aBlock[3] = &block_descriptor_14;
  v11 = _Block_copy(aBlock);

  [v8 lastModifcationDateForDSID:a2 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_21BC52728(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = sub_21BE25D1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = a2;
    v14 = a2;
  }

  else
  {
    sub_21BC1E1AC(a1, v9);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      (*(v11 + 16))(v7, v13, v10);
      (*(v11 + 56))(v7, 0, 1, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EC0, &qword_21BE39F98);
      sub_21BE28D2C();
      return (*(v11 + 8))(v13, v10);
    }

    sub_21BC51500(v9);
    sub_21BC1E158();
    v15 = swift_allocError();
    *v16 = 0;
    v19 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EC0, &qword_21BE39F98);
  return sub_21BE28D1C();
}

uint64_t sub_21BC529C8(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EC0, &qword_21BE39F98);

  return sub_21BC52728(a1, a2);
}

id sub_21BC52A54(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 dsid];
  if (result)
  {
    v7 = result;
    v8 = [objc_allocWithZone(MEMORY[0x277D4BAE0]) initWithDSID_];
    v9 = [objc_allocWithZone(MEMORY[0x277D4BA98]) init];
    v19[0] = 0;
    v10 = [v9 currentConfigurationForUser:v8 error:v19];

    if (v10)
    {
      v11 = v19[0];
      v12 = [v10 screenTimeState];

      return (v12 == 1);
    }

    else
    {
      v13 = v19[0];
      v14 = sub_21BE25A8C();

      swift_willThrow();
      sub_21BE2614C();
      v15 = sub_21BE26A2C();
      v16 = sub_21BE28FDC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_21BB35000, v15, v16, "Unable to get current configuration from STSetupClient", v17, 2u);
        MEMORY[0x21CF05C50](v17, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }

  return result;
}

unint64_t sub_21BC52CE4()
{
  result = qword_27CDB7EC8;
  if (!qword_27CDB7EC8)
  {
    result = swift_getWitnessTable(byte_21BE39FF8, &type metadata for ParentalControlError, v0, v1);
    atomic_store(result, &qword_27CDB7EC8);
  }

  return result;
}

id ScreenTimeConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenTimeConfiguration.init()()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI23ScreenTimeConfiguration_stManagementState;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ScreenTimeConfiguration();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_21BC52E5C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21BE26A4C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC52F1C, 0, 0);
}

uint64_t sub_21BC52F1C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_21BE261EC();
  v5 = v4;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = v1;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  *v9 = v0;
  v9[1] = sub_21BC5303C;

  return MEMORY[0x2821372C0](v0 + 2, v3, v5, &unk_21BE3A070, v6, v10);
}

uint64_t sub_21BC5303C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21BC531C4;
  }

  else
  {

    v2 = sub_21BC53158;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BC53158()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21BC531C4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];

  sub_21BE261AC();
  v5 = v1;
  sub_21BC51D50(v1, 0xD000000000000030, 0x800000021BE59790);

  (*(v4 + 8))(v2, v3);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BC5329C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_21BC532C0, 0, 0);
}

uint64_t sub_21BC532C0()
{
  v1 = v0[21];
  v2 = *(v0[20] + OBJC_IVAR____TtC14FamilyCircleUI23ScreenTimeConfiguration_stManagementState);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC533F4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF0, &unk_21BE405B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_15;
  v0[14] = v3;
  [v2 isContentPrivacyEnabledForDSID:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC533F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_21BC53524;
  }

  else
  {
    v2 = sub_21BC53504;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BC53524(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_21BC53590(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BC5329C(a1, v5, v4);
}

uint64_t sub_21BC537C4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_21BC53888;

  return sub_21BC52E5C(v6);
}

uint64_t sub_21BC53888(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_21BE25A7C();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

id sub_21BC53A40(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = sub_21BE289CC();
    v5 = [v3 BOOLRestrictionForFeature_];

    return (v5 == 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ScreenTimeConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimeConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ScreenTimeWrapperStatus.hashValue.getter()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

id sub_21BC53C28(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUserDSID_];

  return v2;
}

id sub_21BC53C70()
{
  v1 = [v0 getScreenTimeUsageGraphForUser];

  return v1;
}

unint64_t sub_21BC53D04()
{
  result = qword_27CDB7ED8;
  if (!qword_27CDB7ED8)
  {
    result = swift_getWitnessTable("Q", &type metadata for ScreenTimeWrapperStatus, v0, v1);
    atomic_store(result, &qword_27CDB7ED8);
  }

  return result;
}

unint64_t sub_21BC53D58(uint64_t a1)
{
  result = sub_21BC53D80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC53D80()
{
  result = qword_27CDB7EE0;
  if (!qword_27CDB7EE0)
  {
    v3 = sub_21BB3A2A4(255, &qword_27CDB7EE8, off_2782F0D00);
    result = swift_getWitnessTable(protocol conformance descriptor for FAScreenTimeWrapper, v3, v0, v1);
    atomic_store(result, &qword_27CDB7EE0);
  }

  return result;
}

uint64_t dispatch thunk of ScreenTimeConfiguration.isContentPrivacyEnabled(forDSID:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8C3C;

  return v7(a1);
}

uint64_t sub_21BC53FD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BC537C4(v2, v3, v4);
}

uint64_t sub_21BC5408C(uint64_t a1, char a2)
{
  *(v2 + 265) = a2;
  *(v2 + 216) = a1;
  v3 = sub_21BE26A4C();
  *(v2 + 224) = v3;
  *(v2 + 232) = *(v3 - 8);
  *(v2 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC54150, 0, 0);
}

uint64_t sub_21BC54150()
{
  v1 = *(v0 + 265);
  v2 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF8, &unk_21BE40470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v4 = *MEMORY[0x277D081F8];
  *(inited + 32) = *MEMORY[0x277D081F8];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = v1;
  v5 = v4;
  sub_21BBB6848(inited);
  swift_setDeallocating();
  sub_21BC545C8(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277D08350]);
  type metadata accessor for FAUpdateMemberFlagKey(0);
  sub_21BC54630();
  v7 = sub_21BE288EC();

  v8 = [v6 initWithFamilyMemberDSID:v2 flags:v7];
  *(v0 + 248) = v8;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 264;
  *(v0 + 24) = sub_21BC5435C;
  v9 = swift_continuation_init();
  *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F00, &qword_21BE40480);
  *(v0 + 152) = MEMORY[0x277D85DD0];
  *(v0 + 160) = 1107296256;
  *(v0 + 168) = sub_21BD63750;
  *(v0 + 176) = &block_descriptor_16;
  *(v0 + 184) = v9;
  [v8 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BC5435C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_21BC544DC;
  }

  else
  {
    v2 = sub_21BC5446C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BC5446C()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21BC544DC(uint64_t a1)
{
  v3 = v1[31];
  v2 = v1[32];
  v5 = v1[29];
  v4 = v1[30];
  v6 = v1[28];
  swift_willThrow();
  sub_21BE2614C();
  v7 = v2;
  sub_21BC51D50(v2, 0xD000000000000018, 0x800000021BE59840);

  (*(v5 + 8))(v4, v6);

  v8 = v1[1];

  return v8(0);
}

uint64_t sub_21BC545C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58A0, &qword_21BE32998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BC54630()
{
  result = qword_27CDB5510;
  if (!qword_27CDB5510)
  {
    type metadata accessor for FAUpdateMemberFlagKey(255);
    result = swift_getWitnessTable(byte_21BE322A4, v3, v0, v1);
    atomic_store(result, &qword_27CDB5510);
  }

  return result;
}

uint64_t sub_21BC54688()
{
  v0 = sub_21BE25D1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
  [v4 setUnitsStyle_];
  [v4 setDateTimeStyle_];
  v5 = sub_21BE25CAC();
  sub_21BE25CEC();
  v6 = sub_21BE25CAC();
  (*(v1 + 8))(v3, v0);
  v7 = [v4 localizedStringForDate:v5 relativeToDate:v6];

  v8 = sub_21BE28A0C();
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21BE32770;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_21BBBEFE8();
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();

  v14 = [v13 bundleForClass_];
  sub_21BE2599C();

  v15 = sub_21BE289DC();

  return v15;
}

uint64_t sub_21BC54908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21BBA3854(a3, v22 - v9, &qword_27CDB5790, &qword_21BE32800);
  v11 = sub_21BE28DAC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21BB3A4CC(v10, &qword_27CDB5790, &qword_21BE32800);
  }

  else
  {
    sub_21BE28D9C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21BE28D0C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21BE28A8C() + 32;

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

      sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);

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

  sub_21BB3A4CC(a3, &qword_27CDB5790, &qword_21BE32800);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21BC54BB4()
{
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
}

uint64_t sub_21BC54C6C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21BC20644(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BC54DB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t sub_21BC54E1C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  return sub_21BBA3854(v1 + 32, a1, &qword_27CDB7278, &qword_21BE3A250);
}

uint64_t sub_21BC54EEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  return sub_21BBA3854(v3 + 32, a2, &qword_27CDB7278, &qword_21BE3A250);
}

uint64_t sub_21BC55008(uint64_t a1)
{
  swift_beginAccess();
  sub_21BBA3854(v1 + 32, v6, &qword_27CDB7278, &qword_21BE3A250);
  v3 = sub_21BC5A430(v6, a1);
  sub_21BB3A4CC(v6, &qword_27CDB7278, &qword_21BE3A250);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v6[0] = v1;
    sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
    sub_21BE25F0C();
  }

  else
  {
    sub_21BBA3854(a1, v6, &qword_27CDB7278, &qword_21BE3A250);
    swift_beginAccess();
    sub_21BC5A578(v6, v1 + 32);
    swift_endAccess();
  }

  return sub_21BB3A4CC(a1, &qword_27CDB7278, &qword_21BE3A250);
}

uint64_t sub_21BC551BC(uint64_t a1, uint64_t a2)
{
  sub_21BBA3854(a2, v4, &qword_27CDB7278, &qword_21BE3A250);
  swift_beginAccess();
  sub_21BC5A578(v4, a1 + 32);
  return swift_endAccess();
}

uint64_t sub_21BC55234()
{
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
}

uint64_t sub_21BC552EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_21BC553AC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F0C();
}

uint64_t sub_21BC55478(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 88) = a2;
}

uint64_t sub_21BC554E0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  v1 = *(v0 + 96);
  sub_21BB3D80C(v1, *(v3 + 104));
  return v1;
}

uint64_t sub_21BC55594@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21BC5A3EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21BB3D80C(v4, v5);
}

uint64_t sub_21BC55680(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_21BC5A3C4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21BB3D80C(v2, v3);
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F0C();
  sub_21BB5AEC4(v5, v4);
}

uint64_t sub_21BC557DC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[12];
  v6 = a1[13];
  a1[12] = a2;
  a1[13] = a3;
  swift_getKeyPath();
  sub_21BB3D80C(a2, a3);
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  if (!a1[12] || v7)
  {
    return sub_21BB5AEC4(v7, v6);
  }

  swift_getKeyPath();
  sub_21BE25F1C();

  swift_beginAccess();

  sub_21BC55C18(v9);
}

uint64_t sub_21BC5592C()
{
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();
}

uint64_t sub_21BC559D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  *a2 = *(v3 + 112);
}

uint64_t sub_21BC55A7C(uint64_t a1)
{
  if (!*(v1 + 112))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
    sub_21BE25F0C();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v3 = sub_21BE28DBC();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 112) = a1;
}

uint64_t sub_21BC55C18(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v5 = *(a1 + 16);
    while (1)
    {
      sub_21BC23F14(v4, &v23);
      v6 = *(&v24 + 1);
      v7 = v25;
      __swift_project_boxed_opaque_existential_1Tm(&v23, *(&v24 + 1));
      (*(v7 + 16))(&v27, v6, v7);
      if (v27 != 3)
      {
        break;
      }

      sub_21BC17C80(&v23);
      v4 += 56;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
  }

  else
  {
LABEL_5:
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
  }

  sub_21BC55008(&v27);
  if (v3)
  {
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
    v10 = v3;
    do
    {
      sub_21BC23F14(v8, &v27);
      v11 = *(&v28 + 1);
      v12 = v29;
      __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
      (*(v12 + 16))(&v23, v11, v12);
      if (v23 == 3)
      {
        v23 = v27;
        v24 = v28;
        v25 = v29;
        v26 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21BC59A1C(0, *(v9 + 16) + 1, 1);
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_21BC59A1C((v13 > 1), v14 + 1, 1);
        }

        *(v9 + 16) = v14 + 1;
        v15 = v9 + 56 * v14;
        v16 = v23;
        v17 = v24;
        v18 = v25;
        *(v15 + 80) = v26;
        *(v15 + 48) = v17;
        *(v15 + 64) = v18;
        *(v15 + 32) = v16;
      }

      else
      {
        sub_21BC17C80(&v27);
      }

      v8 += 56;
      --v10;
    }

    while (v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_21BC54C6C(v9);
  swift_getKeyPath();
  *&v27 = v1;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  v20 = *(v1 + 96);
  if (v20)
  {
    v21 = *(v1 + 104);

    if (v3)
    {
      v22 = a1 + 32;
      do
      {
        v20(v22);
        v22 += 56;
        --v3;
      }

      while (v3);
    }

    return sub_21BB5AEC4(v20, v21);
  }

  return result;
}

uint64_t sub_21BC55EE0(uint64_t a1, uint64_t a2)
{
  v2 = static AnyLinkDestination.path(fromString:)(a1, a2);
  sub_21BC55C18(v2);
}

uint64_t sub_21BC55F1C(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  if (sub_21BC5CED8(v4, v5))
  {
    sub_21BC23F14(a1, v17);
    return sub_21BC55008(v17);
  }

  else
  {
    sub_21BC23F14(a1, v17);
    swift_getKeyPath();
    sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
    sub_21BE25F1C();

    swift_getKeyPath();
    sub_21BE25F3C();

    swift_beginAccess();
    v7 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 24) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_21BBBD0A0(0, *(v7 + 2) + 1, 1, v7);
      *(v2 + 24) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_21BBBD0A0((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[56 * v10];
    v12 = v17[0];
    v13 = v17[1];
    v14 = v17[2];
    *(v11 + 10) = v18;
    *(v11 + 3) = v13;
    *(v11 + 4) = v14;
    *(v11 + 2) = v12;
    *(v2 + 24) = v7;
    swift_endAccess();
    swift_getKeyPath();
    sub_21BE25F2C();

    if (*(v2 + 16) == 1)
    {
      swift_getKeyPath();
      *&v17[0] = v2;
      sub_21BE25F1C();

      v15 = *(v2 + 96);
      if (v15)
      {
        v16 = *(v2 + 104);

        v15(a1);
        return sub_21BB5AEC4(v15, v16);
      }
    }
  }

  return result;
}

uint64_t sub_21BC56190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getMetatypeMetadata();
  v9 = sub_21BE28A7C();
  v11 = v10;
  swift_getKeyPath();
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  if (*(*(v5 + 88) + 16))
  {

    sub_21BBB3108(v9, v11);
    if (v12)
    {
    }
  }

  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a2;
  v14[5] = a3;
  swift_getKeyPath();

  sub_21BE25F1C();

  swift_getKeyPath();
  sub_21BE25F3C();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v5 + 88);
  *(v5 + 88) = 0x8000000000000000;
  sub_21BC7FF4C(sub_21BC5A314, v14, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v5 + 88) = v17;
  swift_endAccess();
  swift_getKeyPath();
  sub_21BE25F2C();
}

uint64_t sub_21BC563F4@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_21BE2946C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21[-v11 - 8];
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21BB3A35C(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, a3);
    (*(v13 + 32))(v15, v12, a3);
    a2(v15);
    return (*(v13 + 8))(v15, a3);
  }

  else
  {
    v17(v12, 1, 1, a3);
    result = (*(v9 + 8))(v12, v8);
    v19 = MEMORY[0x277CE1410];
    *(a4 + 24) = MEMORY[0x277CE1428];
    *(a4 + 32) = v19;
  }

  return result;
}

uint64_t sub_21BC56624(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v24 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  swift_getKeyPath();
  v25 = v7;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  if (*(v7 + 112))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    sub_21BE28DDC();
  }

  sub_21BE28D8C();
  v18 = sub_21BE28DAC();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  sub_21BE28D7C();

  v19 = sub_21BE28D6C();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = a6;
  *(v20 + 40) = a7;
  *(v20 + 48) = v8;
  *(v20 + 56) = a1;
  *(v20 + 64) = a2;
  *(v20 + 72) = a3 & 1;
  *(v20 + 80) = v24;
  *(v20 + 88) = a5;
  v22 = sub_21BC54908(0, 0, v17, &unk_21BE3A238, v20);
  return sub_21BC55A7C(v22);
}

uint64_t sub_21BC56874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a7;
  v8[10] = v18;
  v8[11] = v19;
  v8[9] = a4;
  v13 = swift_task_alloc();
  v8[12] = v13;
  v8[13] = sub_21BE28D7C();
  v8[14] = sub_21BE28D6C();
  v14 = swift_task_alloc();
  v8[15] = v14;
  *v14 = v8;
  v14[1] = sub_21BC569A0;

  return sub_21BC56E40(v13, a5, a6, v10, a8, v17, v18);
}

uint64_t sub_21BC569A0()
{
  *(*v1 + 128) = v0;

  v3 = sub_21BE28D0C();
  if (v0)
  {
    v4 = sub_21BC56B9C;
  }

  else
  {
    v4 = sub_21BC56AFC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21BC56AFC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  sub_21BD2BD38(v1, v3, v2, v0 + 2);
  sub_21BC55F1C(v0 + 2);
  sub_21BC17C80((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BC56B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC56C0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v6);
  v7 = LinkDestination.linkTypeIdentifier.getter(v6);
  v9 = v8;
  swift_getKeyPath();
  v20[0] = v3;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  v10 = *(v3 + 88);
  if (*(v10 + 16) && (, v11 = sub_21BBB3108(v7, v9), v13 = v12, , (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 16 * v11);

    v14(v20, a1);
    v15 = __swift_project_boxed_opaque_existential_1Tm(v20, v20[3]);
    MEMORY[0x28223BE20](v15);
    (*(v17 + 16))(v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = sub_21BE2852C();

    result = __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {

    v18 = 0;
  }

  *a2 = v18;
  return result;
}

uint64_t sub_21BC56E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 120) = a6;
  *(v7 + 128) = a7;
  *(v7 + 36) = a4;
  *(v7 + 104) = a3;
  *(v7 + 112) = a5;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  *(v7 + 136) = *(a7 - 8);
  *(v7 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = sub_21BE28D7C();
  *(v7 + 168) = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  *(v7 + 176) = v9;
  *(v7 + 184) = v8;

  return MEMORY[0x2822009F8](sub_21BC56F70, v9, v8);
}

uint64_t sub_21BC56F70()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 36);
  v5 = *(v0 + 96);
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);

  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v0 + 192) = sub_21BC54908(0, 0, v1, &unk_21BE3A3B0, v8);
  v13 = (v2 + *v2);
  v10 = swift_task_alloc();
  *(v0 + 200) = v10;
  *v10 = v0;
  v10[1] = sub_21BC57130;
  v11 = *(v0 + 144);

  return v13(v11);
}

uint64_t sub_21BC57130()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_21BC57498;
  }

  else
  {
    v5 = sub_21BC5726C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BC5726C()
{
  v1 = *(v0 + 208);

  sub_21BE28DFC();
  if (v1)
  {
    v2 = *(v0 + 36);
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    sub_21BE28DDC();
    *(v0 + 40) = v4;
    *(v0 + 48) = v3;
    *(v0 + 56) = v2;
    *(v0 + 34) = 0;
  }

  else
  {
    v6 = *(v0 + 36);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    (*(*(v0 + 136) + 32))(*(v0 + 88), *(v0 + 144), *(v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    sub_21BE28DDC();
    *(v0 + 64) = v8;
    *(v0 + 72) = v7;
    *(v0 + 80) = v6;
    *(v0 + 35) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2854C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21BC57498()
{
  v1 = *(v0 + 36);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BE28DDC();
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  *(v0 + 33) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2854C();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21BC575BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 34) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  v7 = sub_21BE2971C();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  sub_21BE28D7C();
  *(v6 + 80) = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  *(v6 + 88) = v9;
  *(v6 + 96) = v8;

  return MEMORY[0x2822009F8](sub_21BC576B4, v9, v8);
}

uint64_t sub_21BC576B4()
{
  sub_21BE29A2C();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_21BC57780;

  return sub_21BC59524(300000000000000000, 0, 0, 0, 1);
}

uint64_t sub_21BC57780()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_21BC579F8;
  }

  else
  {
    v8 = sub_21BC57918;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BC57918()
{
  v1 = *(v0 + 112);

  sub_21BE28DFC();
  if (!v1)
  {
    v3 = *(v0 + 34);
    v4 = *(v0 + 48);
    *(v0 + 16) = *(v0 + 40);
    *(v0 + 24) = v4;
    *(v0 + 32) = v3;
    *(v0 + 33) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BC579F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC57A64(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  swift_getKeyPath();
  v22 = v5;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  if (*(v5 + 112))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    sub_21BE28DDC();
  }

  sub_21BE28D8C();
  v15 = sub_21BE28DAC();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_21BE28D7C();

  v16 = sub_21BE28D6C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v6;
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;
  *(v17 + 56) = a3 & 1;
  *(v17 + 64) = a4;
  *(v17 + 72) = a5;
  v19 = sub_21BC54908(0, 0, v14, &unk_21BE3A248, v17);
  return sub_21BC55A7C(v19);
}

uint64_t sub_21BC57CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 104) = a8;
  *(v8 + 112) = v13;
  *(v8 + 36) = a7;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = sub_21BE28D7C();
  *(v8 + 136) = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  *(v8 + 144) = v10;
  *(v8 + 152) = v9;

  return MEMORY[0x2822009F8](sub_21BC57D88, v10, v9);
}

uint64_t sub_21BC57D88()
{

  v0[20] = sub_21BE28D6C();
  v2 = sub_21BE28D0C();
  v0[21] = v2;
  v0[22] = v1;

  return MEMORY[0x2822009F8](sub_21BC57E1C, v2, v1);
}

uint64_t sub_21BC57E1C()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 36);
  v5 = *(v0 + 88);
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);

  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = v3;
  *(v8 + 48) = v4;
  *(v0 + 184) = sub_21BC54908(0, 0, v1, &unk_21BE3A3F0, v8);
  v12 = (v2 + *v2);
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_21BC57FD4;

  return v12();
}

uint64_t sub_21BC57FD4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_21BC582C0;
  }

  else
  {
    v5 = sub_21BC58110;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BC58110()
{
  v1 = *(v0 + 200);

  sub_21BE28DFC();
  v2 = *(v0 + 36);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BE28DDC();
  if (v1)
  {
    *(v0 + 40) = v4;
    *(v0 + 48) = v3;
    *(v0 + 56) = v2;
    *(v0 + 34) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();

    *(v0 + 208) = v1;
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = sub_21BC58458;
  }

  else
  {
    *(v0 + 64) = v4;
    *(v0 + 72) = v3;
    *(v0 + 80) = v2;
    *(v0 + 35) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2854C();

    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = sub_21BC583E8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BC582C0()
{
  v1 = *(v0 + 36);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  sub_21BE28DDC();
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  *(v0 + 33) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2854C();

  *(v0 + 208) = *(v0 + 200);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_21BC58458, v4, v5);
}

uint64_t sub_21BC583E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC58458()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BC584C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = v3;
  v7[7] = a1;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  swift_retain_n();
  sub_21BE2857C();
  return v10;
}

uint64_t sub_21BC585A0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _BYTE *a4@<X8>)
{
  swift_getKeyPath();
  v17[0] = a1;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BBA3854(a1 + 32, v17, &qword_27CDB7278, &qword_21BE3A250);
  if (v17[3])
  {
    sub_21BC23F14(v17, v15);
    sub_21BB3A4CC(v17, &qword_27CDB7278, &qword_21BE3A250);
    v7 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    v8 = LinkDestination.linkTypeIdentifier.getter(v7);
    v10 = v9;
    sub_21BC17C80(v15);
  }

  else
  {
    sub_21BB3A4CC(v17, &qword_27CDB7278, &qword_21BE3A250);
    v8 = 0;
    v10 = 0;
  }

  v17[0] = a2;
  swift_getMetatypeMetadata();
  v11 = sub_21BE28A7C();
  if (v10)
  {
    if (v8 == v11 && v10 == v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_21BE2995C();
    }
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13 & 1;
  return result;
}

uint64_t sub_21BC58778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = v3;
  v7[7] = a1;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  v8[5] = a3;
  v8[6] = v3;
  v8[7] = a1;
  swift_retain_n();
  sub_21BE2857C();
  return v10;
}

uint64_t sub_21BC58854@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, BOOL *a5@<X8>)
{
  swift_getKeyPath();
  v17[0] = a1;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = *(v8 + 16);
  v10 = v8 + 32;

  v11 = -v9;
  v12 = -1;
  while (1)
  {
    v13 = v11 + v12;
    if (v11 + v12 == -1)
    {
LABEL_5:

      *a5 = v13 != -1;
      return result;
    }

    if (++v12 >= *(v8 + 16))
    {
      break;
    }

    sub_21BC23F14(v10, v17);
    v14 = sub_21BC589D0(v17, a2, a3);
    v10 += 56;
    sub_21BC17C80(v17);
    if (v14)
    {
      goto LABEL_5;
    }
  }

  __break(1u);

  result = sub_21BC17C80(v17);
  __break(1u);
  return result;
}

uint64_t sub_21BC589D0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v4 = LinkDestination.linkTypeIdentifier.getter(v3);
  v6 = v5;
  swift_getMetatypeMetadata();
  if (v4 == sub_21BE28A7C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();
  }

  return v9 & 1;
}

uint64_t sub_21BC58A94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC14FamilyCircleUI17NavigationManager___observationRegistrar;
  v31[0] = v2;
  v7 = sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  v8 = *(v2 + 24);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v27 = a1;
    v28 = a2;
    v29 = v7;
    v30 = v6;
    v33 = MEMORY[0x277D84F90];

    sub_21BC599DC(0, v9, 0);
    v10 = v33;
    v11 = v8 + 32;
    do
    {
      sub_21BC23F14(v11, v31);
      v12 = v32;
      __swift_project_boxed_opaque_existential_1Tm(v31, v32);
      v13 = LinkDestination.linkTypeIdentifier.getter(v12);
      v15 = v14;
      sub_21BC17C80(v31);
      v33 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21BC599DC((v16 > 1), v17 + 1, 1);
        v10 = v33;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v11 += 56;
      --v9;
    }

    while (v9);

    a1 = v27;
  }

  v31[0] = a1;
  swift_getMetatypeMetadata();
  v31[0] = sub_21BE28A7C();
  v31[1] = v19;
  MEMORY[0x28223BE20](v31[0]);
  v26[2] = v31;
  v20 = sub_21BC59E34(sub_21BC5A084, v26, v10);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      v31[0] = v3;
      sub_21BE25F1C();

      result = *(v3 + 24);
      v24 = *(result + 16);
      if (v24 >= v20)
      {
        if (v24 == v20)
        {
        }

        else
        {
          sub_21BDE6D94(result, result + 32, 0, (2 * v20) | 1);
        }

        return sub_21BC54C6C(v25);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BC58D4C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v30 = sub_21BE2946C();
  v7 = *(v30 - 8);
  v8 = MEMORY[0x28223BE20](v30);
  v10 = &v23 - v9;
  v27 = *(a3 - 8);
  MEMORY[0x28223BE20](v8);
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v31[0] = v5;
  sub_21BC5A2B0(&qword_27CDB69B0, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  sub_21BE25F1C();

  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v12 + 16);

  if (v13)
  {
    v15 = 0;
    v16 = v12 + 32;
    v17 = (v27 + 56);
    while (v15 < *(v12 + 16))
    {
      sub_21BB3A35C(v16, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
      if (swift_dynamicCast())
      {
        v20 = v27;
        (*(v27 + 56))(v10, 0, 1, a3);

        v21 = v24;
        (*(v20 + 32))(v24, v10, a3);
        v22 = v28;
        v26(v21);
        (*(v20 + 8))(v21, a3);
        v19 = v22;
        v18 = 0;
        return (*(*(v29 - 8) + 56))(v19, v18, 1);
      }

      ++v15;
      (*v17)(v10, 1, 1, a3);
      result = (*(v7 + 8))(v10, v30);
      v16 += 56;
      if (v13 == v15)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v18 = 1;
    v19 = v28;
    return (*(*(v29 - 8) + 56))(v19, v18, 1);
  }

  return result;
}