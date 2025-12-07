void *sub_1CA2796A4(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v51 = MEMORY[0x1E69E7CC8];
  v46 = *(a1 + 16);
  v4 = (a1 + 72);
  v43 = xmmword_1CA981310;
  v45 = a1;
  while (1)
  {
    if (v46 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(v4 - 4);
    v47 = v2;
    v48 = *(v4 - 5);
    v7 = *(v4 - 3);
    v6 = *(v4 - 2);
    v8 = *v4;
    v49 = *(v4 - 1);
    v9 = v49;
    sub_1CA94C218();
    swift_bridgeObjectRetain_n();
    sub_1CA94C218();
    v17 = sub_1CA271BF8(v7, v6);
    v18 = v3[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v3[3] < v20)
    {
      sub_1CA279AD4(v20, 1, v11, v12, v13, v14, v15, v16, v39, v40, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);
      v3 = v51;
      v22 = sub_1CA271BF8(v7, v6);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v17 = v22;
    }

    if (v21)
    {

      v24 = v3[7];
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      v42 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CA278A8C();
        v25 = v36;
        *(v24 + 8 * v17) = v36;
      }

      v27 = *(v25 + 16);
      v28 = v27 + 1;
      if (v27 >= *(v25 + 24) >> 1)
      {
        v40 = v27 + 1;
        sub_1CA278A8C();
        v28 = v27 + 1;
        v25 = v37;
        *(v42 + 8 * v17) = v37;
      }

      *(v25 + 16) = v28;
      v29 = (v25 + 48 * v27);
      v30 = v47;
      v29[4] = v48;
      v29[5] = v5;
      v29[6] = v7;
      v29[7] = v6;
      v29[8] = v49;
      v29[9] = v8;
      v1 = v45;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443960, &qword_1CA981A58);
      v31 = swift_allocObject();
      *(v31 + 16) = v43;
      *(v31 + 32) = v48;
      *(v31 + 40) = v5;
      *(v31 + 48) = v7;
      *(v31 + 56) = v6;
      *(v31 + 64) = v49;
      *(v31 + 72) = v8;
      v3[(v17 >> 6) + 8] |= 1 << v17;
      v32 = (v3[6] + 16 * v17);
      *v32 = v7;
      v32[1] = v6;
      *(v3[7] + 8 * v17) = v31;
      v33 = v3[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_20;
      }

      v3[2] = v35;
      v30 = v47;
    }

    v4 += 6;
    v2 = v30 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

void sub_1CA279934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_38_11();
  v60 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  v37 = sub_1CA94D678();
  if (!*(v34 + 16))
  {
LABEL_29:

    *v32 = v37;
    OUTLINED_FUNCTION_42_0();
    return;
  }

  v59 = v34;
  v38 = 0;
  v39 = v34;
  OUTLINED_FUNCTION_0_59();
  v42 = v41 & v40;
  OUTLINED_FUNCTION_56_8();
  if (!v42)
  {
LABEL_4:
    v43 = v38;
    while (1)
    {
      v38 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v38 >= v32)
      {
        break;
      }

      ++v43;
      if (*(v39 + 8 * v38))
      {
        OUTLINED_FUNCTION_1_41();
        v42 = v45 & v44;
        goto LABEL_9;
      }
    }

    if (v60)
    {
      OUTLINED_FUNCTION_15_21();
      if (v57 != v58)
      {
        OUTLINED_FUNCTION_14_27(v56);
      }

      else
      {
        OUTLINED_FUNCTION_17_18(v56);
      }

      *(v34 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_55_7();
LABEL_9:
    OUTLINED_FUNCTION_54_6();
    v48 = *(v47 + 8 * v46);
    if ((v60 & 1) == 0)
    {
      sub_1CA94C218();
      sub_1CA94C218();
    }

    OUTLINED_FUNCTION_64_7();
    sub_1CA94C458();
    sub_1CA94D968();
    OUTLINED_FUNCTION_5_39();
    OUTLINED_FUNCTION_34_0();
    if (v49)
    {
      break;
    }

    OUTLINED_FUNCTION_6_4();
LABEL_21:
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_33_14(v53);
    *(v55 + 8 * v54) = v48;
    OUTLINED_FUNCTION_23_16();
    v34 = v59;
    if (!v42)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_2();
  while (1)
  {
    OUTLINED_FUNCTION_35_15();
    if (v49)
    {
      if (v51)
      {
        break;
      }
    }

    if (v50 == v52)
    {
      v50 = 0;
    }

    if (*(v37 + 64 + 8 * v50) != -1)
    {
      OUTLINED_FUNCTION_3_7();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void OUTLINED_FUNCTION_41_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 104);

  _os_log_impl(a1, v4, v8, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_41_12()
{

  return sub_1CA94D498();
}

void *OUTLINED_FUNCTION_41_14(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va1, a28);
  va_start(__srca, a28);
  __src = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v29 = (a1 + 16);

  return memcpy(v29, __srca, 0x50uLL);
}

id OUTLINED_FUNCTION_55_3()
{
  *(v1 + 14) = v3;
  *(v1 + 22) = 2112;
  *(v1 + 24) = v0;
  *v2 = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_55_5()
{
}

uint64_t OUTLINED_FUNCTION_64_6()
{
}

uint64_t OUTLINED_FUNCTION_64_7()
{

  return sub_1CA94D918();
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_15()
{
  sub_1CA27F268((v1 + 224), v1 + 184);
  sub_1CA27F268((v1 + 184), v1 + 144);
  v3 = *(v1 + 176);
  __swift_project_boxed_opaque_existential_1((v1 + 144), *(v1 + 168));
  *(v1 + 264) = v0;
  *(v1 + 272) = v2;
  *(v1 + 280) = 0;
  return v3 + 16;
}

id OUTLINED_FUNCTION_32_16(id a1, SEL a2)
{
  v6 = *(v4 - 312);

  return [a1 a2];
}

id OUTLINED_FUNCTION_32_17(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1 + v1;
}

uint64_t OUTLINED_FUNCTION_16_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_16_15()
{
  *(v3 + 16) = v1;
  v4 = (v3 + 24 * v2);
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = v0;
}

uint64_t OUTLINED_FUNCTION_16_18(uint64_t a1)
{
}

id OUTLINED_FUNCTION_16_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1CA320AB4(va, v8);
}

void OUTLINED_FUNCTION_16_24()
{

  sub_1CA2E5C14();
}

uint64_t OUTLINED_FUNCTION_16_31(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

uint64_t OUTLINED_FUNCTION_16_32()
{
}

void sub_1CA27A2EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  sub_1CA94C218();
  sub_1CA27A51C(a3, &v24, a1, a2);
  v10 = v9;
  v11 = v24;
  if (*(v9 + 16) || sub_1CA25B410(v24))
  {
    v22 = v10;
    v12 = objc_opt_self();
    sub_1CA94C218();
    v13 = [v12 lockedAppBundleIdentifiers];
    v14 = sub_1CA94C8F8();

    v15 = sub_1CA27AF18(a1, a2, v14);

    v23 = v8;
    v16 = sub_1CA25B410(v11);
    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {

        *a4 = a1;
        a4[1] = a2;
        a4[2] = v23;
        a4[3] = v22;
        a4[4] = MEMORY[0x1E69E7CC0];
        return;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1CCAA22D0](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v18 = *(v11 + 8 * i + 32);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v15 && (v20 = [v18 entityInfo]) != 0)
      {
        v21 = v20;
      }

      else
      {
        sub_1CA94D4D8();
        sub_1CA94D518();
        sub_1CA94D528();
        sub_1CA94D4E8();
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    a4[4] = 0;
    *a4 = 0u;
    *(a4 + 1) = 0u;
  }
}

void sub_1CA27A51C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446340, &unk_1CA98AFD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v55 - v7;
  v61 = type metadata accessor for AutoShortcutAppSection(0);
  v56 = *(v61 - 8);
  v9 = MEMORY[0x1EEE9AC00](v61);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v55 - v11;
  v12 = 0;
  v63 = a1 + 32;
  v64 = *(a1 + 16);
  v58 = MEMORY[0x1E69E7CC0];
  v62 = v8;
  while (v12 != v64)
  {
    v13 = (v63 + 48 * v12);
    v14 = v13[1];
    v15 = v13[3];
    v16 = v13[4];
    v17 = v13[5];
    v69 = v12 + 1;
    v18 = sub_1CA25B410(v17);
    v68 = v14;
    sub_1CA94C218();
    v67 = v15;
    sub_1CA94C218();
    v65 = v16;
    v66 = v16;
    sub_1CA94C218();
    v19 = 0;
    v72 = MEMORY[0x1E69E7CC0];
    while (v18 != v19)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1CCAA22D0](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v23 = [v20 isDeprecatedStyle];
      v24 = v21;
      if (v23)
      {
        MEMORY[0x1CCAA1490]();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CA94C698();
        }

        sub_1CA94C6E8();

        ++v19;
      }

      else
      {
        v25 = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA27AC48();
          v25 = v30;
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        v72 = v25;
        if (v27 >= v26 >> 1)
        {
          sub_1CA27AC48();
          v72 = v31;
        }

        v28 = v72;
        *(v72 + 16) = v27 + 1;
        v29 = v28 + 16 * v27;
        *(v29 + 32) = v24;
        *(v29 + 40) = 1;

        v19 = v22;
      }
    }

    if (!*(v72 + 16))
    {
      v43 = v62;
      v45 = v62;
      v46 = 1;
LABEL_24:
      v44 = v61;
      __swift_storeEnumTagSinglePayload(v45, v46, 1, v61);

      goto LABEL_25;
    }

    if (!v65)
    {
      v70 = 0u;
      v71 = 0u;
      v47 = objc_opt_self();
      sub_1CA94C218();
      v48 = [v47 blackColor];
      sub_1CA94C218();
      v43 = v62;
      AutoShortcutAppSection.init(sectionType:bundleIdentifier:color:items:)();
      v45 = v43;
      v46 = 0;
      goto LABEL_24;
    }

    v32 = v66;
    v33 = [v32 name];
    v34 = sub_1CA94C3A8();
    v36 = v35;

    v37 = [v32 symbolName];
    v38 = sub_1CA94C3A8();
    v40 = v39;

    *&v70 = v34;
    *(&v70 + 1) = v36;
    *&v71 = v38;
    *(&v71 + 1) = v40;
    v41 = objc_opt_self();
    sub_1CA94C218();
    v42 = [v41 blackColor];
    sub_1CA94C218();
    v43 = v62;
    AutoShortcutAppSection.init(sectionType:bundleIdentifier:color:items:)();

    v44 = v61;
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v61);

LABEL_25:

    if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
    {
      sub_1CA532E30(v43, &qword_1EC446340, &unk_1CA98AFD0);
      v12 = v69;
    }

    else
    {
      v49 = v55;
      sub_1CA27B270(v43, v55);
      sub_1CA27B270(v49, v57);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA27B2D4();
        v58 = v53;
      }

      v50 = *(v58 + 16);
      if (v50 >= *(v58 + 24) >> 1)
      {
        sub_1CA27B2D4();
        v58 = v54;
      }

      v51 = v57;
      v52 = v58;
      *(v58 + 16) = v50 + 1;
      sub_1CA27B270(v51, v52 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v50);
      v12 = v69;
    }
  }
}

uint64_t type metadata accessor for AutoShortcutAppSection(uint64_t a1)
{
  result = qword_1EDB9F400;
  if (!qword_1EDB9F400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA27AB34(uint64_t a1)
{
  sub_1CA25B3D0(319, &unk_1EC441710, 0x1E69E09E0);
  if (v1 <= 0x3F)
  {
    sub_1CA27ABF8();
    if (v2 <= 0x3F)
    {
      sub_1CA948D28();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA27ABF8()
{
  if (!qword_1EC441B38)
  {
    v0 = sub_1CA94C758();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441B38);
    }
  }
}

void AutoShortcutAppSection.init(sectionType:bundleIdentifier:color:items:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v17 - v16;
  sub_1CA948D18();
  v19 = v9[1];
  *v11 = *v9;
  *(v11 + 16) = v19;
  *(v11 + 32) = v7;
  *(v11 + 40) = v5;
  *(v11 + 48) = v3;
  v20 = type metadata accessor for AutoShortcutAppSection(0);
  v40 = v18;
  v41 = v12;
  v42 = v11;
  (*(v14 + 16))(v11 + *(v20 + 32), v18, v12);
  v21 = objc_opt_self();
  sub_1CA94C218();
  v22 = [v21 lockedAppBundleIdentifiers];
  v23 = sub_1CA94C8F8();

  v24 = sub_1CA27AF18(v7, v5, v23);

  v25 = 0;
  v26 = *(v1 + 16);
  v27 = v1 + 40;
  v28 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v27 + 16 * v25); ; i += 16)
  {
    if (v26 == v25)
    {
      (*(v14 + 8))(v40, v41);

      *(v42 + 56) = v28;
      OUTLINED_FUNCTION_36();
      return;
    }

    if (v25 >= *(v1 + 16))
    {
      break;
    }

    v30 = *(i - 1);
    v31 = *i;
    v32 = v30;
    if ((v24 & v31 & 1) == 0)
    {
      v36 = !v24 & v31;
LABEL_10:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_59_1();
      }

      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        OUTLINED_FUNCTION_53_0(v37);
        sub_1CA27B0E8();
      }

      ++v25;
      *(v28 + 16) = v38 + 1;
      v39 = v28 + 16 * v38;
      *(v39 + 32) = v30;
      *(v39 + 40) = v36 & 1;
      v27 = v1 + 40;
      goto LABEL_2;
    }

    v33 = v32;
    v34 = [v32 entityInfo];
    if (!v34)
    {
      v36 = 1;
      goto LABEL_10;
    }

    v35 = v34;

    ++v25;
  }

  __break(1u);
}

BOOL sub_1CA27AF18(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D968();
  OUTLINED_FUNCTION_32();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_27_5();
    v14 = sub_1CA94D7F8();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_1CA94C288();
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t a1, uint64_t a2)
{

  return sub_1CA323E28();
}

uint64_t OUTLINED_FUNCTION_58_8()
{
}

uint64_t sub_1CA27B148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CA948D28();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA27B1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CA948D28();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CA27B270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoShortcutAppSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CA27B2D4()
{
  OUTLINED_FUNCTION_5_11();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_25_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_87_1(v2, v5, &unk_1EC443FC0, &qword_1CA982610);
  v8 = OUTLINED_FUNCTION_36_0();
  type metadata accessor for AutoShortcutAppSection(v8);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_6_9(v9);
    sub_1CA43F338(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
  }
}

void sub_1CA27B39C()
{
  OUTLINED_FUNCTION_17_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_29_3();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_75_0(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_94_0(v13);
      v15 = _swift_stdlib_malloc_size(v14);
      OUTLINED_FUNCTION_32_2(v15);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_28_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_74_0();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return sub_1CA94C858();
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 7, 8, a1);

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_43_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
}

uint64_t OUTLINED_FUNCTION_43_11()
{

  return sub_1CA60D32C();
}

uint64_t OUTLINED_FUNCTION_43_13(uint64_t a1)
{

  return sub_1CA94D588();
}

char *sub_1CA27B60C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

