uint64_t sub_2681B1400(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_2681B14B8;

  return sub_2681B24D4(a1, a2);
}

uint64_t sub_2681B14B8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }
}

uint64_t sub_2681B15D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v26 = v24[10];
  v27 = v24[7];
  v28 = sub_26839F0F8(v24[9]);
  v29 = OUTLINED_FUNCTION_9_0();
  v34 = sub_2681B0AC0(v29, v30, v31, v32, v33);
  v35 = v24[9];
  if (v26)
  {

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_24_3();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  v74 = v28;
  v75 = v34;
  v76 = v24;
  v45 = v24 + 2;
  v46 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_111_0();
  while (1)
  {
    v47 = v46 >> 62;
    if (v26 == a18)
    {
      break;
    }

    if (v26 >= *(v35 + 16))
    {
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
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_98_0();
    if (v27)
    {
      v49 = sub_2683D00A8();
    }

    else
    {
      v49 = *(v48 + 16);
    }

    if (v47)
    {
      v50 = OUTLINED_FUNCTION_129_0();
    }

    else
    {
      v50 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = v50 + v49;
    if (__OFADD__(v50, v49))
    {
      goto LABEL_44;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v47)
      {
LABEL_18:
        OUTLINED_FUNCTION_129_0();
      }

LABEL_19:
      v46 = OUTLINED_FUNCTION_122_0();
      v52 = v46 & 0xFFFFFFFFFFFFFF8;
      OUTLINED_FUNCTION_85();
      goto LABEL_20;
    }

    if (v47)
    {
      goto LABEL_18;
    }

    v52 = v46 & 0xFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_85();
    if (v53 < v51)
    {
      goto LABEL_19;
    }

LABEL_20:
    OUTLINED_FUNCTION_93_0();
    if (v27)
    {
      v56 = OUTLINED_FUNCTION_124_0();
      if (!v56)
      {
        goto LABEL_34;
      }

      v27 = v56;
      v57 = sub_2683D00A8();
      if (v51 < v57)
      {
        goto LABEL_48;
      }

      if (v27 < 1)
      {
        goto LABEL_49;
      }

      v54 = v57;
      a15 = v52;
      a16 = v46;
      v58 = v26 + 32;
      OUTLINED_FUNCTION_14_12();
      sub_2681B4DEC(&qword_28024E7F0, &qword_28024E7E8, qword_2683D8128);
      for (i = 0; i != v27; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7E8, qword_2683D8128);
        v60 = OUTLINED_FUNCTION_104_0();
        v62 = *v61;
        (v60)(v45, 0);
        *(v58 + 8 * i) = v62;
      }

      v35 = a14;
LABEL_30:

      v26 = a20;
      if (v54 < a19)
      {
        goto LABEL_45;
      }

      if (v54 > 0)
      {
        v63 = *(v52 + 16);
        v64 = __OFADD__(v63, v54);
        v65 = v63 + v54;
        if (v64)
        {
          goto LABEL_46;
        }

        *(v52 + 16) = v65;
      }
    }

    else
    {
      v27 = v25 & 0xFFFFFFFFFFFFFF8;
      v54 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
        if (v51 < v54)
        {
          goto LABEL_47;
        }

        v55 = sub_268129504(0, &qword_28024E7E0, 0x277D471A8);
        OUTLINED_FUNCTION_126_0(v55);
        goto LABEL_30;
      }

LABEL_34:

      v26 = a20;
      if (a19 > 0)
      {
        goto LABEL_45;
      }
    }
  }

  if (!v47)
  {

    sub_2683D05C8();
    goto LABEL_40;
  }

LABEL_50:
  OUTLINED_FUNCTION_123_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
  OUTLINED_FUNCTION_56_1();
  sub_2683D0398();

LABEL_40:

  sub_268129504(0, &unk_28024E800, 0x277D47200);
  OUTLINED_FUNCTION_33_1();
  sub_2683CFE48();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_3();

  return v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, 0, v74, v75, v76, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2681B1968(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_2681B1A20;

  return sub_2681B26E0(a1, a2);
}

uint64_t sub_2681B1A20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }
}

uint64_t sub_2681B1B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v26 = v24[10];
  v27 = v24[7];
  v28 = sub_26839F0F8(v24[9]);
  v29 = OUTLINED_FUNCTION_9_0();
  v34 = sub_2681B0AC0(v29, v30, v31, v32, v33);
  v35 = v24[9];
  if (v26)
  {

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_24_3();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  v74 = v28;
  v75 = v34;
  v76 = v24;
  v45 = v24 + 2;
  v46 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_111_0();
  while (1)
  {
    v47 = v46 >> 62;
    if (v26 == a18)
    {
      break;
    }

    if (v26 >= *(v35 + 16))
    {
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
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_98_0();
    if (v27)
    {
      v49 = sub_2683D00A8();
    }

    else
    {
      v49 = *(v48 + 16);
    }

    if (v47)
    {
      v50 = OUTLINED_FUNCTION_129_0();
    }

    else
    {
      v50 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = v50 + v49;
    if (__OFADD__(v50, v49))
    {
      goto LABEL_44;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v47)
      {
LABEL_18:
        OUTLINED_FUNCTION_129_0();
      }

LABEL_19:
      v46 = OUTLINED_FUNCTION_122_0();
      v52 = v46 & 0xFFFFFFFFFFFFFF8;
      OUTLINED_FUNCTION_85();
      goto LABEL_20;
    }

    if (v47)
    {
      goto LABEL_18;
    }

    v52 = v46 & 0xFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_85();
    if (v53 < v51)
    {
      goto LABEL_19;
    }

LABEL_20:
    OUTLINED_FUNCTION_93_0();
    if (v27)
    {
      v56 = OUTLINED_FUNCTION_124_0();
      if (!v56)
      {
        goto LABEL_34;
      }

      v27 = v56;
      v57 = sub_2683D00A8();
      if (v51 < v57)
      {
        goto LABEL_48;
      }

      if (v27 < 1)
      {
        goto LABEL_49;
      }

      v54 = v57;
      a15 = v52;
      a16 = v46;
      v58 = v26 + 32;
      OUTLINED_FUNCTION_14_12();
      sub_2681B4DEC(&qword_28024E7F0, &qword_28024E7E8, qword_2683D8128);
      for (i = 0; i != v27; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7E8, qword_2683D8128);
        v60 = OUTLINED_FUNCTION_104_0();
        v62 = *v61;
        (v60)(v45, 0);
        *(v58 + 8 * i) = v62;
      }

      v35 = a14;
LABEL_30:

      v26 = a20;
      if (v54 < a19)
      {
        goto LABEL_45;
      }

      if (v54 > 0)
      {
        v63 = *(v52 + 16);
        v64 = __OFADD__(v63, v54);
        v65 = v63 + v54;
        if (v64)
        {
          goto LABEL_46;
        }

        *(v52 + 16) = v65;
      }
    }

    else
    {
      v27 = v25 & 0xFFFFFFFFFFFFFF8;
      v54 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
        if (v51 < v54)
        {
          goto LABEL_47;
        }

        v55 = sub_268129504(0, &qword_28024E7E0, 0x277D471A8);
        OUTLINED_FUNCTION_126_0(v55);
        goto LABEL_30;
      }

LABEL_34:

      v26 = a20;
      if (a19 > 0)
      {
        goto LABEL_45;
      }
    }
  }

  if (!v47)
  {

    sub_2683D05C8();
    goto LABEL_40;
  }

LABEL_50:
  OUTLINED_FUNCTION_123_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
  OUTLINED_FUNCTION_56_1();
  sub_2683D0398();

LABEL_40:

  sub_268129504(0, &unk_28024E800, 0x277D47200);
  OUTLINED_FUNCTION_33_1();
  sub_2683CFE48();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_3();

  return v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, 0, v74, v75, v76, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2681B1ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2681B1F7C;

  return sub_2681B28EC(a1, a2, a3);
}

uint64_t sub_2681B1F7C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }
}

uint64_t sub_2681B2098(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2681B212C;

  return sub_2681B2AA0(a1);
}

uint64_t sub_2681B212C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }
}

uint64_t sub_2681B2248()
{
  v21 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v2, qword_28027C958);

  v3 = sub_2683CF7C8();
  v4 = sub_2683CFE98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    OUTLINED_FUNCTION_87_0();
    v1 = swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v1 = 136315138;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB20, &unk_2683D92E0);
    v8 = MEMORY[0x26D6167A0](v5, v7);
    v10 = sub_2681610A0(v8, v9, &v20);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_29();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB20, &unk_2683D92E0);
  OUTLINED_FUNCTION_56_1();
  sub_2683CFC98();
  OUTLINED_FUNCTION_97_0();

  [v16 setTemplateItems_];

  v17 = OUTLINED_FUNCTION_17_9();

  return v18(v17);
}

uint64_t sub_2681B2428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2681B1F7C;

  return sub_2681B2D4C(a1, a2, a3);
}

uint64_t sub_2681B24D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_2681B24F4);
}

uint64_t sub_2681B24F4()
{
  OUTLINED_FUNCTION_7();
  sub_268200288(*(v0 + 32), *(v0 + 40), (v0 + 16));
  *(v0 + 48) = *(v0 + 24);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_95_0(v1);
  *v2 = v3;
  v2[1] = sub_2681B25A4;
  OUTLINED_FUNCTION_39_4(&unk_2878FB358);
  OUTLINED_FUNCTION_91_0();

  return v4();
}

uint64_t sub_2681B25A4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_17_9();

    return v9(v8);
  }
}

uint64_t sub_2681B26E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_2681B2700);
}

uint64_t sub_2681B2700()
{
  OUTLINED_FUNCTION_7();
  sub_268321358(*(v0 + 32), *(v0 + 40), (v0 + 16));
  *(v0 + 48) = *(v0 + 24);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_95_0(v1);
  *v2 = v3;
  v2[1] = sub_2681B27B0;
  OUTLINED_FUNCTION_39_4(&unk_2878FB3E8);
  OUTLINED_FUNCTION_91_0();

  return v4();
}

uint64_t sub_2681B27B0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_17_9();

    return v9(v8);
  }
}

uint64_t sub_2681B28EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2681B2910);
}

uint64_t sub_2681B2910()
{
  OUTLINED_FUNCTION_7();
  v3 = *(v1 + 24);
  if (!v3 || (sub_2681E73A0(v2) & 1) == 0)
  {
LABEL_9:
    v16 = sub_268200914(*(v1 + 32), *(v1 + 40));
    v18 = v17;
    sub_268320E94(v16, v17);
    OUTLINED_FUNCTION_97_0();

    OUTLINED_FUNCTION_37();

    return v19(v0);
  }

  v4 = sub_2681B422C();
  v5 = OUTLINED_FUNCTION_61_1(v4, v4);
  OUTLINED_FUNCTION_105_0(v5);
  OUTLINED_FUNCTION_109_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (OUTLINED_FUNCTION_38_4(v6))
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v7 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v7, qword_28027C958);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v9))
    {
      v10 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v10);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40();

  return v21();
}

uint64_t sub_2681B2AA0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2681B2AC0);
}

uint64_t sub_2681B2AC0()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 24);
  if (!v2 || (sub_2681E73A0(v1) & 1) == 0)
  {
LABEL_9:
    v15 = swift_task_alloc();
    *(v0 + 40) = v15;
    *v15 = v0;
    v15[1] = sub_2681B2C64;

    return sub_268340BC4();
  }

  v3 = sub_2681B422C();
  v4 = OUTLINED_FUNCTION_61_1(v3, v3);
  OUTLINED_FUNCTION_105_0(v4);
  OUTLINED_FUNCTION_109_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (OUTLINED_FUNCTION_38_4(v5))
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v6 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v6, qword_28027C958);
    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v8))
    {
      v9 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v9);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40();

  return v17();
}

uint64_t sub_2681B2C64()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2681B2D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2681B2D70);
}

uint64_t sub_2681B2D70()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 24);
  if (!v2 || (sub_2681E73A0(v1) & 1) == 0)
  {
LABEL_9:
    sub_268320E94(*(v0 + 32), *(v0 + 40));
    OUTLINED_FUNCTION_37();

    return v15();
  }

  v3 = sub_2681B422C();
  v4 = OUTLINED_FUNCTION_61_1(v3, v3);
  OUTLINED_FUNCTION_105_0(v4);
  OUTLINED_FUNCTION_109_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (OUTLINED_FUNCTION_38_4(v5))
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v6 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v6, qword_28027C958);
    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v8))
    {
      v9 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v9);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40();

  return v17();
}

void sub_2681B2EE4(uint64_t a1, void *a2)
{
  v3 = sub_2683CFC98();

  [a2 setParameterKeyPaths_];
}

void sub_2681B2F50(uint64_t a1, void *a2)
{
  sub_268129504(0, &qword_28024E870, 0x277D4C3B0);
  v3 = sub_2683CFC98();
  [a2 setImages_];
}

uint64_t sub_2681B2FCC(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CFA78();

  return v3;
}

uint64_t objectdestroyTm()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;

  v10 = v0 + v8;
  v11 = type metadata accessor for Snippet(0);
  v12 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v12, v13, v11))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v19 + 8))(v10);
        v20 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_37;
      case 1u:
      case 9u:

        goto LABEL_37;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v58 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v59 = OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading(v59);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v111 + 8))(v1);
            break;
          case 1u:

            if (*(v1 + 96) != 255)
            {
              sub_26814304C(*(v1 + 80), *(v1 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v112 = *(v58 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v113 + 8))(v10 + v112);
        v105 = *(v58 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_85;
      case 4u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v39 + 8))(v10);
        v40 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v40);

        OUTLINED_FUNCTION_11_5(v40[6]);

        OUTLINED_FUNCTION_11_5(v40[7]);

        v41 = v10 + v40[8];
        if (*(v41 + 24))
        {

          if (*(v41 + 96) != 255)
          {
            sub_26814304C(*(v41 + 80), *(v41 + 88));
          }
        }

        v42 = v40[9];
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v45 = *(v44 + 8);
        v7 = v44 + 8;
        v45(v10 + v42, v43);
        v46 = OUTLINED_FUNCTION_43_0(v40[10]);
        (v45)(v46);
        v47 = OUTLINED_FUNCTION_43_0(v40[11]);
        (v45)(v47);
        v48 = v10 + v40[12];
        v49 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v49))
        {

          v128 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v50 + 8))(v48 + v128);
          v45(v48 + *(v2 + 24), v43);
        }

        v51 = v40[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v52 + 8))(v10 + v51);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v53 = OUTLINED_FUNCTION_31_1();
        v54 = type metadata accessor for Snippet.Reminder.AppLink(v53);
        if (!OUTLINED_FUNCTION_16_4(v54))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v51, *(v51 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v116 + 8))(v51);
          }
        }

        goto LABEL_99;
      case 5u:

        if (*(v10 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v61 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_72;
      case 6u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v80 + 8))(v10);
        v81 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v81);

        OUTLINED_FUNCTION_11_5(v81[6]);

        OUTLINED_FUNCTION_11_5(v81[7]);

        v82 = v10 + v81[8];
        if (*(v82 + 24))
        {

          if (*(v82 + 96) != 255)
          {
            sub_26814304C(*(v82 + 80), *(v82 + 88));
          }
        }

        v83 = v81[9];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v86 = *(v85 + 8);
        v7 = v85 + 8;
        v86(v10 + v83, v84);
        v87 = OUTLINED_FUNCTION_43_0(v81[10]);
        (v86)(v87);
        v88 = OUTLINED_FUNCTION_43_0(v81[11]);
        (v86)(v88);
        v89 = v10 + v81[12];
        v90 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v90))
        {

          v129 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v91 + 8))(v89 + v129);
          v86(v89 + *(v2 + 24), v84);
        }

        v92 = v81[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v93 + 8))(v10 + v92);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v94 = OUTLINED_FUNCTION_31_1();
        v95 = type metadata accessor for Snippet.Reminder.AppLink(v94);
        if (!OUTLINED_FUNCTION_16_4(v95))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v92, *(v92 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v121 + 8))(v92);
          }
        }

        v122 = v10 + *(type metadata accessor for Snippet.SetTaskAttribute3p(0) + 20);

        v123 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v124 + 8))(v122 + v123);
LABEL_99:
        v9 = v132;
        break;
      case 7u:
LABEL_37:

        break;
      case 8u:

        v61 = *(type metadata accessor for Snippet.CreateNote3p(0) + 20);
        goto LABEL_72;
      case 0xAu:
        v100 = type metadata accessor for Snippet.SectionHeading(0);
        v101 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v101, v102, v100))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v126 + 8))(v10);
              break;
            case 1u:

              if (*(v10 + 96) != 255)
              {
                sub_26814304C(*(v10 + 80), *(v10 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v103 = type metadata accessor for Snippet.SearchResult3p(0);

        v61 = *(v103 + 32);
LABEL_72:
        v10 += v61;

        v105 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
LABEL_85:
        OUTLINED_FUNCTION_0_9();
        (*(v114 + 8))(v10 + v105);
        break;
      default:
        break;
    }
  }

  v14 = v0 + v9;
  v15 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v15, v16, v11))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v17 + 8))(v0 + v9);
        v18 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v18);
        goto LABEL_87;
      case 1u:
      case 9u:

        goto LABEL_87;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v56 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v57 = v14 + v56[5];
        type metadata accessor for Snippet.SectionHeading(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v106 + 8))(v57);
            break;
          case 1u:

            if (*(v57 + 96) != 255)
            {
              sub_26814304C(*(v57 + 80), *(v57 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v107 = v56[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v108 + 8))(v14 + v107);
        v109 = v56[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9();
        (*(v110 + 8))(v14 + v109);
        break;
      case 4u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v21 + 8))(v0 + v9);
        v22 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v22);

        OUTLINED_FUNCTION_11_5(v22[6]);

        OUTLINED_FUNCTION_11_5(v22[7]);

        v23 = v14 + v22[8];
        if (*(v23 + 24))
        {

          if (*(v23 + 96) != 255)
          {
            sub_26814304C(*(v23 + 80), *(v23 + 88));
          }
        }

        v24 = v22[9];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v27 = *(v26 + 8);
        v27(v14 + v24, v25);
        v28 = OUTLINED_FUNCTION_44_0(v22[10]);
        (v27)(v28);
        v29 = OUTLINED_FUNCTION_44_0(v22[11]);
        (v27)(v29);
        v30 = OUTLINED_FUNCTION_31_1();
        v31 = type metadata accessor for Snippet.Reminder.LocationTrigger(v30);
        if (!OUTLINED_FUNCTION_16_4(v31))
        {

          v130 = v7;
          v32 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v34 = v24 + v32;
          v7 = v130;
          (*(v33 + 8))(v34);
          v27(v24 + *(v9 + 24), v25);
        }

        v35 = v22[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v36 + 8))(v14 + v35);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v37 = v14 + v22[16];
        v38 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v38))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v37, *(v37 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v115 + 8))(v37);
          }
        }

        goto LABEL_87;
      case 5u:

        if (*(v14 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v60 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_93;
      case 6u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v62 + 8))(v0 + v9);
        v63 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v63);

        OUTLINED_FUNCTION_11_5(v63[6]);

        OUTLINED_FUNCTION_11_5(v63[7]);

        v64 = v14 + v63[8];
        if (*(v64 + 24))
        {

          if (*(v64 + 96) != 255)
          {
            sub_26814304C(*(v64 + 80), *(v64 + 88));
          }
        }

        v65 = v63[9];
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v68 = *(v67 + 8);
        v68(v14 + v65, v66);
        v69 = OUTLINED_FUNCTION_44_0(v63[10]);
        (v68)(v69);
        v70 = OUTLINED_FUNCTION_44_0(v63[11]);
        (v68)(v70);
        v71 = OUTLINED_FUNCTION_31_1();
        v72 = type metadata accessor for Snippet.Reminder.LocationTrigger(v71);
        if (!OUTLINED_FUNCTION_16_4(v72))
        {

          v131 = v7;
          v73 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v75 = v65 + v73;
          v7 = v131;
          (*(v74 + 8))(v75);
          v68(v65 + *(v9 + 24), v66);
        }

        v76 = v63[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v77 + 8))(v14 + v76);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v78 = v14 + v63[16];
        v79 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v79))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v78, *(v78 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v117 + 8))(v78);
          }
        }

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p(0);
        goto LABEL_92;
      case 7u:
LABEL_87:

        break;
      case 8u:

        Note3p = type metadata accessor for Snippet.CreateNote3p(0);
LABEL_92:
        v60 = *(Note3p + 20);
        goto LABEL_93;
      case 0xAu:
        v96 = type metadata accessor for Snippet.SectionHeading(0);
        v97 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v97, v98, v96))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v125 + 8))(v0 + v9);
              break;
            case 1u:

              if (*(v14 + 96) != 255)
              {
                sub_26814304C(*(v14 + 80), *(v14 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v99 = type metadata accessor for Snippet.SearchResult3p(0);

        v60 = *(v99 + 32);
LABEL_93:
        v118 = v14 + v60;

        v119 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v120 + 8))(v118 + v119);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}

unint64_t sub_2681B422C()
{
  result = qword_28024E7D0;
  if (!qword_28024E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E7D0);
  }

  return result;
}

uint64_t sub_2681B4284()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6_3(v7);
  *v8 = v9;
  v8[1] = sub_268133EC8;

  return sub_2681BAD20(v4, v2, v6, v5);
}

uint64_t sub_2681B4330()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_2681B43DC;

  return sub_26833CEC8();
}

uint64_t sub_2681B43DC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2681B44C4(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = a2[2];
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_2681B456C;

  return sub_26833D0A0();
}

uint64_t sub_2681B456C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2681B4654()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_2681B46E4()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

id sub_2681B4774(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_2681B4784(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = swift_task_alloc();
  *(v3 + 72) = v8;
  *v8 = v3;
  v8[1] = sub_2681B4848;

  return sub_2681AD14C(v3 + 16, v6, v5, v7);
}

uint64_t sub_2681B4848()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  OUTLINED_FUNCTION_3();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;

  if (!v0)
  {
    v10 = *(v6 + 64);
    *v10 = v1;
    v10[1] = v4;
  }

  OUTLINED_FUNCTION_20_9();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

void sub_2681B4940(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2681B4950()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_19_12(v3);

  return v5(v1);
}

uint64_t sub_2681B49F0(uint64_t a1, uint64_t *a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2681B4AA0;

  return sub_26833D138();
}

uint64_t sub_2681B4AA0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2681B4B88()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_2681B4C18(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2681B4C28()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

unint64_t sub_2681B4CB8()
{
  result = qword_28024E848;
  if (!qword_28024E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024E840, &qword_2683D8200);
    sub_2681B4D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E848);
  }

  return result;
}

unint64_t sub_2681B4D3C()
{
  result = qword_28024E850;
  if (!qword_28024E850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024E858, &qword_2683D8208);
    sub_2681B4DEC(&qword_28024E860, &qword_28024E828, &unk_2683D81B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E850);
  }

  return result;
}

uint64_t sub_2681B4DEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_56_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2681B4EE8(uint64_t a1, const void *a2, uint64_t *a3)
{
  v3[11] = a1;
  memcpy(v3 + 2, a2, 0x48uLL);
  v5 = *a3;
  v6 = swift_task_alloc();
  v3[12] = v6;
  *v6 = v3;
  v6[1] = sub_2681B586C;

  return sub_2681AD444((v3 + 2), v5);
}

uint64_t sub_2681B4F98(uint64_t a1, const void *a2, uint64_t *a3)
{
  v3[11] = a1;
  memcpy(v3 + 2, a2, 0x48uLL);
  v5 = *a3;
  v6 = swift_task_alloc();
  v3[12] = v6;
  *v6 = v3;
  v6[1] = sub_2681B5048;

  return sub_2681AD704((v3 + 2), v5);
}

uint64_t sub_2681B5048()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  OUTLINED_FUNCTION_3();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;

  if (!v0)
  {
    v10 = *(v6 + 88);
    *v10 = v1;
    v10[1] = v4;
  }

  OUTLINED_FUNCTION_20_9();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_2681B5140(uint64_t a1, const void *a2, uint64_t *a3)
{
  v3[11] = a1;
  memcpy(v3 + 2, a2, 0x48uLL);
  v5 = *a3;
  v6 = swift_task_alloc();
  v3[12] = v6;
  *v6 = v3;
  v6[1] = sub_2681B586C;

  return sub_2681AD9C4((v3 + 2), v5);
}

uint64_t sub_2681B51F0()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_12(v1);
  v3 = OUTLINED_FUNCTION_90();

  return v4(v3);
}

uint64_t sub_2681B5288()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_2681B5318()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_17_9();

  return v4(v3);
}

uint64_t sub_2681B53F8()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t objectdestroy_164Tm()
{

  OUTLINED_FUNCTION_113_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2681B5530()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_12(v1);
  v3 = OUTLINED_FUNCTION_90();

  return v4(v3);
}

uint64_t sub_2681B55C8(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  *(v3 + 64) = a1;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  v5 = *a3;
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  *v6 = v3;
  v6[1] = sub_2681B5870;

  return sub_2681ADC84(v3 + 16, v5);
}

uint64_t sub_2681B5678()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_19_12(v3);

  return v5(v1);
}

uint64_t objectdestroy_126Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2681B5778()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_12(v1);
  v3 = OUTLINED_FUNCTION_90();

  return v4(v3);
}

uint64_t objectdestroy_72Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_38_4(uint64_t a1)
{

  return swift_dynamicCast();
}

__n128 *OUTLINED_FUNCTION_41_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3[7] = v2;
  v3[8] = sub_26816B178;
  v3[9] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_1()
{
}

uint64_t OUTLINED_FUNCTION_61_1(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

__n128 OUTLINED_FUNCTION_63_1(__n128 *a1)
{
  result = v1[1];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a17;
  *(result + 48) = a20;
  *(result + 56) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

id OUTLINED_FUNCTION_102_0()
{

  return [v0 (v1 + 2135)];
}

void (*OUTLINED_FUNCTION_104_0())(id *a1)
{

  return sub_2683ABDEC(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_105_0(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_106_0()
{
}

id OUTLINED_FUNCTION_109_0()
{
  *(v1 + 16) = v0;

  return v0;
}

void OUTLINED_FUNCTION_110_0()
{
  *(v2 + 50) = v0;
  *(v2 + 49) = v1;
  *(v2 + 48) = 0;
  *(v2 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_122_0()
{

  return sub_2683D01B8();
}

uint64_t OUTLINED_FUNCTION_123_0()
{
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return sub_2683D00A8();
}

uint64_t OUTLINED_FUNCTION_126_0(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_127(uint64_t a1)
{

  return sub_2683CFA38();
}

uint64_t OUTLINED_FUNCTION_129_0()
{

  return sub_2683D00A8();
}

uint64_t OUTLINED_FUNCTION_130_0(uint64_t a1)
{

  return sub_2681433DC(a1, v1, v2);
}

uint64_t static Snippet.simpleConfirmation(confirmLabel:rejectLabel:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *a1;
  a3[1] = v3;
  type metadata accessor for Snippet(0);

  return swift_storeEnumTagMultiPayload();
}

_BYTE *Snippet.SimpleConfirmation.init(confirmLabel:rejectLabel:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t sub_2681B601C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C7463656A6572 && a2 == 0xEB000000006C6562)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2681B60EC(char a1)
{
  if (a1)
  {
    return 0x614C7463656A6572;
  }

  else
  {
    return 0x4C6D7269666E6F63;
  }
}

uint64_t sub_2681B613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681B601C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681B6164(uint64_t a1)
{
  v2 = sub_2681B634C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681B61A0(uint64_t a1)
{
  v2 = sub_2681B634C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.SimpleConfirmation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E8C0, &qword_2683D8480);
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681B634C();
  sub_2683D0718();
  v16 = v10;
  v15[1] = 0;
  sub_2681B63A0();
  OUTLINED_FUNCTION_2_15(&v16);
  if (!v2)
  {
    v15[0] = v13;
    v14 = 1;
    OUTLINED_FUNCTION_2_15(v15);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_2681B634C()
{
  result = qword_28024E8C8;
  if (!qword_28024E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8C8);
  }

  return result;
}

unint64_t sub_2681B63A0()
{
  result = qword_28024E8D0;
  if (!qword_28024E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8D0);
  }

  return result;
}

uint64_t Snippet.SimpleConfirmation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E8D8, &qword_2683D8488);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9 - 4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681B634C();
  sub_2683D06F8();
  if (!v2)
  {
    v16[0] = 0;
    sub_2681B6594();
    OUTLINED_FUNCTION_0_26(&type metadata for Snippet.LocalizableLabel, v16);
    v11 = v16[1];
    v15[0] = 1;
    OUTLINED_FUNCTION_0_26(&type metadata for Snippet.LocalizableLabel, v15);
    (*(v7 + 8))(v10, v5);
    v12 = v15[1];
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_2681B6594()
{
  result = qword_28024E8E0;
  if (!qword_28024E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8E0);
  }

  return result;
}

unint64_t sub_2681B65EC()
{
  result = qword_28024E8E8;
  if (!qword_28024E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8E8);
  }

  return result;
}

unint64_t sub_2681B6644()
{
  result = qword_28024E8F0;
  if (!qword_28024E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8F0);
  }

  return result;
}

uint64_t _s14descr2878F8F29V18SimpleConfirmationVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 65286 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65286 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65287;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s14descr2878F8F29V18SimpleConfirmationVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65286 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V18SimpleConfirmationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2681B691C()
{
  result = qword_28024E8F8;
  if (!qword_28024E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8F8);
  }

  return result;
}

unint64_t sub_2681B6974()
{
  result = qword_28024E900;
  if (!qword_28024E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E900);
  }

  return result;
}

unint64_t sub_2681B69CC()
{
  result = qword_28024E908;
  if (!qword_28024E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E908);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1, uint64_t a2)
{

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{

  return sub_2683D0548();
}

uint64_t sub_2681B6A64()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_2681B6AB0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26813CA00(a1, a4);
  sub_26813CA00(a2, a4 + 40);
  v8 = *(type metadata accessor for SnoozeTasksIntentWrapper(0) + 24);
  v9 = sub_2683CB668();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a4 + v8, a3, v9);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v11 = sub_2683CF7E8();
  __swift_project_value_buffer(v11, qword_28027C958);
  v12 = sub_2683CF7C8();
  v13 = sub_2683CFE58();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2680EB000, v12, v13, "[SnoozeTasksIntentWrapper] Created", v14, 2u);
    OUTLINED_FUNCTION_38();
  }

  (*(v10 + 8))(a3, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t type metadata accessor for SnoozeTasksIntentWrapper(uint64_t a1)
{
  result = qword_28024E910;
  if (!qword_28024E910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681B6C78()
{
  *(v1 + 16) = v0;
  type metadata accessor for IntentTriggerModel(0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681B6D08);
}

void sub_2681B6D08()
{
  v1 = v0[2];
  v2 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_268162270(*v2);
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_2683D2250;
    *(v3 + 32) = v4;
  }

  v0[4] = v3;
  v5 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0[2], v1[3]);

  sub_2681C326C(v6, 0, v5);
  v7 = *v5;
  v0[5] = *v5;

  sub_2681B7664(v5);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1((v0[2] + 40), *(v0[2] + 64));
    v8 = qword_28024C960;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_2683CE918();
    __swift_project_value_buffer(v9, qword_28027CAC8);
    sub_26812A5A4();
    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_2681B70A0;
    OUTLINED_FUNCTION_2_16();

    __asm { BR              X3 }
  }

  v13 = v0[2];
  sub_268143430();
  v14 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_2681623EC(*v14);
  v15 = sub_2683CFF18();
  v16 = sub_26821AD1C();

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v17 = sub_2683CF7E8();
  __swift_project_value_buffer(v17, qword_28027C958);
  v18 = v16;
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE98();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    v23 = v18;
    v24 = [v23 description];
    v25 = sub_2683CFA78();
    v27 = v26;

    v28 = sub_2681610A0(v25, v27, &v31);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_2680EB000, v19, v20, "⚙️ [SnoozeTasksIntentWrapper] made intent: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_2_16();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2681B70A0(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_2681B71C0);
}

void sub_2681B71C0()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  sub_268143430();
  v3 = *__swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = v1;
  sub_2681623EC(v3);
  v5 = sub_2683CFF18();
  v6 = sub_26821AD1C();

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v7 = sub_2683CF7E8();
  __swift_project_value_buffer(v7, qword_28027C958);
  v8 = v6;
  v9 = sub_2683CF7C8();
  v10 = sub_2683CFE98();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = v8;
    v14 = [v13 description];
    v15 = sub_2683CFA78();
    v21 = v4;
    v17 = v16;

    v18 = sub_2681610A0(v15, v17, &v22);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v9, v10, "⚙️ [SnoozeTasksIntentWrapper] made intent: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_16();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2681B73F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681B7480;

  return sub_2681B6C78();
}

