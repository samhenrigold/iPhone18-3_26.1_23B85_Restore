uint64_t sub_1B1E567EC(char a1)
{
  if (!a1)
  {
    return 0x64657461647075;
  }

  if (a1 == 1)
  {
    return 0x6465766F6D6572;
  }

  return 0x6E616E65766F7270;
}

uint64_t sub_1B1E56850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E56574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E56878(uint64_t a1)
{
  v2 = sub_1B1E5CBE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E568B4(uint64_t a1)
{
  v2 = sub_1B1E5CBE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E568F0(uint64_t a1)
{
  v2 = sub_1B1E5CCDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E5692C(uint64_t a1)
{
  v2 = sub_1B1E5CCDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E56968(uint64_t a1)
{
  v2 = sub_1B1E5CC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E569A4(uint64_t a1)
{
  v2 = sub_1B1E5CC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E569E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E566CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E56A10(uint64_t a1)
{
  v2 = sub_1B1E5CC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E56A4C(uint64_t a1)
{
  v2 = sub_1B1E5CC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingReason.Changeset.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_34();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785818, &qword_1B1F31430);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785820, &qword_1B1F31438);
  OUTLINED_FUNCTION_0();
  v46 = v28;
  v47 = v27;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17();
  v45 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785828, &qword_1B1F31440);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_14_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785830, &qword_1B1F31448);
  OUTLINED_FUNCTION_0();
  v48 = v35;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_39_1();
  v37 = *v20;
  OUTLINED_FUNCTION_44(v25, v25[3]);
  sub_1B1E5CBE0();
  sub_1B1F1B830();
  if (!v37)
  {
    sub_1B1E5CCDC();
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B240();
    (*(v33 + 8))(v23, v31);
    OUTLINED_FUNCTION_42();
    v41 = v22;
    v42 = v48;
    goto LABEL_5;
  }

  if (v37 == 1)
  {
    sub_1B1E5CC34();
    sub_1B1F1B240();
    v38 = OUTLINED_FUNCTION_37_1();
    v39(v38);
    OUTLINED_FUNCTION_42();
    v41 = v22;
    v42 = v48;
LABEL_5:
    v40(v41, v42);
    goto LABEL_10;
  }

  sub_1B1E5CC88();
  OUTLINED_FUNCTION_57();
  sub_1B1F1B240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785850, &qword_1B1F31450);
  sub_1B1E5CD30(&qword_1EB784910);
  sub_1B1F1B2B0();
  if (!v21)
  {
    OUTLINED_FUNCTION_77();
    sub_1B1F1B2B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785860, &qword_1B1F31458);
    sub_1B1E5CD98(&unk_1EB785868);
    OUTLINED_FUNCTION_77();
    sub_1B1F1B2B0();
  }

  (*(v46 + 8))(v45, v47);
  OUTLINED_FUNCTION_42();
  v43 = OUTLINED_FUNCTION_56();
  v44(v43);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

uint64_t ToolKitIndexingReason.Changeset.hash(into:)(void *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x1B273E060](v4);
  }

  if (v3 == 1)
  {
    v4 = 2;
    return MEMORY[0x1B273E060](v4);
  }

  v6 = v1[1];
  MEMORY[0x1B273E060](1);
  sub_1B1E5C6BC(a1, v3);
  sub_1B1E5C6BC(a1, v6);
  v7 = OUTLINED_FUNCTION_43_0();

  return sub_1B1E5C0C8(v7, v8);
}

uint64_t ToolKitIndexingReason.Changeset.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  OUTLINED_FUNCTION_35_0(a1);
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x1B273E060](1);
      sub_1B1E5C6BC(__src, v3);
      sub_1B1E5C6BC(__src, v2);
      sub_1B1E5C0C8(__src, v4);
      return sub_1B1F1B7F0();
    }

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1B273E060](v5);
  return sub_1B1F1B7F0();
}

void ToolKitIndexingReason.Changeset.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_34();
  v24 = v23;
  v72 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785880, &qword_1B1F31460);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_17();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785888, &qword_1B1F31468);
  OUTLINED_FUNCTION_0();
  v71 = v27;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_39_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785890, &qword_1B1F31470);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21_4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785898, &qword_1B1F31478);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_60();
  v74 = v24;
  OUTLINED_FUNCTION_44(v24, v24[3]);
  sub_1B1E5CBE0();
  sub_1B1F1B810();
  if (!v20)
  {
    v75 = v33;
    v35 = v22;
    sub_1B1F1B210();
    sub_1B1E32BFC();
    if (v37 != v36 >> 1)
    {
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_65();
      if (v40 == v41)
      {
        __break(1u);
        return;
      }

      v42 = v31;
      v43 = *(v39 + v38);
      sub_1B1E32BF8();
      v45 = v44;
      v47 = v46;
      swift_unknownObjectRelease();
      if (v45 == v47 >> 1)
      {
        if (v43)
        {
          if (v43 != 1)
          {
            sub_1B1E5CC34();
            OUTLINED_FUNCTION_57();
            sub_1B1F1B180();
            v61 = v72;
            swift_unknownObjectRelease();
            v64 = OUTLINED_FUNCTION_35_1();
            v65(v64);
            v66 = OUTLINED_FUNCTION_19_6();
            v67(v66, v42);
            v69 = 0;
            v70 = 0;
            v68 = 1;
            v56 = v74;
            goto LABEL_16;
          }

          LOBYTE(a10) = 1;
          sub_1B1E5CC88();
          v48 = v42;
          OUTLINED_FUNCTION_57();
          sub_1B1F1B180();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785850, &qword_1B1F31450);
          LOBYTE(v77) = 0;
          v62 = sub_1B1E5CD30(&qword_1EB783240);
          v63 = OUTLINED_FUNCTION_64(v62, &v77);
          v68 = a10;
          LOBYTE(v76) = 1;
          OUTLINED_FUNCTION_64(v63, &v76);
          v69 = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785860, &qword_1B1F31458);
          sub_1B1E5CD98(&unk_1EB783248);
          sub_1B1F1B200();
          swift_unknownObjectRelease();
          (*(v71 + 8))(v21, v73);
          (*(v75 + 8))(v35, v48);
          v70 = v76;
        }

        else
        {
          sub_1B1E5CCDC();
          OUTLINED_FUNCTION_57();
          sub_1B1F1B180();
          swift_unknownObjectRelease();
          v57 = OUTLINED_FUNCTION_37_1();
          v58(v57, v29);
          v59 = OUTLINED_FUNCTION_19_6();
          v60(v59, v42);
          v68 = 0;
          v69 = 0;
          v70 = 0;
        }

        v56 = v74;
        v61 = v72;
LABEL_16:
        *v61 = v68;
        v61[1] = v69;
        v61[2] = v70;
        goto LABEL_12;
      }

      v31 = v42;
    }

    v49 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13(v49, MEMORY[0x1E69E6B28]);
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v51 = &type metadata for ToolKitIndexingReason.Changeset;
    v52 = sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8(v52);
    OUTLINED_FUNCTION_11_2();
    (*(v53 + 104))(v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    v54 = OUTLINED_FUNCTION_19_6();
    v55(v54, v31);
  }

  v56 = v74;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v56);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E57748(uint64_t a1)
{
  v2 = *(v1 + 2);
  v5 = *v1;
  v6 = v2;
  sub_1B1F1B7C0();
  ToolKitIndexingReason.Changeset.hash(into:)(v4);
  return sub_1B1F1B7F0();
}

__n128 ToolKitIndexingReason.init(id:trigger:changeset:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v15 = *a3;
  v9 = a3[1].n128_u64[0];
  sub_1B1F1A350();
  OUTLINED_FUNCTION_10();
  (*(v10 + 32))(a4, a1);
  v11 = type metadata accessor for ToolKitIndexingReason(0);
  v12 = a4 + *(v11 + 20);
  *v12 = v6;
  *(v12 + 8) = v7;
  *(v12 + 16) = v8;
  v13 = (a4 + *(v11 + 24));
  result = v15;
  *v13 = v15;
  v13[1].n128_u64[0] = v9;
  return result;
}

uint64_t static ToolKitIndexingReason.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1B1F1A310() & 1) != 0 && (v4 = type metadata accessor for ToolKitIndexingReason(0), v5 = *(v4 + 20), v6 = *(a1 + v5 + 8), v7 = *(a1 + v5 + 16), v31 = *(a1 + v5), v32 = v6, LOBYTE(v33) = v7, v8 = a2 + v5, v10 = *(v8 + 8), v11 = *(v8 + 16), v28 = *v8, v9 = v28, v29 = v10, LOBYTE(v30) = v11, v12 = OUTLINED_FUNCTION_88(), sub_1B1E50C7C(v12, v13, v7), sub_1B1E50C7C(v28, v10, v11), v14 = static ToolKitIndexingReason.Trigger.== infix(_:_:)(&v31, &v28), sub_1B1E5120C(v9, v10, v11), v15 = OUTLINED_FUNCTION_88(), sub_1B1E5120C(v15, v16, v7), (v14))
  {
    v17 = *(v4 + 24);
    v18 = a1 + v17;
    v19 = *(a1 + v17);
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v22 = (a2 + v17);
    v24 = v22[1];
    v25 = v22[2];
    v28 = *v22;
    v23 = v28;
    v29 = v24;
    v30 = v25;
    sub_1B1E50CE0(v19, v20, v21);
    sub_1B1E50CE0(v23, v24, v25);
    v26 = static ToolKitIndexingReason.Changeset.== infix(_:_:)(&v31, &v28);
    sub_1B1E5CAE8(v23);
    sub_1B1E5CAE8(v19);
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_1B1E579B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657365676E616863 && a2 == 0xE900000000000074)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B1E57AC0(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x72656767697274;
  }

  return 0x657365676E616863;
}