void sub_1CA27B64C()
{
  OUTLINED_FUNCTION_39_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_7_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_15_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4439A0, &qword_1CA981A98);
      v7 = OUTLINED_FUNCTION_31_0(v6);
      OUTLINED_FUNCTION_5_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_14_3();
        sub_1CA27B60C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_6_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1CA27B70C(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA27B634();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_1CA27B790(v10, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1CA27B790(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1CA94D778();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1CA94C6C8();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1CA27B894(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = (*a4 + 40 * a3);
    v5 = result - a3;
    while (2)
    {
      v17 = v4;
      v18 = a3;
      v6 = (v19 + 40 * a3);
      v7 = *v6;
      v8 = v6[1];
      v16 = v5;
      do
      {
        v22 = v7;
        v23 = v5;
        v9 = *(v4 - 4);
        v20 = qword_1EDB9F960;
        v21 = *(v4 - 5);
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        if (v20 != -1)
        {
          swift_once();
        }

        sub_1CA2786EC(v22, v8);
        sub_1CA2786EC(v21, v9);
        sub_1CA27BAF0();
        v10 = sub_1CA94D1D8();

        if (v10 != -1)
        {
          break;
        }

        if (!v19)
        {
          __break(1u);
          return result;
        }

        v7 = *v4;
        v8 = v4[1];
        v11 = v4[2];
        v12 = v4[3];
        v13 = v4[4];
        v14 = *(v4 - 3);
        *v4 = *(v4 - 5);
        *(v4 + 1) = v14;
        v4[4] = *(v4 - 1);
        *(v4 - 4) = v8;
        *(v4 - 3) = v11;
        *(v4 - 2) = v12;
        *(v4 - 1) = v13;
        *(v4 - 5) = v7;
        v4 -= 5;
        v5 = v23 + 1;
      }

      while (v23 != -1);
      a3 = v18 + 1;
      v4 = v17 + 5;
      v5 = v16 - 1;
      if (v18 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

unint64_t sub_1CA27BAF0()
{
  result = qword_1EDB9F7B0;
  if (!qword_1EDB9F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9F7B0);
  }

  return result;
}

uint64_t sub_1CA27BB44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CA94A098();

  return v1;
}

uint64_t sub_1CA27BBB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA27BB44();
  *a1 = result;
  return result;
}

void sub_1CA27BBE8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA27BC7C(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1CA27BC94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = (*a4 + 40 * a3);
    v5 = result - a3;
    while (2)
    {
      v26 = v4;
      v27 = a3;
      v6 = (v28 + 40 * a3);
      v7 = *v6;
      v8 = v6[1];
      v25 = v5;
      while (1)
      {
        v9 = *(v4 - 4);
        v31 = *(v4 - 5);
        v32 = v7;
        v29 = v5;
        v30 = qword_1EDB9F960;
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        v33 = v9;
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        if (v30 != -1)
        {
          swift_once();
        }

        v10 = sub_1CA2786EC(v32, v8);
        v12 = v11 ? v10 : 0;
        v13 = v11 ? v11 : 0xE000000000000000;
        v14 = sub_1CA2786EC(v31, v33);
        v16 = v15 ? v14 : 0;
        v17 = v15 ? v15 : 0xE000000000000000;
        if (v12 == v16 && v13 == v17)
        {
          break;
        }

        v19 = sub_1CA94D7F8();

        if (v19)
        {
          if (!v28)
          {
            __break(1u);
            return result;
          }

          v7 = *v4;
          v8 = v4[1];
          v20 = v4[2];
          v21 = v4[3];
          v22 = v4[4];
          v23 = *(v4 - 3);
          *v4 = *(v4 - 5);
          *(v4 + 1) = v23;
          v4[4] = *(v4 - 1);
          *(v4 - 4) = v8;
          *(v4 - 3) = v20;
          *(v4 - 2) = v21;
          *(v4 - 1) = v22;
          *(v4 - 5) = v7;
          v4 -= 5;
          v5 = v29 + 1;
          if (v29 != -1)
          {
            continue;
          }
        }

        goto LABEL_27;
      }

LABEL_27:
      a3 = v27 + 1;
      v4 = v26 + 5;
      v5 = v25 - 1;
      if (v27 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1CA27BF28(uint64_t a1, uint64_t a2)
{
  v45 = *(a1 + 16);
  if (!v45)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v43 = a2 + 72;
  v44 = a1 + 32;
  v42 = *(a2 + 16) + 1;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v49 = v3;
    v4 = (v44 + 40 * v2);
    v5 = *v4;
    v6 = v4[1];
    *&v47 = v4[2];
    v3 = v4[4];
    v50 = v2 + 1;
    v7 = v42;
    v8 = v43;
    while (--v7)
    {
      v9 = *(v8 - 1);
      v10._rawValue = *v8;
      if (*(v8 - 3) != v5 || *(v8 - 2) != v6)
      {
        v8 += 6;
        if ((sub_1CA94D7F8() & 1) == 0)
        {
          continue;
        }
      }

      v12 = v9;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      AutoShortcutApp.withUserShortcuts(_:)(&v51, v10);

      countAndFlagsBits = v51.bundleIdentifier._countAndFlagsBits;
      if ((OUTLINED_FUNCTION_20_19(v13, v15, v16, v17, v18, v19, v20, v21, v42, v43, v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49) & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_1CA27B44C();
        v3 = v37;
      }

      v2 = v50;
      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_64(v22);
        sub_1CA27B44C();
        v3 = v38;
      }

      *(v3 + 16) = v23 + 1;
      v24 = v3 + 40 * v23;
      *(v24 + 32) = countAndFlagsBits;
      *(v24 + 40) = v47;
      *(v24 + 56) = v46;
      goto LABEL_20;
    }

    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    AutoShortcutApp.withUserShortcuts(_:)(&v51, MEMORY[0x1E69E7CC0]);

    v26 = v51.bundleIdentifier._countAndFlagsBits;
    if ((OUTLINED_FUNCTION_20_19(v25, v27, v28, v29, v30, v31, v32, v33, v42, v43, v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49) & 1) == 0)
    {
      OUTLINED_FUNCTION_21();
      sub_1CA27B44C();
      v3 = v39;
    }

    v35 = *(v3 + 16);
    v34 = *(v3 + 24);
    if (v35 >= v34 >> 1)
    {
      OUTLINED_FUNCTION_64(v34);
      sub_1CA27B44C();
      v3 = v40;
    }

    *(v3 + 16) = v35 + 1;
    v36 = v3 + 40 * v35;
    *(v36 + 32) = v26;
    *(v36 + 40) = v47;
    *(v36 + 56) = v46;
    v2 = v50;
LABEL_20:
    ;
  }

  while (v2 != v45);
  return v3;
}

void __swiftcall AutoShortcutApp.withUserShortcuts(_:)(WorkflowKit::AutoShortcutApp *__return_ptr retstr, Swift::OpaquePointer a2)
{
  v7 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  v9 = v2[3];
  v11 = objc_opt_self();
  v19 = v9;
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  v12 = [v11 lockedAppBundleIdentifiers];
  v13 = sub_1CA94C8F8();

  v14 = sub_1CA27AF18(v7, v8, v13);

  v21 = MEMORY[0x1E69E7CC0];
  sub_1CA25B418(v10);
  OUTLINED_FUNCTION_63_0();
  while (1)
  {
    if (v4 == v5)
    {
      retstr->bundleIdentifier._countAndFlagsBits = v7;
      retstr->bundleIdentifier._object = v8;
      retstr->autoShortcuts._rawValue = v21;
      retstr->sections._rawValue = v19;
      retstr->userShortcuts = a2;
      return;
    }

    if (v3)
    {
      v15 = MEMORY[0x1CCAA22D0](v5, v10);
    }

    else
    {
      if (v5 >= v8[2])
      {
        goto LABEL_15;
      }

      v15 = *(v10 + 8 * v5 + 32);
    }

    v16 = v15;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 && (v17 = [v15 entityInfo]) != 0)
    {
      v18 = v17;
    }

    else
    {
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void OUTLINED_FUNCTION_59_1()
{

  sub_1CA27B0E8();
}

void OUTLINED_FUNCTION_59_4()
{

  JUMPOUT(0x1CCAA4BF0);
}

uint64_t OUTLINED_FUNCTION_59_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return sub_1CA32EA0C(a1, 0xD00000000000001DLL, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_59_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1CA94D9B8();
}

uint64_t OUTLINED_FUNCTION_59_7(uint64_t a1)
{

  return sub_1CA94C698();
}

uint64_t sub_1CA27C47C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1CA94A0A8();
}

uint64_t sub_1CA27C4E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CA27C530()
{
  result = qword_1EC441A00;
  if (!qword_1EC441A00)
  {
    sub_1CA25B3D0(255, &qword_1EDB9FAD0, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441A00);
  }

  return result;
}

unint64_t sub_1CA27C598()
{
  result = qword_1EC441D80;
  if (!qword_1EC441D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446310, &qword_1CA98AE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441D80);
  }

  return result;
}

void *HealthKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __HealthKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E83758D0;
    v6 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HealthKitLibraryCore_frameworkLibrary;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFHealthFeatureAvailability.m" lineNumber:28 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void __getHKSPSleepStoreClass_block_invoke(uint64_t a1)
{
  SleepLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKSPSleepStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKSPSleepStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKSPSleepStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHealthFeatureAvailability.m" lineNumber:25 description:{@"Unable to find class %s", "HKSPSleepStore"}];

    __break(1u);
  }
}

void SleepLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SleepLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SleepLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E83758E8;
    v5 = 0;
    SleepLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SleepLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SleepLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFHealthFeatureAvailability.m" lineNumber:24 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void __getHKSPFeatureAvailabilityStoreClass_block_invoke(uint64_t a1)
{
  SleepLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKSPFeatureAvailabilityStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKSPFeatureAvailabilityStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getHKSPFeatureAvailabilityStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFHealthFeatureAvailability.m" lineNumber:26 description:{@"Unable to find class %s", "HKSPFeatureAvailabilityStore"}];

    __break(1u);
  }
}

void Library.folders.getter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v104 = sub_1CA94C168();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v103 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC443BD0, &unk_1CA983B10);
  v8 = OUTLINED_FUNCTION_18_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_1();
  v121 = v9;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v98 - v11;
  v100 = type metadata accessor for LibraryModel.FolderCollection(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_1();
  v118 = v14;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v15);
  v120 = v98 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443950, &unk_1CA982580);
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_43();
  v105 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v98 - v26;
  v28 = OBJC_IVAR___WFLibrary_capsule;
  swift_beginAccess();
  v29 = *(v24 + 16);
  v113 = v24 + 16;
  v114 = v28;
  v112 = v29;
  v29(v27, v1 + v28, v22);
  sub_1CA2D8DD8();
  v31 = v30;
  v32 = *(v24 + 8);
  v115 = v27;
  v116 = v24 + 8;
  v117 = v22;
  v111 = v32;
  v32(v27, v22);
  v128 = MEMORY[0x1E69E7CC0];
  v33 = *(v31 + 16);
  if (!v33)
  {
LABEL_23:

    OUTLINED_FUNCTION_36();
    return;
  }

  v110 = v1;
  v36 = *(v19 + 16);
  v34 = v19 + 16;
  v35 = v36;
  v37 = (*(v34 + 64) + 32) & ~*(v34 + 64);
  v98[1] = v31;
  v38 = v31 + v37;
  v99 = MEMORY[0x1E69E7CC0];
  v102 = v3 + 8;
  v39 = *(v34 + 56);
  v123 = v34 - 8;
  v124 = v39;
  v40 = v105;
  v101 = v12;
  v122 = v17;
  v125 = v34;
  v109 = v36;
  while (1)
  {
    v35(v40, v38, v17);
    sub_1CA94BE38();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BD8, &qword_1CA982068);
    v42 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_49(v42, v43, v41);
    if (v54)
    {
      v44 = OUTLINED_FUNCTION_25_11();
      v45(v44);
      sub_1CA27080C(v12, &off_1EC443BD0, &unk_1CA983B10);
      goto LABEL_20;
    }

    v46 = v115;
    v47 = v117;
    v112(v115, v110 + v114, v117);
    type metadata accessor for LibraryModel(0);
    sub_1CA34137C();
    v48 = v118;
    sub_1CA94BEC8();
    v111(v46, v47);
    OUTLINED_FUNCTION_39();
    v50 = *(v49 + 8);
    v119 = v49 + 8;
    v50(v12, v41);
    v51 = v48;
    v17 = v122;
    v52 = v120;
    sub_1CA3413D4(v51, v120);
    v53 = v121;
    sub_1CA94BE38();
    OUTLINED_FUNCTION_49(v53, 1, v41);
    if (v54)
    {
      OUTLINED_FUNCTION_0_42();
      sub_1CA4C9F7C(v52, v55);
      v56 = OUTLINED_FUNCTION_25_11();
      v57(v56);
      sub_1CA27080C(v53, &off_1EC443BD0, &unk_1CA983B10);
LABEL_9:
      v35 = v109;
      goto LABEL_20;
    }

    v108 = v50;
    sub_1CA94BE88();
    v58 = sub_1CA948D28();
    v107 = v98;
    OUTLINED_FUNCTION_1_0();
    v60 = v59;
    MEMORY[0x1EEE9AC00](v61);
    OUTLINED_FUNCTION_6_0();
    v64 = v63 - v62;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    OUTLINED_FUNCTION_18_0(v65);
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v66);
    v68 = v98 - v67;
    sub_1CA94C148();
    OUTLINED_FUNCTION_49(v68, 1, v58);
    if (v69)
    {
      sub_1CA27080C(v68, &qword_1EC443BC8, &qword_1CA9834A0);
      v70 = sub_1CA94C158();
      sub_1CA3780AC(1uLL, v70, v71, &v126);
      v72 = v126;
      v73 = v127;
      v74 = sub_1CA94C3E8();
      v75 = OUTLINED_FUNCTION_18_0(v74);
      MEMORY[0x1EEE9AC00](v75);
      OUTLINED_FUNCTION_6_0();
      sub_1CA94C3D8();
      v40 = sub_1CA94C3B8();
      v17 = v76;
      sub_1CA266F2C(v72, v73);
      v77 = OUTLINED_FUNCTION_13_20();
      v78(v77);
      if (!v17)
      {
        OUTLINED_FUNCTION_23_12();
        v94();
        OUTLINED_FUNCTION_0_42();
        sub_1CA4C9F7C(v120, v95);
        v96 = OUTLINED_FUNCTION_15_14();
        v97(v96);
        v12 = v101;
        goto LABEL_9;
      }

      v106 = v40;
    }

    else
    {
      (*(v60 + 32))(v64, v68, v58);
      v106 = sub_1CA948CC8();
      v17 = v79;
      v80 = *(v60 + 8);
      v40 = v60 + 8;
      v80(v64, v58);
      v81 = OUTLINED_FUNCTION_13_20();
      v82(v81);
    }

    v12 = v101;
    OUTLINED_FUNCTION_23_12();
    v83();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C00, &unk_1CA983B30);
    v84 = v120;
    sub_1CA94B858();
    v85 = v126;
    v86 = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF8, &qword_1CA9820A8);
    sub_1CA94B858();
    v87 = v126;
    if ((v126 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v126 >> 16)
    {
      goto LABEL_25;
    }

    v88 = objc_allocWithZone(MEMORY[0x1E69E0DD0]);
    v89 = sub_1CA27E214(v106, v17, 1, v85, v86, v87, 0);
    OUTLINED_FUNCTION_0_42();
    sub_1CA4C9F7C(v84, v90);
    v91 = OUTLINED_FUNCTION_15_14();
    v93 = v92(v91);
    v35 = v109;
    if (v89)
    {
      MEMORY[0x1CCAA1490](v93);
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v99 = v128;
      v17 = v122;
    }

LABEL_20:
    v38 += v124;
    if (!--v33)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_80_2()
{

  return sub_1CA94A4E8();
}

uint64_t OUTLINED_FUNCTION_80_3(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 80) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_80_4(uint64_t a1)
{

  return sub_1CA94C698();
}

void OUTLINED_FUNCTION_80_5()
{

  JUMPOUT(0x1CCAA1490);
}

uint64_t OUTLINED_FUNCTION_80_7()
{
}

uint64_t OUTLINED_FUNCTION_110_0()
{
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return sub_1CA94B0F8();
}

uint64_t OUTLINED_FUNCTION_110_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1CA94D1F8();
}

uint64_t OUTLINED_FUNCTION_110_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1CA57ABD8(a1, 1701669236, 0xE400000000000000, a2);
}

uint64_t OUTLINED_FUNCTION_140_2()
{

  return MEMORY[0x1EEE4AA60]();
}

void OUTLINED_FUNCTION_140_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

__n128 *OUTLINED_FUNCTION_140_4(__n128 *result, __n128 a2)
{
  *(v2 - 160) = a2;
  result[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_140_5(uint64_t a1)
{
  *(v2 + *(v3 + 28)) = a1;

  static WFContentItem.toolkitTypeIdentifier(context:)(v2, v1);
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_143_2()
{
}

void OUTLINED_FUNCTION_151_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_151_3(uint64_t a1)
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_151_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return sub_1CA57ABD8(a1, a2, 0xE900000000000065, a3);
}

uint64_t OUTLINED_FUNCTION_81_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1CA94D7F8();
}

BOOL OUTLINED_FUNCTION_81_5()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_81_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1 + a2 * v2 + 32;

  return sub_1CA2C9578(v5, v3 + 16);
}

void OUTLINED_FUNCTION_105_2()
{

  JUMPOUT(0x1CCAA4BF0);
}

unint64_t OUTLINED_FUNCTION_105_3()
{

  return sub_1CA26B54C(v1, v0, (v2 - 80));
}

BOOL OUTLINED_FUNCTION_105_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_105_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_131_6()
{

  return sub_1CA94D328();
}

void OUTLINED_FUNCTION_150_2()
{
  v2 = *(v0 + 384);
}

uint64_t OUTLINED_FUNCTION_61_1()
{
}

id OUTLINED_FUNCTION_61_6(void *a1)
{

  return [a1 (v1 + 157)];
}

uint64_t OUTLINED_FUNCTION_61_8()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_89_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_89_4()
{
}

void *sub_1CA27DD60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CA2B93F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_52_4(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_52_5()
{

  return sub_1CA94A288();
}

uint64_t OUTLINED_FUNCTION_52_6(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_144_1(uint64_t a1, uint64_t a2)
{

  return sub_1CA2D9D20(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_144_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_99_1()
{
}

uint64_t OUTLINED_FUNCTION_254()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_99_5@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;

  return sub_1CA285AF8(v3);
}

uint64_t OUTLINED_FUNCTION_68_2()
{
}

uint64_t OUTLINED_FUNCTION_68_6()
{

  return sub_1CA4715A8(v0, type metadata accessor for WFContentItem.ToolKitTypeResolutionContext);
}

__n128 *OUTLINED_FUNCTION_68_7(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_9()
{

  return sub_1CA5EF5D8();
}

double OUTLINED_FUNCTION_68_10()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_103_3()
{
  *(v1 - 136) = *(v0 + 480);

  return sub_1CA94AC18();
}

uint64_t OUTLINED_FUNCTION_109_1()
{
}

uint64_t OUTLINED_FUNCTION_109_3(uint64_t a1, uint64_t a2)
{

  return sub_1CA94D7F8();
}

uint64_t OUTLINED_FUNCTION_92()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_92_4()
{
  v3 = *(v1 + 376);

  return sub_1CA275D70(v0, (v3 & 0xC000000000000001) == 0, v3);
}

id sub_1CA27E214(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, char a7)
{
  v11 = sub_1CA94C368();

  v12 = sub_1CA94C368();

  v13 = [v7 initWithIdentifier:v11 isFolder:a3 & 1 name:v12 glyphCharacter:a6 isDeleted:a7 & 1];

  return v13;
}

uint64_t OUTLINED_FUNCTION_138_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_104_3()
{
}

unint64_t sub_1CA27E37C()
{
  result = qword_1EC441850;
  if (!qword_1EC441850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC441850);
  }

  return result;
}

uint64_t sub_1CA27E524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CA94A098();

  return v1;
}

uint64_t sub_1CA27E598@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA27E524();
  *a1 = result;
  return result;
}

uint64_t sub_1CA27E5C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA27E610(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CA27E650()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446308, &unk_1CA98AE88);
  sub_1CA94A078();
  return swift_endAccess();
}

