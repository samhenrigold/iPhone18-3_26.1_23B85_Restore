void sub_1E3DE3ED0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  LODWORD(v3) = v2;
  v5 = v4;
  v7 = v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39070, &unk_1E42D3280);
  OUTLINED_FUNCTION_0_10();
  v73 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39080, &qword_1E42D3298);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_2_5();
  v76 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v67 - v14;
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v71 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v19 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  sub_1E3DDE028();
  v24 = v23;
  OUTLINED_FUNCTION_36();
  v26 = (*(v25 + 272))();
  if ((v29 & 0x8000) == 0)
  {
    sub_1E39050C0(v26, v27, v28, v29);
    OUTLINED_FUNCTION_9_96();
LABEL_10:
    sub_1E3DE475C();

    v51 = v76;
    goto LABEL_11;
  }

  v70 = v3;
  if (v3)
  {
    if (v3 != 2)
    {
      OUTLINED_FUNCTION_9_96();
      LOBYTE(v3) = v70;
      goto LABEL_10;
    }

    v3 = v15;
    v69 = v24;
    v30 = sub_1E324FBDC();
    v31 = v71;
    (*(v71 + 16))(v22, v30, v3);

    v32 = OUTLINED_FUNCTION_9_96();
    sub_1E3781F8C(v32, v33, 2u);
    v34 = sub_1E41FFC94();
    v35 = sub_1E42067F4();

    v36 = OUTLINED_FUNCTION_9_96();
    sub_1E37B5ACC(v36, v37, 2u);
    v68 = v34;
    if (os_log_type_enabled(v34, v35))
    {
      v38 = OUTLINED_FUNCTION_49_0();
      v67 = OUTLINED_FUNCTION_72_0();
      v78 = v67;
      OUTLINED_FUNCTION_91_15(4.8151e-34);

      OUTLINED_FUNCTION_83_14();
      *(v38 + 14) = sub_1E3270FC8(v7, v5, v39);
      v40 = v35;
      v41 = v68;
      _os_log_impl(&dword_1E323F000, v68, v40, "%s received empty items while waiting for fragments: [%s]", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v31 + 8))(v22, v3);
    v51 = v76;
    LOBYTE(v3) = v70;
  }

  else
  {
    v69 = v24;
    v42 = sub_1E324FBDC();
    v3 = v71;
    v43 = *(v71 + 16);
    v67 = v15;
    v43(v19, v42, v15);

    v44 = v7;
    sub_1E3781F8C(v7, v5, 0);
    v45 = sub_1E41FFC94();
    v46 = sub_1E42067F4();

    v47 = v44;
    sub_1E37B5ACC(v44, v5, 0);
    v68 = v45;
    if (os_log_type_enabled(v45, v46))
    {
      v48 = OUTLINED_FUNCTION_49_0();
      v78 = OUTLINED_FUNCTION_72_0();
      OUTLINED_FUNCTION_91_15(4.8151e-34);

      OUTLINED_FUNCTION_83_14();
      *(v48 + 14) = sub_1E3270FC8(v44, v5, v49);
      v50 = v68;
      _os_log_impl(&dword_1E323F000, v68, v46, "%s failed to parse fragment response, reason: [%s]", v48, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v3 + 8))(v19, v67);
    v51 = v76;
    LOBYTE(v3) = v70;
    v7 = v47;
  }

LABEL_11:
  v52 = v74;
  *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest) = 0;

  sub_1E3DDFF68();
  v53 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_standaloneRequestContinuation;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(v1 + v53, v52, &qword_1ECF39080, &qword_1E42D3298);
  v54 = v75;
  if (__swift_getEnumTagSinglePayload(v52, 1, v75))
  {
    sub_1E325F6F0(v52, &qword_1ECF39080, &qword_1E42D3298);
  }

  else
  {
    v55 = v72;
    v56 = v73;
    (*(v73 + 16))(v72, v52, v54);
    v57 = sub_1E325F6F0(v52, &qword_1ECF39080, &qword_1E42D3298);
    sub_1E3781F38(v57, v58, v59);
    v60 = swift_allocError();
    *v61 = v7;
    *(v61 + 8) = v5;
    *(v61 + 16) = v3;
    v77 = v60;
    v62 = OUTLINED_FUNCTION_9_96();
    sub_1E3781F8C(v62, v63, v3);
    sub_1E42063C4();
    (*(v56 + 8))(v55, v54);
  }

  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v54);
  OUTLINED_FUNCTION_11_3(v1 + v53, &v77);
  sub_1E3DE59A0(v51, v1 + v53);
  swift_endAccess();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE4538()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v17 = v4;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v12(v11);

  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_6_21();
    v15 = OUTLINED_FUNCTION_16_2();
    v18 = v15;
    *v1 = 136315138;
    *(v1 + 4) = sub_1E3270FC8(v17, v3, &v18);
    OUTLINED_FUNCTION_103_0(&dword_1E323F000, v13, v14, "%s Received fetch document response");
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3DE2F20();
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE475C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = OUTLINED_FUNCTION_123_1();
  sub_1E3F6FB3C(v13, v14, v5);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  sub_1E4148C68(sub_1E3DE5D48, v15, v24);

  v16 = v24[0];
  v17 = v24[1];
  sub_1E324FBDC();
  OUTLINED_FUNCTION_6_30();
  v18(v12);

  v19 = sub_1E41FFC94();
  v20 = sub_1E42067F4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v3;
    v22 = OUTLINED_FUNCTION_49_0();
    v24[0] = OUTLINED_FUNCTION_72_0();
    *v22 = 136315394;
    *(v22 + 4) = sub_1E3270FC8(v21, v1, v24);
    *(v22 + 12) = 2080;
    v23 = sub_1E3270FC8(v16, v17, v24);

    *(v22 + 14) = v23;
    _os_log_impl(&dword_1E323F000, v19, v20, "%s Fetch document response failed [%s]", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE49AC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v46 = v3;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = *(v0 + 8);
  v44 = *v0;
  v15 = *(v0 + 16);
  v45 = *(v0 + 17);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3DDE028();
    v43 = v16;
    v18 = v17;
  }

  else
  {
    v18 = 0x80000001E4283D10;
    v43 = 0xD000000000000020;
  }

  if (v45)
  {
    v42 = v2;
    v47 = sub_1E3F6FB3C(v44, v14, v15);
    v48 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    sub_1E4148C68(sub_1E37BCD7C, v20, v49);

    v22 = v49[0];
    v21 = v49[1];
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v23(v10);

    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_49_0();
      v41 = v4;
      v27 = v26;
      v44 = OUTLINED_FUNCTION_72_0();
      v49[0] = v44;
      *v27 = 136315394;
      v28 = v22;
      v29 = sub_1E3270FC8(v43, v18, v49);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2080;
      v30 = sub_1E3270FC8(v28, v21, v49);

      *(v27 + 14) = v30;
      _os_log_impl(&dword_1E323F000, v24, v25, "%s Received fragment error [%s]", v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_6_0();

      (*(v6 + 8))(v10, v41);
    }

    else
    {

      (*(v6 + 8))(v10, v4);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      OUTLINED_FUNCTION_106();
LABEL_14:
      sub_1E3DE4E84();
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v31(v13);

    v32 = sub_1E41FFC94();
    v33 = sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_6_21();
      v42 = v32;
      v34 = v6;
      v49[0] = OUTLINED_FUNCTION_16_2();
      *v15 = 136315138;
      v35 = sub_1E3270FC8(v43, v18, v49);
      v41 = v4;
      v36 = v35;

      *(v15 + 4) = v36;
      v37 = v33;
      v38 = v42;
      OUTLINED_FUNCTION_103_0(&dword_1E323F000, v42, v37, "%s Received success response");
      OUTLINED_FUNCTION_5_175();
      OUTLINED_FUNCTION_7_9();

      (*(v34 + 8))(v13, v41);
    }

    else
    {

      (*(v6 + 8))(v13, v4);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest) = 0;
  }

  if (v46)
  {
    v46(v45 ^ 1u);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v40 = swift_weakLoadStrong();
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE4E84()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 296);
  v11 = v10();
  if (v11 && (v12 = v11, OUTLINED_FUNCTION_25(), swift_beginAccess(), v13 = *(v12 + 56), , , v13) && (OUTLINED_FUNCTION_8(), v15 = (*(v14 + 1248))(v4), v16 = , (v15 & 1) != 0))
  {
    v17 = (v10)(v16);
    if (v17)
    {
      v18 = v17;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v19 = *(v18 + 56);

      if (v19)
      {
        type metadata accessor for TemplateViewModel(0);
        sub_1E3DE5A48(&qword_1EE279848, type metadata accessor for TemplateViewModel);
        sub_1E4200514();
        OUTLINED_FUNCTION_11_5();

        sub_1E4200594();
      }
    }

    v20 = *(v2 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
    if (v20)
    {
      v21 = v20;
      sub_1E3B04344(0);
    }
  }

  else
  {
    v22 = sub_1E324FBDC();
    (*(v7 + 16))(v1, v22, v5);

    v23 = sub_1E41FFC94();
    v24 = sub_1E4206814();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_100();
      v34 = v26;
      *v25 = 136446210;
      sub_1E3DDE028();
      v29 = sub_1E3270FC8(v27, v28, &v34);

      *(v25 + 4) = v29;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v30, v31, "%{public}s Received empty items");
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    v32 = OUTLINED_FUNCTION_74();
    v33(v32);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE5164()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 296);
  v5 = v4();
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = *(v6 + 56);

    if (v7)
    {
      OUTLINED_FUNCTION_8();
      (*(v8 + 1048))();
      OUTLINED_FUNCTION_122();

      v10 = (v4)(v9);
      if (v10 && (v11 = v10, OUTLINED_FUNCTION_25(), swift_beginAccess(), v12 = *(v11 + 56), , , v12))
      {
        OUTLINED_FUNCTION_8();
        (*(v13 + 368))();
        OUTLINED_FUNCTION_16_11();

        *(&v28 + 1) = MEMORY[0x1E69E6158];
        *&v27 = v11;
        *(&v27 + 1) = v4;
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      sub_1E3294FA4(&v27);
      OUTLINED_FUNCTION_16_11();
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000022, 0x80000001E4283DF0);
      v14 = OUTLINED_FUNCTION_146();
      MEMORY[0x1E69109E0](v14);

      MEMORY[0x1E69109E0](0x6F63206874697720, 0xEF203A747865746ELL);
      sub_1E4205C74();
      OUTLINED_FUNCTION_16_11();

      v15 = OUTLINED_FUNCTION_146();
      MEMORY[0x1E69109E0](v15);

      v16 = v27;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_51_4();
      v17(v1);

      v18 = sub_1E41FFC94();
      v19 = sub_1E4206814();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_49_0();
        *&v27 = OUTLINED_FUNCTION_72_0();
        *v20 = 136315394;
        v22 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
        v21 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);

        v23 = sub_1E3270FC8(v22, v21, &v27);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v24 = sub_1E3270FC8(v16, *(&v16 + 1), &v27);

        *(v20 + 14) = v24;
        _os_log_impl(&dword_1E323F000, v18, v19, "DocumentInteractor::[%s] %s", v20, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_7();
      }

      else
      {
      }

      v25 = OUTLINED_FUNCTION_74();
      v26(v25);
      OUTLINED_FUNCTION_25();
      sub_1E3DE009C();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DE5560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = sub_1E4206174();
  sub_1E4206064();
  return v5;
}

unint64_t sub_1E3DE55E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE284CB0;
  if (!qword_1EE284CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284CB0);
  }

  return result;
}

uint64_t type metadata accessor for DocumentInteractor(uint64_t a1)
{
  result = qword_1EE2A1140;
  if (!qword_1EE2A1140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3DE5690(uint64_t a1)
{
  sub_1E32A995C();
  if (v1 <= 0x3F)
  {
    sub_1E3DE57C0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E3DE57C0(uint64_t a1)
{
  if (!qword_1EE23B430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39070, &unk_1E42D3280);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE23B430);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI18DocumentInteractorC10FetchStateO(uint64_t a1)
{
  if ((((*(a1 + 24) | (*(a1 + 26) << 16)) >> 13) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) >> 13;
  }
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1E3DE5870(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 27))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 6) & 0x78 | (*(a1 + 24) >> 13)) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1E3DE58BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 26) = 0;
      *(result + 24) = (((-a2 >> 3) & 0xF) - 16 * a2) << 9;
    }
  }

  return result;
}

uint64_t sub_1E3DE5934(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    return OUTLINED_FUNCTION_43_50(result + 24, *(result + 24) & 0x1FF | (*(result + 26) << 16) | (a2 << 13));
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = a2 - 4;
  *(result + 26) = 0;
  *(result + 24) = 0x8000;
  return result;
}

uint64_t sub_1E3DE59A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39080, &qword_1E42D3298);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DE5A48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1E3DE5A98(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = [objc_opt_self() sharedMonitor];
    sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
    sub_1E3A60E60();
    v7 = sub_1E4206614();
    if (a3)
    {
      [v6 updateDescriptorsForObserver:a1 eventDescriptors:v7];
    }

    else
    {
      [v6 addObserver:a1 forEventDescriptors:v7 viewController:0];
    }
  }

  return result;
}

double sub_1E3DE5BB4()
{
  type metadata accessor for DocumentInteractor(0);
  OUTLINED_FUNCTION_18_98();
  sub_1E3DE5A48(v0, v1);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

void sub_1E3DE5C2C()
{
  sub_1E41FFBF4();

  sub_1E3DE2BF4();
}

double sub_1E3DE5CF8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3DE5164();
  }

  return result;
}

double OUTLINED_FUNCTION_68_27()
{

  return sub_1E38DCCB0(v1, v0);
}

void OUTLINED_FUNCTION_69_25()
{

  JUMPOUT(0x1E69109E0);
}

void OUTLINED_FUNCTION_86_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned __int16 a14)
{

  sub_1E39050C0(v14, a12, v15, a14);
}

void OUTLINED_FUNCTION_88_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

unint64_t OUTLINED_FUNCTION_91_15(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 192);

  return sub_1E3270FC8(v5, v2, (v3 - 104));
}

void OUTLINED_FUNCTION_94_17()
{
  v2 = *(v0 - 400);
}

void OUTLINED_FUNCTION_95_18(float a1)
{
  *v1 = a1;

  sub_1E3DDE028();
}

unint64_t OUTLINED_FUNCTION_96_17(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 304));
}

uint64_t sub_1E3DE5EA0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v10 = *(type metadata accessor for LockupAccessoryContainerView(0, v14) + 56);
  *(a7 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  v11 = swift_storeEnumTagMultiPayload();
  v12 = a1(v11);
  return a2(v12);
}

void sub_1E3DE5F78()
{
  OUTLINED_FUNCTION_31_1();
  v50 = v0;
  v54 = v1;
  v3 = OUTLINED_FUNCTION_50_0(255, *(v2 + 16), MEMORY[0x1E6981840], *(v2 + 24));
  OUTLINED_FUNCTION_51_18(v3);
  OUTLINED_FUNCTION_5_176();
  swift_getWitnessTable();
  v4 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v49 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v48 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF338A0, &unk_1E42BC280);
  v13 = OUTLINED_FUNCTION_8_151(v12);
  OUTLINED_FUNCTION_51_18(v13);
  swift_getWitnessTable();
  v14 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v47 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v46 = v21;
  v22 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v52 = v29;
  v53 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v51 = &v45 - v30;
  sub_1E3746E10(v27);
  v31 = sub_1E3B02B0C();
  (*(v24 + 8))(v27, v22);
  if (v31)
  {
    sub_1E3DE6460();
    OUTLINED_FUNCTION_0_81();
    swift_getWitnessTable();
    v33 = v46;
    v32 = v47;
    v34 = *(v47 + 16);
    v34(v46, v19, v14);
    v35 = *(v32 + 8);
    v35(v19, v14);
    v34(v19, v33, v14);
    OUTLINED_FUNCTION_3_2();
    swift_getWitnessTable();
    v36 = v51;
    sub_1E37B8D98(v19, v14);
    v35(v19, v14);
    v35(v33, v14);
  }

  else
  {
    sub_1E3DE6600();
    OUTLINED_FUNCTION_3_2();
    swift_getWitnessTable();
    v38 = v48;
    v37 = v49;
    v39 = *(v49 + 16);
    v39(v48, v9, v4);
    v40 = *(v37 + 8);
    v40(v9, v4);
    v39(v9, v38, v4);
    OUTLINED_FUNCTION_0_81();
    swift_getWitnessTable();
    v36 = v51;
    sub_1E37B8E90(v9, v14, v4);
    v40(v9, v4);
    v40(v38, v4);
  }

  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_2();
  v42 = swift_getWitnessTable();
  v55 = WitnessTable;
  v56 = v42;
  OUTLINED_FUNCTION_2_25();
  v43 = v53;
  swift_getWitnessTable();
  v44 = v52;
  (*(v52 + 16))(v54, v36, v43);
  (*(v44 + 8))(v36, v43);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE6460()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v21 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF338A0, &unk_1E42BC280);
  v7 = OUTLINED_FUNCTION_50_0(255, v4, v5, v6);
  OUTLINED_FUNCTION_51_18(v7);
  OUTLINED_FUNCTION_15_13();
  swift_getWitnessTable();
  v8 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  sub_1E4201D54();
  v22 = v4;
  v23 = v5;
  v24 = *(v2 + 32);
  v25 = v0;
  OUTLINED_FUNCTION_9_136();
  sub_1E4203A34();
  OUTLINED_FUNCTION_0_81();
  swift_getWitnessTable();
  v18 = OUTLINED_FUNCTION_10_129();
  (v2)(v18);
  v19 = *(v10 + 8);
  v19(v14, v8);
  (v2)(v21, v17, v8);
  v19(v17, v8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE6600()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v20 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = OUTLINED_FUNCTION_50_0(255, v4, MEMORY[0x1E6981840], v5);
  OUTLINED_FUNCTION_51_18(v6);
  OUTLINED_FUNCTION_15_13();
  swift_getWitnessTable();
  v7 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_1E4201B84();
  v21 = v4;
  v22 = v5;
  v23 = *(v2 + 32);
  v24 = v0;
  OUTLINED_FUNCTION_9_136();
  sub_1E42039B4();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v17 = OUTLINED_FUNCTION_10_129();
  (v2)(v17);
  v18 = *(v9 + 8);
  v18(v13, v7);
  (v2)(v20, v16, v7);
  v18(v16, v7);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE6790()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v35 = v0;
  v39 = v3;
  v40 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1_2();
  v11 = v10;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v38 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v36 = v16;
  OUTLINED_FUNCTION_1_2();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v35 - v25;
  v27 = *(v18 + 16);
  v27(&v35 - v25, v9, v7, v24);
  v47 = v7;
  v48 = v5;
  v49 = v40;
  v50 = v1;
  v28 = type metadata accessor for LockupAccessoryContainerView(0, &v47);
  v29 = *(v11 + 16);
  v30 = v9 + *(v28 + 52);
  v31 = v36;
  v29(v36, v30, v5);
  (v27)(v22, v26, v7);
  v45 = 0;
  v46 = 0;
  v47 = v22;
  v48 = &v45;
  v32 = v38;
  v29(v38, v31, v5);
  v49 = v32;
  v44[0] = v7;
  v44[1] = MEMORY[0x1E6981840];
  v44[2] = v5;
  v41 = v40;
  v42 = MEMORY[0x1E6981838];
  v43 = v35;
  sub_1E3910324(&v47, 3, v44);
  v33 = *(v37 + 8);
  v33(v31, v5);
  v34 = *(v18 + 8);
  v34(v26, v7);
  v33(v32, v5);
  v34(v22, v7);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE6A20()
{
  OUTLINED_FUNCTION_31_1();
  v60 = v0;
  v2 = v1;
  v50 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v57 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338A0, &unk_1E42BC280);
  OUTLINED_FUNCTION_0_10();
  v55 = v11;
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v61 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v52 = v15;
  OUTLINED_FUNCTION_1_2();
  v17 = v16;
  v53 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v59 = (v19 - v20);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v49 = v6;
  OUTLINED_FUNCTION_1_2();
  v25 = v24;
  v54 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v58 = v27 - v28;
  OUTLINED_FUNCTION_49();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v47 - v31;
  v48 = *(v25 + 16);
  v51 = &v47 - v31;
  v48(&v47 - v31, v8, v6, v30);
  v68 = v6;
  v69 = v4;
  v47 = v4;
  v70 = v2;
  v71 = v60;
  v33 = type metadata accessor for LockupAccessoryContainerView(0, &v68);
  v34 = *(v17 + 16);
  v34(v23, v8 + *(v33 + 52), v4);
  v68 = 0;
  LOBYTE(v69) = 0;
  v35 = MEMORY[0x1E6981840];
  sub_1E3D4174C();
  v36 = v52;
  sub_1E3D414F8(v35, v52);

  v37 = v58;
  v38 = v49;
  (v48)(v58, v32, v49);
  v68 = v37;
  v39 = v59;
  v40 = v47;
  v34(v59, v23, v47);
  v69 = v39;
  v41 = v55;
  v42 = v56;
  v43 = v61;
  (*(v55 + 16))(v61, v36, v56);
  v70 = v43;
  v67[0] = v38;
  v67[1] = v40;
  v67[2] = v42;
  v64 = v50;
  v65 = v60;
  v62 = MEMORY[0x1E6981840];
  v63 = MEMORY[0x1E6981838];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3910324(&v68, 3, v67);
  v44 = *(v41 + 8);
  v44(v36, v42);
  v45 = *(v53 + 8);
  v45(v23, v40);
  v46 = *(v54 + 8);
  v46(v51, v38);
  v44(v61, v42);
  v45(v59, v40);
  v46(v58, v38);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE6E9C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1E38D5D68(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E3DE6F40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(a3 + 24);
  v30 = *(a3 + 16);
  v5 = *(v30 - 8);
  v6 = *(v5 + 84);
  v7 = *(v29 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_1E42012F4() - 8);
  v11 = 8;
  if (*(v10 + 64) > 8uLL)
  {
    v11 = *(v10 + 64);
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = *(v5 + 64) + v13;
  v16 = *(v10 + 80) & 0xF8 | 7;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v17 = v11 + ((v14 + v16 + (v15 & ~v13)) & ~v16) + 1;
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_12;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_30;
      }

LABEL_12:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

LABEL_20:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_20;
    }
  }

