unint64_t sub_220E5E6F4()
{
  result = qword_27CF9D258;
  if (!qword_27CF9D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D258);
  }

  return result;
}

id sub_220E5E748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path];
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  *(v12 + 6) = a5;
  *&v5[OBJC_IVAR____TtC11WeatherMaps11OverlayTile_resourceProviders] = a4;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

BOOL sub_220E5E898(uint64_t a1)
{
  swift_getObjectType();
  sub_220E5EA18(a1, v6);
  if (!v7)
  {
    sub_220E5E9B0(v6);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = sub_220E5E84C(v1, v5);

  return v3;
}

uint64_t sub_220E5E9B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6B0, &qword_220FCD450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220E5EA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6B0, &qword_220FCD450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E5EA88()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    do
    {
      sub_220E1E2A8(v4, v10);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      sub_220FC11A0();
      __swift_destroy_boxed_opaque_existential_0(v10);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  swift_beginAccess();
  v5 = *(v0 + 128);
  v6 = *(v5 + 16);

  for (i = 0; ; i = v9)
  {
    if (v6 == i)
    {

      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      __swift_destroy_boxed_opaque_existential_0((v1 + 56));

      sub_220E62B78(*(v1 + 136), *(v1 + 144), *(v1 + 152));

      return v1;
    }

    if (i >= *(v5 + 16))
    {
      break;
    }

    v9 = i + 1;

    sub_220FC2B00();
  }

  __break(1u);
  return result;
}

uint64_t sub_220E5EC0C()
{
  sub_220E5EA88();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

void sub_220E5EC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v84 = a2;
  v77 = a1;
  v3 = sub_220FC2340();
  v80 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v83 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220FC2390();
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v81 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v76 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288, &qword_220FCBA00);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v64 - v14;
  v16 = sub_220FC0090();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v74 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v73 = &v64 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v85 = &v64 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v64 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v64 - v32;
  v34 = [objc_opt_self() defaultManager];
  sub_220F9A350(v15);

  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_220E3B2DC(v15, &qword_27CF9D288, &qword_220FCBA00);
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v35 = sub_220FC17A0();
    __swift_project_value_buffer(v35, qword_2812C5EB0);
    v36 = sub_220FC1780();
    v37 = sub_220FC2E10();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_220E15000, v36, v37, "No caches folder available", v38, 2u);
      MEMORY[0x223D9DDF0](v38, -1, -1);
    }
  }

  else
  {
    v70 = v6;
    v71 = v17;
    v69 = v3;
    v67 = *(v17 + 32);
    v39 = v33;
    v40 = v16;
    v67(v33, v15, v16);
    v41 = v84;
    v42 = v79;
    aBlock = v84;
    v88 = v79;

    MEMORY[0x223D9BD60](0x7461646174656D2DLL, 0xE900000000000061);
    v72 = v29;
    v66 = v10;
    v68 = v39;
    sub_220FC0060();

    aBlock = v41;
    v88 = v42;

    MEMORY[0x223D9BD60](0xD000000000000011, 0x8000000220FDD370);
    v43 = v85;
    sub_220FC0060();

    v78 = *(v78 + 112);
    v44 = v76;
    sub_220E62C6C(v77, v76);
    v45 = v71;
    v46 = *(v71 + 16);
    v47 = v73;
    v48 = v43;
    v49 = v40;
    v65 = v40;
    v46(v73, v48, v40);
    v50 = v74;
    v46(v74, v72, v49);
    v51 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v52 = *(v45 + 80);
    v53 = (v66 + v52 + v51) & ~v52;
    v54 = (v18 + v52 + v53) & ~v52;
    v55 = swift_allocObject();
    *(v55 + 16) = v84;
    *(v55 + 24) = v42;
    sub_220E62CD0(v44, v55 + v51);
    v56 = v47;
    v57 = v65;
    v58 = v67;
    v67((v55 + v53), v56, v65);
    v58(v55 + v54, v50, v57);
    v91 = sub_220E62D34;
    v92 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v88 = 1107296256;
    v89 = sub_220F6DA78;
    v90 = &block_descriptor_2;
    v59 = _Block_copy(&aBlock);

    v60 = v81;
    sub_220FC2350();
    v86 = MEMORY[0x277D84F90];
    sub_220E6319C(&qword_2812C5E08, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0, &unk_220FC9850);
    sub_220E62E38();
    v61 = v83;
    v62 = v69;
    sub_220FC3430();
    MEMORY[0x223D9C530](0, v60, v61, v59);
    _Block_release(v59);
    (*(v80 + 8))(v61, v62);
    (*(v82 + 8))(v60, v70);
    v63 = *(v71 + 8);
    v63(v85, v57);
    v63(v72, v57);
    v63(v68, v57);
  }
}

uint64_t sub_220E5F430(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[2] = a4;
  v9 = type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v28 - v13;
  v30 = xmmword_220FCA3A0;
  v31 = xmmword_220FCA3A0;
  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v15 = sub_220FC17A0();
  __swift_project_value_buffer(v15, qword_2812C5EB0);
  sub_220E62C6C(a3, v14);

  v16 = sub_220FC1780();
  v17 = sub_220FC2E30();

  v18 = os_log_type_enabled(v16, v17);
  v28[3] = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v28[0] = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v28[1] = a3;
    v22 = v21;
    v29[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_220E20FF8(a1, a2, v29);
    *(v20 + 12) = 2082;
    sub_220FC02B0();
    sub_220E6319C(&qword_2812CA288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v23 = sub_220FC38F0();
    v25 = v24;
    sub_220E62E9C(v14);
    v26 = sub_220E20FF8(v23, v25, v29);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_220E15000, v16, v17, "Caching metadata to disk. languageIdentifier=%{public}s, expiryDate=%{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v22, -1, -1);
    MEMORY[0x223D9DDF0](v20, -1, -1);
  }

  else
  {

    sub_220E62E9C(v14);
  }

  sub_220FC27A0();
  sub_220FC0130();
  sub_220F39458(&v31);
  sub_220FC0130();
  sub_220E565AC(v30, *(&v30 + 1));
  return sub_220E565AC(v31, *(&v31 + 1));
}

void sub_220E5F8C4(uint64_t a1, unint64_t a2)
{
  v67 = a1;
  v3 = sub_220FC2340();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v75 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220FC2390();
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v73 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288, &qword_220FCBA00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v63 - v11;
  v13 = sub_220FC0090();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v69 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v68 = v63 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v63 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = v63 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = v63 - v30;
  v32 = [objc_opt_self() defaultManager];
  sub_220F9A350(v12);

  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_220E3B2DC(v12, &qword_27CF9D288, &qword_220FCBA00);
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v33 = sub_220FC17A0();
    __swift_project_value_buffer(v33, qword_2812C5EB0);
    v34 = sub_220FC1780();
    v35 = sub_220FC2E10();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_220E15000, v34, v35, "No cache folder available to clear metadata storage for", v36, 2u);
      MEMORY[0x223D9DDF0](v36, -1, -1);
    }
  }

  else
  {
    v66 = v6;
    v64 = v14;
    v37 = *(v14 + 32);
    v63[1] = v14 + 32;
    v63[0] = v37;
    v37(v31, v12, v13);
    v38 = v67;
    aBlock = v67;
    v80 = a2;

    MEMORY[0x223D9BD60](0x7461646174656D2DLL, 0xE900000000000061);
    v71 = v27;
    sub_220FC0060();

    v39 = v38;
    aBlock = v38;
    v80 = a2;

    MEMORY[0x223D9BD60](0xD000000000000011, 0x8000000220FDD370);
    v72 = v23;
    sub_220FC0060();

    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v65 = v31;
    v40 = sub_220FC17A0();
    __swift_project_value_buffer(v40, qword_2812C5EB0);

    v41 = sub_220FC1780();
    v42 = sub_220FC2E30();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_220E20FF8(v38, a2, &aBlock);
      _os_log_impl(&dword_220E15000, v41, v42, "Clear metadata storage. languageIdentifier=%{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x223D9DDF0](v44, -1, -1);
      MEMORY[0x223D9DDF0](v43, -1, -1);
    }

    v45 = v72;
    v46 = v64;
    v70 = *(v70 + 112);
    v47 = *(v64 + 16);
    v48 = v68;
    v47(v68, v71, v13);
    v49 = v69;
    v47(v69, v45, v13);
    v50 = *(v46 + 80);
    v51 = (v50 + 16) & ~v50;
    v52 = (v15 + v50 + v51) & ~v50;
    v53 = (v15 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v48;
    v56 = v63[0];
    (v63[0])(v54 + v51, v55, v13);
    v56(v54 + v52, v49, v13);
    v57 = (v54 + v53);
    *v57 = v39;
    v57[1] = a2;
    v83 = sub_220E630E0;
    v84 = v54;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_220F6DA78;
    v82 = &block_descriptor_28;
    v58 = _Block_copy(&aBlock);

    v59 = v73;
    sub_220FC2350();
    v78 = MEMORY[0x277D84F90];
    sub_220E6319C(&qword_2812C5E08, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0, &unk_220FC9850);
    sub_220E62E38();
    v60 = v75;
    v61 = v77;
    sub_220FC3430();
    MEMORY[0x223D9C530](0, v59, v60, v58);
    _Block_release(v58);
    (*(v76 + 8))(v60, v61);
    (*(v74 + 8))(v59, v66);
    v62 = *(v46 + 8);
    v62(v72, v13);
    v62(v71, v13);
    v62(v65, v13);
  }
}

void sub_220E600C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  v8 = sub_220FC0050();
  v27[0] = 0;
  v9 = [v7 removeItemAtURL:v8 error:v27];

  v10 = v27[0];
  if (v9 && (v11 = v27[0], v12 = [v6 defaultManager], v13 = sub_220FC0050(), v27[0] = 0, v14 = objc_msgSend(v12, sel_removeItemAtURL_error_, v13, v27), v12, v13, v10 = v27[0], v14))
  {

    v15 = v10;
  }

  else
  {
    v16 = v10;
    v17 = sub_220FBFFE0();

    swift_willThrow();
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v18 = sub_220FC17A0();
    __swift_project_value_buffer(v18, qword_2812C5EB0);

    v19 = v17;
    v20 = sub_220FC1780();
    v21 = sub_220FC2E10();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_220E20FF8(a3, a4, v27);
      *(v22 + 12) = 2082;
      swift_getErrorValue();
      v24 = sub_220FC39D0();
      v26 = sub_220E20FF8(v24, v25, v27);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_220E15000, v20, v21, "Error while clearing metadata storage. languageIdentifier=%{public}s, error=%{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D9DDF0](v23, -1, -1);
      MEMORY[0x223D9DDF0](v22, -1, -1);
    }

    else
    {
    }
  }
}

void *sub_220E603E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v131 = a1;
  v132 = a3;
  v4 = sub_220FC2340();
  v122 = *(v4 - 8);
  v123 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v120 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_220FC2390();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v7);
  v118 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220FC02B0();
  v125 = *(v9 - 8);
  v126 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v124 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2A0, &qword_220FCA4E8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v128 = v108 - v14;
  v129 = type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  MEMORY[0x28223BE20](v129, v15);
  v115 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v127 = v108 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288, &qword_220FCBA00);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = v108 - v22;
  v24 = sub_220FC0090();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v116 = v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = v108 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = v108 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v39 = v108 - v38;
  v40 = [objc_opt_self() defaultManager];
  sub_220F9A350(v23);

  if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
  {
    v113 = v24;
    v114 = v25;
    v108[0] = *(v25 + 32);
    v108[1] = v25 + 32;
    (v108[0])(v39, v23, v24);
    v45 = v131;
    v139[0] = v131;
    v139[1] = a2;

    MEMORY[0x223D9BD60](0x7461646174656D2DLL, 0xE900000000000061);
    sub_220FC0060();

    v139[0] = v45;
    v139[1] = a2;

    MEMORY[0x223D9BD60](0xD000000000000011, 0x8000000220FDD370);
    v111 = v39;
    sub_220FC0060();

    v47 = *(v130 + 112);
    MEMORY[0x28223BE20](v46, v48);
    v108[-2] = v35;
    v108[-1] = v31;
    v112 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2A8, &unk_220FCA4F0);
    v108[2] = v47;
    sub_220FC2FD0();
    v49 = v139[0];
    v50 = v139[1];
    v130 = v139[2];
    v51 = v139[3];
    v52 = v35;
    v109 = v139[1];
    v110 = v139[0];
    v117 = v139[3];
    if (v139[1] >> 60 == 15)
    {
LABEL_12:
      if (qword_2812C5EA8 != -1)
      {
        swift_once();
      }

      v58 = sub_220FC17A0();
      __swift_project_value_buffer(v58, qword_2812C5EB0);

      v59 = sub_220FC1780();
      v60 = sub_220FC2E30();

      v61 = os_log_type_enabled(v59, v60);
      v62 = v114;
      v63 = v111;
      v64 = v131;
      if (v61)
      {
        v65 = a2;
        v66 = v52;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v139[0] = v68;
        *v67 = 136446210;
        *(v67 + 4) = sub_220E20FF8(v64, v65, v139);
        _os_log_impl(&dword_220E15000, v59, v60, "No cached metadata response available. languageIdentifier=%{public}s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x223D9DDF0](v68, -1, -1);
        v69 = v67;
        v52 = v66;
        MEMORY[0x223D9DDF0](v69, -1, -1);

        sub_220E56854(v130, v117);
        sub_220E56854(v110, v109);
      }

      else
      {
        sub_220E56854(v110, v109);
        sub_220E56854(v130, v117);
      }

      v70 = *(v62 + 8);
      v71 = v113;
      v70(v63, v113);
      v72 = v112;
      sub_220E63178(v136);
      v70(v72, v71);
      v70(v52, v71);
LABEL_18:
      memcpy(v139, v136, 0x162uLL);
      return memcpy(v132, v139, 0x162uLL);
    }

    v137 = v139[0];
    v138 = v139[1];
    if (v139[3] >> 60 == 15)
    {
      sub_220E567FC(v139[0], v139[1]);
      v56 = v49;
      v57 = v50;
LABEL_11:
      sub_220E565AC(v56, v57);
      goto LABEL_12;
    }

    v53 = v130;
    v134 = v130;
    v135 = v139[3];
    sub_220E567E8(v139[0], v139[1]);
    sub_220E567E8(v53, v51);
    v54 = sub_220FC2790();
    if (v54 == 0x342E302E30 && v55 == 0xE500000000000000)
    {
    }

    else
    {
      v75 = sub_220FC3940();

      if ((v75 & 1) == 0)
      {
        sub_220E565AC(v134, v135);
        v56 = v137;
        v57 = v138;
        goto LABEL_11;
      }
    }

    v76 = v128;
    sub_220F3952C();
    v77 = v129;
    __swift_storeEnumTagSinglePayload(v76, 0, 1, v129);
    v78 = v127;
    sub_220E62CD0(v76, v127);
    v79 = v124;
    sub_220FC0670();
    sub_220E6319C(&qword_2812CA290, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v80 = v126;
    LOBYTE(v76) = sub_220FC2680();
    (*(v125 + 8))(v79, v80);
    if (v76)
    {
      sub_220E56854(v130, v117);
      sub_220E56854(v110, v50);
      sub_220E565AC(v134, v135);
      sub_220E565AC(v137, v138);
      v81 = v113;
      v82 = *(v114 + 8);
      v82(v111, v113);
      memcpy(v133, (v78 + *(v77 + 20)), 0x162uLL);
      sub_220E63244(v133, v139);
      sub_220E62E9C(v78);
      memcpy(v136, v133, 0x162uLL);
      nullsub_1();
      v82(v112, v81);
      v82(v52, v81);
    }

    else
    {
      if (qword_2812C5EA8 != -1)
      {
        swift_once();
      }

      v83 = sub_220FC17A0();
      __swift_project_value_buffer(v83, qword_2812C5EB0);
      v84 = v115;
      sub_220E62C6C(v78, v115);

      v85 = sub_220FC1780();
      v86 = sub_220FC2E30();

      v87 = os_log_type_enabled(v85, v86);
      v88 = v131;
      if (v87)
      {
        v89 = swift_slowAlloc();
        v129 = v52;
        v90 = v89;
        v91 = swift_slowAlloc();
        v139[0] = v91;
        *v90 = 136446466;
        *(v90 + 4) = sub_220E20FF8(v88, a2, v139);
        *(v90 + 12) = 2082;
        sub_220E6319C(&qword_2812CA288, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v92 = sub_220FC38F0();
        v93 = v84;
        v95 = v94;
        sub_220E62E9C(v93);
        v96 = sub_220E20FF8(v92, v95, v139);

        *(v90 + 14) = v96;
        _os_log_impl(&dword_220E15000, v85, v86, "Cached metadata response has expired. languageIdentifier=%{public}s, expiryDate=%{public}s", v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D9DDF0](v91, -1, -1);
        v97 = v90;
        v52 = v129;
        MEMORY[0x223D9DDF0](v97, -1, -1);
      }

      else
      {

        sub_220E62E9C(v84);
      }

      v99 = v113;
      v98 = v114;
      v100 = v116;
      (*(v114 + 16))(v116, v52, v113);
      v101 = (*(v98 + 80) + 16) & ~*(v98 + 80);
      v102 = swift_allocObject();
      (v108[0])(v102 + v101, v100, v99);
      v139[4] = sub_220E631E4;
      v139[5] = v102;
      v139[0] = MEMORY[0x277D85DD0];
      v139[1] = 1107296256;
      v139[2] = sub_220F6DA78;
      v139[3] = &block_descriptor_34;
      v103 = _Block_copy(v139);
      v104 = v118;
      sub_220FC2350();
      v136[0] = MEMORY[0x277D84F90];
      sub_220E6319C(&qword_2812C5E08, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0, &unk_220FC9850);
      sub_220E62E38();
      v105 = v120;
      v106 = v123;
      sub_220FC3430();
      MEMORY[0x223D9C530](0, v104, v105, v103);
      _Block_release(v103);
      sub_220E56854(v130, v117);
      sub_220E56854(v110, v109);
      (*(v122 + 8))(v105, v106);
      (*(v119 + 8))(v104, v121);
      sub_220E62E9C(v127);
      sub_220E565AC(v134, v135);
      sub_220E565AC(v137, v138);
      v107 = *(v98 + 8);
      v107(v111, v99);

      sub_220E63178(v136);
      v107(v112, v99);
      v107(v52, v99);
    }

    goto LABEL_18;
  }

  sub_220E3B2DC(v23, &qword_27CF9D288, &qword_220FCBA00);
  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v41 = sub_220FC17A0();
  __swift_project_value_buffer(v41, qword_2812C5EB0);
  v42 = sub_220FC1780();
  v43 = sub_220FC2E10();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_220E15000, v42, v43, "No cache folder available to retrieve metadata storage for", v44, 2u);
    MEMORY[0x223D9DDF0](v44, -1, -1);
  }

  sub_220E63178(v139);
  return memcpy(v132, v139, 0x162uLL);
}

uint64_t sub_220E61288@<X0>(uint64_t *a3@<X8>)
{
  v5 = sub_220FC00C0();
  if (v3)
  {

    v5 = 0;
    v6 = 0xF000000000000000;
  }

  *a3 = v5;
  a3[1] = v6;
  result = sub_220FC00C0();
  a3[2] = result;
  a3[3] = v8;
  return result;
}

void sub_220E612F8()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_220FC0050();
  v7[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_220FBFFE0();

    swift_willThrow();
  }
}

uint64_t sub_220E61418(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_220FC1130();
  v7 = sub_220FC0310();
  v8 = v6;
  v9 = v1[18];
  if (v9 && ((v10 = v1[19], v1[17] == v7) ? (v11 = v9 == v6) : (v11 = 0), v11 || (sub_220FC3940() & 1) != 0))
  {
    v12 = qword_2812C5EA8;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_220FC17A0();
    __swift_project_value_buffer(v13, qword_2812C5EB0);

    v14 = sub_220FC1780();
    v15 = sub_220FC2E30();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136446210;
      v18 = sub_220E20FF8(v7, v8, &v28);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_220E15000, v14, v15, "Received inflight or in memory metadata response. languageIdentifier=%{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223D9DDF0](v17, -1, -1);
      MEMORY[0x223D9DDF0](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v7;
    *(v19 + 24) = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D270, &qword_220FCA490);
    sub_220FC1560();

    v20 = swift_allocObject();
    *(v20 + 16) = v7;
    *(v20 + 24) = v8;
    *(v20 + 32) = v3;
    *(v20 + 40) = v4;
    *(v20 + 48) = v5;
    *(v20 + 56) = v1;

    sub_220E5AFB8(v3, v4, v5);

    v21 = sub_220FC13B0();
    sub_220FC14A0();

    v22 = swift_allocObject();
    *(v22 + 16) = v7;
    *(v22 + 24) = v8;

    v23 = sub_220FC13B0();
    v10 = sub_220FC14C0();

    v24 = v1[17];
    v25 = v1[18];
    v26 = v2[19];
    v2[17] = v7;
    v2[18] = v8;
    v2[19] = v10;

    sub_220E62B78(v24, v25, v26);
  }

  sub_220FC1140();
  return v10;
}

uint64_t sub_220E617C8(void *a1, uint64_t a2, unint64_t a3)
{
  sub_220FC0AB0();
  sub_220FC0A90();
  if (qword_2812CA210 != -1)
  {
    swift_once();
  }

  sub_220FC0A80();

  if (v24[0])
  {
    goto LABEL_11;
  }

  sub_220E603E8(a2, a3, __src);
  memcpy(__dst, __src, 0x162uLL);
  if (sub_220E23D34(__dst) == 1)
  {
    goto LABEL_11;
  }

  memcpy(v24, __dst, 0x162uLL);
  __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  sub_220F2BA94(v24, v22);
  if (v3)
  {
    sub_220E3B2DC(__src, &qword_27CF9D298, &qword_220FCA4E0);
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v7 = sub_220FC17A0();
    __swift_project_value_buffer(v7, qword_2812C5EB0);

    v8 = sub_220FC1780();
    v9 = sub_220FC2E10();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_220E20FF8(a2, a3, v20);
      _os_log_impl(&dword_220E15000, v8, v9, "Unable to parse cached metadata, removing it from cache. languageIdentifier=%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D9DDF0](v11, -1, -1);
      MEMORY[0x223D9DDF0](v10, -1, -1);
    }

    sub_220E5F8C4(a2, a3);
LABEL_11:
    sub_220E630D8(v20);
    memcpy(v19, v20, sizeof(v19));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D290, &qword_220FCA4D8);
    swift_allocObject();
    return sub_220FC14E0();
  }

  sub_220E3B2DC(__src, &qword_27CF9D298, &qword_220FCA4E0);
  memcpy(v20, v22, sizeof(v20));
  nullsub_1();
  memcpy(v19, v20, sizeof(v19));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D290, &qword_220FCA4D8);
  swift_allocObject();
  v12 = sub_220FC14E0();
  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v14 = sub_220FC17A0();
  __swift_project_value_buffer(v14, qword_2812C5EB0);

  v15 = sub_220FC1780();
  v16 = sub_220FC2E30();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_220E20FF8(a2, a3, v19);
    _os_log_impl(&dword_220E15000, v15, v16, "Received cached metadata response from disk. languageIdentifier=%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D9DDF0](v18, -1, -1);
    MEMORY[0x223D9DDF0](v17, -1, -1);
  }

  return v12;
}