uint64_t sub_1CA27E818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OrderedDictionary.init()@<X0>(uint64_t *a4@<X8>)
{
  *a4 = sub_1CA94C6B8();
  OUTLINED_FUNCTION_9_31();
  a4[1] = sub_1CA94C6B8();
  OUTLINED_FUNCTION_9_31();
  swift_getTupleTypeMetadata2();
  sub_1CA94C6B8();
  result = sub_1CA94C1E8();
  a4[2] = result;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

id WFWorkflowTypeForCollectionIdentifier(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = MEMORY[0x1E69E1458];
LABEL_11:
    v3 = *v2;
    goto LABEL_12;
  }

  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = MEMORY[0x1E69E1470];
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = MEMORY[0x1E69E1468];
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = MEMORY[0x1E69E1438];
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = MEMORY[0x1E69E1440];
    goto LABEL_11;
  }

  v3 = 0;
LABEL_12:

  return v3;
}

uint64_t OUTLINED_FUNCTION_78_2()
{
}

uint64_t OUTLINED_FUNCTION_78_4()
{
}

uint64_t OUTLINED_FUNCTION_78_6(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_1CA94C7D8();
}

void OUTLINED_FUNCTION_78_9(uint64_t a1, uint64_t a2)
{

  sub_1CA2E55BC();
}

uint64_t OUTLINED_FUNCTION_78_10()
{
}

uint64_t OUTLINED_FUNCTION_142_2(uint64_t a1)
{

  return sub_1CA94D268();
}

uint64_t OUTLINED_FUNCTION_142_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_142_5(void *a1)
{

  sub_1CA5EE99C(v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_1CA949C58();
}

void OUTLINED_FUNCTION_156_2()
{
}

uint64_t OUTLINED_FUNCTION_73_2(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_155_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_139_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_139_3(uint64_t a1)
{

  return sub_1CA94D798();
}

uint64_t OUTLINED_FUNCTION_139_4(uint64_t a1)
{
  *(v1 - 136) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_139_6()
{
}

uint64_t OUTLINED_FUNCTION_66_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_1CA57ABD8(a1, 0x74657366666FLL, 0xE600000000000000, a2);
}

uint64_t OUTLINED_FUNCTION_66_7(unint64_t *a1)
{
  v2 = MEMORY[0x1EEE78BB0];

  return sub_1CA286854(a1, v2);
}

uint64_t OUTLINED_FUNCTION_77_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_1CA3178DC;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_77_5(uint64_t a1)
{

  return sub_1CA94D588();
}

uint64_t OUTLINED_FUNCTION_77_7()
{
}

uint64_t OUTLINED_FUNCTION_77_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
}

unint64_t OUTLINED_FUNCTION_77_10()
{

  return sub_1CA271BF8(v1, v0);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1CA27F268(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_84()
{
}

id OUTLINED_FUNCTION_84_3(void *a1)
{
  v3 = *(v1 - 328);
  v4 = *(v1 - 320);

  return WFDeserializedVariableObject(a1, v3, v4);
}

id OUTLINED_FUNCTION_174_0(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return sub_1CA94A6B8();
}

uint64_t OUTLINED_FUNCTION_153_2()
{
}

uint64_t OUTLINED_FUNCTION_153_4()
{
}

uint64_t OUTLINED_FUNCTION_154_0(uint64_t a1)
{

  return sub_1CA94C288();
}

uint64_t OUTLINED_FUNCTION_154_2()
{
  *(v1 - 112) = v0;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_171_2()
{

  return swift_allocObject();
}

unint64_t sub_1CA27F53C()
{
  result = qword_1EC441B18;
  if (!qword_1EC441B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443E20, &qword_1CA986220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441B18);
  }

  return result;
}

uint64_t sub_1CA27F608(void *a1)
{
  v1 = [a1 folderIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

void (*Library.shortcuts(inFolderWithIdentifier:)(uint64_t a1, uint64_t a2))(char *, uint64_t, uint64_t)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B98, &qword_1CA986560);
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BE8, &qword_1CA982098);
  OUTLINED_FUNCTION_18_0(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  v16 = OBJC_IVAR___WFLibrary_capsule;
  OUTLINED_FUNCTION_8_17();
  swift_beginAccess();
  v17 = *(v8 + 16);
  v27[0] = v3;
  v18 = v3 + v16;
  v19 = v17;
  v17(v11, v18, v6);
  v27[1] = a1;
  v27[2] = a2;
  OUTLINED_FUNCTION_204();
  sub_1CA2C9BB4();
  v20 = *(v8 + 8);
  v20(v11, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BF0, &qword_1CA9820A0);
  v21 = OUTLINED_FUNCTION_109();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v21, v22, v23);
  sub_1CA27080C(v15, &qword_1EC443BE8, &qword_1CA982098);
  if (a1 == 1)
  {
    sub_1CA2D9AF4();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v19(v11, v27[0] + v16, v6);
    sub_1CA2D776C();
    v19 = v25;
    v20(v11, v6);
  }

  return v19;
}

void OUTLINED_FUNCTION_101_4(void *a1@<X8>)
{
}

id OUTLINED_FUNCTION_126_1()
{

  return [v0 key];
}

void OUTLINED_FUNCTION_126_4()
{
  *(v2 - 96) = *(v1 + 1144);
  *(v2 - 88) = v0;
  *(v2 - 104) = *(v1 + 1056);
}

void OUTLINED_FUNCTION_126_5()
{

  JUMPOUT(0x1CCAA27B0);
}

void __WFCurrentBundle_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  memset(&v4, 0, sizeof(v4));
  if (dladdr(WFCurrentBundle, &v4) && v4.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v4.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x1E696AAE8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_1CA256000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

id __WFDescriptorsForObjectIDs_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entity];
  v5 = [v4 name];
  v6 = WFDatabaseObjectTypeForEntityName(v5);

  if (v6 >= 0xC || (v7 = off_1E837A328[v6], v6 == 8))
  {
    v8 = 0;
    v11 = 0;
  }

  else
  {
    v8 = v7;
    v9 = [*(a1 + 32) objectWithID:v3];
    v10 = [v9 valueForKey:v8];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E69E0A68]) initWithIdentifier:v10 objectType:v6];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

void *sub_1CA280094()
{
  OUTLINED_FUNCTION_109_0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v3 = OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_41_3(v3);
  v3[2] = v2;
  v3[3] = (2 * (v4 / 8)) | 1;
  return v3;
}

void OrderedDictionary.subscript.setter()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v68 = v2;
  v4 = v3;
  v64 = *(v0 + 16);
  OUTLINED_FUNCTION_4_12();
  v66 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v63 = v8 - v7;
  v10 = *(v9 + 24);
  v11 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v55 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v55 - v21;
  OUTLINED_FUNCTION_4_12();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_10_30();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_48_0();
  v67 = v27;
  OUTLINED_FUNCTION_19_22();
  v28(v22, v4, v11);
  if (__swift_getEnumTagSinglePayload(v22, 1, v10) == 1)
  {
    v29 = *(v13 + 8);
    v29(v22, v11);
    v30 = v68;
    OrderedDictionary.removeValue(forKey:)();
    (*(v66 + 8))(v30, v64);
    v29(v4, v11);
    v29(v17, v11);
  }

  else
  {
    v59 = v17;
    v61 = v4;
    (*(v24 + 32))(v67, v22, v10);
    v31 = v64;
    v32 = v65;
    v57 = v65 + 2;
    v33 = *(v1 + 32);
    sub_1CA94C268();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v10);
    v35 = *(v13 + 8);
    v58 = v13 + 8;
    v56 = v35;
    v35(v20, v11);
    v36 = v31;
    v37 = v24;
    v60 = v11;
    v55[1] = v33;
    if (EnumTagSinglePayload == 1)
    {
      v38 = v36;
      v39 = v66;
      OUTLINED_FUNCTION_19_22();
      v40 = v63;
      v41 = v68;
      v42(v63, v68, v38);
      OUTLINED_FUNCTION_6_42();
      sub_1CA94C758();
      sub_1CA94C708();
      (*(v24 + 16))(v62, v67, v10);
      sub_1CA94C758();
      sub_1CA94C708();
      v43 = v61;
    }

    else
    {
      v44 = v67;
      v69 = v32[1];
      v38 = v36;
      sub_1CA94C758();
      OUTLINED_FUNCTION_2_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_18_26();
      v41 = v68;
      sub_1CA94CAF8();
      v40 = v63;
      if (v71 != 1)
      {
        v45 = v70;
        sub_1CA94C758();
        sub_1CA94C6A8();
        v46 = *v32;
        sub_1CA5CFED0(v45, *v32, v10);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v48 = v46 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v48 = v46;
        }

        (*(v37 + 24))(v48 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45, v44, v10);
      }

      v43 = v61;
      v39 = v66;
    }

    v49 = v59;
    OUTLINED_FUNCTION_19_22();
    v50(v40, v41, v38);
    v51 = v67;
    (*(v37 + 16))(v49, v67, v10);
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v10);
    OUTLINED_FUNCTION_6_42();
    sub_1CA94C248();
    sub_1CA94C278();
    (*(v39 + 8))(v41, v38);
    v56(v43, v60);
    (*(v37 + 8))(v51, v10);
  }

  OUTLINED_FUNCTION_36();
}

{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v24 = v2;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 24);
  OUTLINED_FUNCTION_9_31();
  v8 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = *(v1 + 16);
  OUTLINED_FUNCTION_4_12();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  (*(v14 + 16))(v17 - v16, v4, v12);
  v18 = *(v7 - 8);
  (*(v18 + 16))(v11, v6, v7);
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v7);
  OrderedDictionary.subscript.setter();
  v22 = *(v18 + 8);
  v22(v24, v7);
  (*(v14 + 8))(v4, v12);
  v22(v6, v7);
  OUTLINED_FUNCTION_36();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit22AutoShortcutAppSectionV0F4TypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1CA280B04(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void AutoShortcutAppSection.withUserShortcuts(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v56 = v4;
  v5 = sub_1CA25B418(v2);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1CA27B0E8();
    if (v7 < 0)
    {
      goto LABEL_26;
    }

    v8 = 0;
    v6 = v57;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCAA22D0](v8, v3);
      }

      else
      {
        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v12 = *(v57 + 16);
      v11 = *(v57 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_53_0(v11);
        sub_1CA27B0E8();
      }

      ++v8;
      *(v57 + 16) = v12 + 1;
      v13 = v57 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = 0;
    }

    while (v7 != v8);
  }

  v14 = *v1;
  v15 = v1[1];
  v49 = v1[3];
  v51 = v1[2];
  v53 = v1[5];
  v54 = v1[4];
  v16 = v1[6];
  sub_1CA280EAC(*v1, v15, v51, v49);
  v48 = v16;
  v17 = sub_1CA94C218();
  sub_1CA280F08(v17);
  v18 = v6;
  v19 = type metadata accessor for AutoShortcutAppSection(0);
  v20 = *(v19 + 32);
  v21 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  v27 = (v26 - v25);
  v47 = v23;
  v28 = *(v23 + 16);
  v28(v26 - v25, v1 + v20, v21);
  *v56 = v14;
  v56[1] = v15;
  v56[2] = v51;
  v56[3] = v49;
  v56[4] = v54;
  v56[5] = v53;
  v56[6] = v48;
  v50 = v27;
  v52 = v21;
  v28(v56 + *(v19 + 32), v27, v21);
  v29 = objc_opt_self();
  sub_1CA94C218();
  v30 = [v29 lockedAppBundleIdentifiers];
  v31 = sub_1CA94C8F8();

  v32 = sub_1CA27AF18(v54, v53, v31);

  v33 = 0;
  OUTLINED_FUNCTION_60_1();
  v35 = MEMORY[0x1E69E7CC0];
  v55 = v34;
LABEL_11:
  for (i = (v34 + 16 * v33); ; i += 16)
  {
    if (v28 == v33)
    {
      (*(v47 + 8))(v50, v52);

      v56[7] = v35;
      OUTLINED_FUNCTION_36();
      return;
    }

    if (v33 >= *(v18 + 16))
    {
      break;
    }

    v37 = *(i - 1);
    v38 = *i;
    v39 = v37;
    if ((v32 & v38 & 1) == 0)
    {
      v43 = v53 & v38;
LABEL_19:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_59_1();
      }

      v45 = *(v35 + 16);
      v44 = *(v35 + 24);
      if (v45 >= v44 >> 1)
      {
        OUTLINED_FUNCTION_53_0(v44);
        sub_1CA27B0E8();
      }

      ++v33;
      *(v35 + 16) = v45 + 1;
      v46 = v35 + 16 * v45;
      *(v46 + 32) = v37;
      *(v46 + 40) = v43 & 1;
      v34 = v55;
      goto LABEL_11;
    }

    v40 = v39;
    v41 = [v39 entityInfo];
    if (!v41)
    {
      v43 = 1;
      goto LABEL_19;
    }

    v42 = v41;

    ++v33;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1CA280EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1CA94C218();

    sub_1CA94C218();
  }
}

void sub_1CA280F08(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1CA280EF0(v4, 1);
  OUTLINED_FUNCTION_29_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_34_1();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_28_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1CA2D9D20(v4, v5, a3, a4);
}

void OUTLINED_FUNCTION_37_6()
{

  JUMPOUT(0x1CCAA1490);
}

id OUTLINED_FUNCTION_37_9(uint64_t a1, uint64_t a2)
{

  return sub_1CA32E1E0(a1, a2, 0, v2);
}

uint64_t OUTLINED_FUNCTION_37_12()
{
}

uint64_t AutoShortcutAppSection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutoShortcutAppSection(0) + 32);
  sub_1CA948D28();
  OUTLINED_FUNCTION_52();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

Swift::Void __swiftcall OrderedDictionary.removeAll()()
{
  OUTLINED_FUNCTION_20_26();
  sub_1CA94C758();
  sub_1CA94C748();
  OUTLINED_FUNCTION_6_42();
  sub_1CA94C758();
  sub_1CA94C748();
  OUTLINED_FUNCTION_20_26();
  sub_1CA94C248();
  sub_1CA94C238();
}

uint64_t sub_1CA2811DC(uint64_t *a1, int a2)
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

uint64_t sub_1CA28121C(uint64_t result, int a2, int a3)
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

unint64_t sub_1CA28127C()
{
  result = qword_1EDB9F4E8;
  if (!qword_1EDB9F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9F4E8);
  }

  return result;
}

uint64_t sub_1CA28134C@<X0>(uint64_t *a1@<X8>)
{
  result = AggregatedEntry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t AggregatedEntry.id.getter()
{
  v1 = &selRef_id;
  if (!*(v0 + 8))
  {
    v1 = &selRef_identifier;
  }

  v2 = [*v0 *v1];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  return OUTLINED_FUNCTION_52_0();
}

uint64_t sub_1CA281410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1CA281454(SEL *a1, uint64_t (*a2)(void))
{
  if (*(v2 + 8))
  {
    return a2();
  }

  v5 = [*v2 icon];
  v6 = [v5 *a1];

  return v6;
}

uint64_t sub_1CA2814C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

id WFExecutableAppShortcut.entryIcon.getter()
{
  v2 = [v0 entityInfo];
  if (v2)
  {
    v3 = v2;
    v1 = [v2 icon];
    v4 = [v1 wfIcon];

    if (v4)
    {
      return v4;
    }
  }

  v6 = [v0 underlyingAutoShortcut];
  v7 = [v6 systemImageName];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_27_19();

  v8 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_opt_self() clearColor];
    v10 = [objc_allocWithZone(MEMORY[0x1E69E0B48]) initWithColor_];

    v11 = [v0 underlyingAutoShortcut];
    v12 = [v11 systemImageName];

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_27_19();

    v13 = objc_allocWithZone(MEMORY[0x1E69E0D70]);
    return sub_1CA28171C(v11, v1, v10);
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
    v14 = [v0 phrase];
    v15 = [v14 bundleIdentifier];

    v16 = sub_1CA94C3A8();
    v18 = v17;

    return sub_1CA409428(v16, v18);
  }
}

id sub_1CA28171C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithSymbolName:v5 background:a3];

  return v6;
}