LABEL_30:
  if (v6 == v12)
  {
    v25 = a1;
    v26 = v6;
    v27 = v30;
  }

  else
  {
    v25 = ((a1 + v15) & ~v13);
    if (v8 != v12)
    {
      v28 = *(((v25 + v14 + v16) & ~v16) + v11);
      if (v28 >= 2)
      {
        return (v28 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v26 = v8;
    v27 = v29;
  }

  return __swift_getEnumTagSinglePayload(v25, v26, v27);
}

void sub_1E3DE7220(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v36 = *(a4 + 24);
  v37 = *(a4 + 16);
  v6 = *(v37 - 8);
  v7 = *(v6 + 84);
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1E42012F4() - 8);
  v12 = *(v11 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (v10 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(v8 + 80);
  v15 = *(v6 + 64) + v14;
  v16 = *(v8 + 64);
  v17 = *(v11 + 80) & 0xF8 | 7;
  v18 = v12 + 1;
  v19 = ((v16 + v17 + (v15 & ~v14)) & ~v17) + v12 + 1;
  v20 = 8 * v19;
  if (a3 <= v13)
  {
    v22 = 0;
    v21 = a1;
  }

  else
  {
    v21 = a1;
    if (v19 <= 3)
    {
      v25 = ((a3 - v13 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  if (v13 < a2)
  {
    v23 = ~v13 + a2;
    if (v19 < 4)
    {
      v24 = (v23 >> v20) + 1;
      if (v19)
      {
        v27 = v23 & ~(-1 << v20);
        bzero(v21, v19);
        if (v19 == 3)
        {
          *v21 = v27;
          v21[2] = BYTE2(v27);
        }

        else if (v19 == 2)
        {
          *v21 = v27;
        }

        else
        {
          *v21 = v23;
        }
      }
    }

    else
    {
      bzero(v21, v19);
      *v21 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        v21[v19] = v24;
        break;
      case 2:
        *&v21[v19] = v24;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *&v21[v19] = v24;
        break;
      default:
        return;
    }

    return;
  }

  switch(v22)
  {
    case 1:
      v21[v19] = 0;
      if (a2)
      {
        goto LABEL_32;
      }

      return;
    case 2:
      *&v21[v19] = 0;
      if (a2)
      {
        goto LABEL_32;
      }

      return;
    case 3:
LABEL_63:
      __break(1u);
      return;
    case 4:
      *&v21[v19] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 == v13)
      {
        v28 = v21;
        v29 = a2;
        v30 = v7;
        v31 = v37;
LABEL_36:

        __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
        return;
      }

      v28 = &v21[v15] & ~v14;
      if (v9 == v13)
      {
        v29 = a2;
        v30 = v9;
        v31 = v36;
        goto LABEL_36;
      }

      v32 = ((v28 + v16 + v17) & ~v17);
      if (a2 > 0xFE)
      {
        if (v18 <= 3)
        {
          v33 = ~(-1 << (8 * v18));
        }

        else
        {
          v33 = -1;
        }

        if (v18)
        {
          v34 = v33 & (a2 - 255);
          if (v18 <= 3)
          {
            v35 = v18;
          }

          else
          {
            v35 = 4;
          }

          bzero(v32, v18);
          switch(v35)
          {
            case 2:
              *v32 = v34;
              break;
            case 3:
              *v32 = v34;
              v32[2] = BYTE2(v34);
              break;
            case 4:
              *v32 = v34;
              break;
            default:
              *v32 = v34;
              break;
          }
        }
      }

      else
      {
        v32[v12] = -a2;
      }

      return;
  }
}

id sub_1E3DE7654()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1E3DE7700(char a1)
{
  *(v1 + 136) = 0;
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  v3 = sub_1E3C2F9A0();

  sub_1E3DE77F4();
  if (a1)
  {
    sub_1E3DE7FD0();
  }

  else
  {
    sub_1E3DE8600();
  }

  sub_1E3DE8C88();

  return v3;
}

void sub_1E3DE7788()
{
  *(v0 + 136) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3DE77F4()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 216;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  v2 = OUTLINED_FUNCTION_15_8();
  v3(v2);

  (v1)(v4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_15_8();
  v6(v5);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  v8 = OUTLINED_FUNCTION_15_8();
  v9(v8);

  v11 = (v1)(v10);
  v12 = sub_1E3E5FDEC();
  v13 = *v12;
  v14 = *(*v11 + 680);
  v15 = *v12;
  v14(v13);

  (v1)(v16);
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 2128))(0x3FE51EB851EB851FLL, 0);

  (v1)(v18);
  OUTLINED_FUNCTION_2_1();
  (*(v19 + 1984))(1);

  v21 = (v1)(v20);
  (*(*v21 + 208))(0x403E000000000000, 0);

  OUTLINED_FUNCTION_9_2();
  v23 = *(v22 + 1752);
  v23();
  v126 = 0;
  v127 = 1;
  v124 = 0;
  v125 = 1;
  v122 = 1;
  v123 = 0;
  v120 = 0;
  v121 = 1;
  v24 = MEMORY[0x1E69E6810];
  v25 = sub_1E3C3DE00();
  v116 = v118;
  v117 = v119;
  v33 = OUTLINED_FUNCTION_15_121(v25, v26, v27, v28, v29, v30, v31, v32, v110, v114, 2);
  sub_1E3C2FCB8(v33, v34, v35, v36, &v116, &v120, v24, v37);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v46 = OUTLINED_FUNCTION_4_68(v38, v39, v40, v41, v42, v43, v44, v45, v111, v114, __dst[0]);
  v47(v46, 62);

  (v23)(v48);
  v49 = *sub_1E3E5FD88();
  *&__dst[0] = v49;
  v126 = 0;
  v124 = 0;
  v122 = *v12;
  v50 = v122;
  v51 = sub_1E3755B54();
  v52 = v49;
  v53 = v50;
  sub_1E3C3DE00();
  v118 = v120;
  v54 = sub_1E3C3DE00();
  v62 = OUTLINED_FUNCTION_15_121(v54, v55, v56, v57, v58, v59, v60, v61, v112, v116, __dst[0]);
  sub_1E3C2FCB8(v62, v63, v64, v65, &v118, &v114, v51, v66);
  v67 = __src[0];
  v68 = __src[1];
  v69 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v78 = OUTLINED_FUNCTION_4_68(v70, v71, v72, v73, v74, v75, v76, v77, v113, v114, __dst[0]);
  v79(v78, 21);

  OUTLINED_FUNCTION_9_2();
  v81 = *(v80 + 1776);
  v81();
  OUTLINED_FUNCTION_2_1();
  v82 = OUTLINED_FUNCTION_15_8();
  v83(v82);

  (v81)(v84);
  OUTLINED_FUNCTION_2_1();
  (*(v85 + 2176))(4, 0);

  OUTLINED_FUNCTION_9_2();
  v87 = *(v86 + 1800);
  v88 = v87();
  v89 = *sub_1E418A524();
  (*(*v88 + 440))(v89, 0);

  (v87)(v90);
  OUTLINED_FUNCTION_2_1();
  (*(v91 + 1808))(3);

  (v87)(v92);
  OUTLINED_FUNCTION_2_1();
  (*(v93 + 2000))(0);

  v95 = (v87)(v94);
  v96.n128_u64[0] = 0.5;
  *&__src[0] = j__OUTLINED_FUNCTION_7_78(v96);
  *(&__src[0] + 1) = v97;
  *&__src[1] = v98;
  *(&__src[1] + 1) = v99;
  LOBYTE(__src[2]) = 0;
  (*(*v95 + 1856))(__src);

  v101 = (v87)(v100);
  v102 = *sub_1E3E60CFC();
  v103 = *(*v101 + 1832);
  v104 = v102;
  v103(v102);

  v106 = (v87)(v105);
  v107 = sub_1E3E61064();
  v108 = *(v107 + 1);
  __dst[0] = *v107;
  __dst[1] = v108;
  LOBYTE(__dst[2]) = 0;
  (*(*v106 + 560))(__dst);

  return result;
}

uint64_t sub_1E3DE7FD0()
{
  OUTLINED_FUNCTION_2_138();
  v1 += 216;
  v2 = *v1;
  (*v1)();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 1696))(6);

  (v2)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1792))(10);

  (v2)(v6);
  OUTLINED_FUNCTION_5_177();
  v284[0] = sub_1E3952CA4();
  v284[1] = v7;
  v285[0] = v8;
  v285[1] = v9;
  LOBYTE(v286) = 0;
  v279 = 0x4018000000000000;
  v280 = 0;
  v281 = 0;
  v282 = 0x4018000000000000;
  LOBYTE(v283) = 0;
  sub_1E3952CA4();
  OUTLINED_FUNCTION_10_130();
  type metadata accessor for UIEdgeInsets();
  v11 = v10;
  v12 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_18_99(v12, v13, v14, v15, v16, v17, v18, v19, v210, v224, 0x4000000000000000, 0, 0, 0x4024000000000000, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274);
  sub_1E3C2FCB8(__dst, v287, &v268, v284, &v279, v278, v11, &v288);
  OUTLINED_FUNCTION_17_115(v20, v21, v22, v23);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v32 = OUTLINED_FUNCTION_6_164(v24, v25, v26, v27, v28, v29, v30, v31, v211, v225, __dst[0]);
  v33(v32);

  OUTLINED_FUNCTION_9_2();
  v35 = *(v34 + 1752);
  v35();
  sub_1E3952C88();
  *__dst = v36;
  v239 = v37;
  v240 = v38;
  v241 = v39;
  *&v40 = OUTLINED_FUNCTION_5_177();
  *v284 = v40;
  *v285 = v40;
  LOBYTE(v286) = v41;
  sub_1E3952C88();
  v279 = v42;
  v280 = v43;
  v281 = v44;
  v282 = v45;
  LOBYTE(v283) = 0;
  sub_1E3952C88();
  OUTLINED_FUNCTION_10_130();
  sub_1E3952C88();
  *&v274 = v46;
  *(&v274 + 1) = v47;
  v275 = v48;
  v276 = v49;
  LOBYTE(v277) = 0;
  v58 = OUTLINED_FUNCTION_1_224(v50, v51, v52, v53, v54, v55, v56, v57, v212, v226, __dst[0]);
  OUTLINED_FUNCTION_20_95(v58, v59, v60, v61, v62, v63, v213, v227, *__dst, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273);
  OUTLINED_FUNCTION_17_115(v64, v65, v66, v67);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v76 = OUTLINED_FUNCTION_6_164(v68, v69, v70, v71, v72, v73, v74, v75, v214, v228, __dst[0]);
  v77(v76);

  v79 = (v35)(v78);
  LOBYTE(v287[0]) = 20;
  LOBYTE(v284[0]) = 20;
  LOBYTE(v279) = 21;
  LOBYTE(v278[0]) = 3;
  LOBYTE(v274) = 14;
  v87 = OUTLINED_FUNCTION_1_224(v79, v80, v81, v82, v83, v84, v85, v86, v215, v229, 15);
  sub_1E3C2FCB8(v87, v88, v89, v90, v91, &v274, &qword_1F5D549D8, v92);
  OUTLINED_FUNCTION_16_115();
  OUTLINED_FUNCTION_14();
  v101 = OUTLINED_FUNCTION_7_175(v93, v94, v95, v96, v97, v98, v99, v100, v216, v230, __dst[0]);
  v102(v101);

  OUTLINED_FUNCTION_9_2();
  v217 = v103 + 1776;
  v231 = *(v103 + 1776);
  v231();
  v104 = *sub_1E3E5FDEC();
  *__dst = v104;
  v287[0] = 0;
  v284[0] = 0;
  v279 = v104;
  v278[0] = v104;
  v105 = sub_1E3755B54();
  v106 = v104;
  v107 = sub_1E3C3DE00();
  v268 = v274;
  v115 = OUTLINED_FUNCTION_1_224(v107, v108, v109, v110, v111, v112, v113, v114, v217, v231, __dst[0]);
  sub_1E3C2FCB8(v115, v116, v117, v118, v119, &v268, v105, v120);
  v121 = v288;
  v122 = v289;
  v123 = v290;
  v124 = v291;
  v125 = v292;
  v126 = v293;
  *__dst = v288;
  v239 = v289;
  v240 = v290;
  v241 = v291;
  v242 = v292;
  v243 = v293;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v135 = OUTLINED_FUNCTION_4_68(v127, v128, v129, v130, v131, v132, v133, v134, v218, v232, __dst[0]);
  v136(v135, 21);

  v137 = v233;
  v138 = v233();
  LOBYTE(v287[0]) = 27;
  LOBYTE(v284[0]) = 27;
  LOBYTE(v279) = 27;
  LOBYTE(v278[0]) = 14;
  LOBYTE(v274) = 17;
  v146 = OUTLINED_FUNCTION_1_224(v138, v139, v140, v141, v142, v143, v144, v145, v219, v233, 22);
  sub_1E3C2FCB8(v146, v147, v148, v149, v150, &v274, &qword_1F5D549D8, v151);
  OUTLINED_FUNCTION_16_115();
  OUTLINED_FUNCTION_14();
  v160 = OUTLINED_FUNCTION_7_175(v152, v153, v154, v155, v156, v157, v158, v159, v220, v234, __dst[0]);
  v161(v160);

  (v137)(v162);
  sub_1E3952C88();
  *__dst = v163;
  v239 = v164;
  v240 = v165;
  v241 = v166;
  *&v167 = OUTLINED_FUNCTION_5_177();
  *v284 = v167;
  *v285 = v167;
  LOBYTE(v286) = v168;
  sub_1E3952C88();
  v279 = v169;
  v280 = v170;
  v281 = v171;
  v282 = v172;
  LOBYTE(v283) = 0;
  sub_1E3952C88();
  OUTLINED_FUNCTION_10_130();
  sub_1E3952C58();
  *&v274 = v173;
  *(&v274 + 1) = v174;
  v275 = v175;
  v276 = v176;
  LOBYTE(v277) = 0;
  v185 = OUTLINED_FUNCTION_1_224(v177, v178, v179, v180, v181, v182, v183, v184, v221, v235, __dst[0]);
  OUTLINED_FUNCTION_20_95(v185, v186, v187, v188, v189, v190, v222, v236, *__dst, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273);
  OUTLINED_FUNCTION_17_115(v191, v192, v193, v194);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v203 = OUTLINED_FUNCTION_6_164(v195, v196, v197, v198, v199, v200, v201, v202, v223, v237, __dst[0]);
  v204(v203);

  sub_1E3952C94();
  v288 = v205;
  v289 = v206;
  v290 = v207;
  v291 = v208;
  LOBYTE(v292) = 0;
  return (*(*v0 + 184))(&v288);
}

uint64_t sub_1E3DE8600()
{
  OUTLINED_FUNCTION_2_138();
  v1 += 216;
  v2 = *v1;
  (*v1)();
  OUTLINED_FUNCTION_14_132();
  LOBYTE(v223) = 7;
  LOBYTE(v220) = 2;
  LOBYTE(v218[0]) = 7;
  v11 = OUTLINED_FUNCTION_0_246(v3, v4, v5, v6, v7, v8, v9, v10, v182, v196, 17);
  sub_1E3C2FCB8(v11, v12, v13, v14, v15, v218, &qword_1F5D549D8, v16);
  OUTLINED_FUNCTION_9_137();
  OUTLINED_FUNCTION_14();
  v25 = OUTLINED_FUNCTION_7_175(v17, v18, v19, v20, v21, v22, v23, v24, v183, v197, __dst[0]);
  v26(v25);

  (v2)(v27);
  OUTLINED_FUNCTION_2_1();
  (*(v28 + 1792))(10);

  (v2)(v29);
  *__dst = xmmword_1E42B5F70;
  *&__dst[16] = xmmword_1E42B5F70;
  __dst[32] = 0;
  *&v231 = sub_1E3952CA4();
  *(&v231 + 1) = v30;
  *&v232 = v31;
  *(&v232 + 1) = v32;
  v233 = 0;
  v33 = *(MEMORY[0x1E69DDCE0] + 16);
  v228 = *MEMORY[0x1E69DDCE0];
  v229 = v33;
  v230 = 0;
  v223 = sub_1E3952C40();
  v224 = v34;
  v225 = v35;
  v226 = v36;
  v227 = 0;
  type metadata accessor for UIEdgeInsets();
  v38 = v37;
  sub_1E3C2FC98();
  v218[0] = v220;
  v218[1] = v221;
  v219 = v222;
  v39 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_18_99(v39, v40, v41, v42, v43, v44, v45, v46, v184, v198, 0, 0x4018000000000000, 0, 0x4018000000000000, *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v211, v212, v213, v214, v215, v216, v217[0]);
  sub_1E3C2FCB8(__dst, v218, &v211, &v231, &v228, &v223, v38, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v55 = OUTLINED_FUNCTION_6_164(v47, v48, v49, v50, v51, v52, v53, v54, v185, v199, __dst[0]);
  v56(v55);

  OUTLINED_FUNCTION_9_2();
  (*(v57 + 1752))();
  __dst[0] = 17;
  OUTLINED_FUNCTION_14_132();
  LOBYTE(v223) = 14;
  LOBYTE(v220) = 3;
  v58 = sub_1E3C3DE00();
  LOBYTE(v217[0]) = v218[0];
  v66 = OUTLINED_FUNCTION_0_246(v58, v59, v60, v61, v62, v63, v64, v65, v186, v200, __dst[0]);
  OUTLINED_FUNCTION_20_95(v66, v67, v68, v69, v70, v71, v187, v201, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v211, v212, v213, v214, v215, v216);
  OUTLINED_FUNCTION_9_137();
  OUTLINED_FUNCTION_14();
  v80 = OUTLINED_FUNCTION_7_175(v72, v73, v74, v75, v76, v77, v78, v79, v188, v202, __dst[0]);
  v81(v80);

  OUTLINED_FUNCTION_9_2();
  v189 = v82 + 1776;
  v203 = *(v82 + 1776);
  v203();
  v83 = sub_1E3E5FDEC();
  *__dst = *v83;
  *&v231 = 0;
  *&v228 = 0;
  v84 = *__dst;
  v85 = *sub_1E3E60364();
  v223 = *&v85;
  *&v220 = *v83;
  v86 = v220;
  v87 = sub_1E3755B54();
  v88 = v85;
  v89 = v86;
  v90 = sub_1E3C3DE00();
  *&v217[0] = *&v218[0];
  v98 = OUTLINED_FUNCTION_0_246(v90, v91, v92, v93, v94, v95, v96, v97, v189, v203, __dst[0]);
  sub_1E3C2FCB8(v98, v99, v100, v101, v102, v217, v87, v103);
  v104 = __src[0];
  v105 = __src[1];
  v106 = __src[2];
  *__dst = __src[0];
  *&__dst[16] = __src[1];
  *&__dst[32] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v115 = OUTLINED_FUNCTION_4_68(v107, v108, v109, v110, v111, v112, v113, v114, v190, v204, __dst[0]);
  v116(v115, 21);

  v117 = v205;
  v205();
  __dst[0] = 21;
  OUTLINED_FUNCTION_14_132();
  LOBYTE(v223) = 22;
  LOBYTE(v220) = 14;
  v118 = sub_1E3C3DE00();
  LOBYTE(v217[0]) = v218[0];
  v126 = OUTLINED_FUNCTION_0_246(v118, v119, v120, v121, v122, v123, v124, v125, v191, v205, __dst[0]);
  OUTLINED_FUNCTION_20_95(v126, v127, v128, v129, v130, v131, v192, v206, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v211, v212, v213, v214, v215, v216);
  OUTLINED_FUNCTION_9_137();
  OUTLINED_FUNCTION_14();
  v140 = OUTLINED_FUNCTION_7_175(v132, v133, v134, v135, v136, v137, v138, v139, v193, v207, __dst[0]);
  v141(v140);

  (v117)(v142);
  sub_1E3952C88();
  *__dst = v143;
  *&__dst[8] = v144;
  *&__dst[16] = v145;
  *&__dst[24] = v146;
  __dst[32] = 0;
  v231 = 0u;
  v232 = 0u;
  v233 = 1;
  v228 = 0u;
  v229 = 0u;
  v230 = 1;
  sub_1E3952C88();
  v223 = v147;
  v224 = v148;
  v225 = v149;
  v226 = v150;
  v227 = 0;
  sub_1E3952C88();
  *&v220 = v151;
  *(&v220 + 1) = v152;
  *&v221 = v153;
  *(&v221 + 1) = v154;
  v222 = 0;
  sub_1E3952C88();
  OUTLINED_FUNCTION_10_130();
  v163 = OUTLINED_FUNCTION_0_246(v155, v156, v157, v158, v159, v160, v161, v162, v194, v208, __dst[0]);
  sub_1E3C2FCB8(v163, v164, v165, v166, v167, v218, v38, v168);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v177 = OUTLINED_FUNCTION_6_164(v169, v170, v171, v172, v173, v174, v175, v176, v195, v209, __dst[0]);
  v178(v177);

  OUTLINED_FUNCTION_9_2();
  (*(v179 + 1800))();
  OUTLINED_FUNCTION_2_1();
  (*(v180 + 312))(0x4050800000000000, 0);

  __src[0] = xmmword_1E4298710;
  __src[1] = xmmword_1E4298710;
  LOBYTE(__src[2]) = 0;
  return (*(*v0 + 184))(__src);
}

double sub_1E3DE8C88()
{
  v1 = (*(*v0 + 1728))();
  sub_1E3C37CBC(v1, 17);

  v3 = (*(*v0 + 1752))(v2);
  sub_1E3C37CBC(v3, 23);

  v5 = (*(*v0 + 1776))(v4);
  sub_1E3C37CBC(v5, 15);

  v7 = (*(*v0 + 1800))(v6);
  sub_1E3C37CBC(v7, 39);

  return result;
}

unint64_t sub_1E3DE8DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF390A0;
  if (!qword_1ECF390A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF390A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OrdinalCellLayout.OrdinalCellType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3DE8F2C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3DE8F7C(a1, a2);
  return v4;
}

uint64_t sub_1E3DE8F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 64) = a2;
  swift_unknownObjectWeakAssign();
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_1E4205ED4();
  v7 = [v5 BOOLForKey_];

  if (v7)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = *(v3 + 64);
    v10 = type metadata accessor for TestDiscovery();
    v11 = swift_allocObject();
    sub_1E3DE9274(Strong, v9);
    v17 = v10;
    v18 = &off_1F5D86440;
    swift_unknownObjectRelease();
    *&v16 = v11;
  }

  else
  {
    v12 = type metadata accessor for DIALDiscovery();
    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = sub_1E3DF1A1C(v13, *(v3 + 64));
    v17 = v12;
    v18 = &off_1F5D86770;
    swift_unknownObjectRelease();
    *&v16 = v14;
  }

  sub_1E3251BE8(&v16, v3 + 16);
  return v3;
}

uint64_t sub_1E3DE90E0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3DE9274(a1, a2);
  return v4;
}

uint64_t sub_1E3DE9154()
{
  sub_1E327F454(v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 16))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1E3DE91C4()
{
  sub_1E327F454(v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 24))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1E3DE9234()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1E32AF6F8(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1E3DE9274(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1E3DE92F0()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    type metadata accessor for DiscoveryDevice();
    sub_1E405AF28(0xD000000000000052, 0x80000001E4283F10, 0x565420474CLL, 0xE500000000000000, 2, 0x303036384D533536, 0xEB00000000415550);
    OUTLINED_FUNCTION_0_247();
    v3();

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    type metadata accessor for DiscoveryDevice();
    v4 = OUTLINED_FUNCTION_1_225();
    sub_1E405AF28(v4, v5, v6, v7, 4, v8, v9);
    OUTLINED_FUNCTION_0_247();
    v10();

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v0 + 24);
    swift_getObjectType();
    type metadata accessor for DiscoveryDevice();
    v13 = OUTLINED_FUNCTION_1_225();
    sub_1E405AF28(v13, v14, v15, v16, 3, v17, 0xE500000000000000);
    (*(v12 + 16))();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E3DE9544()
{
  sub_1E32AF6F8(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3DE957C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E3DE90E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3DE95C8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  result = (*(v2 + 16))(v1, v2);
  v5 = v4;
  v6 = HIBYTE(v4) & 0xF;
  v7 = result & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v10 = sub_1E37801A4(result, v5, 10);
    v26 = v31;
LABEL_70:

    if ((v26 & 1) == 0)
    {
      sub_1E3DE98E0();
      sub_1E39A2078(v10);
      sub_1E399E1FC();
      if (v27)
      {
        v28 = v27;
        result = sub_1E32AE9B0(v27);
        if (result)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v29 = MEMORY[0x1E6911E60](0, v28);
            goto LABEL_76;
          }

          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v29 = *(v28 + 32);
LABEL_76:
            v30 = v29;

            return v30;
          }

          __break(1u);
          goto LABEL_86;
        }
      }
    }

    return 0;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E4207524();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v7 < 1)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v7 == 1)
      {
        goto LABEL_68;
      }

      v10 = 0;
      if (result)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v12 & v11)
          {
            goto LABEL_68;
          }

          OUTLINED_FUNCTION_0_248();
          if (!v12)
          {
            goto LABEL_68;
          }

          v10 = v19 + v18;
          if (__OFADD__(v19, v18))
          {
            goto LABEL_68;
          }

          OUTLINED_FUNCTION_132();
          if (v12)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v9 == 45)
    {
      if (v7 < 1)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (v7 == 1)
      {
        goto LABEL_68;
      }

      v10 = 0;
      if (result)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v12 & v11)
          {
            goto LABEL_68;
          }

          OUTLINED_FUNCTION_0_248();
          if (!v12)
          {
            goto LABEL_68;
          }

          v10 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            goto LABEL_68;
          }

          OUTLINED_FUNCTION_132();
          if (v12)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else
    {
      if (!v7)
      {
LABEL_68:
        v10 = 0;
        v15 = 1;
        goto LABEL_69;
      }

      v10 = 0;
      if (result)
      {
        do
        {
          v22 = *result - 48;
          if (v22 > 9)
          {
            goto LABEL_68;
          }

          v23 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_68;
          }

          v10 = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            goto LABEL_68;
          }

          ++result;
        }

        while (--v7);
      }
    }

    v15 = 0;
LABEL_69:
    v26 = v15;
    goto LABEL_70;
  }

  if (result != 43)
  {
    if (result == 45)
    {
      if (!v6)
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (v6 != 1)
      {
        OUTLINED_FUNCTION_3_188();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v12 & v11)
          {
            break;
          }

          OUTLINED_FUNCTION_0_248();
          if (!v12)
          {
            break;
          }

          v10 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v12)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v6)
    {
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v12 & v11)
        {
          break;
        }

        OUTLINED_FUNCTION_0_248();
        if (!v12)
        {
          break;
        }

        v10 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v12)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      OUTLINED_FUNCTION_3_188();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v12 & v11)
        {
          break;
        }

        OUTLINED_FUNCTION_0_248();
        if (!v12)
        {
          break;
        }

        v10 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v12)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_89:
  __break(1u);
  return result;
}

unint64_t sub_1E3DE98E0()
{
  result = qword_1EE23B3A0;
  if (!qword_1EE23B3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B3A0);
  }

  return result;
}

uint64_t sub_1E3DE9924()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for CanonicalAiringInfoLayout();
    v1 = sub_1E418555C();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3DE998C()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for CanonicalSectionLayout();
    OUTLINED_FUNCTION_15_0(v0 + 98, v3);
    v1 = sub_1E3D22C2C(*(v0 + 98));
    *(v2 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3DE9A08(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3DE9A44(v1);
}

uint64_t sub_1E3DE9A44(char a1)
{
  *(v1 + 136) = 0;
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 144) = 1;
  *(v1 + 98) = a1;
  v2 = sub_1E3C2F9A0();

  sub_1E3C2D150();
  v3 = swift_beginAccess();
  sub_1E3D22D60(v3, v4, v5);
  if ((sub_1E4205E84() & 1) == 0)
  {
    if ([objc_opt_self() isTV])
    {
      sub_1E3755B54();
      v6 = objc_opt_self();
      v7 = [v6 blackColor];
      v8 = [v7 colorWithAlphaComponent_];

      v9 = [v6 whiteColor];
      v10 = sub_1E3E5F2F8(v8, v9);
    }

    else
    {
      v10 = *sub_1E3E5FDEC();
    }

    swift_beginAccess();
    v11 = *(v2 + 128);
    *(v2 + 128) = v10;

    v12 = *sub_1E3E60700();
    swift_beginAccess();
    v13 = *(v2 + 120);
    *(v2 + 120) = v12;
    v14 = v12;
  }

  swift_beginAccess();
  *(v2 + 136) = 0x4000000000000000;
  *(v2 + 144) = 0;
  v15 = sub_1E3DE9924();
  sub_1E3C37CBC(v15, 108);

  v16 = sub_1E3DE998C();
  sub_1E3C37CBC(v16, 109);

  return v2;
}