uint64_t sub_220E61C04(void *__src, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t *a8)
{
  v25[45] = a6;
  memcpy(v25, __src, 0x158uLL);
  if (sub_220E23D34(v25) == 1)
  {
    if (qword_2812C5EA8 != -1)
    {
      swift_once();
    }

    v11 = sub_220FC17A0();
    __swift_project_value_buffer(v11, qword_2812C5EB0);

    v12 = sub_220FC1780();
    v13 = sub_220FC2E30();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_220E20FF8(a3, a4, v24);
      _os_log_impl(&dword_220E15000, v12, v13, "Fetching metadata from service. languageIdentifier=%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223D9DDF0](v15, -1, -1);
      MEMORY[0x223D9DDF0](v14, -1, -1);
    }

    MEMORY[0x28223BE20](v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D278, &qword_220FCA498);
    swift_allocObject();
    sub_220FC1530();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;

    v19 = sub_220FC13B0();
    v20 = sub_220FC14B0();
  }

  else
  {
    memcpy(v23, v25, sizeof(v23));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D280, &unk_220FCA4A0);
    swift_allocObject();
    memcpy(v24, __src, sizeof(v24));
    sub_220E62C10(v24, &v22);
    return sub_220FC14E0();
  }

  return v20;
}

uint64_t sub_220E61F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v29 = a1;
  v30 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v28 - v18;
  v20 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = a7;
  *(v21 + 56) = a8;
  *(v21 + 64) = a9;
  *(v21 + 72) = a10;
  v22 = v30;
  *(v21 + 80) = v29;
  *(v21 + 88) = a2;
  *(v21 + 96) = v22;
  *(v21 + 104) = a4;

  sub_220E5AFB8(a8, a9, a10);

  v23 = sub_220F9BB1C(0, 0, v19, &unk_220FCA4B8, v21);
  swift_beginAccess();

  sub_220E45230(v24);
  v25 = *(*(a5 + 128) + 16);
  sub_220F09590(v25);
  v26 = *(a5 + 128);
  *(v26 + 16) = v25 + 1;
  *(v26 + 8 * v25 + 32) = v23;
  *(a5 + 128) = v26;
  swift_endAccess();
}

uint64_t sub_220E6212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v12;
  *(v8 + 80) = v13;
  *(v8 + 56) = v11;
  *(v8 + 112) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x2822009F8](sub_220E62170, 0, 0);
}

uint64_t sub_220E62170()
{
  v15 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v13[0] = v3;
  v13[1] = v2;
  v14 = v1;
  sub_220E86A38(v4, v5, v13);
  v7 = v6;
  *(v0 + 88) = v6;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v12;
  *(v8 + 40) = v11;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_220E622C0;

  return MEMORY[0x282200830](v9);
}

void sub_220E622C0()
{
  OUTLINED_FUNCTION_27_0();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_220E623F0, 0, 0);
  }
}

uint64_t sub_220E623F0()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220E62448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  v7 = swift_task_alloc();
  v6[6] = v7;
  v8 = swift_task_alloc();
  v6[7] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
  *v8 = v6;
  v8[1] = sub_220E62554;

  return MEMORY[0x282200430](v7);
}

uint64_t sub_220E62554()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_220E626D0;
  }

  else
  {
    v5 = sub_220E62658;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_220E62658()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 48);
  (*(v0 + 16))(v1);
  sub_220E62E9C(v1);

  OUTLINED_FUNCTION_32_0();

  return v2();
}

uint64_t sub_220E626D0()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 64);
  (*(v0 + 32))(v1);

  OUTLINED_FUNCTION_32_0();

  return v2();
}

uint64_t sub_220E62748()
{
  type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);

  return sub_220FC2B00();
}

void sub_220E627AC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v12 = sub_220FC17A0();
  __swift_project_value_buffer(v12, qword_2812C5EB0);

  v13 = sub_220FC1780();
  v14 = sub_220FC2E30();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a5;
    v17 = swift_slowAlloc();
    v22 = v17;
    *v15 = 136446210;
    *(v15 + 4) = sub_220E20FF8(a3, a4, &v22);
    _os_log_impl(&dword_220E15000, v13, v14, "Received metadata from service. languageIdentifier=%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v18 = v17;
    a5 = v16;
    v6 = v5;
    MEMORY[0x223D9DDF0](v18, -1, -1);
    MEMORY[0x223D9DDF0](v15, -1, -1);
  }

  sub_220E5EC40(a1, a3, a4);
  __swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]);
  v19 = type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  memcpy(__dst, (a1 + *(v19 + 20)), 0x162uLL);
  sub_220F2BA94(__dst, __src);
  if (!v6)
  {
    memcpy(a5, __src, 0x158uLL);
  }
}

uint64_t sub_220E62990(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (qword_2812C5EA8 != -1)
  {
    swift_once();
  }

  v8 = sub_220FC17A0();
  __swift_project_value_buffer(v8, qword_2812C5EB0);

  v9 = a1;
  v10 = sub_220FC1780();
  v11 = sub_220FC2E10();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_220E20FF8(a3, a4, &v21);
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v14 = sub_220FC39D0();
    v16 = sub_220E20FF8(v14, v15, &v21);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_220E15000, v10, v11, "Error while retrieving metadata. languageIdentifier=%{public}s, error=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v13, -1, -1);
    MEMORY[0x223D9DDF0](v12, -1, -1);
  }

  sub_220FC1130();
  v17 = a2[17];
  v18 = a2[18];
  v19 = a2[19];
  a2[18] = 0;
  a2[19] = 0;
  a2[17] = 0;
  sub_220E62B78(v17, v18, v19);
  return sub_220FC1140();
}

void sub_220E62B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_220E62C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E62CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E62D34()
{
  v1 = type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  OUTLINED_FUNCTION_29(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_220FC0090();
  OUTLINED_FUNCTION_29(v6);
  v8 = v7;
  v10 = v9;
  v11 = *(v8 + 80);
  v12 = (v3 + v5 + v11) & ~v11;
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = v0 + ((*(v10 + 64) + v11 + v12) & ~v11);

  return sub_220E5F430(v13, v14, v0 + v3, v0 + v12, v15);
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_220E62E38()
{
  result = qword_2812C5D88;
  if (!qword_2812C5D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CF9DBC0, &unk_220FC9850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5D88);
  }

  return result;
}

uint64_t sub_220E62E9C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapOverlayServiceMetadataResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220E62EF8(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_220E5B0F0;

  return sub_220E6212C(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_220E63008(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_220E5B0F0;

  return sub_220E62448(a1, v4, v5, v6, v7, v8);
}

void sub_220E630E0()
{
  v1 = sub_220FC0090();
  OUTLINED_FUNCTION_29(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  v8 = (v6 + 16) & ~v6;
  v9 = (v7 + v6 + v8) & ~v6;
  v10 = (v0 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_220E600C4(v0 + v8, v0 + v9, v11, v12);
}

uint64_t sub_220E6319C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220E631E4()
{
  sub_220FC0090();

  sub_220E612F8();
}

void sub_220E632B0(void *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v47 = v2;
  v48 = v1;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v1 + 56) + ((v7 << 11) | (32 * v10));
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v15)
    {
      v53 = *(v11 + 24);
      v49 = *v11;
      v51 = *(v11 + 16);
      v52 = v8;
      v16 = v14;

      v50 = v16;
      v17 = [v50 polygons];
      sub_220E638D4();
      v18 = sub_220FC2970();

      v19 = sub_220F43CDC();
      v20 = 0;
      while (1)
      {
        if (v19 == v20)
        {

          v14 = v51;
          v8 = v52;
          v2 = v47;
          v1 = v48;
          goto LABEL_22;
        }

        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x223D9CB30](v20, v18);
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = v21;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_6_0();
        v26 = [v24 v25];

        ++v20;
        if (v26)
        {

          v14 = v51;
          v8 = v52;
          v2 = v47;
          v1 = v48;
          v13 = v49;
          v15 = v53;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v27 = v14;
    v28 = OUTLINED_FUNCTION_6_0();
    if ([v29 v30])
    {
LABEL_23:
      v54 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F0B258(0, v8[2] + 1, 1);
      }

      v32 = v8[2];
      v31 = v8[3];
      if (v32 >= v31 >> 1)
      {
        sub_220F0B258((v31 > 1), v32 + 1, 1);
      }

      v8[2] = v32 + 1;
      v33 = &v8[4 * v32];
      v33[4] = v13;
      v33[5] = v54;
      v33[6] = v14;
      *(v33 + 56) = v15;
    }

    else
    {

LABEL_22:
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v34 = v8[2];
      if (v34 > 1)
      {
        v35 = OUTLINED_FUNCTION_6_0();
        v40 = sub_220E63680(v36, v35, v37, v38, v39);

        v34 = *(v40 + 16);
        v8 = v40;
      }

      if (v34)
      {
        v55 = MEMORY[0x277D84F90];
        sub_220F0B298(0, v34, 0);
        v41 = (v8 + 5);
        do
        {
          v43 = *(v41 - 1);
          v42 = *v41;
          v44 = *(v55 + 16);
          v45 = *(v55 + 24);

          if (v44 >= v45 >> 1)
          {
            sub_220F0B298((v45 > 1), v44 + 1, 1);
          }

          *(v55 + 16) = v44 + 1;
          v46 = v55 + 16 * v44;
          *(v46 + 32) = v43;
          *(v46 + 40) = v42;
          v41 += 4;
          --v34;
        }

        while (v34);
      }

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_220E63680(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = a1;
  v6 = *(a1 + 16);
  if (v6 < 2)
  {
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
    sub_220F0B278(0, v6, 0);
    v11 = v34;
    v12 = (v5 + 56);
    do
    {
      v14 = *(v12 - 3);
      v13 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;

      [v15 boundingMapRect];
      v37.origin.x = a2;
      v37.origin.y = a3;
      v37.size.width = a4;
      v37.size.height = a5;
      v36 = MKMapRectIntersection(v35, v37);
      width = v36.size.width;
      height = v36.size.height;
      v34 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_220F0B278((v19 > 1), v20 + 1, 1);
        v11 = v34;
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 40 * v20;
      *(v21 + 32) = v14;
      *(v21 + 40) = v13;
      *(v21 + 48) = v15;
      *(v21 + 56) = v16;
      *(v21 + 64) = width * height;
      v12 += 32;
      --v6;
    }

    while (v6);
    v34 = v11;

    sub_220E63918(&v34);

    v22 = v34;
    v23 = *(v34 + 16);
    if (v23)
    {
      v34 = MEMORY[0x277D84F90];
      sub_220F0B258(0, v23, 0);
      v5 = v34;
      v24 = (v22 + 56);
      do
      {
        v26 = *(v24 - 3);
        v25 = *(v24 - 2);
        v27 = *(v24 - 1);
        v28 = *v24;
        v34 = v5;
        v29 = *(v5 + 16);
        v30 = *(v5 + 24);

        v31 = v27;
        if (v29 >= v30 >> 1)
        {
          sub_220F0B258((v30 > 1), v29 + 1, 1);
          v5 = v34;
        }

        *(v5 + 16) = v29 + 1;
        v32 = v5 + 32 * v29;
        *(v32 + 32) = v26;
        *(v32 + 40) = v25;
        *(v32 + 48) = v27;
        *(v32 + 56) = v28;
        v24 += 40;
        --v23;
      }

      while (v23);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v5;
}

unint64_t sub_220E638D4()
{
  result = qword_2812C5AE0;
  if (!qword_2812C5AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5AE0);
  }

  return result;
}

void sub_220E63918(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_220E64490(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_220E63984(v4);
  *a1 = v2;
}

void sub_220E63984(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_220FC38E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2B0, &unk_220FCA530);
        v6 = sub_220FC29E0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_220E63B1C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_220E63A88(0, v2, 1, a1);
  }
}

uint64_t sub_220E63A88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3 + 32);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 - 16);
        *(v9 + 8) = *(v9 - 32);
        v13 = *(v9 + 24);
        result = *(v9 + 32);
        *(v9 + 24) = v12;
        *(v9 + 40) = *v9;
        *(v9 - 32) = v10;
        *(v9 - 24) = v11;
        *(v9 - 16) = v13;
        *(v9 - 8) = result;
        *v9 = v7;
        v9 -= 40;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220E63B1C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v90 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9 + 32);
        v11 = *a3 + 40 * v7;
        v12 = *(v11 + 32);
        v13 = (v11 + 112);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 5;
          v18 = (v12 < v10) ^ (v15 >= v17);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v12 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 40 * v6 - 16;
            v20 = 40 * v7 + 32;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = *(v23 + v20 - 32);
                v26 = v23 + v19;
                v27 = *(v24 - 2);
                v28 = *(v24 - 8);
                v29 = *v24;
                v30 = *(v26 + 8);
                v31 = *(v26 - 8);
                *(v24 - 2) = *(v26 - 24);
                *(v24 - 1) = v31;
                *v24 = v30;
                *(v26 - 24) = v25;
                *(v26 - 8) = v27;
                *v26 = v28;
                *(v26 + 8) = v29;
              }

              ++v22;
              v19 -= 40;
              v20 += 40;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v32 = *a3;
            v33 = *a3 + 40 * v9 - 8;
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 40 * v9 + 32);
              v36 = v34;
              v37 = v33;
              do
              {
                if (*v37 >= v35)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v38 = *(v37 + 8);
                v39 = *(v37 + 16);
                v40 = *(v37 - 16);
                *(v37 + 8) = *(v37 - 32);
                v41 = *(v37 + 24);
                v42 = *(v37 + 32);
                *(v37 + 24) = v40;
                *(v37 + 40) = *v37;
                *(v37 - 32) = v38;
                *(v37 - 24) = v39;
                *(v37 - 16) = v41;
                *(v37 - 8) = v42;
                *v37 = v35;
                v37 -= 40;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 40;
              --v34;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v92 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F370E4(0, v8[2] + 1, 1, v8);
        v8 = v88;
      }

      v45 = v8[2];
      v44 = v8[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_220F370E4(v44 > 1, v45 + 1, 1, v8);
        v8 = v89;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v7;
      v48[1] = v92;
      v93 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_56:
            if (v55)
            {
              goto LABEL_96;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_99;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_104;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v46 < 2)
          {
            goto LABEL_98;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_71:
          if (v70)
          {
            goto LABEL_101;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_103;
          }

          if (v77 < v69)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = &v47[2 * v49];
          v84 = v83[1];
          sub_220E64194((*a3 + 40 * *v81), (*a3 + 40 * *v83), *a3 + 40 * v84, v93);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v84 < v82)
          {
            goto LABEL_91;
          }

          v85 = v8;
          v86 = v8[2];
          if (v49 > v86)
          {
            goto LABEL_92;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v49 >= v86)
          {
            goto LABEL_93;
          }

          v46 = v86 - 1;
          memmove(&v47[2 * v49], v83 + 2, 16 * (v86 - 1 - v49));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          if (!v87)
          {
            goto LABEL_85;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_94;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_95;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_97;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_100;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_105;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v92;
      a4 = v90;
      if (v92 >= v6)
      {
        v95 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_220E6405C(&v95, *a1, a3);
LABEL_89:
}

uint64_t sub_220E6405C(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_220E6433C(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_220E64194((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_220E64194(double *a1, double *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_220F0AE5C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[5 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[4] >= v6[4])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 5;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 5;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 5;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = *(v12 + 1);
    v7[4] = v12[4];
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_13;
  }

  sub_220F0AE5C(a2, (a3 - a2) / 40, a4);
  v10 = &v4[5 * v9];
LABEL_15:
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v19 = v6 - 5;
      v13 = v5 + 40 == v6;
      v6 -= 5;
      if (!v13)
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        *(v5 + 32) = v19[4];
        *v5 = v20;
        *(v5 + 16) = v21;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 40))
    {
      v17 = *(v10 - 5);
      v18 = *(v10 - 3);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v17;
      *(v5 + 16) = v18;
    }

    v10 -= 5;
  }

LABEL_28:
  v22 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v22])
  {
    memmove(v6, v4, 40 * v22);
  }

  return 1;
}

char *sub_220E64350(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_220E6437C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2B8, &unk_220FD4F20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_220E644DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF5 && *(a1 + 49))
    {
      v2 = *a1 + 244;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 0xB)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220E6451C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
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

id sub_220E64588()
{
  result = sub_220E645A8();
  qword_27CFAF478 = result;
  return result;
}

id sub_220E645A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2C8, &qword_220FCA710);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v24 - v2;
  v25 = sub_220FC03E0();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220FC03F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220FC0470();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  (*(v9 + 104))(v12, *MEMORY[0x277CC9810], v8);
  sub_220FC0400();
  (*(v9 + 8))(v12, v8);
  v19 = sub_220FC0440();
  (*(v14 + 8))(v17, v13);
  [v18 setCalendar_];

  sub_220E65948(0xD000000000000015, 0x8000000220FDD4C0, v18);
  sub_220FC02F0();
  v20 = sub_220FC0370();
  (*(v4 + 8))(v7, v25);
  [v18 setLocale_];

  sub_220FC0480();
  v21 = sub_220FC04B0();
  v22 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v21) != 1)
  {
    v22 = sub_220FC0490();
    (*(*(v21 - 8) + 8))(v3, v21);
  }

  [v18 setTimeZone_];

  return v18;
}

uint64_t sub_220E64950(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v94 = v6;
  v95 = v5;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v94 - v12;
  v14 = sub_220FBFDE0();
  OUTLINED_FUNCTION_6();
  v96 = v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E653C0(a2);
  v20 = *v2;
  v21 = *(v2 + 24);
  v22 = *(v2 + 40);
  switch(*(v2 + 48))
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070, &unk_220FC9CD0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_220FC8E10;
      *(v67 + 32) = v20;
      *(v67 + 40) = v4;
      *(v67 + 48) = 0x617461646174656DLL;
      *(v67 + 56) = 0xE800000000000000;
      v97 = v67;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068, &unk_220FCA700);
      sub_220E56234();
      v20 = sub_220FC2670();

      break;
    case 2:

      break;
    case 3:
      v52 = *(v2 + 16);
      sub_220FC0220();
      if (qword_27CF9C048 != -1)
      {
        OUTLINED_FUNCTION_0_16(&qword_27CF9C048);
      }

      v53 = sub_220FC01D0();
      v54 = OUTLINED_FUNCTION_9_5(v53, sel_stringFromDate_);

      sub_220FC2700();
      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_7_5();
      sub_220E65400(v55, v56, v57, v58, v52, v21);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2C0, &unk_220FCA6F0);
      *(OUTLINED_FUNCTION_1_15(v59) + 16) = xmmword_220FC8E30;
      OUTLINED_FUNCTION_3_10(0x547472617473);

      OUTLINED_FUNCTION_8_5();
      sub_220FC0AB0();
      sub_220FC0A90();
      if (qword_2812CA1E8 != -1)
      {
        swift_once();
      }

      v20 = 0xD000000000000015;
      sub_220FC0A80();

      (*(v94 + 8))(v13, v95);
      break;
    case 4:
      OUTLINED_FUNCTION_6_5();
      if (qword_27CF9C048 != -1)
      {
        OUTLINED_FUNCTION_0_16(&qword_27CF9C048);
      }

      v37 = sub_220FC01D0();
      v38 = OUTLINED_FUNCTION_9_5(v37, sel_stringFromDate_);

      sub_220FC2700();
      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_4_9(v39);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2C0, &unk_220FCA6F0);
      v41 = OUTLINED_FUNCTION_1_15(v40);
      OUTLINED_FUNCTION_2_10(v41, xmmword_220FC8E30);

      OUTLINED_FUNCTION_8_5();
      v42 = OUTLINED_FUNCTION_5_8();
      v43(v42);
      v20 = 0xD000000000000020;
      break;
    case 5:
      OUTLINED_FUNCTION_6_5();
      if (qword_27CF9C048 != -1)
      {
        OUTLINED_FUNCTION_0_16(&qword_27CF9C048);
      }

      v68 = sub_220FC01D0();
      v69 = OUTLINED_FUNCTION_9_5(v68, sel_stringFromDate_);

      sub_220FC2700();
      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_4_9(v70);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2C0, &unk_220FCA6F0);
      *(OUTLINED_FUNCTION_1_15(v71) + 16) = xmmword_220FC8E30;
      OUTLINED_FUNCTION_3_10(0x547472617473);

      OUTLINED_FUNCTION_8_5();
      v72 = OUTLINED_FUNCTION_5_8();
      v73(v72);
      v20 = 0xD000000000000012;
      break;
    case 6:
      OUTLINED_FUNCTION_6_5();
      if (qword_27CF9C048 != -1)
      {
        OUTLINED_FUNCTION_0_16(&qword_27CF9C048);
      }

      v74 = sub_220FC01D0();
      v75 = OUTLINED_FUNCTION_9_5(v74, sel_stringFromDate_);

      sub_220FC2700();
      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_4_9(v76);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2C0, &unk_220FCA6F0);
      v78 = OUTLINED_FUNCTION_1_15(v77);
      OUTLINED_FUNCTION_2_10(v78, xmmword_220FC8E30);

      OUTLINED_FUNCTION_8_5();
      v79 = OUTLINED_FUNCTION_5_8();
      v80(v79);
      v20 = 0xD00000000000001DLL;
      break;
    case 7:
      OUTLINED_FUNCTION_6_5();
      if (qword_27CF9C048 != -1)
      {
        OUTLINED_FUNCTION_0_16(&qword_27CF9C048);
      }

      v60 = sub_220FC01D0();
      v61 = OUTLINED_FUNCTION_9_5(v60, sel_stringFromDate_);

      sub_220FC2700();
      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_4_9(v62);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2C0, &unk_220FCA6F0);
      v64 = OUTLINED_FUNCTION_1_15(v63);
      OUTLINED_FUNCTION_2_10(v64, xmmword_220FC8E30);

      OUTLINED_FUNCTION_8_5();
      v65 = OUTLINED_FUNCTION_5_8();
      v66(v65);
      v20 = 0xD000000000000015;
      break;
    case 8:
      OUTLINED_FUNCTION_7_5();
      sub_220E65400(v86, v87, v88, v89, v90, v21);
      v20 = 0x70614D7261646172;
      break;
    case 9:
      OUTLINED_FUNCTION_7_5();
      v97 = sub_220E65400(v44, v45, v46, v47, v48, v21);
      if ((v22 & 1) == 0)
      {
        sub_220FC0220();
        if (qword_27CF9C048 != -1)
        {
          OUTLINED_FUNCTION_0_16(&qword_27CF9C048);
        }

        v49 = sub_220FC01D0();
        v50 = OUTLINED_FUNCTION_9_5(v49, sel_stringFromDate_);

        sub_220FC2700();
        OUTLINED_FUNCTION_10_4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2C0, &unk_220FCA6F0);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_220FC8E30;
        sub_220FBFDD0();

        sub_220F34B88(v51);
        (*(v94 + 8))(v9, v95);
      }

      v20 = 0xD00000000000001FLL;
      break;
    case 0xA:
      OUTLINED_FUNCTION_7_5();
      sub_220E65400(v81, v82, v83, v84, v85, v21);
      v20 = 0x74617265706D6574;
      break;
    case 0xB:
      OUTLINED_FUNCTION_6_5();
      if (qword_27CF9C048 != -1)
      {
        OUTLINED_FUNCTION_0_16(&qword_27CF9C048);
      }

      v32 = sub_220FC01D0();
      v33 = OUTLINED_FUNCTION_9_5(v32, sel_stringFromDate_);

      sub_220FC2700();
      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_4_9(v34);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2C0, &unk_220FCA6F0);
      v36 = OUTLINED_FUNCTION_1_15(v35);
      OUTLINED_FUNCTION_2_10(v36, xmmword_220FC8E30);

      OUTLINED_FUNCTION_8_5();
      (*(v94 + 8))(v9, v95);
      v20 = 1684957559;
      break;
    default:
      v23 = (*(v2 + 41) << 8) | ((*(v2 + 45) | (*(v2 + 47) << 16)) << 40) | v22;
      OUTLINED_FUNCTION_7_5();
      v29 = sub_220E65400(v24, v25, v26, v27, v28, v21);
      if (v23)
      {
        sub_220FBFDD0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_220F37364(0, *(v29 + 16) + 1, 1, v29);
          v29 = v92;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_220F37364(v30 > 1, v31 + 1, 1, v29);
          v29 = v93;
        }

        *(v29 + 16) = v31 + 1;
        (*(v96 + 32))(v29 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v31, v19, v14);
      }

      v20 = 0x696C617551726961;
      break;
  }

  return v20;
}