uint64_t AggregatedEntry.iconBadges.getter()
{
  OUTLINED_FUNCTION_30_17();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [*v0 entityInfo];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = [v2 badge];

  if (v4 != 2 && v4 != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446968, &qword_1CA98C2A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CA981310;
  sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  sub_1CA948D18();
  sub_1CA948CC8();
  v7 = OUTLINED_FUNCTION_52_0();
  v8(v7);
  sub_1CA94D3A8();
  sub_1CA25B3D0(0, &qword_1EC445118, 0x1E69E0960);
  v9 = sub_1CA94C3A8();
  *(v5 + 72) = sub_1CA409428(v9, v10);
  *(v5 + 80) = 3;
  return v5;
}

__CFString *WFWorkflowCollectionIdentifierForWorkflowType(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = @"Watch";
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = @"ShareSheet";
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = @"Sleep";
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = @"MenuBar";
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = @"QuickActions";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t AggregatedEntry.shortTitle.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_30_17();
  if (!v2)
  {
    v5 = [v1 name];
LABEL_5:
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_1_2();
    goto LABEL_6;
  }

  v3 = [v1 entityInfo];
  if (!v3)
  {
    v7 = [v1 underlyingAutoShortcut];
    v5 = [v7 localizedShortTitle];

    if (!v5)
    {
      return OUTLINED_FUNCTION_52_0();
    }

    goto LABEL_5;
  }

  v4 = v3;
  v5 = [v3 name];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

LABEL_6:
  return OUTLINED_FUNCTION_52_0();
}

uint64_t WFEnsureDaemonIsRunningForSyncIfNeeded()
{
  result = +[WFCloudKitSyncSession isSyncEnabled];
  if (result)
  {

    return notify_post("com.apple.shortcuts.daemon-wakeup-request");
  }

  return result;
}

uint64_t AutoShortcutApp.localizedName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EDB9F960 != -1)
  {
    swift_once();
  }

  result = sub_1CA2786EC(v1, v2);
  if (!v4)
  {
    return 0;
  }

  return result;
}

void WFPresentResumeSyncConfirmationAlertWithUserInterfaceIfNeeded(void *a1)
{
  v10 = a1;
  if (!v10)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void WFPresentResumeSyncConfirmationAlertWithUserInterfaceIfNeeded(id<WFUserInterfaceHost>  _Nonnull __strong)"];
    [v8 handleFailureInFunction:v9 file:@"WFResumeSyncConfirmationAlertPresentation.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"userInterface"}];
  }

  if (+[WFCloudKitSyncSession zoneWasPurged])
  {
    v1 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
    v2 = WFLocalizedString(@"iCloud Shortcuts Deleted");
    [v1 setTitle:v2];

    v3 = WFLocalizedString(@"You have recently deleted your Shortcuts data from iCloud. Would you like to continue syncing shortcuts to iCloud?");
    [v1 setMessage:v3];

    v4 = MEMORY[0x1E6996C78];
    v5 = WFLocalizedString(@"Continue Syncing");
    v6 = [v4 buttonWithTitle:v5 style:0 handler:&__block_literal_global_13911];
    [v1 addButton:v6];

    v7 = [MEMORY[0x1E6996C78] cancelButtonWithHandler:&__block_literal_global_82];
    [v1 addButton:v7];

    [v10 presentAlert:v1];
  }
}

id WFBackgroundShortcutRunnerLockFileURL()
{
  v0 = [MEMORY[0x1E6996F68] sharedAppGroupDirectoryURL];
  v1 = [v0 URLByAppendingPathComponent:@"Library/Caches/BackgroundShortcutRunner.lock"];

  return v1;
}

id WFAssetsDirectory()
{
  v0 = [MEMORY[0x1E695DFF8] wf_shortcutsDirectoryURL];
  v1 = [v0 URLByAppendingPathComponent:@"QuarantineAsset" isDirectory:1];

  return v1;
}

id RunningProgressSuppressionStateMachine.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___WFRunningProgressSuppressionStateMachine_initialDialogAttribution] = 0;
  *&v0[OBJC_IVAR___WFRunningProgressSuppressionStateMachine_waitingCancellable] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for RunningProgressSuppressionStateMachine();
  v1 = objc_msgSendSuper2(&v8, sel_init);
  [v1 setSilentlyDropInvalidTransitions_];
  v2 = objc_allocWithZone(type metadata accessor for RunningProgressSuppressionStateMachine.State());
  v3 = sub_1CA282CB0(0);
  v4 = sub_1CA94C368();
  v5 = OUTLINED_FUNCTION_50_6();
  [v5 v6];

  return v1;
}

uint64_t sub_1CA282B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA97EDF0;
  v2 = 0xE400000000000000;
  v3 = 1701602409;
  v4 = v1;
  switch(v0[OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_stage])
  {
    case 1:
      v2 = 0xEF676E696E6E7572;
      v3 = 0x2064657472617473;
      break;
    case 2:
      v2 = 0x80000001CA9D78D0;
      v3 = 0xD000000000000011;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x64656469636564;
      break;
    default:
      break;
  }

  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1CA282DB4();
  v4[4] = v3;
  v4[5] = v2;
  v4[12] = type metadata accessor for RunningProgressSuppressionStateMachine.State();
  v4[13] = sub_1CA282DFC();
  v4[9] = v0;
  v5 = v0;
  return sub_1CA94C3C8();
}

id sub_1CA282CB0(char a1)
{
  v3 = OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_timeout;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447828, &unk_1CA990120);
  swift_allocObject();
  *&v1[v3] = sub_1CA94A008();
  v1[OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_stage] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RunningProgressSuppressionStateMachine.State();
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_1CA282DB4()
{
  result = qword_1EDB9F7A0;
  if (!qword_1EDB9F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB9F7A0);
  }

  return result;
}

unint64_t sub_1CA282DFC()
{
  result = qword_1EC441E38;
  if (!qword_1EC441E38)
  {
    type metadata accessor for RunningProgressSuppressionStateMachine.State();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E38);
  }

  return result;
}

uint64_t sub_1CA282EF4(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id getWFWorkflowLogObject()
{
  if (getWFWorkflowLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWorkflowLogObject_onceToken, &__block_literal_global_39609);
  }

  v1 = getWFWorkflowLogObject_log;

  return v1;
}

uint64_t WFCompareBundleVersions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"0";
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"0";
  }

  v7 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v5];
  v8 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v6];
  v13 = 0;
  v14 = 0;
  v9 = 1;
  while (![v7 isAtEnd] || (objc_msgSend(v8, "isAtEnd") & 1) == 0)
  {
    if ([v7 isAtEnd])
    {
      v14 = 0;
    }

    else if (![v7 scanUnsignedLongLong:&v14])
    {
      goto LABEL_36;
    }

    if ([v8 isAtEnd])
    {
      v10 = 0;
      v13 = 0;
    }

    else
    {
      if (![v8 scanUnsignedLongLong:&v13])
      {
        goto LABEL_36;
      }

      v10 = v13;
    }

    v11 = v14;
    if (([v7 isAtEnd] & 1) == 0 && !objc_msgSend(v7, "scanString:intoString:", @".", 0) || (objc_msgSend(v8, "isAtEnd") & 1) == 0 && !objc_msgSend(v8, "scanString:intoString:", @".", 0))
    {
      goto LABEL_36;
    }

    if (v11 != v10)
    {
      if (v11 > v10)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      break;
    }
  }

  if ([v7 isAtEnd])
  {
LABEL_30:
    if ([v8 isAtEnd])
    {
      goto LABEL_37;
    }

    while ([v8 scanUnsignedLongLong:0] && ((objc_msgSend(v8, "isAtEnd") & 1) != 0 || objc_msgSend(v8, "scanString:intoString:", @".", 0)))
    {
      if ([v8 isAtEnd])
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    while ([v7 scanUnsignedLongLong:0] && ((objc_msgSend(v7, "isAtEnd") & 1) != 0 || objc_msgSend(v7, "scanString:intoString:", @".", 0)))
    {
      if ([v7 isAtEnd])
      {
        goto LABEL_30;
      }
    }
  }

LABEL_36:
  v9 = 0;
LABEL_37:

  return v9;
}

void __getWFWorkflowLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "Workflow");
  v1 = getWFWorkflowLogObject_log;
  getWFWorkflowLogObject_log = v0;
}

uint64_t sub_1CA285A0C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v4(v3);
  OUTLINED_FUNCTION_52();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

uint64_t WFWorkflowActionTree.actions.getter()
{
  v0 = OUTLINED_FUNCTION_18_30();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_0();
  v3 = (v2 - v1);
  sub_1CA285AF8(v2 - v1);
  v4 = *v3;
  sub_1CA94C218();
  OUTLINED_FUNCTION_0_73();
  sub_1CA285DC8(v3, v5);
  return v4;
}

uint64_t sub_1CA285D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CA285D74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CA285DC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CA285F3C(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 isLoaded])
  {
    sub_1CA948638();
    sub_1CA948618();
    sub_1CA948628();
  }

  else
  {
    v4 = sub_1CA94C3A8();
    v6 = v5;
    v7 = sub_1CA948768();
    v8 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA948748();
    v11 = sub_1CA948758();
    (*(v8 + 8))(v10, v7);
    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1CA298568(v4, v6, v11, 0);
    return swift_willThrow();
  }
}

id WFWorkflowNoInputBehaviorFromSerializedRepresentation(void *a1)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = v14 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = objc_alloc(*(*(&v11 + 1) + 8 * i));
          v8 = [v7 initWithSerializedRepresentation:{v1, v11}];
          if (v8)
          {
            v9 = v8;
            goto LABEL_13;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1CA28659C(uint64_t a1)
{
  sub_1CA2866DC(319);
  if (v1 <= 0x3F)
  {
    sub_1CA286744();
    if (v2 <= 0x3F)
    {
      sub_1CA2867A4(319, &qword_1EC441B10, MEMORY[0x1E69E6530]);
      if (v3 <= 0x3F)
      {
        sub_1CA2867F0(319, &qword_1EC441B48, MEMORY[0x1EEE78B98], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1CA2867A4(319, &qword_1EC441AE0, &_s10ActionTypeON);
          if (v5 <= 0x3F)
          {
            sub_1CA286898(319);
            if (v6 <= 0x3F)
            {
              sub_1CA9491F8();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CA2866DC(uint64_t a1)
{
  if (!qword_1EC441AD0)
  {
    sub_1CA25B3D0(255, &qword_1EDB9F5D0, off_1E836DCF8);
    v1 = sub_1CA94C758();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441AD0);
    }
  }
}

void sub_1CA286744()
{
  if (!qword_1EC441B68)
  {
    v0 = sub_1CA94C248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC441B68);
    }
  }
}

void sub_1CA2867A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1CA94C758();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CA2867F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1CA286854(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CA286898(uint64_t a1)
{
  if (!qword_1EC441B78)
  {
    sub_1CA9492B8();
    sub_1CA286854(&unk_1EC442CE0, MEMORY[0x1EEE78BB0]);
    v1 = sub_1CA94C248();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441B78);
    }
  }
}

IMP WFDisableAppTrustChecking()
{
  v0 = NSClassFromString(&cfstr_Inapptrust.isa);
  ClassMethod = class_getClassMethod(v0, sel_shouldTrustExtensionForLaunch_);
  v2 = imp_implementationWithBlock(&__block_literal_global_51767);
  method_setImplementation(ClassMethod, v2);
  v3 = class_getClassMethod(v0, sel_extensionsTrustedForLaunch_);
  v4 = imp_implementationWithBlock(&__block_literal_global_6);
  method_setImplementation(v3, v4);
  v5 = class_getClassMethod(v0, sel_shouldTrustAppForLaunch_);
  v6 = imp_implementationWithBlock(&__block_literal_global_10);
  method_setImplementation(v5, v6);
  v7 = class_getClassMethod(v0, sel_appsTrustedForLaunch_);
  v8 = imp_implementationWithBlock(&__block_literal_global_14);

  return method_setImplementation(v7, v8);
}

uint64_t OUTLINED_FUNCTION_116_1(uint64_t a1)
{

  return sub_1CA94C358();
}

void OUTLINED_FUNCTION_116_5()
{
  v2 = *(v0 - 120);
  *(v0 - 128) = *(v0 - 128);
  *(v0 - 120) = v2;

  JUMPOUT(0x1CCAA1300);
}

void sub_1CA286ACC(uint64_t a1, int a2)
{
  v179 = a2;
  v166 = _s17ControlFlowBranchVMa(0);
  OUTLINED_FUNCTION_1_0();
  v180 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FF8, &unk_1CA989EE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v157 - v11;
  v13 = _s10ScopeStackV5EntryOMa(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v19);
  v182 = _s10ScopeStackV23PendingControlFlowGroupVMa(0);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_19();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v26);
  v163 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_44_0(v31);
  v189 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443EF0, &qword_1CA982550);
  v32 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v183 = *(v14 + 72);
  v33 = swift_allocObject();
  v181 = xmmword_1CA981310;
  *(v33 + 16) = xmmword_1CA981310;
  *(v33 + v32) = MEMORY[0x1E69E7CC0];
  v185 = v32;
  v34 = a1;
  swift_storeEnumTagMultiPayload();
  v188 = v33;
  v35 = sub_1CA25B410(a1);
  v178 = v7;
  v184 = v13;
  if (v35)
  {
    v37 = v35;
    v177 = a1 & 0xC000000000000001;
    v172 = a1 & 0xFFFFFFFFFFFFFF8;
    v161 = *MEMORY[0x1E69E10A0];
    v38 = (v28 + 8);
    v39 = 0;
    v160 = v38;
    *&v36 = 136315138;
    v157[0] = v36;
    v168 = v12;
    v173 = v35;
    v174 = a1;
    while (1)
    {
      if (v177)
      {
        v40 = MEMORY[0x1CCAA22D0](v39, v34);
      }

      else
      {
        if (v39 >= *(v172 + 16))
        {
          goto LABEL_77;
        }

        v40 = *(v34 + 8 * v39 + 32);
      }

      v41 = v40;
      inited = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        goto LABEL_76;
      }

      v43 = v34;
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (!v44)
      {
        break;
      }

      v45 = v44;
      v46 = [v44 mode];
      if ((v46 - 1) >= 2)
      {
        if (!v46)
        {
          v175 = v39;
          v176 = (v39 + 1);
          v59 = v41;
          v60 = v45;
          v61 = sub_1CA50DBB0(v60);
          if (v62)
          {
            v63 = v61;
            v64 = v62;
            v65 = sub_1CA27AF18(v61, v62, v189);
            v66 = v162;
            if (v65)
            {
              sub_1CA949C58();
              sub_1CA94C218();
              v67 = sub_1CA949F68();
              v68 = sub_1CA94CC38();

              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                v187 = v70;
                *v69 = v157[0];
                v71 = sub_1CA26B54C(v63, v64, &v187);

                *(v69 + 4) = v71;
                _os_log_impl(&dword_1CA256000, v67, v68, "Found duplicate grouping identifier for open action: %s. Regenerating a new one.", v69, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v70);
                MEMORY[0x1CCAA4BF0](v70, -1, -1);
                MEMORY[0x1CCAA4BF0](v69, -1, -1);
              }

              else
              {
              }

              (*v160)(v66, v163);
              goto LABEL_48;
            }
          }

          else
          {
            sub_1CA949C58();
            v80 = sub_1CA949F68();
            v81 = sub_1CA94CC38();
            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              *v82 = 0;
              _os_log_impl(&dword_1CA256000, v80, v81, "Found open control flow action without a grouping identifier. Generating a new one.", v82, 2u);
              MEMORY[0x1CCAA4BF0](v82, -1, -1);
            }

            (*v160)(v165, v163);
LABEL_48:
            v105 = sub_1CA948D28();
            OUTLINED_FUNCTION_1_0();
            v107 = v106;
            MEMORY[0x1EEE9AC00](v108);
            v110 = v157 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1CA948D18();
            v63 = sub_1CA948CC8();
            v64 = v111;
            (*(v107 + 8))(v110, v105);
          }

          sub_1CA94C218();
          sub_1CA94C218();
          sub_1CA368948(&v187, v63, v64);

          sub_1CA50DC20(v63, v64, v60);

          objc_opt_self();
          v112 = swift_dynamicCastObjCClass() != 0;
          OUTLINED_FUNCTION_11_24();
          v113 = v60;
          v114 = v170;
          v116 = v170 + v115;
          v117 = v59;
          v118 = v166;
          v7 = *(v166 + 24);
          v119 = sub_1CA948D28();
          __swift_storeEnumTagSinglePayload(&v116[v7], 1, 1, v119);
          *v116 = v113;
          v116[8] = v112;
          v120 = MEMORY[0x1E69E7CC0];
          *&v116[*(v118 + 28)] = MEMORY[0x1E69E7CC0];
          *v114 = v63;
          v114[1] = v64;
          v114[2] = v113;
          v114[3] = v120;
          OUTLINED_FUNCTION_6_30();
          sub_1CA50DCDC(v114, v171, v121);
          OUTLINED_FUNCTION_10_19();
          swift_storeEnumTagMultiPayload();
          inited = v188;
          v122 = v117;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_21();
            sub_1CA2E68BC();
            inited = v130;
          }

          OUTLINED_FUNCTION_17_13();
          v43 = v174;
          v37 = inited[1].n128_u64[0];
          v123 = inited[1].n128_u64[1];
          v39 = v175;
          if (v37 >= v123 >> 1)
          {
            OUTLINED_FUNCTION_64(v123);
            sub_1CA2E68BC();
            inited = v131;
          }

          OUTLINED_FUNCTION_1_36();
          sub_1CA50DC84(v170, v124);
          inited[1].n128_u64[0] = v37->n128_u64 + 1;
          OUTLINED_FUNCTION_12_21();
          OUTLINED_FUNCTION_0_47();
          sub_1CA288180(v171, v125, v126);
          v188 = inited;
          OUTLINED_FUNCTION_21_15();
LABEL_54:
          v34 = v43;
          goto LABEL_55;
        }

LABEL_23:
        OUTLINED_FUNCTION_10_19();
        goto LABEL_54;
      }

      v176 = (v39 + 1);
      inited = v188;
      if (!v188[1].n128_u64[0])
      {
        goto LABEL_78;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v175 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CA42B2EC();
        inited = v129;
      }

      v48 = inited[1].n128_u64[0];
      if (!v48)
      {
        goto LABEL_79;
      }

      v49 = (v48 - 1) * v183;
      inited[1].n128_u64[0] = v48 - 1;
      v188 = inited;
      OUTLINED_FUNCTION_0_47();
      v7 = v51;
      sub_1CA288180(v50 + v49, v51, v52);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_2_40();
        v53 = v168;
        sub_1CA288180(v7, v168, v54);
        v55 = v174;
        OUTLINED_FUNCTION_17_13();
      }

      else
      {
        *v169 = *v7;
        swift_storeEnumTagMultiPayload();
        v72 = inited[1].n128_u64[1];
        if (v48 > v72 >> 1)
        {
          OUTLINED_FUNCTION_64(v72);
          sub_1CA2E68BC();
          inited = v132;
        }

        OUTLINED_FUNCTION_17_13();
        inited[1].n128_u64[0] = v48;
        OUTLINED_FUNCTION_12_21();
        OUTLINED_FUNCTION_0_47();
        sub_1CA288180(v169, v73 + v49, v74);
        v188 = inited;
        v56 = 1;
        v55 = v174;
        v53 = v168;
      }

      v75 = v182;
      __swift_storeEnumTagSinglePayload(v53, v56, 1, v182);
      if (__swift_getEnumTagSinglePayload(v53, 1, v75) == 1)
      {

        sub_1CA27080C(v53, &qword_1EC445FF8, &unk_1CA989EE0);
      }

      else
      {
        OUTLINED_FUNCTION_2_40();
        v76 = v167;
        sub_1CA288180(v53, v167, v77);
        ObjectType = swift_getObjectType();
        if (ObjectType == swift_getObjectType())
        {
          OUTLINED_FUNCTION_11_24();
          v84 = v76 + v83;
          OUTLINED_FUNCTION_7_27();
          sub_1CA50DCDC(v84, v164, v85);
          v86 = *(v76 + 24);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_21();
            sub_1CA2E6984();
            v86 = v133;
          }

          v88 = *(v86 + 16);
          v87 = *(v86 + 24);
          if (v88 >= v87 >> 1)
          {
            OUTLINED_FUNCTION_64(v87);
            sub_1CA2E6984();
            v86 = v134;
          }

          *(v86 + 16) = v88 + 1;
          OUTLINED_FUNCTION_15_16();
          OUTLINED_FUNCTION_5_29();
          sub_1CA288180(v164, v89, v90);
          v37 = v167;
          v167[1].n128_u64[1] = v86;
          v91 = v37->n128_u64[0];
          v92 = v37->n128_i64[1];
          v93 = v41;
          v158 = v91;
          v94 = sub_1CA94C368();
          [v45 setGroupingIdentifier_];

          if ([v45 mode] == 1)
          {
            v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
            MEMORY[0x1EEE9AC00](v95 - 8);
            v97 = v157 - v96;
            v98 = sub_1CA948D28();
            __swift_storeEnumTagSinglePayload(v97, 1, 1, v98);
            sub_1CA50DC84(v84, _s17ControlFlowBranchVMa);
            *v84 = v45;
            *(v84 + 8) = 0;
            v99 = v166;
            sub_1CA276D6C(v97, v84 + *(v166 + 24));
            *(v84 + *(v99 + 28)) = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_6_30();
            sub_1CA50DCDC(v37, v159, v100);
            OUTLINED_FUNCTION_10_19();
            swift_storeEnumTagMultiPayload();
            v102 = inited[1].n128_u64[0];
            v101 = inited[1].n128_u64[1];
            v7 = v178;
            if (v102 >= v101 >> 1)
            {
              OUTLINED_FUNCTION_64(v101);
              sub_1CA2E68BC();
              inited = v135;
            }

            inited[1].n128_u64[0] = v102 + 1;
            OUTLINED_FUNCTION_12_21();
            OUTLINED_FUNCTION_0_47();
            sub_1CA288180(v159, v103, v104);
            v188 = inited;
            v37 = v167;
          }

          else
          {
            v7 = v178;
            if (!*(v86 + 16))
            {
              goto LABEL_80;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              sub_1CA94C218();
              sub_1CA94C218();
              inited = sub_1CA6A5448(v158, v92, v86, v45);
              sub_1CA50D794(inited);
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
              inited = swift_initStackObject();
              OUTLINED_FUNCTION_13_23(inited);
              *(v127 + 32) = v158;
              *(v127 + 40) = v92;
              *(v127 + 48) = v86;
              *(v127 + 56) = v45;
              *(v127 + 64) = 1;
              sub_1CA94C218();
              sub_1CA94C218();
              sub_1CA50D794(inited);
              swift_setDeallocating();
              sub_1CA32E390();
            }

            OUTLINED_FUNCTION_10_19();
          }

          v39 = v175;
          OUTLINED_FUNCTION_1_36();
          sub_1CA50DC84(v37, v128);
          OUTLINED_FUNCTION_21_15();
          v34 = v174;
          goto LABEL_55;
        }

        OUTLINED_FUNCTION_1_36();
        sub_1CA50DC84(v76, v79);
      }

      OUTLINED_FUNCTION_10_19();
      v37 = v173;
      inited = v176;
      v34 = v55;
      v39 = v175;