void sub_1E3DE9C98()
{

  v1 = *(v0 + 128);
}

uint64_t sub_1E3DE9CD8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3DE9D20()
{
  v0 = sub_1E3DE9CD8();

  return MEMORY[0x1EEE6BDC0](v0, 145, 7);
}

void *sub_1E3DE9D74@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 42);
  memcpy(&__src[5], a2, 0x52uLL);
  v8 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v8;
  *(a3 + 32) = v5;
  *(a3 + 42) = v7;
  *(a3 + 40) = v6;
  return memcpy((a3 + 43), __src, 0x57uLL);
}

uint64_t sub_1E3DE9E0C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_itemId);
  OUTLINED_FUNCTION_20_96();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3DE9E5C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_itemId);
  OUTLINED_FUNCTION_3_0(v5, v7);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E3DE9FD4()
{
  sub_1E4206C04();
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v36 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v38 = objc_opt_self();
  v13 = [v38 defaultCenter];
  v43 = ((*MEMORY[0x1E69E7D40] & *v0) + 560);
  v14 = *v43;
  v15 = (*v43)();
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_23_9(v16);
  v42 = sub_1E38DF10C();
  OUTLINED_FUNCTION_27_15();
  sub_1E4200844();
  OUTLINED_FUNCTION_10_14();
  v17 = *(v3 + 8);
  v44 = v3 + 8;
  v45 = v17;
  v17(v12, v1);
  OUTLINED_FUNCTION_162(OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_playbackDidStartObserver);
  v18 = v38;
  v19 = [v38 &selRef_connectWithCompletionHandler_progressHandler_ + 5];
  v20 = v14;
  v21 = v14();
  v22 = v39;
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_23_9(v23);
  OUTLINED_FUNCTION_27_15();
  v37 = v1;
  sub_1E4200844();
  OUTLINED_FUNCTION_10_14();
  v45(v22, v1);
  OUTLINED_FUNCTION_162(OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_playbackDidPlayToEndObserver);
  v24 = [v18 defaultCenter];
  v25 = v20();
  v26 = v40;
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_23_9(v27);
  OUTLINED_FUNCTION_27_15();
  v28 = v37;
  sub_1E4200844();
  OUTLINED_FUNCTION_10_14();
  v29 = v26;
  v30 = v45;
  v45(v29, v28);
  OUTLINED_FUNCTION_162(OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_playbackDidPauseObserver);
  v31 = [v18 defaultCenter];
  v32 = v20();
  v33 = v41;
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_23_9(v34);
  OUTLINED_FUNCTION_27_15();
  sub_1E4200844();
  OUTLINED_FUNCTION_10_14();
  v30(v33, v28);
  return OUTLINED_FUNCTION_162(OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_playbackDidStopObserver);
}

void *sub_1E3DEA460()
{
  v1 = OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_backgroundMediaController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3DEA4A8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_backgroundMediaController;
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_backgroundMediaController, &v12);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_backgroundMediaController;
  v7 = a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v8 = *(v2 + v6);
  if (v8)
  {
    v9 = v8 == v5;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    [v10 setAnimateImageChange_];
    [v10 setClearPreviousImageBeforeLoading_];
    [v10 setPlaybackEnabled_];
    if (*(v2 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_playbackDidStartObserver))
    {

      sub_1E42004E4();
    }

    if (*(v2 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_playbackDidStopObserver))
    {

      sub_1E42004E4();
    }

    if (*(v2 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_playbackDidPlayToEndObserver))
    {

      sub_1E42004E4();
    }

    if (*(v2 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_playbackDidPauseObserver))
    {

      sub_1E42004E4();
    }

    v11 = [v10 view];
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD8))(v11);
    sub_1E3DE9FD4();
  }
}

void (*sub_1E3DEA65C())(uint64_t a1, char a2)
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_18_4(v3) + 32) = v0;
  v4 = OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_backgroundMediaController;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return sub_1E3DEA6D8;
}

void sub_1E3DEA6D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E3DEA4A8(v3);
  }

  else
  {
    sub_1E3DEA4A8(*(*a1 + 24));
  }

  free(v2);
}

double sub_1E3DEA7B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_scrollViewMonitor;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_scrollViewMonitor], &v14);
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_scrollViewMonitor;

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = *&v1[v5];
  if (v4)
  {
    if (v6)
    {
      v7 = v6 == v4;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      goto LABEL_15;
    }
  }

  else if (!v6)
  {
    goto LABEL_15;
  }

  v8 = [v1 vuiCellView];
  if (v8)
  {
    v9 = v8;
    if (v4)
    {
      (*(*v4 + 296))(v8);
    }

    v10 = *&v1[v5];
    if (v10)
    {
      OUTLINED_FUNCTION_4_0();
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = *(*v10 + 288);

      v12(v9, 1, sub_1E3DEF02C, v11);
    }
  }

LABEL_15:

  return result;
}

void (*sub_1E3DEA960())(uint64_t a1, char a2)
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_18_4(v3) + 32) = v0;
  v4 = OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_scrollViewMonitor;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + v4);

  return sub_1E3DEA9DC;
}

void sub_1E3DEA9DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E3DEA7B8(v4);
  }

  else
  {
    sub_1E3DEA7B8(v3);
  }

  free(v2);
}

void sub_1E3DEAA40(char a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = [v1 isHidden] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1E324FBDC();
  (*(v5 + 16))(v9, v11, v2);
  v12 = v1;
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  v15 = os_log_type_enabled(v13, v14);
  v78 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v77 = v10;
    v18 = v17;
    v79 = v17;
    *v16 = 136315394;
    v19 = sub_1E41E1364(v12);
    v21 = sub_1E3270FC8(v19, v20, &v79);

    *(v16 + 4) = v21;
    *(v16 + 12) = 1024;
    *(v16 + 14) = a1 & 1;
    _os_log_impl(&dword_1E323F000, v13, v14, "FlowcaseViewCell:%s did change visibility to %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v22 = v18;
    v10 = v77;
    MEMORY[0x1E69143B0](v22, -1, -1);
    MEMORY[0x1E69143B0](v16, -1, -1);
  }

  v23 = (*(v5 + 8))(v9, v2);
  if (!v10)
  {
    v39 = v78;
    v40 = MEMORY[0x1E69E7D40];
    v41 = *((*MEMORY[0x1E69E7D40] & *v78) + 0x230);
    v42 = (v41)(v23);
    if (!v42 || (v43 = v42, v44 = [v42 player], v43, !v44) || (v45 = objc_msgSend(v44, sel_state), v44, !v45))
    {
      v59 = v41();
      if (!v59)
      {
        return;
      }

      v47 = v59;
      [v59 setPlaybackEnabled_];
      goto LABEL_41;
    }

    v46 = objc_opt_self();
    v47 = v45;
    v48 = [v46 playing];
    if (v48)
    {
      v49 = v48;
      sub_1E3280A90(0, &qword_1EE23B280, 0x1E69D5A40);
      v50 = sub_1E4206F64();

      if (v50)
      {
        *(v39 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_waitingToShowImageWhilePaused) = 1;
        v51 = v41();
        [v51 pause];

        *(v39 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_ignorePlaybackStop) = 1;
        sub_1E3DEE638(1);
        v52 = (*((*v40 & *v39) + 0x88))();
        if (v52)
        {
          v53 = v52;
          v54 = _s19FlowcaseOverlayViewCMa();
          if (OUTLINED_FUNCTION_31_60(v54))
          {
            OUTLINED_FUNCTION_2_191();
            (*(v55 + 1240))(0, 1);
          }
        }

        OUTLINED_FUNCTION_4_0();
        v56 = swift_allocObject();
        *(v56 + 16) = v39;
        v57 = *((*v40 & *v39) + 0x148);
        v58 = v39;
        v57(0, sub_1E3DEEF98, v56);

        goto LABEL_41;
      }
    }

    else
    {
    }

    if ((*(v39 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_waitingToShowImageWhilePaused) & 1) == 0)
    {
      v73 = v41();
      if (v73)
      {
        v74 = v73;
        [v73 setPlaybackEnabled_];

        v47 = v74;
      }
    }

    goto LABEL_41;
  }

  v26 = TVAppFeature.isEnabled.getter(17, v24, v25);
  v27 = v78;
  if (v26)
  {
    OUTLINED_FUNCTION_7_20();
    v29 = (*(v28 + 560))();
    if (v29)
    {
      v30 = v29;
      v31 = [v29 hasBackgroundVideo];

      if ((v31 & 1) == 0)
      {
        OUTLINED_FUNCTION_10_131();
        v33 = (*(v32 + 584))();
        if (v33)
        {
          v34 = v33;
          OUTLINED_FUNCTION_10_131();
          v36 = (*(v35 + 488))();
          if (v37)
          {
            v38 = v37;
          }

          else
          {
            v36 = 0;
            v38 = 0xE000000000000000;
          }

          (*(*v34 + 272))(v36, v38);
        }
      }
    }
  }

  v60 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x230);
  v61 = v60();
  if (!v61 || (v62 = v61, v63 = [v61 isPlaybackEnabled], v62, (v63 & 1) == 0))
  {
    v64 = v60();
    [v64 setPlaybackEnabled_];
  }

  OUTLINED_FUNCTION_10_131();
  if ((*(v65 + 536))())
  {
    OUTLINED_FUNCTION_30();
    v67 = (*(v66 + 1776))();

    if ((v67 & 1) == 0)
    {
      OUTLINED_FUNCTION_10_131();
      v69 = 14.0;
      if ((*(v68 + 136))())
      {
        OUTLINED_FUNCTION_118();
        v70 = _s19FlowcaseOverlayViewCMa();
        if (OUTLINED_FUNCTION_22_10(v70))
        {
          OUTLINED_FUNCTION_64();
          v72 = (*(v71 + 1200))();

          v69 = v72 + 14.0;
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_10_131();
      v47 = (*(v75 + 560))();
      [v47 setLegibleContentInsets_];
LABEL_41:
    }
  }
}

id sub_1E3DEB204()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_itemId);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_visibilitySubscription) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_flowcaseLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_backgroundMediaController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_showcasePlaybackManager) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_scrollViewMonitor) = 0;
  *&v3 = OUTLINED_FUNCTION_19_110(&OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_imageViewModel);
  *v4 = v3;
  v4[1] = v3;
  v4[2] = v3;
  v4[3] = v3;
  OUTLINED_FUNCTION_12_124(v5);
  v17 = type metadata accessor for FlowcaseViewCell();
  v6 = OUTLINED_FUNCTION_2_0();
  v9 = objc_msgSendSuper2(v7, v8, v6, v0, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E4299720;
  v11 = sub_1E41FFE44();
  v12 = MEMORY[0x1E69DC0C8];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = sub_1E41FFF64();
  v14 = MEMORY[0x1E69DC130];
  *(v10 + 48) = v13;
  *(v10 + 56) = v14;
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = ObjectType;
  v15 = v9;
  sub_1E4206EC4();

  swift_unknownObjectRelease();

  return v15;
}

void sub_1E3DEB3B8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_itemId);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_visibilitySubscription) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_flowcaseLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_backgroundMediaController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_showcasePlaybackManager) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_scrollViewMonitor) = 0;
  *&v2 = OUTLINED_FUNCTION_19_110(&OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_imageViewModel);
  v3[2] = v2;
  v3[3] = v2;
  *v3 = v2;
  v3[1] = v2;
  OUTLINED_FUNCTION_12_124(v4);
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3DEB4A0(uint64_t a1)
{
  v2 = v1;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for FlowcaseViewCell();
  objc_msgSendSuper2(&v23, sel_vui_prepareForReuse);
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 184))();
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    OUTLINED_FUNCTION_20_2();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v6 setImageProxy_];
    }
  }

  OUTLINED_FUNCTION_1_24();
  v7 += 70;
  v8 = *v7;
  v9 = (*v7)();
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E4298880;
    v12 = objc_allocWithZone(VUIMediaInfo);
    OUTLINED_FUNCTION_25();
    *(v11 + 32) = sub_1E376538C(v13, v14, v15, v16);
    sub_1E39F8914(v11, v10);
  }

  v17 = v8();
  if (v17)
  {
    v18 = v17;
    [v17 setPlaybackEnabled_];
  }

  v19 = v8();
  if (v19)
  {
    v20 = v19;
    [v19 setLegibleContentInsets_];
  }

  OUTLINED_FUNCTION_1_24();
  result = (*(v21 + 520))(0);
  v2[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_isPlaybackStoppedOrStopping] = 0;
  return result;
}

void sub_1E3DEB6E4(uint64_t a1, double a2, double a3)
{
  v6 = v3;
  LOBYTE(v3) = a1;
  v45.receiver = v6;
  v45.super_class = type metadata accessor for FlowcaseViewCell();
  objc_msgSendSuper2(&v45, sel_vui_layoutSubviews_computationOnly_, v3 & 1, a2, a3);
  if (v3)
  {
    goto LABEL_38;
  }

  if ([objc_opt_self() isPad])
  {
    OUTLINED_FUNCTION_24_85();
    if ((v3 & 1) != 0 || (v4 == v9 ? (v11 = v5 == v10) : (v11 = 0), !v11))
    {
      OUTLINED_FUNCTION_18_1();
      v13 = (*(v12 + 184))();
      v14 = *&v6[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_imageViewModel];

      sub_1E3DEE2E0(v13, v14, v6);

      OUTLINED_FUNCTION_18_1();
      if ((*(v15 + 136))())
      {
        OUTLINED_FUNCTION_118();
        v16 = _s19FlowcaseOverlayViewCMa();
        if (OUTLINED_FUNCTION_22_10(v16))
        {
          OUTLINED_FUNCTION_64();
          v3 = (*(v17 + 904))();
        }

        else
        {
          v3 = 0;
        }
      }

      else
      {
        v3 = 0;
      }

      v18 = *&v6[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_alphaImageViewModel];

      sub_1E3DEE2E0(v3, v18, v6);
    }

    OUTLINED_FUNCTION_24_85();
    if ((v3 & 1) != 0 || (v4 == v19 ? (v21 = v5 == v20) : (v21 = 0), !v21))
    {
      OUTLINED_FUNCTION_18_1();
      if ((*(v22 + 536))())
      {
        OUTLINED_FUNCTION_26_0();
        v24 = (*(v23 + 1560))();
      }

      else
      {
        v24 = 7;
      }

      v25 = *&v6[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_imageViewModel];
      if (v25)
      {
        v26 = *(*v25 + 1040);

        v27 = v26(v24);
      }

      else
      {
        v27 = 0;
      }

      OUTLINED_FUNCTION_18_1();
      v29 = (*(v28 + 136))();
      if (v29)
      {
        v30 = v29;
        v31 = _s19FlowcaseOverlayViewCMa();
        if (OUTLINED_FUNCTION_31_60(v31))
        {
          OUTLINED_FUNCTION_64();
          (*(v32 + 456))(v27 & 1);
        }
      }
    }

    v33 = &v6[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_previousSize];
    v34 = *&v6[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_previousSize];
    v35 = v6[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_previousSize + 16];
    [v6 vuiBounds];
    Width = CGRectGetWidth(v46);
    if ((v35 & 1) != 0 || v34 != Width) && (TVAppFeature.isEnabled.getter(17, v36, v37))
    {
      sub_1E3DED9EC();
    }

    [v6 vuiBounds];
    *v33 = v39;
    *(v33 + 1) = v40;
    v33[16] = 0;
  }

  OUTLINED_FUNCTION_18_1();
  v42 = (*(v41 + 560))();
  if (!v42)
  {
    goto LABEL_38;
  }

  v43 = v42;
  v44 = [v42 view];

  if (v44)
  {
    [v6 vuiBounds];
    [v44 setFrame_];

LABEL_38:
    OUTLINED_FUNCTION_17_4();
    return;
  }

  __break(1u);
}

void sub_1E3DEBB40()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 184))();
  if (!v1)
  {
    return;
  }

  v11 = v1;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 image];
    if (v3)
    {
      v4 = v3;
      OUTLINED_FUNCTION_21();
      v6 = (*(v5 + 136))();
      if (v6)
      {
        v7 = v6;
        v8 = swift_dynamicCastObjCProtocolConditional();
        if (v8)
        {
          v9 = v8;
          OUTLINED_FUNCTION_21();
          (*(v10 + 336))(1);
          [v9 sampleWithImage_];
        }

        else
        {
        }

        return;
      }
    }
  }
}