uint64_t sub_220E653C0(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 16;
    v4 = *v1;
    v1 += 16;
    if (v4 == 1)
    {
      return *(v3 - 3);
    }
  }

  return 0;
}

uint64_t sub_220E65400(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if ((a2 & 1) == 0)
  {
    a6 = *&a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2C0, &unk_220FCA6F0);
  sub_220FBFDE0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220FC9880;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0, &unk_220FCA870);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D83E88];
  *(v11 + 16) = xmmword_220FC8E30;
  v13 = MEMORY[0x277D83ED0];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = a3;
  sub_220FC2720();
  sub_220FBFDD0();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220FC8E30;
  *(v14 + 56) = v12;
  *(v14 + 64) = v13;
  *(v14 + 32) = a4;
  sub_220FC2720();
  sub_220FBFDD0();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220FC8E30;
  *(v15 + 56) = v12;
  *(v15 + 64) = v13;
  *(v15 + 32) = a5;
  sub_220FC2720();
  sub_220FBFDD0();

  result = swift_allocObject();
  *(result + 16) = xmmword_220FC8E30;
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a6 < 9.22337204e18)
  {
    v17 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v17;
    *(result + 32) = a6;
    sub_220FC2720();
    sub_220FBFDD0();

    return v10;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_220E656E4(char a1)
{
  v2 = *(v1 + 48);
  if (v2 >= 0xC)
  {
    if ((a1 & 1) == 0)
    {
      v3 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    if (((0xF67u >> v2) & 1) != 0 || (a1 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_220F36F34(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = v4;
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (v6 >= v5 >> 1)
  {
    sub_220F36F34(v5 > 1, v6 + 1, 1, v4);
    v3 = v9;
  }

  *(v3 + 16) = v6 + 1;
  v7 = v3 + 16 * v6;
  *(v7 + 32) = 0x746B2F6567616D69;
  *(v7 + 40) = 0xE900000000000078;
LABEL_10:
  if (!*(v3 + 16))
  {

    return 0;
  }

  return v3;
}

unint64_t sub_220E657D0()
{
  result = 0x696C617551726961;
  switch(*(v0 + 48))
  {
    case 1:
      result = 0x617461646174656DLL;
      break;
    case 2:
      result = 1635017060;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 0xA:
      result = 0x74617265706D6574;
      break;
    case 0xB:
      result = 0x74636556646E6977;
      break;
    default:
      return result;
  }

  return result;
}

void sub_220E65948(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  [a3 setDateFormat_];
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_220FC0220();
}

uint64_t sub_220E659CC(uint64_t a1)
{
  result = sub_220FC33A0();
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

uint64_t sub_220E65A70@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_220FC1130();
  swift_beginAccess();
  sub_220E65C50(a1 + 24, &v6);
  if (v7)
  {
    sub_220E1E72C(&v6, a3);
  }

  else
  {
    sub_220E5B1D0(&v6);
    sub_220E49164(&v6);
    swift_beginAccess();
    sub_220E65CC0(&v6, a1 + 24);
    swift_endAccess();
    sub_220E65C50(a1 + 24, a3);
  }

  sub_220FC1140();
}

char *sub_220E65B4C()
{

  v1 = *(*v0 + 96);
  v2 = sub_220FC33A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_220E65BE0()
{
  sub_220E65B4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_220E65C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0D0, &qword_220FC9AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E65CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D0D0, &qword_220FC9AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_220E65D60()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___locationLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___locationLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___locationLabel);
  }

  else
  {
    v4 = v0;
    sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
    v5 = sub_220E417BC(*MEMORY[0x277D76918], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74420]);
    v6 = [objc_opt_self() labelColor];
    v7 = sub_220E65E58(v5, v6);

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_220E65E58(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setLayoutMargins_];

  [v4 setFont_];
  [v4 setTextColor_];
  return v4;
}

id sub_220E65F08()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___timeLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___timeLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___timeLabel);
  }

  else
  {
    v4 = v0;
    sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
    v5 = sub_220E417BC(*MEMORY[0x277D76938], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74410]);
    v6 = [objc_opt_self() secondaryLabelColor];
    v7 = sub_220E65E58(v5, v6);

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_220E66000()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___conditionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___conditionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___conditionLabel);
  }

  else
  {
    v4 = v0;
    sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
    v5 = sub_220E417BC(*MEMORY[0x277D76938], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74410]);
    v6 = [objc_opt_self() secondaryLabelColor];
    v7 = sub_220E65E58(v5, v6);

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_220E660F8()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureRangeLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureRangeLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureRangeLabel);
  }

  else
  {
    v4 = v0;
    sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
    v5 = sub_220E417BC(*MEMORY[0x277D76938], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74410]);
    v6 = [objc_opt_self() tertiaryLabelColor];
    v7 = sub_220E65E58(v5, v6);

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_220E661F0()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureLabel);
  }

  else
  {
    v4 = v0;
    sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
    v5 = sub_220E417BC(*MEMORY[0x277D76918], 0x8000u, 0x4044000000000000, 0, 0, 0, *MEMORY[0x277D74408]);
    v6 = [objc_opt_self() secondaryLabelColor];
    v7 = sub_220E65E58(v5, v6);

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_220E662E8()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___viewLocationButton;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___viewLocationButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___viewLocationButton);
  }

  else
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v4 = qword_2812CE4B0;
    v5 = sub_220FBFF80();
    v7 = v6;

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v9 = sub_220E6645C(v5, v7, sub_220E695E8, v8);

    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void *sub_220E6645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[1] = a1;
  v6 = sub_220FC3290();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220FC3320();
  OUTLINED_FUNCTION_6();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v29 - v22;
  sub_220FC3300();
  (*(v8 + 104))(v12, *MEMORY[0x277D74FD0], v6);
  sub_220FC32A0();
  v24 = [objc_opt_self() labelColor];
  sub_220FC32E0();
  sub_220FC32B0();
  sub_220E1966C(0, &qword_27CF9CD50, 0x277D75220);
  (*(v15 + 16))(v19, v23, v13);
  sub_220E1966C(0, &qword_27CF9DBE0, 0x277D750C8);
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;

  OUTLINED_FUNCTION_10();
  sub_220FC3260();
  v26 = sub_220FC3330();
  sub_220E1966C(0, &qword_2812C5B80, 0x277D74300);
  v27 = sub_220E417BC(*MEMORY[0x277D76918], 0x8000u, 0, 1, 0, 0, *MEMORY[0x277D74418]);
  [v26 _setFont_];

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v15 + 8))(v23, v13);
  return v26;
}

id sub_220E66788()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___openLocationButton;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___openLocationButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___openLocationButton);
  }

  else
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v4 = qword_2812CE4B0;
    v5 = sub_220FBFF80();
    v7 = v6;

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v9 = sub_220E6645C(v5, v7, sub_220E69618, v8);

    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_220E668FC(uint64_t a1, void (*a2)(uint64_t, char *))
{
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_220E66954(a2);
  }
}

uint64_t sub_220E66954(void (*a1)(uint64_t, char *))
{
  v3 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(v5 + 16))(v9, v1 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_location, v3);
    a1(v1, v9);
    swift_unknownObjectRelease();
    return (*(v5 + 8))(v9, v3);
  }

  return result;
}

id sub_220E66A68()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___separator);
  }

  else
  {
    v4 = sub_220E66AC8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_220E66AC8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() separatorColor];
  [v0 setBackgroundColor_];

  return v0;
}

char *sub_220E66B50(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___locationLabel) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___timeLabel) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___conditionLabel) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureRangeLabel) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureLabel) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___viewLocationButton) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___openLocationButton) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___separator) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_unitObserver) = 0;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_padding) = 0x4024000000000000;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_horizontalSpacing) = 0x4018000000000000;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_verticalSpacing) = 0x4024000000000000;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_minWidth) = 0x406B800000000000;
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_maxWidth) = 0x4072C00000000000;
  v9 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_location;
  v10 = sub_220FC1070();
  v11 = *(v10 - 8);
  v28 = a1;
  v26 = v10;
  (*(v11 + 16))(v4 + v9, a1);
  *(v4 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_isSelectedLocation) = a2;
  v12 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_currentWeather;
  v13 = sub_220FC05E0();
  v14 = *(v13 - 8);
  v27 = a3;
  (*(v14 + 16))(v4 + v12, a3, v13);
  v15 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_dailyForecast;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D398, &unk_220FD7300);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v4 + v15, a4, v16);
  OUTLINED_FUNCTION_10();
  v20 = objc_msgSendSuper2(v18, v19);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for WeatherMapUnitObserver();
  swift_allocObject();
  v22 = sub_220EC25FC(sub_220E697BC, v21);
  v23 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_unitObserver;
  swift_beginAccess();
  *&v20[v23] = v22;
  v24 = v20;

  swift_beginAccess();
  if (*&v20[v23])
  {
    swift_endAccess();

    sub_220EC260C();

    (*(v17 + 8))(a4, v16);
    (*(v14 + 8))(v27, v13);
    (*(v11 + 8))(v28, v26);
  }

  else
  {
    (*(v17 + 8))(a4, v16);
    (*(v14 + 8))(v27, v13);
    (*(v11 + 8))(v28, v26);
    swift_endAccess();
  }

  return v24;
}

void sub_220E66F50(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_220E67000();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 view];

    if (v5)
    {
      [v5 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_220E67000()
{
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D398, &unk_220FD7300);
  v159 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v1);
  v158 = &v139 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3A0, &unk_220FCA860);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v142 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v160 = &v139 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v179 = &v139 - v11;
  v180 = sub_220FC2450();
  v176 = *(v180 - 8);
  MEMORY[0x28223BE20](v180, v12);
  v173 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_220FC2F30();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v14);
  v143 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_220FC2F60();
  v174 = *(v178 - 8);
  MEMORY[0x28223BE20](v178, v16);
  v146 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v172 = &v139 - v20;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050, &unk_220FD08E0);
  v175 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v21);
  v177 = &v139 - v22;
  v141 = sub_220FBFF50();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v23);
  v149 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_220FC03C0();
  v170 = *(v171 - 1);
  MEMORY[0x28223BE20](v171, v25);
  v168 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_220FC03E0();
  v167 = *(v169 - 1);
  MEMORY[0x28223BE20](v169, v27);
  v166 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_220FC05E0();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v29);
  v163 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_220FC04B0();
  v187 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v31);
  v184 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_220FC02B0();
  v186 = *(v183 - 8);
  MEMORY[0x28223BE20](v183, v33);
  v182 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_220FC1070();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v0;
  v40 = sub_220E65D60();
  v41 = v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_location;
  v42 = *(v36 + 16);
  v42(v39, v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_location, v35);
  v43 = sub_220FC1040();
  v45 = v44;
  v46 = *(v36 + 8);
  v46(v39, v35);
  sub_220F05198(v43, v45, v40);

  v162 = sub_220E65F08();
  v47 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_currentWeather;
  swift_beginAccess();
  v48 = v182;
  sub_220FC05B0();
  swift_endAccess();
  v153 = v41;
  v154 = v36 + 16;
  v152 = v42;
  v42(v39, v41, v35);
  v49 = v184;
  sub_220FC1050();
  v155 = v39;
  v157 = v35;
  v156 = v36 + 8;
  v151 = v46;
  v46(v39, v35);
  v50 = v47;
  v51 = sub_220FC0280();
  v53 = v52;
  v54 = *(v187 + 8);
  v187 += 8;
  v148 = v54;
  v54(v49, v185);
  v55 = *(v186 + 8);
  v186 += 8;
  v147 = v55;
  v55(v48, v183);
  v56 = v162;
  sub_220F05198(v51, v53, v162);

  v57 = v188;
  v58 = sub_220E66000();
  v59 = v164;
  v60 = v163;
  v61 = v165;
  (*(v164 + 16))(v163, v57 + v50, v165);
  v62 = sub_220FC0590();
  v64 = v63;
  (*(v59 + 8))(v60, v61);
  sub_220F05198(v62, v64, v58);

  v65 = v166;
  sub_220FC0390();
  v66 = v168;
  sub_220FC03D0();
  (*(v167 + 1))(v65, v169);
  v67 = v66;
  LOBYTE(v66) = sub_220FC03A0();
  (v170)[1](v67, v171);
  v68 = sub_220E661F0();
  v150 = v50;
  v170 = v68;
  if ((v66 & 1) == 0)
  {
    swift_beginAccess();
    v86 = v177;
    sub_220FC0580();
    swift_endAccess();
    v87 = v172;
    sub_220FC2430();
    v88 = v176;
    v89 = *(v176 + 104);
    v90 = v173;
    LODWORD(v168) = *MEMORY[0x277D7B408];
    v91 = v180;
    v167 = v89;
    v89(v173);
    sub_220FC0C80();
    sub_220FC0C60();
    sub_220E69774(&qword_27CF9D078, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
    v92 = v181;
    v93 = v178;
    v94 = sub_220FBFCB0();
    v96 = v95;

    v166 = *(v88 + 8);
    (v166)(v90, v91);
    v171 = *(v174 + 8);
    v171(v87, v93);
    v169 = *(v175 + 8);
    v169(v86, v92);
    v97 = v94;
    v84 = v170;
    sub_220F05198(v97, v96, v170);
    v81 = v93;
    v70 = v87;
LABEL_5:

    v98 = v159;
    v99 = v158;
    v100 = v161;
    (*(v159 + 16))(v158, v188 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_dailyForecast, v161);
    swift_beginAccess();
    v101 = v182;
    sub_220FC05B0();
    swift_endAccess();
    v102 = v155;
    v103 = v157;
    v152(v155, v153, v157);
    v104 = v184;
    sub_220FC1050();
    v151(v102, v103);
    v105 = v179;
    sub_220FC0960();
    v148(v104, v185);
    v147(v101, v183);
    (*(v98 + 8))(v99, v100);
    v106 = v160;
    sub_220E69648(v105, v160);
    v107 = sub_220FC04F0();
    if (__swift_getEnumTagSinglePayload(v106, 1, v107) != 1)
    {
      v108 = v177;
      sub_220FC04D0();
      v109 = *(v107 - 8);
      v110 = *(v109 + 8);
      v183 = v109 + 8;
      v184 = v110;
      (v110)(v106, v107);
      sub_220FC2430();
      v111 = v146;
      sub_220FC2F50();
      v186 = v174 + 8;
      v171(v70, v81);
      v112 = v176;
      v113 = v173;
      v114 = v180;
      v182 = (v176 + 104);
      (v167)(v173, v168, v180);
      v178 = sub_220FC0C80();
      sub_220FC0C60();
      v115 = sub_220E69774(&qword_27CF9D078, MEMORY[0x277D7B508], MEMORY[0x277D7B500]);
      v116 = v181;
      v174 = v115;
      v185 = sub_220FBFCB0();
      v187 = v117;
      v105 = v179;

      v118 = v112 + 8;
      v119 = v171;
      v176 = v118;
      (v166)(v113, v114);
      v119(v111, v81);
      v120 = v175 + 8;
      v121 = v116;
      v122 = v169;
      v169(v108, v121);
      v106 = v142;
      sub_220E69648(v105, v142);
      if (__swift_getEnumTagSinglePayload(v106, 1, v107) != 1)
      {
        sub_220FC04C0();
        (v184)(v106, v107);
        v124 = v172;
        sub_220FC2430();
        v169 = v122;
        v125 = v146;
        sub_220FC2F50();
        v119(v124, v81);
        v175 = v120;
        v126 = v180;
        (v167)(v113, v168, v180);
        sub_220FC0C60();
        v127 = v181;
        v183 = sub_220FBFCB0();
        v184 = v128;

        (v166)(v113, v126);
        v119(v125, v81);
        v169(v108, v127);
        v123 = sub_220E660F8();
        if (qword_2812C5B30 != -1)
        {
          swift_once();
        }

        v129 = qword_2812CE4B0;
        sub_220FBFF80();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0, &unk_220FCA870);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_220FC8E10;
        v131 = MEMORY[0x277D837D0];
        *(v130 + 56) = MEMORY[0x277D837D0];
        v132 = sub_220E69720();
        v133 = v187;
        *(v130 + 32) = v185;
        *(v130 + 40) = v133;
        *(v130 + 96) = v131;
        *(v130 + 104) = v132;
        v135 = v183;
        v134 = v184;
        *(v130 + 64) = v132;
        *(v130 + 72) = v135;
        *(v130 + 80) = v134;
        v136 = sub_220FC26D0();
        v138 = v137;

        sub_220F05198(v136, v138, v123);
        v105 = v179;
        goto LABEL_12;
      }
    }

    sub_220E696B8(v106);
    v123 = sub_220E660F8();
    sub_220F05198(0, 0xE000000000000000, v123);
LABEL_12:

    sub_220E691B4();
    return sub_220E696B8(v105);
  }

  swift_beginAccess();
  v69 = v177;
  sub_220FC0580();
  swift_endAccess();
  v70 = v172;
  sub_220FC2430();
  v71 = v143;
  sub_220FC2F40();
  v171 = *(v174 + 8);
  v171(v70, v178);
  v72 = v176;
  v73 = *(v176 + 104);
  v74 = v173;
  LODWORD(v168) = *MEMORY[0x277D7B408];
  v75 = v180;
  v167 = v73;
  v73(v173);
  sub_220FC0C80();
  sub_220FC0C60();
  sub_220E69774(&qword_27CF9D3A8, MEMORY[0x277D7B4F8], MEMORY[0x277D7B4F0]);
  v76 = v181;
  v77 = v145;
  sub_220FBFCA0();

  v78 = *(v72 + 8);
  v78(v74, v75);
  (*(v144 + 8))(v71, v77);
  v79 = *(v175 + 8);
  v79(v69, v76);
  result = [*(v188 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureLabel) font];
  v81 = v178;
  if (result)
  {
    v82 = result;
    v169 = v79;
    v166 = v78;
    v83 = v149;
    v84 = sub_220FBFF40();

    (*(v140 + 8))(v83, v141);
    v85 = v170;
    [v170 setAttributedText_];

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_220E683F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_unitObserver;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  if (*&v1[v3])
  {

    sub_220EC2890();
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for PopoverViewController(uint64_t a1)
{
  result = qword_27CF9D368;
  if (!qword_27CF9D368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220E6866C()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___locationLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___timeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___conditionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureRangeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___viewLocationButton) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___openLocationButton) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___separator) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_unitObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_padding) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_horizontalSpacing) = 0x4018000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_verticalSpacing) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_minWidth) = 0x406B800000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController_maxWidth) = 0x4072C00000000000;
  sub_220FC3740();
  __break(1u);
}

void sub_220E687B8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setView_];

  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 setMaximumContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