LABEL_55:
      ++v39;
      if (inited == v37)
      {
        goto LABEL_60;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
    v57 = swift_initStackObject();
    OUTLINED_FUNCTION_13_23(v57);
    *(v58 + 32) = v41;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    *(v58 + 64) = 0;
    sub_1CA50D794(v58);
    swift_setDeallocating();
    sub_1CA32E390();
    goto LABEL_23;
  }

LABEL_60:

  while (1)
  {
    v136 = v188;
    if (!v188[1].n128_u64[0])
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA42B2EC();
      v136 = v154;
    }

    v137 = v136[1].n128_i64[0];
    if (!v137)
    {
      goto LABEL_75;
    }

    v136[1].n128_u64[0] = v137 - 1;
    v188 = v136;
    OUTLINED_FUNCTION_0_47();
    sub_1CA288180(v138, v186, v139);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      return;
    }

    OUTLINED_FUNCTION_2_40();
    sub_1CA288180(v186, v23, v140);
    OUTLINED_FUNCTION_11_24();
    OUTLINED_FUNCTION_7_27();
    sub_1CA50DCDC(v23 + v141, v7, v142);
    v143 = *(v23 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_21();
      sub_1CA2E6984();
      v143 = v155;
    }

    v145 = *(v143 + 16);
    v144 = *(v143 + 24);
    if (v145 >= v144 >> 1)
    {
      OUTLINED_FUNCTION_64(v144);
      sub_1CA2E6984();
      v143 = v156;
    }

    *(v143 + 16) = v145 + 1;
    OUTLINED_FUNCTION_15_16();
    OUTLINED_FUNCTION_5_29();
    sub_1CA288180(v7, v146, v147);
    *(v23 + 24) = v143;
    v148 = [*(v23 + 16) createAccompanyingActionWithMode_];
    v149 = v148;
    if (v179)
    {
      v150 = v148;
      OUTLINED_FUNCTION_10_19();
      v7 = sub_1CA94C368();
      [v150 setGroupingIdentifier_];

      OUTLINED_FUNCTION_17_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E28, &unk_1CA989EF0);
    v151 = swift_initStackObject();
    OUTLINED_FUNCTION_13_23(v151);
    v152 = *(v23 + 8);
    v151[2].n128_u64[0] = *v23;
    v151[2].n128_u64[1] = v152;
    v151[3].n128_u64[0] = v143;
    v151[3].n128_u64[1] = v149;
    v151[4].n128_u8[0] = 1;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA50D794(v151);
    swift_setDeallocating();
    sub_1CA32E390();
    OUTLINED_FUNCTION_1_36();
    sub_1CA50DC84(v23, v153);
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
}

void sub_1CA287EC4(uint64_t a1)
{
  sub_1CA25B3D0(319, &qword_1EC441950, off_1E836E0B0);
  if (v1 <= 0x3F)
  {
    sub_1CA2867F0(319, &qword_1EC442D00, MEMORY[0x1EEE788D8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CA287FAC(uint64_t a1)
{
  sub_1CA2880B0();
  if (v1 <= 0x3F)
  {
    sub_1CA288058(319);
    if (v2 <= 0x3F)
    {
      _s17ControlFlowBranchVMa(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA288058(uint64_t a1)
{
  if (!qword_1EC441AD8)
  {
    _s17ControlFlowBranchVMa(255);
    v1 = sub_1CA94C758();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC441AD8);
    }
  }
}

unint64_t sub_1CA2880B0()
{
  result = qword_1EC441950;
  if (!qword_1EC441950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC441950);
  }

  return result;
}

uint64_t sub_1CA288114(uint64_t a1)
{
  result = _s10ScopeStackV23PendingControlFlowGroupVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA288180(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_52();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1CA2881E0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a1;
  v43 = a2;
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v45 = (v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1CA94C1E8();
  v40 = v4 + 16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v39 = v5 + 16;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v38 = v6 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v37 = v7 + 16;
  v8 = swift_allocObject();
  v9 = sub_1CA9492B8();
  sub_1CA286854(&unk_1EC442CE0, MEMORY[0x1EEE78BB0]);
  v10 = sub_1CA94C1E8();
  *(v8 + 16) = v10;
  v36 = v8 + 16;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1CCA9E0B0](v3);
  v42 = v7;
  v14 = v48;
  v44 = v2;
  v48 = v4;
  v41 = v8;
  v46 = v6;
  v47 = v5;
  sub_1CA2887BC(v14, 0, v13, v2, v4, v8, v5, v6, v7);
  (*(v11 + 8))(v13, v9);
  v15 = sub_1CA9491F8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v45;
  swift_beginAccess();
  v20 = *v19;
  v21 = sub_1CA25B410(v20);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v35 = v16;
    v45 = v15;
    v49 = 0;
    v50 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481A8, &qword_1CA992028);
    sub_1CA276B98(&qword_1EC441B50, &qword_1EC4481A8, &qword_1CA992028);
    sub_1CA9490F8();
    v22 = sub_1CA25B410(v20);
    for (i = 0; ; ++i)
    {
      if (v22 == i)
      {
        swift_beginAccess();
        v27 = *(v48 + 16);
        swift_beginAccess();
        v28 = *(v47 + 16);
        swift_beginAccess();
        v29 = *(v46 + 16);
        swift_beginAccess();
        v30 = *(v42 + 16);
        swift_beginAccess();
        v31 = *(v41 + 16);
        v32 = v43;
        *v43 = v20;
        v32[1] = v27;
        v32[2] = v28;
        v32[3] = v29;
        v32[4] = v30;
        v32[5] = v31;
        v33 = _s6LayoutVMa(0);
        (*(v35 + 32))(v32 + *(v33 + 40), v18, v45);
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();

        return;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1CCAA22D0](i, v20);
      }

      else
      {
        if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v24 = *(v20 + 8 * i + 32);
      }

      v25 = v24;
      if (__OFADD__(i, 1))
      {
        break;
      }

      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        if (![v26 mode])
        {
          sub_1CA949188();
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CA288770()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA2887BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v197 = a8;
  v198 = a6;
  v199 = a5;
  v168[1] = a3;
  v183 = a9;
  v176 = _s17ControlFlowBranchVMa(0);
  v173 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v195 = (v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448048, &qword_1CA991E00);
  MEMORY[0x1EEE9AC00](v14);
  v172 = (v168 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC448050, &qword_1CA991E08);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = (v168 - v21);
  v168[0] = a1 + 32;
  v169 = *(a1 + 16);
  v184 = a2;
  v23 = __OFADD__(a2, 1);
  v174 = a2 + 1;
  v24 = 0;
  v25 = v23;
  v177 = v25;
  v180 = a7;
  v186 = a4;
  v179 = v14;
  v182 = v168 - v21;
  v175 = v19;
  while (v24 != v169)
  {
    v26 = v168[0] + 40 * v24;
    v27 = *(v26 + 8);
    v188 = *v26;
    v28 = *(v26 + 16);
    v187 = *(v26 + 24);
    LODWORD(v194) = *(v26 + 32);
    v29 = sub_1CA9492B8();
    v170 = v168;
    v200 = v29;
    v30 = *(v29 - 8);
    MEMORY[0x1EEE9AC00](v29);
    v196 = v31;
    v32 = v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v185 = v27;
    v33 = v27;
    LOBYTE(v27) = v194;
    sub_1CA36DA2C(v188, v33, v28, v187, v194);
    v189 = v32;
    v171 = v24;
    sub_1CA9492A8();
    v192 = v30;
    if (v27)
    {
      v34 = 0;
      v191 = v28;
      v35 = *(v28 + 16);
      v190 = (v30 + 16);
      v178 = v30 + 32;
      v181 = (v30 + 8);
      while (1)
      {
        if (v34 == v35)
        {
          v36 = 1;
          v37 = v35;
        }

        else
        {
          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_92;
          }

          if (v34 >= *(v191 + 16))
          {
            goto LABEL_93;
          }

          v37 = (v34 + 1);
          v38 = v191 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v34;
          v39 = *(v14 + 48);
          v40 = v172;
          *v172 = v34;
          sub_1CA285A0C(v38, v40 + v39);
          sub_1CA2D9CD4(v40, v19, &qword_1EC448048, &qword_1CA991E00);
          v36 = 0;
        }

        __swift_storeEnumTagSinglePayload(v19, v36, 1, v14);
        sub_1CA2D9CD4(v19, v22, &qword_1EC448050, &qword_1CA991E08);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v14);
        if (EnumTagSinglePayload == 1)
        {
          v194 = v168;
          MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
          v115 = v168 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1CA9492A8();
          swift_beginAccess();
          sub_1CA25B410(*(a4 + 16));
          swift_beginAccess();
          v116 = v187;
          MEMORY[0x1CCAA1490]();
          sub_1CA69B4CC();
          sub_1CA94C6E8();
          swift_endAccess();
          v117 = v199;
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v201 = *(v117 + 16);
          sub_1CA322C54();
          *(v117 + 16) = v201;
          v118 = v183;
          swift_endAccess();
          v119 = v198;
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v201 = *(v119 + 16);
          v196 = v115;
          sub_1CA322B14();
          *(v119 + 16) = v201;
          a4 = v186;
          swift_endAccess();
          swift_beginAccess();
          sub_1CA69AEB8();
          v120 = *(*(a7 + 16) + 16);
          sub_1CA69B0CC(v120);
          v121 = *(a7 + 16);
          *(v121 + 16) = v120 + 1;
          *(v121 + 8 * v120 + 32) = v184;
          *(a7 + 16) = v121;
          v122 = v197;
          swift_beginAccess();
          sub_1CA69AEA0();
          v123 = *(*(v122 + 16) + 16);
          sub_1CA69B0B4(v123);
          v124 = *(v122 + 16);
          *(v124 + 16) = v123 + 1;
          v125 = v192;
          v126 = v115;
          v127 = v200;
          (*(v192 + 16))(v124 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v123, v126, v200);
          *(v122 + 16) = v124;
          swift_beginAccess();
          sub_1CA69AE88();
          v128 = *(*(v118 + 16) + 16);
          sub_1CA69B09C(v128);
          v129 = *(v118 + 16);
          *(v129 + 16) = v128 + 1;
          v130 = v129 + 48 * v128;
          v131 = v185;
          *(v130 + 32) = v188;
          *(v130 + 40) = v131;
          v132 = v187;
          *(v130 + 48) = v191;
          *(v130 + 56) = v132;
          *(v130 + 64) = 0;
          *(v130 + 72) = 2;
          *(v118 + 16) = v129;
          swift_endAccess();
          v133 = *(v125 + 8);
          v133(v196, v127);
          result = (v133)(v189, v127);
          goto LABEL_86;
        }

        v42 = *v22;
        v43 = v195;
        v44 = sub_1CA289DE0(v22 + *(v14 + 48), v195);
        MEMORY[0x1EEE9AC00](v44);
        v46 = v168 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1CA9492A8();
        v47 = *v43;
        swift_beginAccess();
        v48 = *(a4 + 16);
        v193 = v168;
        if (v48 >> 62)
        {
          v49 = sub_1CA94D328();
        }

        else
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v194 = v37;
        swift_beginAccess();
        v50 = v47;
        MEMORY[0x1CCAA1490]();
        if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CA94C698();
        }

        sub_1CA94C6E8();
        swift_endAccess();
        v51 = v199;
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v201 = *(v51 + 16);
        v52 = v201;
        *(v51 + 16) = 0x8000000000000000;
        v53 = sub_1CA320E94(v50);
        if (__OFADD__(v52[2], (v54 & 1) == 0))
        {
          break;
        }

        v55 = v53;
        v56 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443A0, &qword_1CA983430);
        if (sub_1CA94D588())
        {
          v57 = sub_1CA320E94(v50);
          v59 = v180;
          if ((v56 & 1) != (v58 & 1))
          {
            goto LABEL_100;
          }

          v55 = v57;
        }

        else
        {
          v59 = v180;
        }

        v60 = v201;
        if (v56)
        {
          *(v201[7] + 8 * v55) = v49;
        }

        else
        {
          v201[(v55 >> 6) + 8] |= 1 << v55;
          *(v60[6] + 8 * v55) = v50;
          *(v60[7] + 8 * v55) = v49;
          v61 = v60[2];
          v23 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v23)
          {
            goto LABEL_94;
          }

          v60[2] = v62;
        }

        *(v199 + 16) = v60;
        swift_endAccess();
        v63 = v198;
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v201 = *(v63 + 16);
        v64 = v201;
        *(v63 + 16) = 0x8000000000000000;
        sub_1CA3210F0();
        if (__OFADD__(v64[2], (v66 & 1) == 0))
        {
          goto LABEL_90;
        }

        v67 = v65;
        v68 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481B0, &qword_1CA983428);
        if (sub_1CA94D588())
        {
          sub_1CA3210F0();
          if ((v68 & 1) != (v70 & 1))
          {
            goto LABEL_100;
          }

          v67 = v69;
        }

        v71 = v201;
        if (v68)
        {
          *(v201[7] + 8 * v67) = v49;
        }

        else
        {
          v201[(v67 >> 6) + 8] |= 1 << v67;
          (*(v192 + 16))(v71[6] + *(v192 + 72) * v67, v46, v200);
          *(v71[7] + 8 * v67) = v49;
          v72 = v71[2];
          v23 = __OFADD__(v72, 1);
          v73 = v72 + 1;
          if (v23)
          {
            goto LABEL_95;
          }

          v71[2] = v73;
        }

        *(v198 + 16) = v71;

        swift_endAccess();
        swift_beginAccess();
        v74 = *(v59 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v59 + 16) = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CA2E5AFC(0, *(v74 + 16) + 1, 1, v74);
          v74 = isUniquelyReferenced_nonNull_native;
          *(v59 + 16) = isUniquelyReferenced_nonNull_native;
        }

        v77 = *(v74 + 16);
        v76 = *(v74 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_1CA2E5AFC(v76 > 1, v77 + 1, 1, v74);
          v74 = isUniquelyReferenced_nonNull_native;
        }

        *(v74 + 16) = v77 + 1;
        *(v74 + 8 * v77 + 32) = v184;
        *(v59 + 16) = v74;
        MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
        v79 = v168 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*v190)(v79, v46, v200);
        v80 = v197;
        swift_beginAccess();
        v81 = *(v80 + 16);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        *(v80 + 16) = v81;
        if ((v82 & 1) == 0)
        {
          sub_1CA2E6CA8();
          v81 = v99;
          *(v197 + 16) = v99;
        }

        v83 = *(v81 + 16);
        if (v83 >= *(v81 + 24) >> 1)
        {
          sub_1CA2E6CA8();
          v81 = v100;
        }

        v84 = v35;
        *(v81 + 16) = v83 + 1;
        (*(v192 + 32))(v81 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v83, v79, v200);
        *(v197 + 16) = v81;
        v85 = v183;
        swift_beginAccess();
        v86 = *(v85 + 16);
        v87 = swift_isUniquelyReferenced_nonNull_native();
        *(v85 + 16) = v86;
        v88 = v59;
        if ((v87 & 1) == 0)
        {
          sub_1CA2E6C78(0, *(v86 + 16) + 1, 1, v86);
          v86 = v101;
          *(v85 + 16) = v101;
        }

        a4 = v186;
        v90 = *(v86 + 16);
        v89 = *(v86 + 24);
        v91 = v191;
        if (v90 >= v89 >> 1)
        {
          sub_1CA2E6C78(v89 > 1, v90 + 1, 1, v86);
          v91 = v191;
          v86 = v102;
        }

        *(v86 + 16) = v90 + 1;
        v92 = v86 + 48 * v90;
        v93 = v185;
        *(v92 + 32) = v188;
        *(v92 + 40) = v93;
        v94 = v187;
        *(v92 + 48) = v91;
        *(v92 + 56) = v94;
        *(v92 + 64) = v42;
        *(v92 + 72) = 1;
        *(v85 + 16) = v86;
        swift_endAccess();
        if (v177)
        {
          goto LABEL_91;
        }

        v95 = v94;
        v96 = v195;
        v97 = *(v195 + *(v176 + 28));
        sub_1CA94C218();
        sub_1CA94C218();
        v98 = v95;
        a7 = v88;
        sub_1CA2887BC(v97, v174, v46, a4, v199, v198, v88, v197, v85);
        (*v181)(v46, v200);
        sub_1CA285DC8(v96, _s17ControlFlowBranchVMa);
        v14 = v179;
        v19 = v175;
        v22 = v182;
        v35 = v84;
        v34 = v194;
      }

      __break(1u);
LABEL_90:
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
      result = sub_1CA94D878();
      __break(1u);
      return result;
    }

    swift_beginAccess();
    v103 = *(a4 + 16);
    if (v103 >> 62)
    {
      v104 = sub_1CA94D328();
    }

    else
    {
      v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    v105 = v188;
    MEMORY[0x1CCAA1490]();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CA94C698();
    }

    sub_1CA94C6E8();
    swift_endAccess();
    v106 = v199;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v201 = *(v106 + 16);
    v107 = v201;
    *(v106 + 16) = 0x8000000000000000;
    v108 = sub_1CA320E94(v105);
    if (__OFADD__(v107[2], (v109 & 1) == 0))
    {
      goto LABEL_96;
    }

    v110 = v108;
    v111 = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443A0, &qword_1CA983430);
    if (sub_1CA94D588())
    {
      v112 = sub_1CA320E94(v105);
      a7 = v180;
      if ((v111 & 1) != (v113 & 1))
      {
        goto LABEL_100;
      }

      v110 = v112;
    }

    else
    {
      a7 = v180;
    }

    v134 = v201;
    if (v111)
    {
      *(v201[7] + 8 * v110) = v104;
    }

    else
    {
      v201[(v110 >> 6) + 8] |= 1 << v110;
      *(v134[6] + 8 * v110) = v105;
      *(v134[7] + 8 * v110) = v104;
      v135 = v134[2];
      v23 = __OFADD__(v135, 1);
      v136 = v135 + 1;
      if (v23)
      {
        goto LABEL_98;
      }

      v134[2] = v136;
    }

    *(v199 + 16) = v134;
    swift_endAccess();
    v137 = v198;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v201 = *(v137 + 16);
    v138 = v201;
    *(v137 + 16) = 0x8000000000000000;
    sub_1CA3210F0();
    if (__OFADD__(v138[2], (v140 & 1) == 0))
    {
      goto LABEL_97;
    }

    v141 = v139;
    v142 = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481B0, &qword_1CA983428);
    if (sub_1CA94D588())
    {
      sub_1CA3210F0();
      v14 = v179;
      if ((v142 & 1) != (v144 & 1))
      {
        goto LABEL_100;
      }

      v141 = v143;
    }

    else
    {
      v14 = v179;
    }

    v145 = v201;
    if (v142)
    {
      *(v201[7] + 8 * v141) = v104;
    }

    else
    {
      v201[(v141 >> 6) + 8] |= 1 << v141;
      (*(v192 + 16))(v145[6] + *(v192 + 72) * v141, v189, v200);
      *(v145[7] + 8 * v141) = v104;
      v146 = v145[2];
      v23 = __OFADD__(v146, 1);
      v147 = v146 + 1;
      if (v23)
      {
        goto LABEL_99;
      }

      v145[2] = v147;
    }

    *(v198 + 16) = v145;

    swift_endAccess();
    swift_beginAccess();
    v148 = *(a7 + 16);
    v149 = swift_isUniquelyReferenced_nonNull_native();
    *(a7 + 16) = v148;
    if ((v149 & 1) == 0)
    {
      sub_1CA2E5AFC(0, *(v148 + 16) + 1, 1, v148);
      v148 = v149;
      *(a7 + 16) = v149;
    }

    v151 = *(v148 + 16);
    v150 = *(v148 + 24);
    if (v151 >= v150 >> 1)
    {
      sub_1CA2E5AFC(v150 > 1, v151 + 1, 1, v148);
      v148 = v149;
    }

    *(v148 + 16) = v151 + 1;
    *(v148 + 8 * v151 + 32) = v184;
    *(a7 + 16) = v148;
    MEMORY[0x1EEE9AC00](v149);
    v153 = v168 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v192 + 16))(v153, v189, v200);
    v154 = v197;
    swift_beginAccess();
    v155 = *(v154 + 16);
    v156 = swift_isUniquelyReferenced_nonNull_native();
    *(v154 + 16) = v155;
    if ((v156 & 1) == 0)
    {
      sub_1CA2E6CA8();
      v155 = v164;
      *(v197 + 16) = v164;
    }

    v157 = *(v155 + 16);
    if (v157 >= *(v155 + 24) >> 1)
    {
      sub_1CA2E6CA8();
      v155 = v165;
    }

    *(v155 + 16) = v157 + 1;
    (*(v192 + 32))(v155 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v157, v153, v200);
    *(v197 + 16) = v155;
    v158 = v183;
    swift_beginAccess();
    v159 = *(v158 + 16);
    v160 = swift_isUniquelyReferenced_nonNull_native();
    *(v158 + 16) = v159;
    if ((v160 & 1) == 0)
    {
      sub_1CA2E6C78(0, *(v159 + 16) + 1, 1, v159);
      v159 = v166;
      *(v158 + 16) = v166;
    }

    a4 = v186;
    v162 = *(v159 + 16);
    v161 = *(v159 + 24);
    if (v162 >= v161 >> 1)
    {
      sub_1CA2E6C78(v161 > 1, v162 + 1, 1, v159);
      v159 = v167;
    }

    *(v159 + 16) = v162 + 1;
    v163 = v159 + 48 * v162;
    *(v163 + 32) = v188;
    *(v163 + 40) = 0u;
    *(v163 + 56) = 0u;
    *(v163 + 72) = 0;
    *(v158 + 16) = v159;
    swift_endAccess();
    result = (*(v192 + 8))(v189, v200);