void *sub_1E3DEBDA0(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_0();
  v9 = (*(v8 + 488))();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (!*(v9 + 16))
  {

    return 0;
  }

  v245[0] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF390D8, &qword_1E42D37F8);
  v12 = sub_1E4148C68(sub_1E3DED9B0, v11, v252);
  v13 = *v252;
  v14 = (*a1 + 392);
  v15 = *v14;
  if (!(*v14)(v12))
  {

    return 0;
  }

  type metadata accessor for FlowcaseCellLayout();
  OUTLINED_FUNCTION_20_2();
  v221 = swift_dynamicCastClass();
  if (!v221)
  {

    return 0;
  }

  v218 = v15;
  if ((TVAppFeature.isEnabled.getter(17, v16, v17) & 1) == 0)
  {
    sub_1E37C5830(a3, v245, &qword_1ECF296C0, &unk_1E429BBE0);
    if (v245[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
      OUTLINED_FUNCTION_37_61();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_16_116();
LABEL_23:
        sub_1E37C5830(a3, v245, &qword_1ECF296C0, &unk_1E429BBE0);
        if (v245[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
          OUTLINED_FUNCTION_37_61();
LABEL_31:
          v20 = swift_dynamicCast();
          if (v20)
          {
            v18 = v252[0];
          }

          else
          {
            v18 = 2;
          }

          v19 = v20 & v252[40];
          goto LABEL_37;
        }

        v23 = v245;
LABEL_36:
        v20 = sub_1E325F748(v23, &qword_1ECF296C0, &unk_1E429BBE0);
        v19 = 0;
        v18 = 2;
LABEL_37:
        *v240 = v216;
        *&v240[16] = v214;
        *&v240[32] = v210;
        *&v240[48] = v207;
        *&v240[64] = v219;
        *&v240[72] = v4;
        *&v240[80] = v3;
        goto LABEL_38;
      }
    }

    else
    {
      sub_1E325F748(v245, &qword_1ECF296C0, &unk_1E429BBE0);
    }

    v219 = 0;
    LOWORD(v3) = 0;
    OUTLINED_FUNCTION_35_60();
    goto LABEL_23;
  }

  sub_1E37C5830(a3, v245, &qword_1ECF296C0, &unk_1E429BBE0);
  if (!v245[3])
  {
    sub_1E325F748(v245, &qword_1ECF296C0, &unk_1E429BBE0);
LABEL_18:
    sub_1E37C5830(a3, v229, &qword_1ECF296C0, &unk_1E429BBE0);
    if (v229[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
      OUTLINED_FUNCTION_27_73();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_16_116();
LABEL_29:
        sub_1E37C5830(a3, v229, &qword_1ECF296C0, &unk_1E429BBE0);
        if (v229[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
          OUTLINED_FUNCTION_27_73();
          goto LABEL_31;
        }

        v23 = v229;
        goto LABEL_36;
      }

      LOWORD(v3) = 0;
      v219 = 0;
    }

    else
    {
      sub_1E325F748(v229, &qword_1ECF296C0, &unk_1E429BBE0);
      v219 = 0;
      LOWORD(v3) = 0;
    }

    OUTLINED_FUNCTION_35_60();
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
  v3 = v252;
  OUTLINED_FUNCTION_37_61();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v18 = v252[0];
  v19 = v252[40];
  v20 = memcpy(v240, &v252[48], sizeof(v240));
LABEL_38:
  if (v18 != 2 && (v19 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_194();
    v20 = (*(v24 + 1784))();
  }

  v25 = (*v221 + 234);
  v26 = *v25;
  v27 = (*v25)(v20);
  v21 = v13;
  [v21 vuiBounds];
  (*(*v27 + 256))(v28, 0);

  v30 = v26(v29);
  [v21 vuiBounds];
  (*(*v30 + 360))(v31, 0);

  v32 = MEMORY[0x1E69E7D40];
  v33 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x220);

  v33(v221);
  v34 = *(*v221[13] + 1344);
  v35 = v21;

  v37 = v34(v36);

  OUTLINED_FUNCTION_7_20();
  (*(v38 + 168))(v37 & 1);
  v39 = a1[2];
  v40 = a1[3];
  v41 = *((*v32 & *v35) + 0x1F0);

  v41(v39, v40);
  memcpy(v239, v35 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_imageViewContext, 0x52uLL);
  memcpy(v35 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_imageViewContext, v240, 0x52uLL);
  sub_1E37C5830(v240, v252, &unk_1ECF31AB0, qword_1E42CD4C0);
  sub_1E325F748(v239, &unk_1ECF31AB0, qword_1E42CD4C0);
  if ((TVAppFeature.isEnabled.getter(17, v42, v43) & 1) == 0)
  {
    v45 = (*v221)[69];

    v45(v241, v46);

    *v252 = v241[0];
    *&v252[16] = v241[1];
    v252[32] = v242;
    MEMORY[0x1EEE9AC00](v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
    sub_1E4148DE0(sub_1E3DEEDB4);
  }

  v48 = sub_1E373E010(39, v10, v44);
  v49 = objc_opt_self();
  v50 = [v49 defaultCenter];
  v51 = *MEMORY[0x1E69DF860];
  [v50 removeObserver:v35 name:*MEMORY[0x1E69DF860] object:0];

  v217 = v48;
  v213 = v10;
  if (v48 && (v52 = type metadata accessor for ImageViewModel(), (v53 = OUTLINED_FUNCTION_31_60(v52)) != 0))
  {
    v54 = v53;
    v208 = v49;
    v211 = v51;
    OUTLINED_FUNCTION_7_20();
    v56 = *(v55 + 280);

    v58 = v56(v57);
    v59 = *(*v54 + 392);

    v61 = v59(v60);

    if (v61)
    {
      v63 = (*(*v61 + 744))(v62);
    }

    else
    {
      v63 = 0;
    }

    [v58 setVuiBackgroundColor_];

    v65 = (*v221)[195];

    v67 = v65(v66);
    v68 = (*(*v54 + 1032))(v67);
    if (v69)
    {
      v70 = 0;
    }

    else
    {
      v70 = v68;
    }

    v215 = v70;
    if (*&v240[72] == 1)
    {
      sub_1E3DF9E68(v229);
      [v35 vuiBounds];
      v229[0] = v71;
      v229[1] = v72;
      LOBYTE(v229[2]) = 0;
      BYTE1(v229[5]) = 1;
      *v252 = sub_1E3D43D3C();
      v237[2] = v229;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF390E0, &unk_1E42D38F0);
      sub_1E4148DE0(sub_1E37CCD5C);

      memcpy(v245, v229, 0x52uLL);
      v73 = OUTLINED_FUNCTION_27_73();
      memcpy(v73, v74, 0x52uLL);
      sub_1E37CCDA0(v245, v223);
      sub_1E37CCDFC(v252);
      v75 = v245;
    }

    else
    {
      v75 = v240;
    }

    memcpy(v229, v75, 0x52uLL);
    *(v35 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_imageViewModel) = v54;
    sub_1E37C5830(v240, v252, &unk_1ECF31AB0, qword_1E42CD4C0);

    v76 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v77 = *((*MEMORY[0x1E69E7D40] & *v35) + 0xB8);
    v78 = *v76;
    v79 = v77();
    v80 = OUTLINED_FUNCTION_27_73();
    memcpy(v80, v81, 0x52uLL);
    v223[3] = &unk_1F5D869A0;
    v223[4] = &off_1F5D868A0;
    v223[0] = swift_allocObject();
    memcpy((v223[0] + 16), v229, 0x52uLL);
    v82 = OUTLINED_FUNCTION_37_61();
    sub_1E37CCDA0(v82, v83);
    v84 = sub_1E393D9C4(v54, v79, v223, 0);

    sub_1E325F748(v223, &qword_1ECF296C0, &unk_1E429BBE0);
    if (v84)
    {
      [v84 setVuiUserInteractionEnabled_];
      [v84 setContentMode_];
      [v84 setTranslatesAutoresizingMaskIntoConstraints_];
      [v84 setAutoresizingMask_];
    }

    if ((TVAppFeature.isEnabled.getter(17, v85, v86) & 1) != 0 || !v84)
    {
    }

    else
    {
      OUTLINED_FUNCTION_4_194();
      v88 = *(v87 + 552);
      v89 = v84;
      v88(v243);

      v90 = 0.0;
      if ((v244 & 1) == 0)
      {
        v91 = OUTLINED_FUNCTION_6();
        v90 = sub_1E3952BE8(v91, v92, v93, v94);
      }

      [v89 _setContinuousCornerRadius_];
    }

    OUTLINED_FUNCTION_7_20();
    v96 = *(v95 + 192);
    v97 = v84;
    v96(v84);
    v98 = [v208 defaultCenter];
    [v98 addObserver:v35 selector:sel_onImageDidLoad_ name:v211 object:v97];

    v64 = memcpy(v238, v229, 0x52uLL);
  }

  else
  {
    sub_1E37C5830(v240, v252, &unk_1ECF31AB0, qword_1E42CD4C0);
    v64 = memcpy(v238, v240, 0x52uLL);
    v215 = 0;
  }

  if (v218(v64))
  {
    OUTLINED_FUNCTION_30();
    v100 = (*(v99 + 1560))();
  }

  else
  {
    v100 = sub_1E3A2532C();
  }

  sub_1E3D417B8(v100, v245);
  v251 = v247;
  memcpy(v237, v245, sizeof(v237));
  v235[0] = *v246;
  *(v235 + 3) = *&v246[3];
  v220 = v248;
  sub_1E3782C70(&v251);
  if (*&v240[72] != 1)
  {
    memcpy(v252, &v245[1], 0x52uLL);
    sub_1E325F748(v252, &unk_1ECF31AB0, qword_1E42CD4C0);
    memcpy(&v237[1], v240, 0x52uLL);
  }

  OUTLINED_FUNCTION_25();
  v101 = swift_beginAccess();
  v102 = qword_1EE27E500;
  v236 = 0;
  v103 = MEMORY[0x1E69E7D40];
  v104 = (*((*MEMORY[0x1E69E7D40] & *v35) + 0x230))(v101);
  v105 = sub_1E39D7838(&unk_1F5D86460);
  memcpy(v229, v237, 0x60uLL);
  *v231 = *v246;
  *&v231[3] = *&v246[3];
  v212 = v102;
  v229[12] = v102;
  v230 = v236;
  v232 = 0xD000000000000017;
  v233 = 0x80000001E4284190;
  v234 = v220;
  nullsub_1();
  v106 = OUTLINED_FUNCTION_27_73();
  memcpy(v106, v107, 0x82uLL);
  v108 = sub_1E3D41998(a1, v104, v105, v252);

  [v108 setShouldPauseAtEnd_];
  OUTLINED_FUNCTION_40_55();
  v110 = *((*v103 & v109) + 0x238);
  v209 = v108;
  v110(v108);
  OUTLINED_FUNCTION_40_55();
  v112 = (*((*v103 & v111) + 0x118))();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_21();
  (*(v113 + 224))();

  if ((TVAppFeature.isEnabled.getter(17, v114, v115) & 1) == 0)
  {
    OUTLINED_FUNCTION_4_194();
    v117 = *(v116 + 552);

    v117(v249, v118);

    if ((v250 & 1) == 0)
    {
      v119 = OUTLINED_FUNCTION_6();
      sub_1E3952BE8(v119, v120, v121, v122);
    }

    OUTLINED_FUNCTION_7_20();
    (*(v123 + 240))();
  }

  v124 = [v35 vuiLayer];
  if (v124)
  {
    v125 = v124;
    [v124 setBorderWidth_];
  }

  v126 = [v35 vuiLayer];

  if (v126)
  {
    v127 = [*sub_1E3E6097C() CGColor];
    [v126 setBorderColor_];
  }

  OUTLINED_FUNCTION_4_194();
  v129 = *(v128 + 600);

  v131 = v129(v130);

  OUTLINED_FUNCTION_40_55();
  (*((*MEMORY[0x1E69E7D40] & v132) + 0x108))(v131);
  OUTLINED_FUNCTION_7_20();
  v206 = *(v133 + 136);
  v134 = v206();
  if (sub_1E373E010(159, v213, v135))
  {
    OUTLINED_FUNCTION_66_8();
LABEL_81:
    type metadata accessor for UIFactory();
    memset(v223, 0, 40);
    v137 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

    v139 = sub_1E393D92C(v138, v134, v223, 0, v137);

    sub_1E325F748(v223, &qword_1ECF296C0, &unk_1E429BBE0);
    goto LABEL_82;
  }

  if (sub_1E373E010(162, v213, v136))
  {

    goto LABEL_81;
  }

  v204 = v134;
  _s19FlowcaseOverlayViewCMa();
  v165 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_7_20();
  v167 = (*(v166 + 136))();
  OUTLINED_FUNCTION_40_55();
  v201 = *((*v165 & v168) + 0x218);
  v169 = v201();
  v170 = OUTLINED_FUNCTION_17_4();
  sub_1E3A93FDC(v171, v167, v169, v170, v172);
  v139 = v173;

  v174 = v139;
  v176 = sub_1E373E010(33, v213, v175);
  if (v176)
  {
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_20_2();
    v176 = swift_dynamicCastClass();
    v177 = v217;
    if (!v176)
    {

      v176 = 0;
    }
  }

  else
  {
    v177 = v217;
  }

  v134 = v204;
  *(v35 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_alphaImageViewModel) = v176;

  v205 = v174;
  if (v139)
  {
    v179 = swift_dynamicCastClass();
    if (v179)
    {
      v180 = v179;
      OUTLINED_FUNCTION_25();
      v181 = swift_beginAccess();
      v182.n128_u64[0] = qword_1EE27E4F8;
      (*((*MEMORY[0x1E69E7D40] & *v180) + 0x168))(v181, v182);
    }
  }

  if (v177)
  {
    v183 = *(*v177 + 392);

    v185 = v183(v184);
    if (v185)
    {
      v186 = v185;
      if (v139)
      {
        v187 = swift_dynamicCastClass();
        if (v187)
        {
          v199 = *(*v186 + 744);
          v188 = v187;
          v200 = v205;
          v189 = v199();
          v177 = v217;
          (*((*MEMORY[0x1E69E7D40] & *v188) + 0x198))(v189);
        }
      }
    }

    v134 = v204;
  }

  if ((v201)(v178))
  {
    OUTLINED_FUNCTION_26_0();
    v191 = (*(v190 + 1560))();
  }

  else
  {
    v191 = 7;
  }

  v192 = v205;
  if (v177 && (type metadata accessor for ImageViewModel(), swift_dynamicCastClass()))
  {
    OUTLINED_FUNCTION_26_0();
    v194 = (*(v193 + 1040))(v191);
  }

  else
  {
    v194 = 0;
  }

  if (!v139)
  {
    goto LABEL_131;
  }

  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_64();
    v203 = *(v195 + 456);
    v202 = v205;
    v203(v194 & 1);
    v134 = v204;
  }

  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_64();
    v197 = *(v196 + 1240);
    v192 = v198;
    v197(0, 0);
    v134 = v204;

LABEL_131:
    goto LABEL_82;
  }

LABEL_82:

  sub_1E325F748(v238, &unk_1ECF31AB0, qword_1E42CD4C0);

  OUTLINED_FUNCTION_7_20();
  v141 = *(v140 + 144);
  v142 = v139;
  v141(v139);
  v145 = sub_1E39C408C();
  if (v145)
  {
  }

  if (TVAppFeature.isEnabled.getter(10, v143, v144))
  {
    if (v145)
    {
      v146 = v215;
    }

    else
    {
      v146 = 2;
    }

    v147 = (v206)([v35 vui:v146 setOverrideUserInterfaceStyle:?]);
    [v147 vui:v146 setOverrideUserInterfaceStyle:?];

    v148 = v206();
    if (!v148)
    {
      goto LABEL_93;
    }

    v149 = _s19FlowcaseOverlayViewCMa();
    if (OUTLINED_FUNCTION_22_10(v149))
    {
      OUTLINED_FUNCTION_21();
      (*(v150 + 960))();
    }
  }

  else
  {
    v148 = (v206)([v35 vui:v215 setOverrideUserInterfaceStyle:?]);

    [v148 vui:v215 setOverrideUserInterfaceStyle:?];
  }

LABEL_93:
  LOBYTE(v222[0]) = 1;
  (*(*a1 + 776))(v223, v222, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v223[3])
  {
    if (swift_dynamicCast())
    {
      sub_1E3DEEDB8(v222[0], v222[1], v35);
      [v35 vui:1 isAccessibilityElement:?];
      v153 = *MEMORY[0x1E69DD9B8];
      v154 = v35;
      [v154 setAccessibilityTraits_];
      sub_1E399AA9C(MEMORY[0x1E69E7CC0], v154);
    }
  }

  else
  {
    sub_1E325F748(v223, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (TVAppFeature.isEnabled.getter(10, v151, v152))
  {
    OUTLINED_FUNCTION_4_194();
    if ((*(v157 + 1968))())
    {
      OUTLINED_FUNCTION_4_194();
      (*(v158 + 1800))();
      OUTLINED_FUNCTION_26_0();
      v160 = (*(v159 + 1712))();

      if (v160 != 13)
      {
        v161 = j__OUTLINED_FUNCTION_13_30(v160);
        v162 = objc_opt_self();
        v163 = v35;
        v164 = [v162 uiContentSizeCategoryFor_];
        [v163 setMaximumContentSizeCategory_];
      }
    }
  }

  if (TVAppFeature.isEnabled.getter(17, v155, v156))
  {
    sub_1E3DED9EC();
  }

  memcpy(v223, v237, 0x60uLL);
  v223[12] = v212;
  v224 = v236;
  *v225 = v235[0];
  *&v225[3] = *(v235 + 3);
  v226 = 0xD000000000000017;
  v227 = 0x80000001E4284190;
  v228 = v220;
  sub_1E39F8998(v223);
  return v21;
}

id sub_1E3DED9B0@<X0>(void *a2@<X8>)
{
  type metadata accessor for FlowcaseViewCell();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = result;
  return result;
}

void sub_1E3DED9EC()
{
  OUTLINED_FUNCTION_21();
  v0 += 67;
  v1 = *v0;
  if ((*v0)())
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 552))(v21);

    MEMORY[0x1EEE9AC00](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
    sub_1E4148DE0(sub_1E3DEF698);
  }

  if (v1())
  {
    OUTLINED_FUNCTION_30();
    (*(v4 + 552))(&v19);

    if ((v20 & 1) == 0)
    {
      v5 = OUTLINED_FUNCTION_6();
      sub_1E3952BE8(v5, v6, v7, v8);
    }
  }

  OUTLINED_FUNCTION_18_1();
  (*(v9 + 240))();
  OUTLINED_FUNCTION_18_1();
  v11 = (*(v10 + 184))();
  if (v11)
  {
    v12 = v11;
    v13 = 0.0;
    if (v1())
    {
      OUTLINED_FUNCTION_30();
      (*(v14 + 552))(v21);
      v15 = *v21;
      v16 = *&v21[1];
      v17 = *&v21[2];
      v18 = *&v21[3];

      if ((v22 & 1) == 0)
      {
        v13 = sub_1E3952BE8(v15, v16, v17, v18);
      }
    }

    [v12 _setContinuousCornerRadius_];
  }
}

double sub_1E3DEDC60()
{

  OUTLINED_FUNCTION_21_90((v0 + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_imageViewContext));

  return result;
}

id sub_1E3DEDD50(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FlowcaseViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3DEDE78()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 488))();
}

uint64_t sub_1E3DEDECC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 496))();
}

void (*sub_1E3DEDF20())(void *a1)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 504))();
  return sub_1E37C55D4;
}

uint64_t sub_1E3DEDFB4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 608))();
}

uint64_t sub_1E3DEE008()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 616))();
}

void (*sub_1E3DEE05C())(void *a1)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 624))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E3DEE0F0()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 512))();
}

uint64_t sub_1E3DEE144()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 520))();
}

void (*sub_1E3DEE198())(void *a1)
{
  v1 = OUTLINED_FUNCTION_12_11();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_4(v2);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  *(v0 + 32) = (*(v3 + 528))();
  return sub_1E37C55D4;
}

uint64_t sub_1E3DEE22C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 632))();
}

double sub_1E3DEE2E0(void *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return result;
  }

  v5 = *(*a2 + 392);

  if (!v5(v6))
  {
    v7 = 0;
    goto LABEL_9;
  }

  type metadata accessor for ImageLayout();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_9:
    if (!a1)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_46_48();
  Width = CGRectGetWidth(v29);
  (*(*v7 + 208))(*&Width, 0);

  OUTLINED_FUNCTION_46_48();
  Height = CGRectGetHeight(v30);
  (*(*v7 + 312))(COERCE_CGFLOAT(*&Height), 0);

  v10 = *(*v7 + 2288);

  v10(v11);

  if (!a1)
  {
    goto LABEL_16;
  }

LABEL_10:
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    type metadata accessor for LayoutGrid();
    v14 = a1;
    OUTLINED_FUNCTION_46_48();
    v15 = CGRectGetWidth(v31);
    sub_1E3A2579C(v15);
    OUTLINED_FUNCTION_46_48();
    v16 = CGRectGetWidth(v32);
    sub_1E3A2539C(v16);
    if (v7)
    {

      OUTLINED_FUNCTION_8_21([a3 vuiTraitCollection]);
      v18 = v17;
      (*(*v7 + 1640))();
    }

    v19 = OUTLINED_FUNCTION_17_4();
    v22 = sub_1E3C3E520(v20, v19, v21);
    v23 = v22;
    if (v22 && (v24 = v22, v25 = [v13 imageProxy], v26 = objc_msgSend(v24, sel_isEqual_, v25), v24, v25, (v26 & 1) != 0))
    {
    }

    else
    {
      [v13 setImageProxy:v23 clearingExisting:0 completion:0];
    }

    goto LABEL_18;
  }

LABEL_16:

LABEL_18:

  return result;
}

void sub_1E3DEE638(char a1)
{
  if (a1)
  {
    v2 = &v1[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_userInterfaceStyleToRestore];
    if ((v1[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_userInterfaceStyleToRestore + 8] & 1) == 0)
    {
      v3 = *v2;
      [v1 vui:*v2 setOverrideUserInterfaceStyle:?];
      OUTLINED_FUNCTION_21();
      v5 = (*(v4 + 136))();
      [v5 vui:v3 setOverrideUserInterfaceStyle:?];

      *v2 = 0;
      v2[8] = 1;
    }
  }

  else if ([v1 vuiOverrideUserInterfaceStyle] != 2)
  {
    v6 = [v1 vuiOverrideUserInterfaceStyle];
    v7 = &v1[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_userInterfaceStyleToRestore];
    *v7 = v6;
    v7[8] = 0;
    [v1 vui:2 setOverrideUserInterfaceStyle:?];
    OUTLINED_FUNCTION_21();
    v9 = (*(v8 + 136))();
    [v9 vui:2 setOverrideUserInterfaceStyle:?];
  }
}

double sub_1E3DEE79C(uint64_t a1)
{
  v3 = v1;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for FlowcaseViewCell();
  objc_msgSendSuper2(&v20, sel_vui_cellWillBeDisplayed);
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  if ((*(v5 + 136))())
  {
    OUTLINED_FUNCTION_118();
    v8 = _s19FlowcaseOverlayViewCMa();
    if (OUTLINED_FUNCTION_22_10(v8))
    {
      OUTLINED_FUNCTION_64();
      (*(v9 + 1208))();
    }
  }

  if ((TVAppFeature.isEnabled.getter(17, v6, v7) & 1) == 0 || (v10 = objc_opt_self(), ([v10 isPad] & 1) == 0) && (objc_msgSend(v10, sel_isPhone) & 1) == 0 && (objc_msgSend(v10, sel_isMac) & 1) == 0)
  {
    OUTLINED_FUNCTION_18_1();
    if (!(*(v12 + 608))())
    {
      v13 = [v3 superview];
      if (!v13)
      {
        goto LABEL_16;
      }

      while (1)
      {
        objc_opt_self();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v14 = [v13 superview];

        v13 = v14;
        if (!v14)
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_118();
      type metadata accessor for ScrollViewVisibilityMonitor();
      v15 = v13;
      OUTLINED_FUNCTION_51_1();
      j__OUTLINED_FUNCTION_18();
      sub_1E414F9CC();
      v16 = *((*v4 & *v3) + 0x268);

      v16(v17);
    }

LABEL_16:
    OUTLINED_FUNCTION_18_1();
    if ((*(v18 + 608))())
    {
      OUTLINED_FUNCTION_30();
      (*(v19 + 304))();
    }
  }

  return result;
}

uint64_t sub_1E3DEEA90(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for FlowcaseViewCell();
  objc_msgSendSuper2(&v15, sel_vui_cellDidEndDisplaying);
  OUTLINED_FUNCTION_21();
  if ((*(v3 + 136))())
  {
    OUTLINED_FUNCTION_118();
    v6 = _s19FlowcaseOverlayViewCMa();
    if (OUTLINED_FUNCTION_22_10(v6))
    {
      OUTLINED_FUNCTION_64();
      (*(v7 + 1216))();
    }
  }

  if ((TVAppFeature.isEnabled.getter(17, v4, v5) & 1) == 0 || (v8 = objc_opt_self(), result = [v8 isPad], (result & 1) == 0) && (result = objc_msgSend(v8, sel_isPhone), (result & 1) == 0))
  {
    OUTLINED_FUNCTION_3_3();
    v11 = (*(v10 + 608))();
    if (v11)
    {
      v12 = v11;
      v13 = OUTLINED_FUNCTION_51_1();
      (*(*v12 + 312))(v13 & 1);
    }

    OUTLINED_FUNCTION_3_3();
    return (*(v14 + 616))(0);
  }

  return result;
}

void sub_1E3DEECA0(void *a1)
{
  OUTLINED_FUNCTION_64();
  v3 = (*(v2 + 536))();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for LayoutGrid();
    sub_1E3A256EC();
    OUTLINED_FUNCTION_8_21([a1 vuiTraitCollection]);
    v6 = v5;
    (*(*v4 + 1640))();
  }
}

void sub_1E3DEEDB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 vui:v4 setAccessibilityText:?];
}

uint64_t sub_1E3DEEE1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 130))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 120);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3DEEE7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 130) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 130) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

void sub_1E3DEEF00()
{
  if ([*(v0 + 16) vuiLayer])
  {
    v1 = OUTLINED_FUNCTION_6();
    v6 = v2;
    [v2 setCornerRadius_];
  }
}

void sub_1E3DEEF98()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_waitingToShowImageWhilePaused) = 0;
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 560))();
  [v2 setPlaybackEnabled_];
}

void sub_1E3DEF02C(char a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((TVAppFeature.isEnabled.getter(17, v3, v4) & 1) == 0)
    {
      OUTLINED_FUNCTION_21();
      (*(v6 + 632))(a1 & 1);
    }
  }
}

void sub_1E3DEF0C0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_ignorePlaybackStop) = 0;
    *(Strong + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_isPlaybackStoppedOrStopping) = 0;
    sub_1E3DEE638(0);
    OUTLINED_FUNCTION_1_24();
    v4 = *(v3 + 136);
    v5 = v2;
    OUTLINED_FUNCTION_66_8();
    v6 = v4();

    if (v6)
    {
      v7 = _s19FlowcaseOverlayViewCMa();
      if (OUTLINED_FUNCTION_31_60(v7))
      {
        OUTLINED_FUNCTION_2_191();
        (*(v8 + 1240))(1, 1);
      }
    }

    OUTLINED_FUNCTION_1_24();
    (*(v9 + 328))(1, 0, 0);
  }
}

void sub_1E3DEF1FC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_ignorePlaybackStop) = 1;
    *(Strong + OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_isPlaybackStoppedOrStopping) = 1;
    sub_1E3DEE638(1);
    v3 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_1_24();
    v5 = *(v4 + 136);
    v6 = v2;
    OUTLINED_FUNCTION_66_8();
    v7 = v5();

    if (v7)
    {
      v8 = _s19FlowcaseOverlayViewCMa();
      if (OUTLINED_FUNCTION_31_60(v8))
      {
        OUTLINED_FUNCTION_2_191();
        (*(v9 + 1240))(0, 1);
      }
    }

    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v11 = *((*v3 & *v0) + 0x148);
    v12 = v0;
    v11(0, sub_1E3DEF5FC, v10);

    if ((TVAppFeature.isEnabled.getter(17, v13, v14) & 1) != 0 && (OUTLINED_FUNCTION_1_24(), (v16 = (*(v15 + 584))()) != 0))
    {
      v17 = v16;
      OUTLINED_FUNCTION_1_24();
      v19 = (*(v18 + 488))();
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      (*(*v17 + 272))(v19, v21);
    }

    else
    {
    }
  }
}

void sub_1E3DEF46C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_isPlaybackStoppedOrStopping] = 1;
  }
}

void sub_1E3DEF4B8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3DEE638(1);
    v1[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_isPlaybackStoppedOrStopping] = 1;
    if ((v1[OBJC_IVAR____TtC8VideosUI16FlowcaseViewCell_ignorePlaybackStop] & 1) == 0)
    {
      OUTLINED_FUNCTION_1_24();
      v3 = *(v2 + 136);
      v4 = v1;
      OUTLINED_FUNCTION_66_8();
      v5 = v3();

      if (v5)
      {
        v6 = _s19FlowcaseOverlayViewCMa();
        if (OUTLINED_FUNCTION_31_60(v6))
        {
          OUTLINED_FUNCTION_2_191();
          (*(v7 + 1240))(0, 1);
        }
      }

      OUTLINED_FUNCTION_1_24();
      (*(v8 + 328))(0, 0, 0);
    }
  }
}

void sub_1E3DEF5FC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 560))();
  if (v1)
  {
    v2 = v1;
    [v1 setPlaybackEnabled_];
  }
}

uint64_t sub_1E3DEF69C(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3DEF6D8(v1);
}

uint64_t sub_1E3DEF6D8(char a1)
{
  *(v1 + 104) = 0;
  *(v1 + 98) = a1;
  v2 = sub_1E3C2F9A0();

  v3 = [objc_opt_self() isTV];
  if (v3)
  {
    sub_1E3755B54();
    v4 = objc_opt_self();
    v5 = [v4 blackColor];
    v6 = [v5 colorWithAlphaComponent_];

    v7 = [v4 whiteColor];
    v8 = [v7 colorWithAlphaComponent_];

    v9 = sub_1E3E5F2F8(v6, v8);
    v10 = 9;
    v11 = 7;
  }

  else
  {
    v9 = *sub_1E3E5FD88();
    v10 = 2;
    v11 = 10;
  }

  v12 = (*v2 + 1704);
  v13 = *v12;
  v14 = (*v12)();
  (*(*v14 + 1696))(v10);

  (v13)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1792))(v11);

  if (v3 && (v17 = sub_1E374E8E4(*(v2 + 98), 1), (v17 & 1) != 0))
  {
    v18 = v13();
    (*(*v18 + 512))(1);

    v20 = (v13)(v19);
    v21 = *sub_1E3E5FD88();
  }

  else
  {
    v20 = (v13)(v17);
    v21 = v9;
  }

  v22 = *(*v20 + 680);
  v23 = v21;
  v22(v21);

  (v13)(v24);
  OUTLINED_FUNCTION_2_1();
  (*(v25 + 2128))(0x3FE6666666666666, 0);

  (v13)(v26);
  OUTLINED_FUNCTION_2_1();
  (*(v27 + 2056))(1, 0);

  if (([objc_opt_self() isSUIEnabled] & 1) == 0)
  {
    sub_1E374E8E4(*(v2 + 98), 2);
  }

  v28 = v13();
  sub_1E3952C58();
  v38[0] = v29;
  v38[1] = v30;
  v38[2] = v31;
  v38[3] = v32;
  v39 = 0;
  (*(*v28 + 160))(v38);

  (v13)(v33);
  OUTLINED_FUNCTION_2_1();
  (*(v34 + 2008))(1);

  v36 = (v13)(v35);
  sub_1E3C37CBC(v36, 23);

  return v2;
}

uint64_t sub_1E3DEFBE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E3DEFC38(a1);
  v4 = *(*v2 + 680);

  return v4(v3);
}

id sub_1E3DEFC38(char a1)
{
  if (a1 == 2)
  {
    v1 = 0.5;
  }

  else
  {
    v1 = 0.75;
  }

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1E4205ED4();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      v1 = v7;
    }
  }

  else
  {
    sub_1E329505C(v10);
  }

  v5 = [*sub_1E3E5FD88() colorWithAlphaComponent_];

  return v5;
}