uint64_t sub_2681B7480(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2681B75A8(uint64_t a1)
{
  result = sub_26812EB34(319, &qword_28024E920, &protocol descriptor for SnoozeTasksIntentModel);
  if (v2 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D380, &protocol descriptor for NotebookDateTimeResolving);
    if (v3 <= 0x3F)
    {
      result = sub_2683CB668();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2681B7664(uint64_t a1)
{
  v2 = type metadata accessor for IntentTriggerModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Snippet.ReminderDetail.reminders.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Snippet.ReminderDetail.list.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x61uLL);
  memcpy(a1, (v1 + 8), 0x61uLL);
  return sub_26814FB60(__dst, &v4);
}

void *Snippet.ReminderDetail.list.setter()
{
  memcpy(__dst, (v0 + 8), 0x61uLL);
  sub_26814F740(__dst);
  return OUTLINED_FUNCTION_2_17((v0 + 8));
}

BOOL static Snippet.ReminderDetail.== infix(_:_:)(uint64_t *__src, uint64_t *a2)
{
  v3 = __src + 1;
  v4 = *__src;
  memcpy(__dst, __src + 1, 0x61uLL);
  v5 = *a2;
  OUTLINED_FUNCTION_2_17(v20);
  sub_26814B760(v4, v5, v6, v7, v8, v9, v10, v11, *v15, *&v15[8], *&v15[16], *&v15[24], *&v15[32], *&v15[40], *&v15[48], *&v15[56], *&v15[64], *&v15[72]);
  if (v12)
  {
    memcpy(__srca, v3, 0x61uLL);
    OUTLINED_FUNCTION_2_17(v15);
    sub_26814FB60(__dst, v18);
    sub_26814FB60(v20, v18);
    v13 = static Snippet.ReminderList.== infix(_:_:)(__srca, v15);
    memcpy(v17, v15, 0x61uLL);
    sub_26814F740(v17);
    memcpy(v18, __srca, 0x61uLL);
    sub_26814F740(v18);
  }

  else
  {
    return 0;
  }

  return v13;
}

uint64_t sub_2681B78E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953720684 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2681B79B4(char a1)
{
  if (a1)
  {
    return 1953720684;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_2681B79F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681B78E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681B7A18(uint64_t a1)
{
  v2 = sub_2681B7CE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681B7A54(uint64_t a1)
{
  v2 = sub_2681B7CE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.ReminderDetail.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E928, &qword_2683D86B0);
  OUTLINED_FUNCTION_0_3();
  v13 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  memcpy(__dst, v1 + 1, 0x61uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681B7CE4();

  sub_2683D0718();
  v15[0] = v9;
  v14[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
  sub_2681B81A8(&qword_28024D880, &qword_28024D888, &protocol conformance descriptor for Snippet.Reminder, MEMORY[0x277D83948]);
  sub_2683D0548();

  if (v2)
  {
    return (*(v13 + 8))(v8, v4);
  }

  memcpy(v15, __dst, 0x61uLL);
  __dst[127] = 1;
  sub_26814FB60(__dst, v14);
  sub_26814F7E8();
  sub_2683D0548();
  v11 = (v13 + 8);
  memcpy(v14, v15, 0x61uLL);
  sub_26814F740(v14);
  return (*v11)(v8, v4);
}

unint64_t sub_2681B7CE4()
{
  result = qword_28024E930;
  if (!qword_28024E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E930);
  }

  return result;
}

uint64_t Snippet.ReminderDetail.hash(into:)(uint64_t a1)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  sub_26814E1A8();
  return Snippet.ReminderList.hash(into:)(a1);
}

uint64_t Snippet.ReminderDetail.hashValue.getter()
{
  memcpy(v2, (v0 + 8), sizeof(v2));
  sub_2683D0698();
  sub_26814E1A8();
  Snippet.ReminderList.hash(into:)(v3);
  return sub_2683D06D8();
}

uint64_t Snippet.ReminderDetail.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E938, &qword_2683D86B8);
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681B7CE4();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
  LOBYTE(v10[0]) = 0;
  sub_2681B81A8(&qword_28024D8F8, &qword_28024D900, &protocol conformance descriptor for Snippet.Reminder, MEMORY[0x277D83978]);
  sub_2683D04A8();
  v5 = v11;
  __dst[127] = 1;
  sub_26814FCE8();
  sub_2683D04A8();
  v6 = OUTLINED_FUNCTION_0_27();
  v7(v6);
  memcpy(__dst, v13, 0x61uLL);
  v10[0] = v5;
  memcpy(&v10[1], v13, 0x61uLL);
  memcpy(a2, v10, 0x69uLL);
  sub_2681B8274(v10, &v11);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v11 = v5;
  memcpy(v12, __dst, sizeof(v12));
  return sub_2681B82AC(&v11);
}

uint64_t sub_2681B8090(uint64_t a1)
{
  memcpy(v3, (v1 + 8), sizeof(v3));
  sub_2683D0698();
  sub_26814E1A8();
  Snippet.ReminderList.hash(into:)(v4);
  return sub_2683D06D8();
}

uint64_t static Snippet.reminderDetail(reminders:list:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, a2, 0x61uLL);
  *a3 = a1;
  OUTLINED_FUNCTION_2_17(a3 + 1);
  type metadata accessor for Snippet(0);
  swift_storeEnumTagMultiPayload();
  sub_26814FB60(__dst, &v6);
}

uint64_t sub_2681B81A8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_2681B8230(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2681B8230(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Snippet.Reminder(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2681B82E0()
{
  result = qword_28024E940;
  if (!qword_28024E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E940);
  }

  return result;
}

unint64_t sub_2681B8338()
{
  result = qword_28024E948;
  if (!qword_28024E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E948);
  }

  return result;
}

unint64_t sub_2681B8390()
{
  result = qword_28024E950;
  if (!qword_28024E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E950);
  }

  return result;
}

uint64_t sub_2681B83EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_2681B842C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V14ReminderDetailV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2681B8578()
{
  result = qword_28024E958;
  if (!qword_28024E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E958);
  }

  return result;
}

unint64_t sub_2681B85D0()
{
  result = qword_28024E960;
  if (!qword_28024E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E960);
  }

  return result;
}

unint64_t sub_2681B8628()
{
  result = qword_28024E968;
  if (!qword_28024E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E968);
  }

  return result;
}

void *OUTLINED_FUNCTION_2_17(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

void sub_2681B86A4(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  if (sub_2682206DC(a1, 0))
  {
    v8 = 2;
LABEL_5:
    *a4 = v8;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 49) = 0u;
    return;
  }

  v9 = sub_2681B878C(a1, a2, a3);
  if (v9 == 2)
  {
    v8 = 3;
    goto LABEL_5;
  }

  *a4 = v9 & 1;
  if (qword_28024CC48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for NotebookTaskParser(0);
  __swift_project_value_buffer(v10, qword_28027CE50);
  sub_268372510();
}

uint64_t sub_2681B878C(char *a1, uint64_t a2, void (*a3)(uint64_t *, char *, uint64_t))
{
  v58 = a2;
  v59 = a3;
  v4 = sub_2683CCC68();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2683CCBD8();
  v61 = *(v6 - 1);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v60 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2683CE448();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2683CCC18();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v53 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = *(v13 + 16);
  v57 = a1;
  v25 = a1;
  v26 = v24;
  v24((&v53 - v22), v25, v12);
  v27 = (*(v13 + 88))(v23, v12);
  if (v27 == *MEMORY[0x277D5C128])
  {
    v26(v21, v23, v12);
    (*(v13 + 96))(v21, v12);
    (*(v9 + 32))(v11, v21, v8);
    v28 = sub_2681B8F98(v11);
    (*(v9 + 8))(v11, v8);
    goto LABEL_5;
  }

  if (v27 == *MEMORY[0x277D5C158])
  {
    v26(v21, v23, v12);
    (*(v13 + 96))(v21, v12);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E970, &unk_2683D8990);
    v28 = sub_2681B93D8(*(v21 + *(v29 + 48)), v58, v59);

    (*(v9 + 8))(v21, v8);
    goto LABEL_5;
  }

  if (v27 != *MEMORY[0x277D5C150])
  {
    if (v27 == *MEMORY[0x277D5C130])
    {
      v26(v21, v23, v12);
      (*(v13 + 96))(v21, v12);
      v28 = sub_2681B9D00(*v21);
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    if (v27 == *MEMORY[0x277D5C160])
    {
      v26(v21, v23, v12);
      (*(v13 + 96))(v21, v12);
      v40 = v53;
      v39 = v54;
      v41 = v55;
      (*(v54 + 32))(v53, v21, v55);
      v28 = sub_2681B9EC4();
      (*(v39 + 8))(v40, v41);
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  v59 = v26;
  v26(v18, v23, v12);
  (*(v13 + 96))(v18, v12);
  (*(v61 + 32))(v60, v18, v62);
  v31 = sub_2683CCBB8();
  v33 = v32;
  if (qword_28024CC68 != -1)
  {
    swift_once();
  }

  v35 = qword_2802540E0;
  v34 = unk_2802540E8;
  v63 = qword_2802540D0;
  v64 = *algn_2802540D8;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v35, v34);
  if (v31 == v63 && v33 == v64)
  {

    goto LABEL_18;
  }

  v37 = sub_2683D0598();

  if (v37)
  {
LABEL_18:
    v38 = v60;
    v28 = sub_2681B9A5C(v60);
    (*(v61 + 8))(v38, v62);
    goto LABEL_5;
  }

  (*(v61 + 8))(v60, v62);
  v26 = v59;
LABEL_21:
  v42 = v26;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v43 = sub_2683CF7E8();
  __swift_project_value_buffer(v43, qword_28027C958);
  v44 = v56;
  v26(v56, v57, v12);
  v45 = sub_2683CF7C8();
  v46 = sub_2683CFE98();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = v62;
    *v47 = 136315138;
    v42(v21, v44, v12);
    v48 = sub_2683CFAD8();
    v50 = v49;
    (*(v13 + 8))(v44, v12);
    v51 = sub_2681610A0(v48, v50, &v63);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_2680EB000, v45, v46, "[ConfirmationResponse] parse failed. Unsupported parse type: %s", v47, 0xCu);
    v52 = v62;
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x26D617A40](v52, -1, -1);
    MEMORY[0x26D617A40](v47, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v44, v12);
  }

  v28 = 2;
LABEL_5:
  (*(v13 + 8))(v23, v12);
  return v28;
}

uint64_t sub_2681B8F98(uint64_t a1)
{
  v2 = type metadata accessor for NotebookNLv3Intent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CE448();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v9 = sub_2683CF7E8();
  __swift_project_value_buffer(v9, qword_28027C958);
  v27 = *(v6 + 16);
  v27(v8, a1, v5);
  v10 = sub_2683CF7C8();
  v11 = sub_2683CFE98();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = v2;
    v13 = v12;
    v24 = swift_slowAlloc();
    v25 = v4;
    v28 = v24;
    *v13 = 136315138;
    sub_2681BA0DC(&qword_28024E980, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
    v14 = sub_2683D0568();
    v15 = a1;
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = sub_2681610A0(v14, v17, &v28);
    a1 = v15;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v10, v11, "[ConfirmationResponse] parsing nlIntent %s", v13, 0xCu);
    v19 = v24;
    __swift_destroy_boxed_opaque_existential_0(v24);
    v4 = v25;
    MEMORY[0x26D617A40](v19, -1, -1);
    MEMORY[0x26D617A40](v13, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v27(v4, a1, v5);
  if (qword_28024CB98 != -1)
  {
    swift_once();
  }

  sub_2681BA0DC(&qword_28024CDA8, type metadata accessor for NotebookNLv3Intent, &unk_2683F3D78);
  sub_2683CD5C8();
  sub_2681BA080(v4);
  v20 = v29;
  result = 2;
  switch(v29)
  {
    case 2u:

      goto LABEL_13;
    case 3u:
      return result;
    default:
      v22 = sub_2683D0598();

      if (v22)
      {
LABEL_13:
        result = 2;
      }

      else if (v20)
      {
        v23 = sub_2683D0598();

        result = (v23 & 1) == 0;
      }

      else
      {

        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_2681B93D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2683CC018();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  if (qword_28024C8E0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v13 = sub_2683CF7E8();
  v14 = __swift_project_value_buffer(v13, qword_28027C958);

  v53 = v14;
  v15 = sub_2683CF7C8();
  v16 = sub_2683CFE98();

  v17 = os_log_type_enabled(v15, v16);
  v52 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v50 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v51 = v6;
    v21 = v20;
    v54 = a1;
    v55 = v20;
    *v19 = 136315138;
    sub_2683CCC08();

    v22 = sub_2683CFAD8();
    v10 = v23;
    v24 = sub_2681610A0(v22, v23, &v55);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_2680EB000, v15, v16, "[ConfirmationResponse] parsing serverConversion %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v25 = v21;
    v6 = v51;
    MEMORY[0x26D617A40](v25, -1, -1);
    v26 = v19;
    v7 = v50;
    MEMORY[0x26D617A40](v26, -1, -1);
  }

  sub_2683CCBE8();
  v27 = (*(v7 + 88))(v12, v6);
  if (v27 != *MEMORY[0x277D5B960])
  {
    if (v27 != *MEMORY[0x277D5B970])
    {
      if (v27 == *MEMORY[0x277D5B978])
      {
        return 0;
      }

      if (v27 == *MEMORY[0x277D5B968])
      {
        return 1;
      }

      v30 = sub_2683CF7C8();
      v31 = sub_2683CFE78();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v55 = v33;
        *v32 = 136315138;
        sub_2683CCBE8();
        v34 = sub_2683CFAD8();
        v36 = sub_2681610A0(v34, v35, &v55);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_2680EB000, v30, v31, "[ConfirmationResponse] Parse ConfirmationResponse got unknown SirikitConfirmationState: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x26D617A40](v33, -1, -1);
        MEMORY[0x26D617A40](v32, -1, -1);
      }

      (*(v7 + 8))(v12, v6);
    }

    return 2;
  }

  if (!a3)
  {
LABEL_26:

    v37 = sub_2683CF7C8();
    v38 = sub_2683CFE78();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55 = v40;
      *v39 = 136315138;
      if (a3)
      {
        v41 = a3;
      }

      else
      {
        a2 = 0xD00000000000001BLL;
        v41 = 0x80000002683FE580;
      }

      v42 = sub_2681610A0(a2, v41, &v55);

      *(v39 + 4) = v42;
      _os_log_impl(&dword_2680EB000, v37, v38, "[ConfirmationResponse] Unable to get parameter metadata: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x26D617A40](v40, -1, -1);
      MEMORY[0x26D617A40](v39, -1, -1);
    }

    return 2;
  }

  v12 = sub_2683CCBF8();
  a1 = sub_2683ABE58();
  v6 = 0;
  v7 = v12 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (a1 == v6)
    {

      goto LABEL_26;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D616C90](v6, v12);
    }

    else
    {
      if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (sub_2683CC028() == a2 && v28 == a3)
    {
      break;
    }

    v10 = sub_2683D0598();

    if (v10)
    {
      goto LABEL_34;
    }

    ++v6;
  }

LABEL_34:

  v44 = sub_2683CC038();
  v45 = sub_2683CF7C8();
  v46 = sub_2683CFE98();
  v47 = os_log_type_enabled(v45, v46);
  if (v44)
  {
    if (v47)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2680EB000, v45, v46, "[ConfirmationResponse] Received parameter metadata for the expected parameter from the server and it is marked shouldResolve. Treating as rejected", v48, 2u);
      MEMORY[0x26D617A40](v48, -1, -1);
    }

    return 1;
  }

  if (v47)
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_2680EB000, v45, v46, "[ConfirmationResponse] Received parameter metadata for the expected parameter from the server and shouldResolve is false. Treating as confirmed", v49, 2u);
    MEMORY[0x26D617A40](v49, -1, -1);
  }

  return 0;
}

