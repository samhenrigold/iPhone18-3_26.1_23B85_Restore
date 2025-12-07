void sub_27591B600(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_2759B87B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  swift_getKeyPath();
  v17[2] = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v11 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v2 + v11, v6, &qword_280A0EFB0, &qword_2759C3128);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_27586BF04(v6, &qword_280A0EFB0, &qword_2759C3128);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_2815ADE70);
    v13 = sub_2759B8988();
    v14 = sub_2759BA648();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_275819000, v13, v14, "pushSwiftUIView, no Append Action Set.", v15, 2u);
      MEMORY[0x277C85860](v15, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v17[1] = 0;
    v16 = sub_2759B8DF8();
    MEMORY[0x28223BE20](v16);
    v17[-2] = &v18;
    v17[-1] = v10;
    sub_2759B90C8();

    (*(v8 + 8))(v10, v7);
  }
}

void sub_27591B960(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v23 - v11;
  v13 = sub_2759B87B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a1;
  v24[1] = a2;
  v25 = a3;
  v26 = a4;
  swift_getKeyPath();
  v23[3] = v5;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v17 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v5 + v17, v12, &qword_280A0EFB0, &qword_2759C3128);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_27586BF04(v12, &qword_280A0EFB0, &qword_2759C3128);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_2815ADE70);
    v19 = sub_2759B8988();
    v20 = sub_2759BA648();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_275819000, v19, v20, "pushSwiftUIView, no Append Action Set.", v21, 2u);
      MEMORY[0x277C85860](v21, -1, -1);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v23[2] = 0;
    v22 = sub_2759B8DF8();
    MEMORY[0x28223BE20](v22);
    v23[-2] = v24;
    v23[-1] = v16;
    sub_2759B90C8();

    (*(v14 + 8))(v16, v13);
  }
}

void sub_27591BCD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = sub_2759B87B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = a1;
  v20[1] = a2;
  swift_getKeyPath();
  v19[3] = v3;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v13 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v3 + v13, v8, &qword_280A0EFB0, &qword_2759C3128);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_27586BF04(v8, &qword_280A0EFB0, &qword_2759C3128);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_2815ADE70);
    v15 = sub_2759B8988();
    v16 = sub_2759BA648();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_275819000, v15, v16, "pushSwiftUIView, no Append Action Set.", v17, 2u);
      MEMORY[0x277C85860](v17, -1, -1);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v19[2] = 0;
    v18 = sub_2759B8DF8();
    MEMORY[0x28223BE20](v18);
    v19[-2] = v20;
    v19[-1] = v12;
    sub_2759B90C8();

    (*(v10 + 8))(v12, v9);
  }
}

void sub_27591C050(uint64_t a1, uint64_t a2)
{
  v18[0] = a2;
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  v8 = sub_2759B87B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel, &protocol conformance descriptor for iCloudHomeViewModel);
  sub_2759B8638();

  v12 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v3 + v12, v7, &qword_280A0EFB0, &qword_2759C3128);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_27586BF04(v7, &qword_280A0EFB0, &qword_2759C3128);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v13 = sub_2759B89A8();
    __swift_project_value_buffer(v13, qword_2815ADE70);
    v14 = sub_2759B8988();
    v15 = sub_2759BA648();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_275819000, v14, v15, "pushSwiftUIView, no Append Action Set.", v16, 2u);
      MEMORY[0x277C85860](v16, -1, -1);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v18[2] = 0;
    v17 = sub_2759B8DF8();
    MEMORY[0x28223BE20](v17);
    v18[-2] = a1;
    v18[-1] = v11;
    sub_2759B90C8();

    (*(v9 + 8))(v11, v8);
  }
}

char *sub_27591C39C(uint64_t a1)
{
  v2 = sub_2759B8328();
  v3 = *(v2 - 8);
  v104 = v2;
  v105 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v100 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v86 - v9;
  v11 = sub_2759B8508();
  v102 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v101 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2759B82B8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v86 - v19;
  MEMORY[0x28223BE20](v18);
  v103 = &v86 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10D80, &qword_2759C4618);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v86 - v26;
  v106 = 0x4C5255736D61;
  v107 = 0xE600000000000000;
  sub_2759BA878();
  if (!*(a1 + 16) || (v28 = sub_2758A24F8(v108), (v29 & 1) == 0))
  {
    sub_275864C40(v108);
    goto LABEL_9;
  }

  sub_275864C94(*(a1 + 56) + 32 * v28, v109);
  sub_275864C40(v108);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v106 = 1752457584;
    v107 = 0xE400000000000000;
    sub_2759BA878();
    if (!*(a1 + 16) || (v35 = sub_2758A24F8(v108), (v36 & 1) == 0))
    {
      sub_275864C40(v108);
      return 0;
    }

    sub_275864C94(*(a1 + 56) + 32 * v35, v109);
    sub_275864C40(v108);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v92 = v5;
    sub_2759B8318();

    v37 = v104;
    v38 = v105 + 48;
    v91 = *(v105 + 48);
    if (v91(v27, 1, v104) == 1)
    {
      sub_27586BF04(v27, &unk_280A10D80, &qword_2759C4618);
      return 0;
    }

    v90 = v38;
    v39 = sub_2759B82C8();
    v40 = *(v105 + 8);
    v89 = v105 + 8;
    v88 = v40;
    v40(v27, v37);
    if (!v39)
    {
      return 0;
    }

    v87 = v11;
    v41 = *(v39 + 16);
    if (!v41)
    {
LABEL_24:

      return 0;
    }

    v42 = v13;
    v43 = 0;
    v97 = (v14 + 8);
    v98 = v14 + 16;
    v99 = v39;
    v94 = v41;
    while (1)
    {
      if (v43 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_60;
      }

      v44 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v45 = *(v14 + 72);
      v93 = v39 + v44;
      v95 = v45;
      v96 = *(v14 + 16);
      v96(v20, v39 + v44 + v45 * v43, v42);
      if (sub_2759B8298() == 0x416465646F636E65 && v46 == 0xED00004C5255534DLL)
      {
        break;
      }

      v47 = sub_2759BAAC8();

      if (v47)
      {
        goto LABEL_26;
      }

      ++v43;
      (*v97)(v20, v42);
      v39 = v99;
      if (v94 == v43)
      {
        goto LABEL_24;
      }
    }

LABEL_26:
    v48 = v42;
    (*(v14 + 32))(v103, v20, v42);
    v49 = sub_2759B82A8();
    if (!v50 || (v108[0] = v49, v108[1] = v50, sub_27589F2D4(v49, v50, v51), sub_2759BA7E8(), v53 = v52, , !v53))
    {
      (*v97)(v103, v42);

      return 0;
    }

    sub_2759B84F8();

    v54 = v102;
    v55 = v87;
    v86 = *(v102 + 48);
    if (v86(v10, 1, v87) == 1)
    {
      (*v97)(v103, v48);

      sub_27586BF04(v10, &unk_280A0EB10, &qword_2759C0740);
      return 0;
    }

    (*(v54 + 32))(v101, v10, v55);
    sub_2759B82F8();
    v56 = v104;
    if (v91(v25, 1, v104) == 1)
    {

      sub_27586BF04(v25, &unk_280A10D80, &qword_2759C4618);
      if (qword_280A0E358 != -1)
      {
LABEL_62:
        swift_once();
      }

      v57 = sub_2759B89A8();
      __swift_project_value_buffer(v57, qword_280A238E8);
      v58 = sub_2759B8988();
      v59 = sub_2759BA648();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_275819000, v58, v59, "Found an encoded AMS deep link, but was not able to form a valid URL", v60, 2u);
        MEMORY[0x277C85860](v60, -1, -1);
      }

      (*(v102 + 8))(v101, v55);
      (*v97)(v103, v48);
      return 0;
    }

    (*(v105 + 32))(v92, v25, v56);
    v61 = 0;
    v62 = v99;
    v63 = v99 + v44;
    v64 = v94;
    while (1)
    {
      if (v61 >= *(v62 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v96(v17, v63, v48);
      if (sub_2759B8298() == 0x416465646F636E65 && v65 == 0xED00004C5255534DLL)
      {
        break;
      }

      v66 = sub_2759BAAC8();

      v67 = *v97;
      (*v97)(v17, v48);
      if (v66)
      {
        goto LABEL_44;
      }

      ++v61;
      v63 += v95;
      v62 = v99;
      if (v64 == v61)
      {
        __break(1u);
        break;
      }
    }

    v67 = *v97;
    (*v97)(v17, v48);
LABEL_44:
    v68 = v99;
    v69 = *(v99 + 16);
    if (v69 < v64)
    {
      __break(1u);
    }

    else if (~v69 + v64 == v61)
    {
LABEL_46:
      v70 = v104;
      v71 = v100;
      v72 = v86;
      if (v69)
      {
        v73 = v92;
        v74 = sub_2759B82C8();
        v75 = MEMORY[0x277D84F90];
        if (v74)
        {
          v75 = v74;
        }

        v108[0] = v75;
        sub_2759B1AE4(v68);
        sub_2759B82D8();
      }

      else
      {

        v73 = v92;
      }

      sub_2759B8308();
      if (v72(v71, 1, v55) == 1)
      {
        v88(v73, v70);
        (*(v102 + 8))(v101, v55);
        v67(v103, v48);
        sub_27586BF04(v71, &unk_280A0EB10, &qword_2759C0740);
        return 0;
      }

      v76 = sub_2759B8488();
      v78 = v77;
      v79 = *(v102 + 8);
      v79(v71, v55);
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v80 = sub_2759B89A8();
      __swift_project_value_buffer(v80, qword_2815ADE70);

      v81 = sub_2759B8988();
      v82 = sub_2759BA668();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v108[0] = v84;
        *v83 = 136315138;
        *(v83 + 4) = sub_2758937B8(v76, v78, v108);
        _os_log_impl(&dword_275819000, v81, v82, "Found an encoded deep link URL. %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v84);
        MEMORY[0x277C85860](v84, -1, -1);
        MEMORY[0x277C85860](v83, -1, -1);
      }

      v88(v92, v104);
      v79(v101, v87);
      v67(v103, v48);
      return v76;
    }

    sub_2758AC864(v68, v93, v61 + 1, (2 * v64) | 1);
    v68 = v85;

    v69 = *(v68 + 16);
    goto LABEL_46;
  }

  v20 = v106;
  if (qword_2815ADD30 != -1)
  {
LABEL_60:
    swift_once();
  }

  v30 = sub_2759B89A8();
  __swift_project_value_buffer(v30, qword_2815ADE70);
  v31 = sub_2759B8988();
  v32 = sub_2759BA668();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_275819000, v31, v32, "Found an AMS deep link URL in resource dictionary", v33, 2u);
    MEMORY[0x277C85860](v33, -1, -1);
  }

  return v20;
}

uint64_t sub_27591D1A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585A7E4;

  return sub_275884C0C(a1, v4, v5, v6);
}

uint64_t sub_27591D254(uint64_t a1)
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

  return sub_2759195AC(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_27591D328(uint64_t a1)
{
  v1 = sub_2759BA298();
  v3 = v2;
  if (v1 == sub_2759BA298() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_2759BAAC8();

  if (v6)
  {
    return 0xD000000000000019;
  }

  v7 = sub_2759BA298();
  v9 = v8;
  if (v7 == sub_2759BA298() && v9 == v10)
  {
LABEL_14:

    return 0xD000000000000019;
  }

  v12 = sub_2759BAAC8();

  if (v12)
  {
    return 0xD000000000000019;
  }

  v13 = sub_2759BA298();
  v15 = v14;
  if (v13 == sub_2759BA298() && v15 == v16)
  {

    return 0xD000000000000016;
  }

  v18 = sub_2759BAAC8();

  if (v18)
  {
    return 0xD000000000000016;
  }

  v19 = sub_2759BA298();
  v21 = v20;
  if (v19 == sub_2759BA298() && v21 == v22)
  {

    return 0xD000000000000013;
  }

  v23 = sub_2759BAAC8();

  if (v23)
  {
    return 0xD000000000000013;
  }

  v24 = sub_2759BA298();
  v26 = v25;
  if (v24 == sub_2759BA298() && v26 == v27)
  {

    return 0xD000000000000015;
  }

  v28 = sub_2759BAAC8();

  if (v28)
  {
    return 0xD000000000000015;
  }

  v29 = sub_2759BA298();
  v31 = v30;
  if (v29 == sub_2759BA298() && v31 == v32)
  {

    return 0xD000000000000013;
  }

  v33 = sub_2759BAAC8();

  if (v33)
  {
    return 0xD000000000000013;
  }

  v34 = sub_2759BA298();
  v36 = v35;
  if (v34 == sub_2759BA298() && v36 == v37)
  {

    return 0xD000000000000014;
  }

  v38 = sub_2759BAAC8();

  if (v38)
  {
    return 0xD000000000000014;
  }

  return 0;
}

uint64_t sub_27591D730(void *a1)
{
  v2 = sub_27591D328(a1);
  if (!v3)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_2815ADE70);
    v15 = a1;
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      v20 = sub_2759BA298();
      v22 = sub_2758937B8(v20, v21, &v30);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_275819000, v16, v17, "No bundle identifier found for six pack app: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x277C85860](v19, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v7 = sub_2758707E8(v4, v5, 0);
  if (!v7)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);

    v9 = sub_2759B8988();
    v10 = sub_2759BA648();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      v13 = sub_2758937B8(v4, v5, &v30);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_275819000, v9, v10, "Unable to determine if app with bundle id: %s is installed or not.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v24 = sub_2759B89A8();
  __swift_project_value_buffer(v24, qword_2815ADE70);

  v25 = sub_2759B8988();
  v26 = sub_2759BA668();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v27 = 136315138;
    v29 = sub_2758937B8(v4, v5, &v30);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_275819000, v25, v26, "App w/ bundleID %s is installed.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x277C85860](v28, -1, -1);
    MEMORY[0x277C85860](v27, -1, -1);
  }

  else
  {
  }

  return 1;
}

void _s14iCloudSettings01iA13HomeViewModelC27upgradeFlowManagerDidCancelyySo010ICQUpgradegH0CSgF_0()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_2815ADE70);
  oslog = sub_2759B8988();
  v1 = sub_2759BA648();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_275819000, oslog, v1, "Upgrade flow was cancelled.", v2, 2u);
    MEMORY[0x277C85860](v2, -1, -1);
  }
}

uint64_t _s14iCloudSettings01iA13HomeViewModelC29upgradeFlowManagerDidCompleteyySo010ICQUpgradegH0CSgF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_2815ADE70);
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_275819000, v6, v7, "Upgrade flow completed successfully!", v8, 2u);
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
  sub_27587D460(0, 0, v4, &unk_2759C8E30, v12);
}

void sub_27591DDF4(void *a1)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = a1;
  oslog = sub_2759B8988();
  v4 = sub_2759BA648();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a1)
    {
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v5 + 4) = v8;
    *v6 = v9;
    _os_log_impl(&dword_275819000, oslog, v4, "Upgrade flow failed with error: %@", v5, 0xCu);
    sub_27586BF04(v6, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v6, -1, -1);
    MEMORY[0x277C85860](v5, -1, -1);
  }
}

void sub_27591DF64(void *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, a2);
  oslog = sub_2759B8988();
  v7 = sub_2759BA668();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_275819000, oslog, v7, a3, v8, 2u);
    MEMORY[0x277C85860](v8, -1, -1);
  }
}

id sub_27591E084@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 8);
  v5 = *v2;
  *a1 = *v2;
  a1[1] = v3;

  return v5;
}

unint64_t sub_27591E0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10D58;
  if (!qword_280A10D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10D58);
  }

  return result;
}

unint64_t sub_27591E140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10D70;
  if (!qword_280A10D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10D70);
  }

  return result;
}

uint64_t sub_27591E194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275918C34(a1, v4, v5, v6);
}

uint64_t sub_27591E248(uint64_t a1)
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

  return sub_275919E78(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_27591E3D8()
{
  result = qword_280A10D90;
  if (!qword_280A10D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A12840, &qword_2759C8E78);
    sub_27591EFC0(&qword_280A10D98, type metadata accessor for ManageStorageLiftUIDrilldownView, &unk_2759CF830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10D90);
  }

  return result;
}

uint64_t sub_27591E494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275914538(a1, v4, v5, (v1 + 4), (v1 + 8), (v1 + 12), (v1 + 16), v6);
}

uint64_t sub_27591E568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275915280(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27591E640(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 9u && ((1 << a3) & 0x3CD) != 0)
  {
  }

  return result;
}

uint64_t sub_27591E66C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_2759333E0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_27591E744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275911788(a1, v4, v5, v7, v6);
}

uint64_t sub_27591E804(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_275918F00(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_131Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t objectdestroy_109Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_27591E968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275917E80(a1, v4, v5, v7, v6);
}

uint64_t sub_27591EA28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275917FA8(a1, v4, v5, v7, v6);
}