void *sub_1E3DEFDC0()
{
  type metadata accessor for ImageLayout();
  v0[13] = sub_1E3BD61D8();
  type metadata accessor for MonogramLayout();
  v0[14] = sub_1E4097BF8(0);
  type metadata accessor for TextLayout();
  v0[15] = sub_1E383BCC0();
  v0[16] = sub_1E383BCC0();
  v0[17] = sub_1E383BCC0();
  type metadata accessor for TextBadgeLayout(0);
  v1 = OUTLINED_FUNCTION_51_1();
  v0[18] = sub_1E382F55C(3, 1, v1 & 1);
  v2 = OUTLINED_FUNCTION_51_1();
  v0[19] = sub_1E382F55C(4, 1, v2 & 1);
  v0[20] = sub_1E3BD61D8();
  type metadata accessor for ButtonLayout();
  v0[21] = sub_1E3BBB724();
  v3 = sub_1E3C2F9A0();

  v4 = *sub_1E3E5FB0C();
  sub_1E3C2DE50();
  v5 = *sub_1E3E5FB88();
  sub_1E3C2E258();
  v6.n128_u64[0] = 12.0;
  j__OUTLINED_FUNCTION_7_78(v6);
  OUTLINED_FUNCTION_10_132();
  v7.n128_u64[0] = 20.0;
  v8 = j__OUTLINED_FUNCTION_7_78(v7);
  OUTLINED_FUNCTION_17_116(v8, v9, v10, v11);
  v12.n128_u64[0] = 14.0;
  v13 = j__OUTLINED_FUNCTION_7_78(v12);
  OUTLINED_FUNCTION_8_8(v13, v14, v15, v16);
  type metadata accessor for UIEdgeInsets();
  v18 = v17;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_12_125();
  v19 = OUTLINED_FUNCTION_11_136();
  v27 = OUTLINED_FUNCTION_0_249(v19, v20, v21, v22, v23, v24, v25, v26, v334, v349, v365, v381, v397);
  sub_1E3C2FCB8(v27, v28, v29, v30, v31, v32, v18, v33);
  v42 = OUTLINED_FUNCTION_20_97(v34, v35, v36, v37, v38, v39, v40, v41, v335, v350, v366, v382, v397);
  memcpy(v42, v43, 0xE9uLL);
  v44 = OUTLINED_FUNCTION_18();
  v52 = OUTLINED_FUNCTION_28_2(v44, v45, v46, v47, v48, v49, v50, v51, v336, v351, v367, v383, v397);
  sub_1E3C2FDFC(v52, 1, v53, v18);
  v54 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_14_133();
  v55 = OUTLINED_FUNCTION_13_137();
  v63 = OUTLINED_FUNCTION_0_249(v55, v56, v57, v58, v59, v60, v61, v62, v337, v352, v368, v384, 0);
  sub_1E3C2FCB8(v63, v64, v65, v66, v67, v68, v54, v69);
  v78 = OUTLINED_FUNCTION_20_97(v70, v71, v72, v73, v74, v75, v76, v77, v338, v353, v369, v385, v397);
  memcpy(v78, v79, 0x59uLL);
  v80 = OUTLINED_FUNCTION_18();
  v88 = OUTLINED_FUNCTION_28_2(v80, v81, v82, v83, v84, v85, v86, v87, v339, v354, v370, v386, v397);
  sub_1E3C2FDFC(v88, 6, v89, v54);
  v398 = 0;
  v418 = 20.0;
  v419 = 0;
  v415 = 12.0;
  v416 = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_14_133();
  v90 = OUTLINED_FUNCTION_13_137();
  v98 = OUTLINED_FUNCTION_0_249(v90, v91, v92, v93, v94, v95, v96, v97, v340, v355, v371, v387, 0);
  sub_1E3C2FCB8(v98, v99, v100, v101, v102, v103, v54, v104);
  v113 = OUTLINED_FUNCTION_20_97(v105, v106, v107, v108, v109, v110, v111, v112, v341, v356, v372, v388, v397);
  memcpy(v113, v114, 0x59uLL);
  v115 = OUTLINED_FUNCTION_18();
  v123 = OUTLINED_FUNCTION_28_2(v115, v116, v117, v118, v119, v120, v121, v122, v342, v357, v373, v389, v397);
  sub_1E3C2FDFC(v123, 10, v124, v54);
  sub_1E39537A8();
  OUTLINED_FUNCTION_10_132();
  sub_1E39537A8();
  OUTLINED_FUNCTION_17_116(v125, v126, v127, v128);
  sub_1E39537A8();
  OUTLINED_FUNCTION_8_8(v129, v130, v131, v132);
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_12_125();
  v133 = OUTLINED_FUNCTION_11_136();
  v400[0] = v402[0];
  v400[1] = v402[1];
  v401 = v403;
  v141 = OUTLINED_FUNCTION_0_249(v133, v134, v135, v136, v137, v138, v139, v140, v343, v358, v374, v390, v397);
  sub_1E3C2FCB8(v141, v142, v143, v144, v145, v146, v18, v147);
  v156 = OUTLINED_FUNCTION_20_97(v148, v149, v150, v151, v152, v153, v154, v155, v344, v359, v375, v391, v397);
  memcpy(v156, v157, 0xE9uLL);
  v158 = OUTLINED_FUNCTION_18();
  v166 = OUTLINED_FUNCTION_28_2(v158, v159, v160, v161, v162, v163, v164, v165, v345, v360, v376, v392, v397);
  sub_1E3C2FDFC(v166, 17, v167, v18);
  OUTLINED_FUNCTION_13_12();
  sub_1E3C2CE80();
  OUTLINED_FUNCTION_13_12();
  sub_1E3C2D200();
  sub_1E3C2D080();
  sub_1E3C2CC44();
  if (v420)
  {
    v168 = 0.0;
  }

  else
  {
    v168 = v418;
  }

  sub_1E3C2CC44();
  v169 = OUTLINED_FUNCTION_15_122(v399);
  v171 = v170 - v168 - v169;
  OUTLINED_FUNCTION_5_0((v3 + 14), v413);
  OUTLINED_FUNCTION_8();
  v173 = *(v172 + 312);

  v173(*&v171, 0);

  OUTLINED_FUNCTION_8();
  v175 = *(v174 + 208);

  v175(*&v171, 0);

  v377 = *(MEMORY[0x1E69DDCE0] + 8);
  v393 = *MEMORY[0x1E69DDCE0];
  v408 = *MEMORY[0x1E69DDCE0];
  v409 = v377;
  OUTLINED_FUNCTION_2_192();
  v177 = *(v176 + 160);

  v177(&v408);

  OUTLINED_FUNCTION_36();
  v179 = v178 + 1744;
  v180 = *(v178 + 1744);

  v180(v181);
  OUTLINED_FUNCTION_4_9();
  (*(*v179 + 208))(0, 1);

  OUTLINED_FUNCTION_36();
  v183 = v182 + 1744;
  v184 = *(v182 + 1744);

  v184(v185);
  OUTLINED_FUNCTION_4_9();
  (*(*v183 + 312))(0, 1);

  OUTLINED_FUNCTION_36();
  v187 = v186 + 1744;
  v188 = *(v186 + 1744);

  v188(v189);
  OUTLINED_FUNCTION_4_9();
  (*(*v187 + 440))(0x3FF0000000000000, 0);

  OUTLINED_FUNCTION_36();
  v191 = v190 + 1744;
  v192 = *(v190 + 1744);

  v192(v193);
  OUTLINED_FUNCTION_4_9();
  (*(*v191 + 1712))(1);

  OUTLINED_FUNCTION_36();
  v195 = v194 + 1768;
  v196 = *(v194 + 1768);

  v196(v197);
  OUTLINED_FUNCTION_4_9();
  (*(*v195 + 1816))(v171 * 116.0 / 255.0, 0);

  OUTLINED_FUNCTION_5_0((v3 + 13), v414);
  OUTLINED_FUNCTION_36();
  v199 = *(v198 + 1712);

  v199(1);

  v200 = v3[13];
  OUTLINED_FUNCTION_36();
  v202 = *(v201 + 1808);

  v202(3);

  OUTLINED_FUNCTION_12_13();
  v203 = *sub_1E3E60A14();
  v204 = *(*v200 + 872);
  v205 = v203;
  v204(v203);

  OUTLINED_FUNCTION_12_13();
  v206 = *sub_1E418A500();
  (*(*v200 + 440))(v206, 0);

  v207 = v3[13];
  OUTLINED_FUNCTION_36();
  v209 = *(v208 + 2000);

  v209(0);

  OUTLINED_FUNCTION_12_13();
  sub_1E39537A8();
  v408 = v210;
  v409 = v211;
  v410 = v212;
  v411 = v213;
  v412 = 0;
  (*(*v207 + 560))(&v408);

  sub_1E3C2D080();
  sub_1E3C2CC44();
  if (v417)
  {
    v214 = 0.0;
  }

  else
  {
    v214 = v415;
  }

  sub_1E3C2CC44();
  v215 = OUTLINED_FUNCTION_15_122(v420);
  v217 = v216 - v214 - v215;
  OUTLINED_FUNCTION_8();
  v219 = *(v218 + 312);

  v219(*&v217, 0);

  OUTLINED_FUNCTION_8();
  v221 = *(v220 + 208);

  v221(0, 1);

  OUTLINED_FUNCTION_12_13();
  v222.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v222);
  OUTLINED_FUNCTION_10_132();
  OUTLINED_FUNCTION_8();
  (*(v223 + 184))(&v397);

  type metadata accessor for StandardLockupCellLayout();
  OUTLINED_FUNCTION_5_0((v3 + 15), v421);

  sub_1E3D8D0C0(v224);

  LOBYTE(v408) = 22;
  LOBYTE(v397) = 27;
  LOBYTE(v418) = 27;
  LOBYTE(v415) = 27;
  LOBYTE(v407[0]) = 14;
  LOBYTE(v406[0]) = 19;
  OUTLINED_FUNCTION_8();
  v226 = *(v225 + 1608);

  OUTLINED_FUNCTION_8_152();
  v226(48, 0);

  v227 = v3[15];

  v408 = *sub_1E3E5FDEC();
  v397 = 0;
  v418 = 0.0;
  v228 = v408;
  v229 = *sub_1E3E60364();
  v415 = *&v229;
  v407[0] = 0;
  v406[0] = 0;
  v230 = *(*v227 + 1608);
  sub_1E3755B54();
  v231 = v229;
  OUTLINED_FUNCTION_8_152();
  v230(21, 0);

  v233 = v377;
  v232 = v393;
  v408 = v393;
  v409 = v377;
  OUTLINED_FUNCTION_2_192();
  v235 = *(v234 + 160);

  v235(&v408);

  LOBYTE(v397) = 11;
  LOBYTE(v418) = 11;
  LOBYTE(v415) = 11;
  LOBYTE(v407[0]) = 11;
  LOBYTE(v406[0]) = 11;
  v405[0] = 5;
  OUTLINED_FUNCTION_8();
  v237 = *(v236 + 1608);

  v237(54, 0, &v397, &v418, &v415, v407, v406, v405);

  OUTLINED_FUNCTION_36();
  v239 = *(v238 + 1936);

  v239(2);

  OUTLINED_FUNCTION_5_0((v3 + 16), v422);
  v240 = v3[16];

  v241 = *sub_1E3E5FD88();
  v242 = *(*v240 + 680);
  v243 = v241;
  v242(v241);

  OUTLINED_FUNCTION_36();
  v245 = *(v244 + 2056);

  v245(2, 0);

  OUTLINED_FUNCTION_36();
  v247 = *(v246 + 2080);

  v247(2, 0);

  OUTLINED_FUNCTION_36();
  v249 = *(v248 + 1984);

  v249(5);

  LOBYTE(v397) = 17;
  LOBYTE(v418) = 15;
  LOBYTE(v415) = 3;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_21_11();
  v250 = OUTLINED_FUNCTION_20_6();
  LOBYTE(v400[0]) = v402[0];
  v258 = OUTLINED_FUNCTION_0_249(v250, v251, v252, v253, v254, v255, v256, v257, &qword_1F5D54AF8, v361, v377, v393, v397);
  sub_1E3C2FCB8(v258, v259, v260, v261, v262, v263, &qword_1F5D549D8, v264);
  OUTLINED_FUNCTION_9_138();
  OUTLINED_FUNCTION_36();
  v273 = OUTLINED_FUNCTION_19_111(v265, v266, v267, v268, v269, v270, v271, v272, v346, v362, v378, v394, v397);
  v274(v273);

  OUTLINED_FUNCTION_36();
  v276 = *(v275 + 256);

  v277 = OUTLINED_FUNCTION_13_12();
  v276(v277);

  OUTLINED_FUNCTION_5_0((v3 + 17), v423);
  LOBYTE(v397) = 19;
  LOBYTE(v418) = 15;
  LOBYTE(v415) = 14;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_21_11();
  v278 = OUTLINED_FUNCTION_20_6();
  LOBYTE(v400[0]) = v402[0];
  v286 = OUTLINED_FUNCTION_0_249(v278, v279, v280, v281, v282, v283, v284, v285, v347, v363, v379, v395, v397);
  sub_1E3C2FCB8(v286, v287, v288, v289, v290, v291, &qword_1F5D549D8, v292);
  OUTLINED_FUNCTION_9_138();
  OUTLINED_FUNCTION_36();
  v301 = OUTLINED_FUNCTION_19_111(v293, v294, v295, v296, v297, v298, v299, v300, v348, v364, v380, v396, v397);
  v302(v301);

  v303 = v3[17];

  v304 = *sub_1E3E5FDEC();
  v305 = *(*v303 + 680);
  v306 = v304;
  v305(v304);

  OUTLINED_FUNCTION_36();
  v308 = *(v307 + 2056);

  v308(1, 0);

  OUTLINED_FUNCTION_36();
  v310 = *(v309 + 2080);

  v310(1, 0);

  sub_1E3952C88();
  v408 = v311;
  v409 = v312;
  v410 = v313;
  v411 = v314;
  v412 = 0;
  OUTLINED_FUNCTION_8();
  (*(v315 + 160))(&v408);

  OUTLINED_FUNCTION_36();
  v317 = *(v316 + 1984);

  v317(5);

  OUTLINED_FUNCTION_36();
  v319 = *(v318 + 256);

  v320 = OUTLINED_FUNCTION_13_12();
  v319(v320);

  OUTLINED_FUNCTION_5_0((v3 + 18), v400);

  sub_1E3C6E74C();

  OUTLINED_FUNCTION_5_0((v3 + 19), v425);

  sub_1E3C6E74C();

  OUTLINED_FUNCTION_5_0((v3 + 20), v424);

  sub_1E375DA98(v321, 1);

  v408 = v232;
  v409 = v233;
  OUTLINED_FUNCTION_2_192();
  v323 = *(v322 + 160);

  v323(&v408);

  OUTLINED_FUNCTION_5_0((v3 + 13), &v408);

  sub_1E3C37CBC(v324, 39);

  OUTLINED_FUNCTION_5_0((v3 + 14), &v397);

  sub_1E3C37CBC(v325, 41);

  OUTLINED_FUNCTION_5_0((v3 + 15), &v418);

  sub_1E3C37EC8(v326, &unk_1F5D86640);

  OUTLINED_FUNCTION_5_0((v3 + 16), &v415);

  sub_1E3C37CBC(v327, 23);

  OUTLINED_FUNCTION_5_0((v3 + 17), v407);

  sub_1E3C37CBC(v328, 15);

  OUTLINED_FUNCTION_5_0((v3 + 21), v406);

  sub_1E3C37CBC(v329, 67);

  OUTLINED_FUNCTION_5_0((v3 + 18), v405);

  sub_1E3C37CBC(v330, 53);

  OUTLINED_FUNCTION_5_0((v3 + 19), v404);

  sub_1E3C37CBC(v331, 54);

  OUTLINED_FUNCTION_5_0((v3 + 20), v402);

  sub_1E3C37CBC(v332, 31);

  return v3;
}

double sub_1E3DF1180()
{

  return result;
}

uint64_t sub_1E3DF11E8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3DF1258()
{
  v0 = sub_1E3DF11E8();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t sub_1E3DF1318(char a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3DF1368(a1 & 1, a2);
  return v4;
}

uint64_t sub_1E3DF1368(char a1, uint64_t a2)
{
  *(v2 + 16) = 2;
  type metadata accessor for ImageLayout();
  *(v2 + 24) = sub_1E3BD61D8();
  OUTLINED_FUNCTION_3_0(v2 + 16, v7);
  *(v2 + 16) = a1 & 1;
  OUTLINED_FUNCTION_3_0(v2 + 24, &v6);
  *(v2 + 24) = a2;

  return v2;
}

double sub_1E3DF1400(double a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  type metadata accessor for LayoutGrid();
  v12 = sub_1E3A2579C(a1);
  v13 = *(*v6 + 120);
  v14 = *v13();
  v15 = COERCE_DOUBLE((*(v14 + 432))());
  v17 = v16;

  if (v17)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = v15;
  }

  v20 = (*(*v6 + 96))(v18);
  if (v20 != 2)
  {
    if ((v20 & 1) == 0)
    {
      type metadata accessor for BannerUberBackgroundViewLayout();
      sub_1E3DF16A8(a3, a4 & 1, a1, a5, a6);
      v19 = v23;
      goto LABEL_12;
    }

    v20 = sub_1E3A24FDC(v12);
    if (v20)
    {
      v22 = 550.0;
LABEL_11:
      v19 = a1 / v22;
      goto LABEL_12;
    }

    v20 = sub_1E373F630(v12, 3, v21);
    if (v20)
    {
      v22 = 470.0;
      if (a1 / v19 < 470.0)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (v19 != 0.0)
  {
    v24 = v13();
    (*(*v24 + 208))(*&a1, 0);

    v26 = (v13)(v25);
    (*(*v26 + 312))(ceil(a1 / v19), 0);
  }

  v27 = (v13)(v20);
  (*(*v27 + 1808))(3);

  return result;
}

void sub_1E3DF16A8(uint64_t a1, char a2, double a3, double a4, double a5)
{
  type metadata accessor for LayoutGrid();
  v10 = sub_1E3A2579C(a3);
  if (sub_1E3A24FDC(v10))
  {
    type metadata accessor for MediaShowcaseHostingView();
    sub_1E400363C(a1, a2 & 1, a3, a4, a5);
  }

  else if (a3 > 428.0)
  {
    v11 = a4 > 0.0;
    if (a4 >= a3)
    {
      v11 = 0;
    }

    if (a3 < 1024.0 && !v11)
    {
      v12 = [objc_opt_self() currentDevice];
      [v12 userInterfaceIdiom];
    }
  }
}

unint64_t sub_1E3DF1820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF390E8;
  if (!qword_1ECF390E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF390E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BannerUberBackgroundViewLayout.BannerType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3DF1950(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 64, a2);
  v3 = *(v2 + 64);

  return v3;
}

uint64_t sub_1E3DF1990(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 64, a2);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1E3DF1A1C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3DF1A6C(a1, a2);
  return v4;
}

void *sub_1E3DF1A6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[2] = 0;
  v3[5] = 0;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[7] = MEMORY[0x1E69E7CD0];
  v3[8] = 0xD000000000000027;
  v3[9] = 0x80000001E4284410;
  v3[5] = a2;
  swift_unknownObjectWeakAssign();
  v5 = swift_slowAlloc();
  v3[6] = v5;
  *v5 = 0;
  type metadata accessor for SSDPResponseParser();

  v6 = sub_1E37D1A20();
  swift_beginAccess();
  v3[3] = v6;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = nullsub_1;
  if (Strong)
  {
    v9 = v3[5];
    OUTLINED_FUNCTION_2_4();
    v10 = swift_allocObject();
    *(v10 + 16) = Strong;
    *(v10 + 24) = v9;
    OUTLINED_FUNCTION_2_4();
    Strong = swift_allocObject();
    *(Strong + 16) = sub_1E3DF1CE8;
    *(Strong + 24) = v10;
    v8 = sub_1E379E500;
  }

  v11 = v8;
  type metadata accessor for SSDP();
  OUTLINED_FUNCTION_2_4();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = Strong;

  v13 = sub_1E3A0AF64();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v3[2] = v13;

  return v3;
}

uint64_t sub_1E3DF1CE8()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1E3DF1D34()
{
  OUTLINED_FUNCTION_6_0();

  sub_1E32AF6F8(v0 + 32);

  return v0;
}