uint64_t sub_2681B9A5C(uint64_t a1)
{
  v2 = sub_2683CCBD8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v9 = sub_2683CF7E8();
  __swift_project_value_buffer(v9, qword_28027C958);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v11 = sub_2683CF7C8();
  v12 = sub_2683CFE98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v6;
    v16 = v15;
    v28 = v15;
    *v14 = 136315138;
    v17 = sub_2683CCBB8();
    v25 = v10;
    v19 = v18;
    (*(v3 + 8))(v8, v2);
    v20 = sub_2681610A0(v17, v19, &v28);
    v10 = v25;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2680EB000, v11, v12, "[ConfirmationResponse] parsing direct invocation with id: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v21 = v16;
    v6 = v26;
    MEMORY[0x26D617A40](v21, -1, -1);
    v22 = v14;
    a1 = v27;
    MEMORY[0x26D617A40](v22, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  v10(v6, a1, v2);
  sub_26834CD60(v6, &v29);
  if ((v29 & 0xFE) == 2)
  {
    return 2;
  }

  else
  {
    return v29 != 0;
  }
}

uint64_t sub_2681B9D00(uint64_t a1)
{
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v1 = sub_2683CF7E8();
  __swift_project_value_buffer(v1, qword_28027C958);
  swift_unknownObjectRetain();
  v2 = sub_2683CF7C8();
  v3 = sub_2683CFE98();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E988, &qword_2683D89A0);
    v6 = sub_2683CFAD8();
    v8 = sub_2681610A0(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2680EB000, v2, v3, "[ConfirmationResponse] parsing userDialogAct %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26D617A40](v5, -1, -1);
    MEMORY[0x26D617A40](v4, -1, -1);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 0;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2681B9EC4()
{
  v0 = sub_2683CCDD8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CCC58();
  v4 = sub_2683CCF78();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v5 = sub_2681B9D00(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v6 = sub_2683CF7E8();
    __swift_project_value_buffer(v6, qword_28027C958);
    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE78();
    if (os_log_type_enabled(v7, v8))
    {
      v5 = 2;
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2680EB000, v7, v8, "[ConfirmationResponse] Couldn't convert USO parse to dialog act", v9, 2u);
      MEMORY[0x26D617A40](v9, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  return v5;
}

uint64_t sub_2681BA080(uint64_t a1)
{
  v2 = type metadata accessor for NotebookNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681BA0DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_12SiriNotebook0B4TaskO(uint64_t a1)
{
  if ((*(a1 + 56) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 56) & 7;
  }
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook0B4TaskOSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook16ConfirmationTaskO(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2681BA170(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[65])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2681BA1B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

double sub_2681BA204(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *a1 = a2 + 1;
  }

  return result;
}

uint64_t sub_2681BA24C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2681BA28C(uint64_t result, int a2, int a3)
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

_BYTE *sub_2681BA2D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2681BA3B0()
{
  result = qword_28024E990;
  if (!qword_28024E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E990);
  }

  return result;
}

uint64_t sub_2681BA404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E9A0, &qword_2683D8BD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_2683CDE08();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  if (!a1)
  {
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    goto LABEL_5;
  }

  sub_2683CDDF8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {

LABEL_5:
    sub_2681BAB28(v4);
    return 0;
  }

  (*(v6 + 32))(v17, v4, v5);
  v19 = *(v6 + 16);
  v19(v15, v17, v5);
  v20 = (*(v6 + 88))(v15, v5);
  if (v20 == *MEMORY[0x277D5F0C0])
  {
    v21 = OUTLINED_FUNCTION_1_20();
    v22(v21);

    return 0;
  }

  if (v20 == *MEMORY[0x277D5F0B0])
  {
    v23 = OUTLINED_FUNCTION_1_20();
    v24(v23);

    return 2;
  }

  else
  {
    if (v20 != *MEMORY[0x277D5F0B8])
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v27 = sub_2683CF7E8();
      __swift_project_value_buffer(v27, qword_28027C958);
      v19(v12, v17, v5);
      v28 = sub_2683CF7C8();
      v41 = sub_2683CFE78();
      if (os_log_type_enabled(v28, v41))
      {
        v29 = swift_slowAlloc();
        v40 = v28;
        v30 = v29;
        v39 = swift_slowAlloc();
        v42 = v39;
        *v30 = 136315138;
        v19(v9, v12, v5);
        v38 = sub_2683CFAD8();
        v32 = v31;
        v33 = OUTLINED_FUNCTION_2_18();
        (v19)(v33);
        v34 = sub_2681610A0(v38, v32, &v42);

        *(v30 + 4) = v34;
        v35 = v40;
        _os_log_impl(&dword_2680EB000, v40, v41, "[INTaskStatus] Unknown completion status value: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {

        v36 = OUTLINED_FUNCTION_2_18();
        (v19)(v36);
      }

      (v19)(v17, v5);
      (v19)(v15, v5);
      return 0;
    }

    v25 = OUTLINED_FUNCTION_1_20();
    v26(v25);

    return 1;
  }
}

uint64_t INTaskStatus.description.getter(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E752ELL;
    case 2:
      return 0x74656C706D6F632ELL;
    case 1:
      return 0x706D6F43746F6E2ELL;
  }

  sub_2683D0178();

  v3 = sub_2683D0568();
  MEMORY[0x26D616690](v3);

  MEMORY[0x26D616690](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_2681BA96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 2 || a1 == 1)
    {
      sub_2683CFB38();
      v4 = 0;
      goto LABEL_11;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v5 = sub_2683CF7E8();
    __swift_project_value_buffer(v5, qword_28027C958);
    v6 = sub_2683CF7C8();
    v7 = sub_2683CFE78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v11 = INTaskStatus.description.getter(a1, v10);
      v13 = sub_2681610A0(v11, v12, &v16);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_2680EB000, v6, v7, "[INTaskStatus asCATEnum] got unknown value: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  v4 = 1;
LABEL_11:
  v14 = sub_2683CF168();

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v14);
}

uint64_t sub_2681BAB28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E9A0, &qword_2683D8BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2681BABB8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = sub_2683CFA68();

    v2 = [v3 initWithSpokenPhrase_];
  }

  return v2;
}

uint64_t sub_2681BAC30()
{
  v1 = sub_2681BACB4(v0);
  if (v2)
  {
    if (v1 == 0xD000000000000012 && v2 == 0x80000002683FE5A0)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2683D0598();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2681BACB4(void *a1)
{
  v1 = [a1 vocabularyIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_2681BAD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = *a2;
  *(v4 + 48) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_2681BAD50);
}

uint64_t sub_2681BAD50()
{
  if (*(v0 + 48))
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v3 = *(v0 + 24);
    sub_268129504(0, &qword_280253380, 0x277D4C598);

    v4 = sub_2681C2F00(v2, v1, 0, 1);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 1;
    *(v5 + 32) = v4;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 1;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    *(v5 + 96) = MEMORY[0x277D84F90];
    *(v5 + 104) = v3;
    v6 = &unk_2683D8170;
    v7 = &unk_2683DC930;
  }

  else
  {
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2683D2250;
    sub_268129504(0, &qword_28024E9A8, 0x277D4C6B8);
    *(v10 + 32) = sub_2681C8F60(v9);
    OUTLINED_FUNCTION_37_4();
    v5 = swift_allocObject();
    *(v5 + 16) = v10;
    *(v5 + 24) = 1;
    *(v5 + 32) = MEMORY[0x277D84F90];
    *(v5 + 40) = v8;
    v6 = &unk_2683D8C00;
    v7 = &unk_2683D8BF8;
  }

  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;

  v14 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2683D1EC0;
  *(v15 + 32) = v6;
  *(v15 + 40) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *v14 = &unk_2683D8BE8;
  v14[1] = v16;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2681BAFFC()
{
  OUTLINED_FUNCTION_14();
  memcpy((v0 + 16), v1, 0x60uLL);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_2681BB09C;

  return sub_26833D840();
}

uint64_t sub_2681BB09C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2681BB188(uint64_t a1, uint64_t *a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_2681865A4;

  return sub_26833D974();
}

uint64_t sub_2681BB248()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_2681BB2F4(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2681BB314);
}

uint64_t sub_2681BB314()
{
  swift_beginAccess();
  if (sub_2683ABE58())
  {
    swift_beginAccess();
    sub_2682229A0();
    swift_endAccess();
    sub_2683CC3B8();
  }

  else
  {
    sub_2683CC3F8();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2681BB3DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EachFlow();
  sub_2681BB63C();
  return sub_2683CBF48();
}

uint64_t sub_2681BB438()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2681BB494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2681B7480;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2681BB568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268195F80;

  return sub_2681BB2F4(a1);
}

uint64_t sub_2681BB604(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EachFlow();

  return sub_2683CBF88();
}

unint64_t sub_2681BB63C()
{
  result = qword_28024DF00;
  if (!qword_28024DF00)
  {
    type metadata accessor for EachFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DF00);
  }

  return result;
}

uint64_t sub_2681BB690(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2681BB6D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2681BB738(uint64_t a1, uint64_t a2)
{
  v2 = sub_2683D0408();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2681BB78C(char a1)
{
  if (a1)
  {
    return 0x6F4E686372616573;
  }

  else
  {
    return 0x6F4E657461657263;
  }
}

uint64_t sub_2681BB7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2681BB738(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2681BB818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2681BB78C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2681BB850(uint64_t a1, uint64_t a2)
{
  sub_2683D0178();

  strcpy(v6, "NotesOnWatch[");
  HIWORD(v6[1]) = -4864;
  if (*(v2 + 104))
  {
    v3 = 0x6F4E686372616573;
  }

  else
  {
    v3 = 0x6F4E657461657263;
  }

  if (*(v2 + 104))
  {
    v4 = 0xEB00000000736574;
  }

  else
  {
    v4 = 0xEA00000000006574;
  }

  MEMORY[0x26D616690](v3, v4);

  MEMORY[0x26D616690](93, 0xE100000000000000);
  return v6[0];
}

uint64_t sub_2681BB924()
{
  __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  if ((sub_2683CC0B8() & 1) == 0)
  {
    return 2;
  }

  v5 = 1;
  if ((sub_26812A998(&v5) & 1) == 0)
  {
    return 2;
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v1);
  if (((*(v2 + 72))(v1, v2) & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + 104) == 1)
  {

    return 1;
  }

  else
  {
    v4 = sub_2683D0598();

    if (v4)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2681BBA48()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 848) = v2;
  *(v1 + 336) = v3;
  *(v1 + 344) = v0;
  v4 = sub_2683CB668();
  *(v1 + 352) = v4;
  OUTLINED_FUNCTION_3_1(v4);
  *(v1 + 360) = v5;
  *(v1 + 368) = swift_task_alloc();
  v6 = type metadata accessor for Snippet(0);
  *(v1 + 376) = v6;
  OUTLINED_FUNCTION_23(v6);
  *(v1 + 384) = OUTLINED_FUNCTION_55();
  *(v1 + 392) = swift_task_alloc();
  *(v1 + 400) = swift_task_alloc();
  *(v1 + 408) = swift_task_alloc();
  *(v1 + 416) = swift_task_alloc();
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  *(v1 + 440) = swift_task_alloc();
  v7 = sub_2683CC9A8();
  *(v1 + 448) = v7;
  OUTLINED_FUNCTION_3_1(v7);
  *(v1 + 456) = v8;
  *(v1 + 464) = OUTLINED_FUNCTION_55();
  *(v1 + 472) = swift_task_alloc();
  v9 = sub_2683CC138();
  *(v1 + 480) = v9;
  OUTLINED_FUNCTION_3_1(v9);
  *(v1 + 488) = v10;
  *(v1 + 496) = OUTLINED_FUNCTION_55();
  *(v1 + 504) = swift_task_alloc();
  *(v1 + 512) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v11);
  *(v1 + 520) = OUTLINED_FUNCTION_55();
  *(v1 + 528) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v12);
  *(v1 + 536) = OUTLINED_FUNCTION_55();
  *(v1 + 544) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v13);
  *(v1 + 552) = OUTLINED_FUNCTION_55();
  *(v1 + 560) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v14);
  *(v1 + 568) = v15;
  *(v1 + 576) = *(v16 + 64);
  *(v1 + 584) = OUTLINED_FUNCTION_55();
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  *(v1 + 608) = swift_task_alloc();
  *(v1 + 616) = swift_task_alloc();
  *(v1 + 624) = swift_task_alloc();
  *(v1 + 632) = swift_task_alloc();
  *(v1 + 640) = swift_task_alloc();
  *(v1 + 648) = swift_task_alloc();
  *(v1 + 656) = swift_task_alloc();
  *(v1 + 664) = swift_task_alloc();
  *(v1 + 672) = swift_task_alloc();
  *(v1 + 680) = swift_task_alloc();
  *(v1 + 688) = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_2681BBDCC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 848);
  *(v0 + 696) = v1[7];
  v3 = *(v0 + 376);
  if (v2)
  {
    v4 = *(v0 + 624);
    v6 = *(v0 + 360);
    v5 = *(v0 + 368);
    v20 = *(v0 + 352);
    v7 = v1[5];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    sub_2683CC088();
    static Snippet.appPunchout(to:siriLocale:)(v7, v5, v4);
    (*(v6 + 8))(v5, v20);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    v11 = swift_task_alloc();
    *(v0 + 776) = v11;
    *v11 = v0;
    v11[1] = sub_2681BD480;

    return sub_268367C2C();
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v3);
    v19 = swift_task_alloc();
    *(v0 + 704) = v19;
    *v19 = v0;
    v19[1] = sub_2681BBFA4;

    return sub_268367CD0();
  }
}

uint64_t sub_2681BBFA4()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *v4 = *v1;
  v3[89] = v5;
  v3[90] = v0;

  if (v0)
  {
    sub_2681433DC(v3[85], &qword_28024E770, &qword_2683D80D0);
    v6 = OUTLINED_FUNCTION_41_0();
    sub_2681433DC(v6, v7, &qword_2683D80D0);
    v8 = sub_2681BE968;
  }

  else
  {
    v8 = sub_2681BC0E8;
  }

  return MEMORY[0x2822009F8](v8);
}

void sub_2681BC0E8()
{
  v1 = v0[89];
  v2 = v0[70];
  sub_2683CC528();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_2683CED08();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_2683CC1D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v15 = swift_allocObject();
  v0[91] = v15;
  *(v15 + 16) = xmmword_2683D2250;
  *(v15 + 32) = v1;
  v16 = v1;
  if (sub_2683ABE58())
  {
    OUTLINED_FUNCTION_52_2();
    if (v2)
    {
      v17 = MEMORY[0x26D616C90](0, v15);
    }

    else
    {
      v17 = *(v15 + 32);
    }

    v18 = v17;
    v19 = [v17 catId];

    v96 = sub_2683CFA78();
    v101 = v20;
  }

  else
  {
    v96 = 0;
    v101 = 0;
  }

  v21 = v0[87];
  v22 = v0[86];
  v23 = v0[84];
  v24 = v0[83];
  v25 = v0[71];
  v87 = v0[70];
  v89 = v0[68];
  v91 = v0[66];
  v85 = v0[64];
  OUTLINED_FUNCTION_51_3(v0[85]);
  sub_2681BED1C(v22, v24);
  OUTLINED_FUNCTION_34_5();
  v26 = swift_allocObject();
  v0[92] = v26;
  *(v26 + 16) = v21;
  sub_2681430AC(v23, v26 + v25);
  sub_2681430AC(v24, v26 + v22);
  v27 = OUTLINED_FUNCTION_49_3();
  v28(v27);
  v29 = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_18_13(v29, v30, v31, v32, v33, v34, v35, v36, v85, v87, v89, v91, v93, v94, v96, v97, v99, v101);
  *(v37 + 72) = sub_2681B5854;
  *(v37 + 80) = v26;
  OUTLINED_FUNCTION_38_5(v37, v38, v39, v40, v41, v42, v43, v44, v86, v88, v90, v92);
  OUTLINED_FUNCTION_53_1();

  sub_2681BED1C(v95, v100);
  if (__swift_getEnumTagSinglePayload(v100, 1, v98) == 1)
  {
    v45 = v0 + 82;
  }

  else
  {
    v46 = v0[47];
    sub_26814320C(v0[82], v0[55]);
    v47 = OUTLINED_FUNCTION_41_0();
    sub_2681BED1C(v47, v48);
    v49 = OUTLINED_FUNCTION_37_5();
    if (__swift_getEnumTagSinglePayload(v49, v50, v46) != 1)
    {
      v70 = v0[54];
      v71 = v0[47];
      sub_26814320C(v0[81], v70);
      v0[35] = v71;
      v72 = sub_268143270();
      v0[36] = v72;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
      OUTLINED_FUNCTION_41_4(boxed_opaque_existential_0);
      v0[40] = v71;
      v0[41] = v72;
      v74 = __swift_allocate_boxed_opaque_existential_0(v0 + 37);
      sub_2681432C8(v70, v74);
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_10_2();
      v0[93] = v75;
      *v75 = v76;
      OUTLINED_FUNCTION_30_6(v75);
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X5 }
    }

    v45 = v0 + 81;
    sub_26814332C(v0[55]);
  }

  v51 = v0[47];
  sub_2681433DC(*v45, &qword_28024E770, &qword_2683D80D0);
  v52 = OUTLINED_FUNCTION_41_0();
  sub_2681BED1C(v52, v53);
  v54 = OUTLINED_FUNCTION_37_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, v55, v51);
  v57 = v0[80];
  v58 = v0[47];
  if (EnumTagSinglePayload == 1)
  {
    v59 = v0[85];
    v60 = v0[79];
    sub_2681433DC(v57, &qword_28024E770, &qword_2683D80D0);
    sub_2681BED1C(v59, v60);
    v61 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v61, v62, v58) == 1)
    {
      sub_2681433DC(v0[79], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_10_2();
      v0[96] = v63;
      *v63 = v64;
      OUTLINED_FUNCTION_30_6(v63);
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X3 }
    }

    v79 = v0[47];
    sub_26814320C(v0[79], v0[52]);
    v0[25] = v79;
    v0[26] = sub_268143270();
    v80 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
    OUTLINED_FUNCTION_41_4(v80);
    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_10_2();
    v0[95] = v81;
    *v81 = v82;
    OUTLINED_FUNCTION_30_6(v81);
  }

  else
  {
    sub_26814320C(v57, v0[53]);
    v0[30] = v58;
    v0[31] = sub_268143270();
    v67 = __swift_allocate_boxed_opaque_existential_0(v0 + 27);
    OUTLINED_FUNCTION_41_4(v67);
    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_10_2();
    v0[94] = v68;
    *v68 = v69;
    OUTLINED_FUNCTION_30_6(v68);
  }

  OUTLINED_FUNCTION_48_3();

  __asm { BR              X4 }
}