LABEL_86:
    v24 = v171 + 1;
    v22 = v182;
  }

  return result;
}

uint64_t sub_1CA289D4C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1CA289DE0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_40();
  v4(v3);
  OUTLINED_FUNCTION_52();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

void sub_1CA289E38(uint64_t a1)
{
  sub_1CA25B410(a1);
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  sub_1CA28D4F8();
  v2 = OUTLINED_FUNCTION_52_0();
  v6[1] = MEMORY[0x1CCAA1770](v2);
  v3 = sub_1CA25B410(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1CA369C38(v6, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_102_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t result)
{
  *v2 = v1;
  *(v2 + *(v3 + 28)) = result;
  *(v2 + *(v3 + 32)) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return swift_slowAlloc();
}

void *sub_1CA28A250(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = a1;
  return v1;
}

id WFSyncedDefinitionDirectoryURL()
{
  v0 = [MEMORY[0x1E695DFF8] wf_realLibraryDirectoryURL];
  v1 = [v0 URLByAppendingPathComponent:@"SyncedIntentDefinitions"];

  return v1;
}

id WFBundledDefinitionDirectoryURL(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 bundleURL];

  v4 = [v3 URLByAppendingPathComponent:@"BundledIntentDefinitions"];

  return v4;
}

id WFCoreDataClassForObjectType(unint64_t a1, uint64_t a2)
{
  if (a1 > 0xB)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

void WFBackgroundShortcutRunnerMakeResult(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([v9 outputBehavior] == 1)
  {
    v14 = [objc_alloc(MEMORY[0x1E69E0E28]) initWithError:v12];
LABEL_27:
    v24 = v14;
    v13[2](v13, v14);
LABEL_28:

    goto LABEL_29;
  }

  v15 = v9;
  if (!v15)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v23 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
      v62 = v10;
      v25 = v12;
      v26 = v13;
      v64 = v25;
      if (v26)
      {
        if (v25)
        {
LABEL_12:
          v60 = v26;
          v27 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v28 = [v25 localizedFailureReason];
          v29 = [v28 length];

          if (v29)
          {
            v30 = [v25 localizedFailureReason];
            [v27 appendString:v30];
          }

          v31 = [v25 localizedDescription];
          v32 = [v31 length];

          if (v32)
          {
            if ([v27 length])
            {
              [v27 appendString:@"; "];
            }

            v33 = [v25 localizedDescription];
            [v27 appendString:v33];
          }

          v34 = [v25 localizedRecoverySuggestion];
          v35 = [v34 length];

          if (v35)
          {
            if ([v27 length])
            {
              [v27 appendString:@"; "];
            }

            v36 = [v25 localizedRecoverySuggestion];
            [v27 appendString:v36];
          }

          if ([v27 wf_isEmpty])
          {
            v37 = [v25 description];
            [v27 appendString:v37];
          }

          v38 = [v25 userInfo];
          v39 = [v38 objectForKeyedSubscript:@"WFHarnessTestErrorResult"];
          v40 = v39;
          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = [WFHarnessTestResult failureWithReason:v27];
          }

          v49 = v41;

          v26 = v60;
          v50 = v62;
          goto LABEL_43;
        }
      }

      else
      {
        v54 = [MEMORY[0x1E696AAA8] currentHandler];
        v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFBackgroundShortcutRunnerMakeHarnessTestResult(WFHarnessTestRunRequest * _Nonnull __strong, WFContentCollection * _Nullable __strong, NSError * _Nullable __strong, WFBackgroundShortcutRunnerResultBlock  _Nonnull __strong)"}];
        [v54 handleFailureInFunction:v55 file:@"WFBackgroundShortcutRunnerResult.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

        if (v25)
        {
          goto LABEL_12;
        }
      }

      v50 = v62;
      v49 = [WFHarnessTestResult successWithOutput:v62];
LABEL_43:
      v56 = [[WFHarnessTestRunResult alloc] initWithTestResult:v49];
      v26[2](v26, v56);

      goto LABEL_28;
    }

LABEL_26:

    v14 = [objc_alloc(MEMORY[0x1E69E0E10]) initWithOutput:v10 runError:v12];
    goto LABEL_27;
  }

  v16 = v15;
  v61 = v10;
  v17 = v11;
  v58 = v12;
  v18 = v13;
  if (!v18)
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void WFBackgroundShortcutRunnerMakeContextualActionsResult(WFContextualActionRunRequest * _Nonnull __strong, WFContentCollection * _Nullable __strong, NSDictionary<WFAction *, NSData *> * _Nullable __strong, NSError * _Nullable __strong, WFBackgroundShortcutRunnerResultBlock  _Nonnull __strong)"}];
    v53 = v52 = v17;
    [v51 handleFailureInFunction:v53 file:@"WFBackgroundShortcutRunnerResult.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    v17 = v52;
  }

  v19 = [v16 action];
  v20 = [v17 allValues];
  v63 = v16;
  v59 = v17;
  if ([v20 count] == 1)
  {
    v21 = [v17 allValues];
    v22 = [v21 firstObject];
  }

  else
  {
    v22 = 0;
  }

  v57 = v11;

  v42 = [v19 outputsFiles];
  if (v61 && (v42 & 1) != 0)
  {
    v43 = [v19 resultFileOperation];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke;
    v65[3] = &unk_1E8378AB0;
    v70 = v43 == 0;
    v66 = v61;
    v68 = v18;
    v69 = v43;
    v67 = v22;
    v44 = v63;
    [v63 getInputWithCompletionHandler:v65];

    v45 = v58;
  }

  else
  {
    v46 = objc_alloc(MEMORY[0x1E69E0DD8]);
    v45 = v58;
    if (v58)
    {
      v47 = 0;
    }

    else
    {
      v47 = v22;
    }

    v48 = [v46 initWithOutput:v61 files:0 runError:v58 reversalState:v47];
    v18[2](v18, v48);

    v44 = v63;
  }

  v11 = v57;
LABEL_29:
}

unint64_t sub_1CA28C1D4(void *a1)
{
  v2 = [a1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C658();

  v4 = sub_1CA25B410(v3);

  if (!v4)
  {
    v8 = 0xD000000000000017;

    return v8;
  }

  v5 = [a1 actions];
  v6 = sub_1CA94C658();

  v7 = sub_1CA25B410(v6);

  if (v7 >= 2)
  {

    return 0xD00000000000001FLL;
  }

  v9 = [a1 actions];
  v10 = sub_1CA94C658();

  if (sub_1CA25B410(v10))
  {
    sub_1CA275D70(0, (v10 & 0xC000000000000001) == 0, v10);
    if ((v10 & 0xC000000000000001) != 0)
    {
LABEL_36:
      v11 = MEMORY[0x1CCAA22D0](0, v10);
    }

    else
    {
      v11 = *(v10 + 32);
    }

    v12 = v11;

    if (([v12 mightSuppressRunningProgress] & 1) == 0)
    {

      return 0xD000000000000057;
    }

    v13 = [v12 parameters];
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    v14 = sub_1CA94C658();

    v33 = sub_1CA25B410(v14);
    if (!v33)
    {
      goto LABEL_30;
    }

    v15 = 0;
    v16 = v14 & 0xC000000000000001;
    v31 = v14 + 32;
    v32 = v14 & 0xC000000000000001;
    v17 = &selRef_isInputParameter;
    v18 = &selRef_metaDataDeviceQueryOperation;
    v34 = v14;
    v35 = v12;
    while (2)
    {
      sub_1CA275D70(v15, v16 == 0, v14);
      if (v16)
      {
        v19 = MEMORY[0x1CCAA22D0](v15, v14);
      }

      else
      {
        v19 = *(v31 + 8 * v15);
      }

      v20 = v19;
      if (!__OFADD__(v15++, 1))
      {
        v22 = [v19 v17[126]];
        if (!v22)
        {
          sub_1CA94C3A8();
          v22 = sub_1CA94C368();
        }

        v23 = [v12 v18[356]];

        v36 = v20;
        if (v23)
        {
          v24 = [v23 containedVariables];
          sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
          v25 = sub_1CA94C658();
        }

        else
        {
          v25 = MEMORY[0x1E69E7CC0];
        }

        v26 = sub_1CA25B410(v25);
        v27 = 0;
        v10 = v25 & 0xC000000000000001;
        while (v26 != v27)
        {
          if (v10)
          {
            v28 = MEMORY[0x1CCAA22D0](v27, v25);
          }

          else
          {
            if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v28 = *(v25 + 8 * v27 + 32);
          }

          v29 = v28;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            swift_unknownObjectRelease();

            return 0xD000000000000053;
          }

          ++v27;
        }

        swift_unknownObjectRelease();

        v14 = v34;
        v12 = v35;
        v16 = v32;
        v17 = &selRef_isInputParameter;
        v18 = &selRef_metaDataDeviceQueryOperation;
        if (v15 != v33)
        {
          continue;
        }

LABEL_30:

        return 0;
      }

      break;
    }

    __break(1u);
  }

  result = sub_1CA94D5F8();
  __break(1u);
  return result;
}