uint64_t sub_1E3DF1D7C()
{
  sub_1E3DF1D34();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

double sub_1E3DF1DB0()
{
  v1 = (*(*v0 + 128))();
  if (v1)
  {
    (*(*v1 + 152))(v1);
  }

  return result;
}

void sub_1E3DF1E3C()
{
  v1 = (*(*v0 + 128))();
  if (v1)
  {
    (*(*v1 + 160))(v1);
  }

  os_unfair_lock_lock(*(v0 + 48));
  OUTLINED_FUNCTION_14_0(v0 + 56, v2);
  *(v0 + 56) = MEMORY[0x1E69E7CD0];

  os_unfair_lock_unlock(*(v0 + 48));
}

void sub_1E3DF1EE8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  v14 = *(v3 + 32) == 0xD000000000000027 && 0x80000001E4284410 == *(v3 + 40);
  if (v14 || (sub_1E42079A4() & 1) != 0)
  {
    os_unfair_lock_lock(*(v1 + 48));
    v15 = *(v3 + 64);
    v16 = *(v3 + 72);
    swift_beginAccess();

    v17 = sub_1E3277398(&v29, v15, v16);
    swift_endAccess();

    if (v17)
    {
      os_unfair_lock_unlock(*(v1 + 48));

      sub_1E3DF2898();
    }

    else
    {
      v18 = sub_1E324FBDC();
      (*(v6 + 16))(v10, v18, v4);
      sub_1E3DF32F8(v3, v28);
      v19 = sub_1E41FFC94();
      v20 = sub_1E42067E4();
      sub_1E37D2C54(v3);
      if (os_log_type_enabled(v19, v20))
      {
        OUTLINED_FUNCTION_6_21();
        v21 = OUTLINED_FUNCTION_36_6();
        v28[0] = v21;
        *v3 = 136315138;
        *(v3 + 4) = sub_1E3270FC8(v15, v16, v28);
        OUTLINED_FUNCTION_12_126(&dword_1E323F000, v22, v23, "DIALDiscovery:: Device w/ USN %s Already Seen, returning");
        __swift_destroy_boxed_opaque_existential_1(v21);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();
      }

      (*(v6 + 8))(v10, v4);
      os_unfair_lock_unlock(*(v1 + 48));
    }
  }

  else
  {
    v24 = sub_1E324FBDC();
    (*(v6 + 16))(v13, v24, v4);
    v25 = sub_1E41FFC94();
    v26 = sub_1E42067E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1E323F000, v25, v26, "DIALDiscovery:: non-dial device somehow go through... skipping", v27, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    (*(v6 + 8))(v13, v4);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DF21F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  memcpy(v53, v2, sizeof(v53));
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  memcpy(v52, v3, sizeof(v52));
  if (sub_1E3D70AF0(v52) == 1)
  {
    v17 = sub_1E324FBDC();
    (*(v6 + 16))(v16, v17, v4);
    v18 = sub_1E41FFC94();
    v19 = sub_1E42067F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1E323F000, v18, v19, "DIALDiscovery:: UPNP info for location could not be parsed, returning", v20, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    (*(v6 + 8))(v16, v4);
  }

  else
  {
    v49 = v52[2];
    v47 = v1;
    v48 = v52[3];
    v21 = v52[4];
    v22 = v52[5];
    v45 = v52[11];
    v46 = v52[10];
    v43 = v52[19];
    v44 = v52[18];
    v23 = sub_1E3DF2668(v52[4], v52[5]);
    v24 = (v6 + 16);
    if (v23 == 7)
    {
      v25 = sub_1E324FBDC();
      (*v24)(v13, v25, v4);
      memcpy(v51, v53, sizeof(v51));
      sub_1E3DF335C(v51, v50);
      v26 = sub_1E41FFC94();
      v27 = sub_1E42067F4();
      sub_1E325F748(v3, &qword_1ECF390F0, &unk_1E42D3AD0);
      if (os_log_type_enabled(v26, v27))
      {
        OUTLINED_FUNCTION_6_21();
        v28 = OUTLINED_FUNCTION_36_6();
        v50[0] = v28;
        *v3 = 136315138;
        *(v3 + 1) = sub_1E3270FC8(v21, v22, v50);
        _os_log_impl(&dword_1E323F000, v26, v27, "DIALDiscovery:: Unknown Manufacturer %s, skipping", v3, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();
      }

      (*(v6 + 8))(v13, v4);
    }

    else
    {
      v29 = v23;
      v30 = sub_1E324FBDC();
      (*v24)(v10, v30, v4);
      memcpy(v51, v53, sizeof(v51));
      sub_1E3DF335C(v51, v50);
      v31 = sub_1E41FFC94();
      v32 = sub_1E4206814();
      sub_1E325F748(v3, &qword_1ECF390F0, &unk_1E42D3AD0);
      if (os_log_type_enabled(v31, v32))
      {
        OUTLINED_FUNCTION_6_21();
        v33 = OUTLINED_FUNCTION_36_6();
        v50[0] = v33;
        *v3 = 136315138;
        *(v3 + 1) = sub_1E3270FC8(v49, v48, v50);
        OUTLINED_FUNCTION_12_126(&dword_1E323F000, v34, v35, "DIALDiscovery:: Sending Device %s up to Delegate");
        __swift_destroy_boxed_opaque_existential_1(v33);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();
      }

      (*(v6 + 8))(v10, v4);
      v36 = v47;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v37 = *(v36 + 40);
        ObjectType = swift_getObjectType();
        type metadata accessor for DiscoveryDevice();
        v39 = v43;

        v40 = v48;

        v41 = v45;

        v42 = sub_1E405AF28(v44, v39, v49, v40, v29, v46, v41);
        (*(v37 + 16))(v42, ObjectType, v37);

        swift_unknownObjectRelease();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DF2668(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F7A616D41 && a2 == 0xE600000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_54(0x6E6F7A616D41, 0xE600000000000000) & 1) != 0)
  {
    return 0;
  }

  v6 = a1 == 0x656C676F6F47 && a2 == 0xE600000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_54(0x656C676F6F47, 0xE600000000000000) & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x7463656C4520474CLL && a2 == 0xEE007363696E6F72)
  {
    return 2;
  }

  v8 = OUTLINED_FUNCTION_0_54(0x7463656C4520474CLL, 0xEE007363696E6F72);
  v10 = a1 == 0x7463656C4520474CLL && a2 == 0xEF2E7363696E6F72;
  result = 2;
  if ((v8 & 1) == 0 && !v10)
  {
    if (OUTLINED_FUNCTION_0_54(0x7463656C4520474CLL, 0xEF2E7363696E6F72))
    {
      return 2;
    }

    v11 = a1 == 18252 && a2 == 0xE200000000000000;
    if (v11 || (OUTLINED_FUNCTION_0_54(18252, 0xE200000000000000) & 1) != 0)
    {
      return 2;
    }

    v12 = a1 == 1969975122 && a2 == 0xE400000000000000;
    if (v12 || (OUTLINED_FUNCTION_0_54(1969975122, 0xE400000000000000) & 1) != 0)
    {
      return 3;
    }

    else
    {
      v13 = a1 == 0x676E75736D6153 && a2 == 0xE700000000000000;
      if (v13 || (OUTLINED_FUNCTION_0_54(0x676E75736D6153, 0xE700000000000000) & 1) != 0)
      {
        return 4;
      }

      v14 = a1 == 0xD000000000000013 && 0x80000001E42844A0 == a2;
      if (v14 || (OUTLINED_FUNCTION_0_54(0xD000000000000013, 0x80000001E42844A0) & 1) != 0)
      {
        return 4;
      }

      else
      {
        v15 = a1 == 2037280595 && a2 == 0xE400000000000000;
        if (v15 || (OUTLINED_FUNCTION_0_54(2037280595, 0xE400000000000000) & 1) != 0)
        {
          return 5;
        }

        else
        {
          result = 6;
          if (a1 != 0x6F697A6956 || a2 != 0xE500000000000000)
          {
            if (OUTLINED_FUNCTION_0_54(0x6F697A6956, 0xE500000000000000))
            {
              return 6;
            }

            else
            {
              return 7;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1E3DF2898()
{
  OUTLINED_FUNCTION_31_1();
  v42 = v0;
  v43 = v1;
  v3 = v2;
  v5 = v4;
  v41 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v44 = v12;
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v40 - v26;
  v40 = v5;
  sub_1E41FE404();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1E325F748(v17, &unk_1ECF363C0, &unk_1E42A9420);
    v28 = sub_1E324FBDC();
    v29 = v41;
    (*(v7 + 16))(v10, v28, v41);

    v30 = sub_1E41FFC94();
    v31 = sub_1E42067F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_6_21();
      v33 = swift_slowAlloc();
      v46[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1E3270FC8(v40, v3, v46);
      _os_log_impl(&dword_1E323F000, v30, v31, "DIALDiscovery:: could not create URL for string %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v7 + 8))(v10, v29);
  }

  else
  {
    (*(v20 + 32))(v27, v17, v18);
    (*(v20 + 16))(v24, v27, v18);
    sub_1E41FDDB4();
    sub_1E41FDD64();
    v34 = [objc_opt_self() sharedSession];
    v35 = sub_1E41FDD94();
    OUTLINED_FUNCTION_2_4();
    v36 = swift_allocObject();
    v37 = v43;
    *(v36 + 16) = v42;
    *(v36 + 24) = v37;
    v46[4] = sub_1E3DF32AC;
    v46[5] = v36;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 1107296256;
    v46[2] = sub_1E39C89AC;
    v46[3] = &block_descriptor_116;
    v38 = _Block_copy(v46);

    v39 = [v34 dataTaskWithRequest:v35 completionHandler:v38];
    _Block_release(v38);

    [v39 resume];
    (*(v44 + 8))(v14, v45);
    (*(v20 + 8))(v27, v18);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DF2D50()
{
  OUTLINED_FUNCTION_31_1();
  v50 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  if (v4)
  {
    v49 = v2;
    v21 = v4;
    v22 = sub_1E324FBDC();
    (*(v13 + 16))(v20, v22, v11);
    v23 = v4;
    v24 = sub_1E41FFC94();
    v25 = sub_1E42067F4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_6_21();
      v47 = v10;
      v27 = v26;
      v28 = swift_slowAlloc();
      v48 = v11;
      v29 = v13;
      v30 = v17;
      v31 = v28;
      *v27 = 138412290;
      v32 = v4;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1E323F000, v24, v25, "DIALDiscovery:: connection error: %@", v27, 0xCu);
      sub_1E325F748(v31, &unk_1ECF28E30, &qword_1E429E820);
      v17 = v30;
      v13 = v29;
      v11 = v48;
      OUTLINED_FUNCTION_6_0();
      v10 = v47;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v13 + 8))(v20, v11);
    v2 = v49;
  }

  if (v6)
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = v34;
      v36 = v6;
      if ([v35 statusCode] - 300 <= 0xFFFFFFFFFFFFFF9BLL)
      {
        v37 = sub_1E324FBDC();
        (*(v13 + 16))(v17, v37, v11);
        v38 = v36;
        v39 = sub_1E41FFC94();
        v40 = sub_1E42067F4();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = OUTLINED_FUNCTION_6_21();
          v42 = swift_slowAlloc();
          v51 = v42;
          *v41 = 136315138;
          v52[3] = sub_1E3DF32B4();
          v52[0] = v38;
          v38 = v38;
          v43 = sub_1E3294FA4(v52);
          v45 = sub_1E3270FC8(v43, v44, &v51);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_1E323F000, v39, v40, "DIALDiscovery:: server error: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        (*(v13 + 8))(v17, v11);
        goto LABEL_17;
      }
    }
  }

  if (v8 >> 60 != 15 && !v4)
  {
    type metadata accessor for UPNPDeviceDescriptionParser();
    sub_1E38DCD14(v10, v8);
    v46 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
    (*((*MEMORY[0x1E69E7D40] & *v46) + 0xB0))(v52, v10, v8);
    v2(v52);
    sub_1E325F748(v52, &qword_1ECF390F0, &unk_1E42D3AD0);

    sub_1E38DCE1C(v10, v8);
  }

LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DF31B8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 272))();
  *a1 = result;
  return result;
}

unint64_t sub_1E3DF32B4()
{
  result = qword_1ECF390F8;
  if (!qword_1ECF390F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF390F8);
  }

  return result;
}

uint64_t sub_1E3DF3424@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for BaseballClockView(0);
  v16 = v15[5];
  *(a9 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v17 = v15[6];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C8, &unk_1E42A9DE0);
  swift_storeEnumTagMultiPayload();
  v18 = (a9 + v15[13]);
  sub_1E42038E4();
  *v18 = v27;
  v18[1] = v28;
  v19 = (a9 + v15[7]);
  type metadata accessor for BaseballClockViewModel(0);
  OUTLINED_FUNCTION_8_153();
  sub_1E3DF783C(v20, v21, &unk_1E42D3DE8);
  result = sub_1E42010C4();
  *v19 = result;
  v19[1] = v23;
  v24 = a9 + v15[8];
  *v24 = a2;
  *(v24 + 1) = a3;
  v24[16] = a4;
  *(a9 + v15[9]) = a5;
  *(a9 + v15[11]) = a6;
  *(a9 + v15[10]) = a7;
  *(a9 + v15[12]) = a8;
  return result;
}

void sub_1E3DF35F0(uint64_t *a2@<X8>)
{
  *a2 = sub_1E4203DA4();
  a2[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39100, &qword_1E42D3B88);
  sub_1E3DF363C();
}

void sub_1E3DF363C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v63 = v5;
  v62 = type metadata accessor for StaticBaseballClock(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391A0, &qword_1E42D3EE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v61 = v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391A8, &qword_1E42D3EE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_50_1();
  v55[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391B0, &qword_1E42D3EF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v55[0] = v11;
  v55[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391B8, &qword_1E42D3EF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v56 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391C0, &qword_1E42D3F00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v55[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391C8, &qword_1E42D3F08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391D0, &qword_1E42D3F10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v55 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391D8, &qword_1E42D3F18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v57 = v20;
  v21 = OUTLINED_FUNCTION_138();
  v22 = type metadata accessor for BaseballClockView(v21);
  if (sub_1E3DF3D98())
  {
    v23 = *(v4 + v22[11]);
    if (v23 == 2)
    {
      v18 = v55[0];
      sub_1E3DF3E08();
      v24 = &qword_1ECF391B0;
      v25 = &qword_1E42D3EF0;
      OUTLINED_FUNCTION_83_15();
      swift_storeEnumTagMultiPayload();
      v26 = MEMORY[0x1E6981870];
    }

    else
    {
      if (v23 != 3)
      {
        sub_1E3DF4020();
        sub_1E3743538(v0, v56, &qword_1ECF391A8, &qword_1E42D3EE8);
        swift_storeEnumTagMultiPayload();
        sub_1E3DF9504();
        sub_1E3DF9674();
        v46 = v57;
        sub_1E4201F44();
        v49 = OUTLINED_FUNCTION_32_0();
        v51 = &qword_1E42D3EE8;
        goto LABEL_15;
      }

      if (_MergedGlobals_243 != -1)
      {
        OUTLINED_FUNCTION_11_137(&_MergedGlobals_243);
      }

      *v18 = qword_1EE28C608;
      *(v18 + 1) = 0;
      v18[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39238, &qword_1E42D3F38);
      sub_1E3DF4228();
      v24 = &qword_1ECF391D0;
      v25 = &qword_1E42D3F10;
      OUTLINED_FUNCTION_83_15();
      swift_storeEnumTagMultiPayload();
      v26 = MEMORY[0x1E6981870];
    }

    sub_1E32752B0(&qword_1ECF391F8, &qword_1ECF391D0, &qword_1E42D3F10, v26);
    sub_1E3DF95BC();
    sub_1E4201F44();
    sub_1E3743538(v1, v56, &qword_1ECF391C8, &qword_1E42D3F08);
    swift_storeEnumTagMultiPayload();
    sub_1E3DF9504();
    sub_1E3DF9674();
    v46 = v57;
    sub_1E4201F44();
    v47 = OUTLINED_FUNCTION_34();
    sub_1E325F7A8(v47, v48, &qword_1E42D3F08);
    v49 = v18;
    v50 = v24;
    v51 = v25;
LABEL_15:
    sub_1E325F7A8(v49, v50, v51);
    sub_1E3743538(v46, v61, &qword_1ECF391D8, &qword_1E42D3F18);
    swift_storeEnumTagMultiPayload();
    sub_1E3DF9478();
    OUTLINED_FUNCTION_27_74();
    sub_1E3DF783C(v52, v53, &unk_1E42D3D48);
    v54 = v63;
    sub_1E4201F44();
    sub_1E325F7A8(v46, &qword_1ECF391D8, &qword_1E42D3F18);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391E0, &qword_1E42D3F20);
    v40 = v54;
    goto LABEL_16;
  }

  if (*(v4 + v22[12]) == 1)
  {
    v27 = v4 + v22[8];
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = *(v4 + v22[9]);
    v31 = *(v4 + v22[11]);
    v32 = *(v4 + v22[10]);
    v33 = *(v27 + 16);
    *v2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
    swift_storeEnumTagMultiPayload();
    v34 = v62;
    v35 = v2 + *(v62 + 20);
    *v35 = v28;
    *(v35 + 1) = v29;
    v35[16] = v33;
    *(v2 + v34[6]) = v30;
    *(v2 + v34[7]) = v31;
    *(v2 + v34[8]) = v32;
    sub_1E3DF941C(v2, v61, type metadata accessor for StaticBaseballClock);
    swift_storeEnumTagMultiPayload();
    sub_1E38275A4(v28, v29, v33);
    sub_1E3DF9478();
    OUTLINED_FUNCTION_27_74();
    sub_1E3DF783C(v36, v37, &unk_1E42D3D48);

    v38 = v63;
    sub_1E4201F44();
    sub_1E3DF972C();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391E0, &qword_1E42D3F20);
    v40 = v38;
LABEL_16:
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v39);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391E0, &qword_1E42D3F20);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
}

uint64_t sub_1E3DF3D98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

void sub_1E3DF3E08()
{
  OUTLINED_FUNCTION_9_4();
  v7 = OUTLINED_FUNCTION_86_13(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39210, &qword_1E42D3F28);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31_2();
  sub_1E3746E10(v5);
  type metadata accessor for BaseballClockView(0);
  OUTLINED_FUNCTION_82_17();
  OUTLINED_FUNCTION_19_112();
  *(v5 + v11) = v12;
  v13 = sub_1E3E5FD88();
  v14 = *v13;
  sub_1E3E5F2C0();

  OUTLINED_FUNCTION_65_26();
  sub_1E3DF7678();
  v15 = sub_1E3DF7678();
  sub_1E3DF972C();
  *v3 = sub_1E4201D44();
  *(v3 + 8) = v15;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39338, &qword_1E42D4008);
  sub_1E3DF6120();
  sub_1E4202724();
  sub_1E3746E10(v2);
  sub_1E38F861C((v2 + *(v1 + 28)));
  OUTLINED_FUNCTION_19_112();
  *(v2 + v16) = v17;
  v18 = *v13;
  OUTLINED_FUNCTION_55_40(v19);

  OUTLINED_FUNCTION_81_20();
  sub_1E3DF972C();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v3, v21, &qword_1ECF39210, &qword_1E42D3F28);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391B0, &qword_1E42D3EF0);
  OUTLINED_FUNCTION_43_51(v20);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3DF4020()
{
  OUTLINED_FUNCTION_9_4();
  v7 = OUTLINED_FUNCTION_86_13(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39228, &qword_1E42D3F30);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31_2();
  sub_1E3746E10(v5);
  type metadata accessor for BaseballClockView(0);
  OUTLINED_FUNCTION_82_17();
  OUTLINED_FUNCTION_19_112();
  *(v5 + v11) = v12;
  v13 = sub_1E3E5FD88();
  v14 = *v13;
  sub_1E3E5F2C0();

  OUTLINED_FUNCTION_65_26();
  sub_1E42012B4();
  OUTLINED_FUNCTION_24_86();
  sub_1E3DF972C();
  if (v5)
  {
    v15 = 0x4030000000000000;
  }

  else
  {
    v15 = 0x4020000000000000;
  }

  *v3 = sub_1E4201B84();
  *(v3 + 8) = v15;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39360, &qword_1E42D4030);
  sub_1E3DF6644();
  sub_1E4202724();
  sub_1E3746E10(v2);
  sub_1E38F861C((v2 + *(v1 + 28)));
  OUTLINED_FUNCTION_19_112();
  *(v2 + v16) = v17;
  v18 = *v13;
  OUTLINED_FUNCTION_55_40(v19);

  OUTLINED_FUNCTION_81_20();
  sub_1E3DF972C();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v3, v21, &qword_1ECF39228, &qword_1E42D3F30);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF391A8, &qword_1E42D3EE8);
  OUTLINED_FUNCTION_43_51(v20);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3DF4228()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v4;
  v68 = v6;
  v7 = type metadata accessor for BaseballClockViewLayout(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v57 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39240, &qword_1E42D3F40);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_2();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39248, &qword_1E42D3F48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v62 = v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39250, &qword_1E42D3F50);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v67 = v20 - v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v60 = &v57 - v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_3();
  v63 = v25;
  v66 = sub_1E4201B84();
  LOBYTE(v77[0]) = 1;
  sub_1E4203DA4();
  sub_1E4200D94();
  v74 = v94;
  v75 = v96;
  v64 = v99;
  v65 = v98;
  v102 = 1;
  v101 = v95;
  v100 = v97;
  if (_MergedGlobals_243 != -1)
  {
    OUTLINED_FUNCTION_11_137(&_MergedGlobals_243);
  }

  v73 = qword_1EE28C608;
  v70 = v102;
  v71 = v101;
  v72 = v100;
  v69 = LOBYTE(v77[0]);
  sub_1E3746E10(v14);
  v58 = *(type metadata accessor for BaseballClockView(0) + 24);
  sub_1E38F861C((v14 + v7[5]));
  OUTLINED_FUNCTION_19_112();
  *(v14 + v26) = v27;
  v28 = v7[7];
  v29 = sub_1E3E5FD88();
  v30 = *v29;
  v31 = sub_1E3E5F2C0();

  *(v14 + v28) = v31;
  *(v14 + v7[8]) = 0x4000000000000000;
  sub_1E42012B4();
  OUTLINED_FUNCTION_24_86();
  sub_1E3DF972C();
  if (v14)
  {
    v32 = 0x4030000000000000;
  }

  else
  {
    v32 = 0x4020000000000000;
  }

  *v0 = sub_1E4201B84();
  *(v0 + 8) = v32;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39258, &qword_1E42D3F58);
  sub_1E3DF4844();
  v33 = v62;
  sub_1E3741EA0(v0, v62, &qword_1ECF39240, &qword_1E42D3F40);
  *(v33 + *(v59 + 36)) = 257;
  v34 = sub_1E4202724();
  sub_1E3746E10(v11);
  v35 = (v5 + v58);
  sub_1E38F861C((v11 + v7[5]));
  OUTLINED_FUNCTION_19_112();
  *(v11 + v36) = v37;
  v38 = v7[7];
  v39 = *v29;
  v41 = OUTLINED_FUNCTION_55_40(v40);

  *(v11 + v38) = v41;
  *(v11 + v7[8]) = 0x4000000000000000;
  sub_1E42012B4();
  sub_1E3DF972C();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v42 = v60;
  sub_1E3741EA0(v33, v60, &qword_1ECF39248, &qword_1E42D3F48);
  v43 = v42 + *(v61 + 36);
  *v43 = v34;
  *(v43 + 8) = 0x3FE4CCCCCCCCCCCDLL;
  *(v43 + 16) = v1;
  *(v43 + 24) = v2;
  *(v43 + 32) = v3;
  *(v43 + 40) = 0;
  v44 = v63;
  OUTLINED_FUNCTION_36_57();
  sub_1E3741EA0(v45, v46, v47, v48);
  v49 = v67;
  sub_1E3743538(v44, v67, &qword_1ECF39250, &qword_1E42D3F50);
  v50 = v66;
  v76[0] = v66;
  v76[1] = 0;
  LOBYTE(v76[2]) = v69;
  *(&v76[2] + 1) = v106[0];
  HIDWORD(v76[2]) = *(v106 + 3);
  v76[3] = 0;
  LOBYTE(v76[4]) = v70;
  *(&v76[4] + 1) = *v105;
  HIDWORD(v76[4]) = *&v105[3];
  v76[5] = v74;
  LOBYTE(v76[6]) = v71;
  *(&v76[6] + 1) = *v104;
  HIDWORD(v76[6]) = *&v104[3];
  v76[7] = v75;
  LOBYTE(v76[8]) = v72;
  *(&v76[8] + 1) = *v103;
  HIDWORD(v76[8]) = *&v103[3];
  v51 = v64;
  v52 = v65;
  v76[9] = v65;
  v76[10] = v64;
  v76[11] = v73;
  v76[12] = sub_1E3803508;
  v76[13] = 0;
  v53 = v68;
  memcpy(v68, v76, 0x70uLL);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39260, &qword_1E42D3F60) + 48);
  sub_1E3743538(v49, v54, &qword_1ECF39250, &qword_1E42D3F50);
  sub_1E3743538(v76, v77, &qword_1ECF39268, &qword_1E42D3F68);
  sub_1E325F7A8(v44, &qword_1ECF39250, &qword_1E42D3F50);
  v55 = OUTLINED_FUNCTION_102_1();
  sub_1E325F7A8(v55, v56, &qword_1E42D3F50);
  v77[0] = v50;
  v77[1] = 0;
  v78 = v69;
  *v79 = v106[0];
  *&v79[3] = *(v106 + 3);
  v80 = 0;
  v81 = v70;
  *v82 = *v105;
  *&v82[3] = *&v105[3];
  v83 = v74;
  v84 = v71;
  *&v85[3] = *&v104[3];
  *v85 = *v104;
  v86 = v75;
  v87 = v72;
  *v88 = *v103;
  *&v88[3] = *&v103[3];
  v89 = v52;
  v90 = v51;
  v91 = v73;
  v92 = sub_1E3803508;
  v93 = 0;
  sub_1E325F7A8(v77, &qword_1ECF39268, &qword_1E42D3F68);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3DF4844()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v167 = v3;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39270, &qword_1E42D3F70);
  OUTLINED_FUNCTION_0_10();
  v159 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v156 = v6;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39278, &qword_1E42D3F78);
  OUTLINED_FUNCTION_0_10();
  v162 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v160 = v9;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39280, &qword_1E42D3F80);
  OUTLINED_FUNCTION_0_10();
  v165 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v171 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v170 = v15;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39288, &qword_1E42D3F88);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v164 = v17 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v172 = v20;
  v21 = OUTLINED_FUNCTION_138();
  v22 = type metadata accessor for BaseballClockViewLayout(v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = (v25 - v24);
  v173 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v175 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39290, &qword_1E42D3F90);
  v168 = *(v29 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v144 - v31;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39298, &qword_1E42D3F98);
  OUTLINED_FUNCTION_0_10();
  v151 = v33;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  v148 = &v144 - v35;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF392A0, &qword_1E42D3FA0);
  OUTLINED_FUNCTION_0_10();
  v157 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4_6();
  v169 = v38 - v39;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25_3();
  v174 = v41;
  sub_1E3DF5384();
  sub_1E3746E10(v0);
  v176 = v2;
  v42 = v2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF392A8, &qword_1E42D3FA8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF392B0, &qword_1E42D3FB0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF392B8, &qword_1E42D3FB8);
  v45 = sub_1E3DF9910();
  v178 = v44;
  v179 = v45;
  OUTLINED_FUNCTION_4_195();
  v48 = OUTLINED_FUNCTION_32_14(v46, v47);
  v178 = v43;
  v179 = v48;
  v146 = OUTLINED_FUNCTION_28_70();
  v145 = sub_1E3DF99CC();
  v49 = v29;
  v144 = v29;
  View.ifAccessibilityOn<A>(typeSize:transform:)();
  v51 = v175 + 8;
  v50 = *(v175 + 8);
  v52 = v173;
  (v50)(v0, v173);
  v168[1](v32, v49);
  sub_1E3746E10(v26);
  v149 = type metadata accessor for BaseballClockView(0);
  v53 = (v26 + v22[5]);
  v153 = (v42 + *(v149 + 24));
  sub_1E38F861C(v53);
  OUTLINED_FUNCTION_19_112();
  *(v26 + v54) = v55;
  v56 = v22[7];
  v152 = sub_1E3E5FD88();
  v57 = *v152;
  v58 = sub_1E3E5F2C0();

  *(v26 + v56) = v58;
  v155 = v22;
  *(v26 + v22[8]) = 0x4000000000000000;
  OUTLINED_FUNCTION_0_250();
  sub_1E3DF972C();
  v59 = sub_1E4203DC4();
  v61 = v60;
  sub_1E3746E10(v0);
  sub_1E42012B4();
  v175 = v51;
  v168 = v50;
  v62 = (v50)(v0, v52);
  v63 = v42;
  v64 = v172;
  v178 = v144;
  v179 = v147;
  v180 = v146;
  v181 = v145;
  v142 = OUTLINED_FUNCTION_32_14(v62, &opaque type descriptor for <<opaque return type of View.ifAccessibilityOn<A>(typeSize:transform:)>>);
  v65 = v150;
  v140 = v150;
  OUTLINED_FUNCTION_69_26();
  v136 = v66;
  v67 = OUTLINED_FUNCTION_35_61();
  v68 = v148;
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v67, v69, v70, v71, v72, v73, v74, v75, 0, 1, 0, v136, v59, v61, v138, SHIBYTE(v138), v140, v142);
  (*(v151 + 8))(v68, v65);
  sub_1E3DF5720();
  if (_MergedGlobals_243 != -1)
  {
    OUTLINED_FUNCTION_11_137(&_MergedGlobals_243);
  }

  v76 = (v64 + *(v154 + 36));
  *v76 = qword_1EE28C608;
  v76[1] = sub_1E3803508;
  v76[2] = 0;
  v77 = v156;
  sub_1E3DF5C0C();
  v78 = (v63 + *(v149 + 52));
  v79 = *v78;
  v80 = v78[1];
  v178 = v79;
  v179 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E42038F4();
  v81 = v177;
  sub_1E3746E10(v0);
  sub_1E42012B4();
  v82 = OUTLINED_FUNCTION_57_29();
  v83(v82);
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF392D8, &qword_1E42D3FC0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF392E0, &qword_1E42D3FC8);
  v86 = sub_1E3DF9B08();
  v178 = v85;
  v179 = v86;
  OUTLINED_FUNCTION_4_195();
  v89 = OUTLINED_FUNCTION_32_14(v87, v88);
  v178 = v84;
  v179 = v89;
  v90 = OUTLINED_FUNCTION_28_70();
  v91 = v161;
  v92 = sub_1E3B6C5B4();
  v94 = v160;
  View.conditionalFrame(width:height:alignment:condition:)(v81, 0, 0, 1, v92, v95, v93 & 1, v0 & 1, v91, v90);
  (*(v159 + 8))(v77, v91);
  sub_1E3746E10(v26);
  v96 = v155;
  v97 = v153;
  sub_1E38F861C((v26 + v155[5]));
  OUTLINED_FUNCTION_19_112();
  *(v26 + v98) = v99;
  v100 = v96[7];
  v101 = *v152;
  v103 = OUTLINED_FUNCTION_55_40(v102);

  *(v26 + v100) = v103;
  *(v26 + v96[8]) = 0x4000000000000000;
  OUTLINED_FUNCTION_0_250();
  sub_1E3DF972C();
  v104 = sub_1E4203DB4();
  v106 = v105;
  sub_1E3746E10(v0);
  sub_1E42012B4();
  v107 = OUTLINED_FUNCTION_57_29();
  v109 = v108(v107);
  v178 = v91;
  v179 = v90;
  v143 = OUTLINED_FUNCTION_32_14(v109, &opaque type descriptor for <<opaque return type of View.conditionalFrame(width:height:alignment:condition:)>>);
  v110 = v163;
  v141 = v163;
  OUTLINED_FUNCTION_69_26();
  v137 = v111;
  v135 = v111;
  v112 = v170;
  v113 = OUTLINED_FUNCTION_35_61();
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v113, v114, v115, v116, v117, v118, v119, v120, 0, v135, 0, v137, v104, v106, v139, SHIBYTE(v139), v141, v143);
  (*(v162 + 8))(v94, v110);
  v121 = v157;
  v122 = *(v157 + 16);
  v123 = v169;
  v124 = v158;
  v122(v169, v174, v158);
  v125 = v164;
  sub_1E3743538(v172, v164, &qword_1ECF39288, &qword_1E42D3F88);
  v126 = v165;
  v175 = *(v165 + 16);
  v127 = v112;
  v128 = v166;
  (v175)(v171, v127, v166);
  v129 = v167;
  v122(v167, v123, v124);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39320, &unk_1E42D3FE8);
  sub_1E3743538(v125, v129 + *(v130 + 48), &qword_1ECF39288, &qword_1E42D3F88);
  v131 = v129 + *(v130 + 64);
  v132 = v171;
  (v175)(v131, v171, v128);
  v133 = *(v126 + 8);
  v133(v170, v128);
  sub_1E325F7A8(v172, &qword_1ECF39288, &qword_1E42D3F88);
  v134 = *(v121 + 8);
  v134(v174, v124);
  v133(v132, v128);
  sub_1E325F7A8(v125, &qword_1ECF39288, &qword_1E42D3F88);
  v134(v169, v124);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3DF5384()
{
  OUTLINED_FUNCTION_93();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v35 = v4;
  v5 = OUTLINED_FUNCTION_138();
  v6 = type metadata accessor for BaseballClockViewLayout(v5);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF392B8, &qword_1E42D3FB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF392B0, &qword_1E42D3FB0);
  OUTLINED_FUNCTION_0_10();
  v36 = v12;
  v37 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v34 = v15;
  v16 = OUTLINED_FUNCTION_138();
  v17 = type metadata accessor for BaseballClockView(v16);
  sub_1E38275A4(*(v0 + *(v17 + 32)), *(v0 + *(v17 + 32) + 8), *(v0 + *(v17 + 32) + 16));

  OUTLINED_FUNCTION_18();
  sub_1E3B476D4();
  v18 = sub_1E4202724();
  sub_1E3746E10(v10);
  sub_1E38F861C((v10 + v7[7]));
  OUTLINED_FUNCTION_19_112();
  *(v10 + v19) = v20;
  v21 = v7[9];
  v22 = *sub_1E3E5FD88();
  v23 = sub_1E3E5F2C0();

  *(v10 + v21) = v23;
  *(v10 + v7[10]) = 0x4000000000000000;
  sub_1E3DF69B4();
  OUTLINED_FUNCTION_0_250();
  sub_1E3DF972C();
  sub_1E4200A54();
  v24 = v1 + *(v33 + 36);
  *v24 = v18;
  *(v24 + 8) = v25;
  *(v24 + 16) = v26;
  *(v24 + 24) = v27;
  *(v24 + 32) = v28;
  *(v24 + 40) = 0;

  sub_1E3BE8428();

  sub_1E4202494();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_1E3FE2AC4(6u);
  sub_1E3DF9910();
  sub_1E3E038E0();

  sub_1E325F7A8(v35, &qword_1ECF2E400, &qword_1E42AC130);
  sub_1E325F7A8(v1, &qword_1ECF392B8, &qword_1E42D3FB8);
  OUTLINED_FUNCTION_4_195();
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(key:location:)();
  (*(v37 + 8))(v34, v36);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3DF5720()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v85 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v83 = v5;
  v6 = OUTLINED_FUNCTION_138();
  v7 = type metadata accessor for BaseballClockViewLayout(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v84 = (v9 - v10);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v78 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v78 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v78 - v18);
  v20 = type metadata accessor for SportsBaseballBaseView(0);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v87 = v23 - v22;
  sub_1E3746E10(v19);
  v82 = type metadata accessor for BaseballClockView(0);
  v24 = *(v82 + 24);
  sub_1E38F861C((v19 + v7[5]));
  OUTLINED_FUNCTION_19_112();
  *(v19 + v25) = v26;
  v27 = v7[7];
  v28 = sub_1E3E5FD88();
  v29 = *v28;
  v30 = sub_1E3E5F2C0();

  *(v19 + v27) = v30;
  *(v19 + v7[8]) = 0x4000000000000000;
  v80 = sub_1E42012B4();
  OUTLINED_FUNCTION_0_250();
  sub_1E3DF972C();
  sub_1E3746E10(v16);
  v31 = (v16 + v7[5]);
  v86 = v24;
  v32 = v1;
  v33 = (v1 + v24);
  sub_1E38F861C(v31);
  OUTLINED_FUNCTION_19_112();
  *(v16 + v34) = v35;
  v36 = v7[7];
  v37 = v28;
  v38 = *v28;
  v40 = OUTLINED_FUNCTION_55_40(v39);

  *(v16 + v36) = v40;
  *(v16 + v7[8]) = 0x4000000000000000;
  if (sub_1E42012B4())
  {
    OUTLINED_FUNCTION_0_250();
    sub_1E3DF972C();
    v81 = 0;
  }

  else
  {
    v41 = *sub_1E3E60364();
    OUTLINED_FUNCTION_0_250();
    sub_1E3DF972C();
    v81 = sub_1E4203644();
  }

  if (v80)
  {
    v42 = 3.0;
  }

  else
  {
    v42 = 1.0;
  }

  v43 = v32;
  sub_1E3746E10(v13);
  v44 = (v32 + v86);
  sub_1E38F861C((v13 + v7[5]));
  OUTLINED_FUNCTION_19_112();
  *(v13 + v45) = v46;
  v47 = v7[7];
  v79 = v37;
  v48 = *v37;
  v50 = OUTLINED_FUNCTION_55_40(v49);

  *(v13 + v47) = v50;
  *(v13 + v7[8]) = 0x4000000000000000;
  sub_1E3DF6B04(v51);
  sub_1E3DF972C();
  v52 = sub_1E4203644();
  v53 = v82;
  v54 = sub_1E3DF6B78();
  v55 = sub_1E3DF6BE8();
  v56 = *(v43 + *(v53 + 36));

  v58 = v83;
  sub_1E4187740(v57);
  sub_1E41877A4(v58, v81, v52, v54, v55, v56, v87, v42);
  sub_1E3746E10(v13);
  v59 = v86;
  sub_1E38F861C((v13 + v7[5]));
  OUTLINED_FUNCTION_19_112();
  *(v13 + v60) = v61;
  v62 = v7[7];
  v63 = v79;
  v64 = *v79;
  v66 = OUTLINED_FUNCTION_55_40(v65);

  *(v13 + v62) = v66;
  *(v13 + v7[8]) = 0x4000000000000000;
  sub_1E3DF6C58();
  sub_1E3DF972C();
  v67 = v84;
  sub_1E3746E10(v84);
  v68 = (v43 + v59);
  sub_1E38F861C((v67 + v7[5]));
  OUTLINED_FUNCTION_19_112();
  *(v67 + v69) = v70;
  v71 = v7[7];
  v72 = *v63;
  v74 = OUTLINED_FUNCTION_55_40(v73);

  *(v67 + v71) = v74;
  *(v67 + v7[8]) = 0x4000000000000000;
  sub_1E3DF6C58();
  sub_1E3DF972C();
  sub_1E4203DA4();
  sub_1E4200D94();
  v75 = v85;
  sub_1E3DF9CBC(v87, v85, type metadata accessor for SportsBaseballBaseView);
  v76 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39330, &qword_1E42D4000) + 36));
  v77 = v89;
  *v76 = v88;
  v76[1] = v77;
  v76[2] = v90;
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3DF5C0C()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v77 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v76 = v6;
  v7 = OUTLINED_FUNCTION_138();
  v8 = type metadata accessor for BaseballClockViewLayout(v7);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v69 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39300, &qword_1E42D3FD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19_2();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF392E0, &qword_1E42D3FC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v70 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF392D8, &qword_1E42D3FC0);
  OUTLINED_FUNCTION_0_10();
  v74 = v20;
  v75 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v73 = v23;
  v24 = OUTLINED_FUNCTION_138();
  v25 = type metadata accessor for BaseballClockView(v24);
  v26 = *(v25 + 28);
  v27 = v25;
  v78 = v0;
  v69[1] = *(v0 + v26 + 8);
  v69[2] = v25;
  v79 = sub_1E3DF6E74();
  v80 = v28;
  sub_1E32822E0(v79, v28, v29);
  v30 = sub_1E4202C44();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = *(v2 + *(v27 + 40));

  sub_1E3B4A24C();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39328, &qword_1E42D3FF8);
  sub_1E3B483BC(v16, v37, v1 + *(v38 + 36));
  *v1 = v30;
  *(v1 + 8) = v32;
  *(v1 + 16) = v34 & 1;
  *(v1 + 24) = v36;
  v39 = sub_1E3DF6E74();
  v40 = (v1 + *(v71 + 52));
  *v40 = v39;
  v40[1] = v41;
  sub_1E32752B0(&qword_1ECF39308, &qword_1ECF39300, &qword_1E42D3FD8, MEMORY[0x1E6981810]);
  v42 = v70;
  sub_1E4203004();
  v43 = OUTLINED_FUNCTION_13_8();
  sub_1E325F7A8(v43, v44, &qword_1E42D3FD8);
  v45 = sub_1E4203E34();
  v46 = sub_1E3DF6E74();
  v48 = v47;
  v49 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF392F8, &qword_1E42D3FD0) + 36));
  *v49 = v45;
  v49[1] = v46;
  v49[2] = v48;
  LOBYTE(v48) = sub_1E4202724();
  sub_1E3746E10(v12);
  sub_1E38F861C((v12 + v9[7]));
  OUTLINED_FUNCTION_19_112();
  *(v12 + v50) = v51;
  v52 = v9[9];
  v53 = *sub_1E3E5FD88();
  v54 = sub_1E3E5F2C0();

  *(v12 + v52) = v54;
  *(v12 + v9[10]) = 0x4000000000000000;
  sub_1E3DF69B4();
  OUTLINED_FUNCTION_0_250();
  sub_1E3DF972C();
  sub_1E4200A54();
  v55 = v72;
  v56 = v42 + *(v72 + 36);
  *v56 = v48;
  *(v56 + 8) = v57;
  *(v56 + 16) = v58;
  *(v56 + 24) = v59;
  *(v56 + 32) = v60;
  *(v56 + 40) = 0;

  sub_1E3BE857C();

  sub_1E4202494();
  v61 = v76;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  sub_1E3FE2AC4(8u);
  v66 = sub_1E3DF9B08();
  v67 = v73;
  sub_1E3E038E0();

  sub_1E325F7A8(v61, &qword_1ECF2E400, &qword_1E42AC130);
  sub_1E325F7A8(v42, &qword_1ECF392E0, &qword_1E42D3FC8);
  v79 = v55;
  v80 = v66;
  OUTLINED_FUNCTION_4_195();
  swift_getOpaqueTypeConformance2();
  v68 = v74;
  View.accessibilityIdentifier(key:location:)();
  (*(v75 + 8))(v67, v68);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3DF6120()
{
  OUTLINED_FUNCTION_93();
  v36 = v1;
  v2 = type metadata accessor for BaseballClockViewLayout(0);
  v3 = (v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39340, &qword_1E42D4010);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v35 = v9 - v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v33 - v12);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39290, &qword_1E42D3F90);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v33 = &v33 - v18;
  sub_1E3DF5384();
  sub_1E3746E10(v6);
  type metadata accessor for BaseballClockView(0);
  sub_1E38F861C((v6 + v3[7]));
  OUTLINED_FUNCTION_19_112();
  *(v6 + v20) = v21;
  v22 = v3[9];
  v23 = *sub_1E3E5FD88();
  v24 = sub_1E3E5F2C0();

  *(v6 + v22) = v24;
  *(v6 + v3[10]) = 0x4000000000000000;
  v25 = sub_1E3DF7678();
  sub_1E3DF7678();
  OUTLINED_FUNCTION_0_250();
  sub_1E3DF972C();
  *v13 = sub_1E4201B84();
  v13[1] = v25;
  *(v13 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39348, &qword_1E42D4018);
  sub_1E3DF6438();
  v26 = *(v15 + 16);
  v27 = v19;
  v28 = v34;
  v26(v0, v27, v34);
  v29 = v35;
  sub_1E3743538(v13, v35, &qword_1ECF39340, &qword_1E42D4010);
  v30 = v36;
  v26(v36, v0, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39350, &qword_1E42D4020);
  sub_1E3743538(v29, &v30[*(v31 + 48)], &qword_1ECF39340, &qword_1E42D4010);
  sub_1E325F7A8(v13, &qword_1ECF39340, &qword_1E42D4010);
  v32 = *(v15 + 8);
  v32(v33, v28);
  sub_1E325F7A8(v29, &qword_1ECF39340, &qword_1E42D4010);
  v32(v0, v28);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3DF6438()
{
  OUTLINED_FUNCTION_31_1();
  v25 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39270, &qword_1E42D3F70);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v24 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39330, &qword_1E42D4000);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_77_0();
  sub_1E3DF5720();
  sub_1E3DF5C0C();
  sub_1E3743538(v0, v16, &qword_1ECF39330, &qword_1E42D4000);
  v18 = *(v4 + 16);
  v18(v8, v11, v2);
  v19 = v25;
  sub_1E3743538(v16, v25, &qword_1ECF39330, &qword_1E42D4000);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39358, &qword_1E42D4028);
  v18((v19 + *(v20 + 48)), v8, v2);
  v21 = *(v24 + 8);
  v21(v11, v2);
  sub_1E325F7A8(v0, &qword_1ECF39330, &qword_1E42D4000);
  v21(v8, v2);
  v22 = OUTLINED_FUNCTION_102_1();
  sub_1E325F7A8(v22, v23, &qword_1E42D4000);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DF6644()
{
  OUTLINED_FUNCTION_31_1();
  v45 = v0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39270, &qword_1E42D3F70);
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  v40 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v44 = (v4 - v5);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39330, &qword_1E42D4000);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39290, &qword_1E42D3F90);
  v37 = v17;
  v43 = *(v17 - 8);
  v18 = v43;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  sub_1E3DF5384();
  v41 = v16;
  sub_1E3DF5720();
  v38 = v8;
  sub_1E3DF5C0C();
  v25 = *(v18 + 16);
  v42 = v21;
  v25(v21, v24, v17);
  v39 = v13;
  sub_1E3743538(v16, v13, &qword_1ECF39330, &qword_1E42D4000);
  v26 = *(v2 + 16);
  v27 = v44;
  v26(v44, v8, v46);
  v28 = v45;
  v29 = v21;
  v30 = v37;
  v25(v45, v29, v37);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39368, &qword_1E42D4038);
  sub_1E3743538(v13, v28 + *(v31 + 48), &qword_1ECF39330, &qword_1E42D4000);
  v32 = v28 + *(v31 + 64);
  v33 = v46;
  v26(v32, v27, v46);
  v34 = *(v40 + 8);
  v35 = v33;
  v34(v38, v33);
  sub_1E325F7A8(v41, &qword_1ECF39330, &qword_1E42D4000);
  v36 = *(v43 + 8);
  v36(v24, v30);
  v34(v27, v35);
  sub_1E325F7A8(v39, &qword_1ECF39330, &qword_1E42D4000);
  v36(v42, v30);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DF69B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19_2();
  v3 = *MEMORY[0x1E697E6E8];
  v4 = sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 104))(v0, v3, v4);
  OUTLINED_FUNCTION_23_82();
  sub_1E3DF783C(v6, v7, MEMORY[0x1E697E750]);
  result = sub_1E4205E84();
  if (result)
  {
    OUTLINED_FUNCTION_23_82();
    sub_1E3DF783C(v9, v10, MEMORY[0x1E697E748]);
    sub_1E4205E34();
    return sub_1E325F7A8(v0, &qword_1ECF2A1F8, &qword_1E429E7F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3DF6B04(uint64_t a1)
{
  v1 = sub_1E42012B4();
  v2 = *sub_1E3E5FD88();
  if (v1)
  {

    return v2;
  }

  else
  {
    v4 = [v2 colorWithAlphaComponent_];

    return v4;
  }
}

uint64_t sub_1E3DF6B78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3DF6BE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

double sub_1E3DF6C58()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0, &qword_1E42A9DF0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_50_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39108, &qword_1E42D3C68) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v7 = sub_1E42012B4();
  v8 = *(type metadata accessor for BaseballClockViewLayout(0) + 20);
  v9 = *(v5 + 56);
  *v2 = v7 & 1;
  sub_1E3743538(v1 + v8, &v2[v9], &qword_1ECF2D6D0, &qword_1E42A9DF0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_3;
  }

  v10 = sub_1E42021E4();
  if (__swift_getEnumTagSinglePayload(&v2[v9], 1, v10) == 1)
  {
    goto LABEL_3;
  }

  sub_1E3743538(&v2[v9], v0, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  v12 = OUTLINED_FUNCTION_32_0();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x1E697FF38])
  {
    sub_1E325F7A8(&v2[v9], &qword_1ECF2D6D0, &qword_1E42A9DF0);
    return 30.0;
  }

  else
  {
    if (v14 != *MEMORY[0x1E697FF40])
    {
      v15 = OUTLINED_FUNCTION_32_0();
      v16(v15);
LABEL_3:
      sub_1E325F7A8(v2, &qword_1ECF39108, &qword_1E42D3C68);
      return 20.0;
    }

    sub_1E325F7A8(&v2[v9], &qword_1ECF2D6D0, &qword_1E42A9DF0);
    return 35.0;
  }
}