uint64_t sub_2681BC678()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681BC780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  v39 = v38[89];
  v76 = v38[85];
  v77 = v38[86];
  v41 = v38[54];
  v40 = v38[55];

  sub_26814332C(v41);
  sub_26814332C(v40);
  v42 = OUTLINED_FUNCTION_32_3();
  v43(v42);
  v44 = OUTLINED_FUNCTION_74_0();
  v45(v44);
  OUTLINED_FUNCTION_33_6(v76);
  OUTLINED_FUNCTION_24_7();
  v46 = v38[70];
  v47 = v38[68];
  OUTLINED_FUNCTION_1_21();
  v62 = v38[75];
  v63 = v38[74];
  v64 = v48;
  v65 = v38[73];
  v66 = v38[69];
  v67 = v38[67];
  v68 = v38[65];
  v69 = v38[64];
  v70 = v38[63];
  OUTLINED_FUNCTION_36_5();
  v71 = v49;
  v72 = v50;
  v73 = v51;
  v74 = v38[55];
  v75 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v52, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v47, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v46, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, a28, a29, a30, a31, a32, v76, v77, a35, a36, a37, a38);
}

uint64_t sub_2681BCA20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681BCB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_26_8();
  v40 = v38[53];

  sub_26814332C(v40);
  v41 = OUTLINED_FUNCTION_25_9();
  v42(v41);
  v43 = OUTLINED_FUNCTION_21_8();
  v44(v43);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_7();
  v45 = v38[70];
  v46 = v38[68];
  OUTLINED_FUNCTION_1_21();
  v61 = v38[75];
  v62 = v38[74];
  v63 = v47;
  v64 = v38[73];
  v65 = v38[69];
  v66 = v38[67];
  v67 = v38[65];
  v68 = v38[64];
  v69 = v38[63];
  OUTLINED_FUNCTION_36_5();
  v70 = v48;
  v71 = v49;
  v72 = v50;
  v73 = v38[55];
  v74 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v51, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v46, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v45, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BCD8C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681BCE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_26_8();
  v40 = v38[52];

  sub_26814332C(v40);
  v41 = OUTLINED_FUNCTION_25_9();
  v42(v41);
  v43 = OUTLINED_FUNCTION_21_8();
  v44(v43);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_7();
  v45 = v38[70];
  v46 = v38[68];
  OUTLINED_FUNCTION_1_21();
  v61 = v38[75];
  v62 = v38[74];
  v63 = v47;
  v64 = v38[73];
  v65 = v38[69];
  v66 = v38[67];
  v67 = v38[65];
  v68 = v38[64];
  v69 = v38[63];
  OUTLINED_FUNCTION_36_5();
  v70 = v48;
  v71 = v49;
  v72 = v50;
  v73 = v38[55];
  v74 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v51, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v46, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v45, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BD0F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2681BD1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  v39 = v38[89];
  v40 = v38[86];

  v41 = OUTLINED_FUNCTION_32_3();
  v42(v41);
  v43 = OUTLINED_FUNCTION_74_0();
  v44(v43);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_33_6(v40);
  v45 = v38[70];
  v46 = v38[68];
  OUTLINED_FUNCTION_1_21();
  v61 = v38[75];
  v62 = v38[74];
  v63 = v47;
  v64 = v38[73];
  v65 = v38[69];
  v66 = v38[67];
  v67 = v38[65];
  v68 = v38[64];
  v69 = v38[63];
  OUTLINED_FUNCTION_36_5();
  v70 = v48;
  v71 = v49;
  v72 = v50;
  v73 = v38[55];
  v74 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v51, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v46, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v45, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BD480()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *v4 = *v1;
  v3[98] = v5;
  v3[99] = v0;

  if (v0)
  {
    sub_2681433DC(v3[77], &qword_28024E770, &qword_2683D80D0);
    v6 = OUTLINED_FUNCTION_41_0();
    sub_2681433DC(v6, v7, &qword_2683D80D0);
    v8 = sub_2681BEAD8;
  }

  else
  {
    v8 = sub_2681BD5C4;
  }

  return MEMORY[0x2822009F8](v8);
}

void sub_2681BD5C4()
{
  v1 = v0[98];
  v2 = v0[69];
  sub_2683CC528();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_2683CED08();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_2683CC1D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v15 = swift_allocObject();
  v0[100] = v15;
  *(v15 + 16) = xmmword_2683D2250;
  *(v15 + 32) = v1;
  v16 = v1;
  if (sub_2683ABE58())
  {
    OUTLINED_FUNCTION_52_2();
    if (v2)
    {
      v17 = MEMORY[0x26D616C90](0, v15);
    }

    else
    {
      v17 = *(v15 + 32);
    }

    v18 = v17;
    v19 = [v17 catId];

    v96 = sub_2683CFA78();
    v101 = v20;
  }

  else
  {
    v96 = 0;
    v101 = 0;
  }

  v21 = v0[87];
  v22 = v0[84];
  v23 = v0[83];
  v24 = v0[78];
  v25 = v0[71];
  v87 = v0[69];
  v89 = v0[67];
  v91 = v0[65];
  v85 = v0[62];
  OUTLINED_FUNCTION_51_3(v0[77]);
  sub_2681BED1C(v24, v23);
  OUTLINED_FUNCTION_34_5();
  v26 = swift_allocObject();
  v0[101] = v26;
  *(v26 + 16) = v21;
  sub_2681430AC(v22, v26 + v25);
  sub_2681430AC(v23, v26 + v24);
  v27 = OUTLINED_FUNCTION_49_3();
  v28(v27);
  v29 = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_18_13(v29, v30, v31, v32, v33, v34, v35, v36, v85, v87, v89, v91, v93, v94, v96, v97, v99, v101);
  *(v37 + 72) = sub_2681B303C;
  *(v37 + 80) = v26;
  OUTLINED_FUNCTION_38_5(v37, v38, v39, v40, v41, v42, v43, v44, v86, v88, v90, v92);
  OUTLINED_FUNCTION_53_1();

  sub_2681BED1C(v95, v100);
  if (__swift_getEnumTagSinglePayload(v100, 1, v98) == 1)
  {
    v45 = v0 + 76;
  }

  else
  {
    v46 = v0[47];
    sub_26814320C(v0[76], v0[51]);
    v47 = OUTLINED_FUNCTION_41_0();
    sub_2681BED1C(v47, v48);
    v49 = OUTLINED_FUNCTION_37_5();
    if (__swift_getEnumTagSinglePayload(v49, v50, v46) != 1)
    {
      v70 = v0[50];
      v71 = v0[47];
      sub_26814320C(v0[75], v70);
      v0[15] = v71;
      v72 = sub_268143270();
      v0[16] = v72;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
      OUTLINED_FUNCTION_41_4(boxed_opaque_existential_0);
      v0[20] = v71;
      v0[21] = v72;
      v74 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v70, v74);
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_10_2();
      v0[102] = v75;
      *v75 = v76;
      OUTLINED_FUNCTION_30_6(v75);
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X5 }
    }

    v45 = v0 + 75;
    sub_26814332C(v0[51]);
  }

  v51 = v0[47];
  sub_2681433DC(*v45, &qword_28024E770, &qword_2683D80D0);
  v52 = OUTLINED_FUNCTION_41_0();
  sub_2681BED1C(v52, v53);
  v54 = OUTLINED_FUNCTION_37_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, v55, v51);
  v57 = v0[74];
  v58 = v0[47];
  if (EnumTagSinglePayload == 1)
  {
    v59 = v0[77];
    v60 = v0[73];
    sub_2681433DC(v57, &qword_28024E770, &qword_2683D80D0);
    sub_2681BED1C(v59, v60);
    v61 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v61, v62, v58) == 1)
    {
      sub_2681433DC(v0[73], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_10_2();
      v0[105] = v63;
      *v63 = v64;
      OUTLINED_FUNCTION_30_6(v63);
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X3 }
    }

    v79 = v0[47];
    sub_26814320C(v0[73], v0[48]);
    v0[5] = v79;
    v0[6] = sub_268143270();
    v80 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_41_4(v80);
    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_10_2();
    v0[104] = v81;
    *v81 = v82;
    OUTLINED_FUNCTION_30_6(v81);
  }

  else
  {
    sub_26814320C(v57, v0[49]);
    v0[10] = v58;
    v0[11] = sub_268143270();
    v67 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    OUTLINED_FUNCTION_41_4(v67);
    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_10_2();
    v0[103] = v68;
    *v68 = v69;
    OUTLINED_FUNCTION_30_6(v68);
  }

  OUTLINED_FUNCTION_48_3();

  __asm { BR              X4 }
}

uint64_t sub_2681BDB50()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681BDC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  v39 = v38[98];
  v72 = v38[77];
  v73 = v38[78];
  v41 = v38[50];
  v40 = v38[51];

  sub_26814332C(v41);
  sub_26814332C(v40);
  v42 = OUTLINED_FUNCTION_32_3();
  v43(v42);
  v44 = OUTLINED_FUNCTION_74_0();
  v45(v44);
  OUTLINED_FUNCTION_33_6(v72);
  OUTLINED_FUNCTION_24_7();
  v46 = v38[69];
  v47 = v38[67];
  v61 = v38[65];
  OUTLINED_FUNCTION_1_21();
  v58 = v38[75];
  v59 = v38[74];
  v60 = v38[73];
  v62 = v38[70];
  v63 = v38[68];
  v64 = v38[66];
  v65 = v38[64];
  v66 = v38[63];
  v67 = v38[62];
  v68 = v38[59];
  v69 = v38[58];
  v70 = v38[55];
  v71 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v48, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v47, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v46, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, a28, a29, a30, a31, a32, v72, v73, a35, a36, a37, a38);
}

uint64_t sub_2681BDEFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681BDFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_22_7();
  v40 = v38[49];

  sub_26814332C(v40);
  v41 = OUTLINED_FUNCTION_25_9();
  v42(v41);
  v43 = OUTLINED_FUNCTION_21_8();
  v44(v43);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_7();
  v45 = v38[69];
  v46 = v38[67];
  v60 = v38[65];
  OUTLINED_FUNCTION_1_21();
  v57 = v38[75];
  v58 = v38[74];
  v59 = v38[73];
  v61 = v38[70];
  v62 = v38[68];
  v63 = v38[66];
  v64 = v38[64];
  v65 = v38[63];
  v66 = v38[62];
  v67 = v38[59];
  v68 = v38[58];
  v69 = v38[55];
  v70 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v47, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v46, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v45, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BE26C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681BE36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_22_7();
  v40 = v38[48];

  sub_26814332C(v40);
  v41 = OUTLINED_FUNCTION_25_9();
  v42(v41);
  v43 = OUTLINED_FUNCTION_21_8();
  v44(v43);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_7();
  v45 = v38[69];
  v46 = v38[67];
  v60 = v38[65];
  OUTLINED_FUNCTION_1_21();
  v57 = v38[75];
  v58 = v38[74];
  v59 = v38[73];
  v61 = v38[70];
  v62 = v38[68];
  v63 = v38[66];
  v64 = v38[64];
  v65 = v38[63];
  v66 = v38[62];
  v67 = v38[59];
  v68 = v38[58];
  v69 = v38[55];
  v70 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v47, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v46, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v45, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BE5DC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2681BE6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  v39 = v38[98];
  v40 = v38[78];

  v41 = OUTLINED_FUNCTION_32_3();
  v42(v41);
  v43 = OUTLINED_FUNCTION_74_0();
  v44(v43);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_33_6(v40);
  v45 = v38[69];
  v46 = v38[67];
  v60 = v38[65];
  OUTLINED_FUNCTION_1_21();
  v57 = v38[75];
  v58 = v38[74];
  v59 = v38[73];
  v61 = v38[70];
  v62 = v38[68];
  v63 = v38[66];
  v64 = v38[64];
  v65 = v38[63];
  v66 = v38[62];
  v67 = v38[59];
  v68 = v38[58];
  v69 = v38[55];
  v70 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v47, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v46, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v45, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BE968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_9_15(*(v38 + 720));

  OUTLINED_FUNCTION_13_12();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BEAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_9_15(*(v38 + 792));

  OUTLINED_FUNCTION_13_12();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BEC4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2681BB924();
  *a1 = result;
  return result;
}

uint64_t sub_2681BEC74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268193D88;

  return sub_2681BBA48();
}

uint64_t sub_2681BED1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;

  v10 = v0 + v8;
  v11 = type metadata accessor for Snippet(0);
  v12 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v12, v13, v11))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v19 + 8))(v10);
        v20 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_37;
      case 1u:
      case 9u:

        goto LABEL_37;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v58 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v59 = OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading(v59);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v111 + 8))(v1);
            break;
          case 1u:

            if (*(v1 + 96) != 255)
            {
              sub_26814304C(*(v1 + 80), *(v1 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v112 = *(v58 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v113 + 8))(v10 + v112);
        v105 = *(v58 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_85;
      case 4u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v39 + 8))(v10);
        v40 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v40);

        OUTLINED_FUNCTION_11_5(v40[6]);

        OUTLINED_FUNCTION_11_5(v40[7]);

        v41 = v10 + v40[8];
        if (*(v41 + 24))
        {

          if (*(v41 + 96) != 255)
          {
            sub_26814304C(*(v41 + 80), *(v41 + 88));
          }
        }

        v42 = v40[9];
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v45 = *(v44 + 8);
        v7 = v44 + 8;
        v45(v10 + v42, v43);
        v46 = OUTLINED_FUNCTION_43_0(v40[10]);
        (v45)(v46);
        v47 = OUTLINED_FUNCTION_43_0(v40[11]);
        (v45)(v47);
        v48 = v10 + v40[12];
        v49 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v49))
        {

          v128 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v50 + 8))(v48 + v128);
          v45(v48 + *(v2 + 24), v43);
        }

        v51 = v40[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v52 + 8))(v10 + v51);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v53 = OUTLINED_FUNCTION_31_1();
        v54 = type metadata accessor for Snippet.Reminder.AppLink(v53);
        if (!OUTLINED_FUNCTION_16_4(v54))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v51, *(v51 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v116 + 8))(v51);
          }
        }

        goto LABEL_99;
      case 5u:

        if (*(v10 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v61 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_72;
      case 6u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v80 + 8))(v10);
        v81 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v81);

        OUTLINED_FUNCTION_11_5(v81[6]);

        OUTLINED_FUNCTION_11_5(v81[7]);

        v82 = v10 + v81[8];
        if (*(v82 + 24))
        {

          if (*(v82 + 96) != 255)
          {
            sub_26814304C(*(v82 + 80), *(v82 + 88));
          }
        }

        v83 = v81[9];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v86 = *(v85 + 8);
        v7 = v85 + 8;
        v86(v10 + v83, v84);
        v87 = OUTLINED_FUNCTION_43_0(v81[10]);
        (v86)(v87);
        v88 = OUTLINED_FUNCTION_43_0(v81[11]);
        (v86)(v88);
        v89 = v10 + v81[12];
        v90 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v90))
        {

          v129 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v91 + 8))(v89 + v129);
          v86(v89 + *(v2 + 24), v84);
        }

        v92 = v81[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v93 + 8))(v10 + v92);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v94 = OUTLINED_FUNCTION_31_1();
        v95 = type metadata accessor for Snippet.Reminder.AppLink(v94);
        if (!OUTLINED_FUNCTION_16_4(v95))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v92, *(v92 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v121 + 8))(v92);
          }
        }

        v122 = v10 + *(type metadata accessor for Snippet.SetTaskAttribute3p(0) + 20);

        v123 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v124 + 8))(v122 + v123);
LABEL_99:
        v9 = v132;
        break;
      case 7u:
LABEL_37:

        break;
      case 8u:

        v61 = *(type metadata accessor for Snippet.CreateNote3p(0) + 20);
        goto LABEL_72;
      case 0xAu:
        v100 = type metadata accessor for Snippet.SectionHeading(0);
        v101 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v101, v102, v100))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v126 + 8))(v10);
              break;
            case 1u:

              if (*(v10 + 96) != 255)
              {
                sub_26814304C(*(v10 + 80), *(v10 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v103 = type metadata accessor for Snippet.SearchResult3p(0);

        v61 = *(v103 + 32);
LABEL_72:
        v10 += v61;

        v105 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
LABEL_85:
        OUTLINED_FUNCTION_0_9();
        (*(v114 + 8))(v10 + v105);
        break;
      default:
        break;
    }
  }

  v14 = v0 + v9;
  v15 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v15, v16, v11))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v17 + 8))(v0 + v9);
        v18 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v18);
        goto LABEL_87;
      case 1u:
      case 9u:

        goto LABEL_87;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v56 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v57 = v14 + v56[5];
        type metadata accessor for Snippet.SectionHeading(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v106 + 8))(v57);
            break;
          case 1u:

            if (*(v57 + 96) != 255)
            {
              sub_26814304C(*(v57 + 80), *(v57 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v107 = v56[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v108 + 8))(v14 + v107);
        v109 = v56[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9();
        (*(v110 + 8))(v14 + v109);
        break;
      case 4u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v21 + 8))(v0 + v9);
        v22 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v22);

        OUTLINED_FUNCTION_11_5(v22[6]);

        OUTLINED_FUNCTION_11_5(v22[7]);

        v23 = v14 + v22[8];
        if (*(v23 + 24))
        {

          if (*(v23 + 96) != 255)
          {
            sub_26814304C(*(v23 + 80), *(v23 + 88));
          }
        }

        v24 = v22[9];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v27 = *(v26 + 8);
        v27(v14 + v24, v25);
        v28 = OUTLINED_FUNCTION_44_0(v22[10]);
        (v27)(v28);
        v29 = OUTLINED_FUNCTION_44_0(v22[11]);
        (v27)(v29);
        v30 = OUTLINED_FUNCTION_31_1();
        v31 = type metadata accessor for Snippet.Reminder.LocationTrigger(v30);
        if (!OUTLINED_FUNCTION_16_4(v31))
        {

          v130 = v7;
          v32 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v34 = v24 + v32;
          v7 = v130;
          (*(v33 + 8))(v34);
          v27(v24 + *(v9 + 24), v25);
        }

        v35 = v22[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v36 + 8))(v14 + v35);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v37 = v14 + v22[16];
        v38 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v38))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v37, *(v37 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v115 + 8))(v37);
          }
        }

        goto LABEL_87;
      case 5u:

        if (*(v14 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v60 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_93;
      case 6u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v62 + 8))(v0 + v9);
        v63 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v63);

        OUTLINED_FUNCTION_11_5(v63[6]);

        OUTLINED_FUNCTION_11_5(v63[7]);

        v64 = v14 + v63[8];
        if (*(v64 + 24))
        {

          if (*(v64 + 96) != 255)
          {
            sub_26814304C(*(v64 + 80), *(v64 + 88));
          }
        }

        v65 = v63[9];
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v68 = *(v67 + 8);
        v68(v14 + v65, v66);
        v69 = OUTLINED_FUNCTION_44_0(v63[10]);
        (v68)(v69);
        v70 = OUTLINED_FUNCTION_44_0(v63[11]);
        (v68)(v70);
        v71 = OUTLINED_FUNCTION_31_1();
        v72 = type metadata accessor for Snippet.Reminder.LocationTrigger(v71);
        if (!OUTLINED_FUNCTION_16_4(v72))
        {

          v131 = v7;
          v73 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v75 = v65 + v73;
          v7 = v131;
          (*(v74 + 8))(v75);
          v68(v65 + *(v9 + 24), v66);
        }

        v76 = v63[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v77 + 8))(v14 + v76);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v78 = v14 + v63[16];
        v79 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v79))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v78, *(v78 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v117 + 8))(v78);
          }
        }

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p(0);
        goto LABEL_92;
      case 7u:
LABEL_87:

        break;
      case 8u:

        Note3p = type metadata accessor for Snippet.CreateNote3p(0);
LABEL_92:
        v60 = *(Note3p + 20);
        goto LABEL_93;
      case 0xAu:
        v96 = type metadata accessor for Snippet.SectionHeading(0);
        v97 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v97, v98, v96))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v125 + 8))(v0 + v9);
              break;
            case 1u:

              if (*(v14 + 96) != 255)
              {
                sub_26814304C(*(v14 + 80), *(v14 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v99 = type metadata accessor for Snippet.SearchResult3p(0);

        v60 = *(v99 + 32);
LABEL_93:
        v118 = v14 + v60;

        v119 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v120 + 8))(v118 + v119);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}

_BYTE *sub_2681BFF88(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2681C0064()
{
  result = qword_28024E9B0;
  if (!qword_28024E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E9B0);
  }

  return result;
}

unint64_t sub_2681C00BC()
{
  result = qword_28024E9B8;
  if (!qword_28024E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E9B8);
  }

  return result;
}

void OUTLINED_FUNCTION_0_28()
{
  v2 = v0[52];
  *(v1 - 136) = v0[53];
  *(v1 - 128) = v2;
  v3 = v0[50];
  *(v1 - 120) = v0[51];
  *(v1 - 112) = v3;
  v4 = v0[48];
  *(v1 - 104) = v0[49];
  *(v1 - 96) = v4;
  *(v1 - 88) = v0[46];
}

uint64_t OUTLINED_FUNCTION_8_15()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_9_15@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v5 = v1[50];
  v4 = v1[51];
  *(v2 - 136) = v1[52];
  *(v2 - 128) = v4;
  v7 = v1[48];
  v6 = v1[49];
  *(v2 - 120) = v5;
  *(v2 - 112) = v6;
  v8 = v1[46];
  *(v2 - 104) = v7;
  *(v2 - 96) = v8;
}

uint64_t OUTLINED_FUNCTION_18_13(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a15;
  *(result + 48) = a18;
  *(result + 56) = a10;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_7()
{
  result = *(v0 + 808);
  *(v1 - 88) = *(v0 + 624);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_10()
{

  return sub_2681433DC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_7()
{
  v4 = *(v2 - 88);

  return sub_2681433DC(v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_8()
{
  result = *(v0 + 736);
  *(v1 - 88) = *(v0 + 688);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_6(uint64_t a1)
{

  return sub_2681433DC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_38_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a1 + 88) = 0;
  *(a1 + 96) = a11;
  *(a1 + 104) = 2;
  *(a1 + 112) = a12;
}

uint64_t OUTLINED_FUNCTION_41_4(uint64_t a1)
{

  return sub_2681432C8(v1, a1);
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{

  return sub_2681BED1C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return sub_2683ABE60();
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return sub_2683CC8E8();
}

uint64_t type metadata accessor for SnoozeTasksNLv3IntentWrapper(uint64_t a1)
{
  result = qword_28024E9C0;
  if (!qword_28024E9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681C04C8(uint64_t a1)
{
  result = type metadata accessor for NotebookNLv3Intent(319);
  if (v2 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D380, &protocol descriptor for NotebookDateTimeResolving);
    if (v3 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024CDA0, &protocol descriptor for NotebookReferenceResolving);
      if (v4 <= 0x3F)
      {
        result = sub_2683CB668();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2681C059C()
{
  v0 = type metadata accessor for AppIntentNode(0);
  OUTLINED_FUNCTION_1();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024CE28, &qword_2683D1870);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_268356630();
  sub_26812958C(v12, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v0) == 1)
  {
    sub_26812D9E0(v12, &qword_28024CE28, &qword_2683D1870);
    return 0;
  }

  else
  {
    sub_268129664(v10, v6);
    sub_2681296C8(v6, v4, type metadata accessor for AppIntentNode);
    sub_2683533F0();
    v13 = v14;
    sub_2683CD078();
    sub_2683CD058();
    sub_2681C18A0(&qword_28024CE30, type metadata accessor for AppIntentNode, &unk_2683F3FA8);
    sub_2683CD5C8();

    sub_268129770(v4, type metadata accessor for AppIntentNode);
    sub_268129770(v6, type metadata accessor for AppIntentNode);
    sub_26812D9E0(v12, &qword_28024CE28, &qword_2683D1870);
  }

  return v13;
}

uint64_t sub_2681C07F0()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 784) = v0;
  *(v1 + 848) = v2;
  *(v1 + 792) = type metadata accessor for NotebookNLv3Intent(0);
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681C0890);
}

uint64_t sub_2681C0890()
{
  v22 = v0;
  if (*(v0 + 848) == 1)
  {
    sub_2683B3C5C(*(v0 + 808));
  }

  else
  {
    sub_2681296C8(*(v0 + 784), *(v0 + 808), type metadata accessor for NotebookNLv3Intent);
  }

  if (qword_28024C8D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = sub_2683CF7E8();
  *(v0 + 816) = v3;
  __swift_project_value_buffer(v3, qword_28027C940);
  sub_2681296C8(v1, v2, type metadata accessor for NotebookNLv3Intent);
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE68();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    OUTLINED_FUNCTION_0_29();
    sub_2681C18A0(v8, v9, &unk_2683F3404);
    v10 = sub_2683D0568();
    v12 = v11;
    OUTLINED_FUNCTION_1_22();
    v13 = sub_2681610A0(v10, v12, &v21);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_2680EB000, v4, v5, "[SnoozeTasksNLv3IntentWrapper] attempting to parse %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    OUTLINED_FUNCTION_1_22();
  }

  v14 = *(v0 + 808);
  v15 = *(v0 + 784);
  v16 = swift_task_alloc();
  *(v0 + 824) = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3A0, &unk_2683D8F70);
  swift_asyncLet_begin();
  v17 = *(type metadata accessor for SnoozeTasksNLv3IntentWrapper(0) + 28);
  *(v0 + 728) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  v18 = sub_26836C418(v14, v15 + v17, v0 + 696);
  sub_26812D9E0(v0 + 696, &qword_28024E2C8, &unk_2683D6950);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2683D2250;
    *(v19 + 32) = v18;
  }

  else
  {
    v19 = 0;
  }

  *(v0 + 832) = v19;

  return MEMORY[0x282200928](v0 + 16, v0 + 776, sub_2681C0BAC, v0 + 656);
}

uint64_t sub_2681C0BC0()
{
  v24 = v0;
  v1 = qword_28024CBF8;
  v2 = *(v0 + 776);
  if (v1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_29();
  sub_2681C18A0(v3, v4, &unk_2683F3D78);
  v5 = sub_2683CD5D8();
  v6 = (v5 + 32);
  v7 = *(v5 + 16);
  while (2)
  {
    if (v7-- != 0)
    {
      switch(*v6)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
          v9 = sub_2683D0598();

          ++v6;
          if ((v9 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }
    }

    break;
  }

  sub_268143430();
  v10 = sub_2683CFF18();
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 816), qword_28027C958);
  v11 = v10;
  v12 = sub_2683CF7C8();
  v13 = sub_2683CFE98();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    v16 = v11;
    v17 = [v16 description];
    v18 = sub_2683CFA78();
    v20 = v19;

    v21 = sub_2681610A0(v18, v20, &v23);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_2680EB000, v12, v13, "⚙️ [SnoozeTasksNLv3IntentWrapper] made intent: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  *(v0 + 840) = sub_26821AD1C();

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_2681C1084()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_1_22();

  v1 = *(v0 + 8);
  v2 = *(v0 + 840);

  return v1(v2);
}

uint64_t sub_2681C1100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681C11A0);
}

uint64_t sub_2681C11A0()
{
  v1 = v0[8];
  v2 = type metadata accessor for SnoozeTasksNLv3IntentWrapper(0);
  sub_26813CA00(v1 + *(v2 + 20), (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (qword_28024CBA0 != -1)
  {
    swift_once();
  }

  v3 = v0[10];
  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_29();
  sub_2681C18A0(v4, v5, &unk_2683F3D78);
  sub_2683CD5C8();
  v6 = sub_2683CD358();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v6);
  v8 = v0[10];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812D9E0(v0[10], &qword_28024D398, &qword_2683D22F0);
    v9 = 0;
  }

  else
  {
    v9 = sub_2683CD2E8();
    (*(*(v6 - 8) + 8))(v8, v6);
  }

  v0[11] = v9;
  if (qword_28024C960 != -1)
  {
    swift_once();
  }

  v10 = sub_2683CE918();
  __swift_project_value_buffer(v10, qword_28027CAC8);
  sub_26812A5A4();
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_2681C13F8;

  return sub_268131128();
}

uint64_t sub_2681C13F8()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v4 + 104) = v3;

  return MEMORY[0x2822009F8](sub_2681C150C);
}

uint64_t sub_2681C150C()
{
  OUTLINED_FUNCTION_14();
  **(v0 + 56) = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2681C1584()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681C1618;

  return sub_2681C07F0();
}

uint64_t sub_2681C1618()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2681C170C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2681C17B8;

  return sub_2681C1100(a1, v5, v4);
}

uint64_t sub_2681C17B8()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2681C18A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_22()
{

  return sub_268129770(v0, type metadata accessor for NotebookNLv3Intent);
}

uint64_t type metadata accessor for SnoozeTasksCATPatternsExecutor(uint64_t a1)
{
  result = qword_28024E9D8;
  if (!qword_28024E9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681C19B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2681C19D4);
}

uint64_t sub_2681C19D4()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x736D657469;
  *(v2 + 40) = 0xE500000000000000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  *(v2 + 48) = v1;
  v5 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2681C1B14;

  return v5(0xD00000000000001DLL, 0x80000002683FD900, v2);
}

uint64_t sub_2681C1B14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268162F6C);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2681C1CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_268163208(a1);
  return v11;
}

uint64_t sub_2681C1E34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2681C1E74(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2681C1ED0()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  sub_2683CCB88();
  v5(v35, v4, 0);
  (*(v2 + 8))(v4, v1);
  sub_268167C34(v35, v34);
  if (v34[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v34, v30);
  if (v33 != 4)
  {
    if (v33 == 7)
    {
      v6 = vorrq_s8(v31, v32);
      if (!(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v30[2] | v30[1] | v30[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v22 = sub_2683CF7E8();
        __swift_project_value_buffer(v22, qword_28027C958);
        v23 = sub_2683CF7C8();
        v24 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_45(v24))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v25, v26, "[SetTaskAttribute FlowStrategy] returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v30);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v7 = sub_2683CF7E8();
    __swift_project_value_buffer(v7, qword_28027C958);
    sub_268167C34(v35, v30);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;
      sub_268167C34(v30, &v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v12 = sub_2683CFAD8();
      v14 = v13;
      sub_268167CA4(v30);
      v15 = sub_2681610A0(v12, v14, &v29);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2680EB000, v8, v9, "[SetTaskAttribute FlowStrategy] unsupported task, ignoring: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v30);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_268167CA4(v35);
    return sub_268167CA4(v34);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v16 = sub_2683CF7E8();
  __swift_project_value_buffer(v16, qword_28027C958);
  v17 = sub_2683CF7C8();
  v18 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v18))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v19, v20, "[SetTaskAttribute FlowStrategy] returning .handle() for supported task");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_268167CA4(v35);
  sub_26813A1A0(v30);
  return sub_268167CA4(v34);
}

uint64_t sub_2681C22C0(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681C22D8()
{
  v21 = v2;
  (*(*(v2 + 328) + 40))(*(v2 + 312), 0);
  sub_268167C34(v2 + 16, v2 + 80);
  v3 = *(v2 + 136);
  v4 = (v2 + 80);
  if (v3 == 4)
  {
    sub_268193F18(v4, v2 + 272);
    OUTLINED_FUNCTION_11_16();
    v19 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v2 + 336) = v6;
    *v6 = v2;
    v6[1] = sub_2681C25F8;

    return v19(1, v0, v1);
  }

  else
  {
    if (v3 == 255)
    {
      sub_268167CA4(v4);
    }

    else
    {
      sub_26813A1A0(v4);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    sub_268167C34(v2 + 16, v2 + 144);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      sub_268167C34(v2 + 144, v2 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v13 = sub_2683CFAD8();
      v15 = v14;
      sub_268167CA4(v2 + 144);
      v16 = sub_2681610A0(v13, v15, &v20);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2680EB000, v9, v10, "[SetTaskAttribute FlowStrategy] Did not get setTaskAttribute task from parse. Got: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v2 + 144);
    }

    sub_26812C6B8();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 4;
    swift_willThrow();
    sub_268167CA4(v2 + 16);
    OUTLINED_FUNCTION_40();

    return v18();
  }
}

uint64_t sub_2681C25F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v2 + 344) = v1;
  *(v2 + 352) = v0;

  if (v0)
  {
    v3 = sub_2681C2B24;
  }

  else
  {
    v3 = sub_2681C2704;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2681C2704(uint64_t a1)
{
  OUTLINED_FUNCTION_11_16();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v3 + 360) = v5;
  *v5 = v3;
  v5[1] = sub_2681C2814;

  return (v7)(0, v1, v2);
}

uint64_t sub_2681C2814()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v2 + 368) = v1;
  *(v2 + 376) = v0;

  if (v0)
  {
    v3 = sub_2681C2B88;
  }

  else
  {
    v3 = sub_2681C2920;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2681C2920()
{
  v22 = v0;
  if (*(v0 + 320))
  {
    v1 = sub_2681DFEB4(*(v0 + 344));
  }

  else
  {
    v1 = *(v0 + 368);
  }

  v2 = v1;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);
  v4 = v2;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 344);
  if (v7)
  {
    v20 = *(v0 + 368);
    v19 = *(v0 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = v4;
    v12 = [v11 description];
    v13 = sub_2683CFA78();
    v15 = v14;

    v16 = sub_2681610A0(v13, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v5, v6, "[SetTaskAttribute FlowStrategy] Updated intent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
  }

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_37();

  return v17(v4);
}

uint64_t sub_2681C2B24()
{
  OUTLINED_FUNCTION_14();
  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681C2B88()
{
  OUTLINED_FUNCTION_14();

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681C2BF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681C2C0C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_2682B28A0(v2, v1);
  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_2681C2C84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268132F90;

  return sub_2681C22C0(a1, a2);
}

uint64_t sub_2681C2D28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268167A44;

  return sub_2681C2BF4(a1, a2);
}

unint64_t sub_2681C2DD0()
{
  result = qword_28024E9E8;
  if (!qword_28024E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E9E8);
  }

  return result;
}

unint64_t sub_2681C2E28()
{
  result = qword_28024E9F0;
  if (!qword_28024E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E9F0);
  }

  return result;
}

unint64_t sub_2681C2E80()
{
  result = qword_28024E9F8;
  if (!qword_28024E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E9F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_16()
{
  v1 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v0[37]);
  return v1 + 24;
}

id sub_2681C2F00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2681C3150(a1, a2, v8);
  if ((a4 & 1) == 0)
  {
    [v8 setMaxLines_];
  }

  return v8;
}

id sub_2681C2F84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2681C3150(a1, a2, v12);
  [v12 setIsBold_];

  if ((a5 & 1) == 0)
  {
    [v12 setMaxLines_];
  }

  if ((a6 & 0x100000000) == 0)
  {
    [v12 setTextColor_];
  }

  return v12;
}