void sub_27591EAE8()
{
  v1 = *(sub_2759B8508() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_275919BC4(v2);
}

uint64_t sub_27591EB48(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2759B8508() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = v11[8];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_27585F7A0;

  return sub_2759156C4(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_27591EC94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275917A88(a1, v4, v5, v6);
}

uint64_t sub_27591ED48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27591797C(a1, v4, v5, v6);
}

uint64_t sub_27591EDFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_27585F7A0;

  return sub_275917370(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_27591EED8(uint64_t a1)
{
  v2 = type metadata accessor for ManageStorageLiftUIDrilldownView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27591EF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageLiftUIDrilldownView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27591EFC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27591F054(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27591F074(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

double sub_27591F0B4(uint64_t a1, int a2, uint64_t a3, int a4, char *a5)
{
  v112 = a5;
  v99 = a4;
  v107 = a3;
  v100 = a2;
  v88 = sub_2759B8E58();
  v101 = *(v88 - 8);
  v6 = MEMORY[0x28223BE20](v88);
  v87 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v82 - v8;
  v93 = type metadata accessor for TrimmingHStackLayout.RowItem(0);
  v105 = *(v93 - 8);
  v9 = MEMORY[0x28223BE20](v93);
  v94 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v92 = &v82 - v12;
  MEMORY[0x28223BE20](v11);
  v109 = &v82 - v13;
  v14 = sub_2759B8F98();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v82 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v82 - v21;
  MEMORY[0x28223BE20](v20);
  v104 = &v82 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DF0, &qword_2759C9250);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v27 = &v82 - v26;
  v28 = sub_2759B9028();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v29;
  v32 = *(v29 + 16);
  v32(v31, v112, v28);
  v106 = a1;
  v33 = a1;
  v34 = v100;
  if (v100)
  {
    v35 = INFINITY;
  }

  else
  {
    v35 = *&v33;
  }

  v32(v27, v31, v28);
  v36 = *(v25 + 44);
  v37 = sub_27586D968();
  v83 = v31;
  sub_2759BA5B8();
  v108 = v37;
  sub_2759BA5D8();
  if (*&v27[v36] == v114)
  {
    v38 = 0.0;
    v112 = MEMORY[0x277D84F90];
  }

  else
  {
    v40 = v36;
    v111 = v22;
    v97 = 0;
    v41 = (v15 + 16);
    v110 = (v15 + 32);
    v85 = v101 + 1;
    v89 = v15;
    v101 = (v15 + 8);
    v38 = 0.0;
    v42 = MEMORY[0x277D84F90];
    v100 = v34 & 1;
    v99 &= 1u;
    v112 = MEMORY[0x277D84F90];
    v43 = 0.0;
    v103 = v28;
    v102 = v40;
    do
    {
      v44 = sub_2759BA5F8();
      v45 = *v41;
      v46 = v104;
      (*v41)(v104);
      v44(&v114, 0);
      sub_2759BA5E8();
      v47 = v111;
      v48 = *v110;
      (*v110)(v111, v46, v14);
      LOBYTE(v114) = v100;
      v113 = v99;
      sub_2759B8F68();
      v50 = v49;
      v52 = v51;
      v53 = v42[2];
      if (v53)
      {
        v96 = (*(v105 + 80) + 32) & ~*(v105 + 80);
        v95 = *(v105 + 72);
        sub_275920224(v42 + v96 + v95 * (v53 - 1), v109);
        if (v97)
        {
          (v45)(v90, v47, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v112 = sub_275870F2C(0, *(v112 + 2) + 1, 1, v112);
          }

          v55 = *(v112 + 2);
          v54 = *(v112 + 3);
          if (v55 >= v54 >> 1)
          {
            v112 = sub_275870F2C((v54 > 1), v55 + 1, 1, v112);
          }

          v56 = v112;
          *(v112 + 2) = v55 + 1;
          v48(&v56[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v55], v90, v14);
        }

        if (*(v98 + 32))
        {
          v57 = v86;
          sub_2759B8F88();
          v58 = v87;
          sub_2759B8F88();
          sub_2759B8E38();
          v60 = v59;
          v61 = *v85;
          v62 = v58;
          v63 = v88;
          (*v85)(v62, v88);
          v61(v57, v63);
        }

        else
        {
          v60 = *(v98 + 24);
        }

        v69 = v38 + v60;
        v70 = v50 + v38 + v60;
        if (v35 >= v70)
        {
          if (v43 <= v52)
          {
            v43 = v52;
          }

          v76 = v92;
          v77 = v111;
          (v45)(v92, v111, v14);
          v78 = v93;
          *(v76 + *(v93 + 20)) = v69;
          v79 = (v76 + *(v78 + 24));
          *v79 = v50;
          v79[1] = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_275870F04(0, v42[2] + 1, 1, v42);
          }

          v28 = v103;
          v81 = v42[2];
          v80 = v42[3];
          if (v81 >= v80 >> 1)
          {
            v42 = sub_275870F04((v80 > 1), v81 + 1, 1, v42);
          }

          sub_275920288(v109);
          (*v101)(v77, v14);
          v42[2] = v81 + 1;
          sub_2759202E4(v92, v42 + v96 + v81 * v95);
          v38 = v70;
        }

        else
        {
          v71 = v111;
          (v45)(v91, v111, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v112 = sub_275870F2C(0, *(v112 + 2) + 1, 1, v112);
          }

          v72 = v89;
          v74 = *(v112 + 2);
          v73 = *(v112 + 3);
          if (v74 >= v73 >> 1)
          {
            v112 = sub_275870F2C((v73 > 1), v74 + 1, 1, v112);
          }

          sub_275920288(v109);
          (*(v72 + 8))(v71, v14);
          v75 = v112;
          *(v112 + 2) = v74 + 1;
          v48(&v75[((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v74], v91, v14);
          v97 = 1;
          v28 = v103;
        }
      }

      else
      {
        v64 = v94;
        (v45)(v94, v47, v14);
        v65 = v93;
        *(v64 + *(v93 + 20)) = 0;
        v66 = (v64 + *(v65 + 24));
        *v66 = v50;
        v66[1] = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_275870F04(0, 1, 1, v42);
        }

        v28 = v103;
        v68 = v42[2];
        v67 = v42[3];
        if (v68 >= v67 >> 1)
        {
          v42 = sub_275870F04((v67 > 1), v68 + 1, 1, v42);
        }

        (*v101)(v47, v14);
        v42[2] = v68 + 1;
        sub_2759202E4(v94, v42 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v68);
        v43 = v52;
        v38 = v50;
      }

      sub_2759BA5D8();
    }

    while (*&v27[v102] != v114);
  }

  sub_275920348(v27);
  (*(v84 + 8))(v83, v28);
  return v38;
}

void sub_27591FBB0(uint64_t a1, int a2, uint64_t a3, int a4, void (*a5)(char *, uint64_t, uint64_t), CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v57 = a5;
  v52 = a1;
  v18 = sub_2759B8F98();
  v50 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TrimmingHStackLayout.RowItem(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v65 = a2 & 1;
  v59 = a4;
  v64 = a4 & 1;
  v54 = a3;
  sub_27591F0B4(a1, a2 & 1, a3, a4 & 1, v57);
  v26 = v25;
  v28 = v27;
  v29 = *(v9 + 16) == 1;
  v49 = v20;
  v48 = v18;
  v30 = v22;
  if (v29)
  {
    v31 = sub_2759BA028();
  }

  else
  {
    v31 = *v9;
  }

  sub_27592E0F0(v31);
  v33 = *(v26 + 16);
  v51 = v28;
  if (v33)
  {
    v34 = *(v21 + 20);
    v56 = &v24[*(v21 + 24)];
    v57 = v34;
    v35 = v26 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v36 = *(v30 + 72);
    v37 = v26;
    v55 = v32;

    v38 = v59;
    v39 = v53;
    v58 = a6;
    do
    {
      sub_275920224(v35, v24);
      v66.origin.x = a6;
      v66.origin.y = a7;
      v66.size.width = a8;
      v66.size.height = a9;
      CGRectGetMinX(v66);
      v67.origin.x = a6;
      v67.origin.y = a7;
      v67.size.width = a8;
      v67.size.height = a9;
      CGRectGetWidth(v67);
      v68.origin.x = a6;
      v68.origin.y = a7;
      v68.size.width = a8;
      v68.size.height = a9;
      CGRectGetMinY(v68);
      CGPointMake();
      sub_2759BA0B8();
      v63 = v39 & 1;
      v62 = v38 & 1;
      a6 = v58;
      sub_2759B8F78();
      sub_275920288(v24);
      v35 += v36;
      --v33;
    }

    while (v33);
    v26 = v37;

    v28 = v51;
  }

  v40 = *(v28 + 16);
  if (v40)
  {
    v55 = v26;
    v41 = *(v50 + 16);
    v42 = v28 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v56 = *(v50 + 72);
    v57 = v41;
    v43 = (v50 + 8);

    v44 = v53;
    v45 = v48;
    v46 = v49;
    do
    {
      (v57)(v46, v42, v45);
      v69.origin.x = a6;
      v69.origin.y = a7;
      v69.size.width = a8;
      v69.size.height = a9;
      CGRectGetMinY(v69);
      CGPointMake();
      sub_2759BA0B8();
      v61 = v44 & 1;
      v60 = v59 & 1;
      sub_2759B8F78();
      (*v43)(v46, v45);
      v42 += v56;
      --v40;
    }

    while (v40);
  }
}

void sub_275920054(uint64_t a1, char a2, uint64_t a3, char a4, char *a5)
{
  sub_27591F0B4(a1, a2 & 1, a3, a4 & 1, a5);

  CGPointMake();
}

void (*sub_2759200F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2759B8D18();
  return sub_27586D848;
}

unint64_t sub_275920184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10DE8;
  if (!qword_280A10DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10DE8);
  }

  return result;
}

uint64_t type metadata accessor for TrimmingHStackLayout.RowItem(uint64_t a1)
{
  result = qword_280A10DF8;
  if (!qword_280A10DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275920224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrimmingHStackLayout.RowItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275920288(uint64_t a1)
{
  v2 = type metadata accessor for TrimmingHStackLayout.RowItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2759202E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrimmingHStackLayout.RowItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275920348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DF0, &qword_2759C9250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2759203D8(uint64_t a1)
{
  sub_2759B8F98();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_275920464()
{
  swift_getKeyPath();
  sub_275924074();
  sub_2759B8638();

  return *(v0 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading);
}

uint64_t sub_2759204DC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275924074();
    sub_2759B8628();
  }

  return result;
}

uint64_t sub_2759205D4()
{
  swift_getKeyPath();
  sub_275924074();
  sub_2759B8638();
}

void sub_275920650(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages) = a2;
}

uint64_t sub_275920694@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel);
  v3 = *(v2 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8);
  if (v3 >= 5)
  {
    v7 = *(v2 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
    if (*(v7 + 16))
    {
      v4 = *(v7 + 32);
      v8 = a1;

      a1 = v8;
      LOBYTE(v6) = 9;
    }

    else
    {
      result = 0;
      LOBYTE(v6) = 10;
      v4 = 9;
    }
  }

  else
  {
    v4 = *&aBackup_3[8 * v3];
    result = qword_2759C9410[v3];
    v6 = 0x909090A09uLL >> (8 * v3);
  }

  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 16) = v6;
  return result;
}

uint64_t static ManageStorageAppViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
  v4 = *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel);
  v5 = *(a2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel);
  v6 = v4;
  v7 = v5;
  LOBYTE(v5) = sub_2759BA788();

  return v5 & 1;
}

uint64_t sub_2759207D8()
{
  *(v1 + 16) = v0;
  sub_275861AF8(0, &qword_280A10E68, 0x277D1B1C8);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_275920888;

  return sub_27586A7A8(0);
}

uint64_t sub_275920888(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_275920988, 0, 0);
}

uint64_t sub_275920988()
{
  v42 = v0;
  v1 = v0[2];
  v2 = *(*(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    v2 = 4;
LABEL_4:
    v40 = 0x2D6C61636F6CLL;
    v41 = 0xE600000000000000;
    v3 = ICSIconUTTypeKey.utType.getter(v2);
    MEMORY[0x277C840E0](v3);

    v4 = (v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID);
    *v4 = 0x2D6C61636F6CLL;
    v4[1] = 0xE600000000000000;

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
      v9 = swift_slowAlloc();
      v40 = v9;
      *v8 = 136315138;
      v10 = ICSIconUTTypeKey.utType.getter(v2);
      v12 = sub_2758937B8(v10, v11, &v40);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_275819000, v6, v7, "ManageStorageApp.fetchLocalTableImage graphicIcon: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x277C85860](v9, -1, -1);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    v13 = v0[4];
    v14 = ICSIconUTTypeKey.utType.getter(v2);
    v16 = sub_275873EFC(v14, v15, v13);

    goto LABEL_9;
  }

  v19 = v0[4];

  v16 = sub_275871298(v20, v19);
  v22 = v21;
  v24 = v23;

  if (v16)
  {
    v25 = v0[2];
    v40 = 0x2D6C61636F6CLL;
    v41 = 0xE600000000000000;
    MEMORY[0x277C840E0](v22, v24);
    v26 = (v25 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID);
    *v26 = 0x2D6C61636F6CLL;
    v26[1] = 0xE600000000000000;

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v27 = sub_2759B89A8();
    __swift_project_value_buffer(v27, qword_280A238A0);

    v13 = sub_2759B8988();
    v28 = sub_2759BA668();

    v29 = os_log_type_enabled(v13, v28);
    v30 = v0[4];
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      v33 = sub_2758937B8(v22, v24, &v40);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_275819000, v13, v28, "ManageStorageApp.fetchLocalTableImage: local image, bundleId: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x277C85860](v32, -1, -1);
      MEMORY[0x277C85860](v31, -1, -1);

LABEL_9:
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v34 = sub_2759B89A8();
    __swift_project_value_buffer(v34, qword_280A238A0);
    v35 = sub_2759B8988();
    v36 = sub_2759BA638();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[4];
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_275819000, v35, v36, "ManageStorageApp.fetchLocalTableImage: no local image found", v39, 2u);
      MEMORY[0x277C85860](v39, -1, -1);
    }

    v16 = 0;
  }

LABEL_10:
  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_275920E30()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v1[3] = swift_task_alloc();
  v2 = sub_2759B8508();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275920F34, 0, 0);
}

uint64_t sub_275920F34()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v0[8] = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v3 = *(*(v1 + v2) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_iconUrls);
  v0[9] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_275921000;
  v5 = v0[3];

  return sub_2758F6610(v5);
}

uint64_t sub_275921000()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_275921114, 0, 0);
}

uint64_t sub_275921114()
{
  v45 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_27585A458(v3);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_2815ADE70);
    v6 = v4;
    v7 = sub_2759B8988();
    v8 = sub_2759BA648();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[8];
      v10 = v0[2];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v44[0] = v12;
      *v11 = 136315138;
      v13 = (*(v10 + v9) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_2758937B8(v14, v15, v44);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_275819000, v7, v8, "%s: Unable to find url for icon", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v17 = v0[1];

    return v17(0);
  }

  else
  {
    v19 = v0[2];
    (*(v2 + 32))(v0[7], v3, v1);
    v44[0] = 0x2D65746F6D6572;
    v44[1] = 0xE700000000000000;
    v20 = sub_2759B8488();
    MEMORY[0x277C840E0](v20);

    v21 = (v19 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID);
    *v21 = 0x2D65746F6D6572;
    v21[1] = 0xE700000000000000;

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v22 = v0[6];
    v23 = v0[7];
    v24 = v0[4];
    v25 = v0[5];
    v26 = sub_2759B89A8();
    __swift_project_value_buffer(v26, qword_280A238A0);
    (*(v25 + 16))(v22, v23, v24);
    v27 = sub_2759B8988();
    v28 = sub_2759BA668();
    v29 = os_log_type_enabled(v27, v28);
    v31 = v0[5];
    v30 = v0[6];
    v32 = v0[4];
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v33 = 136315138;
      v42 = sub_2759B8488();
      v36 = v35;
      v37 = *(v31 + 8);
      v37(v30, v32);
      v38 = sub_2758937B8(v42, v36, v44);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_275819000, v27, v28, "ManageStorageApp.fetchRemoteTableImage: remote image, url: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x277C85860](v34, -1, -1);
      MEMORY[0x277C85860](v33, -1, -1);
    }

    else
    {

      v37 = *(v31 + 8);
      v37(v30, v32);
    }

    v0[11] = v37;
    if (*(*(v0[2] + v0[8]) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_applySystemStyle) == 1)
    {
      v43 = sub_27587348C;
      v39 = swift_task_alloc();
      v0[12] = v39;
      *v39 = v0;
      v40 = sub_27592161C;
    }

    else
    {
      v43 = sub_275873948;
      v39 = swift_task_alloc();
      v0[14] = v39;
      *v39 = v0;
      v40 = sub_2759217BC;
    }

    v39[1] = v40;
    v41 = v0[7];

    return v43(v41);
  }
}

uint64_t sub_27592161C(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_27592171C, 0, 0);
}

uint64_t sub_27592171C()
{
  (*(v0 + 88))(*(v0 + 56), *(v0 + 32));
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2759217BC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_275921988;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_2759218E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2759218E8()
{
  v1 = *(v0 + 120);
  (*(v0 + 88))(*(v0 + 56), *(v0 + 32));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_275921988()
{
  (*(v0 + 88))(*(v0 + 56), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_275921A1C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_275921A3C, 0, 0);
}

uint64_t sub_275921A3C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage;
  v0[4] = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage;
  if (*(v1 + v2))
  {
    v3 = v0[1];

    return v3();
  }

  else if (*(*(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_fetchLocally) == 1)
  {
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_275921BA4;

    return sub_275921EEC();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_275921D80;
    v7 = v0[2];

    return sub_2759224B0(v7);
  }
}

uint64_t sub_275921BA4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_275921CA4, 0, 0);
}

uint64_t sub_275921CA4()
{
  v1 = v0[6];
  if (v1)
  {
    v3 = v0[3];
    v2 = v0[4];
    v4 = *(v3 + v2);
    *(v3 + v2) = v1;

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_275921D80;
    v8 = v0[2];

    return sub_2759224B0(v8);
  }
}

uint64_t sub_275921D80(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_275921E80, 0, 0);
}

uint64_t sub_275921E80()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_275921EEC()
{
  *(v1 + 16) = v0;
  sub_275861AF8(0, &qword_280A10E68, 0x277D1B1C8);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_275921F9C;

  return sub_27586A7A8(1);
}

uint64_t sub_275921F9C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_27592209C, 0, 0);
}

uint64_t sub_27592209C()
{
  v36 = v0;
  v1 = *(*(v0[2] + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8);
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 == 1)
  {
    v1 = 4;
LABEL_4:
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
      v35 = v6;
      *v5 = 136315138;
      v7 = ICSIconUTTypeKey.utType.getter(v1);
      v9 = sub_2758937B8(v7, v8, &v35);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_275819000, v3, v4, "ManageStorageApp.fetchLocalAnimationImage graphicIcon: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x277C85860](v6, -1, -1);
      MEMORY[0x277C85860](v5, -1, -1);
    }

    v10 = v0[4];
    v11 = ICSIconUTTypeKey.utType.getter(v1);
    v13 = sub_275873EFC(v11, v12, v10);

    goto LABEL_9;
  }

  v16 = v0[4];

  v13 = sub_275871298(v17, v16);
  v19 = v18;
  v21 = v20;

  if (v13)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v22 = sub_2759B89A8();
    __swift_project_value_buffer(v22, qword_280A238A0);

    v10 = sub_2759B8988();
    v23 = sub_2759BA668();

    v24 = os_log_type_enabled(v10, v23);
    v25 = v0[4];
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 136315138;
      v28 = sub_2758937B8(v19, v21, &v35);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_275819000, v10, v23, "ManageStorageApp.fetchLocalAnimationImage bundleId: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x277C85860](v27, -1, -1);
      MEMORY[0x277C85860](v26, -1, -1);