uint64_t sub_1E3DF6E74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3DF6EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3DF9D18(a1, a2, a3);
  result = sub_1E4201D74();
  qword_1EE28C608 = result;
  return result;
}

uint64_t sub_1E3DF6F18@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4201B84();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39110, &qword_1E42D3CB8);
  OUTLINED_FUNCTION_59_28();
  v5 = *(v2 + v4 + 16);
  v6 = OUTLINED_FUNCTION_34();
  sub_1E38275A4(v6, v7, v5);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_34();
  sub_1E3B476D4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39118, &unk_1E42D3CC0);
  *(a2 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1E3DF6FEC()
{
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for BalancedWidthModifier(v2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_26_88();
  sub_1E3DF941C(v1, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_25_79();
  sub_1E3DF9CBC(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v7, v10);
  v11 = sub_1E4203DA4();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39120, &qword_1E42D3CD0);
  OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_32_0();
  v15(v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39128, &qword_1E42D3CD8);
  v17 = (v0 + *(result + 36));
  *v17 = sub_1E3DF7B08;
  v17[1] = v8;
  v17[2] = v11;
  v17[3] = v13;
  return result;
}

void sub_1E3DF7154()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v53 = v2;
  v65 = v4;
  v5 = sub_1E4200EA4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v9;
  v11 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BalancedWidthModifier(0);
  v13 = *(v12 - 8);
  v61 = v12 - 8;
  v68 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39190, &unk_1E42D3ED0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v62 = v17;
  v64 = sub_1E42036E4();
  sub_1E4203DA4();
  sub_1E42015C4();
  OUTLINED_FUNCTION_26_88();
  v69 = v18;
  v52 = v1;
  sub_1E3DF941C(v1, v15, v19);
  v54 = *(v7 + 16);
  v66 = v7 + 16;
  v54(v11, v3, v5);
  v20 = *(v68 + 80);
  v21 = *(v7 + 80);
  v22 = (v20 + 16) & ~v20;
  v68 = v22;
  v23 = (v20 | v21);
  v59 = v10;
  v24 = (v14 + v21 + v22) & ~v21;
  v58 = v20 | v21;
  swift_allocObject();
  OUTLINED_FUNCTION_25_79();
  v67 = v25;
  v27 = v26 + v22;
  v28 = v26;
  v56 = v26;
  sub_1E3DF9CBC(v15, v27, v29);
  v30 = *(v7 + 32);
  v30(v28 + v24, v11, v5);
  v57 = v30;
  v60 = v7 + 32;
  v61 = *(v61 + 32);
  sub_1E3DF941C(v1, v15, v69);
  v31 = v11;
  v32 = v11;
  v33 = v53;
  v34 = v5;
  v55 = v5;
  v35 = v5;
  v36 = v54;
  v54(v31, v53, v35);
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_84_16(v37);
  v30(v23 + v24, v32, v34);
  v38 = v63;
  v39 = *(v63 + 52);
  sub_1E4206C04();
  OUTLINED_FUNCTION_2();
  v41 = v62;
  (*(v40 + 16))(v62 + v39, v52 + v61);
  *v41 = v64;
  memcpy(v41 + 1, v71, 0x70uLL);
  v42 = v56;
  v41[15] = sub_1E3DF9D7C;
  v41[16] = v42;
  v41[17] = 0;
  v41[18] = 0;
  v43 = (v41 + *(v38 + 56));
  *v43 = sub_1E3DF9350;
  v43[1] = v23;
  sub_1E4200E64();
  v70 = v44;
  v45 = OUTLINED_FUNCTION_13_8();
  sub_1E3DF941C(v45, v46, v69);
  v47 = v55;
  v36(v32, v33, v55);
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_84_16(v48);
  v57(v23 + v24, v32, v47);
  v49 = sub_1E32752B0(&qword_1ECF39198, &qword_1ECF39190, &unk_1E42D3ED0, MEMORY[0x1E697C278]);
  sub_1E39F51D4(v49, v50, v51);
  sub_1E4203534();

  sub_1E325F7A8(v41, &qword_1ECF39190, &unk_1E42D3ED0);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3DF7678()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_50_1();
  v3 = [objc_opt_self() defaultMetrics];
  v4 = sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v4);
  v7 = sub_1E4206CD4();
  sub_1E42067C4();
  v9 = v8;

  return v9;
}

uint64_t sub_1E3DF77A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3DF3D98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3DF783C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3DF7884()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

uint64_t sub_1E3DF78EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3DF6E74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3DF7918(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E3DF7958(v1, v2);
}

uint64_t sub_1E3DF7958(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3DF79D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3DF6BE8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3DF7A28()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

uint64_t sub_1E3DF7A90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3DF6B78();
  *a1 = result;
  return result;
}

void sub_1E3DF7B08()
{
  v0 = type metadata accessor for BalancedWidthModifier(0);
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3DF7154();
}

uint64_t sub_1E3DF7B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0, &qword_1E42A9DF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DF7BF4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_36_57();
  return sub_1E4200684();
}

void sub_1E3DF7C5C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4205454();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel_components;
  swift_beginAccess();
  v10 = *(v4 + 16);
  v10(v8, v0 + v9, v2);
  v11 = sub_1E4205404();
  v13 = v12;
  v14 = *(v4 + 8);
  v15 = OUTLINED_FUNCTION_74();
  v14(v15);
  sub_1E3DF7958(v11, v13);
  v10(v8, v1 + v9, v2);
  sub_1E4205424();
  v16 = OUTLINED_FUNCTION_74();
  v14(v16);
  sub_1E3DF7A28();
  v10(v8, v1 + v9, v2);
  sub_1E4205414();
  v17 = OUTLINED_FUNCTION_74();
  v14(v17);
  sub_1E3DF7BF4();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DF7DE8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v22 = v3;
  v4 = sub_1E4205454();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v8 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1E42056A4();
  sub_1E4205044();

  (*(v10 + 104))(v14, *MEMORY[0x1E69D3B68], v8);
  sub_1E3823168();
  v17 = *(v10 + 8);
  v17(v14, v8);
  v18 = OUTLINED_FUNCTION_102_1();
  (v17)(v18);
  sub_1E3DF7884();
  sub_1E4205474();
  sub_1E4205464();
  v19 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel_components;
  swift_beginAccess();
  (*(v6 + 24))(v2 + v19, v1, v4);
  swift_endAccess();
  sub_1E3DF7C5C();
  v20 = *(v6 + 8);
  v20(v1, v4);
  v21 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel_components;
  swift_beginAccess();
  (*(v6 + 16))(v1, v2 + v21, v4);
  sub_1E3BE86B4(v1, v22);
  v20(v1, v4);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DF8070()
{
  v1 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel__isInProgress;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel__pitchCount;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel__outs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39130, &qword_1E42D3CE0);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel__activeBases;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39138, &unk_1E42D3CE8);
  OUTLINED_FUNCTION_10();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel_components;
  sub_1E4205454();
  OUTLINED_FUNCTION_10();
  (*(v10 + 8))(v0 + v9);

  return v0;
}