void sub_1CA28C7C4(char a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_waitingCancellable) = 0;

  v5 = objc_allocWithZone(type metadata accessor for RunningProgressSuppressionStateMachine.State());
  v6 = sub_1CA282CB0(3);
  v7 = sub_1CA94C368();
  v8 = OUTLINED_FUNCTION_50_6();
  v10 = [v8 v9];

  if (v10)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = *(v3 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_initialDialogAttribution);
      [v12 runningProgressSuppressionStateMachine:v3 didDecideRunningProgressIsAllowed:a1 & 1 dialogAttribution:v13];

      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1CA28C8D4(void *a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_initialDialogAttribution);
  *(v3 + OBJC_IVAR___WFRunningProgressSuppressionStateMachine_initialDialogAttribution) = a2;
  v6 = a2;

  v7 = objc_allocWithZone(type metadata accessor for RunningProgressSuppressionStateMachine.State());
  v8 = sub_1CA282CB0(1);
  v9 = sub_1CA94C368();
  v10 = OUTLINED_FUNCTION_50_6();
  [v10 v11];

  result = sub_1CA28C1D4(a1);
  if (v13)
  {
    sub_1CA28C7C4(1, result);
  }

  return result;
}

uint64_t sub_1CA28CAAC(uint64_t a1)
{
  type metadata accessor for RunningProgressSuppressionStateMachine.State();
  result = swift_dynamicCastClass();
  if (result)
  {
    return *(v1 + OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_stage) < *(result + OBJC_IVAR____TtCC11WorkflowKit38RunningProgressSuppressionStateMachineP33_D75DF74A866BF93BDD94A2803CD087FC5State_stage);
  }

  return result;
}

void sub_1CA28CBA8()
{
  OUTLINED_FUNCTION_37_0();
  v2 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C658();

  sub_1CA25B410(v3);

  sub_1CA2E52A8();
  v12 = v4;
  sub_1CA9491F8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1CA94C218();
  sub_1CA9491E8();
  sub_1CA367AE4();

  v9 = *(v6 + 8);
  v10 = OUTLINED_FUNCTION_68_3();
  v9(v10);
  v11 = OUTLINED_FUNCTION_69();
  v9(v11);
  *(v0 + 56) = v12;

  OUTLINED_FUNCTION_36();
}

void sub_1CA28CD88(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void *sub_1CA28CE98()
{
  v1 = [objc_opt_self() hashTableWithOptions_];
  v2 = MEMORY[0x1E69E7CD0];
  v0[2] = v1;
  v0[3] = v2;
  sub_1CA9491F8();
  v3 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_20_0();
  v0[5] = sub_1CA94C1E8();
  v0[7] = v3;
  OUTLINED_FUNCTION_20_0();
  v4 = sub_1CA94C1E8();
  v0[6] = v3;
  v0[8] = v4;
  v0[9] = v3;
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444890, &qword_1CA984348);
  v0[4] = sub_1CA94C1E8();
  return v0;
}

__n128 *OUTLINED_FUNCTION_130_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_130_4()
{

  return sub_1CA94D328();
}

void sub_1CA28CFEC(void *a1)
{
  OUTLINED_FUNCTION_28(v1 + 32, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444850, qword_1CA984318);
  sub_1CA94C228();
  swift_endAccess();
  OUTLINED_FUNCTION_59_3();
  sub_1CA3667DC();
  v37 = v1;
  sub_1CA28CBA8();
  v3 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CD0];
  v4 = [a1 actions];
  v5 = sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v6 = OUTLINED_FUNCTION_53_3(v5);

  v40 = sub_1CA25B410(v6);
  if (v40)
  {
    v7 = 0;
    v41 = v6 & 0xC000000000000001;
    v38 = v6 + 32;
    v39 = v6 & 0xFFFFFFFFFFFFFF8;
    v8 = &selRef_metaDataDeviceQueryOperation;
    while (1)
    {
      if (v41)
      {
        v9 = OUTLINED_FUNCTION_134();
        v10 = MEMORY[0x1CCAA22D0](v9);
      }

      else
      {
        if (v7 >= *(v39 + 16))
        {
          goto LABEL_53;
        }

        v10 = *(v38 + 8 * v7);
      }

      v11 = v10;
      v12 = __OFADD__(v7, 1);
      v13 = v7 + 1;
      if (v12)
      {
        break;
      }

      v14 = [v10 parameters];
      v15 = sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
      v16 = OUTLINED_FUNCTION_53_3(v15);

      if (v16 >> 62)
      {
        v17 = sub_1CA94D328();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v13;
      if (v17)
      {
        v18 = 0;
        v47 = v11;
        v48 = v16 & 0xC000000000000001;
        v43 = v16 + 32;
        v44 = v16 & 0xFFFFFFFFFFFFFF8;
        v45 = v17;
        v46 = v16;
        while (1)
        {
          if (v48)
          {
            v19 = MEMORY[0x1CCAA22D0](v18, v16);
          }

          else
          {
            if (v18 >= *(v44 + 16))
            {
              goto LABEL_51;
            }

            v19 = *(v43 + 8 * v18);
          }

          v20 = v19;
          v12 = __OFADD__(v18++, 1);
          if (v12)
          {
            break;
          }

          v21 = [v19 key];
          if (!v21)
          {
            sub_1CA94C3A8();
            v21 = sub_1CA94C368();
          }

          v22 = [v11 v8[357]];

          if (v22)
          {
            v50 = v20;
            v23 = [v22 containedVariables];
            sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
            OUTLINED_FUNCTION_5_3();
            v24 = sub_1CA94C658();

            if (v24 >> 62)
            {
              v25 = sub_1CA94D328();
              if (v25)
              {
LABEL_22:
                v26 = 0;
                v27 = 0;
LABEL_23:
                v49 = v26;
                while (1)
                {
                  if ((v24 & 0xC000000000000001) != 0)
                  {
                    v28 = MEMORY[0x1CCAA22D0](v27, v24);
                  }

                  else
                  {
                    if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_49;
                    }

                    v28 = *(v24 + 8 * v27 + 32);
                  }

                  v29 = v27 + 1;
                  if (__OFADD__(v27, 1))
                  {
                    break;
                  }

                  v30 = v28;
                  MEMORY[0x1CCAA1490]();
                  v31 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18);
                  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
                  {
                    OUTLINED_FUNCTION_64(v31);
                    sub_1CA94C698();
                  }

                  OUTLINED_FUNCTION_194_0();
                  sub_1CA94C6E8();
                  v3 = v52;
                  objc_opt_self();
                  v32 = swift_dynamicCastObjCClass();

                  if (v32)
                  {
                    v26 = 1;
                    ++v27;
                    if (v29 != v25)
                    {
                      goto LABEL_23;
                    }

                    swift_unknownObjectRelease();

LABEL_38:
                    v33 = [v50 key];
                    v34 = sub_1CA94C3A8();
                    v36 = v35;

                    v11 = v47;
                    sub_1CA3692B0(v53, v47, v34, v36);

                    v8 = &selRef_metaDataDeviceQueryOperation;
LABEL_40:
                    v17 = v45;
                    v16 = v46;
                    goto LABEL_43;
                  }

                  ++v27;
                  if (v29 == v25)
                  {
                    swift_unknownObjectRelease();

                    if (v49)
                    {
                      goto LABEL_38;
                    }

                    v8 = &selRef_metaDataDeviceQueryOperation;
                    v11 = v47;
                    goto LABEL_40;
                  }
                }

                __break(1u);
LABEL_49:
                __break(1u);
                break;
              }
            }

            else
            {
              v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v25)
              {
                goto LABEL_22;
              }
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

LABEL_43:
          if (v18 == v17)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
        break;
      }

LABEL_44:

      v7 = v42;
      if (v42 == v40)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
LABEL_47:

    *(v37 + 72) = v3;

    swift_beginAccess();
    *(v37 + 80) = v51;
  }
}

unint64_t sub_1CA28D4F8()
{
  result = qword_1EC441700;
  if (!qword_1EC441700)
  {
    sub_1CA25B3D0(255, &qword_1EDB9F5D0, off_1E836DCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441700);
  }

  return result;
}

uint64_t WFWorkflowActionTree.notifyVariablesOfChanges.setter(char a1)
{
  v3 = OBJC_IVAR___WFWorkflowActionTree_notifyVariablesOfChanges;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t WFWorkflowTypesContainsInputType(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL WFWorkflowTypesContainsInputType(NSArray<WFWorkflowTypeName> * _Nonnull __strong)"];
    [v6 handleFailureInFunction:v7 file:@"WFWorkflow.m" lineNumber:1470 description:{@"Invalid parameter not satisfying: %@", @"workflowTypes"}];
  }

  v2 = [MEMORY[0x1E695DFD8] setWithArray:v1];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E1440], *MEMORY[0x1E69E1458], *MEMORY[0x1E69E1450], *MEMORY[0x1E69E1448], 0}];
  v4 = [v2 intersectsSet:v3];

  return v4;
}

BOOL WFWorkflowActionTree.isShortcutInputVariableUsed.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFWorkflowActionTree_variableAvailability);
  OUTLINED_FUNCTION_27_2(v1 + 80, v3);
  return *(*(v1 + 80) + 16) != 0;
}

void sub_1CA28E970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WFProgressUnitsBetweenActions(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [v5 indexOfObject:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = v7 ? [v5 indexOfObject:v7] + 1 : objc_msgSend(v5, "count");
    if (v8 >= v10)
    {
      break;
    }

    v11 = [v5 objectAtIndex:v8];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (![v11 mode] && v11 != v6)
    {
      v12 = [v11 groupedCloseAction];
      v13 = [v5 indexOfObject:v12];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v13;
      }

LABEL_15:
      ++v9;
    }

    ++v8;
  }

  return v9;
}

void sub_1CA28F670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRBSAssertionClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary_27608();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSAssertion");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAssertionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowController.m" lineNumber:42 description:{@"Unable to find class %s", "RBSAssertion"}];

    __break(1u);
  }
}

void __getRBSTargetClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary_27608();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSTarget");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTargetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTargetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowController.m" lineNumber:44 description:{@"Unable to find class %s", "RBSTarget"}];

    __break(1u);
  }
}

void __getRBSDomainAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary_27608();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSDomainAttribute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSDomainAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSDomainAttributeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFWorkflowController.m" lineNumber:43 description:{@"Unable to find class %s", "RBSDomainAttribute"}];

    __break(1u);
  }
}