LABEL_9:
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v29 = sub_2759B89A8();
    __swift_project_value_buffer(v29, qword_280A238A0);
    v30 = sub_2759B8988();
    v31 = sub_2759BA638();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[4];
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_275819000, v30, v31, "ManageStorageApp.fetchLocalAnimationImage: no local image found", v34, 2u);
      MEMORY[0x277C85860](v34, -1, -1);
    }

    v13 = 0;
  }

LABEL_10:
  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_2759224B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2759B8508();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759225FC, 0, 0);
}

uint64_t sub_2759225FC()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v0[15] = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v3 = *(*(v1 + v2) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailViewIconUrls);
  v0[16] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_2759226C8;
  v5 = v0[14];

  return sub_2758F6610(v5);
}

uint64_t sub_2759226C8()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](sub_2759227DC, 0, 0);
}

uint64_t sub_2759227DC()
{
  v86 = v0;
  v1 = v0[13];
  v2 = v0[4];
  v3 = v0[5];
  sub_2758BB4AC(v0[14], v1);
  v4 = *(v3 + 48);
  v0[18] = v4;
  v0[19] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v4(v1, 1, v2);
  sub_27585A458(v1);
  if (v2 == 1)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v5 = v0[12];
    v6 = v0[2];
    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_280A238A0);
    sub_2758BB4AC(v6, v5);
    v8 = sub_2759B8988();
    v9 = sub_2759BA668();
    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[11];
      v10 = v0[12];
      v12 = v0[4];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v85 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_2758937B8(0xD000000000000027, 0x80000002759E1780, &v85);
      *(v13 + 12) = 2080;
      sub_2758BB4AC(v10, v11);
      v15 = v4(v11, 1, v12);
      v16 = v0[11];
      if (v15 == 1)
      {
        sub_27585A458(v0[11]);
        v17 = 0xE300000000000000;
        v18 = 7104878;
      }

      else
      {
        v83 = v14;
        v21 = v0[5];
        v82 = v0[4];
        v18 = sub_2759B8488();
        v17 = v22;
        (*(v21 + 8))(v16, v82);
        v14 = v83;
      }

      v19 = v0[14];
      sub_27585A458(v0[12]);
      v23 = sub_2758937B8(v18, v17, &v85);

      *(v13 + 14) = v23;
      _os_log_impl(&dword_275819000, v8, v9, "%s Could not find detail icon url, attempting to use fallback %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C85860](v14, -1, -1);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    else
    {
      v19 = v0[14];
      v20 = v0[12];

      sub_27585A458(v20);
    }

    sub_27585A458(v19);
    sub_2758BB4AC(v0[2], v0[14]);
  }

  v24 = v0[10];
  v25 = v0[4];
  sub_2758BB4AC(v0[14], v24);
  LODWORD(v25) = v4(v24, 1, v25);
  sub_27585A458(v24);
  if (v25 == 1)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v26 = v0[3];
    v27 = sub_2759B89A8();
    __swift_project_value_buffer(v27, qword_2815ADE70);
    v28 = v26;
    v29 = sub_2759B8988();
    v30 = sub_2759BA668();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[15];
      v32 = v0[3];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v85 = v34;
      *v33 = 136315138;
      v35 = (*(v32 + v31) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
      v36 = *v35;
      v37 = v35[1];

      v38 = sub_2758937B8(v36, v37, &v85);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_275819000, v29, v30, "%s: Unable to find detail view url or fallback url, attempting to user table icon", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x277C85860](v34, -1, -1);
      MEMORY[0x277C85860](v33, -1, -1);
    }

    v39 = *(*(v0[3] + v0[15]) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_iconUrls);
    v0[20] = v39;
    v39;
    v40 = swift_task_alloc();
    v0[21] = v40;
    *v40 = v0;
    v40[1] = sub_2759231B4;
    v41 = v0[9];

    return sub_2758F6610(v41);
  }

  else
  {
    v43 = v0[18];
    v44 = v0[8];
    v45 = v0[4];
    sub_2758BB4AC(v0[14], v44);
    if (v43(v44, 1, v45) == 1)
    {
      sub_27585A458(v0[8]);
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v46 = v0[3];
      v47 = sub_2759B89A8();
      __swift_project_value_buffer(v47, qword_2815ADE70);
      v48 = v46;
      v49 = sub_2759B8988();
      v50 = sub_2759BA648();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = v0[14];
        v52 = v0[15];
        v53 = v0[3];
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v85 = v55;
        *v54 = 136315138;
        v56 = (*(v53 + v52) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
        v57 = *v56;
        v58 = v56[1];

        v59 = sub_2758937B8(v57, v58, &v85);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_275819000, v49, v50, "%s: Unable to find any url for icon", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x277C85860](v55, -1, -1);
        MEMORY[0x277C85860](v54, -1, -1);
      }

      else
      {
        v51 = v0[14];
      }

      sub_27585A458(v51);

      v77 = v0[1];

      return v77(0);
    }

    else
    {
      (*(v0[5] + 32))(v0[7], v0[8], v0[4]);
      if (qword_280A0E338 != -1)
      {
        swift_once();
      }

      v60 = v0[6];
      v61 = v0[7];
      v62 = v0[4];
      v63 = v0[5];
      v64 = sub_2759B89A8();
      __swift_project_value_buffer(v64, qword_280A238A0);
      (*(v63 + 16))(v60, v61, v62);
      v65 = sub_2759B8988();
      v66 = sub_2759BA668();
      v67 = os_log_type_enabled(v65, v66);
      v69 = v0[5];
      v68 = v0[6];
      v70 = v0[4];
      if (v67)
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v85 = v72;
        *v71 = 136315138;
        v84 = sub_2759B8488();
        v74 = v73;
        v75 = *(v69 + 8);
        v75(v68, v70);
        v76 = sub_2758937B8(v84, v74, &v85);

        *(v71 + 4) = v76;
        _os_log_impl(&dword_275819000, v65, v66, "ManageStorageApp.fetchRemoteAnimationImage using url: %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x277C85860](v72, -1, -1);
        MEMORY[0x277C85860](v71, -1, -1);
      }

      else
      {

        v75 = *(v69 + 8);
        v75(v68, v70);
      }

      v0[22] = v75;
      if (*(*(v0[3] + v0[15]) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_applySystemStyle) == 1)
      {
        v78 = swift_task_alloc();
        v0[23] = v78;
        *v78 = v0;
        v78[1] = sub_27592382C;
        v79 = v0[7];

        return sub_275872FC8(v79, 100.0, 100.0);
      }

      else
      {
        v80 = swift_task_alloc();
        v0[25] = v80;
        *v80 = v0;
        v80[1] = sub_275923A2C;
        v81 = v0[7];

        return sub_275873948(v81);
      }
    }
  }
}

uint64_t sub_2759231B4()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_2759232C8, 0, 0);
}

uint64_t sub_2759232C8()
{
  v45 = v0;
  v1 = v0[14];
  v2 = v0[9];
  sub_27585A458(v1);
  sub_2758B4BD0(v2, v1);
  v3 = v0[18];
  v4 = v0[8];
  v5 = v0[4];
  sub_2758BB4AC(v0[14], v4);
  if (v3(v4, 1, v5) == 1)
  {
    sub_27585A458(v0[8]);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v6 = v0[3];
    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_2815ADE70);
    v8 = v6;
    v9 = sub_2759B8988();
    v10 = sub_2759BA648();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[14];
      v12 = v0[15];
      v13 = v0[3];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = v15;
      *v14 = 136315138;
      v16 = (*(v13 + v12) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
      v17 = *v16;
      v18 = v16[1];

      v19 = sub_2758937B8(v17, v18, &v44);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_275819000, v9, v10, "%s: Unable to find any url for icon", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x277C85860](v15, -1, -1);
      MEMORY[0x277C85860](v14, -1, -1);
    }

    else
    {
      v11 = v0[14];
    }

    sub_27585A458(v11);

    v37 = v0[1];

    return v37(0);
  }

  else
  {
    (*(v0[5] + 32))(v0[7], v0[8], v0[4]);
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v20 = v0[6];
    v21 = v0[7];
    v22 = v0[4];
    v23 = v0[5];
    v24 = sub_2759B89A8();
    __swift_project_value_buffer(v24, qword_280A238A0);
    (*(v23 + 16))(v20, v21, v22);
    v25 = sub_2759B8988();
    v26 = sub_2759BA668();
    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[5];
    v28 = v0[6];
    v30 = v0[4];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136315138;
      v43 = sub_2759B8488();
      v34 = v33;
      v35 = *(v29 + 8);
      v35(v28, v30);
      v36 = sub_2758937B8(v43, v34, &v44);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_275819000, v25, v26, "ManageStorageApp.fetchRemoteAnimationImage using url: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x277C85860](v32, -1, -1);
      MEMORY[0x277C85860](v31, -1, -1);
    }

    else
    {

      v35 = *(v29 + 8);
      v35(v28, v30);
    }

    v0[22] = v35;
    if (*(*(v0[3] + v0[15]) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_applySystemStyle) == 1)
    {
      v39 = swift_task_alloc();
      v0[23] = v39;
      *v39 = v0;
      v39[1] = sub_27592382C;
      v40 = v0[7];

      return sub_275872FC8(v40, 100.0, 100.0);
    }

    else
    {
      v41 = swift_task_alloc();
      v0[25] = v41;
      *v41 = v0;
      v41[1] = sub_275923A2C;
      v42 = v0[7];

      return sub_275873948(v42);
    }
  }
}

uint64_t sub_27592382C(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_27592392C, 0, 0);
}

uint64_t sub_27592392C()
{
  v1 = *(v0 + 112);
  (*(v0 + 176))(*(v0 + 56), *(v0 + 32));
  sub_27585A458(v1);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_275923A2C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_275923C58;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_275923B58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_275923B58()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  (*(v0 + 176))(*(v0 + 56), *(v0 + 32));
  sub_27585A458(v2);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_275923C58()
{
  v1 = *(v0 + 112);
  (*(v0 + 176))(*(v0 + 56), *(v0 + 32));
  sub_27585A458(v1);

  v2 = *(v0 + 8);

  return v2(0);
}

id ManageStorageAppViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManageStorageAppViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManageStorageAppViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ManageStorageAppViewModel(uint64_t a1)
{
  result = qword_280A10E58;
  if (!qword_280A10E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275923F34@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ManageStorageAppViewModel(0);
  result = sub_2759BA8D8();
  *a2 = result;
  return result;
}

uint64_t sub_275923F80(uint64_t a1)
{
  result = sub_2759B8678();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_275924074()
{
  result = qword_280A12800;
  if (!qword_280A12800)
  {
    type metadata accessor for ManageStorageAppViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12800);
  }

  return result;
}

uint64_t type metadata accessor for IfHealthEnabledView(uint64_t a1)
{
  result = qword_280A10E70;
  if (!qword_280A10E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275924158(uint64_t a1)
{
  sub_27585AF10(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_27585AF10(319, &qword_280A0E6D0, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_27585AF74(319);
      if (v3 <= 0x3F)
      {
        sub_275901A74(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *sub_27592427C()
{
  v1 = sub_2759B93D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for IfHealthEnabledView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_2759BA658();
    v8 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_275827D68(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2759243DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E710, &qword_2759C0E60);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - v3;
  v5 = sub_27592427C();
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    v11[1] = v6;
    sub_275924F1C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v7 = v6[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled];

    if (v7)
    {
      v8 = 24;
    }

    else
    {
      v8 = 28;
    }
  }

  else
  {
    v8 = 24;
  }

  v9 = type metadata accessor for IfHealthEnabledView(0);
  sub_27585BD94(v1 + *(v9 + v8), v4);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  sub_27585BE04();
  return sub_2759B95E8();
}

unint64_t sub_27592457C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27592513C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2759245AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27592513C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2759245D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_275924EC8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_275924610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_275924EC8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_27592464C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v33 - v6;
  v7 = sub_2759B85A8();
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10EA8, &qword_2759C95C0);
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for IfHealthEnabledView(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[2] = MEMORY[0x277D84F90];
  v16 = (v15 + *(v13 + 32));
  sub_2759B8C08();
  sub_275924F1C(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v41 = sub_2759B9168();
  *v16 = v41;
  v16[1] = v17;
  v18 = v15 + v12[9];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275924EC8(v19, v20, v21);
  v22 = v42;
  sub_2759BAC18();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v23 = v39;
    v42 = a1;
    v45 = 0;
    v24 = sub_2759BAA58();
    v27 = v25;
    v33 = v11;
    if (!v25)
    {
      sub_2759B8598();
      v28 = sub_2759B8588();
      v27 = v29;
      (*(v35 + 8))(v23, v36);
      v24 = v28;
    }

    *v15 = v24;
    v15[1] = v27;
    v39 = v27;
    sub_2759B8A38();
    v44 = 1;
    sub_275924F1C(&qword_280A0E738, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
    v30 = v38;
    v31 = v33;
    sub_2759BAA68();
    sub_27585C094(v30, v15 + v12[6]);
    v43 = 2;
    v32 = v37;
    sub_2759BAA68();
    (*(v40 + 8))(v31, v9);
    sub_27585C094(v32, v15 + v12[7]);
    sub_275924F64(v15, v34);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_275924FC8(v15);
  }
}

uint64_t sub_275924B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_275924F1C(&qword_280A10E80, type metadata accessor for IfHealthEnabledView, &unk_2759C9548);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_275924BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275924F1C(&qword_280A10E88, type metadata accessor for IfHealthEnabledView, &unk_2759C94F8);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_275924C48(uint64_t a1)
{
  v2 = sub_275924F1C(&qword_280A10E88, type metadata accessor for IfHealthEnabledView, &unk_2759C94F8);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_275924CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275924F1C(&qword_280A10EA0, type metadata accessor for IfHealthEnabledView, &unk_2759C94C0);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_275924D80(uint64_t a1, uint64_t a2)
{
  sub_275924F1C(&qword_280A10E80, type metadata accessor for IfHealthEnabledView, &unk_2759C9548);
  sub_275924F1C(&qword_280A10E88, type metadata accessor for IfHealthEnabledView, &unk_2759C94F8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_275924EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10EB0;
  if (!qword_280A10EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10EB0);
  }

  return result;
}

uint64_t sub_275924F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275924F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IfHealthEnabledView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275924FC8(uint64_t a1)
{
  v2 = type metadata accessor for IfHealthEnabledView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275925038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10EB8;
  if (!qword_280A10EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10EB8);
  }

  return result;
}

unint64_t sub_275925090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10EC0;
  if (!qword_280A10EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10EC0);
  }

  return result;
}

unint64_t sub_2759250E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10EC8;
  if (!qword_280A10EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10EC8);
  }

  return result;
}

unint64_t sub_27592513C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2759251A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BE8, &qword_2759C8168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C80F0;
  *(inited + 32) = sub_2759BA258();
  *(inited + 40) = sub_2759BA258();
  v1 = sub_2759BA258();
  v2 = *MEMORY[0x277CB8920];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = *MEMORY[0x277CB89B8];
  v4 = *MEMORY[0x277CB8978];
  *(inited + 64) = *MEMORY[0x277CB89B8];
  *(inited + 72) = v4;
  v5 = qword_280A0E370;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v9 = qword_280A10ED0;
  *(inited + 80) = qword_280A10ED0;
  v10 = v9;
  sub_2759B5D0C(inited);
  v12 = v11;
  swift_setDeallocating();
  type metadata accessor for Dataclass(0);
  result = swift_arrayDestroy();
  qword_280A10ED8 = v12;
  return result;
}

void sub_27592530C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = sub_275925424(v11);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_275925424(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2759BA298();
  sub_2759BABD8();
  sub_2759BA328();
  v4 = sub_2759BAC08();

  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = sub_2759BA298();
    v10 = v9;
    if (v8 == sub_2759BA298() && v10 == v11)
    {
      break;
    }

    v13 = sub_2759BAAC8();

    if (v13)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2758616D8();
    v16 = v18;
  }

  v14 = *(*(v16 + 48) + 8 * v6);
  sub_2759255B4(v6);
  *v2 = v18;
  return v14;
}

unint64_t sub_2759255B4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2759BA848();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_2759BA298();
        sub_2759BABD8();
        v11 = v10;
        sub_2759BA328();
        v12 = sub_2759BAC08();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_275925794(void *a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    if (qword_2815ADD30 != -1)
    {
LABEL_56:
      swift_once();
    }

    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_2815ADE70);
    v4 = sub_2759B8988();
    v10 = sub_2759BA648();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_275819000, v4, v10, "No iCloud account found, assuming true for allServicesDisabled.", v11, 2u);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    goto LABEL_11;
  }

  if (a3)
  {
    v3 = qword_2815ADD30;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_2815ADE70);
    v6 = sub_2759B8988();
    v7 = sub_2759BA638();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_275819000, v6, v7, "Keychain sync is enabled. Will return false for allServicesDisabled", v8, 2u);
      MEMORY[0x277C85860](v8, -1, -1);
    }

LABEL_11:
    return 0;
  }

  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (a2 + 32);
    v67 = a1;
    while (1)
    {
      v15 = *v14;
      v16 = sub_2759BA298();
      v18 = v17;
      v19 = qword_280A0E370;
      v20 = v15;
      if (v19 != -1)
      {
        swift_once();
      }

      if (v16 == sub_2759BA298() && v18 == v21)
      {
      }

      else
      {
        v23 = sub_2759BAAC8();

        if ((v23 & 1) == 0 && [v67 isEnabledForDataclass_])
        {
          if (qword_2815ADD30 != -1)
          {
            swift_once();
          }

          v56 = sub_2759B89A8();
          __swift_project_value_buffer(v56, qword_2815ADE70);
          v57 = v20;
          v58 = sub_2759B8988();
          v59 = sub_2759BA638();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v70 = v61;
            *v60 = 136315138;
            v62 = sub_2759BA298();
            v64 = sub_2758937B8(v62, v63, &v70);

            *(v60 + 4) = v64;
            _os_log_impl(&dword_275819000, v58, v59, "Dataclass %s is enabled. Will return false for allServicesDisabled", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v61);
            MEMORY[0x277C85860](v61, -1, -1);
            MEMORY[0x277C85860](v60, -1, -1);
          }

          else
          {
          }

          return 0;
        }
      }

      ++v14;
      if (!--v13)
      {
        goto LABEL_27;
      }
    }
  }

  v24 = a1;
