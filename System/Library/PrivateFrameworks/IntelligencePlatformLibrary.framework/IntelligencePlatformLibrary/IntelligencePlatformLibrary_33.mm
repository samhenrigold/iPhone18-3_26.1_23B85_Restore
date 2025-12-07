void sub_1936CEC84()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 7955819 && v0 == 0xE300000000000000;
  if (v10 || (v3 = OUTLINED_FUNCTION_37_26(7955819), (v3 & 1) != 0))
  {
    v11 = *&__dst[8];
    if (*&__dst[8])
    {
      v12 = *__dst;
LABEL_8:
      *&v55 = v12;
      *(&v55 + 1) = v11;
      v13 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v3, v13, v4, v5, v6, v7, v8, v9, v55);
      sub_1934948FC();
      return;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_108_12();
  v14 = v10 && v0 == 0xE400000000000000;
  if (v14 || (v15 = OUTLINED_FUNCTION_17_35(), v3 = OUTLINED_FUNCTION_31_3(v15, v16, v17), (v3 & 1) != 0))
  {
    v11 = *&__dst[24];
    if (*&__dst[24])
    {
      v12 = *&__dst[16];
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_84_12();
  v3 = OUTLINED_FUNCTION_43_17();
  v19 = v10 && v0 == v18;
  if (v19 || (v3 = OUTLINED_FUNCTION_5_5(v3, v18), (v3 & 1) != 0))
  {
    v11 = *&__dst[40];
    if (*&__dst[40])
    {
      v12 = *&__dst[32];
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_117_3();
  v20 = OUTLINED_FUNCTION_98_13() | 0x7079546500000000;
  v22 = v1 == v20 && v0 == v21;
  if (v22 || (OUTLINED_FUNCTION_33_24(v20, 101) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v10)
    {
      *&v55 = v29;
      v30 = &type metadata for ToolKitToolTypeInstance;
      v31 = &off_1F07E12F8;
LABEL_32:
      OUTLINED_FUNCTION_52_2(v23, v30, v31, v24, v25, v26, v27, v28, v55);
      sub_193494798(v32, v33, v34);
      return;
    }

    goto LABEL_31;
  }

  v35 = OUTLINED_FUNCTION_89_14();
  v37 = v1 == v35 && v0 == v36;
  if (v37 || (OUTLINED_FUNCTION_5_5(v35, v36) & 1) != 0)
  {
    *&v55 = *&__dst[56];
    v38 = &unk_1EAE408B0;
    v39 = &unk_19397DFA0;
LABEL_39:
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    v13 = v3;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_34_21();
  v42 = v10 && v41 == v0;
  if (v42 || (OUTLINED_FUNCTION_14_48(v40, v41) & 1) != 0)
  {
    *&v55 = *&__dst[64];
    v38 = &unk_1EAE407F8;
    v39 = &unk_19397DF00;
    goto LABEL_39;
  }

  v43 = OUTLINED_FUNCTION_151_7();
  v44 = v10 && v0 == 0xE500000000000000;
  if (v44 || (OUTLINED_FUNCTION_1_31(v43) & 1) != 0)
  {
    *&v55 = *&__dst[72];
    v38 = &unk_1EAE408A8;
    v39 = &unk_193985830;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_38();
  v23 = v46 + 1;
  v47 = v1 == v46 + 1 && v45 == v0;
  if (v47 || (v23 = OUTLINED_FUNCTION_5_5(v23, v45), (v23 & 1) != 0))
  {
    if (*&__dst[96])
    {
      v55 = *&__dst[80];
      *&v56 = *&__dst[96];
      v30 = &type metadata for ToolKitToolToolDefinition.Version1.Parameter.ToolMetadata;
      v31 = &off_1F07E17F8;
      goto LABEL_32;
    }

LABEL_31:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v23 = 0x4D6E61656C6F6F62;
  v48 = v1 == 0x4D6E61656C6F6F62 && v0 == 0xEF61746164617465;
  if (v48 || (v23 = OUTLINED_FUNCTION_5_5(0x4D6E61656C6F6F62, 0xEF61746164617465), (v23 & 1) != 0))
  {
    if (*&__dst[112] != 1)
    {
      v55 = *&__dst[104];
      v56 = *&__dst[120];
      v30 = &type metadata for ToolKitToolToolDefinition.Version1.Parameter.BooleanMetadata;
      v31 = &off_1F07E1808;
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v49 = sub_19349AB64();
  v50 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v49);
  OUTLINED_FUNCTION_9_3(v50, v51);
  *(v52 + 40) = &type metadata for ToolKitToolToolDefinition.Version1.Parameter;
  OUTLINED_FUNCTION_288_0();
  v53 = swift_allocObject();
  v54 = OUTLINED_FUNCTION_28_3(v53);
  memcpy(v54, __dst, 0x88uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936CEFA0(__dst, &v55);
}

void sub_1936CF014()
{
  OUTLINED_FUNCTION_162_7();
  v10 = *v0;
  v9 = v0[1];
  v12 = v1 == v11 && v2 == 0xE300000000000000;
  if (v12 || (v13 = v2, v14 = v1, v15 = v0[2], v16 = OUTLINED_FUNCTION_88_14(), v1 = OUTLINED_FUNCTION_44_0(v16, v17), (v1 & 1) != 0))
  {
    if (v9)
    {
      OUTLINED_FUNCTION_53_2(v1, MEMORY[0x1E69E6158], v3, v4, v5, v6, v7, v8, v10);
      sub_1934948FC();
      return;
    }

LABEL_15:
    OUTLINED_FUNCTION_35();
    return;
  }

  v18 = OUTLINED_FUNCTION_89_14();
  v19 = v14 == v18 && v13 == 0xE800000000000000;
  if (v19 || (OUTLINED_FUNCTION_44_0(v18, 0xE800000000000000) & 1) != 0)
  {
    OUTLINED_FUNCTION_251_0();
    if (!v12)
    {
      OUTLINED_FUNCTION_53_2(v20, &type metadata for ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation, &off_1F07E1788, v21, v22, v23, v24, v25, v15);
      sub_193494798(v26, v27, v28);
      return;
    }

    goto LABEL_15;
  }

  v29 = sub_19349AB64();
  v30 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v29);
  *v31 = v14;
  v31[1] = v13;
  v31[2] = v10;
  v31[3] = v9;
  v31[4] = v15;
  v31[5] = &type metadata for ToolKitToolToolDefinition.Version1.Parameter.Relationship;
  OUTLINED_FUNCTION_23_2(v30, v31);

  sub_193437C90(v15);
}

id sub_1936CFA1C()
{
  OUTLINED_FUNCTION_16_32();
  v3 = v2;
  OUTLINED_FUNCTION_113_10();
  v6 = v6 && v5 == 0xED00007465737341;
  if (v6 || (OUTLINED_FUNCTION_5_5(v4, 0xED00007465737341) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      return sub_1934948FC();
    }

    goto LABEL_26;
  }

  v8 = OUTLINED_FUNCTION_302_0();
  v9 = v6 && v1 == 0xE600000000000000;
  if (v9 || (OUTLINED_FUNCTION_24_37(v8) & 1) != 0)
  {
    OUTLINED_FUNCTION_43_3();
    if (!v6)
    {
      goto LABEL_26;
    }

    v10 = &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon;
    v11 = &off_1F07E1838;
    return sub_193494798(v10, v11, v3);
  }

  v12 = OUTLINED_FUNCTION_206_0(0x6E7265747865);
  if (!v6 || v1 != 0xED00007465737341)
  {
    if ((OUTLINED_FUNCTION_5_5(v12, 0xED00007465737341) & 1) == 0)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_211_0();
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_42_10();
  if (v6)
  {
LABEL_23:
    v10 = &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon.ToolExternalAsset;
    v11 = &off_1F07E1848;
    return sub_193494798(v10, v11, v3);
  }

LABEL_26:
  v14 = sub_19349AB64();
  v15 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v14);
  OUTLINED_FUNCTION_64(v15, v16);
  OUTLINED_FUNCTION_19_1(v17, &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon);
}

void sub_1936CFBC0()
{
  OUTLINED_FUNCTION_195_2();
  OUTLINED_FUNCTION_138_6();
  OUTLINED_FUNCTION_245_1();
  v8 = v8 && v1 == 0xE400000000000000;
  if (v8 || (v9 = v1, v10 = OUTLINED_FUNCTION_17_35(), v0 = OUTLINED_FUNCTION_31_3(v10, v11, v12), (v0 & 1) != 0))
  {
    v13 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      v14 = v28;
LABEL_8:
      v27[0] = v14;
      v27[1] = v13;
      v15 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_53_2(v0, v15, v2, v3, v4, v5, v6, v7, v27[0]);
      sub_1934948FC();
      return;
    }

    goto LABEL_16;
  }

  v16 = OUTLINED_FUNCTION_311(1819898995);
  v17 = v8 && v9 == 0xE500000000000000;
  if (v17 || (OUTLINED_FUNCTION_1_31(v16) & 1) != 0)
  {
    if ((BYTE9(v29) & 1) == 0)
    {
      OUTLINED_FUNCTION_33_4();
      v15 = &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle;
      goto LABEL_9;
    }

LABEL_16:
    OUTLINED_FUNCTION_35();
    return;
  }

  v0 = OUTLINED_FUNCTION_284_0(0x726765726F66);
  v18 = v8 && v9 == 0xEA0000000000646ELL;
  if (v18 || (v0 = OUTLINED_FUNCTION_23_37(v0, 25710), (v0 & 1) != 0))
  {
    v13 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
      v14 = v30;
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v0 = OUTLINED_FUNCTION_284_0(0x72676B636162);
  v19 = v8 && v9 == 0xEA0000000000646ELL;
  if (v19 || (v0 = OUTLINED_FUNCTION_23_37(v0, 25710), (v0 & 1) != 0))
  {
    v13 = *(&v31 + 1);
    if (*(&v31 + 1))
    {
      v14 = v31;
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v20 = sub_19349AB64();
  v21 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v20);
  OUTLINED_FUNCTION_9_3(v21, v22);
  *(v23 + 40) = &type metadata for ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon;
  OUTLINED_FUNCTION_323();
  v24 = swift_allocObject();
  MEMORY[0xEA0000000000647E] = v24;
  v25 = v31;
  v24[3] = v30;
  v24[4] = v25;
  v26 = v29;
  v24[1] = v28;
  v24[2] = v26;
  OUTLINED_FUNCTION_26_0();

  sub_1936CFD60(&v28, v27);
}

uint64_t objectdestroy_2Tm_3(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_1936D00A4()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 25705 && v0 == 0xE200000000000000;
  if (v10 || (v11 = OUTLINED_FUNCTION_252_0(), v3 = OUTLINED_FUNCTION_5_5(v11, v12), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
      v13 = __dst[0];
LABEL_8:
      v56 = v13;
      v14 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v3, v14, v4, v5, v6, v7, v8, v9, v56);
      sub_1934948FC();
      return;
    }

    goto LABEL_45;
  }

  OUTLINED_FUNCTION_108_12();
  v15 = v10 && v0 == 0xE400000000000000;
  if (v15 || (v16 = OUTLINED_FUNCTION_17_35(), v3 = OUTLINED_FUNCTION_31_3(v16, v17, v18), (v3 & 1) != 0))
  {
    if (__dst[3])
    {
      v13 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  v3 = 0x6449656C646E7562;
  v19 = v1 == 0x6449656C646E7562 && v0 == 0xE800000000000000;
  if (v19 || (v3 = OUTLINED_FUNCTION_0_66(0x6449656C646E7562), (v3 & 1) != 0))
  {
    if (__dst[5])
    {
      v13 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  v3 = OUTLINED_FUNCTION_140_7();
  v21 = v10 && v0 == v20;
  if (v21 || (v3 = OUTLINED_FUNCTION_5_5(v3, v20), (v3 & 1) != 0))
  {
    if (__dst[7])
    {
      v13 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  v3 = OUTLINED_FUNCTION_291();
  v22 = v10 && v0 == 0xE600000000000000;
  if (v22 || (v3 = OUTLINED_FUNCTION_24_37(v3), (v3 & 1) != 0))
  {
    if (__dst[9])
    {
      v13 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_45;
  }

  v23 = OUTLINED_FUNCTION_232();
  v24 = v1 == v23 && v0 == 0xE600000000000000;
  if (v24 || (OUTLINED_FUNCTION_24_37(v23) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v10)
    {
      OUTLINED_FUNCTION_52_2(v25, &type metadata for ToolKitToolAppDefinition.Device, &off_1F07E1878, v26, v27, v28, v29, v30, v31);
      sub_193494798(v32, v33, v34);
      return;
    }

    goto LABEL_45;
  }

  v35 = OUTLINED_FUNCTION_290_0();
  v36 = v10 && v0 == 0xE600000000000000;
  if (v36 || (OUTLINED_FUNCTION_24_37(v35) & 1) != 0)
  {
    if ((__dst[12] & 0x100) == 0)
    {
      OUTLINED_FUNCTION_33_4();
      v14 = &type metadata for ToolKitToolAppDefinition.Origin;
      goto LABEL_9;
    }

LABEL_45:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v37 = OUTLINED_FUNCTION_91_12();
  v38 = v1 == v37 && v0 == 0xE800000000000000;
  if (v38 || (OUTLINED_FUNCTION_0_66(v37) & 1) != 0)
  {
    v56 = __dst[13];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    v14 = v3;
    goto LABEL_9;
  }

  v39 = sub_19349AB64();
  v40 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v39);
  OUTLINED_FUNCTION_9_3(v40, v41);
  *(v42 + 40) = &type metadata for ToolKitToolAppDefinition;
  OUTLINED_FUNCTION_136_6();
  v43 = swift_allocObject();
  v44 = OUTLINED_FUNCTION_61_19(v43);
  memcpy(v44, v45, 0x70uLL);
  OUTLINED_FUNCTION_26_0();

  v54 = OUTLINED_FUNCTION_188_3(v46, v47, v48, v49, v50, v51, v52, v53, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, __dst[0]);
  sub_1936D02FC(v54, v55);
}

void sub_1936D0390()
{
  OUTLINED_FUNCTION_2_3();
  v3 = memcpy(__dst, v2, sizeof(__dst));
  v10 = v1 == 1701667182 && v0 == 0xE400000000000000;
  if (v10 || (v11 = OUTLINED_FUNCTION_17_35(), v3 = OUTLINED_FUNCTION_31_3(v11, v12, v13), (v3 & 1) != 0))
  {
    if (__dst[1])
    {
      v14 = __dst[0];
LABEL_8:
      v55 = v14;
      v15 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v3, v15, v4, v5, v6, v7, v8, v9, v55);
      sub_1934948FC();
      return;
    }

    goto LABEL_30;
  }

  v16 = v1 == 0x656E6961746E6F63 && v0 == 0xEB00000000644972;
  if (v16 || (v3 = OUTLINED_FUNCTION_5_5(0x656E6961746E6F63, 0xEB00000000644972), (v3 & 1) != 0))
  {
    if (__dst[3])
    {
      v14 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v3 = OUTLINED_FUNCTION_140_7();
  v18 = v10 && v0 == v17;
  if (v18 || (v3 = OUTLINED_FUNCTION_5_5(v3, v17), (v3 & 1) != 0))
  {
    if (__dst[5])
    {
      v14 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_84_1();
  v20 = v1 == 0x656E6961746E6F63 && v0 == v19;
  if (v20 || (OUTLINED_FUNCTION_5_5(0x656E6961746E6F63, v19) & 1) != 0)
  {
    if ((__dst[7] & 0x100) == 0)
    {
      OUTLINED_FUNCTION_33_4();
      v15 = &type metadata for ToolKitToolContainerDefinition.Type;
      goto LABEL_9;
    }

    goto LABEL_30;
  }

  v3 = OUTLINED_FUNCTION_291();
  v21 = v10 && v0 == 0xE600000000000000;
  if (v21 || (v3 = OUTLINED_FUNCTION_24_37(v3), (v3 & 1) != 0))
  {
    if (__dst[9])
    {
      v14 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v22 = OUTLINED_FUNCTION_232();
  v23 = v1 == v22 && v0 == 0xE600000000000000;
  if (v23 || (OUTLINED_FUNCTION_24_37(v22) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v10)
    {
      OUTLINED_FUNCTION_52_2(v24, &type metadata for ToolKitToolContainerDefinition.Device, &off_1F07E1898, v25, v26, v27, v28, v29, v30);
      sub_193494798(v31, v32, v33);
      return;
    }

LABEL_30:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v34 = OUTLINED_FUNCTION_290_0();
  v35 = v10 && v0 == 0xE600000000000000;
  if (v35 || (OUTLINED_FUNCTION_24_37(v34) & 1) != 0)
  {
    if ((__dst[12] & 0x100) == 0)
    {
      OUTLINED_FUNCTION_33_4();
      v15 = &type metadata for ToolKitToolContainerDefinition.Origin;
      goto LABEL_9;
    }

    goto LABEL_30;
  }

  v36 = OUTLINED_FUNCTION_91_12();
  v37 = v1 == v36 && v0 == 0xE800000000000000;
  if (v37 || (OUTLINED_FUNCTION_0_66(v36) & 1) != 0)
  {
    v55 = __dst[13];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    v15 = v3;
    goto LABEL_9;
  }

  v38 = sub_19349AB64();
  v39 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v38);
  OUTLINED_FUNCTION_9_3(v39, v40);
  *(v41 + 40) = &type metadata for ToolKitToolContainerDefinition;
  OUTLINED_FUNCTION_136_6();
  v42 = swift_allocObject();
  v43 = OUTLINED_FUNCTION_61_19(v42);
  memcpy(v43, v44, 0x70uLL);
  OUTLINED_FUNCTION_26_0();

  v53 = OUTLINED_FUNCTION_188_3(v45, v46, v47, v48, v49, v50, v51, v52, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, __dst[0]);
  sub_1936D0610(v53, v54);
}

uint64_t objectdestroy_109Tm()
{
  OUTLINED_FUNCTION_29_7();
  if (!(!v3 & v2))
  {
    sub_193446A6C(*(v0 + 16), v1);
  }

  OUTLINED_FUNCTION_95();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_1936D0AD0()
{
  OUTLINED_FUNCTION_2_3();
  v10 = OUTLINED_FUNCTION_277_1(v2, v3, v4, v5, v6, v7, v8, v9, v80, v84, v87, v90, v93, v96, v99, v102, v105, v108);
  v17 = v1 == 0x656C746974 && v0 == 0xE500000000000000;
  if (v17 || (v10 = OUTLINED_FUNCTION_1_31(0x656C746974), (v10 & 1) != 0))
  {
    if (v112)
    {
      v82 = v111;
      v18 = MEMORY[0x1E69E6158];
LABEL_8:
      OUTLINED_FUNCTION_52_2(v10, v18, v11, v12, v13, v14, v15, v16, v82);
      sub_1934948FC();
      return;
    }

    goto LABEL_16;
  }

  v19 = v1 == 0x656C746974627573 && v0 == 0xE800000000000000;
  if (v19 || (OUTLINED_FUNCTION_0_66(0x656C746974627573) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v17)
    {
      OUTLINED_FUNCTION_52_2(v20, &type metadata for ToolKitToolDisplayRepresentation.Subtitle, &off_1F07E1908, v21, v22, v23, v24, v25, v26);
LABEL_17:
      sub_193494798(v27, v28, v29);
      return;
    }

    goto LABEL_16;
  }

  v30 = v1 == 0x74786554746C61 && v0 == 0xE700000000000000;
  if (v30 || (OUTLINED_FUNCTION_34_31(0x74786554746C61) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v17)
    {
      OUTLINED_FUNCTION_52_2(v31, &type metadata for ToolKitToolDisplayRepresentation.AltText, &off_1F07E1928, v32, v33, v34, v35, v36, v37);
      goto LABEL_17;
    }

LABEL_16:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v38 = OUTLINED_FUNCTION_311(1734438249);
  v39 = v17 && v0 == 0xE500000000000000;
  if (v39 || (OUTLINED_FUNCTION_1_31(v38) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v17)
    {
      OUTLINED_FUNCTION_52_2(v40, &type metadata for ToolKitToolDisplayRepresentation.Image, &off_1F07E1948, v41, v42, v43, v44, v45, v46);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v47 = OUTLINED_FUNCTION_91_12();
  v48 = v1 == v47 && v0 == 0xE800000000000000;
  if (v48 || (OUTLINED_FUNCTION_0_66(v47) & 1) != 0)
  {
    v82 = v113;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    v18 = v10;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_115_9();
  OUTLINED_FUNCTION_34_21();
  v56 = v17 && v50 == v0;
  if (v56 || (v49 = OUTLINED_FUNCTION_18_3(18, v50), (v49 & 1) != 0))
  {
    if (v115 != 1)
    {
      OUTLINED_FUNCTION_52_2(v49, &type metadata for ToolKitToolPluginModelData, &off_1F07E18B8, v51, v52, v53, v54, v55, v114);
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v57 = sub_19349AB64();
  v58 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v57);
  OUTLINED_FUNCTION_9_3(v58, v59);
  *(v60 + 40) = &type metadata for ToolKitToolDisplayRepresentation;
  OUTLINED_FUNCTION_137_7();
  v61 = swift_allocObject();
  v62 = OUTLINED_FUNCTION_28_3(v61);
  OUTLINED_FUNCTION_282_0(v62, v63, v64, v65, v66, v67, v68, v69, v81, v85, v88, v91, v94, v97, v100, v103, v106, v109);
  OUTLINED_FUNCTION_26_0();

  v78 = OUTLINED_FUNCTION_270_0(v70, v71, v72, v73, v74, v75, v76, v77, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v111);
  sub_1936D0D2C(v78, v79);
}

void sub_1936D0E84()
{
  OUTLINED_FUNCTION_195_2();
  OUTLINED_FUNCTION_171_3();
  OUTLINED_FUNCTION_245_1();
  v2 = v2 && v1 == 0xE400000000000000;
  if (v2 || (v3 = v1, v4 = v0, (OUTLINED_FUNCTION_27_28(1701869940) & 1) != 0))
  {
    if (BYTE9(v43))
    {
      OUTLINED_FUNCTION_35();
    }

    else
    {
      OUTLINED_FUNCTION_33_4();
      OUTLINED_FUNCTION_53_2(v5, &type metadata for ToolKitToolDisplayRepresentation.DisplayValue.DisplayValueEnum, v6, v7, v8, v9, v10, v11, v41);
      sub_1934948FC();
    }
  }

  else
  {
    v12 = v4 == 2038063468 && v3 == 0xE400000000000000;
    if (v12 || (OUTLINED_FUNCTION_27_28(2038063468) & 1) != 0)
    {
      v42 = *(&v44 + 1);
      v13 = sub_193450268(v44, *(&v44 + 1));
      OUTLINED_FUNCTION_53_2(v13, &type metadata for ToolKitToolDisplayRepresentation.Storage, &off_1F07E18D8, v14, v15, v16, v17, v18, v44);
      sub_193494798(v19, v20, v21);
      sub_19345012C(v41, *(&v44 + 1));
    }

    else
    {
      v22 = OUTLINED_FUNCTION_63_14();
      v24 = v2 && v3 == v23;
      if (v24 || (OUTLINED_FUNCTION_23_37(v22, 25968) & 1) != 0)
      {
        v42 = *(&v45 + 1);
        sub_1936D1084(v45, *(&v45 + 1), v46, *(&v46 + 1));
        OUTLINED_FUNCTION_53_2(v25, &type metadata for ToolKitToolDisplayRepresentation.DisplayValue.Static, &off_1F07E18F8, v26, v27, v28, v29, v30, v45);
        sub_193494798(v31, v32, v33);
        sub_1936D10D0(v41, *(&v45 + 1), v46, *(&v46 + 1));
      }

      else
      {
        v34 = sub_19349AB64();
        v35 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v34);
        OUTLINED_FUNCTION_9_3(v35, v36);
        *(v37 + 40) = &type metadata for ToolKitToolDisplayRepresentation.DisplayValue;
        OUTLINED_FUNCTION_323();
        v38 = swift_allocObject();
        MEMORY[0xE400000000000010] = v38;
        v39 = v46;
        v38[3] = v45;
        v38[4] = v39;
        v40 = v44;
        v38[1] = v43;
        v38[2] = v40;
        OUTLINED_FUNCTION_26_0();

        sub_1936D1028(&v43, &v41);
      }
    }
  }
}

void sub_1936D1084(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_193450688(a3, a4);
  }
}

void sub_1936D10D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_193446A6C(a3, a4);
  }
}

void sub_1936D1134(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_26_28();
  v8 = *v2;
  v7 = v2[1];
  v10 = v2[2];
  v9 = v2[3];
  v11 = a1 == v5 && v6 == 0xE500000000000000;
  if (v11 || (v12 = v6, (OUTLINED_FUNCTION_42_9(v5, 0xE500000000000000, a1) & 1) != 0))
  {
    if (v7)
    {
      sub_193494798(&type metadata for ToolKitToolAny, &off_1F07E0F78, a2);
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else
  {
    v13 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v13);
    v15 = v14;
    *v14 = a1;
    v14[1] = v12;
    v14[5] = &type metadata for ToolKitToolDisplayRepresentation.DisplayValue.Static;
    OUTLINED_FUNCTION_95();
    v16 = swift_allocObject();
    v15[2] = v16;
    v16[2] = v8;
    v16[3] = v7;
    v16[4] = v10;
    v16[5] = v9;
    *(v15 + 48) = 1;
    swift_willThrow();

    sub_1936D1084(v8, v7, v10, v9);
  }
}

id sub_1936D12C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_25_16();
  OUTLINED_FUNCTION_191_2();
  v12 = v12 && v9 == 0xE400000000000000;
  if (v12 || (v13 = v11, v14 = v10, (OUTLINED_FUNCTION_324(2038063468) & 1) != 0))
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_297();
      OUTLINED_FUNCTION_53_2(v15, &type metadata for ToolKitToolDisplayRepresentation.Storage, &off_1F07E18D8, v16, v17, v18, v19, v20, v39);
      return sub_193494798(v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_63_14();
    v26 = v12 && a2 == v25;
    if (v26 || (OUTLINED_FUNCTION_68_18(), (OUTLINED_FUNCTION_324(v27) & 1) != 0))
    {
      if (v5 < 0)
      {
        OUTLINED_FUNCTION_303((v5 & 0x7FFFFFFFFFFFFFFFLL));
        OUTLINED_FUNCTION_53_2(v31, v32, v33, v34, v35, v36, v37, v38, v39);
        v21 = v14;
        v22 = v13;
        return sub_193494798(v21, v22, v23);
      }
    }
  }

  v28 = sub_19349AB64();
  v29 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v28);
  *v30 = v6;
  v30[1] = a2;
  v30[5] = a5;
  OUTLINED_FUNCTION_28_25(v29, v30);
}

void sub_1936D140C()
{
  OUTLINED_FUNCTION_321();
  v2 = OUTLINED_FUNCTION_26_28();
  v11 = *v0;
  v10 = v0[1];
  v12 = v1 == v2 && v3 == 0xE500000000000000;
  if (v12 || (v13 = v4, v14 = v3, v2 = sub_19393CA30(), (v2 & 1) != 0))
  {
    if (v10)
    {
      OUTLINED_FUNCTION_26_27(v2, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v11);
    }

    else
    {
      OUTLINED_FUNCTION_131_8();
    }
  }

  else
  {
    v15 = sub_19349AB64();
    v16 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v15);
    *v17 = v1;
    v17[1] = v14;
    v17[5] = v13;
    v17[2] = v11;
    v17[3] = v10;
    OUTLINED_FUNCTION_23_2(v16, v17);
  }
}

id sub_1936D1508()
{
  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_191_2();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_91_2(2038063468, 0xE400000000000000) & 1) != 0)
  {
    if ((v0 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_297();
      OUTLINED_FUNCTION_102_14(v4, &type metadata for ToolKitToolDisplayRepresentation.Storage, &off_1F07E18D8, v5, v6, v7, v8, v9, v29);
      return sub_193494798(v10, v11, v12);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_63_14();
    v21 = v3 && v1 == v20;
    if (v21 || (OUTLINED_FUNCTION_68_18(), v14 = OUTLINED_FUNCTION_124_3(v22, v23, v24), (v14 & 1) != 0))
    {
      if (v0 < 0)
      {
        OUTLINED_FUNCTION_102_14(v14, &type metadata for ToolKitToolDisplayRepresentation.Image.Static, &off_1F07E1958, v15, v16, v17, v18, v19, *((v0 & 0x7FFFFFFFFFFFFFFFLL) + 0x10));
        return sub_193494798(v10, v11, v12);
      }
    }
  }

  v25 = sub_19349AB64();
  v26 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
  OUTLINED_FUNCTION_219_0(v26, v27);
  OUTLINED_FUNCTION_19_1(v28, &type metadata for ToolKitToolDisplayRepresentation.Image);
}

id sub_1936D1620()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_296_0();
  OUTLINED_FUNCTION_191_2();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_27_28(1635017060) & 1) != 0)
  {
    if (!(v0 >> 62))
    {
      OUTLINED_FUNCTION_297();
      v11 = MEMORY[0x1E6969080];
LABEL_8:
      OUTLINED_FUNCTION_53_2(v4, v11, v5, v6, v7, v8, v9, v10, v29);
      return sub_1934948FC();
    }

    goto LABEL_26;
  }

  v13 = OUTLINED_FUNCTION_302_0();
  v14 = v3 && v1 == 0xE600000000000000;
  if (!v14 && (OUTLINED_FUNCTION_24_37(v13) & 1) == 0)
  {
    OUTLINED_FUNCTION_144_6();
    if (v3 && v1 == 0xE400000000000000)
    {
      OUTLINED_FUNCTION_42_10();
      if (!v3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ((OUTLINED_FUNCTION_27_28(1701603686) & 1) == 0)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_211_0();
      if (!v3)
      {
        goto LABEL_26;
      }
    }

    OUTLINED_FUNCTION_269_0();
    v11 = MEMORY[0x1E69E6158];
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_43_3();
  if (v3)
  {
    OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_53_2(v15, &type metadata for ToolKitToolDisplayRepresentation.Image.Static.Symbol, &off_1F07E1968, v16, v17, v18, v19, v20, v29);
    return sub_193494798(v21, v22, v23);
  }

LABEL_26:
  v25 = sub_19349AB64();
  v26 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v25);
  OUTLINED_FUNCTION_64(v26, v27);
  OUTLINED_FUNCTION_19_1(v28, &type metadata for ToolKitToolDisplayRepresentation.Image.Static);
}

void sub_1936D177C()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  OUTLINED_FUNCTION_138_6();
  v5 = *v0;
  v6 = v0[1];
  v8 = v3 == v7 && v4 == 0xE400000000000000;
  if (!v8)
  {
    v9 = v4;
    v10 = v3;
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = v0[5];
    v26 = v13;
    v15 = OUTLINED_FUNCTION_46_18();
    if ((OUTLINED_FUNCTION_117_2(v15, v16, v10) & 1) == 0)
    {
      v17 = v10 == 0x6F6C6F43746E6974 && v9 == 0xED00006174614472;
      if (v17 || (OUTLINED_FUNCTION_117_2(0x6F6C6F43746E6974, 0xED00006174614472, v10) & 1) != 0)
      {
        if (v11 >> 60 != 15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        OUTLINED_FUNCTION_249_0();
        OUTLINED_FUNCTION_168();
        v20 = v10 == v19 && v18 == v9;
        if (!v20 && (OUTLINED_FUNCTION_117_2(0xD000000000000011, v18, v10) & 1) == 0)
        {
          v22 = sub_19349AB64();
          OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v22);
          v24 = v23;
          *v23 = v10;
          v23[1] = v9;
          v23[5] = &type metadata for ToolKitToolDisplayRepresentation.Image.Static.Symbol;
          OUTLINED_FUNCTION_133();
          v25 = swift_allocObject();
          v24[2] = v25;
          v25[2] = v5;
          v25[3] = v6;
          v25[4] = v12;
          v25[5] = v11;
          v25[6] = v26;
          v25[7] = v14;
          *(v24 + 48) = 1;
          swift_willThrow();

          sub_193450268(v12, v11);
          sub_193450268(v26, v14);
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_186_2();
        if (!(!v8 & v21))
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      *v2 = 0u;
      v2[1] = 0u;
      goto LABEL_15;
    }
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1936D1A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19349AB64();
  v7 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v6);
  *v8 = a1;
  v8[1] = a2;
  v8[5] = a3;
  OUTLINED_FUNCTION_23_2(v7, v8);
}

void sub_1936D1B10()
{
  OUTLINED_FUNCTION_2_3();
  v10 = OUTLINED_FUNCTION_277_1(v2, v3, v4, v5, v6, v7, v8, v9, v72, v76, v79, v82, v85, v88, v91, v94, v97, v100);
  v17 = v1 == 25705 && v0 == 0xE200000000000000;
  if (v17 || (v18 = OUTLINED_FUNCTION_252_0(), v10 = OUTLINED_FUNCTION_5_5(v18, v19), (v10 & 1) != 0))
  {
    if (v104)
    {
      v20 = v103;
LABEL_8:
      v74 = v20;
      v21 = MEMORY[0x1E69E6158];
LABEL_9:
      OUTLINED_FUNCTION_52_2(v10, v21, v11, v12, v13, v14, v15, v16, v74);
      sub_1934948FC();
      return;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_108_12();
  v22 = v17 && v0 == 0xE400000000000000;
  if (v22 || (v23 = OUTLINED_FUNCTION_17_35(), v10 = OUTLINED_FUNCTION_31_3(v23, v24, v25), (v10 & 1) != 0))
  {
    if (v106)
    {
      v20 = v105;
      goto LABEL_8;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_84_12();
  v10 = OUTLINED_FUNCTION_43_17();
  v27 = v17 && v0 == v26;
  if (v27 || (v10 = OUTLINED_FUNCTION_5_5(v10, v26), (v10 & 1) != 0))
  {
    if (v108)
    {
      v20 = v107;
      goto LABEL_8;
    }

LABEL_38:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v28 = OUTLINED_FUNCTION_11_41();
  v29 = v1 == v28 && v0 == 0xEA00000000007372;
  if (v29 || (OUTLINED_FUNCTION_5_5(v28, 0xEA00000000007372) & 1) != 0)
  {
    v74 = v109;
    v30 = &unk_1EAE40878;
    v31 = &unk_19397DF80;
LABEL_30:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    v21 = v10;
    goto LABEL_9;
  }

  v32 = OUTLINED_FUNCTION_107_11();
  v33 = v17 && v0 == 0xEA00000000006570;
  if (v33 || (OUTLINED_FUNCTION_23_37(v32, 25968) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v17)
    {
      OUTLINED_FUNCTION_52_2(v34, &type metadata for ToolKitToolTypeInstance, &off_1F07E12F8, v35, v36, v37, v38, v39, v40);
      sub_193494798(v41, v42, v43);
      return;
    }

    goto LABEL_38;
  }

  v44 = OUTLINED_FUNCTION_170_4();
  v46 = v17 && v0 == v45;
  if (v46 || (OUTLINED_FUNCTION_5_5(v44, v45) & 1) != 0)
  {
    v74 = v110;
    v30 = &unk_1EAE40800;
    v31 = &unk_19397DF08;
    goto LABEL_30;
  }

  v47 = OUTLINED_FUNCTION_151_7();
  v48 = v17 && v0 == 0xE500000000000000;
  if (v48 || (OUTLINED_FUNCTION_1_31(v47) & 1) != 0)
  {
    v74 = v111;
    v30 = &unk_1EAE408B8;
    v31 = &unk_193986EB0;
    goto LABEL_30;
  }

  v49 = sub_19349AB64();
  v50 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v49);
  OUTLINED_FUNCTION_9_3(v50, v51);
  *(v52 + 40) = &type metadata for ToolKitToolTriggerDefinition.Version1;
  OUTLINED_FUNCTION_137_7();
  v53 = swift_allocObject();
  v54 = OUTLINED_FUNCTION_28_3(v53);
  OUTLINED_FUNCTION_282_0(v54, v55, v56, v57, v58, v59, v60, v61, v73, v77, v80, v83, v86, v89, v92, v95, v98, v101);
  OUTLINED_FUNCTION_26_0();

  v70 = OUTLINED_FUNCTION_270_0(v62, v63, v64, v65, v66, v67, v68, v69, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v103);
  sub_1936D1D30(v70, v71);
}

void sub_1936D1DC4()
{
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_7_42();
  v5 = memcpy(__dst, v2, 0x6BuLL);
  v12 = v1 == v3 && v0 == v4;
  if (v12 || (v5 = OUTLINED_FUNCTION_23_37(v3, 29285), (v5 & 1) != 0))
  {
    if (__dst[1])
    {
      v13 = __dst[0];
LABEL_8:
      OUTLINED_FUNCTION_52_2(v5, MEMORY[0x1E69E6158], v6, v7, v8, v9, v10, v11, v13);
      sub_1934948FC();
      return;
    }

    goto LABEL_23;
  }

  v5 = OUTLINED_FUNCTION_174_3();
  v15 = v1 == v5 && v0 == v14;
  if (v15 || (v5 = OUTLINED_FUNCTION_5_5(v5, v14), (v5 & 1) != 0))
  {
    if (__dst[3])
    {
      v13 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v16 = v1 == 0x746567726174 && v0 == 0xE600000000000000;
  if (v16 || (OUTLINED_FUNCTION_24_37(0x746567726174) & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v12)
    {
      OUTLINED_FUNCTION_52_2(v17, &type metadata for ToolKitToolContainerDefinition.Device, &off_1F07E1898, v18, v19, v20, v21, v22, v23);
LABEL_30:
      sub_193494798(v24, v25, v26);
      return;
    }

LABEL_23:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v27 = OUTLINED_FUNCTION_11_41();
  v29 = v1 == v27 && v0 == v28;
  if (v29 || (OUTLINED_FUNCTION_5_5(v27, v28) & 1) != 0)
  {
    v61 = __dst[5];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408C0, &qword_19397DFA8);
    OUTLINED_FUNCTION_52_2(v35, v35, &off_1F07BD310, v36, v37, v38, v39, v40, v61);
    goto LABEL_30;
  }

  v41 = 0x736E6F6974706FLL;
  v42 = v1 == 0x736E6F6974706FLL && v0 == 0xE700000000000000;
  if (v42 || (v41 = OUTLINED_FUNCTION_34_31(0x736E6F6974706FLL), (v41 & 1) != 0))
  {
    if (__dst[9] != 1)
    {
      OUTLINED_FUNCTION_52_2(v41, &type metadata for ToolKitToolToolInvocationOptions, &off_1F07E19D8, v30, v31, v32, v33, v34, v2[6]);
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  v43 = sub_19349AB64();
  v44 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v43);
  OUTLINED_FUNCTION_9_3(v44, v45);
  *(v46 + 40) = &type metadata for ToolKitToolToolInvocation;
  v47 = swift_allocObject();
  v48 = OUTLINED_FUNCTION_61_19(v47);
  memcpy(v48, v49, 0x6BuLL);
  OUTLINED_FUNCTION_26_0();

  v58 = OUTLINED_FUNCTION_188_3(v50, v51, v52, v53, v54, v55, v56, v57, v60, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, __dst[0]);
  sub_1936D1FF0(v58, v59);
}

void sub_1936D2094()
{
  OUTLINED_FUNCTION_11_5();
  v3 = v0[1];
  v28 = *v0;
  v29 = v3;
  *v30 = v0[2];
  *&v30[11] = *(v0 + 43);
  v4 = v2 == 0x7463617265746E69 && v1 == 0xEF65646F4D6E6F69;
  if (v4 || (OUTLINED_FUNCTION_5_5(0x7463617265746E69, 0xEF65646F4D6E6F69) & 1) != 0)
  {
    if (BYTE9(v28))
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for ToolKitToolToolInvocationOptions.InteractionMode;
    goto LABEL_17;
  }

  v11 = 0x656C61636F6CLL;
  v13 = v2 == 0x656C61636F6CLL && v1 == 0xE600000000000000;
  if (v13 || (v11 = OUTLINED_FUNCTION_24_37(0x656C61636F6CLL), (v11 & 1) != 0))
  {
    v14 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      goto LABEL_7;
    }

    v15 = v29;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_34_21();
  v17 = v4 && v16 == v1;
  if (v17 || (v11 = OUTLINED_FUNCTION_14_48(v11, v16), (v11 & 1) != 0))
  {
    v14 = *&v30[8];
    if (!*&v30[8])
    {
      goto LABEL_7;
    }

    v15 = *v30;
LABEL_16:
    v27[0] = v15;
    v27[1] = v14;
    v12 = MEMORY[0x1E69E6158];
LABEL_17:
    OUTLINED_FUNCTION_53_2(v11, v12, v5, v6, v7, v8, v9, v10, v27[0]);
    sub_1934948FC();
    return;
  }

  v18 = v2 == 0x6361667265746E69 && v1 == 0xEE006D6F69644965;
  if (v18 || (OUTLINED_FUNCTION_5_5(0x6361667265746E69, 0xEE006D6F69644965) & 1) != 0)
  {
    if (v30[25])
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_33_4();
    v12 = &type metadata for ToolKitToolToolInvocationOptions.InterfaceIdiom;
    goto LABEL_17;
  }

  v11 = OUTLINED_FUNCTION_106_13();
  v20 = v4 && v1 == v19;
  if (v20 || (v11 = OUTLINED_FUNCTION_5_5(v11, v19), (v11 & 1) != 0))
  {
    if (v30[26] == 2)
    {
      goto LABEL_7;
    }

    LOBYTE(v27[0]) = v30[26] & 1;
    v12 = MEMORY[0x1E69E6370];
    goto LABEL_17;
  }

  v21 = sub_19349AB64();
  v22 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
  OUTLINED_FUNCTION_9_3(v22, v23);
  *(v24 + 40) = &type metadata for ToolKitToolToolInvocationOptions;
  v25 = swift_allocObject();
  *(v0 + 2) = v25;
  *(v25 + 59) = *&v30[11];
  v26 = *v30;
  v25[2] = v29;
  v25[3] = v26;
  v25[1] = v28;
  OUTLINED_FUNCTION_26_0();

  sub_1936D230C(&v28, v27);
}

uint64_t objectdestroy_80Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolKitTranscript.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for ToolKitTranscript();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408C8, &qword_19397DFB0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1936D254C(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE408C8, &qword_19397DFB0, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE408C8, &qword_19397DFB0);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1936D254C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitTranscript();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static ToolKitTranscript.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408C8, &qword_19397DFB0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE408C8, &qword_19397DFB0, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_1936D26E0(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936D26E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitTranscript();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static ToolKitTranscript.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v36 = v2;
  v37 = v1;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408C8, &qword_19397DFB0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  if (*sub_1937354EC() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v15 + 16))(v19, v21, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v15 + 8))(v21, v13);
    if (!v0)
    {
      v28 = v36;
      sub_1936D26E0(v12, v36);
      v29 = type metadata accessor for ToolKitTranscript();
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    v26 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v26);
    *v27 = v5;
    *(v27 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t ToolKitTranscript.serialize()()
{
  v2 = type metadata accessor for ToolKitTranscript();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408C8, &qword_19397DFB0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1936D254C(v0, v6);
  sub_1934470C8(v6, v2, v9);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v10, &qword_1EAE408C8, &qword_19397DFB0, v11);
  sub_19393C290();
  OUTLINED_FUNCTION_32_3();
  sub_19344E6DC(v9, &qword_1EAE408C8, &qword_19397DFB0);
  return v1;
}

id static ToolKitTranscript.columns.getter()
{
  v4 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(1684632949, 0xE400000000000000, 6, 0, v1, 14, 3);
  if (result)
  {
    *(inited + 32) = result;
    sub_19343D230(inited);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1936D2CD0()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v30 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31[-v7 - 8];
  v9 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = v4 == 1684632949 && v2 == 0xE400000000000000;
  if (!v16 && (OUTLINED_FUNCTION_124_3(1684632949, 0xE400000000000000, v4) & 1) == 0)
  {
    v19 = v4 == 0x696665446C6F6F74 && v2 == 0xEE006E6F6974696ELL;
    if (v19 || (OUTLINED_FUNCTION_124_3(0x696665446C6F6F74, 0xEE006E6F6974696ELL, v4) & 1) != 0)
    {
      v20 = type metadata accessor for ToolKitTranscript();
      memcpy(v32, (v0 + *(v20 + 32)), 0x278uLL);
      if (sub_1936D3298(v32) == 1)
      {
        goto LABEL_8;
      }

      memcpy(v31, v32, sizeof(v31));
      v21 = &type metadata for ToolKitToolToolDefinition.Version1;
      v22 = &off_1F07E1758;
    }

    else
    {
      v23 = OUTLINED_FUNCTION_11_41();
      v25 = v4 == v23 && v2 == v24;
      if (!v25 && (OUTLINED_FUNCTION_124_3(v23, v24, v4) & 1) == 0)
      {
        v26 = sub_19349AB64();
        OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v26);
        v28 = v27;
        *v27 = v4;
        v27[1] = v2;
        v27[5] = type metadata accessor for ToolKitTranscript();
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28 + 2);
        sub_1936D254C(v0, boxed_opaque_existential_1Tm);
        *(v28 + 48) = 1;
        swift_willThrow();

        goto LABEL_24;
      }

      v32[0] = *(v0 + *(type metadata accessor for ToolKitTranscript() + 36));
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE408D8, &qword_19397DFB8);
      v22 = &off_1F07BD310;
    }

    sub_193494798(v21, v22, v30);
    goto LABEL_24;
  }

  v17 = type metadata accessor for ToolKitTranscript();
  sub_193458F7C(v0 + *(v17 + 28), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    (*(v11 + 32))(v15, v8, v9);
    sub_1934948FC();
    (*(v11 + 8))(v15, v9);
    goto LABEL_24;
  }

  sub_19344E6DC(v8, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_8:
  v18 = v30;
  *v30 = 0u;
  *(v18 + 1) = 0u;
LABEL_24:
  OUTLINED_FUNCTION_27();
}

id sub_1936D300C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_57_0();
  v7 = OUTLINED_FUNCTION_26_28();
  v14 = *v3;
  v15 = v4 == v7 && v8 == 0xE500000000000000;
  if (v15 || (v7 = OUTLINED_FUNCTION_0_32(v7, 0xE500000000000000), (v7 & 1) != 0))
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_127_7(v7, &type metadata for ToolKitToolTypedValue, &off_1F07E10C8, v9, v10, v11, v12, v13, *(v14 + 16));
      return sub_193494798(v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_117_3();
    v26 = 0x636E657265666572;
    v27 = v4 == 0x636E657265666572 && v5 == v25;
    if (v27 || (v26 = OUTLINED_FUNCTION_0_32(0x636E657265666572, 0xE900000000000065), (v26 & 1) != 0))
    {
      if (v14 < 0)
      {
        OUTLINED_FUNCTION_127_7(v26, &type metadata for ToolKitToolTypedValue.ID, &off_1F07E10D8, v20, v21, v22, v23, v24, *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x10));
        return sub_193494798(v16, v17, v18);
      }
    }
  }

  v28 = sub_19349AB64();
  v29 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v28);
  OUTLINED_FUNCTION_310(v29, v30);
  *(v31 + 40) = a3;
  OUTLINED_FUNCTION_28_25(v32, v31);
}

void sub_1936D3148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_162_7();
  v14 = *v5;
  v15 = v5[1];
  v17 = v6 == v16 && v7 == 0xE300000000000000;
  if (v17 || (v18 = v9, v19 = v8, v20 = v7, v21 = v6, v22 = v5[2], v23 = OUTLINED_FUNCTION_88_14(), v6 = OUTLINED_FUNCTION_15_16(v23, v24), (v6 & 1) != 0))
  {
    OUTLINED_FUNCTION_53_2(v6, MEMORY[0x1E69E6158], v8, v9, v10, v11, v12, v13, v14);
    sub_1934948FC();
  }

  else
  {
    v25 = OUTLINED_FUNCTION_26_28();
    v26 = v21 == v25 && v20 == 0xE500000000000000;
    if (v26 || (OUTLINED_FUNCTION_15_16(v25, 0xE500000000000000) & 1) != 0)
    {

      OUTLINED_FUNCTION_53_2(v27, v28, v29, v30, v31, v32, v33, v34, v22);
      sub_193494798(v19, v18, v35);
    }

    else
    {
      v36 = sub_19349AB64();
      v37 = OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v36);
      OUTLINED_FUNCTION_218_2(v37, v38);
      v39[2] = v14;
      v39[3] = v15;
      v39[4] = v22;
      v39[5] = a5;
      OUTLINED_FUNCTION_23_2(v40, v39);
    }
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1936D3298(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_49_18()
{

  return sub_19393CA30();
}

double OUTLINED_FUNCTION_131_8()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_141_6(uint64_t result)
{
  *(v1 + 16) = result;
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

void OUTLINED_FUNCTION_155_4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{

  sub_1936CE104(a1, a2, a3, sub_1936CE2A8, a5);
}

void OUTLINED_FUNCTION_156_5(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{

  sub_1936CE104(a1, a2, a3, sub_1936C097C, a5);
}

void *OUTLINED_FUNCTION_182_5(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(__srca, a20);
  __src = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v21 = (a1 + 16);

  return memcpy(v21, __srca, 0x60uLL);
}

void *OUTLINED_FUNCTION_201_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return memcpy(va, v17, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_250_0(uint64_t result)
{
  *(result + 28) = v2;
  *(result + 31) = *(v1 + 15);
  *(result + 29) = *(v1 + 13);
  return result;
}

void *OUTLINED_FUNCTION_275_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return memcpy(va, v21, 0x68uLL);
}

void *OUTLINED_FUNCTION_277_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return memcpy(va, v18, 0x50uLL);
}

void *OUTLINED_FUNCTION_282_0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(__srca, a18);
  __src = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);

  return memcpy(a1, __srca, 0x50uLL);
}

void *OUTLINED_FUNCTION_322(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va1, a24);
  va_start(__srca, a24);
  __src = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);

  return memcpy(a1, __srca, 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_324(uint64_t a1)
{

  return sub_19393CA30();
}

uint64_t static ToolKitToolTypeIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_64_15();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_213();
      if (!v16)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_69_19();
      v46 = *(v2 + 32);
      __dst[0] = *(v2 + 16);
      __dst[1] = v46;
      OUTLINED_FUNCTION_96_14();

      v55 = OUTLINED_FUNCTION_126_7(v47, v48, v49, v50, v51, v52, v53, v54, v57, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, __dst[0]);
      static ToolKitToolTypeIdentifier.Custom.== infix(_:_:)(v55);
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_215_2();
      if (!v16)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_34_32();
      LOBYTE(__dst[0]) = v26;
      v59 = v27;

      OUTLINED_FUNCTION_126_7(v28, v29, v30, v31, v32, v33, v34, v35, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, __dst[0]);
      static ToolKitToolTypeIdentifier.Builtin.== infix(_:_:)();
      goto LABEL_16;
    case 3:
      OUTLINED_FUNCTION_217_1();
      if (!v16)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_16_33();
      memcpy(v36, v37, 0xF0uLL);
      memcpy(__dst, (v2 + 16), sizeof(__dst));

      OUTLINED_FUNCTION_126_7(v38, v39, v40, v41, v42, v43, v44, v45, v57, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, __dst[0]);
      static ToolKitToolTypeIdentifier.Attributed.== infix(_:_:)();
      goto LABEL_16;
    case 4:
      OUTLINED_FUNCTION_216_1();
      if (!v16)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_69_19();
      __dst[0] = *(v2 + 16);
      OUTLINED_FUNCTION_297();

      v25 = OUTLINED_FUNCTION_126_7(v17, v18, v19, v20, v21, v22, v23, v24, v57, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, __dst[0]);
      static ToolKitToolTypeIdentifier.Codable.== infix(_:_:)(v25);
LABEL_16:
      OUTLINED_FUNCTION_121();
      goto LABEL_17;
    default:
      if (v1 >> 61)
      {
LABEL_18:
        v0 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_114_10();
        LOBYTE(__dst[0]) = v4;
        v58 = v5;

        v14 = OUTLINED_FUNCTION_126_7(v6, v7, v8, v9, v10, v11, v12, v13, v58, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, __dst[0]);
        static ToolKitToolTypeIdentifier.Primitive.== infix(_:_:)(v14, v15);
        OUTLINED_FUNCTION_121();
LABEL_17:
      }

      return v0 & 1;
  }
}

uint64_t static ToolKitToolTypeIdentifier.Primitive.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = (*a2 >> 59) & 0x1E | (*a2 >> 2) & 1;
  switch((*a1 >> 59) & 0x1E | (*a1 >> 2) & 1)
  {
    case 1uLL:
      if (v3 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    case 2uLL:
      if (v3 != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 3uLL:
      if (v3 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 4uLL:
      if (v3 == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    case 5uLL:
      if (v3 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 6uLL:
      if (v3 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 7uLL:
      if (v3 != 7)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 8uLL:
      if (v3 != 8)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 9uLL:
      if (v3 != 9)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0xAuLL:
      if (v3 != 10)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0xBuLL:
      if (v3 != 11)
      {
        goto LABEL_15;
      }

      LOBYTE(v4) = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      OUTLINED_FUNCTION_107_12();

      OUTLINED_FUNCTION_148_7(v5, v6, v7, v8, v9, &type metadata for ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType);
      goto LABEL_13;
    case 0xCuLL:
      if (v3 != 12)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0xDuLL:
      if (v3 != 13)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0xEuLL:
      if (v3 != 14)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0xFuLL:
      if (v3 != 15)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x10uLL:
      if (v3 != 16)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x11uLL:
      if (v3 != 17)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x12uLL:
      if (v3 != 18)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x13uLL:
      if (v3 != 19)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x14uLL:
      if (v3 != 20)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x15uLL:
      if (v3 != 21)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x16uLL:
      if (v3 != 22)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x17uLL:
      if (v3 != 23)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 0x18uLL:
      if (v3 != 24)
      {
        goto LABEL_15;
      }

LABEL_11:
      v4 = *((v2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      goto LABEL_12;
    default:
      if (v3)
      {
LABEL_15:
        LOBYTE(v4) = 0;
      }

      else
      {
        v4 = *(v2 + 16);

LABEL_12:

        OUTLINED_FUNCTION_149_8();
LABEL_13:
        OUTLINED_FUNCTION_61_0();
      }

      return v4 & 1;
  }
}

BOOL static ToolKitToolTypeIdentifier.Builtin.== infix(_:_:)()
{
  OUTLINED_FUNCTION_163_7();
  v5 = (v2 >> 59) & 0x1E | (v2 >> 2) & 1;
  switch(v4 & 0xFFFFFFFE | (v3 >> 2) & 1)
  {
    case 1u:
      if (v5 == 1)
      {
        goto LABEL_22;
      }

      return 0;
    case 2u:
      if (v5 != 2)
      {
        return 0;
      }

      goto LABEL_22;
    case 3u:
      if (v5 == 3)
      {
        goto LABEL_22;
      }

      return 0;
    case 4u:
      if (v5 != 4)
      {
        return 0;
      }

      goto LABEL_22;
    case 5u:
      if (v5 != 5)
      {
        return 0;
      }

      goto LABEL_22;
    case 6u:
      if (v5 != 6)
      {
        return 0;
      }

      goto LABEL_22;
    case 7u:
      if (v5 != 7)
      {
        return 0;
      }

      goto LABEL_22;
    case 8u:
      if (v5 != 8)
      {
        return 0;
      }

      goto LABEL_22;
    case 9u:
      if (v5 != 9)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xAu:
      if (v5 != 10)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xBu:
      if (v5 != 11)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xCu:
      if (v5 != 12)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xDu:
      if (v5 != 13)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xEu:
      if (v5 != 14)
      {
        return 0;
      }

      goto LABEL_22;
    case 0xFu:
      if (v5 != 15)
      {
        return 0;
      }

      OUTLINED_FUNCTION_51_19();
      OUTLINED_FUNCTION_162_8();

      static ToolKitToolTypeIdentifier.== infix(_:_:)();
      OUTLINED_FUNCTION_120_7();
      goto LABEL_20;
    case 0x10u:
      if (v5 != 16)
      {
        return 0;
      }

LABEL_22:
      OUTLINED_FUNCTION_51_19();
      OUTLINED_FUNCTION_142_8();

      v8 = sub_1936D4500(v1, v3);

      return v8;
    default:
      if (v5)
      {
        return 0;
      }

      else
      {
        OUTLINED_FUNCTION_143_5();

        v6 = OUTLINED_FUNCTION_13_0();
        v0 = sub_1936D4500(v6, v7);

LABEL_20:
      }

      return v0;
  }
}

uint64_t ToolKitToolTypeIdentifier.hash(into:)()
{
  OUTLINED_FUNCTION_103_10();
  switch(v1)
  {
    case 1:
      v2 = v0 & 0x1FFFFFFFFFFFFFFFLL;
      v3 = *(v2 + 32);
      __dst[0] = *(v2 + 16);
      __dst[1] = v3;
      sub_1936D4670();
      break;
    case 2:
      *&__dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1936D461C();
      break;
    case 3:
      memcpy(__dst, ((v0 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
      memcpy(v5, __dst, sizeof(v5));
      sub_1936D45C8();
      break;
    case 4:
      __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1936D4574();
      break;
    default:
      *&__dst[0] = *(v0 + 16);
      sub_1936D46C4();
      break;
  }

  return sub_19393C540();
}

BOOL sub_1936D4500(uint64_t a1, uint64_t a2)
{
  sub_1936E31CC();
  sub_19393C680();
  sub_19393C680();
  return v4 == v3;
}

unint64_t sub_1936D4574()
{
  result = qword_1EAE408E0;
  if (!qword_1EAE408E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE408E0);
  }

  return result;
}

unint64_t sub_1936D45C8()
{
  result = qword_1EAE408E8;
  if (!qword_1EAE408E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE408E8);
  }

  return result;
}

unint64_t sub_1936D461C()
{
  result = qword_1EAE408F0;
  if (!qword_1EAE408F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE408F0);
  }

  return result;
}

unint64_t sub_1936D4670()
{
  result = qword_1EAE408F8;
  if (!qword_1EAE408F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE408F8);
  }

  return result;
}

unint64_t sub_1936D46C4()
{
  result = qword_1EAE40900;
  if (!qword_1EAE40900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40900);
  }

  return result;
}

BOOL sub_1936D4718(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();
  sub_19393C680();
  sub_19393C680();
  return v8 == v7;
}

uint64_t ToolKitToolTypeIdentifier.Primitive.hash(into:)()
{
  OUTLINED_FUNCTION_117_13();
  switch(v1 & 0xFFFFFFFE | (v0 >> 2) & 1)
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
      OUTLINED_FUNCTION_49_19();
      goto LABEL_3;
    case 0xBu:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_90_16();
      sub_1936D4880();
      break;
    default:
LABEL_3:
      OUTLINED_FUNCTION_65_18();
      sub_1936D482C();
      break;
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

unint64_t sub_1936D482C()
{
  result = qword_1EAE40908;
  if (!qword_1EAE40908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40908);
  }

  return result;
}

unint64_t sub_1936D4880()
{
  result = qword_1EAE40910;
  if (!qword_1EAE40910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40910);
  }

  return result;
}

uint64_t ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v145, v146, v147, v148, v149, v150);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v151 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v151, v152, v153, v154, &qword_1EAE40E80, &qword_19397F890);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v155, v156, v157, v158, v159, v160);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v30);
    OUTLINED_FUNCTION_31_17();
    v26 = sub_1934B0FCC(v161, v162, v163, v164, v165, v166);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v167 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v167, v168, v169, v170, &qword_1EAE40E80, &qword_19397F890);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v40);
    OUTLINED_FUNCTION_31_17();
    v36 = sub_1934B0FCC(v171, v172, v173, v174, v175, v176);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v177 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v177, v178, v179, v180, &qword_1EAE40E80, &qword_19397F890);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  OUTLINED_FUNCTION_171_4();
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v51);
    OUTLINED_FUNCTION_31_17();
    v47 = sub_1934B0FCC(v181, v182, v183, v184, v185, v186);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  OUTLINED_FUNCTION_170_5();
  if (!(v19 ^ v20 | v13))
  {
    v187 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v187, v188, v189, v190, &qword_1EAE40E80, &qword_19397F890);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  OUTLINED_FUNCTION_169_7();
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v63);
    OUTLINED_FUNCTION_31_17();
    v59 = sub_1934B0FCC(v191, v192, v193, v194, v195, v196);
    v62 = v59;
  }

  OUTLINED_FUNCTION_50(v59, v60, v61, v62);
  OUTLINED_FUNCTION_4(v64);
  OUTLINED_FUNCTION_99_3();
  if (!(v19 ^ v20 | v13))
  {
    v197 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_85(v197, v198, v199, v200, &qword_1EAE40E80, &qword_19397F890);
    v68 = v65;
  }

  OUTLINED_FUNCTION_47_5(v65, v66, v67, v68);
  OUTLINED_FUNCTION_4(v70);
  if (v0 + 12 > (v75 >> 1))
  {
    OUTLINED_FUNCTION_39(v75);
    OUTLINED_FUNCTION_31_17();
    v71 = sub_1934B0FCC(v201, v202, v203, v204, v205, v206);
    v74 = v71;
  }

  OUTLINED_FUNCTION_50(v71, v72, v73, v74);
  OUTLINED_FUNCTION_4(v76);
  if (v0 + 13 > (v81 >> 1))
  {
    v207 = OUTLINED_FUNCTION_39(v81);
    v77 = OUTLINED_FUNCTION_85(v207, v208, v209, v210, &qword_1EAE40E80, &qword_19397F890);
    v80 = v77;
  }

  OUTLINED_FUNCTION_47_5(v77, v78, v79, v80);
  OUTLINED_FUNCTION_4(v82);
  if (v0 + 14 > (v87 >> 1))
  {
    OUTLINED_FUNCTION_39(v87);
    OUTLINED_FUNCTION_31_17();
    v83 = sub_1934B0FCC(v211, v212, v213, v214, v215, v216);
    v86 = v83;
  }

  OUTLINED_FUNCTION_50(v83, v84, v85, v86);
  OUTLINED_FUNCTION_4(v88);
  if (v0 + 15 > (v93 >> 1))
  {
    v217 = OUTLINED_FUNCTION_39(v93);
    v89 = OUTLINED_FUNCTION_85(v217, v218, v219, v220, &qword_1EAE40E80, &qword_19397F890);
    v92 = v89;
  }

  OUTLINED_FUNCTION_47_5(v89, v90, v91, v92);
  OUTLINED_FUNCTION_4(v94);
  if (v0 + 16 > (v99 >> 1))
  {
    OUTLINED_FUNCTION_39(v99);
    OUTLINED_FUNCTION_31_17();
    v95 = sub_1934B0FCC(v221, v222, v223, v224, v225, v226);
    v98 = v95;
  }

  OUTLINED_FUNCTION_50(v95, v96, v97, v98);
  OUTLINED_FUNCTION_4(v100);
  if (v0 + 17 > (v105 >> 1))
  {
    v227 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_85(v227, v228, v229, v230, &qword_1EAE40E80, &qword_19397F890);
    v104 = v101;
  }

  OUTLINED_FUNCTION_47_5(v101, v102, v103, v104);
  OUTLINED_FUNCTION_4(v106);
  if (v0 + 18 > (v111 >> 1))
  {
    OUTLINED_FUNCTION_39(v111);
    OUTLINED_FUNCTION_31_17();
    v107 = sub_1934B0FCC(v231, v232, v233, v234, v235, v236);
    v110 = v107;
  }

  OUTLINED_FUNCTION_50(v107, v108, v109, v110);
  OUTLINED_FUNCTION_4(v112);
  if (v0 + 19 > (v117 >> 1))
  {
    v237 = OUTLINED_FUNCTION_39(v117);
    v113 = OUTLINED_FUNCTION_85(v237, v238, v239, v240, &qword_1EAE40E80, &qword_19397F890);
    v116 = v113;
  }

  OUTLINED_FUNCTION_47_5(v113, v114, v115, v116);
  OUTLINED_FUNCTION_4(v118);
  if (v0 + 20 > (v123 >> 1))
  {
    OUTLINED_FUNCTION_39(v123);
    OUTLINED_FUNCTION_31_17();
    v119 = sub_1934B0FCC(v241, v242, v243, v244, v245, v246);
    v122 = v119;
  }

  OUTLINED_FUNCTION_50(v119, v120, v121, v122);
  OUTLINED_FUNCTION_4(v124);
  if (v0 + 21 > (v129 >> 1))
  {
    v247 = OUTLINED_FUNCTION_39(v129);
    v125 = OUTLINED_FUNCTION_85(v247, v248, v249, v250, &qword_1EAE40E80, &qword_19397F890);
    v128 = v125;
  }

  OUTLINED_FUNCTION_47_5(v125, v126, v127, v128);
  OUTLINED_FUNCTION_4(v130);
  if (v0 + 22 > (v135 >> 1))
  {
    OUTLINED_FUNCTION_39(v135);
    OUTLINED_FUNCTION_31_17();
    v131 = sub_1934B0FCC(v251, v252, v253, v254, v255, v256);
    v134 = v131;
  }

  OUTLINED_FUNCTION_50(v131, v132, v133, v134);
  OUTLINED_FUNCTION_4(v136);
  if (v0 + 23 > (v141 >> 1))
  {
    v257 = OUTLINED_FUNCTION_39(v141);
    v137 = OUTLINED_FUNCTION_85(v257, v258, v259, v260, &qword_1EAE40E80, &qword_19397F890);
    v140 = v137;
  }

  OUTLINED_FUNCTION_47_5(v137, v138, v139, v140);
  return OUTLINED_FUNCTION_89_3(v142, v143);
}

void ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 7:
        OUTLINED_FUNCTION_151_8();
        break;
      case 0xFLL:
      case 0x13:
        OUTLINED_FUNCTION_38();
        break;
      case 0x11:
        OUTLINED_FUNCTION_133_10();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void ToolKitToolTypeIdentifier.Primitive.MeasurementUnitType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6874676E654CLL && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_21_38(0x6874676E654CLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 1936941389 && v0 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(1936941389, 0xE400000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x74617265706D6554 && v0 == 0xEB00000000657275;
        if (v8 || (OUTLINED_FUNCTION_0_9(0x74617265706D6554, 0xEB00000000657275) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x656D756C6F56 && v0 == 0xE600000000000000;
          if (v9 || (OUTLINED_FUNCTION_21_38(0x656D756C6F56) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0x6465657053 && v0 == 0xE500000000000000;
            if (v10 || (OUTLINED_FUNCTION_15_14(0x6465657053) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v11 = v1 == 0x796772656E45 && v0 == 0xE600000000000000;
              if (v11 || (OUTLINED_FUNCTION_21_38(0x796772656E45) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v12 = v1 == 0x6E6F697461727544 && v0 == 0xE800000000000000;
                if (v12 || (OUTLINED_FUNCTION_29_2(0x6E6F697461727544) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v13 = OUTLINED_FUNCTION_151_8();
                  v15 = v1 == v13 && v0 == v14;
                  if (v15 || (OUTLINED_FUNCTION_0_9(v13, v14) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v16 = v1 == 0x656C676E41 && v0 == 0xE500000000000000;
                    if (v16 || (OUTLINED_FUNCTION_15_14(0x656C676E41) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v17 = v1 == 1634038337 && v0 == 0xE400000000000000;
                      if (v17 || (OUTLINED_FUNCTION_0_9(1634038337, 0xE400000000000000) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v18 = v1 == 0xD000000000000011 && 0x8000000193A2E4B0 == v0;
                        if (v18 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A2E4B0) & 1) != 0)
                        {

                          v5 = 10;
                        }

                        else
                        {
                          v19 = v1 == 0x6973726570736944 && v0 == 0xEA00000000006E6FLL;
                          if (v19 || (OUTLINED_FUNCTION_0_9(0x6973726570736944, 0xEA00000000006E6FLL) & 1) != 0)
                          {

                            v5 = 11;
                          }

                          else
                          {
                            v20 = v1 == 0x6369727463656C45 && v0 == 0xEE00656772616843;
                            if (v20 || (OUTLINED_FUNCTION_0_9(0x6369727463656C45, 0xEE00656772616843) & 1) != 0)
                            {

                              v5 = 12;
                            }

                            else
                            {
                              v21 = v1 == 0x6369727463656C45 && v0 == 0xEF746E6572727543;
                              if (v21 || (OUTLINED_FUNCTION_0_9(0x6369727463656C45, 0xEF746E6572727543) & 1) != 0)
                              {

                                v5 = 13;
                              }

                              else
                              {
                                v22 = v1 == 0xD00000000000001BLL && 0x8000000193A2E490 == v0;
                                if (v22 || (OUTLINED_FUNCTION_0_9(0xD00000000000001BLL, 0x8000000193A2E490) & 1) != 0)
                                {

                                  v5 = 14;
                                }

                                else
                                {
                                  v23 = v1 == 0xD000000000000012 && 0x8000000193A2E470 == v0;
                                  if (v23 || (OUTLINED_FUNCTION_25_7(18, 0x8000000193A2E470) & 1) != 0)
                                  {

                                    v5 = 15;
                                  }

                                  else
                                  {
                                    v24 = v1 == 0x636E657571657246 && v0 == 0xE900000000000079;
                                    if (v24 || (OUTLINED_FUNCTION_30_22(0x636E657571657246, 121) & 1) != 0)
                                    {

                                      v5 = 16;
                                    }

                                    else
                                    {
                                      v25 = OUTLINED_FUNCTION_133_10();
                                      v27 = v1 == v25 && v0 == v26;
                                      if (v27 || (OUTLINED_FUNCTION_0_9(v25, v26) & 1) != 0)
                                      {

                                        v5 = 17;
                                      }

                                      else
                                      {
                                        v28 = v1 == 0x616E696D756C6C49 && v0 == 0xEB0000000065636ELL;
                                        if (v28 || (OUTLINED_FUNCTION_0_9(0x616E696D756C6C49, 0xEB0000000065636ELL) & 1) != 0)
                                        {

                                          v5 = 18;
                                        }

                                        else
                                        {
                                          v29 = v1 == 0xD000000000000012 && 0x8000000193A2E450 == v0;
                                          if (v29 || (OUTLINED_FUNCTION_25_7(18, 0x8000000193A2E450) & 1) != 0)
                                          {

                                            v5 = 19;
                                          }

                                          else
                                          {
                                            v30 = v1 == 0x7265776F50 && v0 == 0xE500000000000000;
                                            if (v30 || (OUTLINED_FUNCTION_15_14(0x7265776F50) & 1) != 0)
                                            {

                                              v5 = 20;
                                            }

                                            else if (v1 == 0x6572757373657250 && v0 == 0xE800000000000000)
                                            {

                                              v5 = 21;
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_29_2(0x6572757373657250);
                                              OUTLINED_FUNCTION_61_0();

                                              v5 = 21;
                                              if ((v1 & 1) == 0)
                                              {
                                                v5 = 0;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolTypeIdentifier.Builtin.hash(into:)()
{
  OUTLINED_FUNCTION_117_13();
  switch(v1 & 0xFFFFFFFE | (v0 >> 2) & 1)
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0x10u:
      OUTLINED_FUNCTION_49_19();
      goto LABEL_3;
    case 0xFu:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_102_15();
      v2 = sub_1936E00CC();
      v3 = v2;
      v4 = &type metadata for ToolKitToolTypeIdentifier;
      break;
    default:
LABEL_3:
      OUTLINED_FUNCTION_102_15();
      v2 = sub_1936D482C();
      v3 = v2;
      v4 = &type metadata for ToolKitToolNullValue;
      break;
  }

  return OUTLINED_FUNCTION_154_0(v2, v4, v3);
}

BOOL static ToolKitToolSystemTypeProtocol.== infix(_:_:)()
{
  OUTLINED_FUNCTION_163_7();
  v5 = (v2 >> 59) & 0x1E | (v2 >> 2) & 1;
  switch(v4 & 0xFFFFFFFE | (v3 >> 2) & 1)
  {
    case 1u:
      if (v5 == 1)
      {
        goto LABEL_35;
      }

      return 0;
    case 2u:
      if (v5 != 2)
      {
        return 0;
      }

      goto LABEL_35;
    case 3u:
      if (v5 != 3)
      {
        return 0;
      }

      goto LABEL_35;
    case 4u:
      if (v5 != 4)
      {
        return 0;
      }

      goto LABEL_35;
    case 5u:
      if (v5 != 5)
      {
        return 0;
      }

      goto LABEL_35;
    case 6u:
      if (v5 == 6)
      {
        goto LABEL_35;
      }

      return 0;
    case 7u:
      if (v5 != 7)
      {
        return 0;
      }

      goto LABEL_35;
    case 8u:
      if (v5 != 8)
      {
        return 0;
      }

      goto LABEL_35;
    case 9u:
      if (v5 != 9)
      {
        return 0;
      }

      OUTLINED_FUNCTION_51_19();
      *__dst = *((v3 & v8) + 0x10);
      *v42 = *((v2 & v8) + 0x10);

      v17 = OUTLINED_FUNCTION_270_0(v9, v10, v11, v12, v13, v14, v15, v16, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], __dst[0]);
      static ToolKitToolSystemTypeProtocol.IntentUpdatableEntity.== infix(_:_:)(v17);
      goto LABEL_32;
    case 0xAu:
      if (v5 != 10)
      {
        return 0;
      }

      goto LABEL_35;
    case 0xBu:
      if (v5 != 11)
      {
        return 0;
      }

      goto LABEL_35;
    case 0xCu:
      if (v5 != 12)
      {
        return 0;
      }

      goto LABEL_35;
    case 0xDu:
      if (v5 != 13)
      {
        return 0;
      }

      OUTLINED_FUNCTION_51_19();
      v30 = v3 & v29;
      memcpy(v42, ((v2 & v29) + 16), sizeof(v42));
      memcpy(__dst, (v30 + 16), sizeof(__dst));

      v39 = OUTLINED_FUNCTION_270_0(v31, v32, v33, v34, v35, v36, v37, v38, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], __dst[0]);
      static ToolKitToolSystemTypeProtocol.AssistantSchema.== infix(_:_:)(v39);
      goto LABEL_32;
    case 0xEu:
      if (v5 != 14)
      {
        return 0;
      }

      goto LABEL_35;
    case 0xFu:
      if (v5 != 15)
      {
        return 0;
      }

      OUTLINED_FUNCTION_51_19();
      OUTLINED_FUNCTION_162_8();
      __dst[0] = v18;
      v42[0] = v19;

      v28 = OUTLINED_FUNCTION_270_0(v20, v21, v22, v23, v24, v25, v26, v27, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], __dst[0]);
      static ToolKitToolSystemTypeProtocol.PersistentFileIdentifiable.== infix(_:_:)(v28);
LABEL_32:
      OUTLINED_FUNCTION_120_7();
      goto LABEL_33;
    case 0x10u:
      if (v5 != 16)
      {
        return 0;
      }

      goto LABEL_35;
    case 0x11u:
      if (v5 != 17)
      {
        return 0;
      }

LABEL_35:
      OUTLINED_FUNCTION_51_19();
      OUTLINED_FUNCTION_142_8();

      v40 = sub_1936D4500(v1, v3);

      return v40;
    default:
      if (v5)
      {
        return 0;
      }

      else
      {
        OUTLINED_FUNCTION_143_5();

        v6 = OUTLINED_FUNCTION_13_0();
        v0 = sub_1936D4500(v6, v7);

LABEL_33:
      }

      return v0;
  }
}

uint64_t ToolKitToolSystemTypeProtocol.hash(into:)()
{
  OUTLINED_FUNCTION_117_13();
  switch(v1 & 0xFFFFFFFE | (v0 >> 2) & 1)
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0x10u:
    case 0x11u:
      OUTLINED_FUNCTION_49_19();
      goto LABEL_3;
    case 9u:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_93_10(v4);
      sub_1936E01C8();
      break;
    case 0xDu:
      OUTLINED_FUNCTION_49_19();
      memcpy(__dst, (v3 + 16), sizeof(__dst));
      memcpy(v5, __dst, sizeof(v5));
      sub_1936E0174();
      break;
    case 0xFu:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_82_13();
      sub_1936E0120();
      break;
    default:
LABEL_3:
      OUTLINED_FUNCTION_82_13();
      sub_1936D482C();
      break;
  }

  return sub_19393C540();
}

uint64_t static ToolKitToolTypeDefinition.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_64_15();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_213();
      if (!v16)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_16_33();
      v79 = memcpy(v77, v78, 0x60uLL);
      v87 = OUTLINED_FUNCTION_166_6(v79, v80, v81, v82, v83, v84, v85, v86, v98, v104, v109, v114, v119, v125, v130, v136, v141, v146, v151, v156, v161);
      memcpy(v87, v88, 0x60uLL);

      OUTLINED_FUNCTION_109(v89, v90, v91, v92, v93, v94, v95, v96, v103, v108, v113, v118, v124, v129, v135, v140, v145, v150, v155, v160, v166);
      static ToolKitToolTypeDefinition.Version1.Entity.== infix(_:_:)();
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_215_2();
      if (!v16)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_16_33();
      v37 = memcpy(v35, v36, 0x58uLL);
      v45 = OUTLINED_FUNCTION_166_6(v37, v38, v39, v40, v41, v42, v43, v44, v98, v104, v109, v114, v119, v125, v130, v136, v141, v146, v151, v156, v161);
      memcpy(v45, v46, 0x58uLL);

      OUTLINED_FUNCTION_109(v47, v48, v49, v50, v51, v52, v53, v54, v101, v106, v111, v116, v122, v127, v133, v138, v143, v148, v153, v158, v164);
      static ToolKitToolTypeDefinition.Version1.Enumeration.== infix(_:_:)();
      goto LABEL_16;
    case 3:
      OUTLINED_FUNCTION_217_1();
      if (!v16)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_16_33();
      v57 = memcpy(v55, v56, 0x50uLL);
      v65 = OUTLINED_FUNCTION_166_6(v57, v58, v59, v60, v61, v62, v63, v64, v98, v104, v109, v114, v119, v125, v130, v136, v141, v146, v151, v156, v161);
      memcpy(v65, v66, 0x50uLL);

      v75 = OUTLINED_FUNCTION_109(v67, v68, v69, v70, v71, v72, v73, v74, v102, v107, v112, v117, v123, v128, v134, v139, v144, v149, v154, v159, v165);
      static ToolKitToolTypeDefinition.Version1.Query.== infix(_:_:)(v75, v76);
      goto LABEL_16;
    case 4:
      OUTLINED_FUNCTION_216_1();
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v163 = *(v17 + 16);
      v167 = *(v17 + 32);
      v168 = *(v17 + 48);
      v169 = *(v17 + 64);
      OUTLINED_FUNCTION_96_14();
      v120 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v131 = v18;

      v27 = OUTLINED_FUNCTION_109(v19, v20, v21, v22, v23, v24, v25, v26, v98, v104, v109, v114, v120, *(&v120 + 1), v131, v136, v141, v146, v151, v156, v163);
      static ToolKitToolTypeDefinition.Version1.Codable.== infix(_:_:)(v27, v28, v29, v30, v31, v32, v33, v34, v100, v105, v110, v115, v121, v126, v132, v137, v142, v147, v152, v157, v163, *(&v163 + 1), v167, *(&v167 + 1), v168, *(&v168 + 1), v169, v170, v171, v172, v173, v174);
LABEL_16:
      OUTLINED_FUNCTION_121();
      goto LABEL_17;
    default:
      if (v1 >> 61)
      {
LABEL_18:
        v0 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_114_10();
        v162 = v4;
        v99 = v5;

        v14 = OUTLINED_FUNCTION_109(v6, v7, v8, v9, v10, v11, v12, v13, v99, v104, v109, v114, v119, v125, v130, v136, v141, v146, v151, v156, v162);
        static ToolKitToolTypeIdentifier.Primitive.== infix(_:_:)(v14, v15);
        OUTLINED_FUNCTION_121();
LABEL_17:
      }

      return v0 & 1;
  }
}

uint64_t ToolKitToolTypeDefinition.Version1.hash(into:)()
{
  OUTLINED_FUNCTION_103_10();
  switch(v9)
  {
    case 1:
      v18 = OUTLINED_FUNCTION_116_12(v0, v1, v2, v3, v4, v5, v6, v7, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], __src[0]);
      memcpy(v18, v19, 0x60uLL);
      memcpy(v21, __src, sizeof(v21));
      sub_1936E0318();
      break;
    case 2:
      v14 = OUTLINED_FUNCTION_116_12(v0, v1, v2, v3, v4, v5, v6, v7, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], __src[0]);
      memcpy(v14, v15, 0x58uLL);
      memcpy(v21, __src, 0x58uLL);
      sub_1936E02C4();
      break;
    case 3:
      v16 = OUTLINED_FUNCTION_116_12(v0, v1, v2, v3, v4, v5, v6, v7, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], __src[0]);
      memcpy(v16, v17, 0x50uLL);
      memcpy(v21, __src, 0x50uLL);
      sub_1936E0270();
      break;
    case 4:
      v10 = v8 & 0x1FFFFFFFFFFFFFFFLL;
      v11 = *(v10 + 64);
      v12 = *(v10 + 32);
      v13 = *(v10 + 48);
      __src[0] = *(v10 + 16);
      __src[1] = v12;
      __src[2] = v13;
      *&__src[3] = v11;
      sub_1936E021C();
      break;
    default:
      *&__src[0] = *(v8 + 16);
      sub_1936D46C4();
      break;
  }

  return sub_19393C540();
}

void ToolKitToolTypeDefinition.Version1.Entity.RuntimeFlags.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.RuntimeFlags.rawValue.getter()
{
  if (v0[8])
  {
    return 1;
  }

  else
  {
    return *v0;
  }
}

uint64_t ToolKitToolTypeDefinition.Version1.Entity.RuntimeFlags.description.getter()
{
  if (*(v0 + 8))
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

void ToolKitToolTypeDefinition.Version1.Entity.RuntimeFlags.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 0xD000000000000012 ? (v5 = 0x8000000193A2E4D0 == v0) : (v5 = 0), v5))
  {
  }

  else
  {
    OUTLINED_FUNCTION_25_7(18, 0x8000000193A2E4D0);
    OUTLINED_FUNCTION_61_0();
  }

  OUTLINED_FUNCTION_53_22();
}

void ToolKitToolTypeDefinition.Version1.Enumeration.Kind.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t ToolKitToolTypeDefinition.Version1.Enumeration.Kind.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6E456E6F69746341;
  if (*v0 != 1)
  {
    v1 = 0x4572656767697254;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D756E45707041;
  }
}

void ToolKitToolTypeDefinition.Version1.Enumeration.Kind.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6D756E45707041 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x6D756E45707041) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x6E456E6F69746341 && v0 == 0xEA00000000006D75;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x6E456E6F69746341, 0xEA00000000006D75) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x4572656767697254 && v0 == 0xEB000000006D756ELL)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x4572656767697254, 0xEB000000006D756ELL);
        OUTLINED_FUNCTION_61_0();

        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t static ToolKitToolTypedValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_64_15();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_213();
      if (!v16)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_33();
      v82 = memcpy(v80, v81, 0x68uLL);
      v90 = OUTLINED_FUNCTION_160_7(v82, v83, v84, v85, v86, v87, v88, v89, v133, v140, v145, v152, v157, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v228);
      memcpy(v90, v91, 0x68uLL);

      v100 = OUTLINED_FUNCTION_83_19(v92, v93, v94, v95, v96, v97, v98, v99, v138, v143, v149, v155, v161, v166, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v221, v226, v234);
      static ToolKitToolTypedValue.EnumerationValue.== infix(_:_:)(v100);
      goto LABEL_24;
    case 2:
      OUTLINED_FUNCTION_215_2();
      if (!v16)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_33();
      v31 = memcpy(v29, v30, 0x90uLL);
      v39 = OUTLINED_FUNCTION_160_7(v31, v32, v33, v34, v35, v36, v37, v38, v133, v140, v145, v152, v157, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v228);
      memcpy(v39, v40, 0x90uLL);

      OUTLINED_FUNCTION_83_19(v41, v42, v43, v44, v45, v46, v47, v48, v135, v141, v146, v153, v159, v164, v169, v174, v179, v184, v189, v194, v199, v204, v209, v214, v219, v224, v231);
      static ToolKitToolTypedValue.EntityValue.== infix(_:_:)();
      goto LABEL_24;
    case 3:
      OUTLINED_FUNCTION_217_1();
      if (!v16)
      {
        goto LABEL_26;
      }

      v49 = v1 & 0x1FFFFFFFFFFFFFFFLL;
      v232 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v136 = *(v49 + 16);
      v147 = *(v49 + 32);

      v58 = OUTLINED_FUNCTION_83_19(v50, v51, v52, v53, v54, v55, v56, v57, v136, *(&v136 + 1), v147, v152, v157, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v232);
      static ToolKitToolTypedValue.CollectionValue.== infix(_:_:)(v58);
      goto LABEL_24;
    case 4:
      OUTLINED_FUNCTION_216_1();
      if (!v16)
      {
        goto LABEL_26;
      }

      v230 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_96_14();
      v158 = v17;
      LOBYTE(v163) = v18;

      v27 = OUTLINED_FUNCTION_83_19(v19, v20, v21, v22, v23, v24, v25, v26, v133, v140, v145, v152, v158, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v230);
      static ToolKitToolTypedValue.QueryValue.== infix(_:_:)(v27, v28);
      goto LABEL_24;
    case 5:
      if (v1 >> 61 != 5)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_33();
      v103 = memcpy(v101, v102, 0x68uLL);
      v111 = OUTLINED_FUNCTION_160_7(v103, v104, v105, v106, v107, v108, v109, v110, v133, v140, v145, v152, v157, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v228);
      memcpy(v111, v112, 0x68uLL);

      v121 = OUTLINED_FUNCTION_83_19(v113, v114, v115, v116, v117, v118, v119, v120, v139, v144, v150, v156, v162, v167, v172, v177, v182, v187, v192, v197, v202, v207, v212, v217, v222, v227, v235);
      static ToolKitToolTypedValue.EntityIdentifierValue.== infix(_:_:)(v121);
      goto LABEL_24;
    case 6:
      OUTLINED_FUNCTION_214_0();
      if (!v16)
      {
        goto LABEL_26;
      }

      v236 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_297();
      v151 = v122;

      v131 = OUTLINED_FUNCTION_83_19(v123, v124, v125, v126, v127, v128, v129, v130, v133, v140, v151, v152, v157, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v236);
      static ToolKitToolTypedValue.DeferredValue.== infix(_:_:)(v131);
      goto LABEL_24;
    case 7:
      OUTLINED_FUNCTION_214_0();
      if (!(!v16 & v59))
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_16_33();
      v62 = memcpy(v60, v61, 0x70uLL);
      v70 = OUTLINED_FUNCTION_160_7(v62, v63, v64, v65, v66, v67, v68, v69, v133, v140, v145, v152, v157, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v228);
      memcpy(v70, v71, 0x70uLL);

      OUTLINED_FUNCTION_83_19(v72, v73, v74, v75, v76, v77, v78, v79, v137, v142, v148, v154, v160, v165, v170, v175, v180, v185, v190, v195, v200, v205, v210, v215, v220, v225, v233);
      static ToolKitToolTypedValue.CodableValue.== infix(_:_:)();
LABEL_24:
      OUTLINED_FUNCTION_121();
      goto LABEL_25;
    default:
      if (v1 >> 61)
      {
LABEL_26:
        v0 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_114_10();
        v229 = v4;
        v134 = v5;

        v14 = OUTLINED_FUNCTION_83_19(v6, v7, v8, v9, v10, v11, v12, v13, v134, v140, v145, v152, v157, v163, v168, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v229);
        static ToolKitToolTypedValue.PrimitiveValue.== infix(_:_:)(v14, v15);
        OUTLINED_FUNCTION_121();
LABEL_25:
      }

      return v0 & 1;
  }
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.== infix(_:_:)(unint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch((*a1 >> 59) & 0x1E | (*a1 >> 2) & 1)
  {
    case 1uLL:
      OUTLINED_FUNCTION_13_45();
      if (v141 != 1)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_51_19();
      v2 = *((v4 & v142) + 0x10) ^ *((v5 & v142) + 0x10) ^ 1;
      return v2 & 1;
    case 2uLL:
      OUTLINED_FUNCTION_13_45();
      if (v116 == 2)
      {
        goto LABEL_21;
      }

      goto LABEL_58;
    case 3uLL:
      OUTLINED_FUNCTION_13_45();
      if (v138 != 3)
      {
        goto LABEL_58;
      }

LABEL_21:
      OUTLINED_FUNCTION_51_19();
      v2 = *((v4 & v139) + 0x10) == *((v5 & v139) + 0x10);
      return v2 & 1;
    case 4uLL:
      OUTLINED_FUNCTION_13_45();
      if (v73 != 4)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v76 = memcpy(v74, v75, 0x5AuLL);
      v84 = OUTLINED_FUNCTION_70_13(v76, v77, v78, v79, v80, v81, v82, v83, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v84, v85, 0x5AuLL);

      OUTLINED_FUNCTION_61_20(v86, v87, v88, v89, v90, v91, v92, v93, v314, v329, v341, v355, v366, v377, v389, v401, v413, v425, v437, v449, v461, v473, v485, v497, v509, v521, v533, v545, v557, v569, v581, v593, v605, v617, v629, v641, v653, v665, v677, v689, v701, v713, v725, v737, v749, v761, v773, v785, v797, v809, v821, v833, v845, v857, v869, v881, v893, v905, v917, v929, v941, v953, v965);
      static ToolKitToolTypedValue.PrimitiveValue.Decimal.== infix(_:_:)();
      goto LABEL_56;
    case 5uLL:
      OUTLINED_FUNCTION_13_45();
      if (v173 != 5)
      {
        goto LABEL_58;
      }

      goto LABEL_43;
    case 6uLL:
      OUTLINED_FUNCTION_13_45();
      if (v208 != 6)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_19_45();
      v971 = *(v3 + 16);
      v319 = *((v5 & v209) + 0x10);
      LODWORD(v325) = *((v5 & v209) + 0x18);

      v218 = OUTLINED_FUNCTION_61_20(v210, v211, v212, v213, v214, v215, v216, v217, v319, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v971);
      static ToolKitToolTimestamp.== infix(_:_:)(v218, v219);
      goto LABEL_56;
    case 7uLL:
      OUTLINED_FUNCTION_13_45();
      if (v140 != 7)
      {
        goto LABEL_58;
      }

      goto LABEL_27;
    case 8uLL:
      OUTLINED_FUNCTION_13_45();
      if (v251 != 8)
      {
        goto LABEL_58;
      }

LABEL_43:
      OUTLINED_FUNCTION_51_19();
      OUTLINED_FUNCTION_181_6();
      v254 = v254 && v252 == v253;
      if (v254)
      {
        v2 = 1;
        return v2 & 1;
      }

      else
      {

        return sub_19393CA30();
      }

    case 9uLL:
      OUTLINED_FUNCTION_13_45();
      if (v115 != 9)
      {
        goto LABEL_58;
      }

      goto LABEL_27;
    case 0xAuLL:
      OUTLINED_FUNCTION_13_45();
      if (v241 != 10)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_19_45();
      v973 = *(v3 + 16);
      v321 = *((v5 & v242) + 0x10);
      v347 = *((v5 & v242) + 0x20);
      v351[0] = *((v5 & v242) + 0x28);
      *&v351[8] = *((v5 & v242) + 0x30);
      v351[16] = *((v5 & v242) + 0x38);
      v351[17] = *((v5 & v242) + 0x39);

      OUTLINED_FUNCTION_61_20(v243, v244, v245, v246, v247, v248, v249, v250, v321, *(&v321 + 1), v347, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v973);
      static ToolKitToolTypedValue.PrimitiveValue.Measurement.== infix(_:_:)();
      goto LABEL_56;
    case 0xBuLL:
      OUTLINED_FUNCTION_13_45();
      if (v52 != 11)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v55 = memcpy(v53, v54, 0xC0uLL);
      v63 = OUTLINED_FUNCTION_70_13(v55, v56, v57, v58, v59, v60, v61, v62, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v63, v64, 0xC0uLL);

      OUTLINED_FUNCTION_61_20(v65, v66, v67, v68, v69, v70, v71, v72, v313, v328, v340, v354, v365, v376, v388, v400, v412, v424, v436, v448, v460, v472, v484, v496, v508, v520, v532, v544, v556, v568, v580, v592, v604, v616, v628, v640, v652, v664, v676, v688, v700, v712, v724, v736, v748, v760, v772, v784, v796, v808, v820, v832, v844, v856, v868, v880, v892, v904, v916, v928, v940, v952, v964);
      static ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount.== infix(_:_:)();
      goto LABEL_56;
    case 0xCuLL:
      OUTLINED_FUNCTION_13_45();
      if (v94 != 12)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v97 = memcpy(v95, v96, 0x70uLL);
      v105 = OUTLINED_FUNCTION_70_13(v97, v98, v99, v100, v101, v102, v103, v104, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v105, v106, 0x70uLL);

      OUTLINED_FUNCTION_61_20(v107, v108, v109, v110, v111, v112, v113, v114, v315, v330, v342, v356, v367, v378, v390, v402, v414, v426, v438, v450, v462, v474, v486, v498, v510, v522, v534, v546, v558, v570, v582, v594, v606, v618, v630, v642, v654, v666, v678, v690, v702, v714, v726, v738, v750, v762, v774, v786, v798, v810, v822, v834, v846, v858, v870, v882, v894, v906, v918, v930, v942, v954, v966);
      static ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.== infix(_:_:)();
      goto LABEL_56;
    case 0xDuLL:
      OUTLINED_FUNCTION_13_45();
      if (v187 != 13)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v190 = memcpy(v188, v189, 0x6AuLL);
      v198 = OUTLINED_FUNCTION_70_13(v190, v191, v192, v193, v194, v195, v196, v197, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v198, v199, 0x6AuLL);

      OUTLINED_FUNCTION_61_20(v200, v201, v202, v203, v204, v205, v206, v207, v318, v333, v345, v359, v370, v381, v393, v405, v417, v429, v441, v453, v465, v477, v489, v501, v513, v525, v537, v549, v561, v573, v585, v597, v609, v621, v633, v645, v657, v669, v681, v693, v705, v717, v729, v741, v753, v765, v777, v789, v801, v813, v825, v837, v849, v861, v873, v885, v897, v909, v921, v933, v945, v957, v970);
      static ToolKitToolTypedValue.PrimitiveValue.Placemark.== infix(_:_:)();
      goto LABEL_56;
    case 0xEuLL:
      OUTLINED_FUNCTION_13_45();
      if (v31 != 14)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v34 = memcpy(v32, v33, 0x1A2uLL);
      v42 = OUTLINED_FUNCTION_70_13(v34, v35, v36, v37, v38, v39, v40, v41, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v42, v43, 0x1A2uLL);

      OUTLINED_FUNCTION_61_20(v44, v45, v46, v47, v48, v49, v50, v51, v312, v327, v339, v353, v364, v375, v387, v399, v411, v423, v435, v447, v459, v471, v483, v495, v507, v519, v531, v543, v555, v567, v579, v591, v603, v615, v627, v639, v651, v663, v675, v687, v699, v711, v723, v735, v747, v759, v771, v783, v795, v807, v819, v831, v843, v855, v867, v879, v891, v903, v915, v927, v939, v951, v963);
      static ToolKitToolTypedValue.PrimitiveValue.Person.== infix(_:_:)();
      goto LABEL_56;
    case 0xFuLL:
      OUTLINED_FUNCTION_13_45();
      if (v117 != 15)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v120 = memcpy(v118, v119, 0x70uLL);
      v128 = OUTLINED_FUNCTION_70_13(v120, v121, v122, v123, v124, v125, v126, v127, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v128, v129, 0x70uLL);

      OUTLINED_FUNCTION_61_20(v130, v131, v132, v133, v134, v135, v136, v137, v316, v331, v343, v357, v368, v379, v391, v403, v415, v427, v439, v451, v463, v475, v487, v499, v511, v523, v535, v547, v559, v571, v583, v595, v607, v619, v631, v643, v655, v667, v679, v691, v703, v715, v727, v739, v751, v763, v775, v787, v799, v811, v823, v835, v847, v859, v871, v883, v895, v907, v919, v931, v943, v955, v967);
      static ToolKitToolTypedValue.PrimitiveValue.File.== infix(_:_:)();
      goto LABEL_56;
    case 0x10uLL:
      OUTLINED_FUNCTION_13_45();
      if (v9 != 16)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v12 = memcpy(v10, v11, 0x60uLL);
      v20 = OUTLINED_FUNCTION_70_13(v12, v13, v14, v15, v16, v17, v18, v19, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v20, v21, 0x60uLL);

      v30 = OUTLINED_FUNCTION_61_20(v22, v23, v24, v25, v26, v27, v28, v29, v311, v326, v338, v352, v363, v374, v386, v398, v410, v422, v434, v446, v458, v470, v482, v494, v506, v518, v530, v542, v554, v566, v578, v590, v602, v614, v626, v638, v650, v662, v674, v686, v698, v710, v722, v734, v746, v758, v770, v782, v794, v806, v818, v830, v842, v854, v866, v878, v890, v902, v914, v926, v938, v950, v962);
      static ToolKitToolTypedValue.PrimitiveValue.App.== infix(_:_:)(v30);
      goto LABEL_56;
    case 0x11uLL:
      OUTLINED_FUNCTION_13_45();
      if (v143 != 17)
      {
        goto LABEL_58;
      }

LABEL_27:
      OUTLINED_FUNCTION_51_19();
      v145 = v4 & v144;
      v147 = *((v4 & v144) + 0x10);
      v146 = *(v145 + 24);
      v148 = v5 & v144;
      v149 = *(v148 + 16);
      v150 = *(v148 + 24);

      sub_193450688(v149, v150);
      LOBYTE(v146) = MEMORY[0x193B172A0](v147, v146, v149, v150);
      sub_193446A6C(v149, v150);

      return v146 & 1;
    case 0x12uLL:
      OUTLINED_FUNCTION_13_45();
      if (v220 != 18)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v223 = memcpy(v221, v222, 0x139uLL);
      v231 = OUTLINED_FUNCTION_70_13(v223, v224, v225, v226, v227, v228, v229, v230, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v231, v232, 0x139uLL);

      OUTLINED_FUNCTION_61_20(v233, v234, v235, v236, v237, v238, v239, v240, v320, v334, v346, v360, v371, v382, v394, v406, v418, v430, v442, v454, v466, v478, v490, v502, v514, v526, v538, v550, v562, v574, v586, v598, v610, v622, v634, v646, v658, v670, v682, v694, v706, v718, v730, v742, v754, v766, v778, v790, v802, v814, v826, v838, v850, v862, v874, v886, v898, v910, v922, v934, v946, v958, v972);
      static ToolKitToolTypedValue.PrimitiveValue.DateComponents.== infix(_:_:)();
      goto LABEL_56;
    case 0x13uLL:
      OUTLINED_FUNCTION_13_45();
      if (v276 != 19)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v279 = memcpy(v277, v278, 0x60uLL);
      v287 = OUTLINED_FUNCTION_70_13(v279, v280, v281, v282, v283, v284, v285, v286, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v287, v288, 0x60uLL);

      v297 = OUTLINED_FUNCTION_61_20(v289, v290, v291, v292, v293, v294, v295, v296, v323, v336, v349, v362, v373, v384, v396, v408, v420, v432, v444, v456, v468, v480, v492, v504, v516, v528, v540, v552, v564, v576, v588, v600, v612, v624, v636, v648, v660, v672, v684, v696, v708, v720, v732, v744, v756, v768, v780, v792, v804, v816, v828, v840, v852, v864, v876, v888, v900, v912, v924, v936, v948, v960, v975);
      static ToolKitToolTypedValue.PrimitiveValue.Shortcut.== infix(_:_:)(v297);
      goto LABEL_56;
    case 0x14uLL:
      OUTLINED_FUNCTION_13_45();
      if (v152 != 20)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v155 = memcpy(v153, v154, 0xF8uLL);
      v163 = OUTLINED_FUNCTION_70_13(v155, v156, v157, v158, v159, v160, v161, v162, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v163, v164, 0xF8uLL);

      OUTLINED_FUNCTION_61_20(v165, v166, v167, v168, v169, v170, v171, v172, v317, v332, v344, v358, v369, v380, v392, v404, v416, v428, v440, v452, v464, v476, v488, v500, v512, v524, v536, v548, v560, v572, v584, v596, v608, v620, v632, v644, v656, v668, v680, v692, v704, v716, v728, v740, v752, v764, v776, v788, v800, v812, v824, v836, v848, v860, v872, v884, v896, v908, v920, v932, v944, v956, v968);
      static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.== infix(_:_:)();
      goto LABEL_56;
    case 0x15uLL:
      OUTLINED_FUNCTION_13_45();
      if (v174 != 21)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_19_45();
      v176 = v5 & v175;
      OUTLINED_FUNCTION_97_8();
      *&v351[1] = *(v176 + 41);
      v969 = *(v3 + 16);

      v185 = OUTLINED_FUNCTION_61_20(v177, v178, v179, v180, v181, v182, v183, v184, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v969);
      static ToolKitToolTypedValue.PrimitiveValue.DateInterval.== infix(_:_:)(v185, v186);
      goto LABEL_56;
    case 0x16uLL:
      OUTLINED_FUNCTION_13_45();
      if (v255 != 22)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_2_64();
      v258 = memcpy(v256, v257, 0xC0uLL);
      v266 = OUTLINED_FUNCTION_70_13(v258, v259, v260, v261, v262, v263, v264, v265, v310, v325, v337, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v961);
      memcpy(v266, v267, 0xC0uLL);

      OUTLINED_FUNCTION_61_20(v268, v269, v270, v271, v272, v273, v274, v275, v322, v335, v348, v361, v372, v383, v395, v407, v419, v431, v443, v455, v467, v479, v491, v503, v515, v527, v539, v551, v563, v575, v587, v599, v611, v623, v635, v647, v659, v671, v683, v695, v707, v719, v731, v743, v755, v767, v779, v791, v803, v815, v827, v839, v851, v863, v875, v887, v899, v911, v923, v935, v947, v959, v974);
      static ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents.== infix(_:_:)();
      goto LABEL_56;
    case 0x17uLL:
      OUTLINED_FUNCTION_13_45();
      if (v298 != 23)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_19_45();
      v976 = *(v3 + 16);
      v324 = *((v5 & v299) + 0x10);
      LOBYTE(v325) = *((v5 & v299) + 0x18);
      v350 = *((v5 & v299) + 0x20);
      v351[0] = *((v5 & v299) + 0x28);

      v308 = OUTLINED_FUNCTION_61_20(v300, v301, v302, v303, v304, v305, v306, v307, v324, v325, v350, *v351, *&v351[8], *&v351[16], v385, v397, v409, v421, v433, v445, v457, v469, v481, v493, v505, v517, v529, v541, v553, v565, v577, v589, v601, v613, v625, v637, v649, v661, v673, v685, v697, v709, v721, v733, v745, v757, v769, v781, v793, v805, v817, v829, v841, v853, v865, v877, v889, v901, v913, v925, v937, v949, v976);
      static ToolKitToolTypedValue.PrimitiveValue.Duration.== infix(_:_:)(v308, v309);
LABEL_56:
      OUTLINED_FUNCTION_120_7();
      goto LABEL_57;
    default:
      OUTLINED_FUNCTION_13_45();
      if (v6)
      {
LABEL_58:
        v2 = 0;
      }

      else
      {

        v7 = OUTLINED_FUNCTION_13_0();
        v2 = sub_1936D4500(v7, v8);

LABEL_57:
      }

      return v2 & 1;
  }
}

uint64_t ToolKitToolTypedValue.hash(into:)()
{
  OUTLINED_FUNCTION_103_10();
  switch(v8)
  {
    case 1:
      v33 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v58, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
      v35 = memcpy(v33, v34, 0x68uLL);
      v43 = OUTLINED_FUNCTION_313(v35, v36, v37, v38, v39, v40, v41, v42, v61);
      memcpy(v43, v44, 0x68uLL);
      sub_1936E0564();
      break;
    case 2:
      v9 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v58, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
      v11 = memcpy(v9, v10, 0x90uLL);
      v19 = OUTLINED_FUNCTION_313(v11, v12, v13, v14, v15, v16, v17, v18, v59);
      memcpy(v19, v20, 0x90uLL);
      sub_1936E0510();
      break;
    case 3:
      sub_1936E04BC();
      break;
    case 4:
      sub_1936E0468();
      break;
    case 5:
      v45 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v58, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
      v47 = memcpy(v45, v46, 0x68uLL);
      v55 = OUTLINED_FUNCTION_313(v47, v48, v49, v50, v51, v52, v53, v54, v62);
      memcpy(v55, v56, 0x68uLL);
      sub_1936E0414();
      break;
    case 6:
      sub_1936E03C0();
      break;
    case 7:
      v21 = OUTLINED_FUNCTION_77_14(v0, v1, v2, v3, v4, v5, v6, v7, v58, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
      v23 = memcpy(v21, v22, 0x70uLL);
      v31 = OUTLINED_FUNCTION_313(v23, v24, v25, v26, v27, v28, v29, v30, v60);
      memcpy(v31, v32, 0x70uLL);
      sub_1936E036C();
      break;
    default:
      sub_1936E05B8();
      break;
  }

  return sub_19393C540();
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch((*v8 >> 59) & 0x1E | (*v8 >> 2) & 1)
  {
    case 1:
      OUTLINED_FUNCTION_49_19();
      return sub_19393CAD0();
    case 2:
      OUTLINED_FUNCTION_49_19();
      v75 = *(v74 + 16);
      return MEMORY[0x193B18060](*&v75);
    case 3:
      OUTLINED_FUNCTION_49_19();
      v115 = *(v114 + 16);
      if (v115 == 0.0)
      {
        v115 = 0.0;
      }

      v75 = v115;
      return MEMORY[0x193B18060](*&v75);
    case 4:
      v62 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v64 = memcpy(v62, v63, 0x5AuLL);
      v72 = OUTLINED_FUNCTION_135_6(v64, v65, v66, v67, v68, v69, v70, v71, v157);
      memcpy(v72, v73, 0x5AuLL);
      sub_1936E0AA4();
      return sub_19393C540();
    case 5:
    case 8:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_147_7();
      OUTLINED_FUNCTION_33_25();
      sub_19393C640();

    case 6:
      OUTLINED_FUNCTION_49_19();
      sub_1936E0A50();
      return sub_19393C540();
    case 7:
    case 9:
    case 0x11:
      OUTLINED_FUNCTION_49_19();
      v9 = OUTLINED_FUNCTION_225();
      sub_193450688(v9, v10);
      OUTLINED_FUNCTION_33_25();
      sub_19393BD50();
      v11 = OUTLINED_FUNCTION_225();

      return sub_193446A6C(v11, v12);
    case 0xALL:
      OUTLINED_FUNCTION_49_19();
      sub_1936E09FC();
      return sub_19393C540();
    case 0xBLL:
      v38 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v40 = memcpy(v38, v39, 0xC0uLL);
      v48 = OUTLINED_FUNCTION_135_6(v40, v41, v42, v43, v44, v45, v46, v47, v155);
      memcpy(v48, v49, 0xC0uLL);
      sub_1936E09A8();
      return sub_19393C540();
    case 0xCLL:
      v102 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v104 = memcpy(v102, v103, 0x70uLL);
      v112 = OUTLINED_FUNCTION_135_6(v104, v105, v106, v107, v108, v109, v110, v111, v160);
      memcpy(v112, v113, 0x70uLL);
      sub_1936E0954();
      return sub_19393C540();
    case 0xDLL:
      v26 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v28 = memcpy(v26, v27, 0x6AuLL);
      v36 = OUTLINED_FUNCTION_135_6(v28, v29, v30, v31, v32, v33, v34, v35, v154);
      memcpy(v36, v37, 0x6AuLL);
      sub_1936E0900();
      return sub_19393C540();
    case 0xELL:
      v50 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v52 = memcpy(v50, v51, 0x1A2uLL);
      v60 = OUTLINED_FUNCTION_135_6(v52, v53, v54, v55, v56, v57, v58, v59, v156);
      memcpy(v60, v61, 0x1A2uLL);
      sub_1936E08AC();
      return sub_19393C540();
    case 0xFLL:
      v14 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v16 = memcpy(v14, v15, 0x70uLL);
      v24 = OUTLINED_FUNCTION_135_6(v16, v17, v18, v19, v20, v21, v22, v23, v153);
      memcpy(v24, v25, 0x70uLL);
      sub_1936E0858();
      return sub_19393C540();
    case 0x10:
      v76 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v78 = memcpy(v76, v77, 0x60uLL);
      v86 = OUTLINED_FUNCTION_135_6(v78, v79, v80, v81, v82, v83, v84, v85, v158);
      memcpy(v86, v87, 0x60uLL);
      sub_1936E0804();
      return sub_19393C540();
    case 0x12:
      v116 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v118 = memcpy(v116, v117, 0x139uLL);
      v126 = OUTLINED_FUNCTION_135_6(v118, v119, v120, v121, v122, v123, v124, v125, v161);
      memcpy(v126, v127, 0x139uLL);
      sub_1936E07B0();
      return sub_19393C540();
    case 0x13:
      v140 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v142 = memcpy(v140, v141, 0x60uLL);
      v150 = OUTLINED_FUNCTION_135_6(v142, v143, v144, v145, v146, v147, v148, v149, v163);
      memcpy(v150, v151, 0x60uLL);
      sub_1936E075C();
      return sub_19393C540();
    case 0x14:
      v88 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v90 = memcpy(v88, v89, 0xF8uLL);
      v98 = OUTLINED_FUNCTION_135_6(v90, v91, v92, v93, v94, v95, v96, v97, v159);
      memcpy(v98, v99, 0xF8uLL);
      sub_1936E0708();
      return sub_19393C540();
    case 0x15:
      OUTLINED_FUNCTION_49_19();
      *(v101 + 25) = *(v100 + 41);
      sub_1936E06B4();
      return sub_19393C540();
    case 0x16:
      v128 = OUTLINED_FUNCTION_8_0(a1, a2, a3, a4, a5, a6, a7, a8, v152, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217);
      v130 = memcpy(v128, v129, 0xC0uLL);
      v138 = OUTLINED_FUNCTION_135_6(v130, v131, v132, v133, v134, v135, v136, v137, v162);
      memcpy(v138, v139, 0xC0uLL);
      sub_1936E0660();
      return sub_19393C540();
    case 0x17:
      OUTLINED_FUNCTION_49_19();
      OUTLINED_FUNCTION_294_1();
      sub_1936E060C();
      return sub_19393C540();
    default:
      sub_1936D482C();
      return sub_19393C540();
  }
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 1937075280;
  }

  return 0x73756E694DLL;
}

void ToolKitToolTypedValue.PrimitiveValue.Decimal.Sign.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x73756E694DLL && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_15_14(0x73756E694DLL) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 1937075280 && v0 == 0xE400000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(1937075280, 0xE400000000000000);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x676E696B63656843;
  switch(*v0)
  {
    case 1:
      result = 0x73676E69766153;
      break;
    case 2:
      result = 0x676172656B6F7242;
      break;
    case 3:
      result = 0x7469626544;
      break;
    case 4:
      result = 0x746964657243;
      break;
    case 5:
      result = 0x64696170657250;
      break;
    case 6:
      result = 0x65726F7453;
      break;
    case 7:
      result = 0x796150656C707041;
      break;
    default:
      return result;
  }

  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.PaymentMethod.Type.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x676E696B63656843 && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_29_2(0x676E696B63656843) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x73676E69766153 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_7(0x73676E69766153) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x676172656B6F7242 && v0 == 0xE900000000000065;
        if (v8 || (OUTLINED_FUNCTION_30_22(0x676172656B6F7242, 101) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x7469626544 && v0 == 0xE500000000000000;
          if (v9 || (OUTLINED_FUNCTION_15_14(0x7469626544) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0x746964657243 && v0 == 0xE600000000000000;
            if (v10 || (OUTLINED_FUNCTION_21_38(0x746964657243) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v11 = v1 == 0x64696170657250 && v0 == 0xE700000000000000;
              if (v11 || (OUTLINED_FUNCTION_22_7(0x64696170657250) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v12 = v1 == 0x65726F7453 && v0 == 0xE500000000000000;
                if (v12 || (OUTLINED_FUNCTION_15_14(0x65726F7453) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else if (v1 == 0x796150656C707041 && v0 == 0xE800000000000000)
                {

                  OUTLINED_FUNCTION_91_3();
                }

                else
                {
                  OUTLINED_FUNCTION_29_2(0x796150656C707041);
                  OUTLINED_FUNCTION_61_0();

                  v5 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v5 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Placemark.Type.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x4C746E6572727543;
  }

  return 0x72616D6563616C50;
}

void ToolKitToolTypedValue.PrimitiveValue.Placemark.Type.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x72616D6563616C50 && v0 == 0xE90000000000006BLL;
    if (v6 || (OUTLINED_FUNCTION_30_22(0x72616D6563616C50, 107) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x4C746E6572727543 && v0 == 0xEF6E6F697461636FLL)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(0x4C746E6572727543, 0xEF6E6F697461636FLL);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6D754E656E6F6850;
  }

  return 0x6464416C69616D45;
}

void ToolKitToolTypedValue.PrimitiveValue.Person.Handle.Type.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_68_19();
    v8 = v1 == v6 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_0_9(v6, v7) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x6D754E656E6F6850 && v0 == 0xEB00000000726562)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(0x6D754E656E6F6850, 0xEB00000000726562);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v175, v176, v177, v178, v179, v180);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v181 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v181, v182, v183, v184, &qword_1EAE40E48, &qword_19397F858);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v185, v186, v187, v188, v189, v190);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v30);
    OUTLINED_FUNCTION_31_17();
    v26 = sub_1934B0FCC(v191, v192, v193, v194, v195, v196);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v197 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v197, v198, v199, v200, &qword_1EAE40E48, &qword_19397F858);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v40);
    OUTLINED_FUNCTION_31_17();
    v36 = sub_1934B0FCC(v201, v202, v203, v204, v205, v206);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v207 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v207, v208, v209, v210, &qword_1EAE40E48, &qword_19397F858);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  OUTLINED_FUNCTION_171_4();
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v51);
    OUTLINED_FUNCTION_31_17();
    v47 = sub_1934B0FCC(v211, v212, v213, v214, v215, v216);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  OUTLINED_FUNCTION_170_5();
  if (!(v19 ^ v20 | v13))
  {
    v217 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v217, v218, v219, v220, &qword_1EAE40E48, &qword_19397F858);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  OUTLINED_FUNCTION_169_7();
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v63);
    OUTLINED_FUNCTION_31_17();
    v59 = sub_1934B0FCC(v221, v222, v223, v224, v225, v226);
    v62 = v59;
  }

  OUTLINED_FUNCTION_50(v59, v60, v61, v62);
  OUTLINED_FUNCTION_4(v64);
  OUTLINED_FUNCTION_99_3();
  if (!(v19 ^ v20 | v13))
  {
    v227 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_85(v227, v228, v229, v230, &qword_1EAE40E48, &qword_19397F858);
    v68 = v65;
  }

  OUTLINED_FUNCTION_47_5(v65, v66, v67, v68);
  OUTLINED_FUNCTION_4(v70);
  if (v0 + 12 > (v75 >> 1))
  {
    OUTLINED_FUNCTION_39(v75);
    OUTLINED_FUNCTION_31_17();
    v71 = sub_1934B0FCC(v231, v232, v233, v234, v235, v236);
    v74 = v71;
  }

  OUTLINED_FUNCTION_50(v71, v72, v73, v74);
  OUTLINED_FUNCTION_4(v76);
  if (v0 + 13 > (v81 >> 1))
  {
    v237 = OUTLINED_FUNCTION_39(v81);
    v77 = OUTLINED_FUNCTION_85(v237, v238, v239, v240, &qword_1EAE40E48, &qword_19397F858);
    v80 = v77;
  }

  OUTLINED_FUNCTION_47_5(v77, v78, v79, v80);
  OUTLINED_FUNCTION_4(v82);
  if (v0 + 14 > (v87 >> 1))
  {
    OUTLINED_FUNCTION_39(v87);
    OUTLINED_FUNCTION_31_17();
    v83 = sub_1934B0FCC(v241, v242, v243, v244, v245, v246);
    v86 = v83;
  }

  OUTLINED_FUNCTION_50(v83, v84, v85, v86);
  OUTLINED_FUNCTION_4(v88);
  if (v0 + 15 > (v93 >> 1))
  {
    v247 = OUTLINED_FUNCTION_39(v93);
    v89 = OUTLINED_FUNCTION_85(v247, v248, v249, v250, &qword_1EAE40E48, &qword_19397F858);
    v92 = v89;
  }

  OUTLINED_FUNCTION_47_5(v89, v90, v91, v92);
  OUTLINED_FUNCTION_4(v94);
  if (v0 + 16 > (v99 >> 1))
  {
    OUTLINED_FUNCTION_39(v99);
    OUTLINED_FUNCTION_31_17();
    v95 = sub_1934B0FCC(v251, v252, v253, v254, v255, v256);
    v98 = v95;
  }

  OUTLINED_FUNCTION_50(v95, v96, v97, v98);
  OUTLINED_FUNCTION_4(v100);
  if (v0 + 17 > (v105 >> 1))
  {
    v257 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_85(v257, v258, v259, v260, &qword_1EAE40E48, &qword_19397F858);
    v104 = v101;
  }

  OUTLINED_FUNCTION_47_5(v101, v102, v103, v104);
  OUTLINED_FUNCTION_4(v106);
  if (v0 + 18 > (v111 >> 1))
  {
    OUTLINED_FUNCTION_39(v111);
    OUTLINED_FUNCTION_31_17();
    v107 = sub_1934B0FCC(v261, v262, v263, v264, v265, v266);
    v110 = v107;
  }

  OUTLINED_FUNCTION_50(v107, v108, v109, v110);
  OUTLINED_FUNCTION_4(v112);
  if (v0 + 19 > (v117 >> 1))
  {
    v267 = OUTLINED_FUNCTION_39(v117);
    v113 = OUTLINED_FUNCTION_85(v267, v268, v269, v270, &qword_1EAE40E48, &qword_19397F858);
    v116 = v113;
  }

  OUTLINED_FUNCTION_47_5(v113, v114, v115, v116);
  OUTLINED_FUNCTION_4(v118);
  if (v0 + 20 > (v123 >> 1))
  {
    OUTLINED_FUNCTION_39(v123);
    OUTLINED_FUNCTION_31_17();
    v119 = sub_1934B0FCC(v271, v272, v273, v274, v275, v276);
    v122 = v119;
  }

  OUTLINED_FUNCTION_50(v119, v120, v121, v122);
  OUTLINED_FUNCTION_4(v124);
  if (v0 + 21 > (v129 >> 1))
  {
    v277 = OUTLINED_FUNCTION_39(v129);
    v125 = OUTLINED_FUNCTION_85(v277, v278, v279, v280, &qword_1EAE40E48, &qword_19397F858);
    v128 = v125;
  }

  OUTLINED_FUNCTION_47_5(v125, v126, v127, v128);
  OUTLINED_FUNCTION_4(v130);
  if (v0 + 22 > (v135 >> 1))
  {
    OUTLINED_FUNCTION_39(v135);
    OUTLINED_FUNCTION_31_17();
    v131 = sub_1934B0FCC(v281, v282, v283, v284, v285, v286);
    v134 = v131;
  }

  OUTLINED_FUNCTION_50(v131, v132, v133, v134);
  OUTLINED_FUNCTION_4(v136);
  if (v0 + 23 > (v141 >> 1))
  {
    v287 = OUTLINED_FUNCTION_39(v141);
    v137 = OUTLINED_FUNCTION_85(v287, v288, v289, v290, &qword_1EAE40E48, &qword_19397F858);
    v140 = v137;
  }

  OUTLINED_FUNCTION_47_5(v137, v138, v139, v140);
  OUTLINED_FUNCTION_4(v142);
  if (v0 + 24 > (v147 >> 1))
  {
    OUTLINED_FUNCTION_39(v147);
    OUTLINED_FUNCTION_31_17();
    v143 = sub_1934B0FCC(v291, v292, v293, v294, v295, v296);
    v146 = v143;
  }

  OUTLINED_FUNCTION_50(v143, v144, v145, v146);
  OUTLINED_FUNCTION_4(v148);
  if (v0 + 25 > (v153 >> 1))
  {
    v297 = OUTLINED_FUNCTION_39(v153);
    v149 = OUTLINED_FUNCTION_85(v297, v298, v299, v300, &qword_1EAE40E48, &qword_19397F858);
    v152 = v149;
  }

  OUTLINED_FUNCTION_47_5(v149, v150, v151, v152);
  OUTLINED_FUNCTION_4(v154);
  if (v0 + 26 > (v159 >> 1))
  {
    OUTLINED_FUNCTION_39(v159);
    OUTLINED_FUNCTION_31_17();
    v155 = sub_1934B0FCC(v301, v302, v303, v304, v305, v306);
    v158 = v155;
  }

  OUTLINED_FUNCTION_50(v155, v156, v157, v158);
  OUTLINED_FUNCTION_4(v160);
  if (v0 + 27 > (v165 >> 1))
  {
    v307 = OUTLINED_FUNCTION_39(v165);
    v161 = OUTLINED_FUNCTION_85(v307, v308, v309, v310, &qword_1EAE40E48, &qword_19397F858);
    v164 = v161;
  }

  OUTLINED_FUNCTION_47_5(v161, v162, v163, v164);
  OUTLINED_FUNCTION_4(v166);
  if (v0 + 28 > (v171 >> 1))
  {
    OUTLINED_FUNCTION_39(v171);
    OUTLINED_FUNCTION_31_17();
    v167 = sub_1934B0FCC(v311, v312, v313, v314, v315, v316);
    v170 = v167;
  }

  OUTLINED_FUNCTION_50(v167, v168, v169, v170);
  return OUTLINED_FUNCTION_38_1(v172, v173);
}

void ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 0xALL:
        OUTLINED_FUNCTION_155_5();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_136_7();
        break;
      case 0xELL:
        OUTLINED_FUNCTION_137_8();
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_38();
        break;
      case 0x13:
        OUTLINED_FUNCTION_144();
        break;
      default:
        return;
    }
  }
}

void ToolKitToolTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6169726F67657247 && v0 == 0xE90000000000006ELL;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x6169726F67657247, 0xE90000000000006ELL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x7473696864647542 && v0 == 0xE800000000000000;
      if (v7 || (OUTLINED_FUNCTION_29_2(0x7473696864647542) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x6573656E696843 && v0 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_22_7(0x6573656E696843) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x636974706F43 && v0 == 0xE600000000000000;
          if (v9 || (OUTLINED_FUNCTION_21_38(0x636974706F43) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0xD000000000000013 && 0x8000000193A2E530 == v0;
            if (v10 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A2E530) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v11 = v1 == 0xD000000000000011 && 0x8000000193A2E510 == v0;
              if (v11 || (OUTLINED_FUNCTION_0_9(0xD000000000000011, 0x8000000193A2E510) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v12 = v1 == 0x776572626548 && v0 == 0xE600000000000000;
                if (v12 || (OUTLINED_FUNCTION_21_38(0x776572626548) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v13 = v1 == 0x313036386F7349 && v0 == 0xE700000000000000;
                  if (v13 || (OUTLINED_FUNCTION_22_7(0x313036386F7349) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v14 = v1 == 0x6E6169646E49 && v0 == 0xE600000000000000;
                    if (v14 || (OUTLINED_FUNCTION_21_38(0x6E6169646E49) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v15 = v1 == 0x63696D616C7349 && v0 == 0xE700000000000000;
                      if (v15 || (OUTLINED_FUNCTION_22_7(0x63696D616C7349) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v16 = OUTLINED_FUNCTION_155_5();
                        v18 = v1 == v16 && v0 == v17;
                        if (v18 || (OUTLINED_FUNCTION_0_9(v16, v17) & 1) != 0)
                        {

                          v5 = 10;
                        }

                        else
                        {
                          v19 = v1 == 0x6573656E6170614ALL && v0 == 0xE800000000000000;
                          if (v19 || (OUTLINED_FUNCTION_29_2(0x6573656E6170614ALL) & 1) != 0)
                          {

                            v5 = 11;
                          }

                          else
                          {
                            v20 = v1 == 0x6E616973726550 && v0 == 0xE700000000000000;
                            if (v20 || (OUTLINED_FUNCTION_22_7(0x6E616973726550) & 1) != 0)
                            {

                              v5 = 12;
                            }

                            else
                            {
                              v21 = OUTLINED_FUNCTION_136_7();
                              v23 = v1 == v21 && v0 == v22;
                              if (v23 || (OUTLINED_FUNCTION_0_9(v21, v22) & 1) != 0)
                              {

                                v5 = 13;
                              }

                              else
                              {
                                v24 = OUTLINED_FUNCTION_137_8();
                                v26 = v1 == v24 && v0 == v25;
                                if (v26 || (OUTLINED_FUNCTION_0_9(v24, v25) & 1) != 0)
                                {

                                  v5 = 14;
                                }

                                else
                                {
                                  v27 = v1 == 0xD000000000000010 && 0x8000000193A2E4F0 == v0;
                                  if (v27 || (OUTLINED_FUNCTION_25_7(16, 0x8000000193A2E4F0) & 1) != 0)
                                  {

                                    v5 = 15;
                                  }

                                  else
                                  {
                                    v28 = v1 == 0x616C676E6142 && v0 == 0xE600000000000000;
                                    if (v28 || (OUTLINED_FUNCTION_21_38(0x616C676E6142) & 1) != 0)
                                    {

                                      v5 = 16;
                                    }

                                    else
                                    {
                                      v29 = v1 == 0x69746172616A7547 && v0 == 0xE800000000000000;
                                      if (v29 || (OUTLINED_FUNCTION_29_2(0x69746172616A7547) & 1) != 0)
                                      {

                                        v5 = 17;
                                      }

                                      else
                                      {
                                        v30 = v1 == 0x6164616E6E614BLL && v0 == 0xE700000000000000;
                                        if (v30 || (OUTLINED_FUNCTION_22_7(0x6164616E6E614BLL) & 1) != 0)
                                        {

                                          v5 = 18;
                                        }

                                        else
                                        {
                                          v31 = v1 == 0x616C6179616C614DLL && v0 == 0xE90000000000006DLL;
                                          if (v31 || (OUTLINED_FUNCTION_30_22(0x616C6179616C614DLL, 109) & 1) != 0)
                                          {

                                            v5 = 19;
                                          }

                                          else
                                          {
                                            v32 = v1 == 0x6968746172614DLL && v0 == 0xE700000000000000;
                                            if (v32 || (OUTLINED_FUNCTION_22_7(0x6968746172614DLL) & 1) != 0)
                                            {

                                              v5 = 20;
                                            }

                                            else
                                            {
                                              v33 = v1 == 1634296911 && v0 == 0xE400000000000000;
                                              if (v33 || (OUTLINED_FUNCTION_0_9(1634296911, 0xE400000000000000) & 1) != 0)
                                              {

                                                v5 = 21;
                                              }

                                              else
                                              {
                                                v34 = v1 == 0x6C696D6154 && v0 == 0xE500000000000000;
                                                if (v34 || (OUTLINED_FUNCTION_15_14(0x6C696D6154) & 1) != 0)
                                                {

                                                  v5 = 22;
                                                }

                                                else
                                                {
                                                  v35 = v1 == 0x7567756C6554 && v0 == 0xE600000000000000;
                                                  if (v35 || (OUTLINED_FUNCTION_21_38(0x7567756C6554) & 1) != 0)
                                                  {

                                                    v5 = 23;
                                                  }

                                                  else
                                                  {
                                                    v36 = v1 == 0x6D61726B6956 && v0 == 0xE600000000000000;
                                                    if (v36 || (OUTLINED_FUNCTION_21_38(0x6D61726B6956) & 1) != 0)
                                                    {

                                                      v5 = 24;
                                                    }

                                                    else
                                                    {
                                                      v37 = v1 == 0x69676E6144 && v0 == 0xE500000000000000;
                                                      if (v37 || (OUTLINED_FUNCTION_15_14(0x69676E6144) & 1) != 0)
                                                      {

                                                        v5 = 25;
                                                      }

                                                      else if (v1 == 0x656D616E74656956 && v0 == 0xEA00000000006573)
                                                      {

                                                        v5 = 26;
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_0_9(0x656D616E74656956, 0xEA00000000006573);
                                                        OUTLINED_FUNCTION_61_0();

                                                        v5 = 26;
                                                        if ((v1 & 1) == 0)
                                                        {
                                                          v5 = 0;
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_38();
        break;
      case 2:
        OUTLINED_FUNCTION_76_3(35);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarMatchingPolicy.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x656D69547478654ELL && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_29_2(0x656D69547478654ELL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v8 = v4 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_25_7(35, v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_165_7();
        v11 = v4 && v10 == v0;
        if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x746369727453 && v0 == 0xE600000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_21_38(0x746369727453);
          OUTLINED_FUNCTION_61_0();

          OUTLINED_FUNCTION_102_0();
          if (v4)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 1953718604;
  }

  return 0x7473726946;
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.CalendarRepeatedTimePolicy.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x7473726946 && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_15_14(0x7473726946) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 1953718604 && v0 == 0xE400000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(1953718604, 0xE400000000000000);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x7961646E6F4DLL;
  switch(*v0)
  {
    case 1:
      result = 0x79616473657554;
      break;
    case 2:
      result = 0x616473656E646557;
      break;
    case 3:
      v2 = 0x647372756854;
      goto LABEL_9;
    case 4:
      result = 0x796164697246;
      break;
    case 5:
      v2 = 0x647275746153;
LABEL_9:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
      break;
    case 6:
      result = 0x7961646E7553;
      break;
    default:
      return result;
  }

  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.LocaleWeekday.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x7961646E6F4DLL && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_21_38(0x7961646E6F4DLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x79616473657554 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_22_7(0x79616473657554) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x616473656E646557 && v0 == 0xE900000000000079;
        if (v8 || (OUTLINED_FUNCTION_30_22(0x616473656E646557, 121) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x7961647372756854 && v0 == 0xE800000000000000;
          if (v9 || (OUTLINED_FUNCTION_29_2(0x7961647372756854) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0x796164697246 && v0 == 0xE600000000000000;
            if (v10 || (OUTLINED_FUNCTION_21_38(0x796164697246) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v11 = v1 == 0x7961647275746153 && v0 == 0xE800000000000000;
              if (v11 || (OUTLINED_FUNCTION_29_2(0x7961647275746153) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else if (v1 == 0x7961646E7553 && v0 == 0xE600000000000000)
              {

                OUTLINED_FUNCTION_90();
              }

              else
              {
                OUTLINED_FUNCTION_21_38(0x7961646E7553);
                OUTLINED_FUNCTION_61_0();

                v5 = 6;
                if ((v1 & 1) == 0)
                {
                  v5 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_16_0();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_39(v10);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v54 = OUTLINED_FUNCTION_39(v17);
    OUTLINED_FUNCTION_85(v54, v55, v56, v57, &qword_1EAE40E28, &qword_19397F838);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39(v24);
    OUTLINED_FUNCTION_57();
    v20 = sub_1934B0FCC(v58, v59, v60, v61, v62, v63);
    v23 = v20;
  }

  OUTLINED_FUNCTION_9_7(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    OUTLINED_FUNCTION_39(v29);
    OUTLINED_FUNCTION_31_17();
    v25 = sub_1934B0FCC(v64, v65, v66, v67, v68, v69);
    v28 = v25;
  }

  OUTLINED_FUNCTION_3_7(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v70 = OUTLINED_FUNCTION_39(v34);
    v30 = OUTLINED_FUNCTION_85(v70, v71, v72, v73, &qword_1EAE40E28, &qword_19397F838);
    v33 = v30;
  }

  OUTLINED_FUNCTION_5_11(v30, v31, v32, v33);
  if (!(v18 ^ v19 | v12))
  {
    OUTLINED_FUNCTION_39(v39);
    OUTLINED_FUNCTION_31_17();
    v35 = sub_1934B0FCC(v74, v75, v76, v77, v78, v79);
    v38 = v35;
  }

  OUTLINED_FUNCTION_7_3(v35, v36, v37, v38);
  if (!(v18 ^ v19 | v12))
  {
    v80 = OUTLINED_FUNCTION_39(v44);
    v40 = OUTLINED_FUNCTION_85(v80, v81, v82, v83, &qword_1EAE40E28, &qword_19397F838);
    v43 = v40;
  }

  OUTLINED_FUNCTION_47_5(v40, v41, v42, v43);
  return OUTLINED_FUNCTION_89_3(v45, v46);
}

unint64_t ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x796C6574756E694DLL;
  switch(*v0)
  {
    case 1:
      v2 = 1920298824;
      goto LABEL_8;
    case 2:
      result = 0x796C696144;
      break;
    case 3:
      v2 = 1801807191;
LABEL_8:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
      break;
    case 4:
      result = 0x796C68746E6F4DLL;
      break;
    case 5:
      result = 0x796C72616559;
      break;
    default:
      return result;
  }

  return result;
}

void ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleFrequency.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x796C6574756E694DLL && v0 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_29_2(0x796C6574756E694DLL) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x796C72756F48 && v0 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_21_38(0x796C72756F48) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = v1 == 0x796C696144 && v0 == 0xE500000000000000;
        if (v8 || (OUTLINED_FUNCTION_15_14(0x796C696144) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x796C6B656557 && v0 == 0xE600000000000000;
          if (v9 || (OUTLINED_FUNCTION_21_38(0x796C6B656557) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == 0x796C68746E6F4DLL && v0 == 0xE700000000000000;
            if (v10 || (OUTLINED_FUNCTION_22_7(0x796C68746E6F4DLL) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else if (v1 == 0x796C72616559 && v0 == 0xE600000000000000)
            {

              OUTLINED_FUNCTION_83();
            }

            else
            {
              OUTLINED_FUNCTION_21_38(0x796C72616559);
              OUTLINED_FUNCTION_61_0();

              v5 = 5;
              if ((v1 & 1) == 0)
              {
                v5 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t static ToolKitToolTypedValue.DeferredValue.Storage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_92_10();
  if (v0 < 0)
  {
    if (v1 < 0)
    {
      v27 = *((v0 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_96_14();

      v20 = OUTLINED_FUNCTION_66_2(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24, v25, v27);
      static ToolKitToolTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage.== infix(_:_:)(v20);
      goto LABEL_7;
    }
  }

  else if ((v1 & 0x8000000000000000) == 0)
  {
    v26 = *(v0 + 16);
    OUTLINED_FUNCTION_96_14();

    v11 = OUTLINED_FUNCTION_66_2(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23, v24, v25, v26);
    static ToolKitToolTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.== infix(_:_:)(v11);
LABEL_7:
    OUTLINED_FUNCTION_61_0();

    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t ToolKitToolTypedValue.DeferredValue.Storage.hash(into:)()
{
  OUTLINED_FUNCTION_71_19();
  if ((v0 & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_101_13((v0 & 0x7FFFFFFFFFFFFFFFLL));
    sub_1936E0AF8();
  }

  else
  {
    OUTLINED_FUNCTION_101_13(v0);
    sub_1936E0B4C();
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

uint64_t static ToolKitToolTypeInstance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_64_15();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_213();
      if (!v11)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_34_32();
      OUTLINED_FUNCTION_87_14();

      OUTLINED_FUNCTION_87_2(v42, v43, v44, v45, v46, v47, v48, v49, v70, v71, v72);
      static ToolKitToolTypeInstance.== infix(_:_:)();
      goto LABEL_21;
    case 2:
      OUTLINED_FUNCTION_215_2();
      if (!v11)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_69_19();
      OUTLINED_FUNCTION_89_15();

      v30 = OUTLINED_FUNCTION_87_2(v22, v23, v24, v25, v26, v27, v28, v29, v70, v71, v72);
      static ToolKitToolTypeInstance.Optional.== infix(_:_:)(v30, v31);
      goto LABEL_21;
    case 3:
      OUTLINED_FUNCTION_217_1();
      if (!v11)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_34_32();
      OUTLINED_FUNCTION_87_14();

      v40 = OUTLINED_FUNCTION_87_2(v32, v33, v34, v35, v36, v37, v38, v39, v70, v71, v72);
      static ToolKitToolTypeInstance.Union.== infix(_:_:)(v40, v41);
      goto LABEL_21;
    case 4:
      OUTLINED_FUNCTION_216_1();
      if (!v11)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_111_11();

      v20 = OUTLINED_FUNCTION_87_2(v12, v13, v14, v15, v16, v17, v18, v19, v70, v71, v72);
      static ToolKitToolTypeInstance.Restricted.== infix(_:_:)(v20, v21);
      goto LABEL_21;
    case 5:
      if (v1 >> 61 != 5)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_34_32();
      OUTLINED_FUNCTION_87_14();

      v58 = OUTLINED_FUNCTION_87_2(v50, v51, v52, v53, v54, v55, v56, v57, v70, v71, v72);
      static ToolKitToolTypeInstance.Deferred.== infix(_:_:)(v58);
      goto LABEL_21;
    case 6:
      OUTLINED_FUNCTION_214_0();
      if (!v11)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_111_11();

      v67 = OUTLINED_FUNCTION_87_2(v59, v60, v61, v62, v63, v64, v65, v66, v70, v71, v72);
      static ToolKitToolTypeInstance.Constrained.== infix(_:_:)(v67, v68);
LABEL_21:
      OUTLINED_FUNCTION_121();
      goto LABEL_22;
    default:
      if (v1 >> 61)
      {
LABEL_23:
        v0 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_42_28();

        OUTLINED_FUNCTION_87_2(v3, v4, v5, v6, v7, v8, v9, v10, v70, v71, v72);
        static ToolKitToolTypeIdentifier.== infix(_:_:)();
        OUTLINED_FUNCTION_121();
LABEL_22:
      }

      return v0 & 1;
  }
}

uint64_t ToolKitToolTypeInstance.hash(into:)()
{
  OUTLINED_FUNCTION_103_10();
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_71_4();
      sub_1936E0D44();
      break;
    case 2:
      OUTLINED_FUNCTION_303((v0 & 0x1FFFFFFFFFFFFFFFLL));
      sub_1936E0CF0();
      break;
    case 3:
      OUTLINED_FUNCTION_71_4();
      sub_1936E0C9C();
      break;
    case 4:
      sub_1936E0C48();
      break;
    case 5:
      OUTLINED_FUNCTION_71_4();
      sub_1936E0BF4();
      break;
    case 6:
      sub_1936E0BA0();
      break;
    default:
      OUTLINED_FUNCTION_65_18();
      sub_1936E00CC();
      break;
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

uint64_t static ToolKitToolRestrictionContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_64_15();
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_213();
      if (!v14)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_34_32();
      LOBYTE(__dst[0]) = v29;
      *&v72[0] = v30;

      v39 = OUTLINED_FUNCTION_131_9(v31, v32, v33, v34, v35, v36, v37, v38, *&v72[0], *(&v72[0] + 1), *&v72[1], *(&v72[1] + 1), *&v72[2], *(&v72[2] + 1), *&v72[3], *(&v72[3] + 1), *&v72[4], *(&v72[4] + 1), *&v72[5], *(&v72[5] + 1), *&v72[6], *(&v72[6] + 1), *&v72[7], *(&v72[7] + 1), *&v72[8], *(&v72[8] + 1), *&v72[9], *(&v72[9] + 1), *&v72[10], *(&v72[10] + 1), *&v72[11], *(&v72[11] + 1), *&v72[12], *(&v72[12] + 1), *&v72[13], *(&v72[13] + 1), *&v72[14], *(&v72[14] + 1), *&v72[15], *(&v72[15] + 1), *&v72[16], *(&v72[16] + 1), *&v72[17], *(&v72[17] + 1), __dst[0]);
      static ToolKitToolRestrictionContext.RepresentableAs.== infix(_:_:)(v39, v40);
      goto LABEL_22;
    case 2:
      OUTLINED_FUNCTION_215_2();
      if (!v14)
      {
        goto LABEL_24;
      }

      v24 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v0 = *(v24 + 24);
      v25 = *(v24 + 16);
      OUTLINED_FUNCTION_107_12();

      v26 = &type metadata for ToolKitToolRestrictionContext.PersonReachableAs;
      v27 = sub_1936E30D0;
      goto LABEL_13;
    case 3:
      OUTLINED_FUNCTION_217_1();
      if (!v14)
      {
        goto LABEL_24;
      }

      v28 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v0 = *(v28 + 24);
      v25 = *(v28 + 16);
      OUTLINED_FUNCTION_107_12();

      v26 = &type metadata for ToolKitToolRestrictionContext.DateExpressibleAs;
      v27 = sub_1936E3124;
LABEL_13:
      sub_1936D4718(v25, v0, v3, v4, v27, v26);
      goto LABEL_22;
    case 4:
      OUTLINED_FUNCTION_216_1();
      if (!v14)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_69_19();
      OUTLINED_FUNCTION_96_14();
      v72[2] = *(v1 + 48);
      LOWORD(v72[3]) = *(v1 + 64);
      v15 = *(v2 + 32);
      __dst[0] = *(v2 + 16);
      __dst[1] = v15;
      __dst[2] = *(v2 + 48);
      LOWORD(__dst[3]) = *(v2 + 64);

      OUTLINED_FUNCTION_131_9(v16, v17, v18, v19, v20, v21, v22, v23, *&v72[0], *(&v72[0] + 1), *&v72[1], *(&v72[1] + 1), *&v72[2], *(&v72[2] + 1), *&v72[3], *(&v72[3] + 1), *&v72[4], *(&v72[4] + 1), *&v72[5], *(&v72[5] + 1), *&v72[6], *(&v72[6] + 1), *&v72[7], *(&v72[7] + 1), *&v72[8], *(&v72[8] + 1), *&v72[9], *(&v72[9] + 1), *&v72[10], *(&v72[10] + 1), *&v72[11], *(&v72[11] + 1), *&v72[12], *(&v72[12] + 1), *&v72[13], *(&v72[13] + 1), *&v72[14], *(&v72[14] + 1), *&v72[15], *(&v72[15] + 1), *&v72[16], *(&v72[16] + 1), *&v72[17], *(&v72[17] + 1), __dst[0]);
      static ToolKitToolRestrictionContext.TextTypedWith.== infix(_:_:)();
      goto LABEL_22;
    case 5:
      if (v1 >> 61 != 5)
      {
        goto LABEL_24;
      }

      v41 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v42 = *(v41 + 32);
      __dst[0] = *(v41 + 16);
      LOWORD(__dst[1]) = v42;
      OUTLINED_FUNCTION_297();
      LOWORD(v72[1]) = v43;

      OUTLINED_FUNCTION_131_9(v44, v45, v46, v47, v48, v49, v50, v51, *&v72[0], *(&v72[0] + 1), *&v72[1], *(&v72[1] + 1), *&v72[2], *(&v72[2] + 1), *&v72[3], *(&v72[3] + 1), *&v72[4], *(&v72[4] + 1), *&v72[5], *(&v72[5] + 1), *&v72[6], *(&v72[6] + 1), *&v72[7], *(&v72[7] + 1), *&v72[8], *(&v72[8] + 1), *&v72[9], *(&v72[9] + 1), *&v72[10], *(&v72[10] + 1), *&v72[11], *(&v72[11] + 1), *&v72[12], *(&v72[12] + 1), *&v72[13], *(&v72[13] + 1), *&v72[14], *(&v72[14] + 1), *&v72[15], *(&v72[15] + 1), *&v72[16], *(&v72[16] + 1), *&v72[17], *(&v72[17] + 1), __dst[0]);
      static ToolKitToolRestrictionContext.MeasurementExpressibleAs.== infix(_:_:)();
      goto LABEL_22;
    case 6:
      OUTLINED_FUNCTION_214_0();
      if (!v14)
      {
        goto LABEL_24;
      }

      v52 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v53 = *(v52 + 40);
      v54 = *(v52 + 32);
      v55 = *(v52 + 24);
      v56 = v1 & 0x1FFFFFFFFFFFFFFFLL;
      v57 = *(v56 + 16);
      v58 = *(v56 + 24);
      v59 = *(v56 + 32);
      v60 = *(v56 + 40);
      *&__dst[0] = *(v52 + 16);
      BYTE8(__dst[0]) = v55;
      *&__dst[1] = v54;
      BYTE8(__dst[1]) = v53;
      *&v72[0] = v57;
      BYTE8(v72[0]) = v58;
      *&v72[1] = v59;
      BYTE8(v72[1]) = v60;

      v69 = OUTLINED_FUNCTION_131_9(v61, v62, v63, v64, v65, v66, v67, v68, *&v72[0], *(&v72[0] + 1), *&v72[1], *(&v72[1] + 1), *&v72[2], *(&v72[2] + 1), *&v72[3], *(&v72[3] + 1), *&v72[4], *(&v72[4] + 1), *&v72[5], *(&v72[5] + 1), *&v72[6], *(&v72[6] + 1), *&v72[7], *(&v72[7] + 1), *&v72[8], *(&v72[8] + 1), *&v72[9], *(&v72[9] + 1), *&v72[10], *(&v72[10] + 1), *&v72[11], *(&v72[11] + 1), *&v72[12], *(&v72[12] + 1), *&v72[13], *(&v72[13] + 1), *&v72[14], *(&v72[14] + 1), *&v72[15], *(&v72[15] + 1), *&v72[16], *(&v72[16] + 1), *&v72[17], *(&v72[17] + 1), __dst[0]);
      static ToolKitToolRestrictionContext.InInclusiveRange.== infix(_:_:)(v69, v70);
LABEL_22:
      OUTLINED_FUNCTION_121();
      goto LABEL_23;
    default:
      if (v1 >> 61)
      {
LABEL_24:
        v0 = 0;
      }

      else
      {
        memcpy(v72, (v1 + 16), sizeof(v72));
        memcpy(__dst, (v2 + 16), sizeof(__dst));

        OUTLINED_FUNCTION_131_9(v6, v7, v8, v9, v10, v11, v12, v13, *&v72[0], *(&v72[0] + 1), *&v72[1], *(&v72[1] + 1), *&v72[2], *(&v72[2] + 1), *&v72[3], *(&v72[3] + 1), *&v72[4], *(&v72[4] + 1), *&v72[5], *(&v72[5] + 1), *&v72[6], *(&v72[6] + 1), *&v72[7], *(&v72[7] + 1), *&v72[8], *(&v72[8] + 1), *&v72[9], *(&v72[9] + 1), *&v72[10], *(&v72[10] + 1), *&v72[11], *(&v72[11] + 1), *&v72[12], *(&v72[12] + 1), *&v72[13], *(&v72[13] + 1), *&v72[14], *(&v72[14] + 1), *&v72[15], *(&v72[15] + 1), *&v72[16], *(&v72[16] + 1), *&v72[17], *(&v72[17] + 1), __dst[0]);
        static ToolKitToolRestrictionContext.InSet.== infix(_:_:)();
        OUTLINED_FUNCTION_121();
LABEL_23:
      }

      return v0 & 1;
  }
}

uint64_t ToolKitToolRestrictionContext.hash(into:)()
{
  OUTLINED_FUNCTION_103_10();
  switch(v1)
  {
    case 1:
      *&__dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1936E0F3C();
      break;
    case 2:
      OUTLINED_FUNCTION_121_8();
      sub_1936E0EE8();
      break;
    case 3:
      OUTLINED_FUNCTION_121_8();
      sub_1936E0E94();
      break;
    case 4:
      v2 = v0 & 0x1FFFFFFFFFFFFFFFLL;
      v3 = *(v2 + 32);
      __dst[0] = *(v2 + 16);
      __dst[1] = v3;
      __dst[2] = *(v2 + 48);
      LOWORD(__dst[3]) = *(v2 + 64);
      v11[0] = __dst[0];
      v11[1] = v3;
      v11[2] = __dst[2];
      LOWORD(v11[3]) = __dst[3];
      sub_1936E0E40();
      break;
    case 5:
      v4 = v0 & 0x1FFFFFFFFFFFFFFFLL;
      v5 = *(v4 + 32);
      __dst[0] = *(v4 + 16);
      LOWORD(__dst[1]) = v5;
      sub_1936E0DEC();
      break;
    case 6:
      OUTLINED_FUNCTION_294_1();
      *&__dst[0] = v6;
      BYTE8(__dst[0]) = v7;
      *&__dst[1] = v8;
      BYTE8(__dst[1]) = v9;
      sub_1936E0D98();
      break;
    default:
      memcpy(__dst, (v0 + 16), sizeof(__dst));
      memcpy(v11, __dst, sizeof(v11));
      sub_1936E0F90();
      break;
  }

  return sub_19393C540();
}

uint64_t sub_1936D9868()
{
  OUTLINED_FUNCTION_91_0();
  v1 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_63_2();
  if (!(!v11 & v10))
  {
    OUTLINED_FUNCTION_33_5((v9 > 1), v6, v7, v8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_53_3(v5, v6, v7, v8);
  if (v17 != v18)
  {
    OUTLINED_FUNCTION_39_2((v16 > 1), v13, v14, v15);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_46_2(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v19 = OUTLINED_FUNCTION_51((v23 > 1), v0, v21, v22);
    v22 = v19;
  }

  OUTLINED_FUNCTION_45_0(v19, v20, v21, v22);
  if (!(v17 ^ v18 | v11))
  {
    v24 = OUTLINED_FUNCTION_33_5((v28 > 1), v25, v26, v27);
    v27 = v24;
  }

  OUTLINED_FUNCTION_32(v24, v25, v26, v27);
  if (!(v17 ^ v18 | v11))
  {
    v29 = OUTLINED_FUNCTION_39_2((v33 > 1), v30, v31, v32);
    v32 = v29;
  }

  OUTLINED_FUNCTION_149(v29, v30, v31, v32);
  *(v34 + 32) = 3;
  *(v34 + 40) = v0;
  return v35;
}

uint64_t ToolKitToolRestrictionContext.PersonReachableAs.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x746361746E6F43;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_88_15();
      break;
    case 2:
      result = 0x6C69616D45;
      break;
    case 3:
      result = OUTLINED_FUNCTION_156_6();
      break;
    default:
      return result;
  }

  return result;
}

void ToolKitToolRestrictionContext.PersonReachableAs.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x746361746E6F43 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x746361746E6F43) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_80_16();
      v8 = v4 && v0 == 0xE500000000000000;
      if (v8 || (OUTLINED_FUNCTION_15_14(v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x6C69616D45 && v0 == 0xE500000000000000;
        if (v9 || (OUTLINED_FUNCTION_15_14(0x6C69616D45) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = OUTLINED_FUNCTION_156_6();
          if (v1 == v10 && v0 == v11)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9(v10, v11);
            OUTLINED_FUNCTION_61_0();

            OUTLINED_FUNCTION_102_0();
            if (v4)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_1936D9AFC()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_105_1();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_95_2(v6, v7, v8, v9);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_92_2(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v20 = OUTLINED_FUNCTION_33_5((v24 > 1), v21, v22, v23);
    v23 = v20;
  }

  OUTLINED_FUNCTION_160_1(v20, v21, v22, v23);
  *(v29 + 32) = v1;
  *(v29 + 40) = v1;
  v30 = *(v28 + 24);
  if (v0 + 4 > (v30 >> 1))
  {
    v25 = OUTLINED_FUNCTION_39_2((v30 > 1), v26, v27, v28);
    v28 = v25;
  }

  OUTLINED_FUNCTION_149(v25, v26, v27, v28);
  return OUTLINED_FUNCTION_38_1(v31, v32);
}

uint64_t ToolKitToolRestrictionContext.DateExpressibleAs.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 1701669204;
  if (*v0 != 1)
  {
    v1 = 0x54646E4165746144;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125892;
  }
}

void ToolKitToolRestrictionContext.DateExpressibleAs.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1702125892 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1702125892, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 1701669204 && v0 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_0_9(1701669204, 0xE400000000000000) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x54646E4165746144 && v0 == 0xEB00000000656D69)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x54646E4165746144, 0xEB00000000656D69);
        OUTLINED_FUNCTION_61_0();

        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 6710863;
  }

  return 28239;
}

void ToolKitToolRestrictionContext.TextTypedWith.AutocorrectionType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 28239 && v0 == 0xE200000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(28239, 0xE200000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 6710863 && v0 == 0xE300000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(6710863, 0xE300000000000000);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_16_0();
  if (!(!v13 & v12))
  {
    OUTLINED_FUNCTION_39(v11);
    OUTLINED_FUNCTION_31_17();
    sub_1934B0FCC(v79, v80, v81, v82, v83, v84);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v85 = OUTLINED_FUNCTION_39(v18);
    OUTLINED_FUNCTION_85(v85, v86, v87, v88, &qword_1EAE40DF8, &qword_19397F818);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v89, v90, v91, v92, v93, v94);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v30);
    OUTLINED_FUNCTION_31_17();
    v26 = sub_1934B0FCC(v95, v96, v97, v98, v99, v100);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v101 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v101, v102, v103, v104, &qword_1EAE40DF8, &qword_19397F818);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v40);
    OUTLINED_FUNCTION_31_17();
    v36 = sub_1934B0FCC(v105, v106, v107, v108, v109, v110);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v111 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v111, v112, v113, v114, &qword_1EAE40DF8, &qword_19397F818);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  OUTLINED_FUNCTION_171_4();
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v51);
    OUTLINED_FUNCTION_31_17();
    v47 = sub_1934B0FCC(v115, v116, v117, v118, v119, v120);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  OUTLINED_FUNCTION_170_5();
  if (!(v19 ^ v20 | v13))
  {
    v121 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v121, v122, v123, v124, &qword_1EAE40DF8, &qword_19397F818);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  OUTLINED_FUNCTION_169_7();
  if (!(v19 ^ v20 | v13))
  {
    OUTLINED_FUNCTION_39(v63);
    OUTLINED_FUNCTION_31_17();
    v59 = sub_1934B0FCC(v125, v126, v127, v128, v129, v130);
    v62 = v59;
  }

  OUTLINED_FUNCTION_50(v59, v60, v61, v62);
  OUTLINED_FUNCTION_4(v64);
  OUTLINED_FUNCTION_99_3();
  if (!(v19 ^ v20 | v13))
  {
    v131 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_85(v131, v132, v133, v134, &qword_1EAE40DF8, &qword_19397F818);
    v68 = v65;
  }

  OUTLINED_FUNCTION_47_5(v65, v66, v67, v68);
  OUTLINED_FUNCTION_4(v70);
  if (v0 + 12 > (v75 >> 1))
  {
    OUTLINED_FUNCTION_39(v75);
    OUTLINED_FUNCTION_31_17();
    v71 = sub_1934B0FCC(v135, v136, v137, v138, v139, v140);
    v74 = v71;
  }

  OUTLINED_FUNCTION_50(v71, v72, v73, v74);
  return OUTLINED_FUNCTION_38_1(v76, v77);
}

void ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 3:
        OUTLINED_FUNCTION_144();
        break;
      case 5:
        OUTLINED_FUNCTION_152_9();
        break;
      case 6:
        OUTLINED_FUNCTION_68_19();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void ToolKitToolRestrictionContext.TextTypedWith.KeyboardType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x7061436969637341 && v0 == 0xEC000000656C6261;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x7061436969637341, 0xEC000000656C6261) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v8 = v4 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_25_7(21, v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 7107157 && v0 == 0xE300000000000000;
        if (v9 || (OUTLINED_FUNCTION_0_9(7107157, 0xE300000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = v1 == 0x61507265626D754ELL && v0 == 0xE900000000000064;
          if (v10 || (OUTLINED_FUNCTION_30_22(0x61507265626D754ELL, 100) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v11 = v1 == 0x646150656E6F6850 && v0 == 0xE800000000000000;
            if (v11 || (OUTLINED_FUNCTION_29_2(0x646150656E6F6850) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v12 = OUTLINED_FUNCTION_152_9();
              v14 = v1 == v12 && v0 == v13;
              if (v14 || (OUTLINED_FUNCTION_0_9(v12, v13) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v15 = OUTLINED_FUNCTION_68_19();
                v17 = v1 == v15 && v0 == v16;
                if (v17 || (OUTLINED_FUNCTION_0_9(v15, v16) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v18 = v1 == 0x506C616D69636544 && v0 == 0xEA00000000006461;
                  if (v18 || (OUTLINED_FUNCTION_0_9(0x506C616D69636544, 0xEA00000000006461) & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v19 = v1 == 0x72657474697754 && v0 == 0xE700000000000000;
                    if (v19 || (OUTLINED_FUNCTION_22_7(0x72657474697754) & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v20 = v1 == 0x6372616553626557 && v0 == 0xE900000000000068;
                      if (v20 || (OUTLINED_FUNCTION_0_9(0x6372616553626557, 0xE900000000000068) & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_26_4();
                        if (v4 && v21 == v0)
                        {

                          v5 = 10;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_25_7(21, v21);
                          OUTLINED_FUNCTION_61_0();

                          v5 = 10;
                          if ((v1 & 1) == 0)
                          {
                            v5 = 0;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x65636E65746E6553;
  if (*v0 != 1)
  {
    v1 = 0x61726168436C6C41;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7364726F57;
  }
}

void ToolKitToolRestrictionContext.TextTypedWith.CapitalizationType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x7364726F57 && v0 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_15_14(0x7364726F57) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x65636E65746E6553 && v0 == 0xE900000000000073;
      if (v7 || (OUTLINED_FUNCTION_30_22(0x65636E65746E6553, 115) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x61726168436C6C41 && v0 == 0xED00007372657463)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0x61726168436C6C41, 0xED00007372657463);
        OUTLINED_FUNCTION_61_0();

        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t static ToolKitToolContentItemClassDescriptor.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  switch(*a1 >> 62)
  {
    case 1uLL:
      if (v3 >> 62 != 1)
      {
        goto LABEL_17;
      }

      v42 = OUTLINED_FUNCTION_118_11().n128_u8[0];
      OUTLINED_FUNCTION_97_8();

      v34 = OUTLINED_FUNCTION_66_2(v26, v27, v28, v29, v30, v31, v32, v33, v35, v37, v38, v39, v42);
      static ToolKitToolContentItemClassDescriptor.LinkEntityContentItemClass.== infix(_:_:)(v34);
      goto LABEL_16;
    case 2uLL:
      if (v3 >> 62 != 2)
      {
        goto LABEL_17;
      }

      v40 = OUTLINED_FUNCTION_118_11().n128_u8[0];
      OUTLINED_FUNCTION_97_8();

      v16 = OUTLINED_FUNCTION_66_2(v8, v9, v10, v11, v12, v13, v14, v15, v35, v37, v38, v39, v40);
      static ToolKitToolContentItemClassDescriptor.LinkEnumContentItemClass.== infix(_:_:)(v16);
      goto LABEL_16;
    case 3uLL:
      if (v3 >> 62 != 3)
      {
        goto LABEL_17;
      }

      v41 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      v25 = OUTLINED_FUNCTION_66_2(v17, v18, v19, v20, v21, v22, v23, v24, v36, *(&v36 + 1), v38, v39, v41);
      static ToolKitToolContentItemClassDescriptor.LinkCodableContentItemClass.== infix(_:_:)(v25);
LABEL_16:
      OUTLINED_FUNCTION_120_7();

      return v2 & 1;
    default:
      if (v3 >> 62)
      {
LABEL_17:
        v2 = 0;
        return v2 & 1;
      }

      OUTLINED_FUNCTION_181_6();
      v6 = v6 && v4 == v5;
      if (v6)
      {
        v2 = 1;
        return v2 & 1;
      }

      return sub_19393CA30();
  }
}

uint64_t ToolKitToolContentItemClassDescriptor.hash(into:)()
{
  v1 = *v0;
  switch(*v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_101_13((v1 & 0x3FFFFFFFFFFFFFFFLL));
      sub_1936E108C();
      goto LABEL_8;
    case 2uLL:
      OUTLINED_FUNCTION_101_13((v1 & 0x3FFFFFFFFFFFFFFFLL));
      sub_1936E1038();
      goto LABEL_8;
    case 3uLL:
      OUTLINED_FUNCTION_303((v1 & 0x3FFFFFFFFFFFFFFFLL));
      sub_1936E0FE4();
LABEL_8:
      OUTLINED_FUNCTION_39_20();
      result = sub_19393C540();
      break;
    default:
      OUTLINED_FUNCTION_147_7();
      OUTLINED_FUNCTION_33_25();
      sub_19393C640();

      break;
  }

  return result;
}

unint64_t static ToolKitToolComparisonPredicate.Comparison.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  switch(*a1 >> 60)
  {
    case 1uLL:
      if (v4 >> 60 == 1)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    case 2uLL:
      if (v4 >> 60 != 2)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    case 3uLL:
      if (v4 >> 60 == 3)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    case 4uLL:
      if (v4 >> 60 != 4)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 5uLL:
      if (v4 >> 60 != 5)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 6uLL:
      if (v4 >> 60 != 6)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 7uLL:
      if (v4 >> 60 == 7)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    case 8uLL:
      if (v4 >> 60 != 8)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 9uLL:
      if (v4 >> 60 != 9)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 0xAuLL:
      if (v4 >> 60 != 10)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 0xBuLL:
      if (v4 >> 60 != 11)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 0xCuLL:
      if (v4 >> 60 != 12)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 0xDuLL:
      if (v4 >> 60 != 13)
      {
        goto LABEL_26;
      }

LABEL_22:
      OUTLINED_FUNCTION_42_28();

      OUTLINED_FUNCTION_87_2(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
      static ToolKitToolTypedValue.== infix(_:_:)();
      goto LABEL_23;
    case 0xEuLL:
      OUTLINED_FUNCTION_186_2();
      if (!v13)
      {
        goto LABEL_26;
      }

LABEL_20:
      OUTLINED_FUNCTION_140_8();

      OUTLINED_FUNCTION_149_8();
      OUTLINED_FUNCTION_61_0();

      return v3 & 1;
    case 0xFuLL:
      OUTLINED_FUNCTION_186_2();
      if (!(!v13 & v14))
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_89_15();

      v23 = OUTLINED_FUNCTION_87_2(v15, v16, v17, v18, v19, v20, v21, v22, v34, v35, v36);
      static ToolKitToolComparisonPredicate.Comparison.Pair.== infix(_:_:)(v23, v24);
LABEL_23:
      OUTLINED_FUNCTION_121();
      goto LABEL_24;
    default:
      if (v4 >> 60)
      {
LABEL_26:
        v2 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_42_28();

        OUTLINED_FUNCTION_87_2(v5, v6, v7, v8, v9, v10, v11, v12, v34, v35, v36);
        static ToolKitToolTypedValue.== infix(_:_:)();
        OUTLINED_FUNCTION_121();
LABEL_24:
      }

      return v2 & 1;
  }
}

uint64_t ToolKitToolComparisonPredicate.Comparison.hash(into:)(uint64_t a1)
{
  switch(*v1 >> 60)
  {
    case 2:
    case 3:
    case 0xELL:
      OUTLINED_FUNCTION_65_18();
      sub_1936D482C();
      break;
    case 0xFLL:
      OUTLINED_FUNCTION_303((*v1 & 0xFFFFFFFFFFFFFFFLL));
      sub_1936E10E0();
      break;
    default:
      OUTLINED_FUNCTION_65_18();
      sub_1936E1134();
      break;
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

unint64_t static ToolKitToolComparisonPredicate.Comparison.Template.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  switch(*a1 >> 60)
  {
    case 1uLL:
      if (v4 >> 60 == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    case 2uLL:
      if (v4 >> 60 != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    case 3uLL:
      if (v4 >> 60 == 3)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    case 4uLL:
      if (v4 >> 60 != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    case 5uLL:
      if (v4 >> 60 != 5)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    case 6uLL:
      if (v4 >> 60 != 6)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    case 7uLL:
      if (v4 >> 60 == 7)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    case 8uLL:
      if (v4 >> 60 != 8)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    case 9uLL:
      if (v4 >> 60 != 9)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    case 0xAuLL:
      if (v4 >> 60 != 10)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    case 0xBuLL:
      if (v4 >> 60 != 11)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    case 0xCuLL:
      if (v4 >> 60 != 12)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    case 0xDuLL:
      if (v4 >> 60 != 13)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    case 0xEuLL:
      OUTLINED_FUNCTION_186_2();
      if (!v5)
      {
        goto LABEL_24;
      }

LABEL_19:
      OUTLINED_FUNCTION_140_8();

      OUTLINED_FUNCTION_149_8();
      OUTLINED_FUNCTION_61_0();

      return v3 & 1;
    case 0xFuLL:
      OUTLINED_FUNCTION_186_2();
      if (!(!v5 & v6))
      {
        goto LABEL_24;
      }

LABEL_21:

      static ToolKitToolTypeInstance.== infix(_:_:)();
      OUTLINED_FUNCTION_121();
      goto LABEL_22;
    default:
      if (v4 >> 60)
      {
LABEL_24:
        v2 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_114_10();

        static ToolKitToolTypeInstance.== infix(_:_:)();
        OUTLINED_FUNCTION_121();
LABEL_22:
      }

      return v2 & 1;
  }
}

uint64_t ToolKitToolComparisonPredicate.Comparison.Template.hash(into:)(uint64_t a1)
{
  switch(*v1 >> 60)
  {
    case 2:
    case 3:
    case 0xELL:
      OUTLINED_FUNCTION_102_15();
      v2 = sub_1936D482C();
      v3 = v2;
      v4 = &type metadata for ToolKitToolNullValue;
      break;
    default:
      OUTLINED_FUNCTION_102_15();
      v2 = sub_1936E0D44();
      v3 = v2;
      v4 = &type metadata for ToolKitToolTypeInstance;
      break;
  }

  return OUTLINED_FUNCTION_154_0(v2, v4, v3);
}

uint64_t ToolKitToolCompoundPredicate.OperatorType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 29263;
  }

  return 6581825;
}

void ToolKitToolCompoundPredicate.OperatorType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 6581825 && v0 == 0xE300000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(6581825, 0xE300000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 29263 && v0 == 0xE200000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(29263, 0xE200000000000000);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void ToolKitToolQuery.SortOrder.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  OUTLINED_FUNCTION_145_7();
}

void ToolKitToolQuery.SortOrder.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x64726177726F46 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x64726177726F46) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x65737265766552 && v0 == 0xE700000000000000)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_22_7(0x65737265766552);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolQuery.AnyPredicate.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      v4 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v5 = *(v4 + 16);
      v6 = *(v4 + 24);
      v7 = *(v4 + 25);
      v8 = *(v4 + 32);
      __dst[0] = v5;
      LOBYTE(__dst[1]) = v6;
      BYTE1(__dst[1]) = v7;
      __dst[2] = v8;
      sub_1936E13D4();
      break;
    case 2uLL:
      OUTLINED_FUNCTION_93_10((v2 & 0xFFFFFFFFFFFFFFFLL));
      sub_1936E1380();
      break;
    case 3uLL:
      OUTLINED_FUNCTION_93_10((v2 & 0xFFFFFFFFFFFFFFFLL));
      __dst[2] = v3;
      sub_1936E132C();
      break;
    case 4uLL:
      sub_1936E12D8();
      break;
    case 5uLL:
      sub_1936E1284();
      break;
    case 6uLL:
      OUTLINED_FUNCTION_93_10((v2 & 0xFFFFFFFFFFFFFFFLL));
      sub_1936E1230();
      break;
    case 7uLL:
      sub_1936E11DC();
      break;
    case 8uLL:
      OUTLINED_FUNCTION_82_13();
      sub_1936E1188();
      break;
    default:
      memcpy(__dst, (v2 + 16), sizeof(__dst));
      memcpy(v10, __dst, sizeof(v10));
      sub_1936E1428();
      break;
  }

  return sub_19393C540();
}

uint64_t static ToolKitToolRuntimeRequirement.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  switch(*a1 >> 62)
  {
    case 1uLL:
      if (v4 >> 62 != 1)
      {
        goto LABEL_14;
      }

      v44 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      *&v56 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      *v54 = v44;

      OUTLINED_FUNCTION_109(v45, v46, v47, v48, v49, v50, v51, v52, *v54, *&v54[8], *&v54[16], *&v54[24], *&v54[32], *&v54[40], *&v54[48], *&v54[56], *&v54[64], *&v54[72], *&v54[80], v55, v56);
      static ToolKitToolRuntimeRequirement.DeviceCapability.== infix(_:_:)();
      goto LABEL_12;
    case 2uLL:
      OUTLINED_FUNCTION_112_8();
      if (!v23)
      {
        goto LABEL_14;
      }

      v24 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v25 = *(v24 + 48);
      v26 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = *(v26 + 48);
      v28 = *(v24 + 32);
      v56 = *(v24 + 16);
      v57 = v28;
      v58 = v25;
      v29 = *(v26 + 32);
      *v54 = *(v26 + 16);
      *&v54[16] = v29;
      v54[32] = v27;

      OUTLINED_FUNCTION_109(v30, v31, v32, v33, v34, v35, v36, v37, *v54, *&v54[8], *&v54[16], *&v54[24], *&v54[32], *&v54[40], *&v54[48], *&v54[56], *&v54[64], *&v54[72], *&v54[80], v55, v56);
      static ToolKitToolRuntimeRequirement.FeatureFlag.== infix(_:_:)();
      goto LABEL_12;
    case 3uLL:
      OUTLINED_FUNCTION_112_8();
      if (!(!v23 & v38))
      {
        goto LABEL_14;
      }

      v39 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v2 = *(v39 + 24);
      v40 = *(v39 + 16);
      v41 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v42 = *(v41 + 16);
      v43 = *(v41 + 24);

      sub_1936D4718(v40, v2, v42, v43, sub_1936E307C, &type metadata for ToolKitToolRuntimeRequirement.DeviceState);
LABEL_12:
      OUTLINED_FUNCTION_143();

      goto LABEL_13;
    default:
      if (v4 >> 62)
      {
LABEL_14:
        v2 = 0;
      }

      else
      {
        v5 = memcpy(v54, (v4 + 16), 0x52uLL);
        v13 = OUTLINED_FUNCTION_166_6(v5, v6, v7, v8, v9, v10, v11, v12, *v54, *&v54[8], *&v54[16], *&v54[24], *&v54[32], *&v54[40], *&v54[48], *&v54[56], *&v54[64], *&v54[72], *&v54[80], v55, v56);
        memcpy(v13, v14, 0x52uLL);

        OUTLINED_FUNCTION_109(v15, v16, v17, v18, v19, v20, v21, v22, *v54, *&v54[8], *&v54[16], *&v54[24], *&v54[32], *&v54[40], *&v54[48], *&v54[56], *&v54[64], *&v54[72], *&v54[80], v55, v56);
        static ToolKitToolRuntimeRequirement.AvailabilityAnnotation.== infix(_:_:)();
        OUTLINED_FUNCTION_143();

LABEL_13:
      }

      return v2 & 1;
  }
}

uint64_t static ToolKitToolRuntimeRequirement.DeviceCapability.== infix(_:_:)()
{
  OUTLINED_FUNCTION_92_10();
  if (v0 < 0)
  {
    if (v1 < 0)
    {
      v2 = *((v0 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      OUTLINED_FUNCTION_107_12();

      OUTLINED_FUNCTION_148_7(v12, v13, v14, v15, v16, &type metadata for ToolKitToolRuntimeRequirement.DeviceCapability.DeviceCapabilityType);
      goto LABEL_7;
    }
  }

  else if ((v1 & 0x8000000000000000) == 0)
  {
    v22 = *(v0 + 16);
    OUTLINED_FUNCTION_297();
    LOBYTE(v20) = v3;

    OUTLINED_FUNCTION_66_2(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19, v20, v21, v22);
    static ToolKitToolRuntimeRequirement.DeviceCapability.MobileGestalt.== infix(_:_:)();
LABEL_7:
    OUTLINED_FUNCTION_61_0();

    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t ToolKitToolRuntimeRequirement.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1 >> 62)
  {
    case 1uLL:
      *&__dst[0] = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1936E1524();
      break;
    case 2uLL:
      v3 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = *(v3 + 48);
      v5 = *(v3 + 32);
      __dst[0] = *(v3 + 16);
      __dst[1] = v5;
      LOBYTE(__dst[2]) = v4;
      sub_1936E14D0();
      break;
    case 3uLL:
      v6 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = *(v6 + 16);
      LOBYTE(v6) = *(v6 + 24);
      *&__dst[0] = v7;
      BYTE8(__dst[0]) = v6;
      sub_1936E147C();
      break;
    default:
      memcpy(__dst, (v2 + 16), 0x52uLL);
      memcpy(v9, __dst, sizeof(v9));
      sub_1936E1578();
      break;
  }

  return sub_19393C540();
}

uint64_t sub_1936DB888()
{
  OUTLINED_FUNCTION_91_0();
  v0 = OUTLINED_FUNCTION_95_0();
  v4 = OUTLINED_FUNCTION_88_0(v0, v1, v2, v3);
  v7 = v4;
  v9 = *(v4 + 2);
  v8 = *(v4 + 3);
  v10 = v8 >> 1;
  if (v8 >> 1 <= v9)
  {
    OUTLINED_FUNCTION_33_5((v8 > 1), v5, v6, v4);
    OUTLINED_FUNCTION_17_2();
  }

  *(v7 + 16) = v9 + 1;
  v11 = v7 + 16 * v9;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  if (v10 < (v9 + 2))
  {
    v4 = OUTLINED_FUNCTION_39_2((v8 > 1), v5, v6, v7);
    v7 = v4;
  }

  OUTLINED_FUNCTION_149(v4, v5, v6, v7);
  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  return v13;
}

uint64_t ToolKitToolRuntimeRequirement.DeviceState.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x64656B636F6C6E55;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

void ToolKitToolRuntimeRequirement.DeviceState.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 0x64656B636F6C6E55 ? (v5 = v0 == 0xE800000000000000) : (v5 = 0), v5))
  {
  }

  else
  {
    OUTLINED_FUNCTION_29_2(0x64656B636F6C6E55);
    OUTLINED_FUNCTION_61_0();
  }

  OUTLINED_FUNCTION_53_22();
}

uint64_t ToolKitToolRuntimeRequirement.DeviceCapability.hash(into:)()
{
  OUTLINED_FUNCTION_71_19();
  if ((v0 & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_90_16();
    sub_1936E15CC();
  }

  else
  {
    OUTLINED_FUNCTION_303(v0);
    sub_1936E1620();
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD10TypedValueO09PrimitiveG0O14RecurrenceRuleV13LocaleWeekdayO03rawG0AISgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t sub_1936DBAEC()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_63_2();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_53_3(v6, v7, v8, v9);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_46_2(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v20 = OUTLINED_FUNCTION_51((v24 > 1), v0, v22, v23);
    v23 = v20;
  }

  OUTLINED_FUNCTION_45_0(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v25 = OUTLINED_FUNCTION_33_5((v29 > 1), v26, v27, v28);
    v28 = v25;
  }

  OUTLINED_FUNCTION_32(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v30 = OUTLINED_FUNCTION_39_2((v34 > 1), v31, v32, v33);
    v33 = v30;
  }

  OUTLINED_FUNCTION_149(v30, v31, v32, v33);
  OUTLINED_FUNCTION_90_7(v35);
  if (v1 + 6 > (v40 >> 1))
  {
    v36 = OUTLINED_FUNCTION_33_5((v40 > 1), v37, v38, v39);
    v39 = v36;
  }

  OUTLINED_FUNCTION_160_1(v36, v37, v38, v39);
  OUTLINED_FUNCTION_90_7(v41);
  if (v1 + 7 > (v46 >> 1))
  {
    v42 = OUTLINED_FUNCTION_39_2((v46 > 1), v43, v44, v45);
    v45 = v42;
  }

  OUTLINED_FUNCTION_149(v42, v43, v44, v45);
  OUTLINED_FUNCTION_90_7(v47);
  if (v1 + 8 > (v52 >> 1))
  {
    v48 = OUTLINED_FUNCTION_33_5((v52 > 1), v49, v50, v51);
    v51 = v48;
  }

  OUTLINED_FUNCTION_160_1(v48, v49, v50, v51);
  return OUTLINED_FUNCTION_38_1(v53, v54);
}

void ToolKitToolRuntimeRequirement.DeviceCapability.DeviceCapabilityType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_38();
        break;
      case 2:
        OUTLINED_FUNCTION_154_7();
        break;
      case 3:
        OUTLINED_FUNCTION_153_8();
        break;
      case 5:
        OUTLINED_FUNCTION_135_7();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void ToolKitToolRuntimeRequirement.DeviceCapability.DeviceCapabilityType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x73726574736F50 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_22_7(0x73726574736F50) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v8 = v4 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_25_7(17, v7) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_154_7();
        v11 = v1 == v9 && v0 == v10;
        if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = OUTLINED_FUNCTION_153_8();
          v14 = v1 == v12 && v0 == v13;
          if (v14 || (OUTLINED_FUNCTION_0_9(v12, v13) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v15 = v1 == 0xD000000000000013 && 0x8000000193A2E5F0 == v0;
            if (v15 || (OUTLINED_FUNCTION_0_9(0xD000000000000013, 0x8000000193A2E5F0) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v16 = OUTLINED_FUNCTION_135_7();
              v18 = v1 == v16 && v0 == v17;
              if (v18 || (OUTLINED_FUNCTION_0_9(v16, v17) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else if (v1 == 0x6F69746172626956 && v0 == 0xE90000000000006ELL)
              {

                OUTLINED_FUNCTION_90();
              }

              else
              {
                OUTLINED_FUNCTION_30_22(0x6F69746172626956, 110);
                OUTLINED_FUNCTION_61_0();

                v5 = 6;
                if ((v1 & 1) == 0)
                {
                  v5 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t static ToolKitToolToolSummaryString.Component.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a1 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return 0;
  }

LABEL_6:
  OUTLINED_FUNCTION_181_6();
  v6 = v6 && v4 == v5;
  if (v6)
  {
    return 1;
  }

  else
  {
    return sub_19393CA30();
  }
}

uint64_t ToolKitToolToolSummaryString.Component.hash(into:)()
{
  OUTLINED_FUNCTION_71_19();
  OUTLINED_FUNCTION_147_7();
  OUTLINED_FUNCTION_33_25();
  sub_19393C640();
}

uint64_t static ToolKitToolAssistantTypeSchemaDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_92_10();
  if (v0 < 0)
  {
    if (v1 < 0)
    {
      memcpy(v4, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(v4));
      memcpy(__dst, ((v0 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));

      static ToolKitToolAssistantTypeSchemaDefinition.Enumeration.== infix(_:_:)();
      goto LABEL_7;
    }
  }

  else if ((v1 & 0x8000000000000000) == 0)
  {
    memcpy(v4, (v1 + 16), sizeof(v4));
    memcpy(__dst, (v0 + 16), sizeof(__dst));

    static ToolKitToolAssistantTypeSchemaDefinition.Entity.== infix(_:_:)();
LABEL_7:
    OUTLINED_FUNCTION_61_0();

    return v2 & 1;
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t ToolKitToolAssistantTypeSchemaDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_71_19();
  if (v0 < 0)
  {
    memcpy(__dst, ((v0 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    memcpy(v2, __dst, sizeof(v2));
    sub_1936E1674();
  }

  else
  {
    memcpy(__dst, (v0 + 16), sizeof(__dst));
    memcpy(v2, __dst, sizeof(v2));
    sub_1936E16C8();
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

BOOL static ToolKitToolSystemToolProtocol.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = (*a2 >> 57) & 0x78 | *a2 & 7;
  switch((*a1 >> 57) & 0x78 | *a1 & 7)
  {
    case 1uLL:
      if (v5 == 1)
      {
        goto LABEL_131;
      }

      return 0;
    case 2uLL:
      if (v5 != 2)
      {
        return 0;
      }

      goto LABEL_131;
    case 3uLL:
      if (v5 != 3)
      {
        return 0;
      }

      goto LABEL_131;
    case 4uLL:
      if (v5 != 4)
      {
        return 0;
      }

      v36 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      LOBYTE(__dst[0]) = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      LOBYTE(v105[0]) = v36;

      v45 = OUTLINED_FUNCTION_270_0(v37, v38, v39, v40, v41, v42, v43, v44, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], __dst[0]);
      static ToolKitToolSystemToolProtocol.ConditionallyEnabled.== infix(_:_:)(v45, v46);
      goto LABEL_128;
    case 5uLL:
      if (v5 != 5)
      {
        return 0;
      }

      goto LABEL_131;
    case 6uLL:
      if (v5 != 6)
      {
        return 0;
      }

      goto LABEL_131;
    case 7uLL:
      if (v5 != 7)
      {
        return 0;
      }

      goto LABEL_131;
    case 8uLL:
      if (v5 != 8)
      {
        return 0;
      }

      goto LABEL_131;
    case 9uLL:
      if (v5 != 9)
      {
        return 0;
      }

      goto LABEL_131;
    case 0xAuLL:
      if (v5 != 10)
      {
        return 0;
      }

      goto LABEL_131;
    case 0xBuLL:
      if (v5 != 11)
      {
        return 0;
      }

      goto LABEL_131;
    case 0xCuLL:
      if (v5 != 12)
      {
        return 0;
      }

      goto LABEL_131;
    case 0xDuLL:
      if (v5 != 13)
      {
        return 0;
      }

      goto LABEL_131;
    case 0xEuLL:
      if (v5 != 14)
      {
        return 0;
      }

      goto LABEL_131;
    case 0xFuLL:
      if (v5 != 15)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x10uLL:
      if (v5 != 16)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x11uLL:
      if (v5 != 17)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x12uLL:
      if (v5 != 18)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x13uLL:
      if (v5 != 19)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x14uLL:
      if (v5 != 20)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x15uLL:
      if (v5 != 21)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x16uLL:
      if (v5 != 22)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x17uLL:
      if (v5 != 23)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x18uLL:
      if (v5 != 24)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x19uLL:
      if (v5 != 25)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x1AuLL:
      if (v5 != 26)
      {
        return 0;
      }

      OUTLINED_FUNCTION_31_33();

      v82 = OUTLINED_FUNCTION_270_0(v74, v75, v76, v77, v78, v79, v80, v81, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], __dst[0]);
      static ToolKitToolSystemToolProtocol.PlayVideo.== infix(_:_:)(v82);
      goto LABEL_128;
    case 0x1BuLL:
      if (v5 != 27)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x1CuLL:
      if (v5 != 28)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x1DuLL:
      if (v5 != 29)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x1EuLL:
      if (v5 != 30)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x1FuLL:
      if (v5 != 31)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x20uLL:
      if (v5 != 32)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x21uLL:
      if (v5 != 33)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x22uLL:
      if (v5 != 34)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x23uLL:
      if (v5 != 35)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x24uLL:
      if (v5 != 36)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x25uLL:
      if (v5 != 37)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x26uLL:
      if (v5 != 38)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x27uLL:
      if (v5 != 39)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x28uLL:
      if (v5 != 40)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x29uLL:
      if (v5 != 41)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x2AuLL:
      if (v5 != 42)
      {
        return 0;
      }

      OUTLINED_FUNCTION_31_33();

      v64 = OUTLINED_FUNCTION_270_0(v56, v57, v58, v59, v60, v61, v62, v63, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], __dst[0]);
      static ToolKitToolSystemToolProtocol.ShowInAppStringSearchResults.== infix(_:_:)(v64);
      goto LABEL_128;
    case 0x2BuLL:
      if (v5 != 43)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x2CuLL:
      if (v5 != 44)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x2DuLL:
      if (v5 != 45)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x2EuLL:
      if (v5 != 46)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x2FuLL:
      if (v5 != 47)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x30uLL:
      if (v5 != 48)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x31uLL:
      if (v5 != 49)
      {
        return 0;
      }

      OUTLINED_FUNCTION_60_19();

      v35 = OUTLINED_FUNCTION_270_0(v27, v28, v29, v30, v31, v32, v33, v34, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], __dst[0]);
      static ToolKitToolSystemToolProtocol.EntityUpdating.== infix(_:_:)(v35);
      goto LABEL_128;
    case 0x32uLL:
      if (v5 != 50)
      {
        return 0;
      }

      v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x20);
      __dst[0] = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      __dst[1] = v8;
      OUTLINED_FUNCTION_97_8();

      v17 = OUTLINED_FUNCTION_270_0(v9, v10, v11, v12, v13, v14, v15, v16, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], __dst[0]);
      static ToolKitToolSystemToolProtocol.PropertyUpdater.== infix(_:_:)(v17);
      goto LABEL_128;
    case 0x33uLL:
      if (v5 != 51)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x34uLL:
      if (v5 == 52)
      {
        goto LABEL_131;
      }

      return 0;
    case 0x35uLL:
      if (v5 != 53)
      {
        return 0;
      }

      OUTLINED_FUNCTION_60_19();

      v26 = OUTLINED_FUNCTION_270_0(v18, v19, v20, v21, v22, v23, v24, v25, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], __dst[0]);
      static ToolKitToolSystemToolProtocol.SiriKitIntent.== infix(_:_:)(v26);
      goto LABEL_128;
    case 0x36uLL:
      if (v5 != 54)
      {
        return 0;
      }

      OUTLINED_FUNCTION_31_33();

      v91 = OUTLINED_FUNCTION_270_0(v83, v84, v85, v86, v87, v88, v89, v90, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], __dst[0]);
      static ToolKitToolSystemToolProtocol.IntentSideEffect.== infix(_:_:)(v91, v92);
      goto LABEL_128;
    case 0x37uLL:
      if (v5 != 55)
      {
        return 0;
      }

      memcpy(v105, ((v4 & 0xFFFFFFFFFFFFFF8) + 16), sizeof(v105));
      memcpy(__dst, ((v3 & 0xFFFFFFFFFFFFFF8) + 16), sizeof(__dst));

      v101 = OUTLINED_FUNCTION_270_0(v93, v94, v95, v96, v97, v98, v99, v100, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], __dst[0]);
      static ToolKitToolSystemToolProtocol.AssistantSchema.== infix(_:_:)(v101);
      goto LABEL_128;
    case 0x38uLL:
      if (v5 != 56)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x39uLL:
      if (v5 != 57)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x3AuLL:
      if (v5 != 58)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x3BuLL:
      if (v5 != 59)
      {
        return 0;
      }

      OUTLINED_FUNCTION_60_19();

      v73 = OUTLINED_FUNCTION_270_0(v65, v66, v67, v68, v69, v70, v71, v72, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], __dst[0]);
      static ToolKitToolSystemToolProtocol.AppIntent.== infix(_:_:)(v73);
      goto LABEL_128;
    case 0x3CuLL:
      if (v5 != 60)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x3DuLL:
      if (v5 != 61)
      {
        return 0;
      }

      OUTLINED_FUNCTION_31_33();

      v55 = OUTLINED_FUNCTION_270_0(v47, v48, v49, v50, v51, v52, v53, v54, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], __dst[0]);
      static ToolKitToolSystemToolProtocol.SynthesizedToolProtocol.== infix(_:_:)(v55);
LABEL_128:
      OUTLINED_FUNCTION_120_7();
      goto LABEL_129;
    case 0x3EuLL:
      if (v5 != 62)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x3FuLL:
      if (v5 != 63)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x40uLL:
      if (v5 != 64)
      {
        return 0;
      }

      goto LABEL_131;
    case 0x41uLL:
      if (v5 != 65)
      {
        return 0;
      }

LABEL_131:
      v102 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v103 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

      LOBYTE(v102) = sub_1936D4500(v102, v103);

      return v102 & 1;
    default:
      if (v5)
      {
        return 0;
      }

      else
      {

        v6 = OUTLINED_FUNCTION_13_0();
        v2 = sub_1936D4500(v6, v7);

LABEL_129:
      }

      return v2;
  }
}

BOOL static ToolKitToolSystemToolProtocol.IntentSideEffect.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {

        v5 = OUTLINED_FUNCTION_149_8();

        return v5;
      }
    }

    else
    {
      OUTLINED_FUNCTION_112_8();
      if (v10)
      {
        return *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      }
    }
  }

  else if (!(v3 >> 62))
  {
    v7 = *(v2 + 16);

    v8 = OUTLINED_FUNCTION_225();
    sub_1936D4500(v8, v9);
    OUTLINED_FUNCTION_143();

    return v7 & 1;
  }

  return 0;
}

uint64_t ToolKitToolSystemToolProtocol.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch((*v1 >> 57) & 0x78 | *v1 & 7)
  {
    case 4uLL:
      LOBYTE(__dst[0]) = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1936E1A10();
      break;
    case 0x1AuLL:
      OUTLINED_FUNCTION_76_14();
      sub_1936E19BC();
      break;
    case 0x2AuLL:
      OUTLINED_FUNCTION_76_14();
      sub_1936E1968();
      break;
    case 0x31uLL:
      OUTLINED_FUNCTION_93_10((v2 & 0xFFFFFFFFFFFFFF8));
      sub_1936E1914();
      break;
    case 0x32uLL:
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
      v5 = *(v4 + 32);
      __dst[0] = *(v4 + 16);
      __dst[1] = v5;
      sub_1936E18C0();
      break;
    case 0x35uLL:
      OUTLINED_FUNCTION_93_10((v2 & 0xFFFFFFFFFFFFFF8));
      sub_1936E186C();
      break;
    case 0x36uLL:
      OUTLINED_FUNCTION_76_14();
      sub_1936E1818();
      break;
    case 0x37uLL:
      memcpy(__dst, ((v2 & 0xFFFFFFFFFFFFFF8) + 16), sizeof(__dst));
      memcpy(v6, __dst, sizeof(v6));
      sub_1936E17C4();
      break;
    case 0x3BuLL:
      OUTLINED_FUNCTION_93_10((v2 & 0xFFFFFFFFFFFFFF8));
      sub_1936E1770();
      break;
    case 0x3DuLL:
      OUTLINED_FUNCTION_76_14();
      sub_1936E171C();
      break;
    default:
      OUTLINED_FUNCTION_82_13();
      sub_1936D482C();
      break;
  }

  return sub_19393C540();
}

uint64_t ToolKitToolSystemToolProtocol.IntentSideEffect.hash(into:)()
{
  OUTLINED_FUNCTION_71_19();
  if ((v0 >> 62) > 1)
  {
    return sub_19393CAE0();
  }

  OUTLINED_FUNCTION_102_15();
  v1 = sub_1936D482C();
  return OUTLINED_FUNCTION_154_0(v1, &type metadata for ToolKitToolNullValue, v1);
}

uint64_t ToolKitToolToolDefinition.Version1.ToolType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6E65746E49707041;
  switch(*v0)
  {
    case 1:
      result = 0x65746E4969726953;
      break;
    case 2:
      result = 0x6E6F69746341;
      break;
    case 3:
      result = 0x6C6F6F54776F6C46;
      break;
    default:
      return result;
  }

  return result;
}

void ToolKitToolToolDefinition.Version1.ToolType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6E65746E49707041 && v0 == 0xE900000000000074;
    if (v6 || (OUTLINED_FUNCTION_30_22(0x6E65746E49707041, 116) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x65746E4969726953 && v0 == 0xEA0000000000746ELL;
      if (v7 || (OUTLINED_FUNCTION_0_9(0x65746E4969726953, 0xEA0000000000746ELL) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_161_6(1769235265);
        v9 = v4 && v0 == 0xE600000000000000;
        if (v9 || (OUTLINED_FUNCTION_21_38(v8) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x6C6F6F54776F6C46 && v0 == 0xE800000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_29_2(0x6C6F6F54776F6C46);
          OUTLINED_FUNCTION_61_0();

          OUTLINED_FUNCTION_102_0();
          if (v4)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void ToolKitToolToolDefinition.Version1.Flag.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (!(!v3 & v2))
  {
    v4 = 0;
    switch(a2)
    {
      case 1:
        goto LABEL_16;
      case 2:
        v4 = 1;
        goto LABEL_16;
      case 3:
      case 5:
      case 6:
      case 7:
        goto LABEL_10;
      case 4:
        v4 = 2;
        goto LABEL_16;
      case 8:
        v4 = 3;
        goto LABEL_16;
      default:
        JUMPOUT(0);
    }
  }

  switch(a2)
  {
    case 16:
      v4 = 4;
      break;
    case 32:
      v4 = 5;
      break;
    case 64:
      v4 = 6;
      break;
    case 128:
      v4 = 7;
      break;
    default:
LABEL_10:
      v4 = a2;
      break;
  }

LABEL_16:
  *a1 = v4;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t ToolKitToolToolDefinition.Version1.Flag.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_19397F898[result];
  }

  return result;
}

uint64_t sub_1936DCC28()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_63_2();
  if (!(!v12 & v11))
  {
    OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_53_3(v6, v7, v8, v9);
  if (v18 != v19)
  {
    OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_46_2(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v20 = OUTLINED_FUNCTION_51((v24 > 1), v0, v22, v23);
    v23 = v20;
  }

  OUTLINED_FUNCTION_45_0(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v25 = OUTLINED_FUNCTION_33_5((v29 > 1), v26, v27, v28);
    v28 = v25;
  }

  OUTLINED_FUNCTION_32(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v30 = OUTLINED_FUNCTION_39_2((v34 > 1), v31, v32, v33);
    v33 = v30;
  }

  OUTLINED_FUNCTION_149(v30, v31, v32, v33);
  OUTLINED_FUNCTION_90_7(v35);
  if (v1 + 6 > (v40 >> 1))
  {
    v36 = OUTLINED_FUNCTION_33_5((v40 > 1), v37, v38, v39);
    v39 = v36;
  }

  OUTLINED_FUNCTION_160_1(v36, v37, v38, v39);
  OUTLINED_FUNCTION_90_7(v41);
  if (v1 + 7 > (v46 >> 1))
  {
    v42 = OUTLINED_FUNCTION_39_2((v46 > 1), v43, v44, v45);
    v45 = v42;
  }

  OUTLINED_FUNCTION_149(v42, v43, v44, v45);
  OUTLINED_FUNCTION_90_7(v47);
  if (v1 + 8 > (v52 >> 1))
  {
    v48 = OUTLINED_FUNCTION_33_5((v52 > 1), v49, v50, v51);
    v51 = v48;
  }

  OUTLINED_FUNCTION_160_1(v48, v49, v50, v51);
  OUTLINED_FUNCTION_90_7(v53);
  if (v1 + 9 > (v58 >> 1))
  {
    v54 = OUTLINED_FUNCTION_39_2((v58 > 1), v55, v56, v57);
    v57 = v54;
  }

  OUTLINED_FUNCTION_149(v54, v55, v56, v57);
  *(v59 + 32) = 7;
  *(v59 + 40) = v0;
  return v60;
}

void ToolKitToolToolDefinition.Version1.Flag.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_134_10();
        break;
      case 2:
      case 4:
      case 5:
        OUTLINED_FUNCTION_38();
        break;
      case 6:
        OUTLINED_FUNCTION_76_3(16);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void ToolKitToolToolDefinition.Version1.Flag.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x707041736E65704FLL && v0 == 0xEF6E75526E656857;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x707041736E65704FLL, 0xEF6E75526E656857) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_134_10();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v11 = v4 && v10 == v0;
        if (v11 || (OUTLINED_FUNCTION_25_7(16, v10) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v12 = OUTLINED_FUNCTION_164_6();
          v14 = v4 && v13 == v0;
          if (v14 || (OUTLINED_FUNCTION_0_9(v12, v13) & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_26_4();
            v16 = v4 && v15 == v0;
            if (v16 || (OUTLINED_FUNCTION_25_7(16, v15) & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_26_4();
              v18 = v4 && v17 == v0;
              if (v18 || (OUTLINED_FUNCTION_25_7(16, v17) & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v19 = OUTLINED_FUNCTION_165_7();
                v21 = v4 && v20 == v0;
                if (v21 || (OUTLINED_FUNCTION_0_9(v19, v20) & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else if (v1 == 0xD000000000000018 && 0x8000000193A2E630 == v0)
                {

                  OUTLINED_FUNCTION_91_3();
                }

                else
                {
                  OUTLINED_FUNCTION_0_9(0xD000000000000018, 0x8000000193A2E630);
                  OUTLINED_FUNCTION_61_0();

                  v5 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v5 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t ToolKitToolToolDefinition.Version1.VisibilityFlag.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6465766F72707041;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void ToolKitToolToolDefinition.Version1.VisibilityFlag.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
    v7 = v4 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_25_7(19, v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v9 = v4 && v8 == v0;
      if (v9 || (OUTLINED_FUNCTION_25_7(19, v8) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0x6465766F72707041 && v0 == 0xE800000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_29_2(0x6465766F72707041);
        OUTLINED_FUNCTION_61_0();

        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t ToolKitToolToolDefinition.Version1.AuthenticationPolicy.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0xD00000000000001ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

void ToolKitToolToolDefinition.Version1.AuthenticationPolicy.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 1701736270 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_0_9(1701736270, 0xE400000000000000) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v8 = v4 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_25_7(30, v7) & 1) != 0)
      {

        v5 = 1;
      }

      else if (v1 == 0xD000000000000027 && 0x8000000193A2E730 == v0)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9(0xD000000000000027, 0x8000000193A2E730);
        OUTLINED_FUNCTION_61_0();

        OUTLINED_FUNCTION_152_0();
        if (v4)
        {
          v5 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.ParameterFlags.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x69736568746E7953;
  }

  return 0x6E6564646948;
}

void ToolKitToolToolDefinition.Version1.Parameter.ParameterFlags.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6E6564646948 && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_21_38(0x6E6564646948) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x69736568746E7953 && v0 == 0xEB0000000064657ALL)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(0x69736568746E7953, 0xEB0000000064657ALL);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

BOOL static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v2 >> 61 != 1)
      {
        goto LABEL_19;
      }

      v43 = OUTLINED_FUNCTION_149_8();

      return v43;
    case 2uLL:
      if (v2 >> 61 != 2)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_32_28();

      v24 = OUTLINED_FUNCTION_87_2(v16, v17, v18, v19, v20, v21, v22, v23, v62, v63, v64);
      static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.Equals.== infix(_:_:)(v24);
      goto LABEL_18;
    case 3uLL:
      if (v2 >> 61 != 3)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_32_28();

      v33 = OUTLINED_FUNCTION_87_2(v25, v26, v27, v28, v29, v30, v31, v32, v62, v63, v64);
      static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals.== infix(_:_:)(v33);
      goto LABEL_18;
    case 4uLL:
      if (v2 >> 61 != 4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_78_15();

      v15 = OUTLINED_FUNCTION_87_2(v7, v8, v9, v10, v11, v12, v13, v14, v62, v63, v64);
      static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan.== infix(_:_:)(v15);
      goto LABEL_18;
    case 5uLL:
      if (v2 >> 61 != 5)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_78_15();

      v52 = OUTLINED_FUNCTION_87_2(v44, v45, v46, v47, v48, v49, v50, v51, v62, v63, v64);
      static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.LessThan.== infix(_:_:)(v52);
      goto LABEL_18;
    case 6uLL:
      if (v2 >> 61 != 6)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_32_28();

      v61 = OUTLINED_FUNCTION_87_2(v53, v54, v55, v56, v57, v58, v59, v60, v62, v63, v64);
      static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.Contains.== infix(_:_:)(v61);
      goto LABEL_18;
    case 7uLL:
      if (v2 >> 61 != 7)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_32_28();

      v42 = OUTLINED_FUNCTION_87_2(v34, v35, v36, v37, v38, v39, v40, v41, v62, v63, v64);
      static ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain.== infix(_:_:)(v42);
LABEL_18:
      OUTLINED_FUNCTION_120_7();

      return v2 & 1;
    default:
      if (v2 >> 61)
      {
LABEL_19:
        LOBYTE(v2) = 0;
        return v2 & 1;
      }

      else
      {
        v3 = *(*a1 + 16);

        v4 = OUTLINED_FUNCTION_225();
        sub_1936D4500(v4, v5);
        OUTLINED_FUNCTION_143();

        return v3 & 1;
      }
  }
}

uint64_t ToolKitToolToolDefinition.Version1.Parameter.Relationship.Relation.hash(into:)()
{
  OUTLINED_FUNCTION_103_10();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_71_4();
      sub_1936E1C08();
      break;
    case 3:
      OUTLINED_FUNCTION_71_4();
      sub_1936E1BB4();
      break;
    case 4:
      OUTLINED_FUNCTION_90_16();
      sub_1936E1B60();
      break;
    case 5:
      OUTLINED_FUNCTION_90_16();
      sub_1936E1B0C();
      break;
    case 6:
      OUTLINED_FUNCTION_71_4();
      sub_1936E1AB8();
      break;
    case 7:
      OUTLINED_FUNCTION_71_4();
      sub_1936E1A64();
      break;
    default:
      OUTLINED_FUNCTION_65_18();
      sub_1936D482C();
      break;
  }

  OUTLINED_FUNCTION_39_20();
  return sub_19393C540();
}

uint64_t static ToolKitToolToolDefinition.Version1.ToolIcon.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        v5 = (*a1 & 0x3FFFFFFFFFFFFFFFLL);
        v6 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        OUTLINED_FUNCTION_97_8();
        v7 = *(v6 + 64);
        v15[2] = *(v6 + 48);
        v15[3] = v7;
        v8 = v5[2];
        v16 = v5[1];
        v17 = v8;
        v9 = v5[4];
        v18 = v5[3];
        v19 = v9;

        static ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIcon.== infix(_:_:)();
LABEL_15:
        OUTLINED_FUNCTION_120_7();

        return v2 & 1;
      }
    }

    else if (v3 >> 62 == 2)
    {
      v16 = OUTLINED_FUNCTION_118_11();
      v17 = v14;
      OUTLINED_FUNCTION_97_8();

      static ToolKitToolToolDefinition.Version1.ToolIcon.ToolExternalAsset.== infix(_:_:)(&v16, v15);
      goto LABEL_15;
    }

LABEL_16:
    v2 = 0;
    return v2 & 1;
  }

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_181_6();
  v12 = v12 && v10 == v11;
  if (v12)
  {
    v2 = 1;
    return v2 & 1;
  }

  return sub_19393CA30();
}

uint64_t ToolKitToolToolDefinition.Version1.ToolIcon.hash(into:)()
{
  OUTLINED_FUNCTION_71_19();
  if (v0 >> 62)
  {
    if (v0 >> 62 == 1)
    {
      sub_1936E1CB0();
    }

    else
    {
      sub_1936E1C5C();
    }

    return sub_19393C540();
  }

  else
  {
    OUTLINED_FUNCTION_147_7();
    OUTLINED_FUNCTION_33_25();
    sub_19393C640();
  }
}

uint64_t ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x6465746E6954;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

void ToolKitToolToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 0x6465746E6954 ? (v5 = v0 == 0xE600000000000000) : (v5 = 0), v5))
  {
  }

  else
  {
    OUTLINED_FUNCTION_21_38(0x6465746E6954);
    OUTLINED_FUNCTION_61_0();
  }

  OUTLINED_FUNCTION_53_22();
}

uint64_t ToolKitToolAppDefinition.Origin.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x7261506472696854;
  }

  return 0x7261507473726946;
}

void _s27IntelligencePlatformLibrary07ToolKitD13AppDefinitionV6OriginOyAESgSScfC_0()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x7261507473726946 && v0 == 0xEA00000000007974;
    if (v6 || (OUTLINED_FUNCTION_0_9(0x7261507473726946, 0xEA00000000007974) & 1) != 0)
    {

      v5 = 0;
    }

    else if (v1 == 0x7261506472696854 && v0 == 0xEA00000000007974)
    {

      v5 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9(0x7261506472696854, 0xEA00000000007974);
      OUTLINED_FUNCTION_89();
      v5 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void ToolKitToolContainerDefinition.Type.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_144();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void ToolKitToolContainerDefinition.Type.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_161_6(1835360580);
    v7 = v4 && v0 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_21_38(v6) & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v8 = v1 == 0x6F69736E65747845 && v0 == 0xE90000000000006ELL;
      if (v8 || (OUTLINED_FUNCTION_0_9(0x6F69736E65747845, 0xE90000000000006ELL) & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        v9 = v1 == 0x726F77656D617246 && v0 == 0xE90000000000006BLL;
        if (v9 || (OUTLINED_FUNCTION_30_22(0x726F77656D617246, 107) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0xD000000000000012 && 0x8000000193A2E780 == v0)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_25_7(18, 0x8000000193A2E780);
          OUTLINED_FUNCTION_61_0();

          OUTLINED_FUNCTION_102_0();
          if (v4)
          {
            v5 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD13AppDefinitionV6DeviceO2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_92_10();
  if ((v0 & 0x8000000000000000) == 0)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      v2 = *(v0 + 16);

      OUTLINED_FUNCTION_149_8();
      OUTLINED_FUNCTION_61_0();

      return v2 & 1;
    }

    return 0;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_181_6();
  v6 = v6 && v4 == v5;
  if (v6)
  {
    return 1;
  }

  return sub_19393CA30();
}

uint64_t _s27IntelligencePlatformLibrary07ToolKitD13AppDefinitionV6DeviceO4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_71_19();
  if (v0 < 0)
  {
    OUTLINED_FUNCTION_147_7();
    OUTLINED_FUNCTION_33_25();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_102_15();
    v1 = sub_1936D482C();
    return OUTLINED_FUNCTION_154_0(v1, &type metadata for ToolKitToolNullValue, v1);
  }
}