id sub_2681C3050(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, unint64_t a6)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D2250;
  sub_2681C31B4();
  v14 = v12;
  *(v13 + 32) = sub_2681C2F84(a1, a2, a3, a4, a5 & 1, a6 | ((HIDWORD(a6) & 1) << 32));
  sub_2681C31F8(v13, v14);

  return v14;
}

void sub_2681C3150(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setText_];
}

unint64_t sub_2681C31B4()
{
  result = qword_28024EA00;
  if (!qword_28024EA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024EA00);
  }

  return result;
}

void sub_2681C31F8(uint64_t a1, void *a2)
{
  sub_2681C31B4();
  v3 = sub_2683CFC98();

  [a2 setFormattedTextPieces_];
}

uint64_t sub_2681C326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a2;
  v5 = sub_2683CE058();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v59[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA08, &qword_2683D9180);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_2_1();
  v65 = v9;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v59[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA10, &qword_2683D9188);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_2_1();
  v61 = v14;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v15);
  v63 = &v59[-v16];
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v17);
  v64 = &v59[-v18];
  OUTLINED_FUNCTION_8_0();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v59[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v59[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v59[-v26];
  v67 = type metadata accessor for IntentTriggerModel(0);
  v28 = *(v67 + 32);
  v71 = a3;
  v29 = (a3 + v28);
  v30 = type metadata accessor for NetworkAvailabilityProvider();
  v31 = swift_allocObject();
  v29[3] = v30;
  v29[4] = &off_28790D868;
  *v29 = v31;
  if (a1 && (, v32 = sub_2683CD9E8(), , v32))
  {
    sub_2683CE048();
  }

  else
  {
    OUTLINED_FUNCTION_6_17(v27, 1);
  }

  v33 = *MEMORY[0x277D5F310];
  v66 = v6;
  v62 = *(v6 + 104);
  v62(v25, v33, v5);
  OUTLINED_FUNCTION_6_17(v25, 0);
  v34 = *(v70 + 48);
  sub_2681C3A28(v27, v12);
  sub_2681C3A28(v25, &v12[v34]);
  OUTLINED_FUNCTION_3_5(v12);
  v69 = a1;
  if (v35)
  {
    sub_26812C310(v25, &qword_28024EA10, &qword_2683D9188);
    sub_26812C310(v27, &qword_28024EA10, &qword_2683D9188);
    OUTLINED_FUNCTION_3_5(&v12[v34]);
    if (v35)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_2681C3A28(v12, v22);
    OUTLINED_FUNCTION_3_5(&v12[v34]);
    if (!v35)
    {
      v41 = OUTLINED_FUNCTION_1_23();
      v42(v41);
      sub_2681C4180();
      v60 = sub_2683CFA58();
      v43 = *(a1 + 8);
      v43(v8, v5);
      sub_26812C310(v25, &qword_28024EA10, &qword_2683D9188);
      sub_26812C310(v27, &qword_28024EA10, &qword_2683D9188);
      v43(v22, v5);
      a1 = v69;
      sub_26812C310(v12, &qword_28024EA10, &qword_2683D9188);
      if (v60)
      {
        goto LABEL_28;
      }

      goto LABEL_14;
    }

    sub_26812C310(v25, &qword_28024EA10, &qword_2683D9188);
    sub_26812C310(v27, &qword_28024EA10, &qword_2683D9188);
    (*(v66 + 8))(v22, v5);
  }

  sub_26812C310(v12, &qword_28024EA08, &qword_2683D9180);
LABEL_14:
  if (a1 && sub_2683CD9E8())
  {
    v36 = v64;
    sub_2683CE048();
  }

  else
  {
    v36 = v64;
    OUTLINED_FUNCTION_6_17(v64, 1);
  }

  v12 = v65;
  v37 = v63;
  v62(v63, *MEMORY[0x277D5F318], v5);
  OUTLINED_FUNCTION_6_17(v37, 0);
  v38 = *(v70 + 48);
  sub_2681C3A28(v36, v12);
  sub_2681C3A28(v37, &v12[v38]);
  OUTLINED_FUNCTION_3_5(v12);
  if (!v35)
  {
    v39 = v61;
    sub_2681C3A28(v12, v61);
    OUTLINED_FUNCTION_3_5(&v12[v38]);
    if (!v40)
    {
      v44 = OUTLINED_FUNCTION_1_23();
      v45(v44);
      sub_2681C4180();
      v46 = sub_2683CFA58();
      v47 = v37;
      v48 = *(a1 + 8);
      v48(v8, v5);
      sub_26812C310(v47, &qword_28024EA10, &qword_2683D9188);
      sub_26812C310(v36, &qword_28024EA10, &qword_2683D9188);
      v48(v39, v5);
      a1 = v69;
      sub_26812C310(v12, &qword_28024EA10, &qword_2683D9188);
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_7_13(v37);
    OUTLINED_FUNCTION_7_13(v36);
    (*(v66 + 8))(v39, v5);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7_13(v37);
  OUTLINED_FUNCTION_7_13(v36);
  OUTLINED_FUNCTION_3_5(&v12[v38]);
  if (!v35)
  {
LABEL_26:
    sub_26812C310(v12, &qword_28024EA08, &qword_2683D9180);
    v46 = 0;
    goto LABEL_29;
  }

LABEL_22:
  sub_26812C310(v12, &qword_28024EA10, &qword_2683D9188);
LABEL_28:
  v46 = 1;
LABEL_29:
  v50 = v67;
  v49 = v68;
  *(v71 + *(v67 + 36)) = a1;
  if (v49)
  {

    v51 = sub_2683CD758();
LABEL_39:

    goto LABEL_40;
  }

  if (a1)
  {

    if (sub_2683CDA58())
    {
      v52 = sub_2683CD758();
LABEL_38:
      v51 = v52;
      goto LABEL_39;
    }

    if (sub_2683CD9F8())
    {
      v52 = sub_2683CDB18();
      goto LABEL_38;
    }

    if (sub_2683CDA28())
    {
      v52 = sub_2683CDED8();
      goto LABEL_38;
    }
  }

  v51 = 0;
LABEL_40:
  v53 = v71;
  *v71 = v51;
  v54 = v50[5];

  v55 = v53 + v54;
  v56 = v69;
  sub_2681C3A98(v69, v55);
  sub_2681C4120(v46 & 1, v56, v53 + v50[6]);

  if (v51)
  {
    v57 = sub_2682DA400();
  }

  else
  {
    v57 = 0;
  }

  *(v71 + v50[7]) = v57 & 1;
  return result;
}

uint64_t sub_2681C3A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA10, &qword_2683D9188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681C3A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E8, &qword_2683D9190);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v48 - v5;
  v6 = sub_2683CE628();
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA20, &unk_2683D9198);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  v14 = sub_2683CD038();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  if (!a1)
  {
    goto LABEL_12;
  }

  v21 = sub_2683CDA68();
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21;
  if (!sub_2683ABE58())
  {

LABEL_12:
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    goto LABEL_13;
  }

  v51 = v6;
  sub_2683ABE60();
  if ((v22 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D616C90](0, v22);
  }

  else
  {
  }

  sub_2683CD448();

  if (!v55)
  {
    v6 = v51;
    goto LABEL_12;
  }

  sub_2683CD028();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v6 = v51;
  if (EnumTagSinglePayload != 1)
  {
    (*(v15 + 32))(v20, v13, v14);
    (*(v15 + 16))(v11, v20, v14);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
    v24 = sub_2683C7C94(v11);
    v50 = v25;
    v26 = *MEMORY[0x277D5E3C8];
    v49 = *(v15 + 104);
    v49(v18, v26, v14);
    v27 = sub_2681EB8A4(v20, v18);
    v28 = *(v15 + 8);
    v28(v18, v14);
    if (v27)
    {
      v28(v20, v14);
LABEL_25:
      v45 = type metadata accessor for LocationQuery(0);
      v46 = *(v45 + 20);
      v47 = sub_2683CEBD8();
      __swift_storeEnumTagSinglePayload(a2 + v46, 1, 1, v47);
      *a2 = v24;
      *(a2 + 8) = v50 & 1;
      *(a2 + *(v45 + 24)) = 2;
      v40 = a2;
      v41 = 0;
      v42 = v45;
      return __swift_storeEnumTagSinglePayload(v40, v41, 1, v42);
    }

    v49(v18, *MEMORY[0x277D5E3D0], v14);
    v44 = sub_2681EB8A4(v20, v18);
    v28(v18, v14);
    v28(v20, v14);
    if (v44)
    {
      goto LABEL_25;
    }

    v6 = v51;
    v29 = v50;
    goto LABEL_15;
  }

LABEL_13:
  sub_26812C310(v13, &qword_28024EA20, &unk_2683D9198);
  if (!a1)
  {
    goto LABEL_22;
  }

  v24 = 0;
  v29 = 1;
LABEL_15:
  if (!sub_2683CDA18())
  {
    if (sub_2683CDA38())
    {
      v33 = v52;
      sub_2683CD6B8();
      v30 = type metadata accessor for LocationQuery(0);
      v34 = *(v30 + 20);
      v36 = v53;
      v35 = v54;
      (*(v53 + 16))(v54, v33, v6);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v6);
      sub_26812CA54(v35, a2 + v34);

      sub_26812C310(v35, &qword_28024D2E8, &qword_2683D9190);
      (*(v36 + 8))(v33, v6);
      v37 = sub_2683CEBD8();
      __swift_storeEnumTagSinglePayload(a2 + v34, 0, 1, v37);
      *a2 = v24;
      *(a2 + 8) = v29 & 1;
      *(a2 + *(v30 + 24)) = 2;
      goto LABEL_21;
    }

    if (sub_2683CDA08())
    {
      v30 = type metadata accessor for LocationQuery(0);
      v38 = *(v30 + 20);
      sub_2683C94E8(a2 + v38);
      v39 = sub_2683CEBD8();
      __swift_storeEnumTagSinglePayload(a2 + v38, 0, 1, v39);
      LOBYTE(v38) = sub_2683CA724();

      *a2 = v24;
      *(a2 + 8) = v29 & 1;
      *(a2 + *(v30 + 24)) = v38;
      goto LABEL_21;
    }

LABEL_22:
    v42 = type metadata accessor for LocationQuery(0);
    v40 = a2;
    v41 = 1;
    return __swift_storeEnumTagSinglePayload(v40, v41, 1, v42);
  }

  v30 = type metadata accessor for LocationQuery(0);
  v31 = *(v30 + 20);
  sub_26821BFB0(a2 + v31);

  v32 = sub_2683CEBD8();
  __swift_storeEnumTagSinglePayload(a2 + v31, 0, 1, v32);
  *a2 = v24;
  *(a2 + 8) = v29 & 1;
  *(a2 + *(v30 + 24)) = 0;
LABEL_21:
  v40 = a2;
  v41 = 0;
  v42 = v30;
  return __swift_storeEnumTagSinglePayload(v40, v41, 1, v42);
}

double sub_2681C4120@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a1 & 1) != 0 && a2 && (v4 = sub_2683CDA48()) != 0)
  {
    v5 = v4;
    v6 = sub_2683CD6E8();
    v8 = MEMORY[0x277D55FA8];
    *(a3 + 24) = v6;
    *(a3 + 32) = v8;
    *a3 = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_2681C4180()
{
  result = qword_28024EA18;
  if (!qword_28024EA18)
  {
    sub_2683CE058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EA18);
  }

  return result;
}

void sub_2681C4240(uint64_t a1)
{
  sub_2681C4518(319, &qword_28024EA38, type metadata accessor for INSpatialEvent);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocationQuery.QueryType(319);
    if (v2 <= 0x3F)
    {
      sub_2681C42F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2681C42F8()
{
  if (!qword_28024EA40)
  {
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28024EA40);
    }
  }
}

uint64_t sub_2681C4370(uint64_t a1)
{
  v1 = sub_2683CEBD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2681C43F0(uint64_t a1)
{
  sub_2681C4518(319, &qword_28024EA70, MEMORY[0x277D56498]);
  if (v1 <= 0x3F)
  {
    sub_2681C4518(319, &qword_28024EA78, type metadata accessor for LocationQuery);
    if (v2 <= 0x3F)
    {
      sub_2681C456C(319);
      if (v3 <= 0x3F)
      {
        sub_2681C45D0();
        if (v4 <= 0x3F)
        {
          sub_2681C4518(319, &qword_28024E400, MEMORY[0x277D5EB38]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2681C4518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2683CFFA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2681C456C(uint64_t a1)
{
  if (!qword_28024EA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024EA88, &qword_2683E6560);
    v1 = sub_2683CFFA8();
    if (!v2)
    {
      atomic_store(v1, &qword_28024EA80);
    }
  }
}

unint64_t sub_2681C45D0()
{
  result = qword_28024EA90;
  if (!qword_28024EA90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28024EA90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1)
{

  return sub_26812C310(a1, v1, v2);
}

uint64_t sub_2681C4694(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2681C46D4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_2681C4748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D47760]) init];
  v7 = objc_allocWithZone(MEMORY[0x277D47A40]);

  v8 = [v7 init];
  sub_2681C3150(a1, a2, v8);
  [v6 setDecoratedLabel_];

  v9 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
  sub_2681C5D88(a3, v9);
  [v6 setAction_];

  return v6;
}

uint64_t sub_2681C482C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2683CC598();
  OUTLINED_FUNCTION_21_9(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2681C48D8()
{
  OUTLINED_FUNCTION_7();
  sub_2683CF138();
  v0[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v1 = sub_2683CC828();
  v2 = sub_26818F730(v1);
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2681C49B8;
  v4 = v0[6];

  return sub_268196074(v4, v2);
}

uint64_t sub_2681C49B8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681C4ABC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_2681A1544();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    sub_268129504(0, &unk_28024F9B0, 0x277D473F0);
    sub_2683CC828();
    v7 = sub_2683CC848();
    v8 = sub_2683CC818();
    v9 = sub_2683CFF28();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2683D2250;
    *(v10 + 32) = v9;
    v11 = objc_allocWithZone(MEMORY[0x277D47A18]);
    v12 = v9;
    v13 = [v11 init];
    sub_2681C5D30(v4, v6, v13);

    sub_2681C5D88(v10, v13);

    v14 = sub_2683CFA78();
    v16 = v15;
    v17 = v13;
    sub_26813F2FC(v14, v16, v17, &selRef_setItemType_);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v18 = sub_2683CF7E8();
    __swift_project_value_buffer(v18, qword_28027C958);
    v19 = sub_2683CF7C8();
    v20 = sub_2683CFE88();
    if (OUTLINED_FUNCTION_43(v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v21, v22, "[NotebookButtonProvider] Got nil label for SeeAllInApp button");
      OUTLINED_FUNCTION_36();
    }

    v17 = 0;
  }

  OUTLINED_FUNCTION_37();

  return v23(v17);
}

uint64_t sub_2681C4D28()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681C4D90()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2683CC598();
  OUTLINED_FUNCTION_21_9(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2681C4E48()
{
  OUTLINED_FUNCTION_14();
  v0[8] = *(v0[3] + 40);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_2681C4EE4;

  return sub_2681964D8();
}

uint64_t sub_2681C4EE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681C4FE0()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_2681A1544();
  v6 = v5;
  v0[11] = v4;
  v0[12] = v5;
  v7 = *(v3 + 8);
  v0[13] = v7;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (v6)
  {
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_2681C5180;

    return sub_268195E28();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE88();
    if (OUTLINED_FUNCTION_43(v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v13, v14, "[NotebookButtonProvider] Got nil labels for makeTCCAcceptanceConfirmationButtons");
      OUTLINED_FUNCTION_36();
    }

    OUTLINED_FUNCTION_37();
    v16 = MEMORY[0x277D84F90];

    return v15(v16);
  }
}

uint64_t sub_2681C5180()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681C5284()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[4];
  v4 = sub_2681A1544();
  v6 = v5;
  v0[17] = v5;
  v1(v2, v3);
  if (!v6)
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v31 = sub_2683CF7E8();
    __swift_project_value_buffer(v31, qword_28027C958);
    v32 = sub_2683CF7C8();
    v33 = sub_2683CFE88();
    if (OUTLINED_FUNCTION_43(v33))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v34, v35, "[NotebookButtonProvider] Got nil labels for makeTCCAcceptanceConfirmationButtons");
      OUTLINED_FUNCTION_36();
    }

    v30 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v52 = v4;
  v7 = v0[3];
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v10 = sub_268129C00(v8, v9);
  v11 = objc_opt_self();
  v12 = sub_268376C40(0);
  v13 = [v11 runSiriKitExecutorCommandWithContext:v10 payload:{v12, v52}];

  v14 = [v11 wrapCommandInStartLocalRequest_];
  v0[18] = v14;

  v15 = v7[3];
  v16 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v15);
  v17 = sub_268129C00(v15, v16);
  v18 = sub_268376C40(1);
  v19 = [v11 runSiriKitExecutorCommandWithContext:v17 payload:v18];

  v20 = [v11 wrapCommandInStartLocalRequest_];
  v0[19] = v20;

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  LOBYTE(v18) = sub_2683CC0B8();

  v21 = v14;

  v22 = v20;
  v23 = v0[3];
  if (v18)
  {
    OUTLINED_FUNCTION_16_15();
    v30 = sub_2681C5E80(v24, v25, v26, v27, v28, v29);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
LABEL_14:

    OUTLINED_FUNCTION_37();

    return v50(v30);
  }

  OUTLINED_FUNCTION_16_15();
  v42 = sub_2681C6010(v36, v37, v38, v39, v40, v41);
  v0[20] = v42;
  __swift_project_boxed_opaque_existential_1(v23, v7[3]);
  if ((sub_2683CC0C8() & 1) == 0)
  {
    v48 = v0[19];
    v47 = v0[20];
    v49 = v0[18];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2683D2250;
    *(v30 + 32) = v47;

    goto LABEL_14;
  }

  v43 = sub_2683CFA78();
  sub_26813F2FC(v43, v44, v42, &selRef_setStyle_);
  v45 = swift_task_alloc();
  v0[21] = v45;
  *v45 = v0;
  v46 = OUTLINED_FUNCTION_9_3(v45);

  return MEMORY[0x2821BAE00](v46);
}