LABEL_27:
  v25 = [a1 enabledDataclasses];
  if (v25)
  {
    v26 = v25;
    v69 = 0;
    type metadata accessor for Dataclass(0);
    sub_275926144();
    sub_2759BA578();
  }

  v27 = [objc_opt_self() sharedInstance];
  v28 = [v27 allBundleIDs];
  v29 = sub_2759BA3E8();

  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = objc_opt_self();
    v32 = 0;
    v33 = (v29 + 40);
    v68 = v31;
    v65 = v30;
    do
    {
      if (v32 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      v42 = *(v33 - 1);
      v41 = *v33;

      v43 = sub_2759BA258();
      v44 = [v31 isSpecifierHiddenForBundleID:v43 ubiquityAccessManager:v27];

      if (v44)
      {
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v45 = sub_2759B89A8();
        __swift_project_value_buffer(v45, qword_2815ADE70);

        v46 = sub_2759B8988();
        v47 = sub_2759BA638();

        if (os_log_type_enabled(v46, v47))
        {
          v34 = v29;
          v35 = v27;
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v70 = v37;
          *v36 = 136315138;
          v38 = sub_2758937B8(v42, v41, &v70);

          *(v36 + 4) = v38;
          _os_log_impl(&dword_275819000, v46, v47, "Bundle ID %s is hidden. Skipping...", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          v39 = v37;
          v31 = v68;
          MEMORY[0x277C85860](v39, -1, -1);
          v40 = v36;
          v27 = v35;
          v29 = v34;
          v30 = v65;
          MEMORY[0x277C85860](v40, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v48 = sub_2759BA258();
        v49 = [v31 appAccessGrantedForBundleID:v48 ubiquityAccessManager:v27];

        LODWORD(v48) = [v49 BOOLValue];
        if (v48)
        {

          if (qword_2815ADD30 != -1)
          {
            swift_once();
          }

          v50 = sub_2759B89A8();
          __swift_project_value_buffer(v50, qword_2815ADE70);

          v51 = sub_2759B8988();
          v52 = sub_2759BA638();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v70 = v54;
            *v53 = 136315138;
            v55 = sub_2758937B8(v42, v41, &v70);

            *(v53 + 4) = v55;
            _os_log_impl(&dword_275819000, v51, v52, "Bundle ID %s is enabled. Will return false for allServicesDisabled", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v54);
            MEMORY[0x277C85860](v54, -1, -1);
            MEMORY[0x277C85860](v53, -1, -1);
          }

          else
          {
          }

          return 0;
        }

        v31 = v68;
      }

      ++v32;
      v33 += 2;
    }

    while (v30 != v32);
  }

  return 1;
}

unint64_t sub_275926144()
{
  result = qword_280A0E4F0;
  if (!qword_280A0E4F0)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E4F0);
  }

  return result;
}

void *InformationSection.init(viewModel:)@<X0>(void *a2@<X8>)
{
  type metadata accessor for iCloudHomeViewModel(0);
  result = sub_2759B9D58();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t InformationSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10EE0, &unk_2759C97C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102C0, &qword_2759C63B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_2759B83B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = *v1;
  v53 = v1[1];
  v54 = v17;
  v56 = v17;
  v57 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v18 = v55;
  iCloudHomeViewModel.informationCardMessage()(v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2759266A4(v9);
    v19 = 1;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    v20 = sub_2759B99A8();
    v22 = v21;
    v24 = v23;
    v49 = v16;
    sub_2759B9848();
    v52 = a1;
    v25 = sub_2759B9988();
    v50 = v4;
    v51 = v3;
    v26 = v25;
    v28 = v27;
    v47 = v11;
    v48 = v10;
    v30 = v29;

    sub_27589F328(v20, v22, v24 & 1);

    v56 = sub_2759B9C18();
    v45 = sub_2759B9958();
    v46 = v31;
    v33 = v32;
    v35 = v34;
    v36 = v28;
    v3 = v51;
    sub_27589F328(v26, v36, v30 & 1);

    KeyPath = swift_getKeyPath();
    v38 = swift_allocObject();
    v40 = v53;
    v39 = v54;
    *(v38 + 16) = v54;
    *(v38 + 24) = v40;
    v41 = &v6[*(v3 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10EE8, &qword_2759C9808);

    v42 = v39;
    v4 = v50;
    sub_2759B8FB8();
    (*(v47 + 8))(v49, v48);
    *v41 = KeyPath;
    a1 = v52;
    *v6 = v45;
    *(v6 + 1) = v33;
    v6[16] = v35 & 1;
    *(v6 + 3) = v46;
    sub_27592684C(v6, a1);
    v19 = 0;
  }

  return (*(v4 + 56))(a1, v19, 1, v3);
}

uint64_t sub_2759266A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102C0, &qword_2759C63B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27592670C(uint64_t a1)
{
  v2 = sub_2759B8FC8();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2759B9328();
}

uint64_t sub_2759267D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  _s14iCloudSettings01iA13HomeViewModelC17handleInfoCardURL3urly10Foundation0I0V_tF_0(a1);

  return sub_2759B8FA8();
}

uint64_t sub_27592684C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10EE0, &unk_2759C97C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2759268EC()
{
  result = qword_280A10EF0;
  if (!qword_280A10EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10EF8, &qword_2759C98B8);
    sub_275926970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10EF0);
  }

  return result;
}

unint64_t sub_275926970()
{
  result = qword_280A10F00;
  if (!qword_280A10F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10EE0, &unk_2759C97C0);
    sub_2759269FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10F00);
  }

  return result;
}

unint64_t sub_2759269FC()
{
  result = qword_280A10F08;
  if (!qword_280A10F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10EE8, &qword_2759C9808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10F08);
  }

  return result;
}

id iCloudHomeDataController.__allocating_init(account:launchedFromRootLevel:)(void *a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___ICSHomeDataController_account] = a1;
  type metadata accessor for iCloudNetworkRequest(0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a1;
  sub_2759B8718();
  v8 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v5[OBJC_IVAR___ICSHomeDataController_networkRequest] = v6;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t sub_275926B58()
{
  sub_2759BABD8();
  MEMORY[0x277C84980](0);
  return sub_2759BAC08();
}

uint64_t sub_275926BC4(uint64_t a1)
{
  sub_2759BABD8();
  MEMORY[0x277C84980](0);
  return sub_2759BAC08();
}

uint64_t sub_275926C04()
{
  sub_2759B86C8();
  result = sub_2759B86B8();
  qword_2815ADD58 = result;
  return result;
}

id iCloudHomeDataController.__allocating_init(account:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithAccount:a1 launchedFromRootLevel:1];

  return v3;
}

id iCloudHomeDataController.init(account:)(void *a1)
{
  v3 = [v1 initWithAccount:a1 launchedFromRootLevel:1];

  return v3;
}

id iCloudHomeDataController.init(account:launchedFromRootLevel:)(void *a1, char a2)
{
  v3 = sub_275929A14(a1, a2);

  return v3;
}

uint64_t sub_275926D50(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 64) = a1;
  return MEMORY[0x2822009F8](sub_275926D74, 0, 0);
}

uint64_t sub_275926D74()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR___ICSHomeDataController_account);
  v2 = [v1 aa_altDSID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_2759BA298();
    v6 = v5;

    if (qword_2815ADD50 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 24);
    v8 = *(v0 + 64);
    sub_2759BA8C8();

    MEMORY[0x277C840E0](v4, v6);
    *(v0 + 32) = 0x80000002759E1840;
    v9 = swift_allocObject();
    *(v0 + 40) = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = v4;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
    v26 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
    v10 = v7;
    v11 = swift_task_alloc();
    *(v0 + 48) = v11;
    v12 = type metadata accessor for iCloudHomeDataModel();
    *v11 = v0;
    v11[1] = sub_27589B7FC;

    return v26(v0 + 16, 0xD000000000000019, 0x80000002759E1840, &unk_2759C98D8, v9, v12);
  }

  else
  {
    if (qword_2815ADD20 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 24);
    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_2815ADE58);
    v16 = v14;
    v17 = sub_2759B8988();
    v18 = sub_2759BA668();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v1;
      *v20 = v1;
      v21 = v1;
      _os_log_impl(&dword_275819000, v17, v18, "Found no altDSID for account: %@", v19, 0xCu);
      sub_27586BF04(v20, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v20, -1, -1);
      MEMORY[0x277C85860](v19, -1, -1);
    }

    sub_27589C1B0(v22, v23, v24);
    swift_allocError();
    swift_willThrow();
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_2759270E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 88) = a2;
  *(v5 + 40) = a1;
  *(v5 + 48) = a3;
  return MEMORY[0x2822009F8](sub_27592710C, 0, 0);
}

uint64_t sub_27592710C()
{
  if (*(v0 + 88) != 1)
  {
    if (qword_2815ADD20 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_2815ADE58);
    v6 = sub_2759B8988();
    v7 = sub_2759BA668();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_21;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "iCloudHome Cache is ignored!!";
    goto LABEL_20;
  }

  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE58);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Cache is NOT ignored. Fetching iCloudHome data from cache.", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  if (qword_2815ADD40 != -1)
  {
    swift_once();
  }

  v5 = sub_2758B26E4(*(v0 + 48), *(v0 + 56));
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  v8 = os_log_type_enabled(v6, v7);
  if (v5)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_275819000, v6, v7, "Cache hit. Returning iCloudHome cached data.", v9, 2u);
      MEMORY[0x277C85860](v9, -1, -1);
    }

    **(v0 + 40) = v5;
    v10 = *(v0 + 8);

    return v10();
  }

  if (v8)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "No iCloudHome cache exist.";
LABEL_20:
    _os_log_impl(&dword_275819000, v6, v7, v14, v13, 2u);
    MEMORY[0x277C85860](v13, -1, -1);
  }

LABEL_21:

  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v15 = sub_2759B89A8();
  __swift_project_value_buffer(v15, qword_2815ADE58);
  v16 = sub_2759B8988();
  v17 = sub_2759BA668();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_275819000, v16, v17, "Initiating network request to fetch iCloudHome data.", v18, 2u);
    MEMORY[0x277C85860](v18, -1, -1);
  }

  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  v19[1] = sub_275927500;

  return sub_2758B6BBC();
}

uint64_t sub_275927500(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_275927634, 0, 0);
}

uint64_t sub_275927634()
{
  if (qword_2815ADD40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = qword_2815ADE88;
  v4 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock;
  v5 = *(qword_2815ADE88 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock);
  v6 = *(v0 + 80);
  os_unfair_lock_lock(v5);
  v7 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_dataModelCache;
  swift_beginAccess();
  v8 = v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + v7);
  *(v3 + v7) = 0x8000000000000000;
  sub_27590673C(v8, v2, v1, isUniquelyReferenced_nonNull_native);

  *(v3 + v7) = v12;
  swift_endAccess();
  os_unfair_lock_unlock(*(v3 + v4));

  **(v0 + 40) = *(v0 + 80);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_275927914(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_27589BDF0;

  return sub_275926D50(a1);
}

uint64_t sub_2759279D0(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_275927A64;

  return sub_275926D50(a1);
}

uint64_t sub_275927A64(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v4 = sub_275927C60;
  }

  else
  {
    v4 = sub_275927B78;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_275927B78()
{
  v1 = *(v0 + 24);
  if (*(*(*&v1[OBJC_IVAR___ICSHomeDataModel_headerCard] + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary) + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_totalStorageInBytes))
  {
    result = NSLocalizedFileSizeDescription();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = *(v0 + 24);
    v5 = sub_2759BA298();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_275927C60()
{
  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE58);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_275819000, v4, v5, "Failed to fetch iCloudHome data w/ error: %@. Returning empty string.", v7, 0xCu);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v11 = *(v0 + 32);

  v12 = *(v0 + 8);

  return v12(0, 0xE000000000000000);
}

uint64_t sub_275927F84(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_275928040;

  return sub_2759279D0(a1);
}

uint64_t sub_275928040(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = sub_2759BA258();

  (v3)[2](v3, v5);

  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

id sub_2759281A8()
{
  if (qword_2815ADD40 != -1)
  {
    swift_once();
  }

  result = [*(v0 + OBJC_IVAR___ICSHomeDataController_account) aa_altDSID];
  if (result)
  {
    v2 = result;
    v3 = sub_2759BA298();
    v5 = v4;

    v6 = sub_2758B26E4(v3, v5);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_275928338(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v3;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;
  *(v11 + 56) = a3;
  v12 = v3;
  sub_275929C8C(a2, a3);
  sub_27587D460(0, 0, v9, &unk_2759C98F8, v11);
}

uint64_t sub_275928464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_275928504;

  return sub_275926D50(a5);
}

uint64_t sub_275928504(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_27592875C;
  }

  else
  {
    v4 = sub_275928618;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_275928618()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___ICSHomeDataModel_headerCard;
  v3 = v0[2];
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v6 = v5;
  v7 = v0[5];
  if (v3)
  {
    v8 = v0[2];
    v9 = v4;
    v8(v4, v6);

    v4 = v9;
    v10 = v7;
  }

  else
  {
    v10 = v5;
    v6 = v0[5];
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_27592875C()
{
  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE58);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_275819000, v4, v5, "Failed to fetch iCloudHome data w/ error: %@.", v7, 0xCu);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v11 = v0[2];

  v12 = v0[6];
  if (v11)
  {
    (v0[2])(0, 0);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_275928A78(uint64_t a1, uint64_t a2)
{
  v5 = sub_2759B8508();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  sub_2759BA4D8();
  v11 = sub_2759BA518();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v2;
  (*(v6 + 32))(&v13[v12], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v13[(v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  v14 = v2;

  sub_27587D460(0, 0, v10, &unk_2759C2948, v13);
}

uint64_t sub_275928C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_275928CA0, 0, 0);
}

uint64_t sub_275928CA0()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_275928D44;
  v3 = v0[3];
  v2 = v0[4];

  return sub_2758B7EE8(v3, v2);
}

uint64_t sub_275928D44(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_275929018;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v5 = sub_275928E70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_275928E70()
{
  if (*(v0 + 56) == 1)
  {
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
      v5 = "Stateful header impression reported successfully.";
LABEL_10:
      _os_log_impl(&dword_275819000, v2, v3, v5, v4, 2u);
      MEMORY[0x277C85860](v4, -1, -1);
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_2815ADE70);
    v2 = sub_2759B8988();
    v3 = sub_2759BA668();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Failed to report stateful header impression.";
      goto LABEL_10;
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_275929018()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_275819000, v4, v5, "Failed to report stateful header impression with error: %@", v8, 0xCu);
    sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

id iCloudHomeDataController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iCloudHomeDataController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for iCloudHomeDataController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_275929558(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_27585F7A0;

  return v6();
}

uint64_t sub_275929640(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_27585A7E4;

  return v7();
}

uint64_t sub_275929728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2758AD388(a3, v23 - v10);
  v12 = sub_2759BA518();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_27586BF04(v11, &unk_280A0E510, &qword_2759C33C0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2759BA508();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2759BA468();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2759BA308() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_27586BF04(a3, &unk_280A0E510, &qword_2759C33C0);

    return v21;
  }

LABEL_8:
  sub_27586BF04(a3, &unk_280A0E510, &qword_2759C33C0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

id sub_275929A14(void *a1, char a2)
{
  *&v2[OBJC_IVAR___ICSHomeDataController_account] = a1;
  type metadata accessor for iCloudNetworkRequest(0);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = a1;
  sub_2759B8718();
  v7 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v2[OBJC_IVAR___ICSHomeDataController_networkRequest] = v5;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for iCloudHomeDataController();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_275929AF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2759270E4(a1, v4, v5, v6, v7);
}

uint64_t sub_275929BB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_275928464(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_275929C8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of iCloudHomeDataController.fetchiCloudHomeDataModel(allowCache:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_275875130;

  return v7(a1);
}

uint64_t dispatch thunk of iCloudHomeDataController.fetchCloudStorage(allowCache:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_275929F4C;

  return v7(a1);
}

uint64_t sub_275929F4C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t sub_27592A100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A10F20;
  if (!qword_280A10F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10F20);
  }

  return result;
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_27592A284(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585A7E4;

  return sub_275928464(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_27592A374()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585F7A0;

  return sub_275927F84(v2, v4, v3);
}

uint64_t sub_27592A428(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585F7A0;

  return sub_275893544(a1, v4);
}

uint64_t objectdestroy_35Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27592A520()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585F7A0;

  return sub_275927914(v2, v4, v3);
}

uint64_t sub_27592A5D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_27592A688;
  v6[3] = &block_descriptor_8;
  v4 = _Block_copy(v6);

  [v3 fetchBannerModels_];
  _Block_release(v4);
}

double sub_27592A688(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_27592A798();
    v2 = sub_2759BA3E8();
  }

  v3(v2);

  return result;
}

uint64_t sub_27592A700()
{
  v1 = [*v0 privateRelayStatusText];
  v2 = sub_2759BA298();

  return v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27592A798()
{
  result = qword_280A10F28;
  if (!qword_280A10F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A10F28);
  }

  return result;
}

uint64_t sub_27592A7FC(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_2759BA258();
  v4 = [v2 br:v3 getDomainIdentifierForACAccountID:?];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_2759BA298();

  return v5;
}

id sub_27592A898(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BA258();
  v3 = [objc_opt_self() accountDescriptorForAccountID_];

  return v3;
}

id sub_27592A8EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_opt_self();
  v5 = sub_2759BA258();
  v6 = [v4 br:v5 getProviderDomainIDForDomainIdentifier:a3 & 1 dataSeparated:?];

  return v6;
}

uint64_t type metadata accessor for iCloudPlusSection(uint64_t a1)
{
  result = qword_280A10F30;
  if (!qword_280A10F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27592AAEC(uint64_t a1)
{
  type metadata accessor for iCloudHomeViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_27592AB70(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27592AB70(uint64_t a1)
{
  if (!qword_280A10F40)
  {
    sub_2759B8F58();
    v1 = sub_2759BA7D8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A10F40);
    }
  }
}

uint64_t sub_27592ABE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F70, &unk_2759C9C00);
  v3 = MEMORY[0x28223BE20](v75);
  v77 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v76 = (&v69 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v69 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10500, &qword_2759C9C10);
  v8 = MEMORY[0x28223BE20](v70);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v69 - v11;
  MEMORY[0x28223BE20](v10);
  v72 = &v69 - v12;
  v73 = a1;
  v13 = *a1;
  swift_getKeyPath();
  v79 = v13;
  sub_27586BDE8();
  sub_2759B8638();

  v14 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v15 = *(v13 + v14);
  if (v15 && (v16 = *(v15 + OBJC_IVAR___ICSHomeDataModel_icloudPlusCard)) != 0)
  {
    v17 = (v16 + OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_title);
    v18 = *v17;
    v19 = v17[1];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    v18 = sub_2759B83C8();
    v19 = v25;
  }

  v79 = v18;
  v80 = v19;
  sub_27589F2D4(v20, v21, v22);
  v26 = sub_2759B99C8();
  v28 = v27;
  v30 = v29;
  sub_2759B9858();
  v31 = sub_2759B9988();
  v33 = v32;
  v35 = v34;

  sub_27589F328(v26, v28, v30 & 1);

  v79 = sub_2759B9C68();
  v36 = sub_2759B9958();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_27589F328(v31, v33, v35 & 1);

  v79 = v36;
  v80 = v38;
  v43 = v40 & 1;
  v81 = v40 & 1;
  v82 = v42;
  v44 = v71;
  sub_2759B9B38();
  sub_27589F328(v36, v38, v43);

  LOBYTE(v26) = sub_2759B97F8();
  sub_2759B8D78();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v69;
  sub_27589F26C(v44, v69, &qword_280A0F600, &qword_2759C4210);
  v54 = v53 + *(v70 + 36);
  *v54 = v26;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = 0;
  v55 = v72;
  sub_27589F26C(v53, v72, &qword_280A10500, &qword_2759C9C10);
  v56 = *(type metadata accessor for iCloudPlusSection(0) + 20);
  v57 = v73;
  sub_275884F1C(v73 + v56);
  v59 = v58;
  v60 = sub_2758965BC(v57 + v56);
  KeyPath = swift_getKeyPath();
  v62 = v76;
  *v76 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  v64 = v74;
  v63 = v75;
  *(v62 + *(v75 + 44)) = v59;
  *(v62 + *(v63 + 48)) = v60;
  sub_27586FBC8(v55, v64, &qword_280A10500, &qword_2759C9C10);
  v65 = v77;
  sub_27586FBC8(v62, v77, &qword_280A10F70, &unk_2759C9C00);
  v66 = v78;
  sub_27586FBC8(v64, v78, &qword_280A10500, &qword_2759C9C10);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F78, qword_2759C9C78);
  sub_27586FBC8(v65, v66 + *(v67 + 48), &qword_280A10F70, &unk_2759C9C00);
  sub_27586BF04(v62, &qword_280A10F70, &unk_2759C9C00);
  sub_27586BF04(v55, &qword_280A10500, &qword_2759C9C10);
  sub_27586BF04(v65, &qword_280A10F70, &unk_2759C9C00);
  return sub_27586BF04(v64, &qword_280A10500, &qword_2759C9C10);
}

uint64_t sub_27592B22C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = a2();
  sub_2759B8D78();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_27586FBC8(a1, a3, &qword_280A10F48, &qword_2759C9BE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F58, &qword_2759C9BF8);
  v16 = a3 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_27592B2D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F48, &qword_2759C9BE8);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  *v3 = sub_2759B94F8();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F50, &qword_2759C9BF0);
  sub_27592ABE4(v0, &v3[*(v4 + 44)]);
  sub_2759B9FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F58, &qword_2759C9BF8);
  sub_27592B448();
  sub_27592B4AC();
  sub_2759B9B98();
  return sub_27586BF04(v3, &qword_280A10F48, &qword_2759C9BE8);
}