void sub_220E688A8()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0, &unk_220FC9110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FCA7C0;
  *(inited + 32) = sub_220E65D60();
  *(inited + 40) = sub_220E65F08();
  *(inited + 48) = sub_220E66000();
  *(inited + 56) = sub_220E660F8();
  *(inited + 64) = sub_220E661F0();
  *(inited + 72) = sub_220E66A68();
  *(inited + 80) = sub_220E66788();
  *(inited + 88) = sub_220E662E8();
  v3 = [v0 view];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  for (i = 0; ; ++i)
  {
    if (i == 8)
    {

      swift_setDeallocating();
      sub_220E56134();

      [*&v1[OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___viewLocationButton] setEnabled_];
      sub_220E67000();
      return;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v6 = MEMORY[0x223D9CB30](i, inited);
LABEL_7:
    v7 = v6;
    [v4 addSubview_];
  }

  if (i < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(inited + 8 * i + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_220E68A94()
{
  v2 = OUTLINED_FUNCTION_4_10();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  [v2 frame];

  v4 = [v0 (v1 + 2808)];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 effectiveUserInterfaceLayoutDirection];

  if (v6 <= 1)
  {
    OUTLINED_FUNCTION_11_4();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_220E68B54()
{
  v2 = OUTLINED_FUNCTION_4_10();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  [v2 frame];

  v4 = [v0 (v1 + 2808)];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v4 effectiveUserInterfaceLayoutDirection];

  if (v6 <= 1)
  {
    OUTLINED_FUNCTION_11_4();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_220E68C14()
{
  v63.receiver = v0;
  v63.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v63, sel_viewDidLayoutSubviews);
  v1 = sub_220E661F0();
  [v1 intrinsicContentSize];

  v2 = sub_220E65D60();
  OUTLINED_FUNCTION_8_6(v2);

  v3 = OUTLINED_FUNCTION_7_6();
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v64.origin.x = v6;
  v64.origin.y = v8;
  v64.size.width = v10;
  v64.size.height = v12;
  CGRectGetWidth(v64);
  v13 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___locationLabel;
  v14 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___locationLabel);
  sub_220E68A94();
  [v14 setFrame_];

  v15 = sub_220E65F08();
  OUTLINED_FUNCTION_8_6(v15);

  v16 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___timeLabel;
  v17 = *(v0 + v13);
  v18 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___timeLabel);
  [v17 frame];
  CGRectGetMaxY(v65);
  OUTLINED_FUNCTION_6_6();
  sub_220E68A94();
  OUTLINED_FUNCTION_14_4();

  v19 = sub_220E660F8();
  OUTLINED_FUNCTION_8_6(v19);

  v20 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureRangeLabel);
  OUTLINED_FUNCTION_9_6();
  CGRectGetMaxY(v66);
  OUTLINED_FUNCTION_6_6();
  sub_220E68B54();
  OUTLINED_FUNCTION_14_4();

  v21 = OUTLINED_FUNCTION_7_6();
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v67.origin.x = v24;
  v67.origin.y = v26;
  v67.size.width = v28;
  v67.size.height = v30;
  CGRectGetWidth(v67);
  v31 = sub_220E66000();
  OUTLINED_FUNCTION_8_6(v31);

  v32 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___conditionLabel;
  [*(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___conditionLabel) intrinsicContentSize];
  v33 = *(v0 + v32);
  OUTLINED_FUNCTION_9_6();
  CGRectGetMaxY(v68);
  OUTLINED_FUNCTION_6_6();
  sub_220E68A94();
  OUTLINED_FUNCTION_14_4();

  v34 = OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureLabel;
  v35 = [*(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___temperatureLabel) font];
  if (!v35)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v36 = v35;
  [v35 descender];

  v37 = [*(v0 + v16) font];
  if (!v37)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v38 = v37;
  [v37 descender];

  v39 = *(v0 + v16);
  v40 = *&v34[v0];
  OUTLINED_FUNCTION_9_6();
  CGRectGetMaxY(v69);
  sub_220E68B54();
  OUTLINED_FUNCTION_14_4();

  v41 = sub_220E66788();
  OUTLINED_FUNCTION_8_6(v41);

  v42 = sub_220E662E8();
  OUTLINED_FUNCTION_8_6(v42);

  v43 = OUTLINED_FUNCTION_7_6();
  if (!v43)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v44 = v43;
  [v43 bounds];
  OUTLINED_FUNCTION_13_2();

  v70.origin.x = OUTLINED_FUNCTION_12_4();
  CGRectGetWidth(v70);
  v45 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___openLocationButton);
  v46 = OUTLINED_FUNCTION_7_6();
  if (!v46)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v47 = v46;
  [v46 bounds];
  OUTLINED_FUNCTION_2_11();

  v71.origin.x = OUTLINED_FUNCTION_3_11();
  CGRectGetHeight(v71);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_11_4();
  [v48 v49];

  v50 = *(v0 + OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___viewLocationButton);
  v51 = OUTLINED_FUNCTION_7_6();
  if (!v51)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v52 = v51;
  [v51 bounds];
  OUTLINED_FUNCTION_2_11();

  v72.origin.x = OUTLINED_FUNCTION_3_11();
  CGRectGetHeight(v72);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_11_4();
  [v53 v54];

  v55 = [v0 traitCollection];
  [v55 displayScale];

  v56 = sub_220E66A68();
  v57 = OUTLINED_FUNCTION_7_6();
  if (!v57)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v58 = v57;
  [v57 bounds];
  OUTLINED_FUNCTION_13_2();

  v73.origin.x = OUTLINED_FUNCTION_12_4();
  CGRectGetHeight(v73);
  v59 = OUTLINED_FUNCTION_7_6();
  if (v59)
  {
    v60 = v59;
    [v59 bounds];
    OUTLINED_FUNCTION_2_11();

    v74.origin.x = OUTLINED_FUNCTION_3_11();
    CGRectGetWidth(v74);
    v61 = OUTLINED_FUNCTION_5_9();
    [v61 v62];

    return;
  }

LABEL_19:
  __break(1u);
}

id sub_220E691B4()
{
  v1 = sub_220E65D60();
  [v1 intrinsicContentSize];

  v2 = sub_220E66000();
  [v2 intrinsicContentSize];

  v3 = sub_220E661F0();
  [v3 intrinsicContentSize];

  v4 = sub_220E660F8();
  [v4 intrinsicContentSize];

  [*&v0[OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___locationLabel] intrinsicContentSize];
  v5 = sub_220E65F08();
  [v5 intrinsicContentSize];

  [*&v0[OBJC_IVAR____TtC11WeatherMaps21PopoverViewController____lazy_storage___conditionLabel] intrinsicContentSize];
  v6 = sub_220E662E8();
  [v6 intrinsicContentSize];

  v7 = sub_220E66788();
  [v7 intrinsicContentSize];

  sub_220FC1110();

  return [v0 setPreferredContentSize_];
}

void sub_220E6939C(uint64_t a1)
{
  sub_220FC1070();
  if (v1 <= 0x3F)
  {
    sub_220FC05E0();
    if (v2 <= 0x3F)
    {
      sub_220E694E4(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_220E694E4(uint64_t a1)
{
  if (!qword_27CF9D378)
  {
    sub_220FC04F0();
    v1 = MEMORY[0x277CE3158];
    sub_220E69774(&qword_27CF9D380, MEMORY[0x277CE3158], MEMORY[0x277CE3170]);
    sub_220E69774(&qword_27CF9D388, v1, MEMORY[0x277CE3160]);
    sub_220E69774(&qword_27CF9D390, v1, MEMORY[0x277CE3168]);
    v2 = sub_220FC0990();
    if (!v3)
    {
      atomic_store(v2, &qword_27CF9D378);
    }
  }
}

uint64_t sub_220E69648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3A0, &unk_220FCA860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E696B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3A0, &unk_220FCA860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220E69720()
{
  result = qword_27CF9DBD0;
  if (!qword_27CF9DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DBD0);
  }

  return result;
}

uint64_t sub_220E69774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_220E697E0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  return v0;
}

uint64_t sub_220E69828()
{
  sub_220E697E0();

  return MEMORY[0x2821FE8D8](v0, 232, 7);
}

uint64_t sub_220E69880(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220E698D4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220E69934()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  *(v1 + 1752) = v0;
  *(v1 + 1744) = v4;
  v5 = type metadata accessor for WeatherMapOverlayTimeConstraints(0);
  *(v1 + 1760) = v5;
  OUTLINED_FUNCTION_8_0(v5);
  *(v1 + 1768) = swift_task_alloc();
  v6 = sub_220FC02B0();
  *(v1 + 1776) = v6;
  *(v1 + 1784) = *(v6 - 8);
  *(v1 + 1792) = swift_task_alloc();
  v7 = type metadata accessor for WeatherMapOverlayFramesMetadata(0);
  *(v1 + 1800) = v7;
  OUTLINED_FUNCTION_8_0(v7);
  *(v1 + 1808) = swift_task_alloc();
  *(v1 + 1816) = swift_task_alloc();
  v8 = type metadata accessor for WeatherMapOverlay(0);
  *(v1 + 1824) = v8;
  OUTLINED_FUNCTION_8_0(v8);
  *(v1 + 1832) = swift_task_alloc();
  *(v1 + 1840) = swift_task_alloc();
  *(v1 + 1848) = swift_task_alloc();
  *(v1 + 1856) = *v3;
  *(v1 + 1682) = *(v3 + 16);
  v9 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_220E69AA8()
{
  OUTLINED_FUNCTION_53_0();
  v36 = v0;
  v1 = *(v0 + 1744);
  v2 = type metadata accessor for SnapshotOverlayComposeRequest(0);
  v3 = v2;
  v4 = (v1 + *(v2 + 28));
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x7465732D746F6ELL;
  }

  *(v0 + 1880) = v6;
  *(v0 + 1872) = v5;
  v7 = *(v2 + 24);
  *(v0 + 1684) = v7;
  v8 = v1 + v7;
  OUTLINED_FUNCTION_6_7();
  sub_220E6E888(v8, v9, v10);
  *(v0 + 1888) = *v1;
  v11 = v1 + *(v3 + 32);
  v12 = *&v11[*(type metadata accessor for SnapshotManager.Options(0) + 40)];
  v13 = qword_27CF9BFB0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 1848);
  v15 = *(v0 + 1840);
  v16 = sub_220FC17A0();
  *(v0 + 1896) = __swift_project_value_buffer(v16, qword_27CF9CB08);
  OUTLINED_FUNCTION_6_7();
  sub_220E6E888(v14, v15, v17);

  v18 = sub_220FC1780();
  v19 = sub_220FC2E30();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 1840);
  if (v20)
  {
    v34 = v12;
    v22 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v22 = 136446466;
    *(v22 + 4) = sub_220E20FF8(v5, v6, &v35);
    *(v22 + 12) = 2082;
    memcpy((v0 + 752), (v21 + 16), 0xB8uLL);
    memmove((v0 + 936), (v21 + 16), 0xB8uLL);
    sub_220E56868(v0 + 752, v0 + 1120);
    sub_220E568C4();
    v23 = sub_220FC38F0();
    v25 = v24;
    memcpy((v0 + 568), (v0 + 936), 0xB8uLL);
    sub_220E56918(v0 + 568);
    OUTLINED_FUNCTION_0_18();
    sub_220E6E8F0(v21, v26);
    v27 = sub_220E20FF8(v23, v25, &v35);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_220E15000, v18, v19, "Generate overlay snapshot. uuid=%{public}s, overlay.metadata=%{public}s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    v12 = v34;
    OUTLINED_FUNCTION_15();
  }

  else
  {

    OUTLINED_FUNCTION_0_18();
    sub_220E6E8F0(v21, v28);
  }

  *(v0 + 1681) = *(v8 + 200);
  memcpy((v0 + 16), (v8 + 16), 0xB8uLL);
  v30 = *v8;
  v29 = *(v8 + 8);
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  *(v0 + 1904) = v31;
  *v31 = v32;
  v31[1] = sub_220E69DF4;

  return sub_220E6B878((v0 + 1681), v0 + 16, v30, v29, v12);
}

uint64_t sub_220E69DF4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1[205] = v0;
  v1[206] = v2;
  v1[207] = v3;
  v1[239] = v2;

  v4 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_220E69EF0()
{
  OUTLINED_FUNCTION_53_0();
  if (!*(v0 + 1912))
  {

    v9 = sub_220FC1780();
    v10 = sub_220FC2E10();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1848);
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_220E15000, v9, v10, "Could not create overlay container!", v13, 2u);
      OUTLINED_FUNCTION_15();
    }

LABEL_20:
    sub_220E6E8F0(v12, type metadata accessor for WeatherMapOverlay);

    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_29_1();

    __asm { BRAA            X5, X16 }
  }

  v1 = *(v0 + 1656);
  v2 = *(v0 + 1848);
  *(v0 + 1920) = v1;
  OUTLINED_FUNCTION_6_7();
  sub_220E6E888(v2, v3, v4);
  memmove((v0 + 384), (v2 + 16), 0xB8uLL);
  v92 = v1;
  switch(sub_220E435CC(v0 + 384))
  {
    case 1u:
    case 2u:
    case 4u:
      v5 = *(v0 + 1832);
      v6 = sub_220E22B0C(v0 + 384);
      v7 = sub_220F0AB8C(*v6, v5);
      OUTLINED_FUNCTION_0_18();
      sub_220E6E8F0(v5, v8);
      break;
    default:
      sub_220E22B0C(v0 + 384);
      v14 = *(v0 + 1848);
      v15 = *(v0 + 1824);
      v16 = *(v0 + 1784);
      v17 = *(v0 + 1776);
      OUTLINED_FUNCTION_0_18();
      sub_220E6E8F0(v18, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF18, &qword_220FC9680);
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_220FC8E30;
      (*(v16 + 16))(v7 + v20, v14 + *(v15 + 28), v17);
      break;
  }

  v21 = *(v0 + 1816);
  v22 = *(v0 + 1808);
  v23 = *(v0 + 1800);
  v24 = *(v0 + 1792);
  v25 = *(v0 + 1768);
  v26 = *(v0 + 1848) + *(*(v0 + 1824) + 28);
  v27 = *(v26 + *(*(v0 + 1760) + 28));
  (*(*(v0 + 1784) + 16))(v21, v26, *(v0 + 1776));
  *(v21 + *(v23 + 20)) = v7;
  *(v21 + *(v23 + 24)) = v27;
  v28 = *(v7 + 16);
  sub_220E6E8F0(v21, type metadata accessor for WeatherMapOverlayFramesMetadata);
  sub_220FC0670();
  sub_220E6E888(v26, v25, type metadata accessor for WeatherMapOverlayTimeConstraints);
  ObjectType = swift_getObjectType();
  (*(v92 + 80))(ObjectType, v92);
  v30 = sub_220EED848(v24);
  v32 = v31;
  *(v0 + 1928) = v30;
  *(v0 + 1936) = v33;
  sub_220E6E8F0(v22, type metadata accessor for WeatherMapOverlayFramesMetadata);
  if (v28 < 2)
  {
    v36 = sub_220FC0230();
    if ((v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_48:
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_51_0();
      if (!(v41 ^ v42 | v40))
      {
        OUTLINED_FUNCTION_22_2();
        if (v41)
        {
          v34 = v43;
          goto LABEL_16;
        }

LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v34 = sub_220E6BBF8(*(v0 + 1792), *(v0 + 1848));
  if (v35)
  {
    goto LABEL_17;
  }

LABEL_16:
  *(v0 + 1944) = v34;
  if (v32)
  {
LABEL_17:

    v44 = sub_220FC1780();
    v45 = sub_220FC2E10();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_220E15000, v44, v45, "Could not set up timestamp", v46, 2u);
      OUTLINED_FUNCTION_15();
    }

    v12 = *(v0 + 1848);
    v47 = *(v0 + 1792);
    v48 = *(v0 + 1784);
    v49 = *(v0 + 1776);
    v50 = *(v0 + 1768);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1_16();
    sub_220E6E8F0(v50, v51);
    (*(v48 + 8))(v47, v49);
    goto LABEL_20;
  }

  memcpy((v0 + 200), (*(v0 + 1744) + *(v0 + 1684) + 16), 0xB8uLL);
  sub_220F15E3C((v0 + 1432));
  memcpy((v0 + 1304), (v0 + 1432), 0x80uLL);
  if (sub_220E6E944(v0 + 1304) == 1)
  {
    v54 = 0;
    v55 = 1;
  }

  else
  {
    v54 = *(v0 + 1320);
    v55 = *(v0 + 1328);
    sub_220E6ED9C(v0 + 1432, &qword_27CF9D3B8, &unk_220FCA9C0);
  }

  *(v0 + 1683) = v55 & 1;
  *(v0 + 1952) = v54;
  v56 = *(v0 + 1888);
  __swift_project_boxed_opaque_existential_1((*(v0 + 1752) + 96), *(*(v0 + 1752) + 120));
  *(v0 + 1960) = sub_220EDC770(v56, 512.0);
  v36 = (*(v92 + 104))(ObjectType, v92);
  *(v0 + 1968) = v36;
  v57 = *(v36 + 16);
  *(v0 + 1976) = v57;
  v58 = MEMORY[0x277D84F98];
  if (!v57)
  {
LABEL_31:
    *(v0 + 2080) = v58;

    *(v0 + 2088) = objc_opt_self();
    v62 = sub_220FC2AB0();
    v63 = OUTLINED_FUNCTION_44(v62);
    *(v0 + 2104) = v63;
    OUTLINED_FUNCTION_60_0(v63, MEMORY[0x277D85700]);
    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_29_1();

    return MEMORY[0x2822009F8](v36, v37, v38);
  }

  v59 = 0;
  v60 = (v36 + 40);
  while (1)
  {
    *(v0 + 2000) = v58;
    *(v0 + 1992) = v59;
    *(v0 + 1984) = v58;
    if (v59 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    v61 = *(v60 - 1);
    *(v0 + 2008) = v61;
    if (v61)
    {
      break;
    }

    ++v59;
    v60 += 2;
    if (v57 == v59)
    {
      goto LABEL_31;
    }
  }

  v65 = *v60;
  *(v0 + 2016) = *v60;
  v66 = swift_getObjectType();
  *(v0 + 2024) = v66;
  v67 = *(v65 + 112);
  *(v0 + 2032) = v67;
  *(v0 + 2040) = (v65 + 112) & 0xFFFFFFFFFFFFLL | 0x4F14000000000000;
  swift_unknownObjectRetain();
  v67(v66, v65);
  if ((v68 & 0x8000000000) != 0 || object_getClass(*(v0 + 1912)) != _TtC11WeatherMaps32RadarWithHashMapOverlayContainer)
  {
    v69 = *(v0 + 1682);
    *(v0 + 1688) = *(v0 + 1856);
    *(v0 + 1704) = v69;
    v70 = swift_task_alloc();
    *(v0 + 2064) = v70;
    *v70 = v0;
    OUTLINED_FUNCTION_2_12(v70);
    OUTLINED_FUNCTION_29_1();

    return sub_220E6C44C(v71, v72, v73, v74, v75, v76, v77);
  }

  v80 = *(v0 + 1768);
  v81 = *(v0 + 1760);
  swift_unknownObjectRetain();
  sub_220FC0230();
  OUTLINED_FUNCTION_9_7(v82, *(v80 + *(v81 + 28)));
  if (!(v41 ^ v42 | v40))
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_51_0();
  if (v41 ^ v42 | v40)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return MEMORY[0x2822009F8](v36, v37, v38);
  }

  OUTLINED_FUNCTION_22_2();
  if (!v41)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_17_2();
  v83 = swift_task_alloc();
  *(v0 + 2048) = v83;
  *v83 = v0;
  OUTLINED_FUNCTION_3_12(v83);
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_29_1();

  return sub_220E6C7AC(v84, v85, v86, v87, v88, v89, v90);
}

uint64_t sub_220E6A68C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_7();
  *v4 = v3;
  v3[195] = v1;
  v3[196] = v5;
  v3[197] = v6;
  v3[198] = v7;
  v3[199] = v0;
  v8 = *v1;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  v3[257] = v0;

  if (v0)
  {

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_220E6AAC4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_7();
  *v4 = v3;
  v3[200] = v1;
  v3[201] = v5;
  v3[202] = v6;
  v3[203] = v7;
  v3[204] = v0;
  v8 = *v1;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  v3[259] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_220E6AFB4()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 2088);

  *(v0 + 2112) = [v1 sharedApplication];
  v2 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_220E6B030()
{
  OUTLINED_FUNCTION_19();
  v1 = sub_220FC2AA0();
  *(v0 + 2120) = v1;
  v3 = OUTLINED_FUNCTION_60_0(v1, MEMORY[0x277D85700]);

  return MEMORY[0x2822009F8](sub_220E6B0B0, v3, v2);
}

uint64_t sub_220E6B0B0()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 2112);

  *(v0 + 2128) = [v1 applicationState];

  v2 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_220E6B128()
{
  OUTLINED_FUNCTION_53_0();
  v43 = v0;
  if (*(v0 + 2128))
  {

    v1 = sub_220FC1780();
    v2 = sub_220FC2E30();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 1880);
    if (v3)
    {
      v5 = *(v0 + 1872);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v42[0] = v7;
      *v6 = 136446210;
      v8 = sub_220E20FF8(v5, v4, v42);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_220E15000, v1, v2, "App is in background, cancelling map snapshot. uuid=%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_15();
    }

    else
    {
    }

    v23 = *(v0 + 1848);
    v24 = *(v0 + 1792);
    v25 = *(v0 + 1784);
    v26 = *(v0 + 1776);
    v27 = *(v0 + 1768);
    sub_220FC2A60();
    v29 = sub_220E6E95C(v28);
    OUTLINED_FUNCTION_20(v29);
    OUTLINED_FUNCTION_59_0();
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1_16();
    sub_220E6E8F0(v27, v30);
    (*(v25 + 8))(v24, v26);
    OUTLINED_FUNCTION_0_18();
    v32 = sub_220E6E8F0(v23, v31);
    OUTLINED_FUNCTION_8_7(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42[0], v42[1], v42[2]);

    OUTLINED_FUNCTION_32_0();

    return v40();
  }

  else
  {
    v9 = *(v0 + 1936);
    v10 = *(v0 + 1920);
    v11 = *(v0 + 1912);
    v12 = *(v0 + 1682);
    v13 = *(v0 + 1864);
    v14 = *(v0 + 1856);
    __swift_project_boxed_opaque_existential_1((*(v0 + 1752) + 136), *(*(v0 + 1752) + 160));
    *(v0 + 1664) = v14;
    *(v0 + 1672) = v13;
    *(v0 + 1680) = v12;
    v15 = swift_task_alloc();
    *(v0 + 2136) = v15;
    *v15 = v0;
    v15[1] = sub_220E6B434;
    v16 = *(v0 + 2080);
    v17 = *(v0 + 1960);
    v18 = *(v0 + 1880);
    v19 = *(v0 + 1872);
    v20 = *(v0 + 1768);
    v21 = *(v0 + 1744);
    v45 = *(v0 + 1928);
    v46 = v0 + 1664;

    return sub_220E56A94(v19, v18, v11, v10, v21, v17, v16, v20, v9, 2.0, 512.0);
  }
}