uint64_t sub_1B1E57B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E579B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E57B40(uint64_t a1)
{
  v2 = sub_1B1E5CE20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E57B7C(uint64_t a1)
{
  v2 = sub_1B1E5CE20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolKitIndexingReason.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7858A0, &qword_1B1F31480);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_44(a1, a1[3]);
  v10 = sub_1B1E5CE20();
  OUTLINED_FUNCTION_91(&type metadata for ToolKitIndexingReason.CodingKeys, v11, v10);
  LOBYTE(v30) = 0;
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_18();
  v13 = sub_1B1DF6BE0(v12);
  OUTLINED_FUNCTION_34_1(v4, &v30, v14, v15, v13);
  if (!v2)
  {
    v16 = type metadata accessor for ToolKitIndexingReason(0);
    v17 = v4 + *(v16 + 20);
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v30 = *v17;
    v31 = v18;
    LOBYTE(v32) = v19;
    OUTLINED_FUNCTION_84();
    sub_1B1E50C7C(v20, v21, v22);
    sub_1B1E5CE74();
    OUTLINED_FUNCTION_44_0();
    sub_1B1F1B2B0();
    sub_1B1E5120C(v30, v31, v32);
    v23 = (v4 + *(v16 + 24));
    v24 = v23[1];
    v25 = v23[2];
    v30 = *v23;
    v31 = v24;
    v32 = v25;
    OUTLINED_FUNCTION_82();
    sub_1B1E50CE0(v26, v27, v28);
    sub_1B1E5CB38();
    OUTLINED_FUNCTION_44_0();
    sub_1B1F1B2B0();
    sub_1B1E5CAE8(v30);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t ToolKitIndexingReason.hash(into:)()
{
  OUTLINED_FUNCTION_50();
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_18();
  sub_1B1DF6BE0(v2);
  OUTLINED_FUNCTION_59();
  sub_1B1F1A800();
  v3 = type metadata accessor for ToolKitIndexingReason(0);
  OUTLINED_FUNCTION_83(v1 + *(v3 + 20));
  ToolKitIndexingReason.Trigger.hash(into:)(v0);
  v4 = (v1 + *(v3 + 24));
  v5 = *v4;
  if (!*v4)
  {
    v6 = 0;
    return MEMORY[0x1B273E060](v6);
  }

  if (v5 == 1)
  {
    v6 = 2;
    return MEMORY[0x1B273E060](v6);
  }

  v8 = v4[1];
  MEMORY[0x1B273E060](1);
  sub_1B1E5C6BC(v0, v5);
  sub_1B1E5C6BC(v0, v8);
  v9 = OUTLINED_FUNCTION_59();

  return sub_1B1E5C0C8(v9, v10);
}

uint64_t sub_1B1E57ED8(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_35_0(a1);
  a1(v3);
  return sub_1B1F1B7F0();
}

void ToolKitIndexingReason.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  v26 = v25;
  v41 = v27;
  v28 = sub_1B1F1A350();
  OUTLINED_FUNCTION_0();
  v42 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_80(v32 - v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858B0, &qword_1B1F31488);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v33);
  v34 = type metadata accessor for ToolKitIndexingReason(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_44(v26, v26[3]);
  sub_1B1E5CE20();
  sub_1B1F1B810();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    LOBYTE(v44) = 0;
    OUTLINED_FUNCTION_0_18();
    sub_1B1DF6BE0(v36);
    sub_1B1F1B200();
    (*(v42 + 32))(v24, v43, v28);
    OUTLINED_FUNCTION_84();
    sub_1B1E5CEC8();
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B200();
    v37 = v24 + *(v34 + 20);
    *v37 = v44;
    *(v37 + 16) = v45;
    OUTLINED_FUNCTION_82();
    sub_1B1E5CB8C();
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B200();
    v38 = OUTLINED_FUNCTION_41_0();
    v39(v38);
    v40 = v24 + *(v34 + 24);
    *v40 = v44;
    *(v40 + 16) = v45;
    OUTLINED_FUNCTION_27_3();
    sub_1B1E5CF1C(v24, v41);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_26_2();
    sub_1B1E5C898();
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E582D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1B1F1B7C0();
  a4(v6);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E5833C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001B1F39620 == a2;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B1F39640 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

unint64_t sub_1B1E58410(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1B1E5844C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E5833C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E58474(uint64_t a1)
{
  v2 = sub_1B1E5CF74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E584B0(uint64_t a1)
{
  v2 = sub_1B1E5CF74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E584EC(uint64_t a1)
{
  v2 = sub_1B1E5D01C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E58528(uint64_t a1)
{
  v2 = sub_1B1E5D01C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E58564(uint64_t a1)
{
  v2 = sub_1B1E5CFC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E585A0(uint64_t a1)
{
  v2 = sub_1B1E5CFC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingRequest.Response.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858B8, &qword_1B1F31490);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858C0, &qword_1B1F31498);
  OUTLINED_FUNCTION_0();
  v18 = v7;
  v19 = v6;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858C8, &qword_1B1F314A0);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_60();
  v13 = *v0;
  OUTLINED_FUNCTION_44(v4, v4[3]);
  sub_1B1E5CF74();
  sub_1B1F1B830();
  v14 = (v11 + 8);
  if (v13)
  {
    OUTLINED_FUNCTION_84();
    sub_1B1E5CFC8();
    OUTLINED_FUNCTION_76();
    sub_1B1F1B240();
    v15 = OUTLINED_FUNCTION_37_1();
  }

  else
  {
    sub_1B1E5D01C();
    OUTLINED_FUNCTION_76();
    sub_1B1F1B240();
    v16 = v19;
    v17 = *(v18 + 8);
    v15 = v2;
  }

  v17(v15, v16);
  (*v14)(v1, v9);
  OUTLINED_FUNCTION_35();
}

uint64_t ToolKitIndexingRequest.Response.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_35_0(a1);
  MEMORY[0x1B273E060](v2);
  return sub_1B1F1B7F0();
}

void ToolKitIndexingRequest.Response.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v60 = v28;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858E8, &qword_1B1F314A8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858F0, &qword_1B1F314B0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_38_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7858F8, &qword_1B1F314B8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_10();
  v34 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_44(v34, v35);
  sub_1B1E5CF74();
  OUTLINED_FUNCTION_68();
  sub_1B1F1B810();
  if (!v23)
  {
    v62 = v27;
    sub_1B1F1B210();
    sub_1B1E32BFC();
    if (v37 != v36 >> 1)
    {
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_65();
      if (v40 == v41)
      {
        __break(1u);
        return;
      }

      v42 = *(v39 + v38);
      sub_1B1E32BF8();
      v44 = v43;
      v46 = v45;
      swift_unknownObjectRelease();
      if (v44 == v46 >> 1)
      {
        if (v42)
        {
          OUTLINED_FUNCTION_84();
          sub_1B1E5CFC8();
          OUTLINED_FUNCTION_74(&type metadata for ToolKitIndexingRequest.Response.ReindexingNotNeededCodingKeys, &a13);
          v47 = v60;
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_25_5();
          v50 = v61;
        }

        else
        {
          a12 = 0;
          sub_1B1E5D01C();
          OUTLINED_FUNCTION_74(&type metadata for ToolKitIndexingRequest.Response.ReindexingFinishedCodingKeys, &a12);
          v47 = v60;
          swift_unknownObjectRelease();
          v48 = OUTLINED_FUNCTION_25_5();
          v50 = v30;
        }

        v49(v48, v50);
        v58 = OUTLINED_FUNCTION_35_1();
        v59(v58);
        *v47 = v42;
        __swift_destroy_boxed_opaque_existential_1(v62);
        goto LABEL_10;
      }
    }

    v51 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13(v51, MEMORY[0x1E69E6B28]);
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v53 = &type metadata for ToolKitIndexingRequest.Response;
    v54 = sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8(v54);
    OUTLINED_FUNCTION_11_2();
    (*(v55 + 104))(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = OUTLINED_FUNCTION_36_1();
    v57(v56, v32);
    v27 = v62;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_10:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E58C94(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E697972746572 && a2 == 0xED0000726F727245)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E58D38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73656D6974 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E58E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E58C94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E58E2C(uint64_t a1)
{
  v2 = sub_1B1E5D070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E58E68(uint64_t a1)
{
  v2 = sub_1B1E5D070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E58EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E58D38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E58ED4(uint64_t a1)
{
  v2 = sub_1B1E5D0C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E58F10(uint64_t a1)
{
  v2 = sub_1B1E5D0C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingRequest.TestingConfig.Failure.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785900, &qword_1B1F314C0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_39_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785908, &qword_1B1F314C8);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E5D070();
  sub_1B1F1B830();
  sub_1B1E5D0C4();
  sub_1B1F1B240();
  sub_1B1F1B2A0();
  v8 = OUTLINED_FUNCTION_56();
  v9(v8);
  (*(v6 + 8))(v0, v4);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_35();
}

void ToolKitIndexingRequest.TestingConfig.Failure.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v30 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785920, &qword_1B1F314D0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_60();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785928, &qword_1B1F314D8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E5D070();
  sub_1B1F1B810();
  if (v0)
  {
    goto LABEL_9;
  }

  v7 = sub_1B1F1B210();
  sub_1B1E322BC(v7, 0);
  v9 = v5;
  if (v10 == v8 >> 1)
  {
LABEL_8:
    v17 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13(v17, MEMORY[0x1E69E6B28]);
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v19 = &type metadata for ToolKitIndexingRequest.TestingConfig.Failure;
    v20 = sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8(v20);
    OUTLINED_FUNCTION_11_2();
    (*(v21 + 104))(v19);
    swift_willThrow();
    swift_unknownObjectRelease();
    v22 = OUTLINED_FUNCTION_47();
    v23(v22, v9);
LABEL_9:
    v29 = v2;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_65();
  if (v11 == v12)
  {
    __break(1u);
    return;
  }

  sub_1B1E32BF8();
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRelease();
  if (v14 != v16 >> 1)
  {
    v9 = v5;
    goto LABEL_8;
  }

  sub_1B1E5D0C4();
  OUTLINED_FUNCTION_57();
  sub_1B1F1B180();
  v24 = sub_1B1F1B1F0();
  swift_unknownObjectRelease();
  v25 = OUTLINED_FUNCTION_85();
  v26(v25);
  v27 = OUTLINED_FUNCTION_56();
  v28(v27);
  *v30 = v24;
  v29 = v2;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E594D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E59564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E594D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E59590(uint64_t a1)
{
  v2 = sub_1B1E5D118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E595CC(uint64_t a1)
{
  v2 = sub_1B1E5D118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ToolKitIndexingRequest.TestingConfig.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785930, &qword_1B1F314E0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_44(v1, v1[3]);
  sub_1B1E5D118();
  OUTLINED_FUNCTION_68();
  sub_1B1F1B830();
  sub_1B1E5D16C();
  sub_1B1F1B260();
  v3 = OUTLINED_FUNCTION_35_1();
  v4(v3);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_35();
}

void ToolKitIndexingRequest.TestingConfig.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785948, &qword_1B1F314E8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E5D118();
  sub_1B1F1B810();
  if (!v0)
  {
    sub_1B1E5D1C0();
    OUTLINED_FUNCTION_76();
    sub_1B1F1B1B0();
    v6 = OUTLINED_FUNCTION_58();
    v7(v6);
    *v4 = v8;
    *(v4 + 8) = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E598DC@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  a2(0);
  OUTLINED_FUNCTION_10();
  v8 = *(v7 + 16);

  return v8(a3, v3 + v5, v6);
}

void ToolKitIndexingRequest.testingConfig.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig + 8);
  v3 = *(v1 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig + 9);
  *a1 = *(v1 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

id ToolKitIndexingRequest.__allocating_init(reason:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785958, &qword_1B1F314F0);
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = *(type metadata accessor for ToolKitIndexingReason(v2) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1B1F2A3B0;
  OUTLINED_FUNCTION_27_3();
  sub_1B1E5CF1C(a1, v5 + v4);
  v6 = ToolKitIndexingRequest.__allocating_init(reasons:)();
  OUTLINED_FUNCTION_26_2();
  sub_1B1E5C898();
  return v6;
}

id ToolKitIndexingRequest.__allocating_init(reasons:)()
{
  OUTLINED_FUNCTION_50();
  v1 = sub_1B1F1A2F0();
  v2 = OUTLINED_FUNCTION_8(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_3();
  v5 = v4 - v3;
  v6 = sub_1B1F1A350();
  v7 = OUTLINED_FUNCTION_8(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v10 = v9 - v8;
  sub_1B1F1A340();
  sub_1B1F1A2E0();
  v13 = 0;
  v14 = 256;
  v11 = objc_allocWithZone(type metadata accessor for ToolKitIndexingRequest(0));
  return sub_1B1E59C44(v0, v10, v5, 0, &v13);
}

id ToolKitIndexingRequest.__allocating_init(reasons:testingConfig:)()
{
  OUTLINED_FUNCTION_50();
  v0 = sub_1B1F1A2F0();
  v1 = OUTLINED_FUNCTION_8(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_3();
  v4 = v3 - v2;
  v5 = sub_1B1F1A350();
  v6 = OUTLINED_FUNCTION_8(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_38_0();
  sub_1B1F1A340();
  sub_1B1F1A2E0();
  v7 = objc_allocWithZone(type metadata accessor for ToolKitIndexingRequest(0));
  v8 = OUTLINED_FUNCTION_59();
  return sub_1B1E59C44(v8, v9, v4, 0, v10);
}

id sub_1B1E59C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v24 = a4;
  v25 = a3;
  v23 = a1;
  v8 = sub_1B1F1A2F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a5;
  v12 = *(a5 + 8);
  v13 = *(a5 + 9);
  v14 = OBJC_IVAR___WFToolKitIndexingRequest_id;
  v15 = sub_1B1F1A350();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v5[v14], a2, v15);
  sub_1B1F1A2E0();
  (*(v9 + 32))(&v5[OBJC_IVAR___WFToolKitIndexingRequest_timestamp], v11, v8);
  v17 = v24;
  *&v5[OBJC_IVAR___WFToolKitIndexingRequest_reasons] = v23;
  *&v5[OBJC_IVAR___WFToolKitIndexingRequest_retryCount] = v17;
  v18 = &v5[OBJC_IVAR___WFToolKitIndexingRequest_testingConfig];
  *v18 = v22;
  v18[8] = v12;
  v18[9] = v13;
  v19 = type metadata accessor for ToolKitIndexingRequest(0);
  v26.receiver = v5;
  v26.super_class = v19;
  v20 = objc_msgSendSuper2(&v26, sel_init);
  (*(v9 + 8))(v25, v8);
  (*(v16 + 8))(a2, v15);
  return v20;
}

id sub_1B1E59E38()
{
  OUTLINED_FUNCTION_50();
  v2 = sub_1B1F1A2F0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_3();
  v8 = v7 - v6;
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_3();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10, v1 + OBJC_IVAR___WFToolKitIndexingRequest_id);
  (*(v4 + 16))(v8, v1 + OBJC_IVAR___WFToolKitIndexingRequest_timestamp, v2);
  OUTLINED_FUNCTION_55((v1 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig));
  v14 = objc_allocWithZone(type metadata accessor for ToolKitIndexingRequest(0));
  v15 = sub_1B1F1A760();
  return sub_1B1E59C44(v15, v12, v8, v0, &v17);
}

uint64_t sub_1B1E5A03C(void *a1)
{
  if (qword_1EB7833B8 != -1)
  {
    swift_once();
  }

  type metadata accessor for ToolKitIndexingRequest(0);
  OUTLINED_FUNCTION_29_3();
  sub_1B1DF6BE0(v2);
  v3 = sub_1B1F1A030();
  v5 = v4;
  v6 = sub_1B1F1A250();
  v7 = sub_1B1F1A860();
  [a1 encodeObject:v6 forKey:v7];

  return sub_1B1E03C48(v3, v5);
}

id ToolKitIndexingRequest.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_1B1E5D234();
  v4 = sub_1B1F1AE70();
  if (v4)
  {
    v5 = v4;
    if (qword_1EB7833D0 != -1)
    {
      swift_once();
    }

    v6 = v5;
    sub_1B1F1A290();

    OUTLINED_FUNCTION_29_3();
    sub_1B1DF6BE0(v7);
    sub_1B1F1A000();

    v8 = OUTLINED_FUNCTION_86();
    sub_1B1E03C48(v8, v9);
    v10 = v21;
    v11 = OBJC_IVAR___WFToolKitIndexingRequest_id;
    sub_1B1F1A350();
    OUTLINED_FUNCTION_10();
    (*(v12 + 16))(&v2[v11], &v21[v11]);
    v13 = OBJC_IVAR___WFToolKitIndexingRequest_timestamp;
    sub_1B1F1A2F0();
    OUTLINED_FUNCTION_10();
    (*(v14 + 16))(&v2[v13], &v21[v13]);
    *&v2[OBJC_IVAR___WFToolKitIndexingRequest_reasons] = *&v21[OBJC_IVAR___WFToolKitIndexingRequest_reasons];
    *&v2[OBJC_IVAR___WFToolKitIndexingRequest_retryCount] = *&v10[OBJC_IVAR___WFToolKitIndexingRequest_retryCount];
    v15 = *&v10[OBJC_IVAR___WFToolKitIndexingRequest_testingConfig];
    v16 = v10[OBJC_IVAR___WFToolKitIndexingRequest_testingConfig + 8];
    LOBYTE(v6) = v10[OBJC_IVAR___WFToolKitIndexingRequest_testingConfig + 9];
    sub_1B1F1A760();

    v17 = &v2[OBJC_IVAR___WFToolKitIndexingRequest_testingConfig];
    *v17 = v15;
    v17[8] = v16;
    v17[9] = v6;
    v20.receiver = v2;
    v20.super_class = type metadata accessor for ToolKitIndexingRequest(0);
    v18 = objc_msgSendSuper2(&v20, sel_init);
  }

  else
  {

    type metadata accessor for ToolKitIndexingRequest(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v18;
}

unint64_t sub_1B1E5A53C()
{
  OUTLINED_FUNCTION_62();
  sub_1B1F1AFA0();

  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_18();
  sub_1B1DF6BE0(v1);
  v2 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v2);

  MEMORY[0x1B273D1A0](0x6E6F73616572202CLL, 0xEB00000000203A73);
  v3 = *(v0 + OBJC_IVAR___WFToolKitIndexingRequest_reasons);
  v4 = type metadata accessor for ToolKitIndexingReason(0);
  v5 = MEMORY[0x1B273D250](v3, v4);
  MEMORY[0x1B273D1A0](v5);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

id ToolKitIndexingRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B1E5A6D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736E6F73616572 && a2 == 0xE700000000000000;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL;
        if (v8 || (sub_1B1F1B510() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x43676E6974736574 && a2 == 0xED00006769666E6FLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B1F1B510();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1B1E5A890(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_35_0(a1);
  MEMORY[0x1B273E060](v1);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E5A8D0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x736E6F73616572;
      break;
    case 3:
      result = 0x756F437972746572;
      break;
    case 4:
      result = 0x43676E6974736574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E5A97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E5A6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E5A9A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E5A888();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E5A9CC(uint64_t a1)
{
  v2 = sub_1B1E5D278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E5AA08(uint64_t a1)
{
  v2 = sub_1B1E5D278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ToolKitIndexingRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToolKitIndexingRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1E5AB28(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785968, &qword_1B1F314F8);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_44(a1, a1[3]);
  v10 = sub_1B1E5D278();
  OUTLINED_FUNCTION_91(&type metadata for ToolKitIndexingRequest.CodingKeys, v11, v10);
  v12 = OBJC_IVAR___WFToolKitIndexingRequest_id;
  LOBYTE(v26) = 0;
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0_18();
  v14 = sub_1B1DF6BE0(v13);
  OUTLINED_FUNCTION_34_1(v4 + v12, &v26, v15, v16, v14);
  if (!v2)
  {
    v17 = OBJC_IVAR___WFToolKitIndexingRequest_timestamp;
    LOBYTE(v26) = 1;
    sub_1B1F1A2F0();
    OUTLINED_FUNCTION_33_3();
    v19 = sub_1B1DF6BE0(v18);
    OUTLINED_FUNCTION_34_1(v4 + v17, &v26, v20, v21, v19);
    v26 = *(v4 + OBJC_IVAR___WFToolKitIndexingRequest_reasons);
    OUTLINED_FUNCTION_82();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785970, &qword_1B1F31500);
    v22 = sub_1B1E5D2CC(&unk_1EB783278);
    OUTLINED_FUNCTION_34_1(&v26, &v27, v23, v24, v22);
    LOBYTE(v26) = 3;
    OUTLINED_FUNCTION_44_0();
    sub_1B1F1B2A0();
    OUTLINED_FUNCTION_55((v4 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig));
    v27 = 4;
    sub_1B1E5D354();
    OUTLINED_FUNCTION_44_0();
    sub_1B1F1B260();
  }

  return (*(v8 + 8))(v3, v6);
}

void ToolKitIndexingRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_25_4();
  v25 = sub_1B1F1A2F0();
  OUTLINED_FUNCTION_0();
  v46 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_3();
  v30 = v29 - v28;
  sub_1B1F1A350();
  OUTLINED_FUNCTION_0();
  v45 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_3();
  v47 = v34 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785980, &qword_1B1F31508);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21_4();
  v36 = OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_44(v36, v37);
  sub_1B1E5D278();
  sub_1B1F1B810();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    type metadata accessor for ToolKitIndexingRequest(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v49) = 0;
    OUTLINED_FUNCTION_0_18();
    sub_1B1DF6BE0(v38);
    sub_1B1F1B200();
    (*(v45 + 32))(v23 + OBJC_IVAR___WFToolKitIndexingRequest_id, v47);
    LOBYTE(v49) = 1;
    OUTLINED_FUNCTION_33_3();
    sub_1B1DF6BE0(v39);
    sub_1B1F1B200();
    (*(v46 + 32))(v23 + OBJC_IVAR___WFToolKitIndexingRequest_timestamp, v30, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785970, &qword_1B1F31500);
    OUTLINED_FUNCTION_82();
    sub_1B1E5D2CC(&unk_1EB783270);
    sub_1B1F1B200();
    *(v23 + OBJC_IVAR___WFToolKitIndexingRequest_reasons) = v49;
    LOBYTE(v49) = 3;
    *(v23 + OBJC_IVAR___WFToolKitIndexingRequest_retryCount) = sub_1B1F1B1F0();
    sub_1B1E5D3A8();
    sub_1B1F1B1B0();
    v40 = v50;
    v41 = v51;
    v42 = v23 + OBJC_IVAR___WFToolKitIndexingRequest_testingConfig;
    *v42 = v49;
    v42[8] = v40;
    v42[9] = v41;
    v48.receiver = v23;
    v48.super_class = type metadata accessor for ToolKitIndexingRequest(0);
    objc_msgSendSuper2(&v48, sel_init);
    v43 = OUTLINED_FUNCTION_22_5();
    v44(v43);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E5B324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ToolKitIndexingRequest.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ToolKitTestingRetryingError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785988, &qword_1B1F31510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000001B1F39400;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  return sub_1B1F1A730();
}

uint64_t ToolKitTestingRetryingError.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  MEMORY[0x1B273E060](0);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E5B4F8(uint64_t a1)
{
  v2 = sub_1B1E5FC64();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B1E5B534(uint64_t a1)
{
  v2 = sub_1B1E5FC64();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B1E5B570(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_1B1F1A760();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_1B1F1A760();
        sub_1B1E5BB74(v12, v13);

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
        return result;
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

  return result;
}

uint64_t sub_1B1E5B69C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v57 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = sub_1B1F1A760();
    v15 = 0;
    v50 = v12;
    v51 = v7;
    v52 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A900();
        v20 = sub_1B1F1B7F0();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_1B1F1B510() & 1) != 0)
          {
            v54 = v48;
            v55 = v16;
            v56 = v11;
            v3 = v51;
            v12 = v52;
            v53[0] = v52;
            v53[1] = v51;

            v25 = *(v5 + 32);
            v45 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v45;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v46 = &v44;
              MEMORY[0x1EEE9AC00](v24);
              v7 = &v44 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v49 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v50;
              while (1)
              {
                v47 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_1B1F1B7C0();
                sub_1B1F1A760();
                sub_1B1F1A900();
                v34 = sub_1B1F1B7F0();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v51;
                    v12 = v52;
                    v29 = v50;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_1B1F1B510();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v49[v7];
                v49[v7] = v39 & ~v8;
                v3 = v51;
                v12 = v52;
                v29 = v50;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v47 - 1;
                if (__OFSUB__(v47, 1))
                {
                  __break(1u);
                }

                if (v47 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  sub_1B1E6754C(v49, v45, v47, v5);
                  v5 = v40;
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v42 = swift_slowAlloc();
            v43 = sub_1B1E5BE88(v42, v45, (v5 + 56), v45, v5, v7, v53);

            MEMORY[0x1B273F720](v42, -1, -1);
            v12 = v53[0];
            v48 = v54;
            v5 = v43;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v51;
        v14 = v52;
        v12 = v50;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_1B1E2CC74(v14);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

uint64_t sub_1B1E5BB74(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v6 = sub_1B1F1B7F0();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1B1F1B510() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B1E6573C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1B1E5BF10(v8);
  *v2 = v15;
  return v13;
}

void sub_1B1E5BC9C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1B1F1B7C0();
    sub_1B1F1A760();
    sub_1B1F1A900();
    v16 = sub_1B1F1B7F0();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1B1F1B510();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = result[v19];
    result[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_1B1E6754C(result, a2, v26, a3);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1B1E5BE88(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1B1E5BC9C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

unint64_t sub_1B1E5BF10(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B1F1AF20();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A900();
        v10 = sub_1B1F1B7F0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B1E5C0C8(const void *a1, uint64_t a2)
{
  v46 = type metadata accessor for LaunchServicesSnapshot(0);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v39 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v12 = sub_1B1F1B7F0();
  v13 = a2 + 56;
  v14 = 1 << *(a2 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a2 + 56);
  v52 = (v14 + 63) >> 6;
  result = sub_1B1F1A760();
  v18 = 0;
  v19 = 0;
  v49 = v12;
  v50 = a2 + 56;
  v44 = a2;
  v43 = v5;
  v42 = v6;
  v41 = v9;
  v40 = v11;
  while (v16)
  {
LABEL_10:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1B1E5CF1C(*(a2 + 48) + *(v6 + 72) * (v21 | (v19 << 6)), v11);
    sub_1B1F1B7C0();
    sub_1B1E5CF1C(v11, v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v53 = v18;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v26 = *v9;
        MEMORY[0x1B273E060](1);
        v27 = *(v26 + 64);
        v48 = v26 + 64;
        v28 = 1 << *(v26 + 32);
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        v30 = v29 & v27;
        v47 = (v28 + 63) >> 6;
        v51 = v26;
        result = sub_1B1F1A760();
        v54 = 0;
        v31 = 0;
        if (v30)
        {
          goto LABEL_19;
        }

        break;
      case 2:
        v25 = 2;
        goto LABEL_14;
      case 3:
        v25 = 3;
LABEL_14:
        MEMORY[0x1B273E060](v25);
        goto LABEL_27;
      default:
        v23 = v45;
        sub_1B1E5CA90(v9, v45);
        MEMORY[0x1B273E060](0);
        sub_1B1F1A350();
        sub_1B1DF6BE0(&qword_1ED84EFE8);
        sub_1B1F1A800();
        v24 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
        MEMORY[0x1B273E060](*(v23 + *(v24 + 20)));
        sub_1B1E3BDC0(__src, *(v23 + *(v46 + 20)));
        sub_1B1E5C898();
        goto LABEL_27;
    }

    while (1)
    {
LABEL_20:
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_30;
      }

      if (v32 >= v47)
      {
        break;
      }

      v30 = *(v48 + 8 * v32);
      ++v31;
      if (v30)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v30)) | (v32 << 6);
          v34 = *(*(v51 + 48) + 16 * v33 + 8);
          v35 = *(v51 + 56) + 32 * v33;
          v36 = *(v35 + 16);
          v37 = *(v35 + 24);
          sub_1B1F1A760();
          sub_1B1F1A760();
          sub_1B1E0E714(v36, v37);
          if (!v34)
          {
            goto LABEL_26;
          }

          v30 &= v30 - 1;
          memcpy(v55, __src, sizeof(v55));
          sub_1B1F1A900();

          sub_1B1F1A760();
          sub_1B1E0E714(v36, v37);
          sub_1B1F1A900();

          sub_1B1F1A2A0();

          sub_1B1E03C48(v36, v37);
          sub_1B1E03C48(v36, v37);
          result = sub_1B1F1B7F0();
          v54 ^= result;
          v31 = v32;
          if (!v30)
          {
            goto LABEL_20;
          }

LABEL_19:
          v32 = v31;
        }
      }
    }

LABEL_26:

    MEMORY[0x1B273E060](v54);

    a2 = v44;
    v6 = v42;
    v9 = v41;
    v11 = v40;
LABEL_27:
    v38 = sub_1B1F1B7F0();
    result = sub_1B1E5C898();
    v18 = v38 ^ v53;
    v13 = v50;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v52)
    {

      return MEMORY[0x1B273E060](v18);
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1B1E5C6BC(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B1F1B7F0();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  result = sub_1B1F1A760();
  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1B273E060](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A900();
        v11 = sub_1B1F1B7F0();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E5C830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A0, &qword_1B1F33AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1E5C898()
{
  v1 = OUTLINED_FUNCTION_50();
  v2(v1);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1B1E5C8EC()
{
  result = qword_1EB7834B0;
  if (!qword_1EB7834B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834B0);
  }

  return result;
}

unint64_t sub_1B1E5C940()
{
  result = qword_1EB7857D8;
  if (!qword_1EB7857D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7857D8);
  }

  return result;
}

unint64_t sub_1B1E5C994()
{
  result = qword_1EB7857E0;
  if (!qword_1EB7857E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7857E0);
  }

  return result;
}

unint64_t sub_1B1E5C9E8()
{
  result = qword_1EB7857E8;
  if (!qword_1EB7857E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7857E8);
  }

  return result;
}

unint64_t sub_1B1E5CA3C()
{
  result = qword_1EB783468;
  if (!qword_1EB783468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783468);
  }

  return result;
}

uint64_t sub_1B1E5CA90(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_25_4();
  v4(v3);
  OUTLINED_FUNCTION_10();
  v5 = OUTLINED_FUNCTION_6_8();
  v6(v5);
  return a2;
}

unint64_t sub_1B1E5CAE8(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1B1E5CB38()
{
  result = qword_1EB783858;
  if (!qword_1EB783858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783858);
  }

  return result;
}

unint64_t sub_1B1E5CB8C()
{
  result = qword_1EB783850;
  if (!qword_1EB783850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783850);
  }

  return result;
}

unint64_t sub_1B1E5CBE0()
{
  result = qword_1EB7838D8;
  if (!qword_1EB7838D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838D8);
  }

  return result;
}

unint64_t sub_1B1E5CC34()
{
  result = qword_1EB785840;
  if (!qword_1EB785840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785840);
  }

  return result;
}

unint64_t sub_1B1E5CC88()
{
  result = qword_1EB783438;
  if (!qword_1EB783438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783438);
  }

  return result;
}

unint64_t sub_1B1E5CCDC()
{
  result = qword_1EB783898;
  if (!qword_1EB783898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783898);
  }

  return result;
}

unint64_t sub_1B1E5CD30(uint64_t a1)
{
  result = OUTLINED_FUNCTION_78(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB785850, &qword_1B1F31450);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B1E5CD98(uint64_t a1)
{
  result = OUTLINED_FUNCTION_78(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785860, &qword_1B1F31458);
    sub_1B1DF6BE0(v4);
    result = OUTLINED_FUNCTION_90();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B1E5CE20()
{
  result = qword_1EB7839E8;
  if (!qword_1EB7839E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839E8);
  }

  return result;
}

unint64_t sub_1B1E5CE74()
{
  result = qword_1EB7834C8;
  if (!qword_1EB7834C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834C8);
  }

  return result;
}

unint64_t sub_1B1E5CEC8()
{
  result = qword_1EB7834C0;
  if (!qword_1EB7834C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834C0);
  }

  return result;
}

uint64_t sub_1B1E5CF1C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_25_4();
  v4(v3);
  OUTLINED_FUNCTION_10();
  v5 = OUTLINED_FUNCTION_6_8();
  v6(v5);
  return a2;
}

unint64_t sub_1B1E5CF74()
{
  result = qword_1EB7858D0;
  if (!qword_1EB7858D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7858D0);
  }

  return result;
}

unint64_t sub_1B1E5CFC8()
{
  result = qword_1EB7858D8;
  if (!qword_1EB7858D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7858D8);
  }

  return result;
}

unint64_t sub_1B1E5D01C()
{
  result = qword_1EB7858E0;
  if (!qword_1EB7858E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7858E0);
  }

  return result;
}

unint64_t sub_1B1E5D070()
{
  result = qword_1EB785910;
  if (!qword_1EB785910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785910);
  }

  return result;
}

unint64_t sub_1B1E5D0C4()
{
  result = qword_1EB785918;
  if (!qword_1EB785918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785918);
  }

  return result;
}

unint64_t sub_1B1E5D118()
{
  result = qword_1EB785938;
  if (!qword_1EB785938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785938);
  }

  return result;
}