unint64_t sub_27592B448()
{
  result = qword_280A10F60;
  if (!qword_280A10F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10F48, &qword_2759C9BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10F60);
  }

  return result;
}

unint64_t sub_27592B4AC()
{
  result = qword_280A10F68;
  if (!qword_280A10F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10F58, &qword_2759C9BF8);
    sub_27592B448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10F68);
  }

  return result;
}

uint64_t sub_27592B550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_2759BA4C8();
  v5[5] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27592B5EC, v7, v6);
}

uint64_t sub_27592B5EC()
{
  v1 = *(v0 + 24);

  v2 = v1 + OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_flowCompletionDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 32);
    v5 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v4, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v7 = *(v0 + 8);

  return v7();
}

void sub_27592B764(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(a4, a5);
}

id sub_27592B878(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DynamicUIFlowController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_27592B91C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_flowCompletionDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_27592B968(uint64_t a1, uint64_t a2)
{
  v2 = sub_27592B994(a1, a2);
  v3 = v2;
  return v2;
}

uint64_t sub_27592B994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_2759BA258();
  v6 = sub_2759BA258();
  v7 = [objc_opt_self() bagForProfile:v5 profileVersion:v6];

  v8 = objc_allocWithZone(MEMORY[0x277CEE8C8]);
  v9 = v7;
  v10 = sub_2759B84B8();
  v11 = [v8 initWithBag:v9 URL:v10];

  v12 = OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_dynamicUI;
  v13 = *(v3 + OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_dynamicUI);
  *(v3 + OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_dynamicUI) = v11;
  v14 = v11;

  [v14 setAccount_];
  v15 = *(v3 + v12);
  if (v15)
  {
    v16 = v15;
    [v16 setDelegate_];
  }

  return *(v3 + v12);
}

void sub_27592BAE0(void *a1, void *a2)
{
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238E8);
  v5 = a1;
  v6 = a2;
  oslog = sub_2759B8988();
  v7 = sub_2759BA638();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_2758937B8(0xD000000000000035, 0x80000002759E1AE0, &v16);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = a1;
    *(v8 + 22) = 2112;
    v11 = v5;
    if (a2)
    {
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v8 + 24) = v13;
    v9[1] = v14;
    _os_log_impl(&dword_275819000, oslog, v7, "%s result: %@ error: %@", v8, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDE0, &unk_2759C2650);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }
}

uint64_t sub_27592BCE4(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v9 = sub_2759B89A8();
  __swift_project_value_buffer(v9, qword_280A238E8);
  v10 = a1;
  v11 = a2;
  v12 = sub_2759B8988();
  v13 = sub_2759BA638();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v14 = 136315650;
    *(v14 + 4) = sub_2758937B8(0xD00000000000002DLL, 0x80000002759E1AB0, &v29);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = a1;
    *(v14 + 22) = 2112;
    v17 = v10;
    if (a2)
    {
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v14 + 24) = v19;
    v15[1] = v20;
    _os_log_impl(&dword_275819000, v12, v13, "%s result: %@ error: %@", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDE0, &unk_2759C2650);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x277C85860](v16, -1, -1);
    MEMORY[0x277C85860](v14, -1, -1);
  }

  v21 = sub_2759BA518();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_2759BA4C8();
  v22 = a2;
  v23 = v3;
  v24 = sub_2759BA4B8();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v23;
  v25[5] = a2;
  sub_27587DA58(0, 0, v8, &unk_2759C9CC0, v25);
}

void sub_27592BFE4(void *a1, void *a2)
{
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238E8);
  v5 = a1;
  v6 = a2;
  oslog = sub_2759B8988();
  v7 = sub_2759BA638();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_2758937B8(0xD00000000000003BLL, 0x80000002759E1A70, &v16);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = a1;
    *(v8 + 22) = 2112;
    v11 = v5;
    if (a2)
    {
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v8 + 24) = v13;
    v9[1] = v14;
    _os_log_impl(&dword_275819000, oslog, v7, "%s result: %@ error: %@", v8, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDE0, &unk_2759C2650);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }
}

uint64_t sub_27592C1E8()
{
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_280A238E8);
  v1 = sub_2759B8988();
  v2 = sub_2759BA638();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2758937B8(0xD000000000000026, 0x80000002759E1A40, &v6);
    _os_log_impl(&dword_275819000, v1, v2, "%s Being dismissed", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x277C85860](v4, -1, -1);
    MEMORY[0x277C85860](v3, -1, -1);
  }

  return 1;
}

uint64_t sub_27592C324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_27592B550(a1, v4, v5, v7, v6);
}

uint64_t sub_27592C3E4()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_27592C440(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

void sub_27592C488(BOOL *a2@<X8>)
{
  v3 = sub_2759BAA48();

  *a2 = v3 != 0;
}

void sub_27592C500(BOOL *a3@<X8>)
{
  v4 = sub_2759BAA48();

  *a3 = v4 != 0;
}

uint64_t sub_27592C558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27592CF90(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27592C594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27592CF90(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t *sub_27592C5D0(void *a1)
{
  v18 = *v1;
  v3 = sub_2759B8C48();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v17 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11020, &qword_2759C9DD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27592CF90(v9, v10, v11);
  v12 = v19;
  sub_2759BAC18();
  if (v12)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v16;
    sub_27592CFE4(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    sub_2759BAA78();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v1 + OBJC_IVAR____TtC14iCloudSettings22OpenSensitiveURLAction_urlString, v17, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_27592C870()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings22OpenSensitiveURLAction_urlString;
  v2 = sub_2759B8C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenSensitiveURLAction(uint64_t a1)
{
  result = qword_280A10FF8;
  if (!qword_280A10FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27592C960(uint64_t a1)
{
  result = sub_2759B8C48();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27592C9F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585A7E4;

  return sub_27592CCB0(a1);
}

uint64_t *sub_27592CBC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_27592C5D0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_27592CCB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v2[4] = swift_task_alloc();
  v3 = sub_2759B8508();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27592CDA8, 0, 0);
}

id sub_27592CDA8()
{
  sub_2759B8C38();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_2759B84F8();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_27585A458(v0[4]);
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    v10 = sub_2759B84B8();
    sub_2758A2A88(MEMORY[0x277D84F90]);
    v11 = sub_2759BA1C8();

    [v6 openSensitiveURL:v10 withOptions:v11];

    (*(v8 + 8))(v7, v9);
  }

  v4 = v0[1];

  return v4();
}

unint64_t sub_27592CF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11028;
  if (!qword_280A11028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11028);
  }

  return result;
}

uint64_t sub_27592CFE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27592D040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11030;
  if (!qword_280A11030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11030);
  }

  return result;
}

unint64_t sub_27592D098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11038;
  if (!qword_280A11038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11038);
  }

  return result;
}

unint64_t sub_27592D0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11040;
  if (!qword_280A11040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11040);
  }

  return result;
}

id sub_27592D168()
{
  v0 = [objc_allocWithZone(sub_2759B8B98()) init];
  type metadata accessor for IfDataclassEnabledView(0);
  sub_27592DFD4(&qword_280A10B40, type metadata accessor for IfDataclassEnabledView, &unk_2759C7E78);
  sub_2759B8B68();
  type metadata accessor for IfLSRecordView(0);
  sub_27592DFD4(&qword_280A11048, type metadata accessor for IfLSRecordView, &unk_2759CD560);
  sub_2759B8B68();
  type metadata accessor for InternalSymbolView(0);
  sub_27592DFD4(&qword_280A11050, type metadata accessor for InternalSymbolView, &unk_2759CADE8);
  sub_2759B8B68();
  type metadata accessor for ManageStorageDrilldownAnalyticsAction(0);
  sub_27592DFD4(&qword_280A0E8A0, type metadata accessor for ManageStorageDrilldownAnalyticsAction, &unk_2759C15E8);
  sub_2759B8B78();
  type metadata accessor for NotesDeeplinkAction(0);
  sub_27592DFD4(&qword_280A10330, type metadata accessor for NotesDeeplinkAction, &unk_2759C6690);
  sub_2759B8B78();
  sub_2759B87C8();
  sub_27592DFD4(&qword_280A11058, MEMORY[0x277CFB218], MEMORY[0x277CFB210]);
  sub_2759B8B68();
  sub_2759B8818();
  sub_27592DFD4(&qword_280A11060, MEMORY[0x277CFB238], MEMORY[0x277CFB230]);
  sub_2759B8B78();
  type metadata accessor for DrilldownThermometerView(0);
  sub_27592DFD4(&qword_280A11068, type metadata accessor for DrilldownThermometerView, &unk_2759D0148);
  sub_2759B8B68();
  type metadata accessor for HeaderAnimationView(0);
  sub_27592DFD4(&qword_280A11070, type metadata accessor for HeaderAnimationView, &unk_2759CC870);
  sub_2759B8B68();
  type metadata accessor for IfHealthEnabledView(0);
  sub_27592DFD4(&qword_280A10E80, type metadata accessor for IfHealthEnabledView, &unk_2759C9548);
  sub_2759B8B68();
  type metadata accessor for IfMessagesEligibleView(0);
  sub_27592DFD4(&qword_280A0E828, type metadata accessor for IfMessagesEligibleView, &unk_2759C1350);
  sub_2759B8B68();
  type metadata accessor for IfMessagesIsInExitStateView(0);
  sub_27592DFD4(&qword_280A0E6E8, type metadata accessor for IfMessagesIsInExitStateView, &unk_2759C0E14);
  v1 = sub_2759B8B68();
  sub_27592DF2C(v1, v2, v3);
  v4 = sub_2759B8B68();
  sub_2758ADF38(v4, v5, v6);
  sub_2759B8B68();
  type metadata accessor for StaticHeaderImageView(0);
  sub_27592DFD4(&qword_280A0FC90, type metadata accessor for StaticHeaderImageView, &unk_2759C5618);
  sub_2759B8B68();
  type metadata accessor for RemoteUIWebView(0);
  sub_27592DFD4(&qword_280A0FAD0, type metadata accessor for RemoteUIWebView, &unk_2759C4EC8);
  sub_2759B8B68();
  type metadata accessor for UIScreenBoundsReaderView(0);
  sub_27592DFD4(&qword_280A0EBD8, type metadata accessor for UIScreenBoundsReaderView, &unk_2759C2234);
  sub_2759B8B68();
  type metadata accessor for SendAnalyticsEventAction(0);
  sub_27592DFD4(&qword_280A11080, type metadata accessor for SendAnalyticsEventAction, &unk_2759CDC10);
  sub_2759B8B78();
  type metadata accessor for ClearAppsListAction(0);
  sub_27592DFD4(&qword_280A11088, type metadata accessor for ClearAppsListAction, &unk_2759D0AD8);
  sub_2759B8B78();
  type metadata accessor for ClearOverlayImagesAction();
  sub_27592DFD4(&qword_280A0FC20, type metadata accessor for ClearOverlayImagesAction, &unk_2759C5338);
  sub_2759B8B78();
  type metadata accessor for DriveDeleteAction(0);
  sub_27592DFD4(&qword_280A11090, type metadata accessor for DriveDeleteAction, &protocol conformance descriptor for DriveDeleteAction);
  sub_2759B8B78();
  type metadata accessor for HealthDisableAndDeleteAction();
  sub_27592DFD4(&qword_280A11098, type metadata accessor for HealthDisableAndDeleteAction, &unk_2759CD818);
  v7 = sub_2759B8B78();
  sub_27592DF80(v7, v8, v9);
  sub_2759B8B78();
  type metadata accessor for MessagesDisableAndDeleteAction();
  sub_27592DFD4(&qword_280A110A8, type metadata accessor for MessagesDisableAndDeleteAction, &unk_2759CD2A8);
  sub_2759B8B78();
  type metadata accessor for MessagesEnableAction();
  sub_27592DFD4(&qword_280A110B0, type metadata accessor for MessagesEnableAction, &unk_2759D0630);
  sub_2759B8B78();
  type metadata accessor for NotesDeleteAction();
  sub_27592DFD4(&qword_280A110B8, type metadata accessor for NotesDeleteAction, &unk_2759D0F80);
  sub_2759B8B78();
  type metadata accessor for OpenSensitiveURLAction(0);
  sub_27592DFD4(&qword_280A11018, type metadata accessor for OpenSensitiveURLAction, &unk_2759C9D80);
  sub_2759B8B78();
  type metadata accessor for PopViewAction(0);
  sub_27592DFD4(&qword_280A10390, type metadata accessor for PopViewAction, &unk_2759C6968);
  sub_2759B8B78();
  type metadata accessor for PostQuotaDidChangeAction();
  sub_27592DFD4(&qword_280A0EB90, type metadata accessor for PostQuotaDidChangeAction, &unk_2759C1F48);
  sub_2759B8B78();
  type metadata accessor for PushBackupControllerAction(0);
  sub_27592DFD4(&unk_280A10060, type metadata accessor for PushBackupControllerAction, &unk_2759C6010);
  sub_2759B8B78();
  type metadata accessor for PushLocalStorageControllerAction(0);
  sub_27592DFD4(&qword_280A110C0, type metadata accessor for PushLocalStorageControllerAction, &unk_2759CCF60);
  sub_2759B8B78();
  type metadata accessor for ReloadAppsListAction(0);
  sub_27592DFD4(&qword_280A109E0, type metadata accessor for ReloadAppsListAction, &unk_2759C78C0);
  sub_2759B8B78();
  type metadata accessor for ReloadBackupsClientDataAction();
  sub_27592DFD4(&qword_280A110C8, type metadata accessor for ReloadBackupsClientDataAction, &unk_2759CCB68);
  sub_2759B8B78();
  type metadata accessor for ReloadHomeAction(0);
  sub_27592DFD4(&qword_280A110D0, type metadata accessor for ReloadHomeAction, &unk_2759CC0B8);
  sub_2759B8B78();
  type metadata accessor for SiriDisableAndDeleteAction();
  sub_27592DFD4(&qword_280A110D8, type metadata accessor for SiriDisableAndDeleteAction, &unk_2759CDF38);
  sub_2759B8B78();
  type metadata accessor for ObserveNotificationModifier(0);
  sub_27592DFD4(&qword_280A110E0, type metadata accessor for ObserveNotificationModifier, &unk_2759D03B0);
  sub_2759B8B88();
  return v0;
}

unint64_t sub_27592DF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11078;
  if (!qword_280A11078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11078);
  }

  return result;
}

unint64_t sub_27592DF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A110A0;
  if (!qword_280A110A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A110A0);
  }

  return result;
}