uint64_t sub_2681C569C()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_42();
  v7 = v6;
  OUTLINED_FUNCTION_26();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  v7[22] = v0;

  if (!v0)
  {
    v7[23] = v3;
    v7[24] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2681C57B8()
{
  OUTLINED_FUNCTION_14();
  sub_26813F2FC(*(v0 + 192), *(v0 + 184), *(v0 + 160), &selRef_setTitle_);
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return MEMORY[0x2821BAE00](v2);
}

uint64_t sub_2681C5854()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_42();
  v7 = v6;
  OUTLINED_FUNCTION_26();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  v7[26] = v0;

  if (!v0)
  {
    v7[27] = v3;
    v7[28] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2681C5970()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2681C5A04()
{
  OUTLINED_FUNCTION_15();
  sub_26813F2FC(*(v0 + 224), *(v0 + 216), *(v0 + 160), &selRef_setSubtitle_);
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2683D2250;
  *(v4 + 32) = v1;

  OUTLINED_FUNCTION_37();

  return v5(v4);
}

uint64_t sub_2681C5AE8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2681C5B7C()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681C5BE0()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681C5C44(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
  v4 = sub_2683CFCA8();

  return v4;
}

void sub_2681C5CAC(uint64_t a1, void *a2)
{
  sub_268129504(0, &qword_28024EB28, 0x277D47A28);
  v3 = sub_2683CFC98();

  [a2 setAllConfirmationOptions_];
}

void sub_2681C5D30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();
  [a3 setText_];
}

void sub_2681C5D88(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
  v3 = sub_2683CFC98();
  [a2 setCommands_];
}

void sub_2681C5E00(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = sub_2683CFC98();

  [a2 *a5];
}

uint64_t sub_2681C5E80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D2250;
  *(v12 + 32) = a3;
  v13 = a3;
  v14 = sub_2681C4748(a1, a2, v12);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2683D2250;
  *(v15 + 32) = a6;
  v16 = a6;
  v17 = sub_2681C4748(a4, a5, v15);

  v18 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2683D6890;
  *(v19 + 32) = v14;
  *(v19 + 40) = v17;
  v20 = v14;
  v21 = v17;
  sub_2681C5E00(v19, v18, &qword_28024EB20, &unk_2683D92E0, &selRef_setTemplateItems_);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2683D2250;
  *(v22 + 32) = v18;

  return v22;
}

id sub_2681C6010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277D47A38]) init];

  sub_26813F2FC(a1, a2, v12, &selRef_setConfirmText_);

  sub_26813F2FC(a4, a5, v12, &selRef_setDenyText_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D2250;

  *(v13 + 32) = a3;
  sub_2681C5E00(v13, v12, &qword_28024E7F8, &unk_2683F0F30, &selRef_setConfirmCommands_);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2683D2250;

  *(v14 + 32) = a6;
  sub_2681C5E00(v14, v12, &qword_28024E7F8, &unk_2683F0F30, &selRef_setDenyCommands_);
  v15 = [objc_allocWithZone(MEMORY[0x277D47A28]) init];
  sub_26812E98C(v12, &selRef_confirmText);
  if (v16)
  {
    v17 = sub_2683CFA68();
  }

  else
  {
    v17 = 0;
  }

  [v15 setLabel_];

  v18 = sub_2683CFA78();
  sub_26813F2FC(v18, v19, v15, &selRef_setType_);
  if (sub_2681C5C44(v12, &selRef_confirmCommands))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
    v20 = sub_2683CFC98();
  }

  else
  {
    v20 = 0;
  }

  [v15 setCommands_];

  v21 = [objc_allocWithZone(MEMORY[0x277D47A28]) init];
  sub_26812E98C(v12, &selRef_denyText);
  if (v22)
  {
    v23 = sub_2683CFA68();
  }

  else
  {
    v23 = 0;
  }

  [v21 setLabel_];

  v24 = sub_2683CFA78();
  sub_26813F2FC(v24, v25, v21, &selRef_setType_);
  if (sub_2681C5C44(v12, &selRef_denyCommands))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
    v26 = sub_2683CFC98();
  }

  else
  {
    v26 = 0;
  }

  [v21 setCommands_];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2683D6890;
  *(v27 + 32) = v15;
  *(v27 + 40) = v21;
  v28 = v15;
  v29 = v21;
  sub_2681C5CAC(v27, v12);

  return v12;
}

void OUTLINED_FUNCTION_11_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_2681C63DC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2681C66EC(a1, a2);
  if (v6)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB30, &unk_2683D92F0);
    result = swift_allocObject();
    *(result + 16) = xmmword_2683D1EC0;
    *(result + 32) = v10;
    *(result + 40) = v11;
    *(result + 48) = v12;
    *(result + 56) = v13;
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    sub_2681C6C68(v2, v37);

    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE98();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136315394;
      v20 = v37[0];
      v21 = v37[1];

      sub_2681C6CA0(v37);
      v22 = sub_2681610A0(v20, v21, &v36);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_2681610A0(a1, a2, &v36);
      _os_log_impl(&dword_2680EB000, v16, v17, "[InferredAppResolver] Attempting to resolve %s for %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v19, -1, -1);
      MEMORY[0x26D617A40](v18, -1, -1);
    }

    else
    {

      sub_2681C6CA0(v37);
    }

    v23 = v3[5];
    v24 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v23);
    v25 = (*(v24 + 8))(*v3, v3[1], v23, v24);
    if (v25)
    {
      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB30, &unk_2683D92F0);
      result = swift_allocObject();
      *(result + 16) = xmmword_2683D1EC0;
      *(result + 32) = v29;
      *(result + 40) = v30;
      *(result + 48) = v31;
      *(result + 56) = v32;
    }

    else
    {
      v33 = sub_2683CF7C8();
      v34 = sub_2683CFE98();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2680EB000, v33, v34, "[InferredAppResolver] App not installed", v35, 2u);
        MEMORY[0x26D617A40](v35, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_2681C66EC(uint64_t a1, unint64_t a2)
{
  sub_2681C6CD0((v2 + 7), &v36);
  if (!v37)
  {
    sub_2681C6D40(&v36);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v19 = sub_2683CF7E8();
    __swift_project_value_buffer(v19, qword_28027C958);
    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE98();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2680EB000, v20, v21, "[InferredAppResolver] Skipping contextual app lookup.", v22, 2u);
      MEMORY[0x26D617A40](v22, -1, -1);
    }

    return 0;
  }

  sub_268128148(&v36, v38);
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_26816FB84();
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v5;
  v8 = v6;
  v9 = v2[5];
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
  v11 = (*(v10 + 8))(v7, v8, v9, v10);
  if (!v11)
  {

LABEL_15:
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v23 = sub_2683CF7E8();
    __swift_project_value_buffer(v23, qword_28027C958);
    v24 = sub_2683CF7C8();
    v25 = sub_2683CFE98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2680EB000, v24, v25, "[InferredAppResolver] Did not find app in context. Falling back to default app.", v26, 2u);
      MEMORY[0x26D617A40](v26, -1, -1);
    }

    goto LABEL_28;
  }

  v13 = v11;
  if (!sub_2681F6FC4(a1, a2, v12))
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v27 = sub_2683CF7E8();
    __swift_project_value_buffer(v27, qword_28027C958);

    v28 = sub_2683CF7C8();
    v29 = sub_2683CFE98();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v36 = v35;
      *v30 = 136446466;
      v31 = sub_2681610A0(v7, v8, &v36);

      *(v30 + 4) = v31;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_2681610A0(a1, a2, &v36);
      _os_log_impl(&dword_2680EB000, v28, v29, "[InferredAppResolver] Found contextual app %{public}s which DOES NOT support %{public}s. Falling back to default app.", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v35, -1, -1);
      MEMORY[0x26D617A40](v30, -1, -1);
    }

    else
    {
    }

LABEL_28:
    __swift_destroy_boxed_opaque_existential_0(v38);
    return 0;
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v14 = sub_2683CF7E8();
  __swift_project_value_buffer(v14, qword_28027C958);

  v15 = sub_2683CF7C8();
  v16 = sub_2683CFE98();

  if (os_log_type_enabled(v15, v16))
  {
    log = v15;
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v36 = v34;
    *v17 = 136446466;
    v18 = sub_2681610A0(v7, v8, &v36);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_2681610A0(a1, a2, &v36);
    _os_log_impl(&dword_2680EB000, log, v16, "[InferredAppResolver] Found contextual app %{public}s which supports %{public}s.", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v34, -1, -1);
    MEMORY[0x26D617A40](v17, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v38);
  return v13;
}

uint64_t sub_2681C6CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2C8, &unk_2683D6950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681C6D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2C8, &unk_2683D6950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook0B18ReferenceResolving_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2681C6DC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2681C6E00(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_2681C6E68(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_2681C7074([a1 backingStore]);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v5 = sub_2683CB448();
    sub_26814F5CC(v6, v7);
  }

  [v2 setData_];

  v8 = [a1 typeName];
  v9 = sub_2683CFA78();
  v11 = v10;

  sub_2681C70E4(v9, v11, v2);
  return v2;
}

id sub_2681C6F68(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [a1 backingStore];
  if (result)
  {
    v4 = sub_2681C7074(result);
    if (v5 >> 60 == 15)
    {
      v6 = 0;
    }

    else
    {
      v7 = v4;
      v8 = v5;
      v6 = sub_2683CB448();
      sub_26814F5CC(v7, v8);
    }

    [v2 setData_];

    sub_2681C7148(a1);
    if (v9)
    {
      v10 = sub_2683CFA68();
    }

    else
    {
      v10 = 0;
    }

    [v2 setTypeName_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2681C7074(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CB468();

  return v3;
}

void sub_2681C70E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setTypeName_];
}

uint64_t sub_2681C7148(void *a1)
{
  v1 = [a1 _payloadResponseTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook14NLAppProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2681C71D4()
{
  v0 = sub_2681C72D8();
  v2 = v1;
  v3 = sub_2681C721C(v0, v1);
  sub_2681C8EA8(v0, v2);
  return v3;
}

uint64_t sub_2681C721C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_2683CC6D8();
      OUTLINED_FUNCTION_9_10();
      result = sub_2683CC6C8();
      break;
    case 2:
      sub_2683CC6D8();
      OUTLINED_FUNCTION_9_10();
      result = sub_2683CC688();
      break;
    case 3:
      sub_2683CC6D8();
      OUTLINED_FUNCTION_9_10();
      result = sub_2683CC698();
      break;
    case 4:
      sub_2683CC6D8();
      OUTLINED_FUNCTION_9_10();
      result = sub_2683CC6A8();
      break;
    case 5:
      sub_2683CC6D8();
      result = sub_2683CC678();
      break;
    default:
      sub_2683CC6D8();
      OUTLINED_FUNCTION_9_10();
      result = sub_2683CC6B8();
      break;
  }

  return result;
}

uint64_t sub_2681C72D8()
{
  v18 = sub_2683CB528();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CB518();
  sub_26813CA00(v0, v22);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_2681C8DD0(v0 + 80, v19);
  v4 = v20;
  if (v20)
  {
    v5 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    sub_2681C8E40(v19);
  }

  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = OUTLINED_FUNCTION_4_18();
  v12 = sub_26835C42C(v8, v9, v10, v11, v7, v6);
  v13 = OUTLINED_FUNCTION_4_18();
  sub_2681C8EE4(v13, v14);
  __swift_destroy_boxed_opaque_existential_0(v22);
  v15 = sub_2681C76D4(v12, v7, v6);

  sub_2681C74A4(v3);
  (*(v1 + 8))(v3, v18);
  return v15;
}

void sub_2681C74A4(uint64_t a1)
{
  v2 = sub_2683CB528();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v9 = sub_2683CF7E8();
  __swift_project_value_buffer(v9, qword_28027C958);
  (*(v3 + 16))(v8, a1, v2);
  v10 = sub_2683CF7C8();
  v11 = sub_2683CFE68();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    sub_2683CB518();
    sub_2683CB498();
    v14 = v13;
    v15 = *(v3 + 8);
    v15(v6, v2);
    v15(v8, v2);
    *(v12 + 4) = v14 * 1000.0;
    _os_log_impl(&dword_2680EB000, v10, v11, "NotebookAppResolutionStrategy#resolveApp complete in %fms", v12, 0xCu);
    MEMORY[0x26D617A40](v12, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_2681C76D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = *(result + 16);
  if (!v24)
  {
    return 0;
  }

  v5 = 0;
  v23 = (result + 32);
  v6 = MEMORY[0x277D84F90];
LABEL_3:
  v7 = v5;
  while (v7 != v24)
  {
    if (v7 >= v24)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    v5 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_27;
    }

    v8 = &v23[4 * v7];
    v9 = v8[3];
    ++v7;
    if (*(v9 + 16))
    {
      v10 = *v8;
      v22 = v8[1];
      v11 = v8[2];
      sub_2683D0698();

      sub_2683CFB48();
      v12 = sub_2683D06D8();
      v13 = ~(-1 << *(v9 + 32));
      do
      {
        v14 = v12 & v13;
        if (((*(v9 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {

          goto LABEL_3;
        }

        v15 = (*(v9 + 48) + 16 * v14);
        if (*v15 == a2 && v15[1] == a3)
        {
          break;
        }

        v17 = sub_2683D0598();
        v12 = v14 + 1;
      }

      while ((v17 & 1) == 0);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_268390920(0, v6[2] + 1, 1);
      }

      v19 = v6[2];
      v18 = v6[3];
      if (v19 >= v18 >> 1)
      {
        result = sub_268390920((v18 > 1), v19 + 1, 1);
      }

      v6[2] = v19 + 1;
      v20 = &v6[4 * v19];
      v20[4] = v10;
      v20[5] = v22;
      v20[6] = v11;
      v20[7] = v9;
      goto LABEL_3;
    }
  }

  if (v6[2])
  {
    v21 = v6[4];
  }

  else
  {

    v21 = *v23;
  }

  return v21;
}