unint64_t sub_1B1E5D16C()
{
  result = qword_1EB785940;
  if (!qword_1EB785940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785940);
  }

  return result;
}

unint64_t sub_1B1E5D1C0()
{
  result = qword_1EB785950;
  if (!qword_1EB785950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785950);
  }

  return result;
}

unint64_t sub_1B1E5D234()
{
  result = qword_1EB783200;
  if (!qword_1EB783200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB783200);
  }

  return result;
}

unint64_t sub_1B1E5D278()
{
  result = qword_1EB7837C0;
  if (!qword_1EB7837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7837C0);
  }

  return result;
}

unint64_t sub_1B1E5D2CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_78(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB785970, &qword_1B1F31500);
    sub_1B1DF6BE0(v4);
    result = OUTLINED_FUNCTION_90();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B1E5D354()
{
  result = qword_1EB7833A8;
  if (!qword_1EB7833A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833A8);
  }

  return result;
}

unint64_t sub_1B1E5D3A8()
{
  result = qword_1EB7833A0;
  if (!qword_1EB7833A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7833A0);
  }

  return result;
}

unint64_t sub_1B1E5D400()
{
  result = qword_1EB785990;
  if (!qword_1EB785990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785990);
  }

  return result;
}

unint64_t sub_1B1E5D4A0()
{
  result = qword_1EB7859A0;
  if (!qword_1EB7859A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859A0);
  }

  return result;
}

unint64_t sub_1B1E5D540()
{
  result = qword_1EB7859B0;
  if (!qword_1EB7859B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859B0);
  }

  return result;
}

unint64_t sub_1B1E5D598()
{
  result = qword_1EB7859B8;
  if (!qword_1EB7859B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859B8);
  }

  return result;
}

unint64_t sub_1B1E5D5F0()
{
  result = qword_1EB7859C0;
  if (!qword_1EB7859C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859C0);
  }

  return result;
}