uint64_t sub_27592DFD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27592E0F0(uint64_t a1)
{
  sub_2759BA038();
  if (sub_2759B9FF8())
  {

    return MEMORY[0x282133F68]();
  }

  else
  {
    sub_2759B9FB8();
    if (sub_2759B9FF8())
    {

      return sub_2759BA0B8();
    }

    else
    {
      sub_2759BA008();
      if (sub_2759B9FF8())
      {

        return MEMORY[0x282133F38]();
      }

      else
      {
        sub_2759B9FC8();
        if (sub_2759B9FF8())
        {

          return MEMORY[0x282133F10]();
        }

        else
        {
          sub_2759BA048();
          if (sub_2759B9FF8())
          {

            return MEMORY[0x282133F70]();
          }

          else
          {
            sub_2759B9FE8();
            if (sub_2759B9FF8())
            {

              return MEMORY[0x282133F20]();
            }

            else
            {
              sub_2759BA018();
              if (sub_2759B9FF8())
              {

                return MEMORY[0x282133F50]();
              }

              else
              {
                sub_2759B9FD8();
                if (sub_2759B9FF8())
                {

                  return MEMORY[0x282133F18]();
                }

                else
                {

                  return sub_2759BA118();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_27592E2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v19 = a4;
  v20 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v6, a4);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    do
    {
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      sub_2759B8B28();
      sub_2758FEA38(&v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v18);
      sub_2758FEA38(v17, v18);
      v11 += 5;
      --v10;
    }

    while (v10);
  }

  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v14 = sub_27592E400(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

uint64_t sub_27592E400(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_2759B9E68();
}

uint64_t type metadata accessor for SimpleStorageMeter(uint64_t a1)
{
  result = qword_280A110E8;
  if (!qword_280A110E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27592E53C(uint64_t a1)
{
  sub_2758BEB54(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_27592E5E8@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_2759BA038();
  a3[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11118, &qword_2759CA070);
  return sub_27592E648(a2, a3 + *(v6 + 44));
}

uint64_t sub_27592E648@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a1;
  v49 = a2;
  v2 = sub_2759B9EC8();
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11120, &qword_2759CA078);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11128, &qword_2759CA080) - 8;
  v7 = MEMORY[0x28223BE20](v46);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11130, &qword_2759CA088);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_2759B94B8();
  v20 = *(*(v19 - 8) + 104);
  v20(v17, v18, v19);
  sub_2759B8F48();
  sub_2759B8F48();
  sub_2759BA028();
  sub_2759B8F18();
  v21 = &v17[*(v5 + 44)];
  v22 = v51;
  *v21 = v50;
  *(v21 + 1) = v22;
  *(v21 + 2) = v52;
  sub_2759B9C18();
  v23 = sub_2759B9C58();

  KeyPath = swift_getKeyPath();
  v25 = &v17[*(v13 + 44)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = v41;
  v20(v41, v18, v19);
  sub_2759B8F48();
  v27 = type metadata accessor for SimpleStorageMeter(0);
  v28 = v47;
  sub_2759BA028();
  sub_2759B8F18();
  v29 = v45;
  sub_27592EEB0(v26, v45, MEMORY[0x277CE1260]);
  v30 = (v29 + *(v5 + 44));
  v31 = v54;
  *v30 = v53;
  v30[1] = v31;
  v30[2] = v55;
  v32 = *(v28 + *(v27 + 24));
  v33 = v29;
  v34 = v43;
  sub_27589F26C(v33, v43, &qword_280A11120, &qword_2759CA078);
  *(v34 + *(v46 + 44)) = v32;
  v35 = v44;
  sub_27589F26C(v34, v44, &qword_280A11128, &qword_2759CA080);
  v36 = v42;
  sub_27586FBC8(v17, v42, &qword_280A11130, &qword_2759CA088);
  v37 = v48;
  sub_27586FBC8(v35, v48, &qword_280A11128, &qword_2759CA080);
  v38 = v49;
  sub_27586FBC8(v36, v49, &qword_280A11130, &qword_2759CA088);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11138, &qword_2759CA0C0);
  sub_27586FBC8(v37, v38 + *(v39 + 48), &qword_280A11128, &qword_2759CA080);

  sub_27586BF04(v35, &qword_280A11128, &qword_2759CA080);
  sub_27586BF04(v17, &qword_280A11130, &qword_2759CA088);
  sub_27586BF04(v37, &qword_280A11128, &qword_2759CA080);
  return sub_27586BF04(v36, &qword_280A11130, &qword_2759CA088);
}

uint64_t sub_27592EB20(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  sub_27592ECDC(v1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_27592EEB0(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for SimpleStorageMeter);
  sub_2759BA028();
  sub_2759B8F18();
  v18 = v13;
  v17 = v15;
  v7[0] = sub_27592ED40;
  v7[1] = v5;
  v7[2] = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A110F8, &qword_2759CA060);
  sub_27592EDC0();
  sub_2759B9B38();
}

uint64_t sub_27592ECDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleStorageMeter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27592ED40@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for SimpleStorageMeter(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_27592E5E8(v5, a2);
}

unint64_t sub_27592EDC0()
{
  result = qword_280A11100;
  if (!qword_280A11100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A110F8, &qword_2759CA060);
    sub_27592EE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11100);
  }

  return result;
}

unint64_t sub_27592EE4C()
{
  result = qword_280A11108;
  if (!qword_280A11108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11110, &qword_2759CA068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11108);
  }

  return result;
}

uint64_t sub_27592EEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_27592EF18()
{
  result = qword_280A11140;
  if (!qword_280A11140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11148, &qword_2759CA0C8);
    sub_27592EDC0();
    sub_27592EFA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11140);
  }

  return result;
}

unint64_t sub_27592EFA4()
{
  result = qword_280A0F688;
  if (!qword_280A0F688)
  {
    sub_2759B97B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F688);
  }

  return result;
}

unint64_t sub_27592F024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275930854(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_27592F054(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656761726FLL;
  v4 = 0x74536567616E616DLL;
  v5 = 0xE700000000000000;
  v6 = 0x366C6961746564;
  if (v2 != 6)
  {
    v6 = 0x764F70756B636162;
    v5 = 0xED000079616C7265;
  }

  v7 = 0x346C6961746564;
  if (v2 != 4)
  {
    v7 = 0x356C6961746564;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0x326C6961746564;
  if (v2 != 2)
  {
    v8 = 0x336C6961746564;
  }

  if (*v1)
  {
    v4 = 0x316C6961746564;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_27592F164()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11150, &qword_2759CA1B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11158, &qword_2759CA1B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11160, &qword_2759CA1C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11168, &qword_2759CA1C8);
  v11 = *(*(v10 - 8) + 56);
  v11(v6, 1, 1, v10);
  sub_27592F468(v0, v3);
  v11(v3, 0, 1, v10);
  sub_2758229B4(v3, v6);
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v30.origin.x = v14;
  v30.origin.y = v16;
  v30.size.width = v18;
  v30.size.height = v20;
  CGRectGetHeight(v30);
  sub_2759BA028();
  sub_2759B8F18();
  sub_275822A24(v6, v9);
  v21 = &v9[*(v7 + 36)];
  v22 = v28;
  *v21 = v27;
  *(v21 + 1) = v22;
  *(v21 + 2) = v29;
  sub_27586BF04(v6, &qword_280A11158, &qword_2759CA1B8);
  v25 = *(v0 + 64);
  v26 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA10, &unk_2759CA1D0);
  sub_2759B9D68();
  sub_275931194();
  sub_2759B9B38();

  return sub_27586BF04(v9, &qword_280A11160, &qword_2759CA1C0);
}

uint64_t sub_27592F468@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = sub_2759B9608();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F968, &qword_2759C4A10);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F960, &qword_2759CA1E0);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11180, &qword_2759CA1E8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v56 = &v50 - v14;
  v60 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9C0, &qword_2759C4A50);
  sub_2759B9D68();
  if (v63)
  {
    v51 = v13;
    v52 = v63;
    type metadata accessor for MicaPlayerModel(0);
    sub_275931520(&qword_280A0EA68, type metadata accessor for MicaPlayerModel, &unk_2759C1A50);
    v53 = v12;

    sub_2759B9F78();
    v15 = [objc_opt_self() mainScreen];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v66.origin.x = v17;
    v66.origin.y = v19;
    v66.size.width = v21;
    v66.size.height = v23;
    CGRectGetHeight(v66);
    sub_2759BA028();
    sub_2759B8F18();
    v24 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9D8, &unk_2759C4A90) + 36)];
    v25 = v64;
    *v24 = v63;
    *(v24 + 1) = v25;
    *(v24 + 2) = v65;
    *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E0, &qword_2759CA1F0) + 36)] = 256;
    v26 = sub_2759B90B8();
    v27 = sub_2759B97D8();
    v28 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E8, &unk_2759C4AA0) + 36)];
    *v28 = v26;
    v28[8] = v27;
    v29 = swift_allocObject();
    v30 = a1[3];
    *(v29 + 48) = a1[2];
    *(v29 + 64) = v30;
    *(v29 + 80) = a1[4];
    *(v29 + 96) = *(a1 + 10);
    v31 = a1[1];
    *(v29 + 16) = *a1;
    *(v29 + 32) = v31;
    v32 = &v9[*(v7 + 36)];
    *v32 = sub_275931284;
    v32[1] = v29;
    v32[2] = 0;
    v32[3] = 0;
    v33 = swift_allocObject();
    v54 = a2;
    v34 = a1[3];
    *(v33 + 48) = a1[2];
    *(v33 + 64) = v34;
    *(v33 + 80) = a1[4];
    *(v33 + 96) = *(a1 + 10);
    v35 = a1[1];
    *(v33 + 16) = *a1;
    *(v33 + 32) = v35;
    sub_275931040(a1, &v60);
    sub_275931040(a1, &v60);
    sub_2759B96C8();
    v36 = sub_2758BF024();
    v37 = v55;
    sub_2759B9A98();

    (*(v4 + 8))(v6, v37);
    sub_27586BF04(v9, &qword_280A0F968, &qword_2759C4A10);
    v60 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v38 = v59;
    swift_getKeyPath();
    *&v60 = v38;
    sub_275931520(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel, &protocol conformance descriptor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v39 = *&v38[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
    v40 = v39;

    v59 = v39;
    v41 = swift_allocObject();
    v42 = a1[3];
    *(v41 + 48) = a1[2];
    *(v41 + 64) = v42;
    *(v41 + 80) = a1[4];
    *(v41 + 96) = *(a1 + 10);
    v43 = a1[1];
    *(v41 + 16) = *a1;
    *(v41 + 32) = v43;
    sub_275931040(a1, &v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11188, &unk_2759CA220);
    *&v60 = v7;
    *(&v60 + 1) = v37;
    v61 = v36;
    v12 = v53;
    v62 = MEMORY[0x277CE0380];
    swift_getOpaqueTypeConformance2();
    sub_275931330();
    v44 = v56;
    v45 = v58;
    a2 = v54;
    sub_2759B9B88();

    (*(v57 + 8))(v11, v45);
    v46 = v51;
    (*(v51 + 32))(a2, v44, v12);
    v47 = 0;
    v48 = v46;
  }

  else
  {
    v47 = 1;
    v48 = v13;
  }

  return (*(v48 + 56))(a2, v47, 1, v12);
}

void sub_27592FBDC()
{
  v1 = v0;
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v2 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_needsHeaderAnimation);

  if (v2 == 1)
  {
    v6 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
    sub_2759B9D68();
    if (v4)
    {
      sub_275868E0C();
    }

    v3 = *(v1 + 10);
    v9 = v1[4];
    v8 = v3;
    v6 = v1[4];
    v7 = v3;
    sub_2758F5AD0(&v9, &v4);
    sub_2759313E4(&v8, &v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA10, &unk_2759CA1D0);
    sub_2759B9D68();
    MEMORY[0x277C840E0](0x696874616572622DLL, 0xEF64756F6C43676ELL);
    v4 = v1[4];
    v5 = v3;
    sub_2759B9D78();
    sub_275861BB0(&v9);
    sub_27586BF04(&v8, &qword_280A111A0, &unk_2759CA230);
  }
}

void sub_27592FD54(__int128 *a1, CGFloat a2, CGFloat a3)
{
  v23 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
  sub_2759B9D68();
  if (v21)
  {
    sub_2758697F0(a2, a3);
    v7 = v6;
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      v23 = *a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
      sub_2759B9D68();
      v10 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
      swift_beginAccess();
      v11 = *(v21 + v10);

      v12 = v11 >> 62 ? sub_2759BA9E8() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v7 < v12)
      {
        v21 = *a1;
        sub_2759B9D68();
        v13 = *&v22[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem];
        if (v13)
        {
          [v13 setHidden_];
        }

        v14 = *&v22[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator];
        if (v14)
        {
          v15 = v14;
          [v15 startAnimating];
        }

        v21 = *a1;
        sub_2759B9D68();
        v16 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
        swift_beginAccess();
        v17 = *&v22[v16];
        if ((v17 & 0xC000000000000001) == 0)
        {
          if (v7 < 0)
          {
            __break(1u);
          }

          else if (v7 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v18 = *(v17 + 8 * v7 + 32);
LABEL_14:
            v19 = v18;
            swift_endAccess();

            v21 = *a1;
            sub_2759B9D68();
            v20 = v22;
            LOBYTE(v21) = 14;
            ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(v19, 0, &v21);

            return;
          }

          __break(1u);
          return;
        }

        v18 = MEMORY[0x277C846A0](v7);
        goto LABEL_14;
      }
    }
  }
}

void sub_27592FFB4(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v1 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v2 = *&v4[v1];

  if (v2 >> 62)
  {
    v3 = sub_2759BA9E8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= 1)
  {
    sub_275930088();
  }

  sub_27592FBDC();
}

void sub_275930088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v0 = v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_needsHeaderAnimation];

  if (v0 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
    sub_2759B9D68();
    if (v2)
    {
      v1 = sub_275930188();
      sub_275869494(v1);
    }

    sub_2759B9D68();
    v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_needsHeaderAnimation] = 0;
  }
}

uint64_t sub_275930188()
{
  v22 = v0[4];
  v1 = *(v0 + 10);
  v24 = v22;
  v23 = v1;
  v19 = v0[4];
  v20 = v1;
  sub_2758F5AD0(&v24, &v17);
  sub_2759313E4(&v23, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA10, &unk_2759CA1D0);
  sub_2759B9D68();
  v21 = v17;
  v19 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v2 = v17;
  v3 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v4 = *&v2[v3];

  v5 = v4 >> 62;
  if (v4 >> 62)
  {
    v15 = sub_2759BA9E8();
    if (sub_2759BA9E8() < 0)
    {
      __break(1u);
    }

    if (v15 >= 5)
    {
      v16 = 5;
    }

    else
    {
      v16 = v15;
    }

    if (v15 >= 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = 5;
    }

    result = sub_2759BA9E8();
    if (result >= v7)
    {
      goto LABEL_6;
    }

LABEL_31:
    __break(1u);
    return result;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v7)
  {
    goto LABEL_31;
  }

LABEL_6:
  if ((v4 & 0xC000000000000001) == 0 || v7 == 0)
  {
  }

  else
  {
    type metadata accessor for ManageStorageAppViewModel(0);

    sub_2759BA8F8();
    if (v7 != 1)
    {
      sub_2759BA8F8();
      if (v7 != 2)
      {
        sub_2759BA8F8();
        if (v7 != 3)
        {
          sub_2759BA8F8();
          if (v7 != 4)
          {
            sub_2759BA8F8();
            if (v7 != 5)
            {
              sub_2759BA8F8();
              sub_2759BA8F8();
            }
          }
        }
      }
    }
  }

  if (v5)
  {
    sub_2759BA9F8();
    v9 = v11;
    v5 = v12;
    v10 = v13;
  }

  else
  {
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    v10 = (2 * v7) | 1;
  }

  v14 = sub_275930710(v9, v5, v10);
  swift_unknownObjectRelease();
  v17 = v22;
  v18 = v1;

  sub_2759B9D78();
  sub_275861BB0(&v24);
  sub_27586BF04(&v23, &qword_280A111A0, &unk_2759CA230);

  return v14;
}