uint64_t sub_220E6B434(uint64_t a1)
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_27_0();
  v12 = v11;
  OUTLINED_FUNCTION_7_7();
  *v13 = v12;
  v14 = *v2;
  OUTLINED_FUNCTION_8();
  *v15 = v14;
  v12[268] = v1;

  if (!v1)
  {
    v12[269] = v4;
    v12[270] = v6;
    v12[271] = v8;
    v12[272] = v10;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_40_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_220E6B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_1_16();
  sub_220E6E8F0(v16, v18);
  (*(v17 + 8))(v12, v14);
  OUTLINED_FUNCTION_0_18();
  sub_220E6E8F0(v13, v19);
  v29 = *(v15 + 2176);

  OUTLINED_FUNCTION_19_2();

  return v25(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t type metadata accessor for SnapshotOverlayComposeRequest(uint64_t a1)
{
  result = qword_2812C6448;
  if (!qword_2812C6448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220E6B878(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 32) = a2;
  *(v6 + 97) = *a1;
  return MEMORY[0x2822009F8](sub_220E6B8A8, 0, 0);
}

uint64_t sub_220E6B8A8()
{
  v21 = v0;
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + 192), *(*(v0 + 64) + 216));
  sub_220FC0AB0();
  sub_220FC0A90();
  if (qword_2812CA238 != -1)
  {
    swift_once();
  }

  sub_220FC0A80();

  v1 = *(v0 + 56);
  if (*(v0 + 96) == 1)
  {
    v20 = *(v0 + 97);
    v2 = sub_220EA20A0(&v20, v1);
  }

  else
  {
    v19 = *(v0 + 97);
    v2 = sub_220F5F40C(&v19, v1);
  }

  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = *(v0 + 97);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v18 = *(v0 + 40);
  v13 = *(v0 + 32);
  *(v0 + 72) = v5;
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *(v14 + 16) = v11;
  *(v14 + 24) = v10;
  *(v14 + 32) = v18;
  *(v14 + 48) = v13;
  *(v14 + 56) = v6;
  *(v14 + 64) = v7 & 1;
  *(v14 + 65) = HIBYTE(v7) & 1;
  *(v14 + 72) = v8;
  *(v14 + 80) = v9;
  *(v14 + 88) = v12;
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3E0, &unk_220FD71C0);
  *v15 = v0;
  v15[1] = sub_220E6BAC4;
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822007B8](v16);
}

uint64_t sub_220E6BAC4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

unint64_t sub_220E6BBF8(uint64_t a1, uint64_t a2)
{
  v77 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0, &qword_220FCA9D0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v73 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v69 - v8;
  v10 = sub_220FC02B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v74 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v76 = &v69 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v72 = &v69 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v69 - v22;
  v24 = type metadata accessor for WeatherMapOverlay(0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for WeatherMapOverlayFramesMetadata(0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E6E888(a2, v27, type metadata accessor for WeatherMapOverlay);
  memcpy(__dst, (a2 + 16), sizeof(__dst));
  v32 = sub_220E435CC(__dst);
  v33 = sub_220E22B0C(__dst);
  v78 = v11;
  switch(v32)
  {
    case 1:
    case 2:
    case 4:
      v34 = sub_220F0AB8C(*v33, v27);
      sub_220E6E8F0(v27, type metadata accessor for WeatherMapOverlay);
      break;
    default:
      sub_220E6E8F0(v27, type metadata accessor for WeatherMapOverlay);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF18, &qword_220FC9680);
      v35 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_220FC8E30;
      v36 = v34 + v35;
      v11 = v78;
      (*(v78 + 16))(v36, a2 + *(v24 + 28), v10);
      break;
  }

  v37 = a2 + *(v24 + 28);
  v38 = *(v37 + *(type metadata accessor for WeatherMapOverlayTimeConstraints(0) + 28));
  v39 = *(v11 + 16);
  v39(v31, v37, v10);
  *&v31[*(v28 + 20)] = v34;
  *&v31[*(v28 + 24)] = v38;
  sub_220EF53B4(v34, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_220E6E8F0(v31, type metadata accessor for WeatherMapOverlayFramesMetadata);
    sub_220E6ED9C(v9, &qword_27CF9EBC0, &qword_220FCA9D0);
    return 0;
  }

  v75 = *(v11 + 32);
  v75(v23, v9, v10);
  if (sub_220FC01F0())
  {
    (*(v11 + 8))(v23, v10);
    v40 = v31;
LABEL_19:
    sub_220E6E8F0(v40, type metadata accessor for WeatherMapOverlayFramesMetadata);
    return 0;
  }

  v71 = v23;
  v70 = v31;
  v41 = v73;
  sub_220F929EC(v34, v73);
  if (__swift_getEnumTagSinglePayload(v41, 1, v10) == 1)
  {
    sub_220E6ED9C(v41, &qword_27CF9EBC0, &qword_220FCA9D0);
    v42 = v74;
    v43 = v78;
  }

  else
  {
    v44 = v72;
    v75(v72, v41, v10);
    v45 = sub_220FC01E0();
    v43 = v78;
    v46 = *(v78 + 8);
    v46(v44, v10);
    v42 = v74;
    if (v45)
    {
      v46(v71, v10);
LABEL_18:
      v40 = v70;
      goto LABEL_19;
    }
  }

  result = (v39)(v76, v71, v10);
  v48 = 0;
  v49 = *(v34 + 16);
  v50 = (v43 + 8);
  while (1)
  {
    if (v49 == v48)
    {
      v52 = *v50;
      (*v50)(v76, v10);
      v52(v71, v10);
      goto LABEL_18;
    }

    if (v48 >= *(v34 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v39(v42, v34 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v48, v10);
    if ((sub_220FC01F0() & 1) == 0)
    {
      break;
    }

    ++v48;
    v51 = v76;
    (*v50)(v76, v10);
    result = (v75)(v51, v42, v10);
  }

  sub_220FC0150();
  v55 = v54;
  v56 = v76;
  sub_220FC0150();
  v58 = vabdd_f64(v55, v57);
  sub_220FC0150();
  v60 = v59;
  sub_220FC0150();
  if (v58 >= vabdd_f64(v60, v61))
  {
    goto LABEL_27;
  }

  sub_220FC0230();
  v63 = v62;
  v64 = v62;
  v65 = *v50;
  (*v50)(v42, v10);
  v65(v56, v10);
  v65(v71, v10);
  result = v70;
  if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_32;
  }

  if (v63 <= -1.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v63 < 1.84467441e19)
  {
LABEL_30:
    v53 = v63;
    sub_220E6E8F0(result, type metadata accessor for WeatherMapOverlayFramesMetadata);
    return v53;
  }

  __break(1u);
LABEL_27:
  sub_220FC0230();
  v63 = v66;
  v67 = v66;
  v68 = *v50;
  (*v50)(v42, v10);
  v68(v56, v10);
  v68(v71, v10);
  result = v70;
  if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v63 <= -1.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v63 < 1.84467441e19)
  {
    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_220E6C44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  *(v8 + 56) = a6;
  *(v8 + 64) = v9;
  *(v8 + 112) = a5;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 72) = *a7;
  *(v8 + 113) = *(a7 + 16);
  return MEMORY[0x2822009F8](sub_220E6C4AC, 0, 0);
}

uint64_t sub_220E6C4AC()
{
  OUTLINED_FUNCTION_38_0();
  v15 = *(v0 + 113);
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 112);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3C0, &qword_220FCA9D8);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = *(v0 + 24);
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *(v8 + 32) = v5 & 1;
  *(v8 + 40) = v9;
  *(v8 + 56) = v4;
  *(v8 + 64) = v2;
  *(v8 + 72) = v1;
  *(v8 + 80) = v15;
  *(v8 + 88) = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  *(v0 + 96) = v10;
  *v10 = v11;
  v10[1] = sub_220E6C5D4;
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_19_2();

  return MEMORY[0x282200740](v12);
}

uint64_t sub_220E6C5D4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E6C6D4()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[2];
  v5 = v0[1];
  v2 = v0[4];
  v3 = swift_unknownObjectRetain();

  return v5(v3, v2, v1);
}

uint64_t sub_220E6C750()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220E6C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  v8[6] = a7;
  v8[7] = v9;
  v8[4] = a2;
  v8[5] = a4;
  v8[3] = a1;
  return MEMORY[0x2822009F8](sub_220E6C7F8, 0, 0);
}

uint64_t sub_220E6C7F8()
{
  OUTLINED_FUNCTION_32();
  type metadata accessor for HashOverlay(0);
  v1 = swift_dynamicCastClass();
  *(v0 + 64) = v1;
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_220E6C904;

    return sub_220E83308();
  }

  else
  {
    sub_220FC2A60();
    v5 = sub_220E6E95C(v4);
    OUTLINED_FUNCTION_20(v5);
    OUTLINED_FUNCTION_59_0();
    swift_willThrow();
    OUTLINED_FUNCTION_32_0();

    return v6();
  }
}

uint64_t sub_220E6C904()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220E6C9E8()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_dataSource;
  v0[10] = OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_dataSource;
  v7 = *(v5 + v6);
  v8 = &off_283488BF0;
  if (!v7)
  {
    v8 = 0;
  }

  *(v1 + OBJC_IVAR____TtC11WeatherMaps11HashOverlay_dataSource + 8) = v8;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3C0, &qword_220FCA9D8);
  v9 = swift_task_alloc();
  v0[11] = v9;
  v9[2] = v4;
  v9[3] = v1;
  v9[4] = v3;
  v9[5] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  v0[12] = v10;
  *v10 = v11;
  v10[1] = sub_220E6CB1C;
  v12 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x282200740](v12);
}

uint64_t sub_220E6CB1C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E6CC1C()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[2];
  *(v0[3] + v0[10]) = 0;

  v2 = v0[1];
  v3 = v0[8];

  return v2(v3, &off_283485EA0, v1);
}

uint64_t sub_220E6CC98()
{
  OUTLINED_FUNCTION_19();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220E6CD00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  HIDWORD(v25) = a8;
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v24 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3E8, &qword_220FCAA80);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v24 - v17;
  HIBYTE(v29[0]) = a3;
  (*(v14 + 16))(&v24 - v17, a1, v13, v16);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v18, v13);
  LOBYTE(v22) = 2;
  sub_220F640D4(v29 + 7, v24, v26, v27, v28, WORD2(v25) & 0x101, a9, a10, 0, 0, 0, a11, v22, sub_220E6F16C, v20, v23, v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v30, v31, v32);
}

uint64_t sub_220E6CEB4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3E8, &qword_220FCAA80);
  return sub_220FC2A50();
}

uint64_t sub_220E6CF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 401) = v14;
  *(v8 + 328) = v12;
  *(v8 + 336) = v13;
  *(v8 + 312) = a7;
  *(v8 + 320) = a8;
  *(v8 + 296) = a4;
  *(v8 + 304) = a6;
  *(v8 + 400) = a5;
  *(v8 + 280) = a2;
  *(v8 + 288) = a3;
  *(v8 + 272) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3C8, &qword_220FCA9F8);
  *(v8 + 360) = v9;
  *(v8 + 368) = *(v9 - 8);
  *(v8 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220E6D038, 0, 0);
}

uint64_t sub_220E6D038()
{
  v59 = v0;
  v1 = *(v0 + 288);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 312);
    v56 = **(v0 + 280);
    ObjectType = swift_getObjectType();
    v47 = *(v3 + 8);
    v48 = ObjectType;
    v5 = (v1 + 56);
    while (1)
    {
      v6 = *(v0 + 400);
      v7 = *(v0 + 296);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = v5[1];
      *(v0 + 176) = *v5;
      *(v0 + 192) = v11;
      v12 = v8;
      v13 = v9;
      v14 = v10;
      if ((v6 & 1) == 0)
      {
        v12 = v8;
        v13 = v9;
        v14 = v10;
        if (v10 > v7)
        {
          if (__OFSUB__(v10, v7))
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            return MEMORY[0x2822004E8](ObjectType);
          }

          v15 = exp2((v10 - v7));
          if (v15 == INFINITY)
          {
            goto LABEL_37;
          }

          if (v15 <= -9.22337204e18)
          {
            goto LABEL_38;
          }

          if (v15 >= 9.22337204e18)
          {
            goto LABEL_39;
          }

          v16 = v15;
          if (!v15)
          {
            goto LABEL_40;
          }

          if (v8 == 0x8000000000000000 && v16 == -1)
          {
            goto LABEL_41;
          }

          if (v9 == 0x8000000000000000 && v16 == -1)
          {
            goto LABEL_42;
          }

          v12 = v8 / v16;
          v14 = v7;
          v13 = v9 / v16;
        }
      }

      v54 = v10;
      v55 = v8;
      v52 = *(v0 + 352);
      v51 = *(v0 + 401);
      v19 = *(v0 + 328);
      v49 = v2;
      v50 = *(v0 + 336);
      v20 = *(v0 + 320);
      v47(v48, *(v0 + 312));
      v53 = v9;
      v22 = v21;
      v23 = swift_getObjectType();
      (*(v22 + 16))(v23, v22);
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3D8, &qword_220FCAA60);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_220FC8E30;
      *(v24 + 32) = v20;
      v57[0] = v19;
      v57[1] = v50;
      v58 = v51;
      v25 = sub_220F0D17C(v12, v13, v14, v24, MEMORY[0x277D84F90], v57, 2.0);

      __swift_destroy_boxed_opaque_existential_0((v0 + 136));
      v26 = sub_220FC2AE0();
      __swift_storeEnumTagSinglePayload(v52, 1, 1, v26);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = v25;
      *(v27 + 40) = v55;
      *(v27 + 48) = v53;
      *(v27 + 56) = v54;
      v28 = *(v0 + 192);
      *(v27 + 64) = *(v0 + 176);
      *(v27 + 80) = v28;

      v29 = swift_taskGroup_addPending();
      v30 = *(v0 + 352);
      if ((v29 & 1) == 0)
      {
        break;
      }

      sub_220E6ED2C(v30, *(v0 + 344));
      v31 = OUTLINED_FUNCTION_49();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, v32, v26);
      v34 = *(v0 + 344);
      if (EnumTagSinglePayload == 1)
      {
        sub_220E6ED9C(*(v0 + 344), &unk_27CF9EB90, &unk_220FC9CE0);
      }

      else
      {
        sub_220FC2AD0();
        (*(*(v26 - 8) + 8))(v34, v26);
      }

      if (*(v27 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v35 = sub_220FC2A30();
        v37 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      if (v37 | v35)
      {
        v38 = v0 + 208;
        *(v0 + 208) = 0;
        *(v0 + 216) = 0;
        *(v0 + 224) = v35;
        *(v0 + 232) = v37;
      }

      else
      {
        v38 = 0;
      }

      v39 = *(v0 + 352);
      *(v0 + 240) = 1;
      *(v0 + 248) = v38;
      *(v0 + 256) = v56;
      swift_task_create();

      ObjectType = sub_220E6ED9C(v39, &unk_27CF9EB90, &unk_220FC9CE0);
      v5 = (v5 + 56);
      --v2;
      if (v49 == 1)
      {
        goto LABEL_30;
      }
    }

    sub_220E6ED9C(v30, &unk_27CF9EB90, &unk_220FC9CE0);

    sub_220FC2A60();
    v44 = sub_220E6E95C(v43);
    OUTLINED_FUNCTION_20(v44);
    OUTLINED_FUNCTION_59_0();
    swift_willThrow();

    OUTLINED_FUNCTION_32_0();

    return v45();
  }

  else
  {
LABEL_30:
    v40 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
    sub_220FC2B70();
    *(v0 + 384) = v40;
    swift_task_alloc();
    OUTLINED_FUNCTION_18();
    *(v0 + 392) = v41;
    *v41 = v42;
    v41[1] = sub_220E6D5E8;
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822004E8](ObjectType);
  }
}

uint64_t sub_220E6D5E8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E6D6E4()
{
  OUTLINED_FUNCTION_25();
  v2 = OUTLINED_FUNCTION_33_0();
  if (!v0)
  {
    v12 = v1[48];
    v13 = v1[34];
    (*(v1[46] + 8))(v1[47], v1[45], v2);
    *v13 = v12;

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_61_0();

    __asm { BRAA            X1, X16 }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v1[48];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_56_0(isUniquelyReferenced_nonNull_native, v4, v5, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  if (*(v6 + 16) >= *(v6 + 24) >> 1)
  {
    sub_220F37464();
    v6 = isUniquelyReferenced_nonNull_native;
  }

  OUTLINED_FUNCTION_26_1(isUniquelyReferenced_nonNull_native, v4, v5, v6);
  v1[48] = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  v1[49] = v8;
  *v8 = v9;
  v8[1] = sub_220E6D5E8;
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_61_0();

  return MEMORY[0x2822004E8](v10);
}

uint64_t sub_220E6D85C()
{
  OUTLINED_FUNCTION_32();
  (*(v0[46] + 8))(v0[47], v0[45]);

  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220E6D8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 32) = *a5;
  *(v5 + 48) = *(a5 + 16);
  *(v5 + 56) = *(a5 + 24);
  *(v5 + 72) = *(a5 + 40);
  v6 = swift_task_alloc();
  *(v5 + 88) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9ED20, &unk_220FCAA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
  *v6 = v5;
  v6[1] = sub_220E6D9F4;

  return MEMORY[0x282200430](v5 + 16);
}

uint64_t sub_220E6D9F4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v4 + 96) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_220E6DAF4()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *v2 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v4;
  *(v2 + 40) = v5;
  *(v2 + 56) = v3;
  OUTLINED_FUNCTION_32_0();
  return v6();
}

uint64_t sub_220E6DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[36] = a4;
  v5[37] = a5;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3C8, &qword_220FCA9F8);
  v5[42] = v6;
  v5[43] = *(v6 - 8);
  v5[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220E6DC94, 0, 0);
}

uint64_t sub_220E6DC94()
{
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  if (v2)
  {
    v49 = **(v0 + 272);
    v3 = sub_220FC2AE0();
    v4 = (v1 + 56);
    while (1)
    {
      v46 = v4;
      v47 = v2;
      v6 = *(v0 + 320);
      v5 = *(v0 + 328);
      v8 = *(v0 + 288);
      v7 = *(v0 + 296);
      v10 = *(v4 - 3);
      v9 = *(v4 - 2);
      v11 = *(v4 - 1);
      v12 = v4[1];
      *(v0 + 136) = *v4;
      *(v0 + 152) = v12;
      v13 = OUTLINED_FUNCTION_49();
      __swift_storeEnumTagSinglePayload(v13, v14, 1, v3);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v8;
      v15[5] = v10;
      v48 = v10;
      v15[6] = v9;
      v15[7] = v11;
      v15[8] = 0x4000000000000000;
      v15[9] = v7;
      sub_220E6ED2C(v5, v6);
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v6, 1, v3);
      v16 = v8;

      v17 = *(v0 + 320);
      if (v6 == 1)
      {
        sub_220E6ED9C(*(v0 + 320), &unk_27CF9EB90, &unk_220FC9CE0);
      }

      else
      {
        sub_220FC2AD0();
        (*(*(v3 - 8) + 8))(v17, v3);
      }

      v18 = v15[2];
      swift_unknownObjectRetain();

      if (v18)
      {
        swift_getObjectType();
        v19 = sub_220FC2A30();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      sub_220E6ED9C(*(v0 + 328), &unk_27CF9EB90, &unk_220FC9CE0);
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_220FCAA18;
      *(v22 + 24) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3D0, &qword_220FCAA28);
      if (v21 | v19)
      {
        *(v0 + 168) = 0;
        *(v0 + 176) = 0;
        *(v0 + 184) = v19;
        *(v0 + 192) = v21;
      }

      v23 = swift_task_create();
      v24 = OUTLINED_FUNCTION_49();
      __swift_storeEnumTagSinglePayload(v24, v25, 1, v3);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = v23;
      *(v26 + 40) = v48;
      *(v26 + 48) = v9;
      *(v26 + 56) = v11;
      v27 = *(v0 + 152);
      *(v26 + 64) = *(v0 + 136);
      *(v26 + 80) = v27;

      v28 = swift_taskGroup_addPending();
      v29 = *(v0 + 312);
      if ((v28 & 1) == 0)
      {
        break;
      }

      sub_220E6ED2C(v29, *(v0 + 304));
      v30 = OUTLINED_FUNCTION_49();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, v31, v3);
      v33 = *(v0 + 304);
      if (EnumTagSinglePayload == 1)
      {
        sub_220E6ED9C(*(v0 + 304), &unk_27CF9EB90, &unk_220FC9CE0);
      }

      else
      {
        sub_220FC2AD0();
        (*(*(v3 - 8) + 8))(v33, v3);
      }

      if (*(v26 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_50_0();
        v34 = sub_220FC2A30();
        v36 = v35;
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      if (v36 | v34)
      {
        v37 = v0 + 200;
        *(v0 + 200) = 0;
        *(v0 + 208) = 0;
        *(v0 + 216) = v34;
        *(v0 + 224) = v36;
      }

      else
      {
        v37 = 0;
      }

      v38 = *(v0 + 312);
      *(v0 + 232) = 1;
      *(v0 + 240) = v37;
      *(v0 + 248) = v49;
      swift_task_create();

      sub_220E6ED9C(v38, &unk_27CF9EB90, &unk_220FC9CE0);
      v4 = (v46 + 56);
      v2 = v47 - 1;
      if (v47 == 1)
      {
        goto LABEL_22;
      }
    }

    sub_220E6ED9C(v29, &unk_27CF9EB90, &unk_220FC9CE0);

    sub_220FC2A60();
    v43 = sub_220E6E95C(v42);
    OUTLINED_FUNCTION_20(v43);
    OUTLINED_FUNCTION_59_0();
    swift_willThrow();

    OUTLINED_FUNCTION_32_0();

    return v44();
  }

  else
  {
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
    sub_220FC2B70();
    *(v0 + 360) = MEMORY[0x277D84F90];
    swift_task_alloc();
    OUTLINED_FUNCTION_18();
    *(v0 + 368) = v39;
    *v39 = v40;
    v39[1] = sub_220E6E24C;
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822004E8](v41);
  }
}

uint64_t sub_220E6E24C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E6E348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  v12 = OUTLINED_FUNCTION_33_0();
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v11[45];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_56_0(isUniquelyReferenced_nonNull_native, v14, v15, v16);
      v16 = isUniquelyReferenced_nonNull_native;
    }

    if (*(v16 + 16) >= *(v16 + 24) >> 1)
    {
      sub_220F37464();
      v16 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_26_1(isUniquelyReferenced_nonNull_native, v14, v15, v16);
    v11[45] = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_18();
    v11[46] = v18;
    *v18 = v19;
    v18[1] = sub_220E6E24C;
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_40_0();

    return MEMORY[0x2822004E8](v20);
  }

  else
  {
    v22 = v11[45];
    v23 = v11[33];
    (*(v11[43] + 8))(v11[44], v11[42], v12);
    *v23 = v22;

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_40_0();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

void sub_220E6E4D0()
{
  OUTLINED_FUNCTION_25();
  (*(v0[43] + 8))(v0[44], v0[42]);

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_61_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_220E6E578(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 64) = a9;
  *(v9 + 56) = a2;
  *(v9 + 40) = a7;
  *(v9 + 48) = a8;
  *(v9 + 24) = a5;
  *(v9 + 32) = a6;
  *(v9 + 16) = a1;
  return MEMORY[0x2822009F8](sub_220E6E5A8, 0, 0);
}

uint64_t sub_220E6E5A8()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 16);
  *v1 = sub_220E8256C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 64), *(v0 + 56));
  v1[1] = v2;
  OUTLINED_FUNCTION_32_0();

  return v3();
}