uint64_t sub_1B1E5D66C(uint64_t a1)
{
  result = sub_1B1F1A350();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1E5D6F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1B1E5D730(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1E5D784(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1E5D7D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B1E5D838(uint64_t a1)
{
  result = type metadata accessor for LaunchServicesSnapshot(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1E5D8A8(uint64_t a1)
{
  result = sub_1B1F1A350();
  if (v2 <= 0x3F)
  {
    result = sub_1B1F1A2F0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitIndexingRequest.TestingConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolKitIndexingRequest.TestingConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitIndexingRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolKitIndexingRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B1E5DCBC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_72(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B1E5DDE4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_72(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ToolKitIndexingReason.Changeset.Provenance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitIndexingReason.Trigger.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolKitIndexingReason.Trigger.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B1E5E1FC(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_43(a1);
}

_BYTE *sub_1B1E5E248(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B1E5E2F8()
{
  result = qword_1EB7859D0;
  if (!qword_1EB7859D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859D0);
  }

  return result;
}

unint64_t sub_1B1E5E350()
{
  result = qword_1EB7859D8;
  if (!qword_1EB7859D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859D8);
  }

  return result;
}

unint64_t sub_1B1E5E3A8()
{
  result = qword_1EB7859E0;
  if (!qword_1EB7859E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859E0);
  }

  return result;
}

unint64_t sub_1B1E5E400()
{
  result = qword_1EB7859E8;
  if (!qword_1EB7859E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859E8);
  }

  return result;
}

unint64_t sub_1B1E5E458()
{
  result = qword_1EB7859F0;
  if (!qword_1EB7859F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859F0);
  }

  return result;
}

unint64_t sub_1B1E5E4B0()
{
  result = qword_1EB7859F8;
  if (!qword_1EB7859F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7859F8);
  }

  return result;
}

unint64_t sub_1B1E5E508()
{
  result = qword_1EB785A00;
  if (!qword_1EB785A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A00);
  }

  return result;
}

unint64_t sub_1B1E5E560()
{
  result = qword_1EB785A08;
  if (!qword_1EB785A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A08);
  }

  return result;
}

unint64_t sub_1B1E5E5B8()
{
  result = qword_1EB785A10;
  if (!qword_1EB785A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A10);
  }

  return result;
}

unint64_t sub_1B1E5E610()
{
  result = qword_1EB785A18;
  if (!qword_1EB785A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A18);
  }

  return result;
}

unint64_t sub_1B1E5E668()
{
  result = qword_1EB785A20;
  if (!qword_1EB785A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A20);
  }

  return result;
}

unint64_t sub_1B1E5E6C0()
{
  result = qword_1EB785A28;
  if (!qword_1EB785A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A28);
  }

  return result;
}

unint64_t sub_1B1E5E718()
{
  result = qword_1EB785A30;
  if (!qword_1EB785A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A30);
  }

  return result;
}

unint64_t sub_1B1E5E770()
{
  result = qword_1EB785A38;
  if (!qword_1EB785A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A38);
  }

  return result;
}

unint64_t sub_1B1E5E7C8()
{
  result = qword_1EB7837B0;
  if (!qword_1EB7837B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7837B0);
  }

  return result;
}

unint64_t sub_1B1E5E820()
{
  result = qword_1EB7837B8;
  if (!qword_1EB7837B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7837B8);
  }

  return result;
}

unint64_t sub_1B1E5E878()
{
  result = qword_1EB785A40;
  if (!qword_1EB785A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A40);
  }

  return result;
}

unint64_t sub_1B1E5E8D0()
{
  result = qword_1EB785A48;
  if (!qword_1EB785A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A48);
  }

  return result;
}

unint64_t sub_1B1E5E928()
{
  result = qword_1EB785A50;
  if (!qword_1EB785A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A50);
  }

  return result;
}

unint64_t sub_1B1E5E980()
{
  result = qword_1EB785A58;
  if (!qword_1EB785A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A58);
  }

  return result;
}

unint64_t sub_1B1E5E9D8()
{
  result = qword_1EB785A60;
  if (!qword_1EB785A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A60);
  }

  return result;
}

unint64_t sub_1B1E5EA30()
{
  result = qword_1EB785A68;
  if (!qword_1EB785A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A68);
  }

  return result;
}

unint64_t sub_1B1E5EA88()
{
  result = qword_1EB785A70;
  if (!qword_1EB785A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A70);
  }

  return result;
}

unint64_t sub_1B1E5EAE0()
{
  result = qword_1EB785A78;
  if (!qword_1EB785A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A78);
  }

  return result;
}

unint64_t sub_1B1E5EB38()
{
  result = qword_1EB785A80;
  if (!qword_1EB785A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A80);
  }

  return result;
}

unint64_t sub_1B1E5EB90()
{
  result = qword_1EB785A88;
  if (!qword_1EB785A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A88);
  }

  return result;
}

unint64_t sub_1B1E5EBE8()
{
  result = qword_1EB785A90;
  if (!qword_1EB785A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A90);
  }

  return result;
}

unint64_t sub_1B1E5EC40()
{
  result = qword_1EB785A98;
  if (!qword_1EB785A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785A98);
  }

  return result;
}

unint64_t sub_1B1E5EC98()
{
  result = qword_1EB7839D0;
  if (!qword_1EB7839D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839D0);
  }

  return result;
}

unint64_t sub_1B1E5ECF0()
{
  result = qword_1EB7839D8;
  if (!qword_1EB7839D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839D8);
  }

  return result;
}

unint64_t sub_1B1E5ED48()
{
  result = qword_1EB783880;
  if (!qword_1EB783880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783880);
  }

  return result;
}

unint64_t sub_1B1E5EDA0()
{
  result = qword_1EB783888;
  if (!qword_1EB783888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783888);
  }

  return result;
}

unint64_t sub_1B1E5EDF8()
{
  result = qword_1EB783860;
  if (!qword_1EB783860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783860);
  }

  return result;
}

unint64_t sub_1B1E5EE50()
{
  result = qword_1EB783868;
  if (!qword_1EB783868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783868);
  }

  return result;
}

unint64_t sub_1B1E5EEA8()
{
  result = qword_1EB783870;
  if (!qword_1EB783870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783870);
  }

  return result;
}

unint64_t sub_1B1E5EF00()
{
  result = qword_1EB783878;
  if (!qword_1EB783878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783878);
  }

  return result;
}

unint64_t sub_1B1E5EF58()
{
  result = qword_1EB7838C0;
  if (!qword_1EB7838C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838C0);
  }

  return result;
}

unint64_t sub_1B1E5EFB0()
{
  result = qword_1EB7838C8;
  if (!qword_1EB7838C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838C8);
  }

  return result;
}

unint64_t sub_1B1E5F008()
{
  result = qword_1EB783450;
  if (!qword_1EB783450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783450);
  }

  return result;
}

unint64_t sub_1B1E5F060()
{
  result = qword_1EB783458;
  if (!qword_1EB783458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783458);
  }

  return result;
}

unint64_t sub_1B1E5F0B8()
{
  result = qword_1EB783480;
  if (!qword_1EB783480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783480);
  }

  return result;
}

unint64_t sub_1B1E5F110()
{
  result = qword_1EB783488;
  if (!qword_1EB783488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783488);
  }

  return result;
}

unint64_t sub_1B1E5F168()
{
  result = qword_1EB783470;
  if (!qword_1EB783470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783470);
  }

  return result;
}

unint64_t sub_1B1E5F1C0()
{
  result = qword_1EB783478;
  if (!qword_1EB783478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783478);
  }

  return result;
}

unint64_t sub_1B1E5F218()
{
  result = qword_1EB783490;
  if (!qword_1EB783490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783490);
  }

  return result;
}

unint64_t sub_1B1E5F270()
{
  result = qword_1EB783498;
  if (!qword_1EB783498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783498);
  }

  return result;
}

unint64_t sub_1B1E5F2C8()
{
  result = qword_1EB7834A0;
  if (!qword_1EB7834A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834A0);
  }

  return result;
}

unint64_t sub_1B1E5F320()
{
  result = qword_1EB7834A8;
  if (!qword_1EB7834A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7834A8);
  }

  return result;
}

unint64_t sub_1B1E5F378()
{
  result = qword_1EB7839A0;
  if (!qword_1EB7839A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839A0);
  }

  return result;
}

unint64_t sub_1B1E5F3D0()
{
  result = qword_1EB7839A8;
  if (!qword_1EB7839A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839A8);
  }

  return result;
}

unint64_t sub_1B1E5F428()
{
  result = qword_1EB783980;
  if (!qword_1EB783980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783980);
  }

  return result;
}

unint64_t sub_1B1E5F480()
{
  result = qword_1EB783988;
  if (!qword_1EB783988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783988);
  }

  return result;
}

unint64_t sub_1B1E5F4D8()
{
  result = qword_1EB783940;
  if (!qword_1EB783940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783940);
  }

  return result;
}

unint64_t sub_1B1E5F530()
{
  result = qword_1EB783948;
  if (!qword_1EB783948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783948);
  }

  return result;
}

unint64_t sub_1B1E5F588()
{
  result = qword_1EB783920;
  if (!qword_1EB783920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783920);
  }

  return result;
}

unint64_t sub_1B1E5F5E0()
{
  result = qword_1EB783928;
  if (!qword_1EB783928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783928);
  }

  return result;
}

unint64_t sub_1B1E5F638()
{
  result = qword_1EB7838F0;
  if (!qword_1EB7838F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838F0);
  }

  return result;
}

unint64_t sub_1B1E5F690()
{
  result = qword_1EB7838F8;
  if (!qword_1EB7838F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838F8);
  }

  return result;
}

unint64_t sub_1B1E5F6E8()
{
  result = qword_1EB783900;
  if (!qword_1EB783900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783900);
  }

  return result;
}

unint64_t sub_1B1E5F740()
{
  result = qword_1EB783908;
  if (!qword_1EB783908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783908);
  }

  return result;
}

unint64_t sub_1B1E5F798()
{
  result = qword_1EB7838E0;
  if (!qword_1EB7838E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838E0);
  }

  return result;
}

unint64_t sub_1B1E5F7F0()
{
  result = qword_1EB7838E8;
  if (!qword_1EB7838E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7838E8);
  }

  return result;
}

unint64_t sub_1B1E5F848()
{
  result = qword_1EB783930;
  if (!qword_1EB783930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783930);
  }

  return result;
}

unint64_t sub_1B1E5F8A0()
{
  result = qword_1EB783938;
  if (!qword_1EB783938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783938);
  }

  return result;
}

unint64_t sub_1B1E5F8F8()
{
  result = qword_1EB783910;
  if (!qword_1EB783910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783910);
  }

  return result;
}

unint64_t sub_1B1E5F950()
{
  result = qword_1EB783918;
  if (!qword_1EB783918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783918);
  }

  return result;
}

unint64_t sub_1B1E5F9A8()
{
  result = qword_1EB783970;
  if (!qword_1EB783970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783970);
  }

  return result;
}

unint64_t sub_1B1E5FA00()
{
  result = qword_1EB783978;
  if (!qword_1EB783978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783978);
  }

  return result;
}

unint64_t sub_1B1E5FA58()
{
  result = qword_1EB783950;
  if (!qword_1EB783950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783950);
  }

  return result;
}

unint64_t sub_1B1E5FAB0()
{
  result = qword_1EB783958;
  if (!qword_1EB783958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783958);
  }

  return result;
}

unint64_t sub_1B1E5FB08()
{
  result = qword_1EB783990;
  if (!qword_1EB783990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783990);
  }

  return result;
}

unint64_t sub_1B1E5FB60()
{
  result = qword_1EB783998;
  if (!qword_1EB783998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783998);
  }

  return result;
}

unint64_t sub_1B1E5FBB8()
{
  result = qword_1EB7839B0;
  if (!qword_1EB7839B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839B0);
  }

  return result;
}

unint64_t sub_1B1E5FC10()
{
  result = qword_1EB7839B8;
  if (!qword_1EB7839B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7839B8);
  }

  return result;
}