void sub_27593048C(char **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *&(*a1)[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage];
  if (v4)
  {
    v19[0] = 45;
    v19[1] = 0xE100000000000000;
    v5 = (*&v3[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
    v6 = *v5;
    v7 = v5[1];
    v8 = v4;

    MEMORY[0x277C840E0](v6, v7);

    MEMORY[0x277C840E0](45, 0xE100000000000000);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_2815ADE70);
    v10 = v3;
    v11 = sub_2759B8988();
    v12 = sub_2759BA648();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      v15 = (*&v10[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
      v16 = *v15;
      v17 = v15[1];

      v18 = sub_2758937B8(v16, v17, v19);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_275819000, v11, v12, "Missing header image for app: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x277C85860](v14, -1, -1);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    v8 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  *a2 = v8;
}

uint64_t sub_275930710(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v4;
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v15 = MEMORY[0x277D84F90];
  v3 = &v15;
  sub_2759BA968();
  if ((v5 & 0x8000000000000000) == 0)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 + i) >= v12 || i >= v5)
      {
        goto LABEL_13;
      }

      v13 = *(a1 + 8 * a2 + 8 * i);
      v3 = v13;
      sub_27593048C(&v13, &v14);
      if (v6)
      {
        goto LABEL_16;
      }

      v6 = 0;

      sub_2759BA948();
      sub_2759BA978();
      sub_2759BA988();
      v3 = &v15;
      sub_2759BA958();
      if (v11 == v5)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  __break(1u);
  return result;
}

unint64_t sub_275930854(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

double sub_2759308A0@<D0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  ObjectType = swift_getObjectType();
  v40 = sub_2759B8508();
  v6 = *(v40 - 8);
  v7 = MEMORY[0x28223BE20](v40);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v37[-v10];
  *&v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8B8, &qword_2759C4900);
  sub_2759B9D58();
  *v41 = v58;
  *&v52 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8C0, &qword_2759C4908);
  sub_2759B9D58();
  v43[0] = v58;
  LOBYTE(v52) = 0;
  sub_2759B9D58();
  v48 = v58;
  v47 = *(&v58 + 1);
  *&v52 = 0xD000000000000015;
  *(&v52 + 1) = 0x80000002759E00F0;
  sub_2759B9D58();
  v45 = *(&v58 + 1);
  v46 = v58;
  v44 = v59;
  v49 = ObjectType;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v38 = a1;
  v14 = sub_2759BA258();

  v15 = sub_2759BA258();
  v42 = v13;
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_2759B84C8();

    v17 = v40;
    (*(v6 + 16))(v9, v11, v40);
    v18 = *MEMORY[0x277CDA710];
    type metadata accessor for MicaPlayerModel(0);
    swift_allocObject();
    v19 = v18;
    v20 = sub_275865450(v9, 1, v19);

    *&v52 = v20;

    sub_2759B9D58();

    *&v41[8] = v58;
    type metadata accessor for InteractiveStorageMicaController(0);
    swift_allocObject();

    v22 = sub_27586A5E4(v21);

    *&v52 = v22;
    sub_2759B9D58();

    (*(v6 + 8))(v11, v17);

    *(v43 + 8) = v58;
  }

  else
  {
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
      v27 = swift_slowAlloc();
      *&v58 = v27;
      *v26 = 136315138;
      if (v38 > 3u)
      {
        if (v38 > 5u)
        {
          if (v38 == 6)
          {
            v28 = 0xE700000000000000;
            v29 = 0x366C6961746564;
          }

          else
          {
            v29 = 0x764F70756B636162;
            v28 = 0xED000079616C7265;
          }
        }

        else
        {
          v28 = 0xE700000000000000;
          if (v38 == 4)
          {
            v29 = 0x346C6961746564;
          }

          else
          {
            v29 = 0x356C6961746564;
          }
        }
      }

      else if (v38 > 1u)
      {
        v28 = 0xE700000000000000;
        if (v38 == 2)
        {
          v29 = 0x326C6961746564;
        }

        else
        {
          v29 = 0x336C6961746564;
        }
      }

      else if (v38)
      {
        v28 = 0xE700000000000000;
        v29 = 0x316C6961746564;
      }

      else
      {
        v28 = 0xED0000656761726FLL;
        v29 = 0x74536567616E616DLL;
      }

      v30 = sub_2758937B8(v29, v28, &v58);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_275819000, v24, v25, "ManageStorageAnimationView Unable to resolve file url for type %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x277C85860](v27, -1, -1);
      MEMORY[0x277C85860](v26, -1, -1);
    }

    *(v43 + 8) = v43[0];
    *&v41[8] = *v41;
  }

  v31 = v42;
  *&v52 = v50;
  v32 = v50;
  sub_2759B9D58();

  v52 = v58;
  v54 = *(v43 + 8);
  v53 = *&v41[8];
  LOBYTE(v55) = v48;
  *(&v55 + 1) = v67[0];
  DWORD1(v55) = *(v67 + 3);
  *(&v55 + 1) = v47;
  *&v56 = v46;
  *(&v56 + 1) = v45;
  v57 = v44;
  v59 = *&v41[8];
  v60 = *(v43 + 8);
  v61 = v48;
  *v62 = v67[0];
  *&v62[3] = *(v67 + 3);
  v63 = v47;
  v64 = v46;
  v65 = v45;
  v66 = v44;
  sub_275931040(&v52, &v51);
  sub_275931078(&v58);
  v33 = v55;
  v34 = v56;
  *(a3 + 32) = v54;
  *(a3 + 48) = v33;
  *(a3 + 64) = v34;
  *(a3 + 80) = v57;
  result = *&v52;
  v36 = v53;
  *a3 = v52;
  *(a3 + 16) = v36;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2759310CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_275931114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_275931194()
{
  result = qword_280A11170;
  if (!qword_280A11170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11160, &qword_2759CA1C0);
    sub_275931220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11170);
  }

  return result;
}

unint64_t sub_275931220()
{
  result = qword_280A11178;
  if (!qword_280A11178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11158, &qword_2759CA1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11178);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_275931330()
{
  result = qword_280A11190;
  if (!qword_280A11190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11188, &unk_2759CA220);
    sub_275931520(&qword_280A11198, type metadata accessor for ManageStorageAppsListDataModel, MEMORY[0x277D85380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11190);
  }

  return result;
}

uint64_t sub_2759313E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A111A0, &unk_2759CA230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_275931464()
{
  result = qword_280A111A8;
  if (!qword_280A111A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A111B0, qword_2759CA260);
    sub_275931194();
    sub_275931520(&qword_280A0F688, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A111A8);
  }

  return result;
}

uint64_t sub_275931520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27593156C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A111B8;
  if (!qword_280A111B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A111B8);
  }

  return result;
}

uint64_t sub_2759315C0()
{
  result = sub_2759BA258();
  qword_280A23998 = result;
  return result;
}

uint64_t sub_2759315F8()
{
  result = sub_2759BA258();
  qword_280A239A0 = result;
  return result;
}

uint64_t sub_2759316AC(uint64_t a1, uint64_t *a2, void *a3, void **a4, uint64_t a5)
{
  v8 = sub_2759B8288();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_2759B8268();
}

uint64_t sub_275931774@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B8288();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

id ICSAnalyticsController.__allocating_init(account:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_275935F68(a1);

  return v4;
}

Swift::Void __swiftcall ICSAnalyticsController.sendUpsellAppearEvent(entryPoint:)(iCloudSettings::ICSAnalyticsComponentID entryPoint)
{
  v1 = entryPoint;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = *v1;
  sub_2759BA4D8();
  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v5;
  sub_275931D20(0, 0, v4, &unk_2759C3740, v8);

  sub_275936100(v4);
}

uint64_t ICSAnalyticsController.sendActionEvent(viewID:componentID:actionType:targetViewID:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *a2;
  v13 = *a4;
  v14 = *(a4 + 8);
  LOBYTE(a4) = *(a4 + 16);
  LOBYTE(a1) = *(a1 + 16);
  sub_27591E640(v13, v14, a4);
  sub_2759BA4D8();
  v15 = sub_2759BA518();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v16;
  *(v17 + 40) = v10;
  *(v17 + 48) = v11;
  *(v17 + 56) = a1;
  *(v17 + 57) = v12;
  *(v17 + 58) = 0;
  *(v17 + 64) = v20;
  *(v17 + 72) = 0;
  *(v17 + 80) = v13;
  *(v17 + 88) = v14;
  *(v17 + 96) = a4;
  sub_27591E640(v13, v14, a4);
  sub_27591E640(v10, v11, a1);
  sub_275931D20(0, 0, v9, &unk_2759C4530, v17);

  sub_27589F7F0(v13, v14, a4);
  return sub_275936100(v9);
}

uint64_t ICSAnalyticsController.sendDisplayEvent(viewID:componentID:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *a2;
  LOBYTE(a2) = *(a1 + 16);
  sub_2759BA4D8();
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = a2;
  *(v12 + 57) = v9;
  *(v12 + 58) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = -1;
  sub_27591E640(v7, v8, a2);
  sub_275931D20(0, 0, v6, &unk_2759CA348, v12);

  return sub_275936100(v6);
}

uint64_t sub_275931D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2758AD388(a3, v25 - v10);
  v12 = sub_2759BA518();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_275936100(v11);
  }

  else
  {
    sub_2759BA508();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2759BA468();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2759BA308() + 32;
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

uint64_t sub_275931FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2758AD388(a3, v25 - v10);
  v12 = sub_2759BA518();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_275936100(v11);
  }

  else
  {
    sub_2759BA508();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2759BA468();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2759BA308() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDC8, &qword_2759CA7C0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDC8, &qword_2759CA7C0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall ICSAnalyticsController.sendUpsellLaunchEvent(actionTarget:entryPoint:)(Swift::String actionTarget, iCloudSettings::ICSAnalyticsComponentID entryPoint)
{
  v2 = entryPoint;
  object = actionTarget._object;
  countAndFlagsBits = actionTarget._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = *v2;
  sub_2759BA4D8();
  v9 = sub_2759BA518();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v10;
  *(v11 + 40) = countAndFlagsBits;
  *(v11 + 48) = object;
  *(v11 + 56) = v8;

  sub_275931D20(0, 0, v7, &unk_2759C8F78, v11);

  sub_275936100(v7);
}

unint64_t ICSAnalyticsActionType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_2759323E8@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

iCloudSettings::ICSAnalyticsComponentID_optional __swiftcall ICSAnalyticsComponentID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2759BAAE8();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t ICSAnalyticsComponentID.rawValue.getter()
{
  result = 0x6F5270756B636162;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F5470756B636162;
      break;
    case 3:
      result = 0x72616C756C6C6563;
      break;
    case 4:
      v2 = 0x6D6F74737563;
      goto LABEL_9;
    case 5:
      result = 0x73616C6361746164;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0x6B6E694C70656564;
      break;
    case 8:
      result = 0x6853796C696D6166;
      break;
    case 9:
      v2 = 0x794D65646968;
LABEL_9:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6D45000000000000;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xB:
      result = 0x6C506567616E616DLL;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xD:
      result = 0xD000000000000022;
      break;
    case 0xE:
      result = 0xD00000000000001CLL;
      break;
    case 0xF:
      result = 0xD000000000000016;
      break;
    case 0x10:
      result = 0xD000000000000027;
      break;
    case 0x11:
      result = 0xD000000000000010;
      break;
    case 0x12:
      result = 0xD000000000000021;
      break;
    case 0x13:
      result = 0x636E75614C657270;
      break;
    case 0x14:
      result = 0x70416C6C41656573;
      break;
    case 0x15:
      result = 0x6C75666574617473;
      break;
    case 0x16:
      result = 0x6E776F6E6B6E75;
      break;
    case 0x17:
      result = 0xD000000000000017;
      break;
    case 0x18:
      result = 0x61436C6C65737075;
      break;
    case 0x19:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_2759328A4()
{
  v0 = ICSAnalyticsComponentID.rawValue.getter();
  v2 = v1;
  if (v0 == ICSAnalyticsComponentID.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2759BAAC8();
  }

  return v5 & 1;
}

uint64_t sub_275932940()
{
  sub_2759BABD8();
  ICSAnalyticsComponentID.rawValue.getter();
  sub_2759BA328();

  return sub_2759BAC08();
}

double sub_2759329A8(uint64_t a1)
{
  ICSAnalyticsComponentID.rawValue.getter();
  sub_2759BA328();

  return result;
}

uint64_t sub_275932A0C(uint64_t a1)
{
  sub_2759BABD8();
  ICSAnalyticsComponentID.rawValue.getter();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275932A7C@<X0>(uint64_t *a1@<X8>)
{
  result = ICSAnalyticsComponentID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_275932AA4(__n128 a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v4 <= 4)
  {
    if (*(v1 + 16) <= 1u)
    {
      if (*(v1 + 16))
      {
        goto LABEL_20;
      }
    }

    else if (v4 != 2)
    {
      if (v4 == 3)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_2759BA8C8();

    goto LABEL_28;
  }

  if (*(v1 + 16) <= 7u)
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {

        sub_2759BA8C8();

        if (!v3)
        {
          sub_27589F7F0(v2, 0, 6u);
          v3 = 0xE700000000000000;
          v2 = 0x6E776F6E6B6E55;
        }

        MEMORY[0x277C840E0](v2, v3);
LABEL_27:

LABEL_29:
        v7 = sub_2759BA258();

        return v7;
      }

LABEL_28:
      MEMORY[0x277C840E0](v2, v3);
      goto LABEL_29;
    }

LABEL_20:
    sub_2759BA8C8();

    if (v2)
    {
      v5 = 0x64656C62616E65;
    }

    else
    {
      v5 = 0x64656C6261736964;
    }

    if (v2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    MEMORY[0x277C840E0](v5, v6);
    goto LABEL_27;
  }

  if (v4 == 8)
  {
    goto LABEL_28;
  }

  if (v4 == 9)
  {
    goto LABEL_14;
  }

  sub_275861AF8(0, &qword_280A0EA28, 0x277CCACA8);
  return sub_2759BA7A8();
}

uint64_t ICSAnalyticsViewID.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v4 <= 4)
  {
    if (*(v1 + 16) <= 1u)
    {
      if (!*(v1 + 16))
      {
        v5 = 4;
        goto LABEL_24;
      }

      v6 = 5;
    }

    else
    {
      if (v4 == 2)
      {
        v5 = 6;
        goto LABEL_24;
      }

      if (v4 == 3)
      {
        v5 = 7;
        goto LABEL_24;
      }

      v6 = 9;
    }

LABEL_21:
    MEMORY[0x277C84980](v6);
    return sub_2759BABF8();
  }

  if (*(v1 + 16) <= 7u)
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {
        MEMORY[0x277C84980](12);
        if (v3)
        {
          sub_2759BABF8();
LABEL_25:

          return sub_2759BA328();
        }

        return sub_2759BABF8();
      }

      v5 = 14;
LABEL_24:
      MEMORY[0x277C84980](v5);
      goto LABEL_25;
    }

    v6 = 10;
    goto LABEL_21;
  }

  if (v4 == 8)
  {
    v5 = 15;
    goto LABEL_24;
  }

  if (v4 == 9)
  {
    v5 = 18;
    goto LABEL_24;
  }

  if (v2 > 5)
  {
    if (v2 > 8)
    {
      if (v2 ^ 9 | v3)
      {
        if (v2 ^ 0xA | v3)
        {
          v8 = 21;
        }

        else
        {
          v8 = 20;
        }
      }

      else
      {
        v8 = 19;
      }
    }

    else if (v2 ^ 6 | v3)
    {
      if (v2 ^ 7 | v3)
      {
        v8 = 17;
      }

      else
      {
        v8 = 16;
      }
    }

    else
    {
      v8 = 13;
    }
  }

  else if (v2 > 2)
  {
    if (v2 ^ 3 | v3)
    {
      if (v2 ^ 4 | v3)
      {
        v8 = 11;
      }

      else
      {
        v8 = 8;
      }
    }

    else
    {
      v8 = 3;
    }
  }

  else if (v2 | v3)
  {
    if (v2 ^ 1 | v3)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x277C84980](v8);
}

uint64_t ICSAnalyticsViewID.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2759BABD8();
  ICSAnalyticsViewID.hash(into:)(v3);
  return sub_2759BAC08();
}

uint64_t sub_2759332BC()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2759BABD8();
  ICSAnalyticsViewID.hash(into:)(v3);
  return sub_2759BAC08();
}

uint64_t sub_275933314(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_2759BABD8();
  ICSAnalyticsViewID.hash(into:)(v4);
  return sub_2759BAC08();
}

id ICSAnalyticsController.init(account:)(void *a1)
{
  v2 = sub_275935F68(a1);

  return v2;
}

uint64_t sub_2759333E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 168) = a7;
  *(v7 + 120) = a5;
  *(v7 + 128) = a6;
  *(v7 + 112) = a4;
  return MEMORY[0x2822009F8](sub_275933408, 0, 0);
}

uint64_t sub_275933408()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v0[18] = swift_allocObject();
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_2759335C8;

    return sub_275933AA8();
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A238D0);
    v5 = sub_2759B8988();
    v6 = sub_2759BA668();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_275819000, v5, v6, "ICSAnalyticsController.sendUpsellLaunchEvent: Self unavailable bailing.", v7, 2u);
      MEMORY[0x277C85860](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2759335C8(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_2759336C8, 0, 0);
}

uint64_t sub_2759336C8()
{
  v23 = v0;
  v1 = v0[18];
  *(v1 + 16) = v0[20];
  v2 = sub_2759BA258();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_275906A58(v2, 0x61546E6F69746361, 0xEC00000074656772, isUniquelyReferenced_nonNull_native);
  *(v1 + 16) = v22;
  ICSAnalyticsComponentID.rawValue.getter();
  v4 = sub_2759BA258();

  v5 = *(v1 + 16);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v5;
  *(v1 + 16) = 0x8000000000000000;
  sub_275906A58(v4, 0x696F507972746E65, 0xEA0000000000746ELL, v6);
  *(v1 + 16) = v22;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_280A238D0);

  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_2758937B8(0xD00000000000001FLL, 0x80000002759DD070, &v22);
    *(v10 + 12) = 2080;
    swift_beginAccess();

    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v12 = sub_2759BA1E8();
    v14 = v13;

    v15 = sub_2758937B8(v12, v14, &v22);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_275819000, v8, v9, "Sending event %s with payload: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  else
  {
  }

  v17 = v0[17];
  v16 = v0[18];
  v18 = sub_2759BA258();
  v0[6] = sub_275936848;
  v0[7] = v16;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_27594A654;
  v0[5] = &block_descriptor_9;
  v19 = _Block_copy(v0 + 2);

  AnalyticsSendEventLazy();
  _Block_release(v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_275933AC8()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager);
  if (v2)
  {
    v3 = [v2 hasBackupError];
    v1 = v0[2];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_275906A58(v4, 0x724570756B636162, 0xEB00000000726F72, isUniquelyReferenced_nonNull_native);
  v0[3] = v5;
  v7 = *(v1 + OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController);
  v0[4] = v7;
  if (v7)
  {
    v7;
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_275933D08;

    return sub_275926D50(1);
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_280A238D0);
    v11 = sub_2759B8988();
    v12 = sub_2759BA648();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_275819000, v11, v12, "Fetching home data model failed", v13, 2u);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    v14 = v0[3];
    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_275933D08(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 48) = a1;

  v4 = *(v3 + 32);
  if (v1)
  {

    v5 = sub_27593418C;
  }

  else
  {

    v5 = sub_275933E50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_275933E50()
{
  v1 = v0[6];
  v2 = OBJC_IVAR___ICSHomeDataModel_headerCard;
  v3 = *(*(v1 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary);
  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_totalStorageInBytes);
  v5 = *(v3 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usedStorageInBytes) / v4 * 100.0;
  if (!v4)
  {
    v5 = 100.0;
  }

  v6 = floor(v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v7 = v0[3];
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_275906A58(v8, 0xD00000000000001ALL, 0x80000002759E1FD0, isUniquelyReferenced_nonNull_native);
  v10 = (*(v1 + v2) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState);
  v11 = *v10;
  v12 = v10[1];

  v13 = sub_27598AB3C(v11, v12);
  if ((v13 - 3) >= 2u)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_275906A58(v14, 0x61745361746F7571, 0xEA00000000006574, v15);
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  if (sub_2759BA688())
  {
    v17 = 0;
  }

  else if (sub_2759BA678())
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = v0[6];
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_275906A58(v19, 0x6269726373627573, 0xEE00657079547265, v20);
  v21 = v7;
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_275906A58(v22, 0xD000000000000015, 0x80000002759E1FF0, v23);

  v24 = v0[1];

  v24(v21);
}

uint64_t sub_27593418C()
{
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A238D0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA648();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Fetching home data model failed", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_2759342A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 152) = a5;
  *(v5 + 112) = a4;
  return MEMORY[0x2822009F8](sub_2759342C8, 0, 0);
}

uint64_t sub_2759342C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v0[16] = swift_allocObject();
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_275934488;

    return sub_275933AA8();
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A238D0);
    v5 = sub_2759B8988();
    v6 = sub_2759BA668();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_275819000, v5, v6, "ICSAnalyticsController.sendUpsellAppearEvent: Self unavailable bailing.", v7, 2u);
      MEMORY[0x277C85860](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_275934488(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_275934588, 0, 0);
}