uint64_t sub_220E6E614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a1;
  *(v5 + 40) = *a5;
  *(v5 + 56) = *(a5 + 16);
  v7 = *(a5 + 40);
  *(v5 + 64) = *(a5 + 24);
  *(v5 + 80) = v7;
  v8 = swift_task_alloc();
  *(v5 + 96) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3D0, &qword_220FCAA28);
  *v8 = v5;
  v8[1] = sub_220E6E6EC;

  return MEMORY[0x282200460](v5 + 16, a4, v9);
}

uint64_t sub_220E6E6EC()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220E6E7D0()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D7C0, &qword_220FCAA40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220FC8E30;
  *(v3 + 32) = v8;
  v5 = *(v0 + 64);
  v4 = *(v0 + 80);
  *v2 = v9;
  *(v2 + 16) = v1;
  *(v2 + 24) = v5;
  *(v2 + 40) = v4;
  *(v2 + 56) = v3;
  OUTLINED_FUNCTION_32_0();

  return v6();
}

uint64_t sub_220E6E888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220E6E8F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220E6E944(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_220E6E95C(__n128 a1)
{
  result = qword_2812C5DE8;
  if (!qword_2812C5DE8)
  {
    sub_220FC2A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5DE8);
  }

  return result;
}

uint64_t sub_220E6E9B4()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_43(v8);
  *v9 = v10;
  v9[1] = sub_220E5B490;

  return sub_220E6DB64(v4, v2, v5, v6, v7);
}

uint64_t sub_220E6EA70(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_220E6EB64;

  return v5(v2 + 16);
}

uint64_t sub_220E6EB64()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  OUTLINED_FUNCTION_7_7();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;

  *v5 = *(v2 + 16);
  OUTLINED_FUNCTION_32_0();

  return v8();
}

uint64_t sub_220E6EC5C()
{
  OUTLINED_FUNCTION_38_0();
  v1 = *(v0 + 5);
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v4 = v0[8];
  v5 = *(v0 + 9);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43(v6);
  *v7 = v8;
  v7[1] = sub_220E5B0F0;
  v9 = OUTLINED_FUNCTION_16_3();

  return sub_220E6E578(v9, v4, v10, v11, v12, v1, v2, v3, v5);
}

uint64_t sub_220E6ED2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E6ED9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_17();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220E6EDF0()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43(v4);
  *v5 = v6;
  v5[1] = sub_220E5B490;

  return sub_220E6EA70(v2, v3);
}

uint64_t sub_220E6EE9C()
{
  OUTLINED_FUNCTION_25();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v1[1] = sub_220E5B490;
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_61_0();

  return sub_220E6E614(v3, v4, v5, v6, v7);
}

uint64_t sub_220E6EF3C()
{
  OUTLINED_FUNCTION_53_0();
  v2 = v1;
  v13 = *(v0 + 16);
  v14 = v3;
  v12 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_43(v8);
  *v9 = v10;
  v9[1] = sub_220E5B490;

  return sub_220E6CF04(v2, v14, v13, v12, v4, v5, v6, v7);
}

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_220E6F074()
{
  OUTLINED_FUNCTION_25();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v1[1] = sub_220E5B0F0;
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_61_0();

  return sub_220E6D8EC(v3, v4, v5, v6, v7);
}

uint64_t sub_220E6F114(uint64_t a1)
{
  if (*(v1 + 65))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_220E6CD00(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v2 | *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
}

uint64_t sub_220E6F16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3E8, &qword_220FCAA80);
  OUTLINED_FUNCTION_8_0(v4);

  return sub_220E6CEB4(a1, a2);
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

uint64_t sub_220E6F208(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220E6F248(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_220E6F2A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220E6F2E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_220E6F360(uint64_t a1)
{
  sub_220E6F42C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MKMapRect(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WeatherMapOverlay(319);
      if (v3 <= 0x3F)
      {
        sub_220E5E490();
        if (v4 <= 0x3F)
        {
          type metadata accessor for SnapshotManager.Options(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_220E6F42C()
{
  result = qword_2812C5CF0;
  if (!qword_2812C5CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5CF0);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_17_2()
{
  v1 = v0[105].n128_u8[2];
  result = v0[116];
  v0[107] = result;
  v0[108].n128_u8[0] = v1;
  return result;
}

__n128 OUTLINED_FUNCTION_26_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v8 = a4 + (v6 << 6);
  result = *(v7 + 80);
  v10 = *(v7 + 112);
  v11 = *(v7 + 128);
  *(v8 + 48) = *(v7 + 96);
  *(v8 + 64) = v10;
  *(v8 + 32) = result;
  *(v8 + 80) = v11;
  *(v8 + 88) = v4;
  return result;
}

double OUTLINED_FUNCTION_27_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (*(v12 + 56) + 24 * v11);
  *v14 = v10;
  v14[1] = a9;
  v14[2] = v9;

  swift_unknownObjectRelease();
  return result;
}

double OUTLINED_FUNCTION_28_2(uint64_t a1)
{
  v1[253] = a1;
  v1[254] = *(v2 + 112);
  v1[255] = (v2 + 112) & 0xFFFFFFFFFFFFLL | 0x4F14000000000000;

  swift_unknownObjectRetain();
  return result;
}

double OUTLINED_FUNCTION_31_0()
{

  swift_unknownObjectRelease();
  return result;
}

__n128 OUTLINED_FUNCTION_33_0()
{
  v1 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v1;
  result = *(v0 + 48);
  *(v0 + 112) = result;
  *(v0 + 128) = *(v0 + 64);
  return result;
}

void OUTLINED_FUNCTION_34_0()
{
  v1[250] = v2;
  v1[249] = v0;
  v1[248] = v2;
}

double OUTLINED_FUNCTION_37_0()
{

  swift_unknownObjectRelease();
  return result;
}

__n128 OUTLINED_FUNCTION_39()
{
  v2 = v1[105].n128_u8[2];
  result = v1[116];
  *(v0 + 5) = result;
  v1[106].n128_u8[8] = v2;
  return result;
}

unint64_t OUTLINED_FUNCTION_42_1()
{
  *(v1 + 1736) = v3;

  return sub_220F193D4(v2, v0 & 0xFFFFFFFFFFLL);
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1)
{
  *(v1 + 2096) = a1;

  return sub_220FC2AA0();
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1)
{

  return sub_220FC3710();
}

void OUTLINED_FUNCTION_56_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_220F37464();
}

double OUTLINED_FUNCTION_57_0()
{

  swift_unknownObjectRetain();
  return result;
}

uint64_t OUTLINED_FUNCTION_58_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 2016) = *(v1 + a1 + 40);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_59_0()
{

  return sub_220FC2580();
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1, uint64_t a2)
{

  return sub_220FC2A30();
}

uint64_t sub_220E6F830(uint64_t a1, uint64_t a2)
{
  v4 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  Appearance = type metadata accessor for NextAppearance(0);
  v13 = OUTLINED_FUNCTION_8_0(Appearance);
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D400, &qword_220FCAC30);
  OUTLINED_FUNCTION_8_0(v18);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v30 - v21;
  v24 = *(v23 + 56);
  sub_220E70608(a1, &v30 - v21);
  sub_220E70608(a2, &v22[v24]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D408, &unk_220FCAC38);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 2, v25);
  if (!EnumTagSinglePayload)
  {
    sub_220E70608(v22, v17);
    if (!OUTLINED_FUNCTION_4_12())
    {
      (*(v6 + 32))(v11, &v22[v24], v4);
      v27 = sub_220FC0240();
      v29 = *(v6 + 8);
      v29(v11, v4);
      v29(v17, v4);
      sub_220E7066C(v22);
      return v27 & 1;
    }

    (*(v6 + 8))(v17, v4);
    goto LABEL_9;
  }

  if (EnumTagSinglePayload == 1)
  {
    if (OUTLINED_FUNCTION_4_12() != 1)
    {
      goto LABEL_9;
    }
  }

  else if (OUTLINED_FUNCTION_4_12() != 2)
  {
LABEL_9:
    sub_220E45374(v22, &qword_27CF9D400, &qword_220FCAC30);
    v27 = 0;
    return v27 & 1;
  }

  sub_220E7066C(v22);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_220E6FA84()
{

  sub_220FC0AD0();

  return v1;
}

uint64_t sub_220E6FACC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;

  sub_220FC0AD0();

  if (qword_27CF9C1B0 != -1)
  {
    OUTLINED_FUNCTION_1_17(&qword_27CF9C1B0);
  }

  __swift_project_value_buffer(v2, qword_27CFAF690);
  sub_220E706C8();
  if (sub_220FC26B0())
  {
    (*(v4 + 8))(v9, v2);
    v10 = 1;
  }

  else
  {
    (*(v4 + 32))(a1, v9, v2);
    v10 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v10, 1, v2);
}

uint64_t sub_220E6FC24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0, &qword_220FCA9D0);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - v5;
  v7 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v21 - v16;
  sub_220E70720(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    if (qword_27CF9C1B0 != -1)
    {
      OUTLINED_FUNCTION_1_17(&qword_27CF9C1B0);
    }

    v18 = __swift_project_value_buffer(v7, qword_27CFAF690);
    v19 = *(v9 + 16);
    v19(v17, v18, v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_220E45374(v6, &qword_27CF9EBC0, &qword_220FCA9D0);
    }
  }

  else
  {
    (*(v9 + 32))(v17, v6, v7);
    v19 = *(v9 + 16);
  }

  v19(v13, v17, v7);

  sub_220FC0AE0();

  sub_220E45374(a1, &qword_27CF9EBC0, &qword_220FCA9D0);
  return (*(v9 + 8))(v17, v7);
}

uint64_t sub_220E6FE70()
{

  return v0;
}

uint64_t sub_220E6FE98()
{
  sub_220E6FE70();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_220E6FEF0()
{
  if (qword_27CF9C1C0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3F0, &qword_220FCAC20);
  swift_allocObject();

  *(v0 + 16) = sub_220FC0AF0();
  if (qword_27CF9C1B8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3F8, &qword_220FCAC28);
  swift_allocObject();

  *(v0 + 24) = sub_220FC0AF0();
  return v0;
}

uint64_t (*sub_220E6FFFC(uint64_t *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = *(*v1 + 16);

  v3[5] = sub_220FC0AC0();
  return sub_220E70070;
}

void sub_220E70070(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_220E700E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37[1] = a1;
  v38 = a2;
  v4 = sub_220FC0470();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0, &qword_220FCA9D0);
  OUTLINED_FUNCTION_8_0(v12);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v13, v14);
  v16 = v37 - v15;
  v17 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v19 = v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = v37 - v26;
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v28 = sub_220E6FA84();
  swift_endAccess();
  if (v28 > 1)
  {
    v29 = 2;
  }

  else
  {
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_220E6FACC(v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_220E45374(v16, &qword_27CF9EBC0, &qword_220FCA9D0);
      swift_endAccess();
    }

    else
    {
      v30 = v16;
      v31 = *(v19 + 32);
      v31(v27, v30, v17);
      swift_endAccess();
      sub_220FC0450();
      sub_220FC0180();
      (*(v6 + 8))(v11, v4);
      v32 = sub_220FC01E0();
      v33 = *(v19 + 8);
      v33(v27, v17);
      if ((v32 & 1) == 0)
      {
        v34 = v38;
        v31(v38, v23, v17);
        v29 = 0;
        goto LABEL_9;
      }

      v33(v23, v17);
    }

    v29 = 1;
  }

  v34 = v38;
LABEL_9:
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D408, &unk_220FCAC38);
  return __swift_storeEnumTagSinglePayload(v34, v29, 2, v35);
}

void (*sub_220E70408(uint64_t a1))(_BYTE *, void)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0, &qword_220FCA9D0);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v17[-v7 - 8];
  swift_beginAccess();
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v9);
  result = (*(v10 + 24))(v17, v9, v10);
  if (__OFADD__(*v12, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v12;
    result(v17, 0);
    v13 = sub_220FC02B0();
    (*(*(v13 - 8) + 16))(v8, a1, v13);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
    v14 = *(v2 + 40);
    v15 = *(v2 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v14);
    (*(v15 + 40))(v8, v14, v15);
    return swift_endAccess();
  }

  return result;
}

uint64_t type metadata accessor for NextAppearance(uint64_t a1)
{
  result = qword_27CF9D410;
  if (!qword_27CF9D410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220E70608(uint64_t a1, uint64_t a2)
{
  Appearance = type metadata accessor for NextAppearance(0);
  (*(*(Appearance - 8) + 16))(a2, a1, Appearance);
  return a2;
}

uint64_t sub_220E7066C(uint64_t a1)
{
  Appearance = type metadata accessor for NextAppearance(0);
  (*(*(Appearance - 8) + 8))(a1, Appearance);
  return a1;
}

unint64_t sub_220E706C8()
{
  result = qword_27CF9D1E0;
  if (!qword_27CF9D1E0)
  {
    sub_220FC02B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D1E0);
  }

  return result;
}

uint64_t sub_220E70720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0, &qword_220FCA9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_220E707EC(uint64_t a1)
{
  sub_220E70844();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_220E70844()
{
  if (!qword_27CF9D420)
  {
    v0 = sub_220FC02B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF9D420);
    }
  }
}

uint64_t sub_220E7088C()
{
  v1 = sub_220FC1160();
  MEMORY[0x28223BE20](v1 - 8, v2);
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  *(v0 + 16) = sub_220FC1170();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return v0;
}

void *sub_220E70950@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D720, &qword_220FCAE70);
  result = sub_220FC1230();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D518, &qword_220FCAE58);
    result = sub_220FC1230();
    if (v7)
    {
      v5 = type metadata accessor for WeatherMapCameraFocusFactory();
      swift_allocObject();
      result = sub_220F83038(&v8, &v6);
      a2[3] = v5;
      a2[4] = &off_283486DE8;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_220E70A50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D460, &qword_220FCADA0);
  result = sub_220FC1230();
  if (!v76)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D428, &unk_220FCAD60);
  result = sub_220FC1230();
  if (!v75)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D540, &qword_220FCAE88);
  result = sub_220FC1230();
  if (!v73[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D498, &qword_220FCADD8);
  result = sub_220FC1230();
  if (!v71)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D720, &qword_220FCAE70);
  result = sub_220FC1230();
  if (!v70[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4E0, &qword_220FCAE20);
  result = sub_220FC1230();
  if (!v69[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D468, &qword_220FCADA8);
  result = sub_220FC1230();
  if (!v67)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = v68;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D478, &qword_220FCADB8);
  result = sub_220FC1230();
  if (!v66)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D480, &qword_220FCADC0);
  result = sub_220FC1230();
  if (!v64)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = v67;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D490, &qword_220FCADD0);
  result = sub_220FC1230();
  v46 = v61;
  if (!v61)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v45 = v62;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D470, &qword_220FCADB0);
  result = sub_220FC1200();
  v3 = v59;
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v41 = v72;
  v42 = v71;
  v43 = v77;
  v44 = v76;
  v40 = v60;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220FC1230();
  if (v58[13])
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
    v39[3] = v39;
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    v39[2] = v39;
    v10 = MEMORY[0x28223BE20](v9, v9);
    v12 = (v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
    v39[1] = v39;
    v15 = MEMORY[0x28223BE20](v14, v14);
    v17 = (v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v7;
    v20 = *v12;
    v21 = *v17;
    v56 = type metadata accessor for WeatherMapCameraFocusFactory();
    v57 = &off_283486DE8;
    v55[0] = v19;
    v53 = type metadata accessor for MapScrubberOverlayViewModelFactory();
    v54 = &off_28347D0C8;
    v52[0] = v20;
    v50 = type metadata accessor for ScrubberForecastHintManager();
    v51 = &off_28347DE18;
    v49[0] = v21;
    v22 = objc_allocWithZone(type metadata accessor for InteractiveViewController(0));
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    v24 = MEMORY[0x28223BE20](v23, v23);
    v26 = (v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    v29 = MEMORY[0x28223BE20](v28, v28);
    v31 = (v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31, v29);
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
    v34 = MEMORY[0x28223BE20](v33, v33);
    v36 = (v39 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36, v34);
    v38 = sub_220E75624(v44, v43, *v26, v73, v42, v41, v70, v69, v47, v48, *v31, *v36, v46, v45, v3, v40, v58, v22);
    __swift_destroy_boxed_opaque_existential_0(v49);
    __swift_destroy_boxed_opaque_existential_0(v52);
    __swift_destroy_boxed_opaque_existential_0(v55);
    __swift_destroy_boxed_opaque_existential_0(v63);
    __swift_destroy_boxed_opaque_existential_0(v65);
    __swift_destroy_boxed_opaque_existential_0(v74);
    return v38;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_220E71308@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D720, &qword_220FCAE70);
  result = sub_220FC1230();
  if (v7)
  {
    v4 = type metadata accessor for LocationPickerViewModelFactory(0);
    v5 = swift_allocObject();
    sub_220FC2000();
    result = sub_220E1E72C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_283482230;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220E713E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D558, &qword_220FCAEA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v22[-1] - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D458, &qword_220FCAD98);
  result = sub_220FC1230();
  if (!v28)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4E0, &qword_220FCAE20);
  result = sub_220FC1230();
  if (!v26[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D470, &qword_220FCADB0);
  result = sub_220FC1200();
  v7 = v24;
  if (!v24)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  sub_220FC1230();
  result = __swift_getEnumTagSinglePayload(v5, 1, v9);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D440, &qword_220FCAD80);
  result = sub_220FC1230();
  if (v23)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (&v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = (&v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_220E7636C(*v13, v26, v7, v8, v5, *v18);
    __swift_destroy_boxed_opaque_existential_0(v22);
    __swift_destroy_boxed_opaque_existential_0(v27);
    return v20;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_220E717A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D458, &qword_220FCAD98);
  result = sub_220FC1230();
  if (!v53)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D428, &unk_220FCAD60);
  result = sub_220FC1230();
  if (!v51)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D720, &qword_220FCAE70);
  result = sub_220FC1230();
  if (!v49[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D510, &qword_220FCAE50);
  result = sub_220FC1230();
  if (!v48)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4C8, &qword_220FCAE08);
  result = sub_220FC1230();
  if (!v45)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4D0, &qword_220FCAE10);
  result = sub_220FC1230();
  if (!v44)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D438, &unk_220FCB120);
  result = sub_220FC1230();
  if (!v42)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = v46;
  v37 = v45;
  v38 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D448, &qword_220FCAD88);
  result = sub_220FC1230();
  if (v40)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    v35[2] = v35;
    v6 = MEMORY[0x28223BE20](v5, v5);
    v8 = (v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
    v35[1] = v35;
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
    v35[0] = v35;
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
    v21 = MEMORY[0x28223BE20](v20, v20);
    (*(v22 + 16))(v21);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v24 = MEMORY[0x28223BE20](v23, v23);
    v26 = (v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    v29 = MEMORY[0x28223BE20](v28, v28);
    v31 = (v35 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31, v29);
    v33 = sub_220E766EC(*v8, *v13, v49, *v18, v37, v36, *v26, *v31);
    __swift_destroy_boxed_opaque_existential_0(v39);
    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v43);
    __swift_destroy_boxed_opaque_existential_0(v47);
    __swift_destroy_boxed_opaque_existential_0(v50);
    __swift_destroy_boxed_opaque_existential_0(v52);
    result = type metadata accessor for SnapshotManager();
    v34 = v38;
    v38[3] = result;
    v34[4] = &off_2834818A8;
    *v34 = v33;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_220E71E84()
{
  v0 = sub_220FC13A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D448, &qword_220FCAD88);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D450, &qword_220FCAD90);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D458, &qword_220FCAD98);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D460, &qword_220FCADA0);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D468, &qword_220FCADA8);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D470, &qword_220FCADB0);
  sub_220FC1310();

  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D478, &qword_220FCADB8);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D480, &qword_220FCADC0);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D488, &qword_220FCADC8);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D490, &qword_220FCADD0);
  sub_220FC1310();
  v5 = *(v1 + 104);
  v5(v4, *MEMORY[0x277D6CF00], v0);
  sub_220FC1120();

  v6 = *(v1 + 8);
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D498, &qword_220FCADD8);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4A0, &qword_220FCADE0);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4A8, &qword_220FCADE8);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4B0, &qword_220FCADF0);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4B8, &qword_220FCADF8);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4C0, &qword_220FCAE00);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4C8, &qword_220FCAE08);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4D0, &qword_220FCAE10);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4D8, &qword_220FCAE18);
  sub_220FC1310();

  sub_220FC1270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4E0, &qword_220FCAE20);
  sub_220FC1310();

  v7 = *MEMORY[0x277D6CF10];
  v5(v4, v7, v0);
  sub_220FC1120();

  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4E8, &qword_220FCAE28);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4F0, &qword_220FCAE30);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4F8, &qword_220FCAE38);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D500, &qword_220FCAE40);
  sub_220FC1310();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D508, &qword_220FCAE48);
  sub_220FC1300();
  v5(v4, v7, v0);
  sub_220FC1120();

  return (v6)(v4, v0);
}