unint64_t sub_1B1E5FC64()
{
  result = qword_1EB785AA0;
  if (!qword_1EB785AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785AA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_1B1E5C898();
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B240();
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1B1F1B2B0();
}

void OUTLINED_FUNCTION_55(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  *(v1 - 80) = v2;
  *(v1 - 72) = v3;
  *(v1 - 71) = v4;
}

uint64_t OUTLINED_FUNCTION_64(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B200();
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_89(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return sub_1B1F1B0A0();
}

uint64_t OUTLINED_FUNCTION_92()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_94()
{

  return swift_unknownObjectRelease();
}

void sub_1B1E6007C(uint64_t a1)
{
  v2 = 0;
  v14 = MEMORY[0x1B273D4D0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_0_13();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    do
    {
      v8 = v2;
LABEL_7:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_1B1F1A760();
      sub_1B1E640C4(v13, v11, v12);
    }

    while (v5);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
}

BOOL sub_1B1E60184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_3();
  v6 = v5;
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v7 = sub_1B1F1B7F0();
  v8 = ~(-1 << *(v3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(v3 + 48) + 16 * v9);
    if (*v12 == v6 && v12[1] == v4)
    {
      break;
    }

    v14 = sub_1B1F1B510();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_1B1E6026C()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_31_3();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_18_0(v3);

  return v7(v5, v1);
}

uint64_t sub_1B1E60304()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B1E603E8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_1B1E60484;

  return static LinkSnapshot.complete()();
}

uint64_t sub_1B1E60484()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_1B1E605E4;
  }

  else
  {
    v7 = sub_1B1E60580;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B1E60580()
{
  OUTLINED_FUNCTION_1();
  sub_1B1E60CB0(*(v0 + 32), *(v0 + 16), *(v0 + 24));

  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_1B1E605FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for LaunchServicesSnapshot(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E60690, 0, 0);
}

uint64_t sub_1B1E60690()
{
  OUTLINED_FUNCTION_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785430, &qword_1B1F30910);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B1E6076C;
  v4 = v0[4];
  v3 = v0[5];

  return MEMORY[0x1EEE6DD58](v3, v1, v4, 0, 0, &unk_1B1F30920, 0, v1);
}

uint64_t sub_1B1E6076C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_1B1E608D0;
  }

  else
  {
    v7 = sub_1B1E60868;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B1E60868()
{
  OUTLINED_FUNCTION_1();
  sub_1B1E60E40(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_10_7();

  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_1B1E608D0()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ToolKitSeedSnapshot.diff()()
{
  OUTLINED_FUNCTION_26_3();
  v3[4] = v4;
  v3[5] = v1;
  v3[2] = v5;
  v3[3] = v6;
  OUTLINED_FUNCTION_5_0();
  v3[6] = v7;
  v8 = swift_task_alloc();
  v3[7] = v8;
  v11 = (*(v0 + 96) + **(v0 + 96));
  v9 = swift_task_alloc();
  v3[8] = v9;
  *v9 = v3;
  v9[1] = sub_1B1E60AA8;

  return v11(v8, v2, v0);
}

uint64_t sub_1B1E60AA8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1B1E60C44;
  }

  else
  {
    v7 = sub_1B1E60BA4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B1E60BA4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  (*(v0[4] + 112))(v0[5], v3);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_1B1E60C44()
{
  OUTLINED_FUNCTION_1();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B1E60CB0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v23 = a1;
  sub_1B1F1A760();
  sub_1B1E6007C(a2);
  v7 = v6;
  v8 = sub_1B1F1A760();
  sub_1B1E6007C(v8);
  v10 = v9;
  sub_1B1F1A760();
  v11 = sub_1B1E55A28(v10, v7);
  sub_1B1F1A760();
  v12 = sub_1B1E55A28(v7, v10);
  v13 = sub_1B1E67730(v10, v7);

  v21[2] = &v22;
  v21[3] = &v23;
  v14 = sub_1B1E67128(sub_1B1E67D1C, v21, v13);
  v15 = v22;
  sub_1B1F1A760();
  v16 = sub_1B1F1A760();
  v17 = sub_1B1E66374(v16, v11, sub_1B1E66538, sub_1B1E66538);

  sub_1B1F1A760();
  v18 = sub_1B1E66374(v15, v14, sub_1B1E66538, sub_1B1E66538);

  sub_1B1F1A760();
  v19 = sub_1B1E66374(a1, v12, sub_1B1E66538, sub_1B1E66538);

  *a3 = v15;
  a3[1] = v17;
  a3[2] = v18;
  a3[3] = v19;
  return result;
}

int *sub_1B1E60E40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v6 = type metadata accessor for LaunchServicesSnapshot(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v39 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = *(v3 + *(v7 + 28));
  v15 = sub_1B1F1A760();
  sub_1B1E6007C(v15);
  v17 = v16;
  v37 = *(a1 + *(v7 + 28));
  v18 = a1;
  v35 = a1;
  v19 = sub_1B1F1A760();
  sub_1B1E6007C(v19);
  v21 = v20;
  sub_1B1F1A760();
  v22 = sub_1B1E55A28(v21, v17);
  sub_1B1F1A760();
  v34 = sub_1B1E55A28(v17, v21);
  v23 = sub_1B1E67730(v21, v17);

  v40[2] = v3;
  v40[3] = v18;
  v24 = sub_1B1E67128(sub_1B1E67CFC, v40, v23);
  sub_1B1E67DD4(v3, a2, type metadata accessor for LaunchServicesSnapshot);
  sub_1B1F1A760();
  v25 = sub_1B1E66374(v14, v22, sub_1B1E66820, sub_1B1E66820);

  sub_1B1E67DD4(v3, v13, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  *&v13[*(v7 + 28)] = v25;

  sub_1B1E67E34(v13, type metadata accessor for LaunchServicesSnapshot);
  sub_1B1F1A760();
  v26 = sub_1B1E66374(v14, v24, sub_1B1E66820, sub_1B1E66820);

  v27 = v3;
  v28 = v38;
  sub_1B1E67DD4(v27, v38, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  *(v28 + *(v7 + 28)) = v26;

  sub_1B1E67E34(v28, type metadata accessor for LaunchServicesSnapshot);
  v29 = v34;
  sub_1B1F1A760();
  v30 = sub_1B1E66374(v37, v29, sub_1B1E66820, sub_1B1E66820);

  v31 = v39;
  sub_1B1E67DD4(v35, v39, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  *(v31 + *(v7 + 28)) = v30;

  sub_1B1E67E34(v31, type metadata accessor for LaunchServicesSnapshot);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AC8, &qword_1B1F33AB0);
  v33 = v36;
  *(v36 + result[9]) = v25;
  *(v33 + result[10]) = v26;
  *(v33 + result[11]) = v30;
  return result;
}

int *ToolKitSeedSnapshot.subtracting(other:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  OUTLINED_FUNCTION_5_0();
  v41 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_16();
  v43 = v9;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v35 - v11;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v35 - v13;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21_5();
  v47 = v15;
  v17 = *(v16 + 72);
  v48 = v16 + 72;
  v46 = v17;
  v17(v18, v16);
  OUTLINED_FUNCTION_18_6();
  v36 = a3;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_11();
  v19 = sub_1B1F1A760();

  v53 = v19;
  OUTLINED_FUNCTION_15_11();
  sub_1B1F1A750();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_23_3();
  v38 = a1;
  v46(a2, a3);
  OUTLINED_FUNCTION_15_11();
  v20 = sub_1B1F1A760();

  v53 = v20;
  OUTLINED_FUNCTION_23_3();
  sub_1B1F1A760();
  OUTLINED_FUNCTION_29_4();
  v21 = sub_1B1F1AC20();
  sub_1B1F1A760();
  v39 = sub_1B1F1AC20();
  v22 = OUTLINED_FUNCTION_29_4();
  MEMORY[0x1B273D4C0](v22);

  v23 = v36;
  v49 = a2;
  v50 = v36;
  v24 = v45;
  v51 = v45;
  v52 = a1;
  v35 = sub_1B1F1AC50();
  v25 = v41;
  (*(v41 + 16))(v47, v24, a2);
  v26 = *(v23 + 144);
  v27 = v40;
  v26(v21, a2, v23);

  v28 = v46;
  v37 = (v46)(a2, v23);
  v41 = *(v25 + 8);
  (v41)(v27, a2);
  v29 = v42;
  v26(v35, a2, v23);

  v30 = v28;
  v45 = (v28)(a2, v23);
  v31 = v41;
  (v41)(v29, a2);
  v32 = v43;
  v26(v39, a2, v23);

  v33 = v30(a2, v23);
  v31(v32, a2);
  return sub_1B1E6292C(v47, v37, v45, v33, a2, v23, v44);
}

uint64_t sub_1B1E6159C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  sub_1B1F1A760();
  sub_1B1F1A760();
  v10 = 0;
  v36 = v9;
  v37 = v5;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = (*(a1 + 56) + 32 * v12);
      v16 = v15[1];
      v39 = *v15;
      v40 = *v13;
      v18 = v15[2];
      v17 = v15[3];
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1E0E714(v18, v17);
      if (!v14)
      {
        break;
      }

      if (a2[2])
      {
        sub_1B1DEBED8(v40, v14);
        if (v19)
        {
          goto LABEL_25;
        }
      }

      sub_1B1F1A760();
      v38 = v17;
      sub_1B1E0E714(v18, v17);
      swift_isUniquelyReferenced_nonNull_native();
      v20 = sub_1B1DEBED8(v40, v14);
      if (__OFADD__(a2[2], (v21 & 1) == 0))
      {
        goto LABEL_23;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7841E0, &qword_1B1F2B178);
      if (sub_1B1F1B0C0())
      {
        v24 = sub_1B1DEBED8(v40, v14);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_26;
        }

        v22 = v24;
      }

      if (v23)
      {

        v26 = (a2[7] + 32 * v22);
        v27 = v26[2];
        v28 = v26[3];
        *v26 = v39;
        v26[1] = v16;
        v26[2] = v18;
        v26[3] = v38;

        sub_1B1E03C48(v27, v28);

        sub_1B1E03C48(v18, v38);
      }

      else
      {
        a2[(v22 >> 6) + 8] |= 1 << v22;
        v29 = (a2[6] + 16 * v22);
        *v29 = v40;
        v29[1] = v14;
        v30 = (a2[7] + 32 * v22);
        *v30 = v39;
        v30[1] = v16;
        v30[2] = v18;
        v30[3] = v38;

        sub_1B1E03C48(v18, v38);
        v31 = a2[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_24;
        }

        a2[2] = v33;
      }

      v8 &= v8 - 1;
      v9 = v36;
      v5 = v37;
      if (!v8)
      {
        goto LABEL_4;
      }
    }

LABEL_21:

    *a3 = a2;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_21;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_1B1F1B100();
    __break(1u);
LABEL_26:
    result = sub_1B1F1B720();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E618AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if ((sub_1B1F1A310() & 1) == 0 || (v6 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0), *(a1 + *(v6 + 20)) != *(v3 + *(v6 + 20))))
  {
    sub_1B1E5036C();
    swift_allocError();
    return swift_willThrow();
  }

  v43 = a2;
  v41 = type metadata accessor for LaunchServicesSnapshot(0);
  v42 = v3;
  v7 = *(v41 + 20);
  v8 = *(v3 + v7);
  v9 = *(a1 + v7);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  sub_1B1F1A760();
  v46 = v9;
  sub_1B1F1A760();
  v15 = 0;
  v44 = v14;
  for (i = v9 + 64; v13; v10 = i)
  {
LABEL_10:
    v17 = __clz(__rbit64(v13)) | (v15 << 6);
    v18 = (*(v46 + 48) + 16 * v17);
    v19 = v18[1];
    v48 = *v18;
    v20 = (*(v46 + 56) + 24 * v17);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    sub_1B1F1A760();
    sub_1B1F1A760();
    v24 = v23;
    if (!v19)
    {
LABEL_24:

      result = sub_1B1E67DD4(v42, v43, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
      *(v43 + *(v41 + 20)) = v8;
      return result;
    }

    v25 = v24;
    if (v8[2])
    {
      sub_1B1DEBED8(v48, v19);
      if (v26)
      {
        goto LABEL_28;
      }
    }

    sub_1B1F1A760();
    v47 = v25;
    swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_1B1DEBED8(v48, v19);
    if (__OFADD__(v8[2], (v28 & 1) == 0))
    {
      goto LABEL_26;
    }

    v29 = v27;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7854D0, &qword_1B1F310F8);
    if (sub_1B1F1B0C0())
    {
      v31 = sub_1B1DEBED8(v48, v19);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_29;
      }

      v29 = v31;
      if (v30)
      {
LABEL_20:

        v38 = (v8[7] + 24 * v29);
        v39 = v38[2];
        *v38 = v21;
        v38[1] = v22;
        v38[2] = v47;

        goto LABEL_21;
      }
    }

    else if (v30)
    {
      goto LABEL_20;
    }

    v8[(v29 >> 6) + 8] |= 1 << v29;
    v33 = (v8[6] + 16 * v29);
    *v33 = v48;
    v33[1] = v19;
    v34 = (v8[7] + 24 * v29);
    *v34 = v21;
    v34[1] = v22;
    v34[2] = v47;

    v35 = v8[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_27;
    }

    v8[2] = v37;
LABEL_21:
    v13 &= v13 - 1;
    v14 = v44;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      goto LABEL_24;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1B1F1B100();
  __break(1u);
LABEL_29:
  result = sub_1B1F1B720();
  __break(1u);
  return result;
}

uint64_t ToolKitSeedSnapshot.adding(other:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v51 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_16();
  v57 = v9;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_5();
  v56 = v11;
  OUTLINED_FUNCTION_5_0();
  v47 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_16();
  v46 = v14;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21_5();
  v45 = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v53 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_16();
  v60 = v20;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_21_5();
  v61 = v22;
  if ((*(a3 + 128))(v3, a2, a3))
  {
    v55 = AssociatedTypeWitness;
    v23 = *(a3 + 72);
    v62 = v23(a2, a3);
    v24 = 0;
    v44 = v23(a2, a3);
    OUTLINED_FUNCTION_0_13();
    v28 = v27 & v26;
    v30 = (v29 + 63) >> 6;
    v49 = (v51 + 8);
    v31 = v46;
    v32 = v61;
    v52 = v25;
    v54 = (v53 + 32);
    v50 = v30;
    v48 = TupleTypeMetadata2;
    while (v28)
    {
      v33 = v24;
      v34 = v55;
LABEL_10:
      v35 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v36 = v35 | (v33 << 6);
      v37 = (*(v44 + 48) + 16 * v36);
      v38 = *v37;
      v39 = v37[1];
      (*(v47 + 16))(v45, *(v44 + 56) + *(v47 + 72) * v36, v34);
      v40 = *(TupleTypeMetadata2 + 48);
      *v60 = v38;
      *(v60 + 1) = v39;
      (*(v47 + 32))(&v60[v40], v45, v34);
      __swift_storeEnumTagSinglePayload(v60, 0, 1, TupleTypeMetadata2);
      sub_1B1F1A760();
      v31 = v46;
      v32 = v61;
LABEL_11:
      (*v54)(v32, v60, v59);
      if (__swift_getEnumTagSinglePayload(v32, 1, TupleTypeMetadata2) == 1)
      {

        (*(a3 + 152))(v62, a2);
      }

      (*(v47 + 32))(v31, v32 + *(TupleTypeMetadata2 + 48), v34);
      sub_1B1F1A760();
      v41 = v31;
      sub_1B1F1A7D0();

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v34);
      (*v49)(v56, v58);
      if (EnumTagSinglePayload != 1)
      {
        goto LABEL_18;
      }

      (*(v47 + 16))(v57, v41, v34);
      __swift_storeEnumTagSinglePayload(v57, 0, 1, v34);
      sub_1B1F1A7C0();
      sub_1B1F1A7E0();
      (*(v47 + 8))(v41, v34);
      v31 = v41;
      TupleTypeMetadata2 = v48;
      v32 = v61;
      v30 = v50;
      v25 = v52;
    }

    v34 = v55;
    while (1)
    {
      v33 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v33 >= v30)
      {
        __swift_storeEnumTagSinglePayload(v60, 1, 1, TupleTypeMetadata2);
        v28 = 0;
        goto LABEL_11;
      }

      v28 = *(v25 + 8 * v33);
      ++v24;
      if (v28)
      {
        v24 = v33;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    result = sub_1B1F1B100();
    __break(1u);
  }

  else
  {
    sub_1B1E5036C();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

double sub_1B1E6228C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B1DEBED8(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(a3 + 56) + 32 * v6);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    *a4 = *v8;
    a4[1] = v9;
    a4[2] = v10;
    a4[3] = v11;
    sub_1B1F1A760();

    sub_1B1E0E714(v10, v11);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1B1E62314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = type metadata accessor for LaunchServicesSnapshot(0);
  v8 = *(v3 + *(result + 20));
  if (*(v8 + 16) && (result = sub_1B1DEBED8(a1, a2), (v9 & 1) != 0))
  {
    v10 = (*(v8 + 56) + 24 * result);
    v11 = v10[1];
    v12 = v10[2];
    *a3 = *v10;
    a3[1] = v11;
    a3[2] = v12;
    sub_1B1F1A760();

    return v12;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t ToolKitSeedSnapshot.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 72))(a3, a4);
  OUTLINED_FUNCTION_18_6();
  swift_getAssociatedTypeWitness();
  sub_1B1F1A760();
  sub_1B1F1A7D0();
}

uint64_t sub_1B1E62490@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1B1F1A760();
  result = sub_1B1E66374(a2, a1, sub_1B1E66538, sub_1B1E66538);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E624F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LaunchServicesSnapshot(0);
  v6 = *(v2 + *(v5 + 20));
  sub_1B1F1A760();
  v7 = sub_1B1E66374(v6, a1, sub_1B1E66820, sub_1B1E66820);
  result = sub_1B1E67DD4(v2, a2, type metadata accessor for LaunchServicesSnapshot.DatabaseVersion);
  *(a2 + *(v5 + 20)) = v7;
  return result;
}