uint64_t sub_275934588()
{
  v21 = v0;
  v1 = v0[16];
  *(v1 + 16) = v0[18];
  ICSAnalyticsComponentID.rawValue.getter();
  v2 = sub_2759BA258();

  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v3;
  *(v1 + 16) = 0x8000000000000000;
  sub_275906A58(v2, 0x696F507972746E65, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  *(v1 + 16) = v20;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238D0);

  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2758937B8(0xD00000000000001FLL, 0x80000002759DD070, &v20);
    *(v8 + 12) = 2080;
    swift_beginAccess();

    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v10 = sub_2759BA1E8();
    v12 = v11;

    v13 = sub_2758937B8(v10, v12, &v20);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_275819000, v6, v7, "Sending event %s with payload: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[15];
  v14 = v0[16];
  v16 = sub_2759BA258();
  v0[6] = sub_275936694;
  v0[7] = v14;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_27594A654;
  v0[5] = &block_descriptor_52;
  v17 = _Block_copy(v0 + 2);

  AnalyticsSendEventLazy();
  _Block_release(v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_275934914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 196) = v15;
  *(v8 + 144) = v13;
  *(v8 + 152) = v14;
  *(v8 + 195) = v12;
  *(v8 + 194) = v10;
  *(v8 + 193) = a8;
  *(v8 + 192) = a7;
  *(v8 + 128) = a6;
  *(v8 + 136) = v11;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  return MEMORY[0x2822009F8](sub_275934968, 0, 0);
}

uint64_t sub_275934968()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v0[21] = swift_allocObject();
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_275934B28;

    return sub_275933AA8();
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v4 = sub_2759B89A8();
    __swift_project_value_buffer(v4, qword_280A238D0);
    v5 = sub_2759B8988();
    v6 = sub_2759BA668();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_275819000, v5, v6, "ICSAnalyticsController.sendEvent: Self unavailable bailing.", v7, 2u);
      MEMORY[0x277C85860](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_275934B28(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_275934C28, 0, 0);
}

uint64_t sub_275934C28()
{
  v52 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 193);
  v3 = *(v0 + 192);
  v4 = *(v0 + 120);
  *(v1 + 16) = *(v0 + 184);
  v49 = v4;
  v50 = v3;
  v5 = sub_275932AA4(v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_275906A58(v5, 0x444977656976, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v7 = v51;
  *(v1 + 16) = v51;
  if (v2 != 26)
  {
    v8 = *(v0 + 168);
    LOBYTE(v51) = *(v0 + 193);
    ICSAnalyticsComponentID.rawValue.getter();
    v9 = sub_2759BA258();

    v10 = *(v8 + 16);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v49.n128_u64[0] = v10;
    *(v8 + 16) = 0x8000000000000000;
    sub_275906A58(v9, 0x6E656E6F706D6F63, 0xEB00000000444974, v11);
    v7 = v49.n128_u64[0];
    *(v8 + 16) = v49.n128_u64[0];
  }

  if (*(v0 + 194))
  {
    if (*(v0 + 194) == 1)
    {
      goto LABEL_11;
    }

    v12 = "Settings.display";
  }

  else
  {
    v12 = "complianceSection";
  }

  if ((v12 | 0x8000000000000000) != 0x80000002759DD020)
  {
LABEL_11:
    v14 = *(v0 + 195);
    v15 = sub_2759BAAC8();

    if ((v15 & 1) != 0 && (v14 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v13 = *(v0 + 195);

  if ((v13 & 1) == 0)
  {
LABEL_13:
    v16 = *(v0 + 168);
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v49.n128_u64[0] = v7;
    *(v16 + 16) = 0x8000000000000000;
    sub_275906A58(v17, 0x79546E6F69746361, 0xEA00000000006570, v18);
    *(v16 + 16) = v49.n128_u64[0];
  }

LABEL_14:
  v19 = 0x80000002759DD020;
  if (*(v0 + 194))
  {
    if (*(v0 + 194) == 1)
    {
      goto LABEL_20;
    }

    v19 = 0x80000002759DD070;
  }

  if (0x80000002759DD020 == v19)
  {
    v20 = *(v0 + 196);

    if (v20 == 255)
    {
      goto LABEL_23;
    }

LABEL_22:
    v23 = *(v0 + 168);
    v24 = *(v0 + 196);
    v49 = *(v0 + 144);
    v50 = v24;
    v25 = sub_275932AA4(v49);
    v26 = *(v23 + 16);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v26;
    *(v23 + 16) = 0x8000000000000000;
    sub_275906A58(v25, 0x6956746567726174, 0xEC00000044497765, v27);
    *(v23 + 16) = v51;
    goto LABEL_23;
  }

LABEL_20:
  v21 = *(v0 + 196);
  v22 = sub_2759BAAC8();

  if ((v22 & 1) != 0 && v21 != 255)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v28 = sub_2759B89A8();
  __swift_project_value_buffer(v28, qword_280A238D0);

  v29 = sub_2759B8988();
  v30 = sub_2759BA668();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 194);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v49.n128_u64[0] = v33;
    *v32 = 136315394;
    v34 = 0x80000002759DD040;
    if (v31 == 1)
    {
      v35 = 0xD000000000000020;
    }

    else
    {
      v35 = 0xD00000000000001FLL;
    }

    if (v31 != 1)
    {
      v34 = 0x80000002759DD070;
    }

    if (v31)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0xD00000000000001FLL;
    }

    if (v31)
    {
      v37 = v34;
    }

    else
    {
      v37 = 0x80000002759DD020;
    }

    v38 = sub_2758937B8(v36, v37, &v49);

    *(v32 + 4) = v38;
    *(v32 + 12) = 2080;
    swift_beginAccess();

    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v39 = sub_2759BA1E8();
    v41 = v40;

    v42 = sub_2758937B8(v39, v41, &v49);

    *(v32 + 14) = v42;
    _os_log_impl(&dword_275819000, v29, v30, "Sending event %s with payload: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v33, -1, -1);
    MEMORY[0x277C85860](v32, -1, -1);
  }

  else
  {
  }

  v44 = *(v0 + 160);
  v43 = *(v0 + 168);
  v45 = sub_2759BA258();

  *(v0 + 48) = sub_275936848;
  *(v0 + 56) = v43;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_27594A654;
  *(v0 + 40) = &block_descriptor_38;
  v46 = _Block_copy((v0 + 16));

  AnalyticsSendEventLazy();
  _Block_release(v46);

  v47 = *(v0 + 8);

  return v47();
}

id ICSAnalyticsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICSAnalyticsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2759353A8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_27593549C;

  return v5(v2 + 16);
}

uint64_t sub_27593549C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s14iCloudSettings18ICSAnalyticsViewIDO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(a1 + 16) <= 1u)
    {
      if (!*(a1 + 16))
      {
        if (*(a2 + 16))
        {
          goto LABEL_48;
        }

        if (v2 == v5 && v3 == v6)
        {
          sub_27591E640(*a1, v3, 0);
          sub_27591E640(v2, v3, 0);
          sub_27589F7F0(v2, v3, 0);
          v8 = v2;
          v9 = v3;
          v10 = 0;
          goto LABEL_124;
        }

        v18 = sub_2759BAAC8();
        sub_27591E640(v5, v6, 0);
        sub_27591E640(v2, v3, 0);
        sub_27589F7F0(v2, v3, 0);
        v19 = v5;
        v20 = v6;
        v21 = 0;
        goto LABEL_85;
      }

      if (v7 == 1)
      {
        sub_27589F7F0(*a1, v3, 1u);
        v11 = v5;
        v12 = v6;
        v13 = 1;
        goto LABEL_43;
      }
    }

    else
    {
      if (v4 == 2)
      {
        if (v7 != 2)
        {
          goto LABEL_48;
        }

        if (v2 == v5 && v3 == v6)
        {
          sub_27591E640(*a1, v3, 2u);
          sub_27591E640(v2, v3, 2u);
          sub_27589F7F0(v2, v3, 2u);
          v8 = v2;
          v9 = v3;
          v10 = 2;
          goto LABEL_124;
        }

        v18 = sub_2759BAAC8();
        sub_27591E640(v5, v6, 2u);
        sub_27591E640(v2, v3, 2u);
        sub_27589F7F0(v2, v3, 2u);
        v19 = v5;
        v20 = v6;
        v21 = 2;
        goto LABEL_85;
      }

      if (v4 == 3)
      {
        if (v7 != 3)
        {
          goto LABEL_48;
        }

        if (v2 == v5 && v3 == v6)
        {
          sub_27591E640(*a1, v3, 3u);
          sub_27591E640(v2, v3, 3u);
          sub_27589F7F0(v2, v3, 3u);
          v8 = v2;
          v9 = v3;
          v10 = 3;
          goto LABEL_124;
        }

        v18 = sub_2759BAAC8();
        sub_27591E640(v5, v6, 3u);
        sub_27591E640(v2, v3, 3u);
        sub_27589F7F0(v2, v3, 3u);
        v19 = v5;
        v20 = v6;
        v21 = 3;
        goto LABEL_85;
      }

      if (v7 == 4)
      {
        sub_27589F7F0(*a1, v3, 4u);
        v11 = v5;
        v12 = v6;
        v13 = 4;
        goto LABEL_43;
      }
    }

LABEL_49:
    sub_27591E640(v5, v6, v7);
    sub_27589F7F0(v2, v3, v4);
    v15 = v5;
    v16 = v6;
    v17 = v7;
    goto LABEL_50;
  }

  if (*(a1 + 16) > 7u)
  {
    if (v4 == 8)
    {
      if (v7 != 8)
      {
        goto LABEL_48;
      }

      if (v2 == v5 && v3 == v6)
      {
        sub_27591E640(*a1, v3, 8u);
        sub_27591E640(v2, v3, 8u);
        sub_27589F7F0(v2, v3, 8u);
        v8 = v2;
        v9 = v3;
        v10 = 8;
        goto LABEL_124;
      }

      v18 = sub_2759BAAC8();
      sub_27591E640(v5, v6, 8u);
      sub_27591E640(v2, v3, 8u);
      sub_27589F7F0(v2, v3, 8u);
      v19 = v5;
      v20 = v6;
      v21 = 8;
    }

    else
    {
      if (v4 != 9)
      {
        if (v2 > 5)
        {
          if (v2 > 8)
          {
            if (v2 ^ 9 | v3)
            {
              if (v2 ^ 0xA | v3)
              {
                if (v7 != 10 || v5 != 11 || v6)
                {
                  goto LABEL_49;
                }

                sub_27589F7F0(*a1, v3, 0xAu);
                v8 = 11;
              }

              else
              {
                if (v7 != 10 || v5 != 10 || v6)
                {
                  goto LABEL_49;
                }

                sub_27589F7F0(*a1, v3, 0xAu);
                v8 = 10;
              }
            }

            else
            {
              if (v7 != 10 || v5 != 9 || v6)
              {
                goto LABEL_49;
              }

              sub_27589F7F0(*a1, v3, 0xAu);
              v8 = 9;
            }
          }

          else if (v2 ^ 6 | v3)
          {
            if (v2 ^ 7 | v3)
            {
              if (v7 != 10 || v5 != 8 || v6)
              {
                goto LABEL_49;
              }

              sub_27589F7F0(*a1, v3, 0xAu);
              v8 = 8;
            }

            else
            {
              if (v7 != 10 || v5 != 7 || v6)
              {
                goto LABEL_49;
              }

              sub_27589F7F0(*a1, v3, 0xAu);
              v8 = 7;
            }
          }

          else
          {
            if (v7 != 10 || v5 != 6 || v6)
            {
              goto LABEL_49;
            }

            sub_27589F7F0(*a1, v3, 0xAu);
            v8 = 6;
          }
        }

        else if (v2 > 2)
        {
          if (v2 ^ 3 | v3)
          {
            if (v2 ^ 4 | v3)
            {
              if (v7 != 10 || v5 != 5 || v6)
              {
                goto LABEL_49;
              }

              sub_27589F7F0(*a1, v3, 0xAu);
              v8 = 5;
            }

            else
            {
              if (v7 != 10 || v5 != 4 || v6)
              {
                goto LABEL_49;
              }

              sub_27589F7F0(*a1, v3, 0xAu);
              v8 = 4;
            }
          }

          else
          {
            if (v7 != 10 || v5 != 3 || v6)
            {
              goto LABEL_49;
            }

            sub_27589F7F0(*a1, v3, 0xAu);
            v8 = 3;
          }
        }

        else if (v2 | v3)
        {
          if (!(v2 ^ 1 | v3))
          {
            if (v7 == 10 && v5 == 1 && !v6)
            {
              sub_27589F7F0(*a1, v3, 0xAu);
              v14 = 1;
              sub_27589F7F0(1, 0, 0xAu);
              return v14 & 1;
            }

            goto LABEL_49;
          }

          if (v7 != 10 || v5 != 2 || v6)
          {
            goto LABEL_49;
          }

          sub_27589F7F0(*a1, v3, 0xAu);
          v8 = 2;
        }

        else
        {
          if (v7 != 10 || v6 | v5)
          {
            goto LABEL_49;
          }

          sub_27589F7F0(*a1, v3, 0xAu);
          v8 = 0;
        }

        v9 = 0;
        v10 = 10;
        goto LABEL_124;
      }

      if (v7 != 9)
      {
        goto LABEL_48;
      }

      if (v2 == v5 && v3 == v6)
      {
        sub_27591E640(*a1, v3, 9u);
        sub_27591E640(v2, v3, 9u);
        sub_27589F7F0(v2, v3, 9u);
        v8 = v2;
        v9 = v3;
        v10 = 9;
        goto LABEL_124;
      }

      v18 = sub_2759BAAC8();
      sub_27591E640(v5, v6, 9u);
      sub_27591E640(v2, v3, 9u);
      sub_27589F7F0(v2, v3, 9u);
      v19 = v5;
      v20 = v6;
      v21 = 9;
    }

LABEL_85:
    sub_27589F7F0(v19, v20, v21);
    return v18 & 1;
  }

  if (v4 != 5)
  {
    if (v4 == 6)
    {
      if (v7 == 6)
      {
        if (v3)
        {
          if (v6)
          {
            if (v2 == v5 && v3 == v6)
            {
              sub_27591E640(*a1, v3, 6u);
              sub_27591E640(v2, v3, 6u);
              sub_27589F7F0(v2, v3, 6u);
              v8 = v2;
              v9 = v3;
              v10 = 6;
LABEL_124:
              sub_27589F7F0(v8, v9, v10);
LABEL_125:
              v14 = 1;
              return v14 & 1;
            }

            v23 = sub_2759BAAC8();
            sub_27591E640(v5, v6, 6u);
            sub_27591E640(v2, v3, 6u);
            sub_27589F7F0(v2, v3, 6u);
            sub_27589F7F0(v5, v6, 6u);
            if (v23)
            {
              goto LABEL_125;
            }

            goto LABEL_51;
          }

          sub_27591E640(*a2, 0, 6u);
          sub_27591E640(v5, 0, 6u);
          sub_27591E640(v2, v3, 6u);
          sub_27589F7F0(v2, v3, 6u);
        }

        else
        {

          sub_27591E640(v5, v6, 6u);
          sub_27591E640(v2, 0, 6u);
          sub_27589F7F0(v2, 0, 6u);
          sub_27589F7F0(v5, v6, 6u);
          if (!v6)
          {
            goto LABEL_125;
          }
        }

        v15 = v5;
        v16 = v6;
        v17 = 6;
LABEL_50:
        sub_27589F7F0(v15, v16, v17);
LABEL_51:
        v14 = 0;
        return v14 & 1;
      }

      goto LABEL_48;
    }

    if (v7 == 7)
    {
      if (v2 == v5 && v3 == v6)
      {
        sub_27591E640(*a1, v3, 7u);
        sub_27591E640(v2, v3, 7u);
        sub_27589F7F0(v2, v3, 7u);
        v8 = v2;
        v9 = v3;
        v10 = 7;
        goto LABEL_124;
      }

      v18 = sub_2759BAAC8();
      sub_27591E640(v5, v6, 7u);
      sub_27591E640(v2, v3, 7u);
      sub_27589F7F0(v2, v3, 7u);
      v19 = v5;
      v20 = v6;
      v21 = 7;
      goto LABEL_85;
    }

LABEL_48:

    goto LABEL_49;
  }

  if (v7 != 5)
  {
    goto LABEL_49;
  }

  sub_27589F7F0(*a1, v3, 5u);
  v11 = v5;
  v12 = v6;
  v13 = 5;
LABEL_43:
  sub_27589F7F0(v11, v12, v13);
  v14 = v5 ^ v2 ^ 1;
  return v14 & 1;
}

id sub_275935F68(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController;
  *&v2[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController] = 0;
  v6 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager;
  *&v2[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager] = 0;
  if (a1)
  {
    v7 = objc_allocWithZone(type metadata accessor for iCloudHomeDataController());
    v8 = a1;
    v9 = [v7 initWithAccount:v8 launchedFromRootLevel:1];
    v10 = *&v2[v5];
    *&v2[v5] = v9;

    v11 = [objc_allocWithZone(ICSBackupManager) initWithAccount_];
    v12 = *&v2[v6];
    *&v2[v6] = v11;
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v13 = sub_2759B89A8();
    __swift_project_value_buffer(v13, qword_280A238D0);
    v12 = sub_2759B8988();
    v14 = sub_2759BA648();
    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_275819000, v12, v14, "ICSAnalyticsController init without account, some reporting data may be missing or incorrect", v15, 2u);
      MEMORY[0x277C85860](v15, -1, -1);
    }
  }

  v17.receiver = v2;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_275936100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27593616C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A111F0;
  if (!qword_280A111F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A111F0);
  }

  return result;
}

unint64_t sub_2759361C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A111F8;
  if (!qword_280A111F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A111F8);
  }

  return result;
}

unint64_t sub_27593621C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A11200;
  if (!qword_280A11200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11200);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICSAnalyticsComponentID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICSAnalyticsComponentID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}