uint64_t sub_1CA29054C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1CA2905E4(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1CA290608(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1CA290698@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1CA29B66C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1CA29072C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_1CA2905D4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1CA290754(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_1CA2905DC(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1CA2907DC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_1CA290630(v2, v3);
  *v1 = result;
  return result;
}

void *sub_1CA2908B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CA2908CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA29054C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA2909DC()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA290A2C()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA290A74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

BOOL sub_1CA290AE4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1CA290BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_40();
  v6 = sub_1CA94ADC8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_1CA94B168();
    v8 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1CA290C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_40();
  v8 = sub_1CA94ADC8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_1CA94B168();
    v10 = v4 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1CA290D1C()
{
  type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  OUTLINED_FUNCTION_38_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = *(v0 + 28);
  sub_1CA94B168();
  OUTLINED_FUNCTION_52();
  (*(v8 + 8))(v1 + v4 + v7);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1CA290E18()
{
  type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  OUTLINED_FUNCTION_38_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  sub_1CA94ADC8();
  OUTLINED_FUNCTION_52();
  (*(v7 + 8))(v1 + v4);
  v8 = *(v0 + 28);
  sub_1CA94B168();
  OUTLINED_FUNCTION_52();
  (*(v9 + 8))(v1 + v4 + v8);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v6, v3 | 7);
}

uint64_t sub_1CA290F3C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA2910CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA2DA11C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA2910FC()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

double sub_1CA291180@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1CA2C9578(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1CA2911F0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1CA94AD08();
  OUTLINED_FUNCTION_27_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1CA94B728();
  OUTLINED_FUNCTION_27_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
    v12 = a3[8];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[6] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1CA29130C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1CA94AD08();
  OUTLINED_FUNCTION_27_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1CA94B728();
    OUTLINED_FUNCTION_27_1();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 24) = (a2 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1CA291488()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA2914F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA291530()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA291568()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_4_12();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1CA291624()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_4_12();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1CA2916D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA291718()
{

  OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA2917B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA29189C()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA2918F4()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA291944()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA291994()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA2919DC()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA291ACC@<X0>(uint64_t *a1@<X8>)
{
  result = PropertyUpdateOperator.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA291BC4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA291C00(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA291E68@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryModel.FolderCollection.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA291EF8@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryModel.FolderCollection.glyphCharacter.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA291FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
  OUTLINED_FUNCTION_27_1();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_26_0(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_1CA29209C()
{
  OUTLINED_FUNCTION_23_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443C30, &qword_1CA9820D0);
  OUTLINED_FUNCTION_27_1();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1CA2921C8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_27_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_1CA94B668();
  OUTLINED_FUNCTION_27_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_7:
    v9 = a1 + v12;
    goto LABEL_8;
  }

  sub_1CA94B728();
  OUTLINED_FUNCTION_27_1();
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v12 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

void sub_1CA292300(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_27_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1CA94B668();
    OUTLINED_FUNCTION_27_1();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      sub_1CA94B728();
      OUTLINED_FUNCTION_27_1();
      if (*(v16 + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return;
      }

      v10 = v15;
      v14 = a4[6];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1CA292428()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA292478()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA29254C()
{

  OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA292588()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA2925D0()
{

  OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA29260C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 9)
  {
    return EnumTagSinglePayload - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA292660(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C28, &qword_1CA985A88);
  v5 = OUTLINED_FUNCTION_121_1();

  return __swift_storeEnumTagSinglePayload(v5, v4, a3, v6);
}

uint64_t sub_1CA2926C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = OUTLINED_FUNCTION_9_15(*(a1 + a2 - 16));
  result = v5(v4);
  *a3 = result;
  return result;
}

__n128 sub_1CA292710(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1CA29271C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = OUTLINED_FUNCTION_9_15(*(a1 + a2 - 24));
  result = v5(v4);
  *a3 = result;
  return result;
}

__n128 sub_1CA29276C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1CA292778()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1CA2927D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA292814()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1CA29284C()
{
  OUTLINED_FUNCTION_11_15();
  result = (*(v1 + 32))(v2);
  *v0 = result;
  return result;
}

__n128 sub_1CA29288C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1CA292898()
{
  OUTLINED_FUNCTION_11_15();
  result = (*(v1 + 56))(v2);
  *v0 = result;
  return result;
}

uint64_t sub_1CA2929B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40();
  v4 = sub_1CA948D28();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1CA2929F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40();
  v4 = sub_1CA948D28();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1CA292A60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA292A98@<X0>(_BYTE *a1@<X8>)
{
  result = DrawerAction.isFavorite.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CA292AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_27_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_27_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1CA292BEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_27_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
    OUTLINED_FUNCTION_27_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1CA292E8C()
{

  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA292EC8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CA41A3B4(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1CA292EF8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CA41A658(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CA292F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA41A6F8();
  *a1 = result;
  return result;
}

uint64_t sub_1CA292F58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA41B950();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CA292FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_30();
  type metadata accessor for DrawerAction(v6);
  OUTLINED_FUNCTION_27_1();
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_26_0(*(v3 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

void sub_1CA293048(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_40();
  type metadata accessor for DrawerAction(v8);
  OUTLINED_FUNCTION_27_1();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_124_3();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_1CA2930E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_30();
  type metadata accessor for DrawerAction(v6);
  OUTLINED_FUNCTION_27_1();
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_26_0(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

void sub_1CA293178(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_40();
  type metadata accessor for DrawerAction(v8);
  OUTLINED_FUNCTION_27_1();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_124_3();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1CA29321C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA293254(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA293264()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  type metadata accessor for DrawerSearchIndexItem(0);
  OUTLINED_FUNCTION_186_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CA94B1C8();
    OUTLINED_FUNCTION_52();
    (*(v4 + 8))(v0 + v2);
    goto LABEL_13;
  }

  type metadata accessor for DrawerAction.DrawerActionStorage(0);
  OUTLINED_FUNCTION_186_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    sub_1CA94A4E8();
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (!EnumCaseMultiPayload)
      {
      }

      goto LABEL_10;
    }

    sub_1CA94A288();
  }

  OUTLINED_FUNCTION_52();
  (*(v6 + 8))(v0 + v2);
LABEL_10:
  v7 = type metadata accessor for DrawerAction(0);
  swift_unknownObjectRelease();
  v8 = *(v7 + 24);
  v9 = sub_1CA94B1C8();
  if (!__swift_getEnumTagSinglePayload(v3 + v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445408, &unk_1CA986FF0);

LABEL_13:

  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1CA293478()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA2934BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_1CA293544(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_34(a3, result);
  }

  return result;
}

uint64_t sub_1CA293568()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA2935B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA43D784();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CA293630()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_64_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA293674()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1CA293710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1CA94B168();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CA293798(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1CA94B168();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA293818()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA293858()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_ypSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA293A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ContentGraphRepresentationContext.ToolKitContext(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CA293B00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContentGraphRepresentationContext.ToolKitContext(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA293B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1CA293BD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1CA293C54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445C20, &qword_1CA989168);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA293CE8()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA293D30()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA293D68()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA293DA0()
{
  MEMORY[0x1CCAA4CD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA293E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA293E20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CA293EB8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA293F04(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA293FAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA293FE4()
{
  MEMORY[0x1CCAA4CD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA294020()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA294060()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_50_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA294098()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA2940D4()
{
  _Block_release(*(v0 + 32));

  v1 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA294154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s17ControlFlowBranchVMa(0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1CA2941DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s17ControlFlowBranchVMa(0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1CA294288@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA50E54C();
  *a1 = result;
  return result;
}

uint64_t sub_1CA2942B8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1CA50F99C(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CA294350(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CA294398()
{
  MEMORY[0x1CCAA4CD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA2943D0()
{

  v0 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA294474()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA2944AC()
{

  v0 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA2944E0()
{
  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA294518()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA294558()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA2945FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA9491F8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 40);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CA2946A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1CA9491F8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = -a2;
  }

  return result;
}

uint64_t sub_1CA294778()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA2947E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4463A0, &qword_1CA98B2A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA29495C()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA2949A4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA294A78()
{
  OUTLINED_FUNCTION_55();
  sub_1CA578E88();
  return (v0 == 2) | v0 & 1u;
}

uint64_t sub_1CA294AF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA294B3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA294B74()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA294BDC()
{

  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA294C50(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA294C8C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA294D10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA59E244();
  *a1 = result;
  return result;
}

uint64_t sub_1CA294DB8()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA294E08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA294E40()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA294E90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA5B8CB8();
  *a1 = result;
  return result;
}

uint64_t sub_1CA294F44(char a1)
{
  if (a1)
  {
    return 0x5472657461657267;
  }

  else
  {
    return 0x6E6168547373656CLL;
  }
}

uint64_t sub_1CA294F8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CA5C1C4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CA294FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA5C0AB4();
  *a1 = result;
  return result;
}

unint64_t sub_1CA294FFC(uint64_t a1)
{
  result = sub_1CA5C3104();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA295024(uint64_t a1)
{
  result = sub_1CA5C31D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA29504C(uint64_t a1)
{
  result = sub_1CA5C32A4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA295074(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA2950B0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA2950EC(uint64_t a1)
{
  result = sub_1CA5C3494();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA2951A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1CA295208@<X0>(uint64_t *a1@<X8>)
{
  result = RowTemplatePropertySetterParameterState.subject.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA295244()
{
  OUTLINED_FUNCTION_0_61();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE69830](v0);
}

uint64_t sub_1CA2952B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_61();
  swift_getWitnessTable();

  return sub_1CA94C998();
}

uint64_t sub_1CA295328()
{
  OUTLINED_FUNCTION_0_61();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE69840](v0);
}

__n128 sub_1CA2953A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1CA2953C8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA295410()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED8, &qword_1CA98E288);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA2954A4()
{

  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA2954E0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_123();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA29554C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_40();
  sub_1CA94B668();
  OUTLINED_FUNCTION_27_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
  }

  else
  {
    sub_1CA94B728();
    OUTLINED_FUNCTION_27_1();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_26_0(*(v3 + a3[7]));
    }

    v8 = v10;
    v9 = a3[6];
  }

  return __swift_getEnumTagSinglePayload(v3 + v9, a2, v8);
}

void sub_1CA295628(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_40();
  sub_1CA94B668();
  OUTLINED_FUNCTION_27_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_1CA94B728();
    OUTLINED_FUNCTION_27_1();
    if (*(v13 + 84) != a3)
    {
      *(v4 + a4[7]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  __swift_storeEnumTagSinglePayload(v4 + v11, a2, a2, v10);
}

uint64_t sub_1CA29570C(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_40();
  sub_1CA94B668();
  OUTLINED_FUNCTION_27_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_1CA94B728();
    OUTLINED_FUNCTION_27_1();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
      OUTLINED_FUNCTION_27_1();
      if (*(v14 + 84) == a2)
      {
        v8 = v13;
        v12 = a3[6];
      }

      else
      {
        if (a2 == 0x7FFFFFFF)
        {
          return OUTLINED_FUNCTION_26_0(*(v3 + a3[7] + 24));
        }

        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
        v12 = a3[9];
      }
    }

    v9 = v3 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1CA295864(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_40();
  sub_1CA94B668();
  OUTLINED_FUNCTION_27_1();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_121_1();
  }

  else
  {
    sub_1CA94B728();
    OUTLINED_FUNCTION_27_1();
    if (*(v12 + 84) == a3)
    {
      v10 = v11;
      v13 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
      OUTLINED_FUNCTION_27_1();
      if (*(v15 + 84) == a3)
      {
        v10 = v14;
        v13 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v4 + a4[7] + 24) = (a2 - 1);
          return;
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
        v13 = a4[9];
      }
    }

    v9 = v4 + v13;
  }

  __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
}

uint64_t sub_1CA2959D8()
{
  sub_1CA5EFFF4(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1CA295A2C()
{
  v1 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  sub_1CA94B668();
  OUTLINED_FUNCTION_52();
  (*(v6 + 8))(v0 + v3);
  v7 = v1[5];
  sub_1CA94B728();
  OUTLINED_FUNCTION_52();
  (*(v8 + 8))(v0 + v3 + v7);
  v9 = v1[6];
  v10 = sub_1CA94AD08();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v9, 1, v10))
  {
    OUTLINED_FUNCTION_39();
    (*(v11 + 8))(v5 + v9, v10);
  }

  __swift_destroy_boxed_opaque_existential_0((v5 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[8]));
  v12 = v1[9];
  v13 = sub_1CA948BA8();
  if (!__swift_getEnumTagSinglePayload(v5 + v12, 1, v13))
  {
    OUTLINED_FUNCTION_39();
    (*(v14 + 8))(v5 + v12, v13);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CA295C08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA295C40()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA295C88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  OUTLINED_FUNCTION_7_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CA295D10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  OUTLINED_FUNCTION_7_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1CA295ECC()
{

  OUTLINED_FUNCTION_70_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA295F10()
{

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1CA295F70()
{

  v0 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA295FA0()
{
  OUTLINED_FUNCTION_34_16();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA295FDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA296024()
{

  v1 = OUTLINED_FUNCTION_48_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA29607C()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1CA2960B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1CA2960F4()
{

  v1 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1CA29612C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1CA29617C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA2961B4()
{

  v0 = OUTLINED_FUNCTION_48_7();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA2961EC()
{

  v0 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA296268()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA2962A8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1CA296374()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D8, &qword_1CA990048);
  OUTLINED_FUNCTION_7_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1CA296418@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA630314();
  *a1 = result;
  return result;
}

uint64_t sub_1CA2964AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CA94B168();
  OUTLINED_FUNCTION_27_1();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_26_0(*(a1 + *(a3 + 20) + 24));
  }

  v7 = OUTLINED_FUNCTION_6_45();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void sub_1CA296548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1CA94B168();
  OUTLINED_FUNCTION_27_1();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }
}

uint64_t sub_1CA2965F0()
{
  OUTLINED_FUNCTION_4_53();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_26_0(*v0);
  }

  v5 = v2;
  v6 = v1;
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_27_1();
  if (*(v7 + 84) == v6)
  {
    v8 = *(v5 + 20);
  }

  else
  {
    sub_1CA94B728();
    v8 = *(v5 + 24);
  }

  v9 = OUTLINED_FUNCTION_5_48(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1CA2966A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_53();
  if (v4 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    sub_1CA94B1C8();
    OUTLINED_FUNCTION_27_1();
    if (*(v9 + 84) == v8)
    {
      v10 = *(v7 + 20);
    }

    else
    {
      sub_1CA94B728();
      v10 = *(v7 + 24);
    }

    v11 = OUTLINED_FUNCTION_5_48(v10);

    __swift_storeEnumTagSinglePayload(v11, v12, a2, v13);
  }
}

uint64_t sub_1CA296760()
{
  OUTLINED_FUNCTION_4_53();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_26_0(*v0);
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  v6 = OUTLINED_FUNCTION_5_48(*(v5 + 20));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1CA2967E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_53();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
    v8 = OUTLINED_FUNCTION_5_48(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

id sub_1CA296864@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tableTemplateCompoundType];
  *a2 = result;
  return result;
}

uint64_t sub_1CA2968AC()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CA2968F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A48, &unk_1CA990770);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA296988()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CA2969D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1CA296AC4@<X0>(uint64_t *a1@<X8>)
{
  result = RowTemplateFindFilterParameterState.subject.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA296B84()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1CA296BD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1CA296C10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA296C50()
{

  OUTLINED_FUNCTION_66_6();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA296C9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1CA296CD4()
{

  v0 = OUTLINED_FUNCTION_51_9();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1CA296D0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1CA296DD4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1CA296E40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA296E84(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA296EC0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1CA296F6C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 notifyVariablesOfChanges];
  *a2 = result;
  return result;
}

uint64_t sub_1CA296FBC()
{
  OUTLINED_FUNCTION_4_53();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_93_5();
  }

  v4 = v0;
  sub_1CA9491F8();
  v5 = OUTLINED_FUNCTION_5_48(*(v4 + 40));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1CA29702C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_53();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1CA9491F8();
    v8 = OUTLINED_FUNCTION_5_48(*(v7 + 40));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1CA2970A4()
{
  OUTLINED_FUNCTION_4_53();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_93_5();
  }

  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
  v5 = OUTLINED_FUNCTION_5_48(*(v4 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1CA297120(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_53();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
    v8 = OUTLINED_FUNCTION_5_48(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1CA2974B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1CA297550()
{
  v1 = OUTLINED_FUNCTION_1_6();
  result = sub_1CA2905AC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

Swift::Void __swiftcall WFVisualIntelligenceCameraAvailabilityResource.configure(withRunSource:)(__C::WFWorkflowRunSource withRunSource)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource_runSource);
  *(v1 + OBJC_IVAR____TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource_runSource) = withRunSource;
  v2 = withRunSource._rawValue;
}

Swift::Void __swiftcall WFVisualIntelligenceCameraAvailabilityResource.refreshAvailability()()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA94C3A8();
  v8 = v7;
  if (v6 == sub_1CA94C3A8() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1CA94D7F8();

    if ((v11 & 1) == 0)
    {
      if ([objc_opt_self() isVisualIntelligenceEnabled])
      {

        [v1 updateAvailability:1 withError:0];
      }

      else
      {
        v19 = sub_1CA94C3A8();
        v21 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1CA97EDF0;
        *(inited + 32) = sub_1CA94C3A8();
        *(inited + 40) = v23;
        sub_1CA94C438("Visual Intelligence Unavailable", 31);
        if (qword_1EDB9F5F0 != -1)
        {
          swift_once();
        }

        v24 = qword_1EDB9F690;
        v25 = sub_1CA94C368();
        v26 = sub_1CA94C368();

        v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

        v28 = sub_1CA94C3A8();
        v30 = v29;

        v31 = MEMORY[0x1E69E6158];
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v28;
        *(inited + 56) = v30;
        *(inited + 80) = sub_1CA94C3A8();
        *(inited + 88) = v32;
        sub_1CA94C438("Visual Intelligence is not currently available.", 47);
        v33 = sub_1CA94C368();
        v34 = sub_1CA94C368();

        v35 = [v24 localizedStringForKey:v33 value:v34 table:0];

        v36 = sub_1CA94C3A8();
        v38 = v37;

        *(inited + 120) = v31;
        *(inited + 96) = v36;
        *(inited + 104) = v38;
        v39 = sub_1CA94C1E8();
        v40 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v41 = sub_1CA298568(v19, v21, 1, v39);
        v42 = sub_1CA948AC8();

        [v1 updateAvailability:0 withError:v42];
      }

      return;
    }
  }

  sub_1CA949C58();
  v12 = sub_1CA949F68();
  v13 = sub_1CA94CC08();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v44 = v15;
    *v14 = 136315138;
    v16 = sub_1CA94DA18();
    v18 = sub_1CA26B54C(v16, v17, &v44);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1CA256000, v12, v13, "Skipping %s check because the action button triggered this action", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1CCAA4BF0](v15, -1, -1);
    MEMORY[0x1CCAA4BF0](v14, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  [v1 updateAvailability:1 withError:0];
}

id WFVisualIntelligenceCameraAvailabilityResource.__allocating_init(definition:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1CA94C1A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

id WFVisualIntelligenceCameraAvailabilityResource.init(definition:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E69E1428];
  *&v1[OBJC_IVAR____TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource_runSource] = *MEMORY[0x1E69E1428];
  v5 = v4;
  if (a1)
  {
    v6 = sub_1CA94C1A8();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithDefinition_, v6);

  if (v7)
  {
  }

  return v7;
}

id WFVisualIntelligenceCameraAvailabilityResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFVisualIntelligenceCameraAvailabilityResource.init()()
{
  ObjectType = swift_getObjectType();
  v2 = *MEMORY[0x1E69E1428];
  *&v0[OBJC_IVAR____TtC11WorkflowKit46WFVisualIntelligenceCameraAvailabilityResource_runSource] = *MEMORY[0x1E69E1428];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id WFVisualIntelligenceCameraAvailabilityResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA297E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t default argument 1 of WFContentItem.ToolKitTypeResolutionContext.init(measurementUnitTypeProvider:requiredCoercion:displayRepresentationConfig:localizationContext:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69DB488];
  v3 = sub_1CA94B668();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1CA297F0C(char a1)
{
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1CCAA2780](a1 & 1);
  return sub_1CA94D968();
}

uint64_t sub_1CA297F4C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1CCAA2780](a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA297F98(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_3_2();
  v2 = sub_1CA624210(v1);
  OUTLINED_FUNCTION_4(v2, v3, v4);

  return sub_1CA94D968();
}

uint64_t sub_1CA297FE0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_2();
  sub_1CA94D938();
  return sub_1CA94D968();
}

uint64_t sub_1CA298050(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_3_2();
  a2(v5, a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA298098(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1CCAA2780](a1 + 1);
  return sub_1CA94D968();
}

uint64_t sub_1CA2980DC(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA94D948();
  return sub_1CA94D968();
}

uint64_t sub_1CA298124(uint64_t a1)
{
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1CCAA2780](a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA298164(uint64_t a1)
{
  OUTLINED_FUNCTION_6_6(a1);
  sub_1CA94D948();
  return sub_1CA94D968();
}

uint64_t sub_1CA2981A0(uint64_t a1, unsigned __int8 a2)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a2 + 1);
  return sub_1CA94D968();
}

uint64_t sub_1CA298218(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_1CA94D918();
  a3(v6, a2);
  return sub_1CA94D968();
}

uint64_t sub_1CA298264(uint64_t a1)
{
  OUTLINED_FUNCTION_6_6(a1);
  sub_1CA94D938();
  return sub_1CA94D968();
}

uint64_t sub_1CA2982A0(uint64_t a1)
{
  OUTLINED_FUNCTION_6_6(a1);
  v2 = sub_1CA624210(v1);
  OUTLINED_FUNCTION_4(v2, v3, v4);

  return sub_1CA94D968();
}

uint64_t sub_1CA2982E4(uint64_t a1)
{
  OUTLINED_FUNCTION_6_6(a1);
  sub_1CA94C458();

  return sub_1CA94D968();
}

uint64_t sub_1CA298394(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a2);
  return sub_1CA94D968();
}

uint64_t sub_1CA2983D8(uint64_t a1, char a2)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a2 & 1);
  return sub_1CA94D968();
}

uint64_t sub_1CA29841C(uint64_t a1, unsigned __int8 a2)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a2);
  return sub_1CA94D968();
}

id default argument 0 of TypedValueRepresentableParameterStateTypeResolutionContext.init(localizationContext:)()
{
  v0 = [objc_opt_self() defaultContext];

  return v0;
}

uint64_t sub_1CA2984E8(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return OUTLINED_FUNCTION_5_6((v2 & a1));
}

uint64_t sub_1CA298510(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return OUTLINED_FUNCTION_5_6((v2 & a1));
}

id sub_1CA298568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CA94C368();

  if (a4)
  {
    v8 = sub_1CA94C1A8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
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

uint64_t sub_1CA298660@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_4_26();
  *a1 = result;
  return result;
}

uint64_t sub_1CA298688(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  result = sub_1CA52A4E0(v2, v3);
  *v1 = result;
  return result;
}

void sub_1CA29880C(uint64_t a1@<X8>)
{
  sub_1CA2908A8();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

void sub_1CA298840()
{
  OUTLINED_FUNCTION_1_6();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1CA2989BC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CA4F0808(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1CA298B04(void *a1, uint64_t a2)
{
  sub_1CA299E20(&qword_1EC443350, type metadata accessor for WFResourceError, "u~O$pe\v");
  v3 = a1;
  return sub_1CA948A68();
}

uint64_t sub_1CA298CF8(void *a1, uint64_t a2)
{
  sub_1CA299E20(&qword_1EC443698, type metadata accessor for WFDatabaseError, &unk_1CA981140);
  v3 = a1;
  return sub_1CA948A68();
}