uint64_t ToolKitSeedSnapshot.filtering(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 72))(a2, a3);
  OUTLINED_FUNCTION_18_6();
  swift_getAssociatedTypeWitness();
  sub_1B1F1A780();
  (*(a3 + 152))();
}

uint64_t sub_1B1E62688()
{
  v0 = OUTLINED_FUNCTION_31_3();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_0(v1);

  return v5(v3);
}

uint64_t sub_1B1E6273C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B1E67EEC;

  return ToolKitSeedSnapshot.diff()();
}

uint64_t ToolKitSeedSnapshotDelta.isEmptySet.getter(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (MEMORY[0x1B273D030](v3, MEMORY[0x1E69E6158], AssociatedTypeWitness, MEMORY[0x1E69E6168]) & 1) != 0 && (MEMORY[0x1B273D030](*(v1 + *(a1 + 40)), MEMORY[0x1E69E6158], AssociatedTypeWitness, MEMORY[0x1E69E6168]))
  {

    JUMPOUT(0x1B273D030);
  }

  return 0;
}

int *sub_1B1E6292C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  result = type metadata accessor for ToolKitSeedSnapshotDelta(0, a5, a6, v13);
  *(a7 + result[9]) = a2;
  *(a7 + result[10]) = a3;
  *(a7 + result[11]) = a4;
  return result;
}

uint64_t sub_1B1E629CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v17[-v12];
  v15 = *a1;
  v14 = a1[1];
  *v13 = v15;
  *(v13 + 1) = v14;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v17[*(v11 + 48) - v12], a2, AssociatedTypeWitness);
  sub_1B1F1A760();
  LOBYTE(a3) = sub_1B1E60184(v15, v14, a3);
  (*(v10 + 8))(v13, TupleTypeMetadata2);
  return a3 & 1;
}

uint64_t ToolKitSeedSnapshotError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785988, &qword_1B1F31510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1F2A3B0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000001B1F39400;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = 1;
  return sub_1B1F1A730();
}