uint64_t sub_1E3DF81D0()
{
  sub_1E3DF8070();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3DF8228()
{
  v0 = swift_allocObject();
  sub_1E3DF8260();
  return v0;
}

void sub_1E3DF8260()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39138, &unk_1E42D3CE8);
  OUTLINED_FUNCTION_0_10();
  v29 = v5;
  v30 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v28 = v7;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39130, &qword_1E42D3CE0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_35_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F9C0, &unk_1E42A2A50);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  v21 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel__isInProgress;
  LOBYTE(v31) = 0;
  sub_1E4200634();
  (*(v17 + 32))(v3 + v21, v20, v15);
  v22 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel__pitchCount;
  v31 = 3157296;
  v32 = 0xE300000000000000;
  sub_1E4200634();
  (*(v13 + 32))(v3 + v22, v2, v11);
  v23 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel__outs;
  v31 = 0;
  sub_1E4200634();
  (*(v9 + 32))(v3 + v23, v1, v27);
  v24 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel__activeBases;
  v31 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32EC0, &unk_1E42B3DF0);
  v25 = v28;
  sub_1E4200634();
  (*(v29 + 32))(v3 + v24, v25, v30);
  sub_1E42053F4();
  v26 = OBJC_IVAR____TtC8VideosUI22BaseballClockViewModel_voiceOverModel;
  type metadata accessor for BaseballVoiceOverViewModel(0);
  *(v3 + v26) = sub_1E3BE9360();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DF858C()
{
  OUTLINED_FUNCTION_31_1();
  v26 = v0;
  v28 = sub_1E42059B4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = sub_1E42051E4();
  v11 = sub_1E32AE9B0(v10);
  v12 = 0;
  v27 = v10 & 0xC000000000000001;
  v13 = (v2 + 8);
  while (1)
  {
    if (v11 == v12)
    {

      v23 = 1;
      v24 = v26;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v24, v23, 1, v28);
      OUTLINED_FUNCTION_25_2();
      return;
    }

    if (v27)
    {
      v22 = OUTLINED_FUNCTION_102_1();
      v14 = MEMORY[0x1E6911E60](v22);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v16 = sub_1E42059C4();
    MEMORY[0x1E69102F0](v16);
    v18 = v17;
    v19 = *v13;
    (*v13)(v9, v28);
    if ((v18 & 1) == 0)
    {
      sub_1E42059C4();
      sub_1E42059A4();
      v21 = v20;
      v19(v6, v28);
      if ((v21 & 1) == 0)
      {

        v24 = v26;
        sub_1E42059C4();

        v23 = 0;
        goto LABEL_13;
      }
    }

    ++v12;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1E3DF87D8()
{
  OUTLINED_FUNCTION_7_176();
  sub_1E3DF8D10(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E3DF8D10(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      sub_1E3DF8FA0(319, &qword_1EE289E90, &qword_1ECF2D6D0, &qword_1E42A9DF0, MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        sub_1E3DF8994(319);
        if (v5 <= 0x3F)
        {
          v6 = type metadata accessor for TextLayout();
          if (v7 <= 0x3F)
          {
            OUTLINED_FUNCTION_33_66(v6, &qword_1ECF33C00, &type metadata for SportsCanonicalScoreboardLayoutVariation);
            if (v8 <= 0x3F)
            {
              sub_1E3DF8F50(319, &qword_1EE288680, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
              if (v9 <= 0x3F)
              {
                OUTLINED_FUNCTION_72();
                swift_cvw_initStructMetadataWithLayoutString();
                OUTLINED_FUNCTION_165();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E3DF8994(uint64_t a1)
{
  if (!qword_1EE289D38)
  {
    type metadata accessor for BaseballClockViewModel(255);
    sub_1E3DF783C(&qword_1EE263D40, type metadata accessor for BaseballClockViewModel, &unk_1E42D3DE8);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289D38);
    }
  }
}

void sub_1E3DF8A50()
{
  OUTLINED_FUNCTION_7_176();
  sub_1E3DF8D10(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v3 <= 0x3F)
  {
    OUTLINED_FUNCTION_33_66(v2, &qword_1ECF33C00, &type metadata for SportsCanonicalScoreboardLayoutVariation);
    if (v4 <= 0x3F)
    {
      type metadata accessor for TextLayout();
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3DF8B4C()
{
  OUTLINED_FUNCTION_7_176();
  sub_1E3DF8D10(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E3DF8F50(319, &qword_1ECF38EC8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981948]);
    if (v3 <= 0x3F)
    {
      sub_1E4206C04();
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3DF8C48()
{
  sub_1E42012F4();
  if (v0 <= 0x3F)
  {
    sub_1E3DF8D10(319, &qword_1ECF39140, MEMORY[0x1E697FF50], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E3755B54();
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3DF8D10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_40_3();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1E3DF8D78(uint64_t a1)
{
  OUTLINED_FUNCTION_10_133(a1, &qword_1EE289F50, MEMORY[0x1E69E6370]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_10_133(v1 - 8, &qword_1EE289FC0, MEMORY[0x1E69E6158]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_10_133(v3 - 8, &qword_1EE289F40, MEMORY[0x1E69E6530]);
      if (v5 <= 0x3F)
      {
        sub_1E3DF8FA0(319, &qword_1EE289F60, &unk_1ECF32EC0, &unk_1E42B3DF0, MEMORY[0x1E695C070]);
        if (v6 <= 0x3F)
        {
          sub_1E4205454();
          if (v7 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1E3DF8F50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1E3DF8FA0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v7 = OUTLINED_FUNCTION_40_3();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1E3DF9000()
{
  result = qword_1ECF39158;
  if (!qword_1ECF39158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39118, &unk_1E42D3CC0);
    sub_1E32752B0(&qword_1ECF39160, &qword_1ECF39168, &qword_1E42D3EC0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39158);
  }

  return result;
}

unint64_t sub_1E3DF90B8()
{
  result = qword_1ECF39170;
  if (!qword_1ECF39170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39128, &qword_1E42D3CD8);
    sub_1E32752B0(&qword_1ECF39178, &qword_1ECF39120, &qword_1E42D3CD0, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1ECF39180, &qword_1ECF39188, &qword_1E42D3EC8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39170);
  }

  return result;
}

uint64_t objectdestroy_55Tm()
{
  OUTLINED_FUNCTION_31_1();
  v1 = type metadata accessor for BalancedWidthModifier(0);
  OUTLINED_FUNCTION_70_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1E4200EA4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v9 = *(v7 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_10();
    (*(v10 + 8))(v0 + v3);
  }

  else
  {
  }

  v11 = *(v1 + 24);
  sub_1E4206C04();
  OUTLINED_FUNCTION_10();
  (*(v12 + 8))(v0 + v3 + v11);
  (*(v8 + 8))(v0 + ((v3 + v5 + v9) & ~v9), v6);
  OUTLINED_FUNCTION_25_2();

  return swift_deallocObject();
}

uint64_t sub_1E3DF9350()
{
  type metadata accessor for BalancedWidthModifier(0);
  OUTLINED_FUNCTION_79_21();
  v0 = sub_1E4200EA4();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_85_17();
  OUTLINED_FUNCTION_39_50();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36270, &unk_1E42C7CC0);
  return OUTLINED_FUNCTION_62_29(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_1E3DF941C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3DF9478()
{
  result = qword_1ECF391E8;
  if (!qword_1ECF391E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF391D8, &qword_1E42D3F18);
    sub_1E3DF9504();
    sub_1E3DF9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF391E8);
  }

  return result;
}

unint64_t sub_1E3DF9504()
{
  result = qword_1ECF391F0;
  if (!qword_1ECF391F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF391C8, &qword_1E42D3F08);
    sub_1E32752B0(&qword_1ECF391F8, &qword_1ECF391D0, &qword_1E42D3F10, MEMORY[0x1E6981870]);
    sub_1E3DF95BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF391F0);
  }

  return result;
}

unint64_t sub_1E3DF95BC()
{
  result = qword_1ECF39200;
  if (!qword_1ECF39200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF391B0, &qword_1E42D3EF0);
    sub_1E32752B0(&qword_1ECF39208, &qword_1ECF39210, &qword_1E42D3F28, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39200);
  }

  return result;
}

unint64_t sub_1E3DF9674()
{
  result = qword_1ECF39218;
  if (!qword_1ECF39218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF391A8, &qword_1E42D3EE8);
    sub_1E32752B0(&qword_1ECF39220, &qword_1ECF39228, &qword_1E42D3F30, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39218);
  }

  return result;
}

uint64_t sub_1E3DF972C()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1E3DF977C(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_14_134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E4203914();
  KeyPath = swift_getKeyPath();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF392A8, &qword_1E42D3FA8) + 36)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_61();
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v4 = objc_opt_self();

  v5 = [v4 defaultCenter];
  sub_1E4206C14();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39290, &qword_1E42D3F90);
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_13_8();
  v7(v6);
}

unint64_t sub_1E3DF9910()
{
  result = qword_1ECF392C0;
  if (!qword_1ECF392C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF392B8, &qword_1E42D3FB8);
    sub_1E3DF783C(qword_1EE2800B8, type metadata accessor for SportsClockView, &unk_1E42BCE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF392C0);
  }

  return result;
}

unint64_t sub_1E3DF99CC()
{
  result = qword_1ECF392C8;
  if (!qword_1ECF392C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF392A8, &qword_1E42D3FA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF392B0, &qword_1E42D3FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF392B8, &qword_1E42D3FB8);
    sub_1E3DF9910();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3DF783C(&qword_1ECF392D0, type metadata accessor for BalancedWidthModifier, &unk_1E42D3D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF392C8);
  }

  return result;
}

unint64_t sub_1E3DF9B08()
{
  result = qword_1ECF392E8;
  if (!qword_1ECF392E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF392E0, &qword_1E42D3FC8);
    sub_1E3DF9B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF392E8);
  }

  return result;
}

unint64_t sub_1E3DF9B94()
{
  result = qword_1ECF392F0;
  if (!qword_1ECF392F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF392F8, &qword_1E42D3FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39300, &qword_1E42D3FD8);
    sub_1E32752B0(&qword_1ECF39308, &qword_1ECF39300, &qword_1E42D3FD8, MEMORY[0x1E6981810]);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF39310, &qword_1ECF39318, &qword_1E42D3FE0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF392F0);
  }

  return result;
}

uint64_t sub_1E3DF9CBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3DF9D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF63CF0;
  if (!qword_1ECF63CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF63CF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1E4203AA4();
}

uint64_t OUTLINED_FUNCTION_82_17()
{
  v3 = (v1 + *(v0 + 28));

  return sub_1E38F861C(v3);
}

uint64_t OUTLINED_FUNCTION_83_15()
{

  return sub_1E3743538(v2, v3, v0, v1);
}

uint64_t OUTLINED_FUNCTION_84_16(uint64_t a1)
{
  v4 = *(v2 - 232);
  v5 = a1 + *(v2 - 224);

  return sub_1E3DF9CBC(v1, v5, v4);
}

void sub_1E3DF9E68(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 65) = 258;
  *(a1 + 72) = 0;
  *(a1 + 80) = 512;
}

uint64_t sub_1E3DF9EB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14, char a15, char a16)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 41) = a7 & 1;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11 & 1;
  *(a9 + 65) = a12;
  *(a9 + 66) = a13 & 1;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  *(a9 + 81) = a16;
  return result;
}

id sub_1E3DF9F2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 72);
  if (v8 != 1)
  {
    v9 = *a3;
    v10 = *(a3 + 8);
    v11 = *(a3 + 65);
    if (v11 != 2 && (v11 & 1) != 0)
    {
      type metadata accessor for ImageViewModel();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = a4;
        if (!a4)
        {
          OUTLINED_FUNCTION_111();
          v16 = *(v15 + 392);

          v14 = v16(v17);
        }

        if (a2)
        {
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            v19 = a2;
          }
        }

        else
        {
          v18 = 0;
        }

        aBlock[0] = v18;
        swift_retain_n();
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39380, &qword_1E42D41E0);
        sub_1E4148C68(sub_1E3DFABE4, v65, v82);

        v33 = v82[0];
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v67 = swift_allocObject();
        v67[2] = v66;
        v67[3] = v14;
        v67[4] = v13;
        memcpy(v67 + 5, a3, 0x52uLL);
        aBlock[4] = sub_1E3DFBA24;
        aBlock[5] = v67;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1E3DFB764;
        aBlock[3] = &block_descriptor_117;
        v68 = _Block_copy(aBlock);

        sub_1E38F1B60(a3, v82);

        [v33 setDynamicProxyProvider_];
        _Block_release(v68);
        if (*(a3 + 72) != 1 && (*(a3 + 80) & 1) != 0)
        {
          [v33 _loadImage];
        }

        v69 = v33;
        (*(*v13 + 904))([v69 vui:1 isAccessibilityElement:?]);
        if (v70)
        {
          v71 = sub_1E4205ED4();
        }

        else
        {
          v71 = 0;
        }

        [v69 vui:v71 setAccessibilityText:?];

LABEL_83:
      }

      else
      {
LABEL_31:
        v33 = 0;
      }

      goto LABEL_84;
    }

    if ((*(a3 + 16) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (!a4)
  {
    OUTLINED_FUNCTION_111();
    if (!(*(v20 + 392))())
    {
      goto LABEL_21;
    }
  }

  type metadata accessor for ImageLayout();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {

LABEL_20:

LABEL_21:
    v9 = 0.0;
    v10 = 0.0;
    goto LABEL_22;
  }

  v22 = *(*v21 + 1752);

  v22(v23);
  if (v24)
  {
    OUTLINED_FUNCTION_8();
    (*(v25 + 1776))();
    if (v26)
    {
      goto LABEL_20;
    }
  }

  if (v8 == 1 || (*(a3 + 64) & 1) != 0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_8();
  v9 = (*(v27 + 2296))();
  v10 = v28;

LABEL_22:
  OUTLINED_FUNCTION_111();
  v30 = (*(v29 + 1000))(a4, v9, v10);
  v31 = v30;
  switch(v32)
  {
    case 0:
      v33 = [objc_opt_self() makeImageViewWithResourceDescriptor:v30 existingView:a2];
      if (!(*(*a1 + 392))())
      {
        goto LABEL_71;
      }

      type metadata accessor for ImageLayout();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {

LABEL_71:
        v63 = v31;
        v64 = 0;
        goto LABEL_74;
      }

      if (!v33 || (v35 = v34, objc_opt_self(), (v36 = swift_dynamicCastObjCClass()) == 0))
      {
        sub_1E379098C(v31, 0);
        goto LABEL_83;
      }

      v37 = v36;
      v38 = *(*v35 + 200);
      v81 = v33;
      v39 = v38();
      v41 = OUTLINED_FUNCTION_6_165(v39, v40);
      MEMORY[0x1EEE9AC00](v41);
      v80[2] = v37;
      v80[3] = v31;
      v80[4] = v35;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
      v43 = sub_1E4148D98(sub_1E3DFA9A8, v80, v42);
      v44 = (*(*v35 + 304))(v43);
      v46 = OUTLINED_FUNCTION_6_165(v44, v45);
      MEMORY[0x1EEE9AC00](v46);
      v80[-4] = v37;
      v80[-3] = v31;
      v80[-2] = v35;
      sub_1E4148D98(sub_1E3DFAA64, &v80[-6], v42);
      [v37 localImageViewSize];
      v85.width = 0.0;
      v85.height = 0.0;
      if (CGSizeEqualToSize(v84, v85))
      {
        (*(*v35 + 2288))();
        [v37 setLocalImageViewSize_];
      }

      sub_1E379098C(v31, 0);
      goto LABEL_84;
    case 1:
      if (v8 == 1 || (*(a3 + 40) & 1) != 0)
      {
        [v30 boundingSize];
      }

      else
      {
        v48 = *(a3 + 24);
        v49 = *(a3 + 32);
      }

      [v31 setDownloadSize_];
      if (v8 == 1)
      {
        v60 = 0;
      }

      else
      {
        v60 = *(a3 + 80);
      }

      [v31 setLoadsImmediately_];
      v61 = *(a3 + 81);
      if (v8 == 1 || v61 == 2)
      {
        LOBYTE(v61) = [v31 clearsExisting];
      }

      [v31 setClearsExisting_];
      if (v8 != 1 && (*(a3 + 66) & 1) == 0)
      {
        [v31 setDecoratorType_];
      }

      v33 = [objc_opt_self() makeImageViewWithDescriptor:v31 existingView:a2];
      v63 = v31;
      v64 = 1;
      goto LABEL_74;
    case 2:
      sub_1E379098C(v30, 2u);
      goto LABEL_31;
    case 3:
      if (!v30)
      {
        v33 = 0;
        goto LABEL_73;
      }

      if (v8 == 1)
      {
        v47 = 0;
      }

      else
      {
        v47 = *(a3 + 80);
      }

      v50 = v30;
      [v50 setLoadsImmediately_];
      v51 = *(a3 + 81);
      if (v8 == 1 || v51 == 2)
      {
        LOBYTE(v51) = [v50 clearsExisting];
      }

      v53 = [v50 setClearsExisting_];
      if (v8 != 1 && (*(a3 + 66) & 1) == 0)
      {
        v53 = [v50 setDecoratorType_];
      }

      if ((sub_1E39DFFC0(v53, v54, v55) & 1) != 0 && *a1 == _TtC8VideosUI19LibMPImageViewModel)
      {

        v56 = v50;
        v57 = a1;
LABEL_54:
        v33 = sub_1E3DFAB28(v56, v57, a2);

        goto LABEL_73;
      }

      type metadata accessor for LibImageViewModel();
      v58 = swift_dynamicCastClass();
      if (v58)
      {
        v59 = v58;

        v56 = v50;
        v57 = v59;
        goto LABEL_54;
      }

      v33 = [objc_opt_self() makeImageViewWithDescriptor:v50 existingView:a2];

LABEL_73:
      v63 = v31;
      v64 = 3;
LABEL_74:
      sub_1E379098C(v63, v64);
LABEL_84:
      OUTLINED_FUNCTION_111();
      if ((*(v72 + 392))())
      {
        type metadata accessor for ImageLayout();
        if (swift_dynamicCastClass() && v33 && (objc_opt_self(), (v73 = swift_dynamicCastObjCClass()) != 0))
        {
          v74 = v73;
          OUTLINED_FUNCTION_8();
          v76 = *(v75 + 1920);
          v77 = v33;
          v78 = v76();
          if (v78 != 2)
          {
            [v74 _setImageShape_];
          }
        }

        else
        {
        }
      }

      return v33;
    default:
      goto LABEL_31;
  }
}

id sub_1E3DFA9A8()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) image];
  if (result)
  {
    v3 = result;
    [result size];

    if ([v1 type] == 1)
    {
      OUTLINED_FUNCTION_10_134();
      if (v4 != 0.0)
      {
        OUTLINED_FUNCTION_10_134();
      }
    }

    OUTLINED_FUNCTION_8();
    return (*(v5 + 208))();
  }

  return result;
}

id sub_1E3DFAA64()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) image];
  if (result)
  {
    v3 = result;
    [result size];

    if ([v1 type] == 1)
    {
      OUTLINED_FUNCTION_10_134();
      if (v4 != 0.0)
      {
        OUTLINED_FUNCTION_10_134();
      }
    }

    OUTLINED_FUNCTION_8();
    return (*(v5 + 312))();
  }

  return result;
}

id sub_1E3DFAB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[3] = type metadata accessor for LibImageViewModel();
  v11[0] = a2;

  v6 = *sub_1E39FAF00();
  objc_allocWithZone(MEMORY[0x1E69DF730]);
  v7 = v6;
  v8 = sub_1E38B2064(v11, v6, 0);
  v9 = [objc_opt_self() makeImageViewWithDescriptor:a1 imageProxy:v8 existingView:{a3, v11[0]}];

  return v9;
}

id sub_1E3DFABE4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DF740]) initWithFrame_];
  *a1 = result;
  return result;
}

id sub_1E3DFAC30(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v14 = Strong;
  if (a3 && (type metadata accessor for ImageLayout(), (v15 = swift_dynamicCastClass()) != 0))
  {
    v16 = v15;
  }

  else
  {
    type metadata accessor for ImageLayout();
    v16 = sub_1E3BD61D8();
  }

  OUTLINED_FUNCTION_111();
  v18 = *(v17 + 248);

  *&v77[0] = v18(v19);
  BYTE8(v77[0]) = v20 & 1;
  MEMORY[0x1EEE9AC00](*&v77[0]);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  v22 = sub_1E4148C68(sub_1E3DFBA34, v21, v76);
  v23 = *v76;
  v24 = (*(*v16 + 352))(v22);
  v26 = v25;

  *&v77[0] = v24;
  BYTE8(v77[0]) = v26 & 1;
  MEMORY[0x1EEE9AC00](v27);
  sub_1E4148C68(sub_1E3DFBA40, v21, v76);
  v28 = *v76;
  [v16 copyWithZone_];
  sub_1E4207264();
  swift_unknownObjectRelease();
  type metadata accessor for ImageLayout();
  v29 = swift_dynamicCast();
  v30 = *&v76[0];
  if (v23 <= 0.0)
  {
    v31 = a6;
  }

  else
  {
    v31 = v23;
  }

  v32 = 1.79769313e308;
  if (a6 > 0.0)
  {
    v32 = a6;
  }

  if (v31 > v32)
  {
    v33 = v32;
    if ((~*&v32 & 0x7FF0000000000000) != 0)
    {
      goto LABEL_17;
    }

    if ((*&v32 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v31 = v32;
    }
  }

  if (v31 <= 0.0)
  {
    goto LABEL_18;
  }

  v33 = v31;
LABEL_17:
  v34 = *(**&v76[0] + 256);

  v34(*&v33, 0);

LABEL_18:
  if (v28 <= 0.0)
  {
    v35 = a7;
  }

  else
  {
    v35 = v28;
  }

  v36 = 1.79769313e308;
  if (a7 > 0.0)
  {
    v36 = a7;
  }

  if (v35 > v36)
  {
    v37 = v36;
    if ((~*&v36 & 0x7FF0000000000000) != 0)
    {
LABEL_29:
      v38 = *(*v30 + 360);

      v38(*&v37, 0);

      goto LABEL_30;
    }

    if ((*&v36 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v35 = v36;
    }
  }

  if (v35 > 0.0)
  {
    v37 = v35;
    goto LABEL_29;
  }

LABEL_30:
  if ((a1 & 1) != 0 || a6 == 0.0 && a7 == 0.0)
  {
    a6 = (*(*v30 + 2288))(v29);
    a7 = v39;
  }

  if (a6 == 0.0 && a7 == 0.0)
  {
    goto LABEL_43;
  }

  v40 = (*(*a4 + 1000))(0, a6, a7);
  if (v41 == 255)
  {
    goto LABEL_43;
  }

  v42 = v40;
  if (v41 != 1)
  {
    sub_1E379098C(v40, v41);
LABEL_43:
    v45 = [objc_allocWithZone(MEMORY[0x1E69DF730]) init];

    return v45;
  }

  if (*(a5 + 72) == 1 || (*(a5 + 40) & 1) != 0)
  {
    [v40 boundingSize];
  }

  else
  {
    v43 = *(a5 + 24);
    v44 = *(a5 + 32);
  }

  [v42 setDownloadSize_];
  v47 = objc_opt_self();
  if ([v47 makeImageProxyWithDescriptor_])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E329504C(v76, v77);
    v48 = [v14 imageProxy];
    if (v48)
    {
      v49 = v48;
      [v48 dynamicProxyRequestedSize];
      v51 = v50;
      v53 = v52;
    }

    else
    {
      v51 = 0.0;
      v53 = 0.0;
    }

    v56 = v51 == a6 && v53 == a7;
    if (v56 && (v57 = OUTLINED_FUNCTION_9_139(), sub_1E328438C(v57, v58), sub_1E3DFBA4C(), OUTLINED_FUNCTION_2_193(), swift_dynamicCast()) && (v59 = [v14 imageProxy], v60 = v75, v61 = sub_1E3DFB398(v59, v75), v59, v60, v60, (v61 & 1) != 0))
    {
      v45 = [v14 imageProxy];

      v62 = OUTLINED_FUNCTION_88_3();
      sub_1E379098C(v62, v63);

      __swift_destroy_boxed_opaque_existential_1(v77);
    }

    else
    {
      v64 = OUTLINED_FUNCTION_9_139();
      sub_1E328438C(v64, v65);
      sub_1E3DFBA4C();
      OUTLINED_FUNCTION_2_193();
      if (swift_dynamicCast())
      {
        [v75 setDynamicProxyRequestedSize_];
      }

      [v42 setLoadsImmediately_];
      [v42 setSizeComputationOnly_];
      v66 = OUTLINED_FUNCTION_9_139();
      sub_1E328438C(v66, v67);
      OUTLINED_FUNCTION_2_193();
      if (swift_dynamicCast())
      {
        v68 = v75;
      }

      else
      {
        v68 = 0;
      }

      v69 = v14;
      v70 = [v47 makeImageViewWithDescriptor:v42 imageProxy:v68 existingView:v69];

      v71 = OUTLINED_FUNCTION_88_3();
      sub_1E379098C(v71, v72);

      v73 = OUTLINED_FUNCTION_9_139();
      sub_1E329504C(v73, v74);
      OUTLINED_FUNCTION_2_193();
      if (swift_dynamicCast())
      {
        return v75;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v45 = [objc_allocWithZone(MEMORY[0x1E69DF730]) init];

    v54 = OUTLINED_FUNCTION_88_3();
    sub_1E379098C(v54, v55);
  }

  return v45;
}

uint64_t sub_1E3DFB398(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = sub_1E41FE414();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  if (a1 && a2)
  {
    v17 = a2;
    v18 = a1;
    if ([v18 object])
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33 = v31;
    v34 = v32;
    if (*(&v32 + 1))
    {
      v20 = swift_dynamicCast();
      OUTLINED_FUNCTION_11_138(v9, v20 ^ 1u);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        v30 = *(v11 + 32);
        v30(v16, v9, v10);
        if ([v17 object])
        {
          sub_1E4207264();
          swift_unknownObjectRelease();
        }

        else
        {
          v31 = 0u;
          v32 = 0u;
        }

        v33 = v31;
        v34 = v32;
        if (*(&v32 + 1))
        {
          v22 = swift_dynamicCast();
          OUTLINED_FUNCTION_11_138(v6, v22 ^ 1u);
          v23 = OUTLINED_FUNCTION_88_3();
          if (__swift_getEnumTagSinglePayload(v23, v24, v10) != 1)
          {
            v30(v13, v6, v10);
            v19 = sub_1E41FE3B4();

            v28 = *(v11 + 8);
            v28(v13, v10);
            v28(v16, v10);
            return v19 & 1;
          }
        }

        else
        {

          sub_1E325F748(&v33, &unk_1ECF296E0, &unk_1E4298030);
          v25 = OUTLINED_FUNCTION_88_3();
          OUTLINED_FUNCTION_11_138(v25, v26);
        }

        (*(v11 + 8))(v16, v10);
        v21 = v6;
        goto LABEL_20;
      }
    }

    else
    {

      sub_1E325F748(&v33, &unk_1ECF296E0, &unk_1E4298030);
      OUTLINED_FUNCTION_11_138(v9, 1);
    }

    v21 = v9;
LABEL_20:
    sub_1E325F748(v21, &unk_1ECF363C0, &unk_1E42A9420);
    v19 = 1;
    return v19 & 1;
  }

  v19 = 0;
  return v19 & 1;
}