void *sub_220E726DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4C0, &qword_220FCAE00);
  result = sub_220FC1230();
  if (!v98)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4D8, &qword_220FCAE18);
  result = sub_220FC1230();
  if (!v96)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D510, &qword_220FCAE50);
  result = sub_220FC1230();
  if (!v94)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D468, &qword_220FCADA8);
  result = sub_220FC1230();
  if (!v91)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D450, &qword_220FCAD90);
  result = sub_220FC1230();
  if (!v90)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v71 = v92;
  v72 = v91;
  v73 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4D0, &qword_220FCAE10);
  result = sub_220FC1230();
  if (v88)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v97, v98);
    v70 = v60;
    v6 = MEMORY[0x28223BE20](v5, v5);
    v8 = (v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
    v69 = v60;
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
    v68 = v60;
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = (v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
    v67 = v60;
    v21 = MEMORY[0x28223BE20](v20, v20);
    v23 = (v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
    v66 = v60;
    v26 = MEMORY[0x28223BE20](v25, v25);
    (*(v27 + 16))(v26);
    v28 = *v8;
    v29 = *v13;
    v30 = *v18;
    v31 = *v23;
    v32 = type metadata accessor for WeatherMapOverlayColorMapFactory();
    v86[3] = v32;
    v86[4] = &off_28347F010;
    v86[0] = v28;
    v64 = type metadata accessor for WeatherMapSnapshotTileFactory();
    v84 = v64;
    v85 = &off_2834824A0;
    v83[0] = v29;
    v63 = type metadata accessor for WeatherMapOverlayDataManager();
    v81 = v63;
    v82 = &off_283486A58;
    v80[0] = v30;
    v61 = type metadata accessor for WeatherMapSnapshotTileRendererMetal();
    v78 = v61;
    v79 = &off_28347D4F0;
    v77[0] = v31;
    v75 = &type metadata for OverlayRenderSettingsDefaultProvider;
    v76 = &off_2834869A0;
    v65 = type metadata accessor for SnapshotOverlayComposerMetal();
    v33 = swift_allocObject();
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v86, v32);
    v62 = v60;
    v35 = MEMORY[0x28223BE20](v34, v34);
    v37 = (v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37, v35);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
    v60[1] = v60;
    v40 = MEMORY[0x28223BE20](v39, v39);
    v42 = (v60 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42, v40);
    v44 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
    v45 = MEMORY[0x28223BE20](v44, v44);
    v47 = (v60 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47, v45);
    v49 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
    v50 = MEMORY[0x28223BE20](v49, v49);
    v52 = (v60 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52, v50);
    __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
    v54 = *v37;
    v55 = *v42;
    v56 = *v47;
    v57 = *v52;
    v33[5] = v32;
    v33[6] = &off_28347F010;
    v33[2] = v54;
    v33[15] = v64;
    v33[16] = &off_2834824A0;
    v33[12] = v55;
    v33[10] = v63;
    v33[11] = &off_283486A58;
    v33[7] = v56;
    v33[20] = v61;
    v33[21] = &off_28347D4F0;
    v33[17] = v57;
    v33[27] = &type metadata for OverlayRenderSettingsDefaultProvider;
    v33[28] = &off_2834869A0;
    v58 = v71;
    v33[22] = v72;
    v33[23] = v58;
    __swift_destroy_boxed_opaque_existential_0(v74);
    __swift_destroy_boxed_opaque_existential_0(v77);
    __swift_destroy_boxed_opaque_existential_0(v80);
    __swift_destroy_boxed_opaque_existential_0(v83);
    __swift_destroy_boxed_opaque_existential_0(v86);
    __swift_destroy_boxed_opaque_existential_0(v87);
    __swift_destroy_boxed_opaque_existential_0(v89);
    __swift_destroy_boxed_opaque_existential_0(v93);
    __swift_destroy_boxed_opaque_existential_0(v95);
    result = __swift_destroy_boxed_opaque_existential_0(v97);
    v59 = v73;
    v73[3] = v65;
    v59[4] = &off_28347DC40;
    *v59 = v33;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_220E73084@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4A0, &qword_220FCADE0);
  result = sub_220FC1230();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for WeatherMapAnnotationBackgroundProvider();
    v19[3] = v10;
    v19[4] = &off_28347D0B8;
    v19[0] = v9;
    v11 = type metadata accessor for WeatherMapAnnotationViewModelFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_28347D0B8;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_0(v19);
    result = __swift_destroy_boxed_opaque_existential_0(v20);
    a2[3] = v11;
    a2[4] = &off_283486898;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220E732A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4B0, &qword_220FCADF0);
  result = sub_220FC1230();
  if (!v34)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D458, &qword_220FCAD98);
  result = sub_220FC1230();
  if (!v32)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4A0, &qword_220FCADE0);
  result = sub_220FC1230();
  if (!v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4A8, &qword_220FCADE8);
  result = sub_220FC1230();
  if (v28)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v6 = MEMORY[0x28223BE20](v5, v5);
    v8 = (&v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (&v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = (&v27[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    v21 = MEMORY[0x28223BE20](v20, v20);
    v23 = (&v27[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = sub_220E771D8(*v8, *v13, *v18, *v23);
    __swift_destroy_boxed_opaque_existential_0(v27);
    __swift_destroy_boxed_opaque_existential_0(v29);
    __swift_destroy_boxed_opaque_existential_0(v31);
    result = __swift_destroy_boxed_opaque_existential_0(v33);
    *a2 = v25;
    a2[1] = &off_283484968;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_220E736D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D518, &qword_220FCAE58);
  result = sub_220FC1230();
  if (!v64[3])
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4C0, &qword_220FCAE00);
  result = sub_220FC1230();
  if (!v63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D550, &unk_220FCAE90);
  result = sub_220FC1230();
  if (!v61)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D510, &qword_220FCAE50);
  result = sub_220FC1230();
  if (!v59)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4F0, &qword_220FCAE30);
  result = sub_220FC1230();
  if (!v57)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4F8, &qword_220FCAE38);
  result = sub_220FC1230();
  if (!v55)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4C8, &qword_220FCAE08);
  result = sub_220FC1230();
  if (!v52)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4B8, &qword_220FCADF8);
  result = sub_220FC1230();
  if (!v51)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D490, &qword_220FCADD0);
  result = sub_220FC1230();
  if (!v48)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v42 = v48;
  v43 = v53;
  v44 = v52;
  v45 = a2;
  v41 = v49;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4D0, &qword_220FCAE10);
  result = sub_220FC1230();
  if (v47)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    v40[5] = v40;
    v6 = MEMORY[0x28223BE20](v5, v5);
    v8 = (v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
    v40[4] = v40;
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v40[3] = v40;
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = (v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    v40[2] = v40;
    v21 = MEMORY[0x28223BE20](v20, v20);
    v23 = (v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v40[1] = v40;
    v26 = MEMORY[0x28223BE20](v25, v25);
    v28 = (v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28, v26);
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
    v31 = MEMORY[0x28223BE20](v30, v30);
    v33 = (v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33, v31);
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v36 = MEMORY[0x28223BE20](v35, v35);
    (*(v37 + 16))(v36);
    v38 = sub_220E77554(v64, *v8, *v13, *v18, *v23, *v28, v44, v43, *v33, v42, v41);
    __swift_destroy_boxed_opaque_existential_0(v46);
    __swift_destroy_boxed_opaque_existential_0(v50);
    __swift_destroy_boxed_opaque_existential_0(v54);
    __swift_destroy_boxed_opaque_existential_0(v56);
    __swift_destroy_boxed_opaque_existential_0(v58);
    __swift_destroy_boxed_opaque_existential_0(v60);
    result = __swift_destroy_boxed_opaque_existential_0(v62);
    v39 = v45;
    *v45 = v38;
    v39[1] = &off_283486110;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *sub_220E73F10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D540, &qword_220FCAE88);
  result = sub_220FC1230();
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D720, &qword_220FCAE70);
  result = sub_220FC1230();
  if (!v17)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D518, &qword_220FCAE58);
  result = sub_220FC1230();
  if (v14)
  {
    type metadata accessor for WeatherMapOverlaySonifier(0);
    swift_allocObject();
    sub_220F462A0(v18, v16, v13, v5, v6, v7, v8, v9, v12, v13[0], v13[1], v13[2], v14, v15, v16[0], v16[1], v16[2], v17);
    v11 = v10;
    result = sub_220E785D8(&qword_2812C9640, type metadata accessor for WeatherMapOverlaySonifier, &unk_220FD598C);
    *a2 = v11;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_220E74084@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D540, &qword_220FCAE88);
  result = sub_220FC1230();
  if (!v9[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D720, &qword_220FCAE70);
  result = sub_220FC1230();
  if (!v8[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D518, &qword_220FCAE58);
  result = sub_220FC1230();
  if (v7[3])
  {
    type metadata accessor for PixelSonifier(0);
    swift_allocObject();
    sub_220EC2DB0(v9, v8, v7);
    v6 = v5;
    result = sub_220E785D8(&qword_27CF9D548, type metadata accessor for PixelSonifier, &unk_220FD06A4);
    *a2 = v6;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_220E74218@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D488, &qword_220FCADC8);
  result = sub_220FC1230();
  if (v25)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for UserDefaultsScrubberForecastHintPersistence();
    v23[3] = v10;
    v23[4] = &off_28347DE30;
    v23[0] = v9;
    v11 = type metadata accessor for ScrubberForecastHintManager();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v23, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v21 = v10;
    v22 = &off_28347DE30;
    *&v20 = v18;
    sub_220E1E72C(&v20, v12 + 16);
    __swift_destroy_boxed_opaque_existential_0(v23);
    result = __swift_destroy_boxed_opaque_existential_0(v24);
    a2[3] = v11;
    a2[4] = &off_28347DE18;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220E74480@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WeatherMapOverlayProgressReporter();
  swift_allocObject();
  result = sub_220E4411C();
  *a1 = result;
  a1[1] = &off_28347D158;
  return result;
}

id sub_220E744C8@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(type metadata accessor for ContextMenuInteractionDelegate(0)) init];
  v3 = objc_allocWithZone(type metadata accessor for ContextMenuInteraction());
  result = sub_220E5B95C(v2);
  *a1 = result;
  a1[1] = &off_28347D5A8;
  return result;
}

void *sub_220E7452C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D538, &qword_220FCAE80);
  result = sub_220FC1230();
  if (v7)
  {
    v4 = type metadata accessor for WeatherMapAnnotationBackgroundProvider();
    v5 = swift_allocObject();
    result = sub_220E1E72C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_28347D0B8;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220E745D8@<X0>(uint64_t *a1@<X8>)
{
  updated = type metadata accessor for AnnotationViewUpdateCoordinator();
  result = swift_allocObject();
  v4 = MEMORY[0x277D84F98];
  *(result + 16) = MEMORY[0x277D84FA0];
  *(result + 24) = v4;
  a1[3] = updated;
  a1[4] = &off_2834828D8;
  *a1 = result;
  return result;
}

uint64_t sub_220E746AC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = a1(0);
  swift_allocObject();
  result = a3();
  a5[3] = v8;
  a5[4] = a4;
  *a5 = result;
  return result;
}

void *sub_220E74718@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D510, &qword_220FCAE50);
  result = sub_220FC1230();
  if (!v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D720, &qword_220FCAE70);
  result = sub_220FC1230();
  if (!v21)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D530, &qword_220FCAE78);
  result = sub_220FC1230();
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D518, &qword_220FCAE58);
  result = sub_220FC1230();
  if (v17)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v6 = MEMORY[0x28223BE20](v5, v5);
    v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_220E7807C(*v8, &v20, *v13, &v16);
    __swift_destroy_boxed_opaque_existential_0(v18);
    result = __swift_destroy_boxed_opaque_existential_0(v22);
    *a2 = v15;
    a2[1] = &off_2834883A8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_220E749FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WeatherMapSnapshotTileFactory();
  result = swift_allocObject();
  *(result + 16) = 0x4070000000000000;
  a1[3] = v2;
  a1[4] = &off_2834824A0;
  *a1 = result;
  return result;
}

void *sub_220E74A4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_220FC03E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  sub_220FC0380();
  v10 = sub_220FC0370();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  [v9 setUnitOptions_];
  sub_220E1966C(0, &qword_2812C5CC0, 0x277CCABB8);
  v11 = sub_220FC2F10();
  [v9 setNumberFormatter_];

  type metadata accessor for MapLocationAccessibilityModelFactory();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220FC06C0();
  result = sub_220FC11F0();
  if (result)
  {
    v14 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D518, &qword_220FCAE58);
    result = sub_220FC1230();
    if (v18[3])
    {
      v15 = type metadata accessor for MapLocationAccessibilityModelManager();
      v16 = swift_allocObject();
      result = sub_220E78268(v12, v14, v18, 0, v16);
      a2[3] = v15;
      a2[4] = &protocol witness table for MapLocationAccessibilityModelManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220E74CA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D508, &qword_220FCAE48);
  result = sub_220FC1220();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4C0, &qword_220FCAE00);
    result = sub_220FC1230();
    if (v23)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v7 = MEMORY[0x28223BE20](v6, v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for WeatherMapOverlayColorMapFactory();
      v21[3] = v12;
      v21[4] = &off_28347F010;
      v21[0] = v11;
      v13 = type metadata accessor for OverlayRenderContextFactory();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
      v16 = MEMORY[0x28223BE20](v15, v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[6] = v12;
      v14[7] = &off_28347F010;
      v14[2] = v5;
      v14[3] = v20;
      __swift_destroy_boxed_opaque_existential_0(v21);
      result = __swift_destroy_boxed_opaque_existential_0(v22);
      a2[3] = v13;
      a2[4] = &off_28347D378;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220E74F3C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_220E74F8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D4E8, &qword_220FCAE28);
  result = sub_220FC1230();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D500, &qword_220FCAE40);
    result = sub_220FC1230();
    if (v39)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v6 = MEMORY[0x28223BE20](v5, v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v11 = MEMORY[0x28223BE20](v10, v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for OverlayRenderContextFactory();
      v37[3] = v17;
      v37[4] = &off_28347D378;
      v37[0] = v15;
      v18 = type metadata accessor for OverlayTileLoaderFactory();
      v35 = v18;
      v36 = &off_2834859D8;
      v34[0] = v16;
      v19 = type metadata accessor for OverlayRendererFactory();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
      v22 = MEMORY[0x28223BE20](v21, v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27 = MEMORY[0x28223BE20](v26, v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[5] = v17;
      v20[6] = &off_28347D378;
      v20[2] = v31;
      v20[10] = v18;
      v20[11] = &off_2834859D8;
      v20[7] = v32;
      __swift_destroy_boxed_opaque_existential_0(v34);
      __swift_destroy_boxed_opaque_existential_0(v37);
      __swift_destroy_boxed_opaque_existential_0(v38);
      result = __swift_destroy_boxed_opaque_existential_0(v40);
      a2[3] = v19;
      a2[4] = &off_283486BC8;
      *a2 = v20;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220E753B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D510, &qword_220FCAE50);
  result = sub_220FC1230();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for WeatherMapOverlayDataManager();
    v19[3] = v10;
    v19[4] = &off_283486A58;
    v19[0] = v9;
    v11 = type metadata accessor for OverlayTileLoaderFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_283486A58;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_0(v19);
    result = __swift_destroy_boxed_opaque_existential_0(v20);
    a2[3] = v11;
    a2[4] = &off_2834859D8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220E755D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D508, &qword_220FCAE48);
  swift_allocObject();
  return sub_220E7088C();
}

char *sub_220E75624(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _BYTE *a18)
{
  v117 = a8;
  v118 = a7;
  v104 = a2;
  v105 = a6;
  v116 = a5;
  v119 = a4;
  v109 = a16;
  v108 = a15;
  v115 = a13;
  v112 = a14;
  v111 = a10;
  v107 = a17;
  ObjectType = swift_getObjectType();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0, &qword_220FCA9D0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v113 = &v102 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80, &unk_220FC9670);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v114 = &v102 - v25;
  v133[3] = type metadata accessor for WeatherMapCameraFocusFactory();
  v133[4] = &off_283486DE8;
  v133[0] = a3;
  v26 = type metadata accessor for MapScrubberOverlayViewModelFactory();
  v132[3] = v26;
  v132[4] = &off_28347D0C8;
  v132[0] = a11;
  v106 = type metadata accessor for ScrubberForecastHintManager();
  v131[3] = v106;
  v131[4] = &off_28347DE18;
  v131[0] = a12;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsVisiblity] = 0;
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isDismissing] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView] = 0;
  v27 = &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_preferredMapSize];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = 1;
  v28 = &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_visibleMapRect];
  v29 = *(MEMORY[0x277CD4BB8] + 16);
  *v28 = *MEMORY[0x277CD4BB8];
  v28[1] = v29;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backgroundEffectView] = 0;
  v30 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_activeOverlay;
  v31 = type metadata accessor for WeatherMapOverlay(0);
  __swift_storeEnumTagSinglePayload(&a18[v30], 1, 1, v31);
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_annotatedLocations] = MEMORY[0x277D84F90];
  v32 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocation;
  v33 = sub_220FC1070();
  __swift_storeEnumTagSinglePayload(&a18[v32], 1, 1, v33);
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_doNotForwardSelectedAnnotationToDelegate] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_debugLabel] = 0;
  swift_unknownObjectWeakInit();
  v34 = &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_lastHoverLocation];
  *v34 = 0;
  *(v34 + 1) = 0;
  v34[16] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsView] = 0;
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsAdded] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberObserver] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberOverlayViewController] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_verticalSpacingAttributionToScrubber] = 0x4010000000000000;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerBlur] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerUltraThin] = 0;
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___showDebugConsole] = 2;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___backgroundEffectManagerVibrancyFill] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_contentStatusBannerViewController] = 0;
  v35 = &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_pendingBannerReplacementBlock];
  *v35 = 0;
  v35[1] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerBlur] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_backdropLayerUltraThin] = 0;
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeBackgrounded] = 2;
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeSonification] = 2;
  v36 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_wasPlayingBeforeSonificationDate;
  v37 = sub_220FC02B0();
  v102 = v37;
  __swift_storeEnumTagSinglePayload(&a18[v36], 1, 1, v37);
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayIsLoading] = 0;
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayLoadingWasInterruptedByUserInteraction] = 0;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_refreshTimer] = 0;
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsInitiallySized] = 0;
  v38 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_accessibilityFrameDateFormatter;
  *&a18[v38] = sub_220EF8BEC();
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_maxBottomOffset] = 0x4034000000000000;
  v39 = &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler];
  *v39 = 0;
  v39[1] = 0;
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isMapFullscreen] = 2;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_animationDelegates] = MEMORY[0x277D84F90];
  v40 = &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_annotationManager];
  v41 = v104;
  *v40 = a1;
  v40[1] = v41;
  sub_220E1E2A8(v133, &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_cameraFocusFactory]);
  sub_220E1E2A8(v119, &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_geocodeManager]);
  v42 = &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_interaction];
  v43 = v105;
  *v42 = v116;
  v42[1] = v43;
  sub_220E1E2A8(v118, &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_locationMetadataManager]);
  sub_220E1E2A8(v117, &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_mapLocationAccessibilityModelManager]);
  v44 = &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayManager];
  v46 = v111;
  v45 = v112;
  *v44 = a9;
  v44[1] = v46;
  v47 = &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayProgressReporter];
  v48 = v114;
  *v47 = v115;
  v47[1] = v45;
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isUserInteractionEnabled] = *a17;
  LODWORD(v105) = *(a17 + 1);
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind] = v105;
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_selectedLocationZoomLevel] = *(a17 + 8);
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v31);
  __swift_storeEnumTagSinglePayload(v113, 1, 1, v37);
  sub_220E1E2A8(v132, v130);
  sub_220E1E2A8(v131, v129);
  v112 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v111 = a9;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LODWORD(v104) = UIAccessibilityIsVoiceOverRunning();
  v103 = sub_220F22204();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v130, v130[3]);
  v50 = MEMORY[0x28223BE20](v49, v49);
  v52 = (&v102 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52, v50);
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v129, v129[3]);
  v55 = MEMORY[0x28223BE20](v54, v54);
  v57 = (&v102 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57, v55);
  v59 = *v52;
  v60 = *v57;
  v128[3] = v26;
  v128[4] = &off_28347D0C8;
  v128[0] = v59;
  v61 = v106;
  v126 = v106;
  v127 = &off_28347DE18;
  v125[0] = v60;
  type metadata accessor for ScrubberStore(0);
  v62 = swift_allocObject();
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v128, v26);
  v64 = MEMORY[0x28223BE20](v63, v63);
  v66 = (&v102 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66, v64);
  v68 = __swift_mutable_project_boxed_opaque_existential_1(v125, v126);
  v69 = MEMORY[0x28223BE20](v68, v68);
  v71 = (&v102 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = v108;
  (*(v72 + 16))(v71, v69);
  v74 = *v66;
  v75 = *v71;
  v123 = v26;
  v124 = &off_28347D0C8;
  v122[0] = v74;
  v121[3] = v61;
  v121[4] = &off_28347DE18;
  v121[0] = v75;
  v76 = OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModelSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D560, qword_220FCAEA8);
  swift_allocObject();
  *(v62 + v76) = sub_220FC1990();
  sub_220E1E2A8(v122, v62 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_overlayViewModelFactory);
  sub_220E1E2A8(v121, v62 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_scrubberForecastHintManager);
  v77 = v62 + OBJC_IVAR____TtC11WeatherMaps13ScrubberStore_viewModel;
  v78 = type metadata accessor for ScrubberStore.ViewModel(0);
  v79 = v114;
  sub_220E4D214(v114, v77 + v78[7], &unk_27CF9EB80, &unk_220FC9670);
  v80 = v113;
  sub_220E4D214(v113, v77 + v78[8], &qword_27CF9EBC0, &qword_220FCA9D0);
  __swift_project_boxed_opaque_existential_1(v122, v123);
  sub_220E41EDC(v79, 0, 1, (v77 + v78[18]));
  v81 = v102;
  __swift_storeEnumTagSinglePayload(v77 + v78[9], 1, 1, v102);
  __swift_storeEnumTagSinglePayload(v77 + v78[14], 1, 1, v81);
  v82 = *MEMORY[0x277D76DA8];
  v83 = *(MEMORY[0x277D76DA8] + 8);
  *v77 = v105;
  *(v77 + 1) = 0;
  *(v77 + v78[10]) = 0;
  *(v77 + v78[11]) = 0;
  *(v77 + v78[12]) = 0;
  *(v77 + v78[13]) = 0;
  *(v77 + v78[15]) = 0;
  *(v77 + v78[16]) = 2;
  v84 = v77 + v78[17];
  *v84 = 0;
  *(v84 + 8) = 1;
  v85 = (v77 + v78[19]);
  *v85 = v82;
  v85[1] = v83;
  v86 = (v77 + v78[20]);
  *v86 = v82;
  v86[1] = v83;
  *(v77 + v78[21]) = v104;
  *(v77 + v78[22]) = v103;
  swift_beginAccess();
  LOBYTE(v81) = sub_220EE3BB8();
  sub_220E45374(v80, &qword_27CF9EBC0, &qword_220FCA9D0);
  sub_220E45374(v79, &unk_27CF9EB80, &unk_220FC9670);
  __swift_destroy_boxed_opaque_existential_0(v121);
  swift_beginAccess();
  *(v77 + 1) = v81 & 1;
  v87 = v109;
  __swift_destroy_boxed_opaque_existential_0(v122);
  __swift_destroy_boxed_opaque_existential_0(v125);
  __swift_destroy_boxed_opaque_existential_0(v128);
  __swift_destroy_boxed_opaque_existential_0(v129);
  __swift_destroy_boxed_opaque_existential_0(v130);
  *&a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore] = v62;
  v88 = ObjectType;
  v89 = &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlaySonifier];
  *v89 = v73;
  v89[1] = v87;
  v90 = v107;
  sub_220E7857C(v107, &a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_configuration]);
  swift_unknownObjectRetain();
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_supportsControlEffects] = DeviceSupportsMapsControlEffects();
  v91 = v90;
  a18[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_appIsInForeground] = *(v90 + 112);
  v120.receiver = a18;
  v120.super_class = v88;
  v92 = objc_msgSendSuper2(&v120, sel_initWithNibName_bundle_, 0, 0);
  v93 = qword_27CF9C118;
  v94 = v92;
  if (v93 != -1)
  {
    swift_once();
  }

  sub_220E785D8(&unk_27CF9D568, type metadata accessor for InteractiveViewController, &unk_220FD2844);
  sub_220FC0A00();
  v95 = v130[0] * 60.0;
  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InteractiveRefreshTimer(0);
  swift_allocObject();
  *&v94[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_refreshTimer] = sub_220EEC92C(sub_220E78620, v96, v95);

  v97 = [objc_opt_self() defaultCenter];
  [v97 addObserver:v94 selector:sel_handleVoiceOverStatusDidChangeWithNotification_ name:*MEMORY[0x277D765F0] object:0];

  v98 = swift_getObjectType();
  v99 = *(v87 + 24);
  v100 = v94;
  v99(v94, &off_283483148, v98, v87);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_220E78628(v91);
  __swift_destroy_boxed_opaque_existential_0(v117);
  __swift_destroy_boxed_opaque_existential_0(v118);
  __swift_destroy_boxed_opaque_existential_0(v119);
  __swift_destroy_boxed_opaque_existential_0(v131);
  __swift_destroy_boxed_opaque_existential_0(v132);
  __swift_destroy_boxed_opaque_existential_0(v133);
  return v100;
}