uint64_t ToolKitSeedSnapshotError.hashValue.getter()
{
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](0);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E62CA0(uint64_t a1)
{
  v2 = sub_1B1E6400C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B1E62CDC(uint64_t a1)
{
  v2 = sub_1B1E6400C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B1E62D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16) && (v8 = sub_1B1DEBED8(a1, a2), (v9 & 1) != 0))
  {
    v10 = (*(a3 + 56) + 32 * v8);
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v14 = v10[3];
    sub_1B1F1A760();
    sub_1B1E0E714(v13, v14);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (*(a4 + 16) && (v15 = sub_1B1DEBED8(a1, a2), (v16 & 1) != 0))
  {
    v17 = (*(a4 + 56) + 32 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    sub_1B1F1A760();
    sub_1B1E0E714(v20, v21);
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (!v12)
    {
LABEL_8:
      if (!v19)
      {
        sub_1B1E67D3C(v11, 0, v13, v14);
        v22 = 0;
        return v22 & 1;
      }

LABEL_19:
      sub_1B1E67D3C(v11, v12, v13, v14);
      sub_1B1E67D3C(v18, v19, v20, v21);
      v22 = 1;
      return v22 & 1;
    }
  }

  if (!v19)
  {
    sub_1B1E67D88(v11, v12, v13, v14);

    sub_1B1E03C48(v13, v14);
    goto LABEL_19;
  }

  v23 = v11 == v18 && v12 == v19;
  if (v23 || (sub_1B1F1B510() & 1) != 0)
  {
    sub_1B1E67D88(v11, v12, v13, v14);
    v24 = MEMORY[0x1B273CB00](v13, v14, v20, v21);
    sub_1B1E67D3C(v18, v19, v20, v21);
    v22 = v24 ^ 1;
  }

  else
  {
    sub_1B1E67D88(v11, v12, v13, v14);
    sub_1B1E67D3C(v18, v19, v20, v21);
    v22 = 1;
  }

  sub_1B1E03C48(v13, v14);
  sub_1B1E67D3C(v11, v12, v13, v14);
  return v22 & 1;
}

uint64_t sub_1B1E62F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LaunchServicesSnapshot(0);
  v9 = *(a3 + *(v8 + 20));
  if (*(v9 + 16) && (v10 = sub_1B1DEBED8(a1, a2), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 24 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    sub_1B1F1A760();
    v16 = v15;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v17 = *(a4 + *(v8 + 20));
  if (*(v17 + 16) && (v18 = sub_1B1DEBED8(a1, a2), (v19 & 1) != 0))
  {
    v20 = (*(v17 + 56) + 24 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    sub_1B1F1A760();
    v24 = v23;
    if (!v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (!v14)
    {
LABEL_8:
      if (!v22)
      {
        sub_1B1E50534(v13, 0, v15);
        v25 = 0;
        return v25 & 1;
      }

LABEL_19:
      sub_1B1E50534(v13, v14, v15);
      sub_1B1E50534(v21, v22, v23);
      v25 = 1;
      return v25 & 1;
    }
  }

  if (!v22)
  {
    sub_1B1E50578(v13, v14, v15);

    goto LABEL_19;
  }

  v26 = v13 == v21 && v14 == v22;
  if (v26 || (sub_1B1F1B510() & 1) != 0)
  {
    sub_1B1E50578(v13, v14, v15);
    v27 = sub_1B1F1A290();
    v29 = v28;
    v37 = v13;
    v30 = sub_1B1F1A290();
    v32 = v31;
    v36 = MEMORY[0x1B273CB00](v27, v29, v30, v31);
    sub_1B1E03C48(v30, v32);
    sub_1B1E03C48(v27, v29);
    v33 = v21;
    v34 = v37;
    sub_1B1E50534(v33, v22, v23);
    v25 = v36 ^ 1;
  }

  else
  {
    sub_1B1E50578(v13, v14, v15);
    sub_1B1E50534(v21, v22, v23);
    v34 = v13;
    v25 = 1;
  }

  sub_1B1E50534(v34, v14, v15);
  return v25 & 1;
}

uint64_t sub_1B1E631C4(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v55 = a3;
  v50 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v42 - v8;
  v9 = sub_1B1F1AEB0();
  v49 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v42 - v11;
  v48 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  v20 = *a1;
  v21 = a1[1];
  v53 = a5;
  v22 = *(a5 + 136);
  v22(v20, v21, a4, a5);
  v50 = a4;
  v23 = a4;
  v24 = v49;
  v22(v20, v21, v23, v53);
  v25 = v48;
  v26 = AssociatedTypeWitness;
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = *(v48 + 16);
  v28(v12, v19, v24);
  v28(&v12[v27], v17, v24);
  v55 = v12;
  if (__swift_getEnumTagSinglePayload(v12, 1, v26) != 1)
  {
    v43 = v17;
    v44 = v19;
    v31 = v55;
    v28(v52, v55, v24);
    if (__swift_getEnumTagSinglePayload(&v31[v27], 1, v26) != 1)
    {
      v33 = v47;
      v34 = v55;
      v35 = &v55[v27];
      v36 = v45;
      (*(v47 + 32))(v45, v35, v26);
      swift_getAssociatedConformanceWitness();
      v37 = v52;
      v38 = sub_1B1F1A830();
      v39 = *(v33 + 8);
      v39(v36, v26);
      v40 = *(v25 + 8);
      v40(v43, v24);
      v40(v44, v24);
      v39(v37, v26);
      v40(v34, v24);
      v30 = v38 ^ 1;
      return v30 & 1;
    }

    v32 = *(v25 + 8);
    v32(v43, v24);
    v32(v44, v24);
    (*(v47 + 8))(v52, v26);
    goto LABEL_6;
  }

  v29 = *(v25 + 8);
  v29(v17, v24);
  v29(v19, v24);
  if (__swift_getEnumTagSinglePayload(&v55[v27], 1, v26) != 1)
  {
LABEL_6:
    (*(v46 + 8))(v55, TupleTypeMetadata2);
    v30 = 1;
    return v30 & 1;
  }

  v29(v55, v24);
  v30 = 0;
  return v30 & 1;
}

unint64_t sub_1B1E636F0()
{
  result = qword_1EB785AB0;
  if (!qword_1EB785AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785AB0);
  }

  return result;
}

uint64_t dispatch thunk of static ToolKitSeedSnapshot.partial(_:failIfContainerNotFound:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_14_11();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_5_2(v11);
  *v12 = v13;
  v12[1] = sub_1B1E67EEC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of static ToolKitSeedSnapshot.complete()()
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_14_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_5(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ToolKitSeedSnapshot.diff()()
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_14_11();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_5(v1);

  return v4(v3);
}

uint64_t sub_1B1E63B4C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_1B1F1A7C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1B1E63C18(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B1E63D64(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolKitSeedSnapshotError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B1E6400C()
{
  result = qword_1EB785AB8;
  if (!qword_1EB785AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785AB8);
  }

  return result;
}

uint64_t sub_1B1E64060(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B1F338E0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1B1E640C4(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v8 = sub_1B1F1B7F0();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1B1F1B510() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;
      sub_1B1F1A760();
      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  sub_1B1F1A760();
  sub_1B1E65028(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL sub_1B1E64210(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v47 = type metadata accessor for LaunchServicesSnapshot(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A0, &qword_1B1F33AF0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  OUTLINED_FUNCTION_5_0();
  v54 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_16();
  v51 = v12;
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1EEE9AC00](v13);
  v52 = (&v47 - v14);
  OUTLINED_FUNCTION_11_7();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_21_5();
  v48 = v19;
  v49 = v2;
  v20 = *v2;
  sub_1B1F1B7C0();
  v58 = a2;
  ToolKitIndexingReason.Changeset.Provenance.hash(into:)();
  v21 = sub_1B1F1B7F0();
  v56 = v20;
  v57 = v20 + 56;
  v22 = ~(-1 << *(v20 + 32));
  v53 = v6;
  while (2)
  {
    v23 = v21 & v22;
    v24 = (1 << (v21 & v22)) & *(v57 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v24)
    {
      v38 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_19();
      v40 = v58;
      v41 = v48;
      sub_1B1E67DD4(v58, v48, v42);
      v59[0] = *v38;
      sub_1B1E65190(v41, v23, isUniquelyReferenced_nonNull_native);
      *v38 = v59[0];
      sub_1B1E67E8C(v40, v50, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
      return v24 == 0;
    }

    v25 = *(v54 + 72) * v23;
    sub_1B1E67DD4(*(v56 + 48) + v25, v18, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
    v26 = *(v55 + 48);
    sub_1B1E67DD4(v18, v9, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
    sub_1B1E67DD4(v58, &v9[v26], type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_0_19();
        v29 = v51;
        sub_1B1E67DD4(v9, v51, v30);
        v31 = *v29;
        if (OUTLINED_FUNCTION_32_4() != 1)
        {

          goto LABEL_14;
        }

        v32 = sub_1B1E398D0(v31, *&v9[v26]);

        if (v32)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_1_19();
        sub_1B1E67E34(v9, v33);
        goto LABEL_15;
      case 2u:
        if (OUTLINED_FUNCTION_32_4() == 2)
        {
          goto LABEL_23;
        }

        goto LABEL_14;
      case 3u:
        if (OUTLINED_FUNCTION_32_4() == 3)
        {
          goto LABEL_23;
        }

        goto LABEL_14;
      default:
        OUTLINED_FUNCTION_0_19();
        v27 = v52;
        sub_1B1E67DD4(v9, v52, v28);
        if (OUTLINED_FUNCTION_32_4())
        {
          OUTLINED_FUNCTION_10_7();
LABEL_14:
          sub_1B1E5C830(v9);
LABEL_15:
          v6 = v53;
LABEL_16:
          OUTLINED_FUNCTION_1_19();
          sub_1B1E67E34(v18, v34);
          v21 = v23 + 1;
          continue;
        }

        sub_1B1E67E8C(&v9[v26], v6, type metadata accessor for LaunchServicesSnapshot);
        if ((sub_1B1F1A310() & 1) == 0 || (v35 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0), *(v27 + *(v35 + 20)) != *&v6[*(v35 + 20)]) || (sub_1B1E38FD4(*(v27 + *(v47 + 20)), *&v6[*(v47 + 20)]) & 1) == 0)
        {
          OUTLINED_FUNCTION_9_11();
          sub_1B1E67E34(v6, v36);
          sub_1B1E67E34(v27, v27);
          OUTLINED_FUNCTION_1_19();
          sub_1B1E67E34(v9, v37);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_9_11();
        sub_1B1E67E34(v6, v43);
        sub_1B1E67E34(v27, v27);
LABEL_23:
        sub_1B1E67E34(v9, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        sub_1B1E67E34(v18, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        sub_1B1E67E34(v58, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        OUTLINED_FUNCTION_0_19();
        sub_1B1E67DD4(v44 + v25, v50, v45);
        return v24 == 0;
    }
  }
}

uint64_t sub_1B1E646E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AD0, &unk_1B1F33AB8);
  result = sub_1B1F1AF60();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1B1E64060(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1B1F1B7C0();
    sub_1B1F1A900();
    result = sub_1B1F1B7F0();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B1E64944(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for LaunchServicesSnapshot(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v59 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v61 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v49 - v9;
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785AE0, &qword_1B1F33AF8);
  result = sub_1B1F1AF60();
  v12 = result;
  if (*(v10 + 16))
  {
    v49 = v1;
    v13 = 0;
    v14 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v57 = v18;
    v55 = v3;
    v54 = v5;
    v53 = v10;
    v52 = v6;
    v51 = result;
    v50 = (v10 + 56);
    v58 = result + 56;
    if (v17)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v17));
        v63 = (v17 - 1) & v17;
LABEL_12:
        v22 = *(v10 + 48);
        v62 = *(v59 + 72);
        v23 = v65;
        sub_1B1E67E8C(v22 + v62 * (v19 | (v13 << 6)), v65, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        sub_1B1F1B7C0();
        sub_1B1E67DD4(v23, v61, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v26 = *v61;
            MEMORY[0x1B273E060](1);
            v27 = *(v26 + 64);
            v56 = v26 + 64;
            v28 = 1 << *(v26 + 32);
            if (v28 < 64)
            {
              v29 = ~(-1 << v28);
            }

            else
            {
              v29 = -1;
            }

            v30 = v29 & v27;
            v31 = (v28 + 63) >> 6;
            v60 = v26;
            result = sub_1B1F1A760();
            v64 = 0;
            v32 = 0;
            if (v30)
            {
              goto LABEL_21;
            }

            break;
          case 2u:
            v25 = 2;
            goto LABEL_16;
          case 3u:
            v25 = 3;
LABEL_16:
            MEMORY[0x1B273E060](v25);
            goto LABEL_29;
          default:
            sub_1B1E67E8C(v61, v5, type metadata accessor for LaunchServicesSnapshot);
            MEMORY[0x1B273E060](0);
            sub_1B1F1A350();
            sub_1B1DF7854();
            v18 = v57;
            sub_1B1F1A800();
            v24 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
            MEMORY[0x1B273E060](*&v5[*(v24 + 20)]);
            sub_1B1E3BDC0(__src, *&v5[*(v3 + 20)]);
            sub_1B1E67E34(v5, type metadata accessor for LaunchServicesSnapshot);
            goto LABEL_29;
        }

        while (1)
        {
LABEL_22:
          v33 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_46;
          }

          if (v33 >= v31)
          {
            break;
          }

          v30 = *(v56 + 8 * v33);
          ++v32;
          if (v30)
          {
            while (1)
            {
              v34 = __clz(__rbit64(v30)) | (v33 << 6);
              v35 = *(*(v60 + 48) + 16 * v34 + 8);
              v36 = *(v60 + 56) + 32 * v34;
              v37 = *(v36 + 16);
              v38 = *(v36 + 24);
              sub_1B1F1A760();
              sub_1B1F1A760();
              sub_1B1E0E714(v37, v38);
              if (!v35)
              {
                goto LABEL_28;
              }

              v30 &= v30 - 1;
              memcpy(__dst, __src, sizeof(__dst));
              sub_1B1F1A900();

              sub_1B1F1A760();
              sub_1B1E0E714(v37, v38);
              sub_1B1F1A900();

              sub_1B1F1A2A0();

              sub_1B1E03C48(v37, v38);
              sub_1B1E03C48(v37, v38);
              result = sub_1B1F1B7F0();
              v64 ^= result;
              v32 = v33;
              if (!v30)
              {
                goto LABEL_22;
              }

LABEL_21:
              v33 = v32;
            }
          }
        }

LABEL_28:

        MEMORY[0x1B273E060](v64);

        v3 = v55;
        v5 = v54;
        v10 = v53;
        v12 = v51;
        v14 = v50;
        v18 = v57;
LABEL_29:
        v39 = v58;
        result = sub_1B1F1B7F0();
        v40 = -1 << *(v12 + 32);
        v41 = result & ~v40;
        v42 = v41 >> 6;
        if (((-1 << v41) & ~*(v39 + 8 * (v41 >> 6))) == 0)
        {
          break;
        }

        v43 = __clz(__rbit64((-1 << v41) & ~*(v39 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
        *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        result = sub_1B1E67E8C(v65, *(v12 + 48) + v43 * v62, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        ++*(v12 + 16);
        v17 = v63;
        if (!v63)
        {
          goto LABEL_7;
        }
      }

      v44 = 0;
      v45 = (63 - v40) >> 6;
      while (++v42 != v45 || (v44 & 1) == 0)
      {
        v46 = v42 == v45;
        if (v42 == v45)
        {
          v42 = 0;
        }

        v44 |= v46;
        v47 = *(v39 + 8 * v42);
        if (v47 != -1)
        {
          v43 = __clz(__rbit64(~v47)) + (v42 << 6);
          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_7:
      v20 = v13;
      while (1)
      {
        v13 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v13 >= v18)
        {
          v48 = 1 << *(v10 + 32);
          if (v48 >= 64)
          {
            sub_1B1E64060(0, (v48 + 63) >> 6, v14);
          }

          else
          {
            *v14 = -1 << v48;
          }

          v2 = v49;
          *(v10 + 16) = 0;
          goto LABEL_44;
        }

        v21 = v14[v13];
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v63 = (v21 - 1) & v21;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_44:

    *v2 = v12;
  }

  return result;
}

unint64_t sub_1B1E65028(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B1E646E8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B1E65A94(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1B1F1B7C0();
      sub_1B1F1A900();
      result = sub_1B1F1B7F0();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1B1F1B510() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B1E6573C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B1F1B710();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1B1E65190(uint64_t a1, unint64_t a2, char a3)
{
  v8 = type metadata accessor for LaunchServicesSnapshot(0);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7857A0, &qword_1B1F33AF0);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v34 - v10;
  v12 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v42 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v38 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = *(*v3 + 16);
  v20 = *(*v3 + 24);
  if (v20 <= v19 || (a3 & 1) == 0)
  {
    v37 = v16;
    if (a3)
    {
      v34 = v8;
      sub_1B1E64944(v19 + 1);
    }

    else
    {
      if (v20 > v19)
      {
        sub_1B1E6588C();
        goto LABEL_29;
      }

      v34 = v8;
      sub_1B1E65CC8(v19 + 1);
    }

    v35 = v3;
    v21 = *v3;
    sub_1B1F1B7C0();
    ToolKitIndexingReason.Changeset.Provenance.hash(into:)();
    v22 = sub_1B1F1B7F0();
    v39 = v21;
    v40 = v21 + 56;
    v23 = ~(-1 << *(v21 + 32));
    v4 = v36;
    while (1)
    {
      a2 = v22 & v23;
      if (((*(v40 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
      {
        break;
      }

      sub_1B1E67DD4(*(v21 + 48) + *(v42 + 72) * a2, v18, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
      v24 = *(v41 + 48);
      sub_1B1E67DD4(v18, v11, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
      sub_1B1E67DD4(a1, &v11[v24], type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v26 = v38;
          sub_1B1E67DD4(v11, v38, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
          v27 = *v26;
          if (swift_getEnumCaseMultiPayload() != 1)
          {

            goto LABEL_21;
          }

          v28 = sub_1B1E398D0(v27, *&v11[v24]);

          v4 = v36;

          v21 = v39;
          if (v28)
          {
            goto LABEL_33;
          }

          sub_1B1E67E34(v11, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
          goto LABEL_23;
        case 2u:
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            goto LABEL_33;
          }

          goto LABEL_22;
        case 3u:
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            goto LABEL_33;
          }

          goto LABEL_22;
        default:
          v25 = v37;
          sub_1B1E67DD4(v11, v37, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1B1E67E34(v25, type metadata accessor for LaunchServicesSnapshot);
LABEL_21:
            v21 = v39;
LABEL_22:
            sub_1B1E5C830(v11);
          }

          else
          {
            sub_1B1E67E8C(&v11[v24], v4, type metadata accessor for LaunchServicesSnapshot);
            if (sub_1B1F1A310())
            {
              v29 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
              if (*(v25 + *(v29 + 20)) == *(v4 + *(v29 + 20)) && (sub_1B1E38FD4(*(v25 + *(v34 + 20)), *(v4 + *(v34 + 20))) & 1) != 0)
              {
                goto LABEL_32;
              }
            }

            sub_1B1E67E34(v4, type metadata accessor for LaunchServicesSnapshot);
            sub_1B1E67E34(v25, type metadata accessor for LaunchServicesSnapshot);
            sub_1B1E67E34(v11, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
            v21 = v39;
          }

LABEL_23:
          sub_1B1E67E34(v18, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
          v22 = a2 + 1;
          break;
      }
    }

    v3 = v35;
  }

LABEL_29:
  v25 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B1E67E8C(a1, *(v25 + 48) + *(v42 + 72) * a2, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
  v31 = *(v25 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
LABEL_32:
    sub_1B1E67E34(v4, type metadata accessor for LaunchServicesSnapshot);
    sub_1B1E67E34(v25, type metadata accessor for LaunchServicesSnapshot);
LABEL_33:
    sub_1B1E67E34(v11, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
    sub_1B1E67E34(v18, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
    result = sub_1B1F1B710();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v33;
  }

  return result;
}

void *sub_1B1E6573C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AD0, &unk_1B1F33AB8);
  v2 = *v0;
  v3 = sub_1B1F1AF50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = v14 | (v8 << 6);
        v19 = (*(v2 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = (*(v4 + 48) + 16 * v18);
        *v21 = *v19;
        v21[1] = v20;
        result = sub_1B1F1A760();
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

      ++v15;
      if (*(v2 + 56 + 8 * v8))
      {
        OUTLINED_FUNCTION_19_7();
        v12 = v17 & v16;
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

void *sub_1B1E6588C()
{
  v1 = v0;
  v2 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785AE0, &qword_1B1F33AF8);
  v6 = *v0;
  v7 = sub_1B1F1AF50();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1B1E67DD4(*(v6 + 48) + v21, v5, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        result = sub_1B1E67E8C(v5, *(v8 + 48) + v21, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_1B1E65A94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AD0, &unk_1B1F33AB8);
  result = sub_1B1F1AF60();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A900();
        result = sub_1B1F1B7F0();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B1E65CC8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for LaunchServicesSnapshot(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolKitIndexingReason.Changeset.Provenance(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v50 - v11;
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785AE0, &qword_1B1F33AF8);
  result = sub_1B1F1AF60();
  v14 = result;
  if (*(v12 + 16))
  {
    v50 = v1;
    v15 = 0;
    v16 = *(v12 + 56);
    v59 = v12 + 56;
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v58 = (v17 + 63) >> 6;
    v20 = v12;
    v21 = result;
    v60 = result;
    v56 = v3;
    v55 = v5;
    v54 = v6;
    v53 = v7;
    v52 = v10;
    v51 = v20;
    v61 = result + 56;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v64 = (v19 - 1) & v19;
LABEL_12:
        v25 = *(v20 + 48);
        v63 = *(v7 + 72);
        v26 = v66;
        sub_1B1E67DD4(v25 + v63 * (v22 | (v15 << 6)), v66, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        sub_1B1F1B7C0();
        sub_1B1E67DD4(v26, v10, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v29 = *v10;
            MEMORY[0x1B273E060](1);
            v30 = *(v29 + 64);
            v57 = v29 + 64;
            v31 = 1 << *(v29 + 32);
            if (v31 < 64)
            {
              v32 = ~(-1 << v31);
            }

            else
            {
              v32 = -1;
            }

            v33 = v32 & v30;
            v34 = (v31 + 63) >> 6;
            v62 = v29;
            result = sub_1B1F1A760();
            v65 = 0;
            v35 = 0;
            if (v33)
            {
              goto LABEL_21;
            }

            break;
          case 2u:
            v28 = 2;
            goto LABEL_16;
          case 3u:
            v28 = 3;
LABEL_16:
            MEMORY[0x1B273E060](v28);
            goto LABEL_29;
          default:
            sub_1B1E67E8C(v10, v5, type metadata accessor for LaunchServicesSnapshot);
            MEMORY[0x1B273E060](0);
            sub_1B1F1A350();
            sub_1B1DF7854();
            v21 = v60;
            sub_1B1F1A800();
            v27 = type metadata accessor for LaunchServicesSnapshot.DatabaseVersion(0);
            MEMORY[0x1B273E060](*&v5[*(v27 + 20)]);
            sub_1B1E3BDC0(__src, *&v5[*(v3 + 20)]);
            sub_1B1E67E34(v5, type metadata accessor for LaunchServicesSnapshot);
            goto LABEL_29;
        }

        while (1)
        {
LABEL_22:
          v36 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_44;
          }

          if (v36 >= v34)
          {
            break;
          }

          v33 = *(v57 + 8 * v36);
          ++v35;
          if (v33)
          {
            while (1)
            {
              v37 = __clz(__rbit64(v33)) | (v36 << 6);
              v38 = *(*(v62 + 48) + 16 * v37 + 8);
              v39 = *(v62 + 56) + 32 * v37;
              v40 = *(v39 + 16);
              v41 = *(v39 + 24);
              sub_1B1F1A760();
              sub_1B1F1A760();
              sub_1B1E0E714(v40, v41);
              if (!v38)
              {
                goto LABEL_28;
              }

              v33 &= v33 - 1;
              memcpy(__dst, __src, sizeof(__dst));
              sub_1B1F1A900();

              sub_1B1F1A760();
              sub_1B1E0E714(v40, v41);
              sub_1B1F1A900();

              sub_1B1F1A2A0();

              sub_1B1E03C48(v40, v41);
              sub_1B1E03C48(v40, v41);
              result = sub_1B1F1B7F0();
              v65 ^= result;
              v35 = v36;
              if (!v33)
              {
                goto LABEL_22;
              }

LABEL_21:
              v36 = v35;
            }
          }
        }

LABEL_28:

        MEMORY[0x1B273E060](v65);

        v3 = v56;
        v5 = v55;
        v7 = v53;
        v10 = v52;
        v20 = v51;
        v21 = v60;
LABEL_29:
        result = sub_1B1F1B7F0();
        v42 = -1 << *(v21 + 32);
        v43 = result & ~v42;
        v44 = v43 >> 6;
        if (((-1 << v43) & ~*(v61 + 8 * (v43 >> 6))) == 0)
        {
          break;
        }

        v45 = __clz(__rbit64((-1 << v43) & ~*(v61 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
        *(v61 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        result = sub_1B1E67E8C(v66, *(v21 + 48) + v45 * v63, type metadata accessor for ToolKitIndexingReason.Changeset.Provenance);
        ++*(v21 + 16);
        v19 = v64;
        if (!v64)
        {
          goto LABEL_7;
        }
      }

      v46 = 0;
      v47 = (63 - v42) >> 6;
      while (++v44 != v47 || (v46 & 1) == 0)
      {
        v48 = v44 == v47;
        if (v44 == v47)
        {
          v44 = 0;
        }

        v46 |= v48;
        v49 = *(v61 + 8 * v44);
        if (v49 != -1)
        {
          v45 = __clz(__rbit64(~v49)) + (v44 << 6);
          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_7:
      v23 = v15;
      while (1)
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v15 >= v58)
        {

          v2 = v50;
          goto LABEL_42;
        }

        v24 = *(v59 + 8 * v15);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v64 = (v24 - 1) & v24;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v21 = v14;
LABEL_42:
    *v2 = v21;
  }

  return result;
}

uint64_t sub_1B1E66374(_BYTE *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a1[32];
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = swift_bridgeObjectRetain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_1B1F1A760();
      OUTLINED_FUNCTION_24_7();
      v7 = sub_1B1E66AAC(v15, v16, v17, v18, a4);
      MEMORY[0x1B273F720](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v11);
  sub_1B1E64060(0, v10, v19 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1B1F1A760();
  OUTLINED_FUNCTION_24_7();
  v12 = a3();
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v7 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v7;
}

unint64_t *sub_1B1E66538(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = result;
  v37 = 0;
  v5 = 0;
  v8 = a3[8];
  v6 = a3 + 8;
  v7 = v8;
  v9 = 1 << *(v6 - 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  v40 = a4 + 56;
  v35 = v12;
  v36 = v6;
LABEL_5:
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v39 = (v11 - 1) & v11;
LABEL_12:
    v16 = v13 | (v5 << 6);
    v17 = (a3[6] + 16 * v16);
    v18 = v17[1];
    v19 = a3[7] + 32 * v16;
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (*(a4 + 16))
    {
      v34 = v16;
      v22 = *v17;
      sub_1B1F1B7C0();
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1E0E714(v20, v21);
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1E0E714(v20, v21);
      sub_1B1F1A900();
      v23 = sub_1B1F1B7F0();
      v24 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v25 = v23 & v24;
        if (((*(v40 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
        {
          break;
        }

        v26 = (*(a4 + 48) + 16 * v25);
        if (*v26 != v22 || v26[1] != v18)
        {
          v28 = sub_1B1F1B510();
          v23 = v25 + 1;
          if ((v28 & 1) == 0)
          {
            continue;
          }
        }

        sub_1B1E03C48(v20, v21);

        sub_1B1E03C48(v20, v21);

        *(v33 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v6 = v36;
        v29 = __OFADD__(v37++, 1);
        v12 = v35;
        v11 = v39;
        if (v29)
        {
          goto LABEL_27;
        }

        goto LABEL_5;
      }
    }

    else
    {
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1E0E714(v20, v21);
      sub_1B1F1A760();
      sub_1B1F1A760();
      sub_1B1E0E714(v20, v21);
    }

    sub_1B1E03C48(v20, v21);

    sub_1B1E03C48(v20, v21);

    v12 = v35;
    v6 = v36;
    v11 = v39;
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v12)
    {
      sub_1B1E66C74(v33, a2, v37, a3);
      v31 = v30;

      return v31;
    }

    v15 = v6[v5];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v39 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t *sub_1B1E66820(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = result;
  v33 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v36 = (v9 - 1) & v9;
LABEL_12:
    v15 = v12 | (v5 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a3 + 56) + 24 * v15 + 16);
    v35 = v18;
    if (*(a4 + 16))
    {
      v32 = v15;
      v19 = *v16;
      sub_1B1F1B7C0();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v31 = v18;
      sub_1B1F1A900();
      v20 = sub_1B1F1B7F0();
      v21 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(v11 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = (*(a4 + 48) + 16 * v22);
        if (*v23 != v19 || v23[1] != v17)
        {
          v25 = sub_1B1F1B510();
          v20 = v22 + 1;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        swift_bridgeObjectRelease_n();
        result = swift_bridgeObjectRelease_n();
        *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        v26 = __OFADD__(v33++, 1);
        v9 = v36;
        if (v26)
        {
          goto LABEL_27;
        }

        goto LABEL_5;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v27 = v18;
    }

    swift_bridgeObjectRelease_n();
    result = swift_bridgeObjectRelease_n();
    v9 = v36;
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      v28 = sub_1B1E66EBC(v30, a2, v33, a3);

      return v28;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v36 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B1E66AAC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t *sub_1B1E66B54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B1E678F8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_1B1E66BE4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B1E673D8(v8, a2, a3, a4);
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_1B1E66C74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AD8, qword_1B1F33AD0);
      v7 = sub_1B1F1B140();
      if (a2 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = *a1;
      }

      v9 = 0;
      v10 = v7 + 64;
      v36 = v4;
      while (v8)
      {
        v11 = __clz(__rbit64(v8));
        v37 = (v8 - 1) & v8;
LABEL_16:
        v15 = v11 | (v9 << 6);
        v16 = (*(v4 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = (*(v4 + 56) + 32 * v15);
        v20 = v19[1];
        v38 = *v19;
        v22 = v19[2];
        v21 = v19[3];
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A760();
        sub_1B1E0E714(v22, v21);
        sub_1B1F1A900();
        sub_1B1F1B7F0();
        OUTLINED_FUNCTION_30_4();
        if (((v25 << v24) & ~*(v10 + 8 * v23)) == 0)
        {
          OUTLINED_FUNCTION_27_4();
          while (++v28 != v30 || (v29 & 1) == 0)
          {
            v31 = v28 == v30;
            if (v28 == v30)
            {
              v28 = 0;
            }

            v29 |= v31;
            if (*(v10 + 8 * v28) != -1)
            {
              OUTLINED_FUNCTION_25_6();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_28_5();
LABEL_25:
        *(v10 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v32 = (v27[6] + 16 * v26);
        *v32 = v17;
        v32[1] = v18;
        v33 = (v27[7] + 32 * v26);
        *v33 = v38;
        v33[1] = v20;
        v33[2] = v22;
        v33[3] = v21;
        ++v27[2];
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        v4 = v36;
        v8 = v37;
        if (!v5)
        {
          return;
        }
      }

      v12 = v9;
      while (1)
      {
        v9 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v9 >= a2)
        {
          return;
        }

        ++v12;
        if (a1[v9])
        {
          OUTLINED_FUNCTION_19_7();
          v37 = v14 & v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

uint64_t sub_1B1E66EBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AC0, &unk_1B1F33AA0);
  result = sub_1B1F1B140();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v4 + 56) + 24 * v16);
    v21 = v20[1];
    v38 = *v20;
    v22 = v20[2];
    sub_1B1F1B7C0();
    sub_1B1F1A760();
    v39 = v21;
    v23 = v18;
    sub_1B1F1A760();
    v24 = v22;
    sub_1B1F1A900();
    result = sub_1B1F1B7F0();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v9 + 48) + 16 * v28);
    *v33 = v23;
    v33[1] = v19;
    v34 = (*(v9 + 56) + 24 * v28);
    *v34 = v38;
    v34[1] = v39;
    v34[2] = v24;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v36;
    v10 = v37;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v37 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t *sub_1B1E67128(uint64_t (*a1)(void *), unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v32 = a1;
  v34[2] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v33 = v4;
    v30 = &v27;
    MEMORY[0x1EEE9AC00](a1);
    v28 = v8;
    v29 = (&v27 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1B1E64060(0, v8, v29);
    v31 = 0;
    v10 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(v5 + 56);
    v13 = (v11 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v4 = v5;
      v18 = (*(v5 + 48) + 16 * v17);
      v19 = v18[1];
      v34[0] = *v18;
      v34[1] = v19;
      sub_1B1F1A760();
      v20 = v33;
      v21 = v32(v34);
      v33 = v20;
      if (v20)
      {

        swift_willThrow();
        return a2;
      }

      v22 = v21;

      v5 = v4;
      if (v22)
      {
        *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_17:
          sub_1B1E6754C(v29, v28, v31, v5);
          return v24;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(v8 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  a2 = sub_1B1E66BE4(v26, v8, v5, v32, a2);

  MEMORY[0x1B273F720](v26, -1, -1);
  return a2;
}

void sub_1B1E673D8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;
    sub_1B1F1A760();
    v17 = a4(v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(result + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_1B1E6754C(result, a2, v22, v19);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1B1E6754C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AD0, &unk_1B1F33AB8);
      v8 = sub_1B1F1AF70();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      v30 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v17 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
        v18 = *v17;
        v19 = v17[1];
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A900();
        sub_1B1F1B7F0();
        OUTLINED_FUNCTION_30_4();
        if (((v22 << v21) & ~*(v12 + 8 * v20)) == 0)
        {
          OUTLINED_FUNCTION_27_4();
          while (++v24 != v26 || (v25 & 1) == 0)
          {
            v27 = v24 == v26;
            if (v24 == v26)
            {
              v24 = 0;
            }

            v25 |= v27;
            if (*(v12 + 8 * v24) != -1)
            {
              OUTLINED_FUNCTION_25_6();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_28_5();
LABEL_25:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v9 + 48) + 16 * v23);
        *v28 = v18;
        v28[1] = v19;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        v4 = v30;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v11])
        {
          OUTLINED_FUNCTION_19_7();
          v10 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

unint64_t *sub_1B1E67730(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1B1E64060(0, v6, v8);
    sub_1B1E678F8(v8, v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1B1E66B54(v12, v6, a2, a1);

    MEMORY[0x1B273F720](v12, -1, -1);
  }

  return v10;
}

void sub_1B1E678F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_1B1F1B7C0();
      sub_1B1F1A760();
      sub_1B1F1A900();
      v40 = sub_1B1F1B7F0();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_1B1F1B510();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(a1 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        sub_1B1E6754C(a1, a2, v53, v5);
        return;
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_1B1F1B7C0();
      sub_1B1F1A760();
      sub_1B1F1A900();
      v18 = sub_1B1F1B7F0();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_1B1F1B510();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      a1[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1B1E67D3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1B1E03C48(a3, a4);
  }
}

void sub_1B1E67D88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    sub_1B1F1A760();

    sub_1B1E0E714(a3, a4);
  }
}

uint64_t sub_1B1E67DD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B1E67E34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B1E67E8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_1B1F1AC70();
}

xpc_connection_t sub_1B1E67FA4(uint64_t a1, unint64_t a2, dispatch_queue_t targetq)
{
  mach_service = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *name = a1;
      v9 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = name;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      mach_service = xpc_connection_create_mach_service(v6, targetq, 1uLL);

      return mach_service;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843C0, &unk_1B1F33BC0);
  sub_1B1F1AF90();

  if (!v3)
  {
    return v10;
  }

  return mach_service;
}

uint64_t static XPCListener.anonymous(handler:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for XPCListener();
  swift_allocObject();

  return sub_1B1E685C4(0, 0, a1, a2);
}

uint64_t static XPCListener.machService(_:handler:)(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for XPCListener();
  swift_allocObject();
  sub_1B1F1A760();

  return sub_1B1E685C4(a1, a2, a3, a4);
}

xpc_connection_t sub_1B1E6817C(uint64_t a1, _xpc_connection_s *a2)
{
  v24 = sub_1B1F1AD60();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B1F1AD50();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B08, &unk_1B1F33BB0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = sub_1B1F1A6B0();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  if (a2)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1B1F1AFA0();

    v25 = 0xD00000000000001DLL;
    v26 = 0x80000001B1F39750;
    v23 = a1;
    MEMORY[0x1B273D1A0](a1, a2);
    v22 = v26;
    qos_class_main();
    sub_1B1F1A660();
    v16 = sub_1B1F1A670();
    result = __swift_getEnumTagSinglePayload(v11, 1, v16);
    if (result != 1)
    {
      sub_1B1E1D940();
      sub_1B1F1A6A0();
      v25 = MEMORY[0x1E69E7CC0];
      sub_1B1E1D984();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
      sub_1B1E1D9DC();
      sub_1B1F1AF00();
      (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v24);
      v18 = sub_1B1F1AD80();
      v19 = sub_1B1E67FA4(v23, a2, v18);
LABEL_6:
      v21 = v19;

      return v21;
    }

    __break(1u);
  }

  else
  {
    qos_class_main();
    sub_1B1F1A660();
    v20 = sub_1B1F1A670();
    result = __swift_getEnumTagSinglePayload(v13, 1, v20);
    if (result != 1)
    {
      sub_1B1E1D940();
      sub_1B1F1A6A0();
      v25 = MEMORY[0x1E69E7CC0];
      sub_1B1E1D984();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
      sub_1B1E1D9DC();
      sub_1B1F1AF00();
      (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v24);
      v18 = sub_1B1F1AD80();
      v19 = xpc_connection_create(0, v18);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E685C4(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  sub_1B1F1A760();

  v8 = sub_1B1E6817C(a1, a2);

  *(v5 + 48) = v8;
  v11[4] = sub_1B1E68CAC;
  v11[5] = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B1E6EBE0;
  v11[3] = &block_descriptor_4;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v8, v9);
  _Block_release(v9);
  swift_unknownObjectRelease();
  xpc_connection_resume(*(v5 + 48));

  return v5;
}

void sub_1B1E68718(_xpc_connection_s *a1, uint64_t a2)
{
  v4 = MEMORY[0x1B273FB80]();
  if (sub_1B1F1A580() == v4)
  {
    v10 = *(a2 + 32);
    type metadata accessor for XPCIncomingConnection();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    swift_unknownObjectRetain();
    v12 = v10(v11);

    if (v12)
    {

      xpc_connection_resume(a1);
    }

    else
    {

      xpc_connection_cancel(a1);
    }
  }

  else if (sub_1B1F1A550() != v4)
  {
    v5 = MEMORY[0x1B273FA10](a1);
    v6 = sub_1B1F1A920();
    v8 = v7;
    MEMORY[0x1B273F720](v5, -1, -1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B1F2A3B0;
    sub_1B1F1AFA0();
    MEMORY[0x1B273D1A0](0xD000000000000045, 0x80000001B1F39700);
    MEMORY[0x1B273D1A0](v6, v8);

    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    sub_1B1F1B7A0();
  }
}

xpc_endpoint_t sub_1B1E68910@<X0>(xpc_endpoint_t *a1@<X8>)
{
  result = xpc_endpoint_create(*(v1 + 48));
  *a1 = result;
  return result;
}

uint64_t XPCListener.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t XPCListener.__deallocating_deinit()
{
  XPCListener.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void static XPCListener.serviceListener(handler:)(void *a1, uint64_t a2)
{
  v4 = off_1EB785AF0;
  v3 = qword_1EB785AF8;
  off_1EB785AF0 = a1;
  qword_1EB785AF8 = a2;
  sub_1B1DEBA94(v4, v3);

  xpc_main(sub_1B1E68AB0);
}

_xpc_connection_s *sub_1B1E689E8(_xpc_connection_s *result)
{
  v1 = off_1EB785AF0;
  if (off_1EB785AF0)
  {
    v2 = result;
    v3 = qword_1EB785AF8;
    type metadata accessor for XPCIncomingConnection();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    swift_unknownObjectRetain();
    sub_1B1DFB8E8(v1, v3);
    v5 = v1(v4);

    if (v5)
    {

      xpc_connection_resume(v2);
    }

    else
    {
      xpc_connection_cancel(v2);
    }

    return sub_1B1DEBA94(v1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E68AB0(uint64_t a1)
{
  v1 = swift_unknownObjectRetain();
  sub_1B1E689E8(v1);

  return swift_unknownObjectRelease();
}

uint64_t XPCListener.description.getter()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    sub_1B1F1AFA0();

    strcpy(v8, "<xpc listener ");
    HIBYTE(v8[1]) = -18;
    MEMORY[0x1B273D1A0](v2, v1);
    MEMORY[0x1B273D1A0](8250, 0xE200000000000000);
  }

  else
  {
    sub_1B1F1AFA0();

    v8[0] = 0xD000000000000019;
    v8[1] = 0x80000001B1F396A0;
  }

  v3 = MEMORY[0x1B273FA10](v0[6]);
  v4 = sub_1B1F1A920();
  v6 = v5;
  MEMORY[0x1B273F720](v3, -1, -1);
  MEMORY[0x1B273D1A0](v4, v6);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return v8[0];
}

xpc_connection_t sub_1B1E68CB4@<X0>(const char *a1@<X0>, xpc_connection_t *a2@<X8>)
{
  result = xpc_connection_create_mach_service(a1, *(v2 + 16), 1uLL);
  *a2 = result;
  return result;
}

uint64_t sub_1B1E68CEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047280 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752397168 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E68DBC(char a1)
{
  if (a1)
  {
    return 1752397168;
  }

  else
  {
    return 1819047280;
  }
}

uint64_t sub_1B1E68DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616E6F73726570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6563726F66 && a2 == 0xE500000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6B6F6F426D6F7266 && a2 == 0xEC0000006B72616DLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B1E68EEC(char a1)
{
  if (!a1)
  {
    return 0x616E6F73726570;
  }

  if (a1 == 1)
  {
    return 0x6563726F66;
  }

  return 0x6B6F6F426D6F7266;
}

uint64_t sub_1B1E68F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E68CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E68F78(uint64_t a1)
{
  v2 = sub_1B1E693DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E68FB4(uint64_t a1)
{
  v2 = sub_1B1E693DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E68FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E68DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E69020(uint64_t a1)
{
  v2 = sub_1B1E69484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}