id sub_220E7636C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v37 = a5;
  v36 = a4;
  v35 = a2;
  v9 = *a6;
  v10 = type metadata accessor for WeatherMapAnnotationViewModelFactory();
  v44[3] = v10;
  v44[4] = &off_283486898;
  v44[0] = a1;
  v42 = v9;
  v43 = &off_2834818A8;
  v41[0] = a6;
  v11 = type metadata accessor for SnapshotViewController(0);
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v44, v10);
  v14 = MEMORY[0x28223BE20](v13, v13);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v19 = MEMORY[0x28223BE20](v18, v18);
  v21 = (&v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v16;
  v24 = *v21;
  v40[3] = v10;
  v40[4] = &off_283486898;
  v39[4] = &off_2834818A8;
  v40[0] = v23;
  v39[3] = v9;
  v39[0] = v24;
  v25 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotJob;
  v26 = type metadata accessor for SnapshotViewController.SnapshotJob(0);
  __swift_storeEnumTagSinglePayload(&v12[v25], 1, 1, v26);
  *&v12[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_observers] = MEMORY[0x277D84F90];
  *&v12[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView] = 0;
  v27 = &v12[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_onMapEventHandler];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v12[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_sizingBehavior];
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  sub_220E1E2A8(v40, &v12[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_annotationViewModelFactory]);
  v29 = v35;
  sub_220E1E2A8(v35, &v12[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_mapLocationAccessibilityModelManager]);
  v30 = &v12[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_overlaySonifier];
  v31 = v36;
  *v30 = a3;
  v30[1] = v31;
  v32 = v37;
  sub_220E784BC(v37, &v12[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotConfiguration]);
  sub_220E1E2A8(v39, &v12[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotManager]);
  swift_unknownObjectRetain();
  v12[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_isVoiceOverRunning] = UIAccessibilityIsVoiceOverRunning();
  v38.receiver = v12;
  v38.super_class = v11;
  v33 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();
  sub_220E78520(v32);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v39);
  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v44);
  return v33;
}

uint64_t sub_220E766EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v74 = a5;
  v75 = a6;
  v73 = a3;
  v63 = *a8;
  v13 = v63;
  v14 = sub_220FC1160();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v72 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220FC2FB0();
  v70 = *(v17 - 8);
  v71 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v69 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_220FC2F80();
  MEMORY[0x28223BE20](v68, v20);
  v67 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_220FC2390();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v66 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for WeatherMapAnnotationViewModelFactory();
  v98[3] = v25;
  v98[4] = &off_283486898;
  v98[0] = a1;
  v65 = type metadata accessor for WeatherMapCameraFocusFactory();
  v96 = v65;
  v97 = &off_283486DE8;
  v95[0] = a2;
  v64 = type metadata accessor for WeatherMapOverlayDataManager();
  v93 = v64;
  v94 = &off_283486A58;
  v92[0] = a4;
  v90 = &type metadata for OverlayRenderSettingsDefaultProvider;
  v91 = &off_2834869A0;
  v26 = type metadata accessor for WeatherMapSnapshotCache();
  v87 = v26;
  v88 = &off_283484048;
  v86[0] = a7;
  v84 = v13;
  v85 = &off_28347DC40;
  v83[0] = a8;
  type metadata accessor for SnapshotManager();
  v27 = swift_allocObject();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v98, v25);
  v29 = MEMORY[0x28223BE20](v28, v28);
  v31 = (&v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31, v29);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
  v34 = MEMORY[0x28223BE20](v33, v33);
  v36 = (&v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36, v34);
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
  v39 = MEMORY[0x28223BE20](v38, v38);
  v41 = (&v62 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41, v39);
  __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
  v44 = MEMORY[0x28223BE20](v43, v43);
  v46 = (&v62 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46, v44);
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v49 = MEMORY[0x28223BE20](v48, v48);
  v51 = (&v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51, v49);
  v53 = *v31;
  v54 = *v36;
  v55 = *v41;
  v56 = *v46;
  v57 = *v51;
  v82[3] = v25;
  v82[4] = &off_283486898;
  v82[0] = v53;
  v81[4] = &off_283486DE8;
  v81[3] = v65;
  v81[0] = v54;
  v80[3] = v64;
  v80[4] = &off_283486A58;
  v80[0] = v55;
  v79[3] = &type metadata for OverlayRenderSettingsDefaultProvider;
  v79[4] = &off_2834869A0;
  v78[3] = v26;
  v78[4] = &off_283484048;
  v78[0] = v56;
  v77[3] = v63;
  v77[4] = &off_28347DC40;
  v77[0] = v57;
  sub_220E1966C(0, &qword_2812C5CA0, 0x277D85C78);
  sub_220FC2350();
  v76 = MEMORY[0x277D84F90];
  sub_220E785D8(&qword_2812C5CA8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF28, &unk_220FCAD00);
  sub_220E1A244(&qword_2812C5D38, &qword_27CF9CF28, &unk_220FCAD00);
  sub_220FC3430();
  (*(v70 + 104))(v69, *MEMORY[0x277D85260], v71);
  *(v27 + 16) = sub_220FC2FF0();
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  *(v27 + 24) = sub_220FC1170();
  type metadata accessor for SnapshotManager.Options.Key(0);
  sub_220E785D8(qword_2812C7048, type metadata accessor for SnapshotManager.Options.Key, &unk_220FCFABC);
  *(v27 + 32) = sub_220FC2600();
  *(v27 + 40) = 2;
  sub_220E1E2A8(v82, v27 + 48);
  sub_220E1E2A8(v81, v27 + 88);
  v58 = v73;
  sub_220E1E2A8(v73, v27 + 128);
  sub_220E1E2A8(v80, v27 + 168);
  v59 = v75;
  *(v27 + 208) = v74;
  *(v27 + 216) = v59;
  sub_220E1E2A8(v79, v27 + 224);
  sub_220E1E2A8(v78, v27 + 264);
  sub_220E1E2A8(v77, v27 + 304);
  __swift_project_boxed_opaque_existential_1((v27 + 128), *(v27 + 152));
  sub_220E785D8(qword_2812C6EF0, type metadata accessor for SnapshotManager, &unk_220FCFAFC);
  swift_unknownObjectRetain();
  sub_220FC0F50();
  v60 = [objc_opt_self() defaultCenter];
  [v60 addObserver:v27 selector:sel_voiceOverStatusDidChangeWithNotification_ name:*MEMORY[0x277D765F0] object:0];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v58);
  __swift_destroy_boxed_opaque_existential_0(v77);
  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v79);
  __swift_destroy_boxed_opaque_existential_0(v80);
  __swift_destroy_boxed_opaque_existential_0(v81);
  __swift_destroy_boxed_opaque_existential_0(v82);
  __swift_destroy_boxed_opaque_existential_0(v83);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v89);
  __swift_destroy_boxed_opaque_existential_0(v92);
  __swift_destroy_boxed_opaque_existential_0(v95);
  __swift_destroy_boxed_opaque_existential_0(v98);
  return v27;
}

uint64_t sub_220E77048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = type metadata accessor for WeatherMapAnnotationContentViewModelFactory();
  v25 = &off_283482240;
  *&v23 = a1;
  v21 = type metadata accessor for WeatherMapAnnotationViewModelFactory();
  v22 = &off_283486898;
  *&v20 = a2;
  v18 = type metadata accessor for WeatherMapAnnotationBackgroundProvider();
  v19 = &off_28347D0B8;
  *&v17 = a3;
  updated = type metadata accessor for AnnotationViewUpdateCoordinator();
  v16 = &off_2834828D8;
  *&v14 = a4;
  *(a5 + 176) = 1;
  *(a5 + 184) = 0;
  *(a5 + 200) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 216) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for WeatherMapAnnotation(0);
  v10 = MEMORY[0x277D84F90];
  *(a5 + 224) = sub_220FC2600();
  *(a5 + 232) = v10;
  *(a5 + 240) = 0;
  *(a5 + 248) = 0;
  *(a5 + 256) = 4;
  v11 = OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_overlay;
  v12 = type metadata accessor for WeatherMapOverlay(0);
  __swift_storeEnumTagSinglePayload(a5 + v11, 1, 1, v12);
  *(a5 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_userInterfaceStyle) = 1;
  *(a5 + OBJC_IVAR____TtC11WeatherMaps27WeatherMapAnnotationManager_zoomLevel) = 0x4020000000000000;
  sub_220E1E72C(&v23, a5 + 16);
  sub_220E1E72C(&v20, a5 + 56);
  sub_220E1E72C(&v17, a5 + 96);
  sub_220E1E72C(&v14, a5 + 136);
  return a5;
}

uint64_t sub_220E771D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v42 = type metadata accessor for WeatherMapAnnotationContentViewModelFactory();
  v43 = &off_283482240;
  v41[0] = a1;
  v39 = type metadata accessor for WeatherMapAnnotationViewModelFactory();
  v40 = &off_283486898;
  v38[0] = a2;
  v36 = type metadata accessor for WeatherMapAnnotationBackgroundProvider();
  v37 = &off_28347D0B8;
  v35[0] = a3;
  v33 = v8;
  v34 = &off_2834828D8;
  v32[0] = a4;
  type metadata accessor for WeatherMapAnnotationManager(0);
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v11 = MEMORY[0x28223BE20](v10, v10);
  v13 = (v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v16 = MEMORY[0x28223BE20](v15, v15);
  v18 = (v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v21 = MEMORY[0x28223BE20](v20, v20);
  v23 = (v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  v26 = MEMORY[0x28223BE20](v25, v25);
  v28 = (v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = sub_220E77048(*v13, *v18, *v23, *v28, v9);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v30;
}

uint64_t sub_220E77554(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v84 = a8;
  v82 = a7;
  v80 = a1;
  v83 = a11;
  v81 = a10;
  v16 = sub_220FC2FB0();
  v78 = *(v16 - 8);
  v79 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v77 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_220FC2F80();
  MEMORY[0x28223BE20](v76, v19);
  v75 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_220FC2390();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v74 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for WeatherMapOverlayColorMapFactory();
  v111[3] = v24;
  v111[4] = &off_28347F010;
  v111[0] = a2;
  v73 = type metadata accessor for WeatherMapOverlayCoverageManager();
  v109 = v73;
  v110 = &off_283482E60;
  v108[0] = a3;
  v72 = type metadata accessor for WeatherMapOverlayDataManager();
  v106 = v72;
  v107 = &off_283486A58;
  v105[0] = a4;
  v71 = type metadata accessor for OverlayFactory();
  v103 = v71;
  v104 = &off_283482400;
  v102[0] = a5;
  v70 = type metadata accessor for OverlayRendererFactory();
  v101 = &off_283486BC8;
  v100 = v70;
  v99[0] = a6;
  v69 = type metadata accessor for WeatherMapOverlayAnimationProvider();
  v97 = v69;
  v98 = &off_283487810;
  v96[0] = a9;
  v94 = &type metadata for OverlayRenderSettingsDefaultProvider;
  v95 = &off_2834869A0;
  type metadata accessor for WeatherMapOverlayManager();
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v111, v24);
  v27 = MEMORY[0x28223BE20](v26, v26);
  v29 = (&v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
  v32 = MEMORY[0x28223BE20](v31, v31);
  v34 = (&v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
  v37 = MEMORY[0x28223BE20](v36, v36);
  v39 = (&v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
  v42 = MEMORY[0x28223BE20](v41, v41);
  v44 = (&v69 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44, v42);
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v99, v100);
  v47 = MEMORY[0x28223BE20](v46, v46);
  v49 = (&v69 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49, v47);
  v51 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v52 = MEMORY[0x28223BE20](v51, v51);
  v54 = (&v69 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54, v52);
  __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v56 = *v29;
  v57 = *v34;
  v58 = *v39;
  v59 = *v44;
  v60 = *v49;
  v61 = *v54;
  v92[3] = v24;
  v92[4] = &off_28347F010;
  v92[0] = v56;
  v91[4] = &off_283482E60;
  v91[3] = v73;
  v91[0] = v57;
  v90[3] = v72;
  v90[4] = &off_283486A58;
  v90[0] = v58;
  v89[3] = v71;
  v89[4] = &off_283482400;
  v89[0] = v59;
  v88[3] = v70;
  v88[4] = &off_283486BC8;
  v88[0] = v60;
  v87[3] = v69;
  v87[4] = &off_283487810;
  v87[0] = v61;
  v86[3] = &type metadata for OverlayRenderSettingsDefaultProvider;
  v86[4] = &off_2834869A0;
  sub_220E1966C(0, &qword_2812C5CA0, 0x277D85C78);
  *(v25 + 368) = 0u;
  *(v25 + 384) = 0u;
  *(v25 + 400) = 0u;
  *(v25 + 416) = 0;
  sub_220FC2360();
  v85 = MEMORY[0x277D84F90];
  sub_220E785D8(&qword_2812C5CA8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF28, &unk_220FCAD00);
  sub_220E1A244(&qword_2812C5D38, &qword_27CF9CF28, &unk_220FCAD00);
  sub_220FC3430();
  (*(v78 + 104))(v77, *MEMORY[0x277D85260], v79);
  *(v25 + 424) = sub_220FC2FF0();
  *(v25 + 440) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + 456) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + 464) = 0;
  *(v25 + 472) = 1;
  *(v25 + 480) = 0;
  v62 = v80;
  sub_220E1E2A8(v80, v25 + 16);
  sub_220E1E2A8(v92, v25 + 56);
  sub_220E1E2A8(v91, v25 + 96);
  sub_220E1E2A8(v90, v25 + 136);
  sub_220E1E2A8(v89, v25 + 288);
  sub_220E1E2A8(v88, v25 + 328);
  v63 = v82;
  v64 = v84;
  *(v25 + 176) = v82;
  *(v25 + 184) = v64;
  sub_220E1E2A8(v87, v25 + 192);
  v65 = v83;
  *(v25 + 232) = v81;
  *(v25 + 240) = v65;
  sub_220E1E2A8(v86, v25 + 248);
  *(v63 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_delegate + 8) = &off_283486230;
  swift_unknownObjectWeakAssign();
  v66 = objc_opt_self();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v67 = [v66 defaultCenter];
  [v67 addObserver:v25 selector:sel_handleInvertColorsStatusDidChangeWithNotification_ name:*MEMORY[0x277D76480] object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v62);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v87);
  __swift_destroy_boxed_opaque_existential_0(v88);
  __swift_destroy_boxed_opaque_existential_0(v89);
  __swift_destroy_boxed_opaque_existential_0(v90);
  __swift_destroy_boxed_opaque_existential_0(v91);
  __swift_destroy_boxed_opaque_existential_0(v92);
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v96);
  __swift_destroy_boxed_opaque_existential_0(v99);
  __swift_destroy_boxed_opaque_existential_0(v102);
  __swift_destroy_boxed_opaque_existential_0(v105);
  __swift_destroy_boxed_opaque_existential_0(v108);
  __swift_destroy_boxed_opaque_existential_0(v111);
  return v25;
}

uint64_t sub_220E77EE8(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v21 = type metadata accessor for WeatherMapOverlayDataManager();
  v22 = &off_283486A58;
  *&v20 = a1;
  v18 = type metadata accessor for WeatherMapUnsupportedOverlayMetadataFactory();
  v19 = &off_283485AD8;
  *&v17 = a3;
  v10 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeAirQualityLocation;
  v11 = sub_220FC1070();
  __swift_storeEnumTagSinglePayload(a5 + v10, 1, 1, v11);
  *(a5 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeCountryCode) = xmmword_220FC9A00;
  v12 = OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlay;
  sub_220E78488(__src);
  memcpy((a5 + v12), __src, 0xB8uLL);
  *(a5 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlaySupportedRegion) = 0;
  *(a5 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind) = 4;
  v13 = a5 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeRegion;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  v14 = (a5 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeVisibleMapRect);
  v15 = *(MEMORY[0x277CD4BB8] + 16);
  *v14 = *MEMORY[0x277CD4BB8];
  v14[1] = v15;
  *(a5 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activePointsOfInterest) = MEMORY[0x277D84F90];
  *(a5 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeZoomLevel) = 0x402C000000000000;
  *(a5 + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_220E1E72C(&v20, a5 + 16);
  sub_220E1E72C(a2, a5 + 56);
  sub_220E1E72C(&v17, a5 + 96);
  sub_220E1E72C(a4, a5 + 136);
  return a5;
}

uint64_t sub_220E7807C(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v25 = type metadata accessor for WeatherMapOverlayDataManager();
  v26 = &off_283486A58;
  v24[0] = a1;
  v22 = type metadata accessor for WeatherMapUnsupportedOverlayMetadataFactory();
  v23 = &off_283485AD8;
  v21[0] = a3;
  type metadata accessor for WeatherMapOverlayMetadataManager(0);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v10 = MEMORY[0x28223BE20](v9, v9);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v15 = MEMORY[0x28223BE20](v14, v14);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = sub_220E77EE8(*v12, a2, *v17, a4, v8);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v19;
}

uint64_t sub_220E78268(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_220FC12D0();
  MEMORY[0x28223BE20](v10, v11);
  v15[3] = type metadata accessor for MapLocationAccessibilityModelFactory();
  v15[4] = &protocol witness table for MapLocationAccessibilityModelFactory;
  v15[0] = a1;
  sub_220E785D8(&qword_2812C5F40, MEMORY[0x277D6CD10], MEMORY[0x277D6CD18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D520, &unk_220FCAE60);
  sub_220E1A244(&qword_2812C5D90, &qword_27CF9D520, &unk_220FCAE60);
  sub_220FC3430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D528, &qword_220FD3F40);
  swift_allocObject();
  *(a5 + 56) = sub_220FC1250();
  *(a5 + 120) = dispatch_semaphore_create(5);
  *(a5 + 128) = 2;
  sub_220E1E2A8(v15, a5 + 80);
  *(a5 + 72) = a2;
  sub_220E1E2A8(a3, a5 + 16);
  if (a4)
  {

    v12 = a4;
  }

  else
  {
    sub_220E1966C(0, &qword_2812C5CA0, 0x277D85C78);

    v12 = sub_220FC2F70();
  }

  *(a5 + 64) = v12;
  v13 = a4;
  sub_220F1C4BC();

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return a5;
}

void sub_220E78488(void *a1)
{
  bzero(a1, 0xA0uLL);
  a1[21] = 0;
  a1[22] = 0;
  a1[20] = 0x1FFFFFFFELL;
}

uint64_t sub_220E784BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E78520(uint64_t a1)
{
  v2 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220E785D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220E78680()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherMapStore.ViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_storeObserver;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_storeObserver))
  {
    swift_beginAccess();
    sub_220E819BC();
    swift_beginAccess();
    sub_220E81FFC();
    swift_endAccess();

    sub_220F314C0();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D580, &unk_220FCAEE0);
    sub_220E818E0();
    v5 = sub_220FC1A10();

    *(v1 + v4) = v5;
  }
}

void sub_220E78844(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InteractiveFocus(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = type metadata accessor for WeatherMapStore.ViewModel(0);
  v9 = *(a1 + v8[18]);
  v10 = v8[11];
  v11 = v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_lastViewModel;
  swift_beginAccess();
  sub_220E819BC();
  v12 = sub_220FAE714(a1 + v10, v7);
  sub_220E81964(v7, type metadata accessor for InteractiveFocus);
  if ((v12 & 1) == 0 || *(a1 + v8[12]) == 1)
  {
    v13 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_interactiveViewController;
    swift_beginAccess();
    v14 = *(v2 + v13);
    if (v14)
    {
      v15 = v14;
      sub_220EF7604(a1 + v10, v9);
    }
  }

  if (*(a1 + v8[12]) == 1)
  {
    v16 = *(v2 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapViewController_store) + OBJC_IVAR____TtC11WeatherMaps15WeatherMapStore_viewModel;
    swift_beginAccess();
    *(v16 + v8[12]) = 0;

    sub_220F318B0();
  }

  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v21 = *v11;
  v20 = *(v11 + 8);
  v22 = *(v11 + 16);
  if ((v19 & 0x8000000000000000) == 0)
  {
    if (v22 < 0)
    {
      goto LABEL_23;
    }

    v23 = *(v11 + 24);
    v24 = *(a1 + 24);
    if ((v19 & 1) == 0)
    {
      if ((v22 & 1) == 0)
      {
        v25 = v17 == v21 && v18 == v20;
        if (v25 && v24 == v23)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_23;
    }

    LOBYTE(v20) = v22 & (v24 == v23);
    goto LABEL_13;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

  if (LOBYTE(v18))
  {
LABEL_13:
    if (LOBYTE(v20))
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (!(LOBYTE(v20) & 1 | (v17 != v21)))
  {
LABEL_25:
    sub_220E7B11C(a1, v9);
    goto LABEL_26;
  }

LABEL_23:
  sub_220E79524(a1);
  v27 = *(v11 + 16);
  v31[0] = *v11;
  v31[1] = v27;
  v28 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v28;
  sub_220E7ACCC(v31, v30, v9);
LABEL_26:
  sub_220E7ABF0(v2, a1, v9);
}