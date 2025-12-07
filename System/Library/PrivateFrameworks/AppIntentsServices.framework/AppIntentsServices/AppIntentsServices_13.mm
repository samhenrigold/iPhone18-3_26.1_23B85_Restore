uint64_t sub_221AC5AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC5B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC5C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, &unk_221BD9948);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC5D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  sub_221ADB35C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType, &unk_221BD8E08);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC5E18()
{
  OUTLINED_FUNCTION_113_5();
  OUTLINED_FUNCTION_193_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_58_6();
  sub_221BCCA98();
  return swift_endAccess();
}

uint64_t sub_221AC5E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221AC6010(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_221BCCBF8();
    }

    sub_221AC6204(a1, a2, a3, a4);
    sub_221AC63F8(a1, a2, a3, a4);
    sub_221AC65EC(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_221BCCBF8();
    }
  }

  return result;
}

uint64_t sub_221AC6010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC6204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC63F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB7D0, &unk_221BE4E60);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, &unk_221BD9948);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC65EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB95E0, &qword_221BE0A10);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType, &unk_221BD8E08);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC67E0(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v79 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  MEMORY[0x28223BE20](v79);
  v75 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9940, &unk_221BDADE0);
  MEMORY[0x28223BE20](v78);
  v80 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v86 = &v75 - v8;
  v84 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v84);
  v77 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA718, &qword_221BE0CC0);
  MEMORY[0x28223BE20](v83);
  v85 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v11 - 8);
  v81 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v92 = &v75 - v14;
  v90 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v90);
  v82 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18);
  MEMORY[0x28223BE20](v88);
  v91 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v17 - 8);
  v87 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v89 = &v75 - v20;
  v21 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v21);
  v93 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v27 - 8);
  v94 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v75 - v30;
  swift_beginAccess();
  sub_221A1C558();
  v32 = v95;
  swift_beginAccess();
  v33 = *(v24 + 56);
  sub_221A1C558();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v26, 1, v21) == 1)
  {

    sub_2219A1CC8(v31, &qword_27CFB9988, &qword_221BDAE20);
    v34 = v32;
    if (__swift_getEnumTagSinglePayload(&v26[v33], 1, v21) == 1)
    {
      sub_2219A1CC8(v26, &qword_27CFB9988, &qword_221BDAE20);
      goto LABEL_4;
    }

LABEL_14:
    v46 = &qword_27CFB9990;
    v47 = &qword_221BDAE28;
LABEL_15:
    v48 = v26;
    goto LABEL_21;
  }

  v34 = v32;
  v45 = v94;
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(&v26[v33], 1, v21) == 1)
  {

    sub_2219A1CC8(v31, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    goto LABEL_14;
  }

  v49 = v93;
  sub_221ADFDB4();
  if (*v45 != *v49 || v45[1] != v49[1])
  {

    sub_221ADFE28();
    sub_2219A1CC8(v31, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    v48 = v26;
    v46 = &qword_27CFB9988;
    v47 = &qword_221BDAE20;
    goto LABEL_21;
  }

  sub_221BCC8D8();
  sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

  v50 = sub_221BCD338();
  sub_221ADFE28();
  sub_2219A1CC8(v31, &qword_27CFB9988, &qword_221BDAE20);
  sub_221ADFE28();
  sub_2219A1CC8(v26, &qword_27CFB9988, &qword_221BDAE20);
  if ((v50 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v35 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  swift_beginAccess();
  v36 = *v35;
  v37 = v35[1];
  v38 = (v34 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  swift_beginAccess();
  v39 = v36 == *v38 && v37 == v38[1];
  if (!v39 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v40 = v89;
  sub_221A1C558();
  swift_beginAccess();
  v41 = *(v88 + 48);
  v26 = v91;
  sub_221A1C558();
  sub_221A1C558();
  v42 = v90;
  if (__swift_getEnumTagSinglePayload(v26, 1, v90) == 1)
  {
    sub_2219A1CC8(v40, &unk_27CFBB790, &qword_221BDADD8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v26[v41], 1, v42);
    v44 = v92;
    if (EnumTagSinglePayload == 1)
    {
      sub_2219A1CC8(v26, &unk_27CFBB790, &qword_221BDADD8);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  sub_221A1C558();
  v52 = __swift_getEnumTagSinglePayload(&v26[v41], 1, v42);
  v44 = v92;
  if (v52 == 1)
  {
    sub_2219A1CC8(v40, &unk_27CFBB790, &qword_221BDADD8);
    sub_221ADFE28();
LABEL_26:
    v46 = &qword_27CFB9978;
    v47 = &qword_221BDAE18;
    goto LABEL_15;
  }

  sub_221ADFDB4();
  v53 = sub_221A7941C();
  sub_221ADFE28();
  sub_2219A1CC8(v40, &unk_27CFBB790, &qword_221BDADD8);
  sub_221ADFE28();
  sub_2219A1CC8(v26, &unk_27CFBB790, &qword_221BDADD8);
  if ((v53 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_28:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v54 = *(v83 + 48);
  v55 = v85;
  sub_221A1C558();
  v56 = v55;
  sub_221A1C558();
  v57 = v84;
  if (__swift_getEnumTagSinglePayload(v55, 1, v84) == 1)
  {
    sub_2219A1CC8(v44, &unk_27CFBB7D0, &unk_221BE4E60);
    v58 = __swift_getEnumTagSinglePayload(v55 + v54, 1, v57);
    v59 = v86;
    if (v58 == 1)
    {
      sub_2219A1CC8(v56, &unk_27CFBB7D0, &unk_221BE4E60);
      goto LABEL_35;
    }

LABEL_33:
    v46 = &qword_27CFBA718;
    v47 = &qword_221BE0CC0;
    v48 = v56;
    goto LABEL_21;
  }

  v60 = v81;
  sub_221A1C558();
  v61 = __swift_getEnumTagSinglePayload(v55 + v54, 1, v57);
  v59 = v86;
  if (v61 == 1)
  {
    sub_2219A1CC8(v44, &unk_27CFBB7D0, &unk_221BE4E60);
    sub_221ADFE28();
    goto LABEL_33;
  }

  sub_221ADFDB4();
  LODWORD(v95) = sub_221A7F29C(v60);
  sub_221ADFE28();
  sub_2219A1CC8(v44, &unk_27CFBB7D0, &unk_221BE4E60);
  sub_221ADFE28();
  sub_2219A1CC8(v56, &unk_27CFBB7D0, &unk_221BE4E60);
  if ((v95 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_35:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v62 = *(v78 + 48);
  v63 = v59;
  v64 = v80;
  sub_221A1C558();
  sub_221A1C558();
  v65 = v79;
  if (__swift_getEnumTagSinglePayload(v64, 1, v79) != 1)
  {
    v72 = v76;
    sub_221A1C558();
    if (__swift_getEnumTagSinglePayload(v64 + v62, 1, v65) == 1)
    {
      sub_2219A1CC8(v86, &qword_27CFB95E0, &qword_221BE0A10);
      sub_221ADFE28();
      goto LABEL_46;
    }

    v73 = v75;
    sub_221ADFDB4();
    if (MEMORY[0x223DA21A0](*v72, v72[1], *v73, v73[1]))
    {
      sub_221BCC8D8();
      sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v74 = sub_221BCD338();
      sub_221ADFE28();
      sub_2219A1CC8(v86, &qword_27CFB95E0, &qword_221BE0A10);
      sub_221ADFE28();
      sub_2219A1CC8(v64, &qword_27CFB95E0, &qword_221BE0A10);
      if (v74)
      {
        goto LABEL_38;
      }

LABEL_22:

      return 0;
    }

    sub_221ADFE28();
    sub_2219A1CC8(v86, &qword_27CFB95E0, &qword_221BE0A10);
    sub_221ADFE28();
    v48 = v64;
    v46 = &qword_27CFB95E0;
    v47 = &qword_221BE0A10;
LABEL_21:
    sub_2219A1CC8(v48, v46, v47);
    goto LABEL_22;
  }

  sub_2219A1CC8(v63, &qword_27CFB95E0, &qword_221BE0A10);
  if (__swift_getEnumTagSinglePayload(v64 + v62, 1, v65) != 1)
  {
LABEL_46:
    v46 = &qword_27CFB9940;
    v47 = &unk_221BDADE0;
    v48 = v64;
    goto LABEL_21;
  }

  sub_2219A1CC8(v64, &qword_27CFB95E0, &qword_221BE0A10);
LABEL_38:
  v66 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = (v34 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
  swift_beginAccess();
  if (v67 == *v69 && v68 == v69[1])
  {

    return 1;
  }

  v71 = sub_221BCE1B8();

  result = 0;
  if (v71)
  {
    return 1;
  }

  return result;
}

uint64_t sub_221AC78F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA760, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest, &unk_221BDCDE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AC7998(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9F60, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest, &unk_221BDCE18);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AC7A60(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFB9F60, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest, &unk_221BDCE18);

  return sub_221BCCB48();
}

uint64_t sub_221AC7B20()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BF00C0);

  qword_27CFDE310 = v1;
  *algn_27CFDE318 = v2;
  return result;
}

uint64_t sub_221AC7BC8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE320);
  __swift_project_value_buffer(v0, qword_27CFDE320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dialog";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameterMetadata";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "value";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC7E40()
{
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v2 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v6 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__value;
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  return v0;
}

uint64_t sub_221AC7EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7E0, &unk_221BE0A00);
  MEMORY[0x28223BE20](v2 - 8);
  v17[2] = v17 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v4 - 8);
  v17[1] = v17 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v11 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v13 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__value;
  v15 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();

  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  return v1;
}

uint64_t sub_221AC82D0()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &qword_27CFB9988, &qword_221BDAE20);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata, &unk_27CFBB7D0, &unk_221BE4E60);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__value, &unk_27CFBB7E0, &unk_221BE0A00);
  return v0;
}

uint64_t sub_221AC8380(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_221AC8400(uint64_t a1)
{
  sub_221ABF2A8(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFB94A8, type metadata accessor for AppIntentsProtobuf_Dialog, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_221ABF2A8(319, &qword_27CFB9B80, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFB9C28, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_221AC8620()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_114_3();
  v1 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_55_7();
    *(v0 + v1) = sub_221AC7EF0(v2);
  }

  v3 = OUTLINED_FUNCTION_15_11();
  sub_221AC86EC(v3, v4, v5, v6);
  OUTLINED_FUNCTION_152_2();
}

void sub_221AC86EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_356();
  v9 = v8;
  OUTLINED_FUNCTION_278_0();
  while (1)
  {
    OUTLINED_FUNCTION_221();
    v10 = sub_221BCC998();
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    switch(v10)
    {
      case 1:
        v12 = OUTLINED_FUNCTION_129_4();
        v7(v12);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_129_4();
        v6(v15);
        break;
      case 3:
        v13 = OUTLINED_FUNCTION_129_4();
        v5(v13);
        break;
      case 4:
        v14 = OUTLINED_FUNCTION_129_4();
        v9(v14);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AC87B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC8890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, &unk_221BD9948);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC8A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC8B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221AC8BA4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221AC8D98(a1, a2, a3, a4);
    sub_221AC8F8C(a1, a2, a3, a4);
    return sub_221AC9180(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_221AC8BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC8D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC8F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB7D0, &unk_221BE4E60);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, &unk_221BD9948);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC9180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7E0, &unk_221BE0A00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB7E0, &unk_221BE0A00);
  }

  sub_221ADFDB4();
  sub_221BCCC38();
  return sub_221ADFE28();
}

BOOL sub_221AC9374(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v75 = a1;
  v59 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  MEMORY[0x28223BE20](v59);
  v57[0] = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA728, &unk_221BE0CD8);
  MEMORY[0x28223BE20](v58);
  v60 = v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7E0, &unk_221BE0A00);
  MEMORY[0x28223BE20](v4 - 8);
  v57[1] = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = v57 - v7;
  v64 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v64);
  v57[2] = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA718, &qword_221BE0CC0);
  MEMORY[0x28223BE20](v63);
  v65 = v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v10 - 8);
  v61 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = v57 - v13;
  v69 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v69);
  v62 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18);
  MEMORY[0x28223BE20](v68);
  v70 = v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v73 = v57 - v19;
  v20 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v20);
  v67 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = (v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v31 = v57 - v30;
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v32 = *(v23 + 56);
  sub_221A1C558();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v25, 1, v20) == 1)
  {

    sub_2219A1CC8(v31, &qword_27CFB9988, &qword_221BDAE20);
    if (__swift_getEnumTagSinglePayload(&v25[v32], 1, v20) == 1)
    {
      sub_2219A1CC8(v25, &qword_27CFB9988, &qword_221BDAE20);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(&v25[v32], 1, v20) == 1)
  {

    sub_2219A1CC8(v31, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
LABEL_9:
    v40 = &qword_27CFB9990;
    v41 = &qword_221BDAE28;
    v42 = v25;
LABEL_26:
    sub_2219A1CC8(v42, v40, v41);
    goto LABEL_27;
  }

  v43 = v67;
  sub_221ADFDB4();
  if (*v28 != *v43 || v28[1] != v43[1])
  {

    sub_221ADFE28();
    sub_2219A1CC8(v31, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    v42 = v25;
    v40 = &qword_27CFB9988;
    v41 = &qword_221BDAE20;
    goto LABEL_26;
  }

  sub_221BCC8D8();
  sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

  v44 = sub_221BCD338();
  sub_221ADFE28();
  sub_2219A1CC8(v31, &qword_27CFB9988, &qword_221BDAE20);
  sub_221ADFE28();
  sub_2219A1CC8(v25, &qword_27CFB9988, &qword_221BDAE20);
  if ((v44 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  swift_beginAccess();
  v33 = v73;
  sub_221A1C558();
  swift_beginAccess();
  v34 = *(v68 + 48);
  v35 = v70;
  sub_221A1C558();
  sub_221A1C558();
  v36 = v69;
  if (__swift_getEnumTagSinglePayload(v35, 1, v69) == 1)
  {
    sub_2219A1CC8(v33, &unk_27CFBB790, &qword_221BDADD8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35 + v34, 1, v36);
    v38 = v72;
    v39 = v71;
    if (EnumTagSinglePayload == 1)
    {
      sub_2219A1CC8(v35, &unk_27CFBB790, &qword_221BDADD8);
      goto LABEL_19;
    }

LABEL_17:
    v40 = &qword_27CFB9978;
    v41 = &qword_221BDAE18;
LABEL_25:
    v42 = v35;
    goto LABEL_26;
  }

  sub_221A1C558();
  v45 = __swift_getEnumTagSinglePayload(v35 + v34, 1, v36);
  v38 = v72;
  v39 = v71;
  if (v45 == 1)
  {
    sub_2219A1CC8(v73, &unk_27CFBB790, &qword_221BDADD8);
    sub_221ADFE28();
    goto LABEL_17;
  }

  sub_221ADFDB4();
  v46 = sub_221A7941C();
  sub_221ADFE28();
  sub_2219A1CC8(v73, &unk_27CFBB790, &qword_221BDADD8);
  sub_221ADFE28();
  sub_2219A1CC8(v35, &unk_27CFBB790, &qword_221BDADD8);
  if ((v46 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_19:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v47 = *(v63 + 48);
  v35 = v65;
  sub_221A1C558();
  sub_221A1C558();
  v48 = v64;
  if (__swift_getEnumTagSinglePayload(v35, 1, v64) != 1)
  {
    v49 = v61;
    sub_221A1C558();
    if (__swift_getEnumTagSinglePayload(v35 + v47, 1, v48) == 1)
    {
      sub_2219A1CC8(v39, &unk_27CFBB7D0, &unk_221BE4E60);
      sub_221ADFE28();
      goto LABEL_24;
    }

    sub_221ADFDB4();
    v51 = sub_221A7F29C(v49);
    sub_221ADFE28();
    sub_2219A1CC8(v39, &unk_27CFBB7D0, &unk_221BE4E60);
    sub_221ADFE28();
    sub_2219A1CC8(v35, &unk_27CFBB7D0, &unk_221BE4E60);
    if (v51)
    {
      goto LABEL_31;
    }

LABEL_27:

    return 0;
  }

  sub_2219A1CC8(v39, &unk_27CFBB7D0, &unk_221BE4E60);
  if (__swift_getEnumTagSinglePayload(v35 + v47, 1, v48) != 1)
  {
LABEL_24:
    v40 = &qword_27CFBA718;
    v41 = &qword_221BE0CC0;
    goto LABEL_25;
  }

  sub_2219A1CC8(v35, &unk_27CFBB7D0, &unk_221BE4E60);
LABEL_31:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v52 = *(v58 + 48);
  v53 = v60;
  sub_221A1C558();
  sub_221A1C558();
  v54 = v59;
  if (__swift_getEnumTagSinglePayload(v53, 1, v59) == 1)
  {

    sub_2219A1CC8(v38, &unk_27CFBB7E0, &unk_221BE0A00);
    if (__swift_getEnumTagSinglePayload(v53 + v52, 1, v54) == 1)
    {
      sub_2219A1CC8(v53, &unk_27CFBB7E0, &unk_221BE0A00);
      return 1;
    }

    goto LABEL_36;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v53 + v52, 1, v54) == 1)
  {

    sub_2219A1CC8(v38, &unk_27CFBB7E0, &unk_221BE0A00);
    sub_221ADFE28();
LABEL_36:
    sub_2219A1CC8(v53, &qword_27CFBA728, &unk_221BE0CD8);
    return 0;
  }

  sub_221ADFDB4();
  sub_221ACA8E8();
  v56 = v55;

  sub_221ADFE28();
  sub_2219A1CC8(v38, &unk_27CFBB7E0, &unk_221BE0A00);
  sub_221ADFE28();
  sub_2219A1CC8(v53, &unk_27CFBB7E0, &unk_221BE0A00);
  return (v56 & 1) != 0;
}

uint64_t sub_221ACA374(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA768, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest, &unk_221BDCC78);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ACA414(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9F40, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest, &unk_221BDCCB0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ACA4DC(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFB9F40, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest, &unk_221BDCCB0);

  return sub_221BCCB48();
}

uint64_t sub_221ACA59C()
{
  if (qword_27CFB7130 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE310;
  v2 = *algn_27CFDE318;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x65756C61562ELL, 0xE600000000000000);

  qword_27CFDE338 = v1;
  unk_27CFDE340 = v2;
  return result;
}

uint64_t sub_221ACA654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  sub_221ADB35C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation, &unk_221BDA488);
  return sub_221BCCAD8();
}

uint64_t sub_221ACA708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9C78, &qword_221BDB0F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9C78, &qword_221BDB0F8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation, &unk_221BDA488);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221ACA8E8()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(v1);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_13();
  v3 = OUTLINED_FUNCTION_120();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA720, &unk_221BE0CC8);
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_29_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(v8);
  OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_35_8();
    if (v9)
    {
      sub_2219A1CC8(v0, &qword_27CFB9C78, &qword_221BDB0F8);
LABEL_12:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
      v10 = OUTLINED_FUNCTION_135_3(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v9)
  {
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA720, &unk_221BE0CC8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A7AACC();
  v12 = v11;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFB9C78, &qword_221BDB0F8);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v10);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ACABC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA770, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value, &unk_221BDCB10);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ACAC60(uint64_t a1)
{

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ACAD28(uint64_t a1, uint64_t a2)
{

  return sub_221BCCB48();
}

uint64_t sub_221ACADA8()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD00000000000001ALL, 0x8000000221BF00E0);

  qword_27CFDE360 = v1;
  *algn_27CFDE368 = v2;
  return result;
}

uint64_t sub_221ACAE50()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE370);
  __swift_project_value_buffer(v0, qword_27CFDE370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ACB018()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_5_17();
      sub_221ACB130(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_17();
      sub_221ACB07C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_221ACB07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221ACB130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  sub_221ADB35C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput, &unk_221BDABB8);
  return sub_221BCCAD8();
}

uint64_t sub_221ACB1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221ACB3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9D00, &unk_221BDB1B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9D00, &unk_221BDB1B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput, &unk_221BDABB8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221ACB5A4()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_218_2();
  v43 = type metadata accessor for AppIntentsProtobuf_ActionOutput(v2);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_30_8();
  v40 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9D00, &unk_221BDB1B0);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_101_4(v7);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA710, &unk_221BE0CB0);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104_2();
  v44 = v9;
  v10 = OUTLINED_FUNCTION_133_3();
  type metadata accessor for AppIntentsProtobuf_UUID(v10);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v12 = OUTLINED_FUNCTION_27();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_102_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_221_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_116_5();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  v17 = *(v0 + 56);
  OUTLINED_FUNCTION_399();
  OUTLINED_FUNCTION_399();
  OUTLINED_FUNCTION_20_8(v1);
  if (v21)
  {
    OUTLINED_FUNCTION_20_8(v1 + v17);
    if (v21)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_64_0();
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v1 + v17);
    if (!v21)
    {
      OUTLINED_FUNCTION_3_22();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_349();
      if (!v24 || (OUTLINED_FUNCTION_385(), !v21))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      v27 = sub_221ADB35C(v25, v26, MEMORY[0x277D216D0]);
      v28 = OUTLINED_FUNCTION_392(v27);
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v28 & 1) == 0)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        v22 = &qword_27CFB9988;
        v23 = &qword_221BDAE20;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
LABEL_5:
      sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
      v18 = *(v42 + 48);
      OUTLINED_FUNCTION_233_0();
      OUTLINED_FUNCTION_239_1();
      v19 = OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_81_5(v19, v20);
      if (v21)
      {
        OUTLINED_FUNCTION_39_8(v44 + v18);
        if (v21)
        {
          sub_2219A1CC8(v44, &qword_27CFB9D00, &unk_221BDB1B0);
          goto LABEL_34;
        }
      }

      else
      {
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v44 + v18);
        if (!v31)
        {
          OUTLINED_FUNCTION_256_0();
          sub_221ADFDB4();
          if (*(v41 + *(v43 + 20)) == *(v40 + *(v43 + 20)) || (, , OUTLINED_FUNCTION_0_0(), sub_221A75FF0(), OUTLINED_FUNCTION_370(), , (v18 & 1) != 0))
          {
            sub_221BCC8D8();
            OUTLINED_FUNCTION_0_41();
            v34 = sub_221ADB35C(v32, v33, MEMORY[0x277D216D0]);
            v37 = OUTLINED_FUNCTION_369(v41, v35, v36, v34);
            sub_221ADFE28();
            sub_221ADFE28();
            sub_2219A1CC8(v44, &qword_27CFB9D00, &unk_221BDB1B0);
            if ((v37 & 1) == 0)
            {
              goto LABEL_24;
            }

LABEL_34:
            sub_221BCC8D8();
            OUTLINED_FUNCTION_0_41();
            sub_221ADB35C(v38, v39, MEMORY[0x277D216D0]);
            OUTLINED_FUNCTION_70_0();
            v30 = sub_221BCD338();
            goto LABEL_25;
          }

          OUTLINED_FUNCTION_257_0();
          sub_221ADFE28();
          sub_221ADFE28();
          v22 = &qword_27CFB9D00;
          v23 = &unk_221BDB1B0;
LABEL_30:
          v29 = v44;
          goto LABEL_23;
        }

        sub_221ADFE28();
      }

      v22 = &qword_27CFBA710;
      v23 = &unk_221BE0CB0;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v22 = &qword_27CFB9990;
  v23 = &qword_221BDAE28;
LABEL_22:
  v29 = v1;
LABEL_23:
  sub_2219A1CC8(v29, v22, v23);
LABEL_24:
  v30 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v30);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ACBB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA778, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest, &unk_221BDC9A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ACBC34(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB810, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest, &unk_221BDC9E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ACBCFC(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB810, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest, &unk_221BDC9E0);

  return sub_221BCCB48();
}

uint64_t sub_221ACBD7C()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BF0110);

  qword_27CFDE388 = v1;
  unk_27CFDE390 = v2;
  return result;
}

uint64_t sub_221ACBE24()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE398);
  __swift_project_value_buffer(v0, qword_27CFDE398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dialog";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isThrowing";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "requestConfirmation";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ACC0D8()
{
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v2 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing) = 0;
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type) = 0;
  return v0;
}

void sub_221ACC164()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_97_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_156();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing) = 0;
  v16 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation) = 0;
  v21 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type) = 0;
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &v29);
  sub_221A1C558();
  OUTLINED_FUNCTION_193_2();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &v28);
  sub_221A1C558();
  OUTLINED_FUNCTION_193_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_378();
  sub_221A855A4();
  swift_endAccess();
  v17 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing, &v27);
  LOBYTE(v17) = *(v2 + v17);
  OUTLINED_FUNCTION_294_0(v0 + v15, &v26);
  *(v0 + v15) = v17;
  v18 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation, &v25);
  LOBYTE(v18) = *(v2 + v18);
  OUTLINED_FUNCTION_294_0(v0 + v16, &v24);
  *(v0 + v16) = v18;
  v19 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type, &v23);
  v20 = *(v2 + v19);

  OUTLINED_FUNCTION_294_0(v0 + v21, &v22);
  *(v0 + v21) = v20;
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ACC3CC()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &qword_27CFB9988, &qword_221BDAE20);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_221ACC488(uint64_t a1)
{
  sub_221ABF2A8(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFB94A8, type metadata accessor for AppIntentsProtobuf_Dialog, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_221ACC718(uint64_t a1)
{
  result = sub_221BCC8D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221ACC8A0(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppIntentsProtobuf_Error(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_221ACCC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9D60;
  if (!qword_27CFB9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9D60);
  }

  return result;
}

unint64_t sub_221ACCCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9D78;
  if (!qword_27CFB9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9D78);
  }

  return result;
}

unint64_t sub_221ACCD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9D80;
  if (!qword_27CFB9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9D80);
  }

  return result;
}

uint64_t sub_221ACCD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_221BCC998();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_221ACCE70(a2, a1, a3, a4);
        break;
      case 2:
        sub_221ACCF4C(a2, a1, a3, a4);
        break;
      case 3:
      case 4:
        sub_221ACD028();
        break;
      case 5:
        sub_221ACD094(a2, a1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221ACCE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221ACCF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221ACD028()
{
  OUTLINED_FUNCTION_113_5();
  OUTLINED_FUNCTION_193_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_58_6();
  sub_221BCC9C8();
  return swift_endAccess();
}

uint64_t sub_221ACD094(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_221BCCAB8();
  return swift_endAccess();
}

uint64_t sub_221ACD120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_109_2();
  v7(0);
  OUTLINED_FUNCTION_58_6();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221ACD18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221ACD2D0(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221ACD4C4(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
    swift_beginAccess();
    if (*(a1 + v10) == 1)
    {
      sub_221BCCB88();
    }

    v11 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
    swift_beginAccess();
    if (*(a1 + v11) == 1)
    {
      sub_221BCCB88();
    }

    v12 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
    swift_beginAccess();
    result = *(a1 + v12);
    if (result)
    {
      return sub_221BCCC08();
    }
  }

  return result;
}

uint64_t sub_221ACD2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221ACD4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCC38();
  return sub_221ADFE28();
}

BOOL sub_221ACD6B8(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v47 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v47);
  v43[1] = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18);
  MEMORY[0x28223BE20](v45);
  v48 = v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v5 - 8);
  v43[2] = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = v43 - v8;
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v9);
  v44 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = v43 - v19;
  swift_beginAccess();
  v21 = v49;
  sub_221A1C558();
  swift_beginAccess();
  v22 = *(v12 + 56);
  sub_221A1C558();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v14, 1, v9) == 1)
  {

    sub_2219A1CC8(v20, &qword_27CFB9988, &qword_221BDAE20);
    v23 = a1;
    if (__swift_getEnumTagSinglePayload(&v14[v22], 1, v9) == 1)
    {
      sub_2219A1CC8(v14, &qword_27CFB9988, &qword_221BDAE20);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(&v14[v22], 1, v9) == 1)
  {

    sub_2219A1CC8(v20, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
LABEL_9:
    v28 = &qword_27CFB9990;
    v29 = &qword_221BDAE28;
    v30 = v14;
LABEL_18:
    sub_2219A1CC8(v30, v28, v29);
    goto LABEL_19;
  }

  v31 = v44;
  sub_221ADFDB4();
  if (*v17 != *v31 || v17[1] != v31[1])
  {

    sub_221ADFE28();
    sub_2219A1CC8(v20, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    v30 = v14;
    v28 = &qword_27CFB9988;
    v29 = &qword_221BDAE20;
    goto LABEL_18;
  }

  sub_221BCC8D8();
  sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

  v32 = sub_221BCD338();
  sub_221ADFE28();
  sub_2219A1CC8(v20, &qword_27CFB9988, &qword_221BDAE20);
  sub_221ADFE28();
  v23 = a1;
  sub_2219A1CC8(v14, &qword_27CFB9988, &qword_221BDAE20);
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  swift_beginAccess();
  v24 = v46;
  sub_221A1C558();
  swift_beginAccess();
  v25 = *(v45 + 48);
  v26 = v48;
  sub_221A1C558();
  sub_221A1C558();
  v27 = v47;
  if (__swift_getEnumTagSinglePayload(v26, 1, v47) != 1)
  {
    sub_221A1C558();
    if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v27) != 1)
    {
      sub_221ADFDB4();
      v34 = sub_221A7941C();
      sub_221ADFE28();
      sub_2219A1CC8(v24, &unk_27CFBB790, &qword_221BDADD8);
      sub_221ADFE28();
      sub_2219A1CC8(v26, &unk_27CFBB790, &qword_221BDADD8);
      if ((v34 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    sub_2219A1CC8(v24, &unk_27CFBB790, &qword_221BDADD8);
    sub_221ADFE28();
    goto LABEL_17;
  }

  sub_2219A1CC8(v24, &unk_27CFBB790, &qword_221BDADD8);
  if (__swift_getEnumTagSinglePayload(v26 + v25, 1, v27) != 1)
  {
LABEL_17:
    v28 = &qword_27CFB9978;
    v29 = &qword_221BDAE18;
    v30 = v26;
    goto LABEL_18;
  }

  sub_2219A1CC8(v26, &unk_27CFBB790, &qword_221BDADD8);
LABEL_22:
  v35 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  swift_beginAccess();
  LODWORD(v35) = *(v23 + v35);
  v36 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  swift_beginAccess();
  if (v35 == *(v21 + v36))
  {
    v37 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
    swift_beginAccess();
    LODWORD(v37) = *(v23 + v37);
    v38 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
    swift_beginAccess();
    if (v37 == *(v21 + v38))
    {
      v39 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
      swift_beginAccess();
      v40 = *(v23 + v39);

      v41 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
      swift_beginAccess();
      v42 = *(v21 + v41);

      return v40 == v42;
    }
  }

LABEL_19:

  return 0;
}

uint64_t sub_221ACE0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA780, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest, &unk_221BDC840);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ACE150(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB800, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest, &unk_221BDC878);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ACE218(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB800, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest, &unk_221BDC878);

  return sub_221BCCB48();
}

uint64_t sub_221ACE2D8()
{
  result = MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BF0160);
  qword_27CFDE3B0 = 0xD00000000000001FLL;
  *algn_27CFDE3B8 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221ACE350()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE3C0);
  __swift_project_value_buffer(v0, qword_27CFDE3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ACE518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA798, &qword_221BE0CF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA790, &qword_221BE0CE8);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v18, &qword_27CFBA798, &qword_221BE0CF0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_221ADB35C(&unk_27CFBB990, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success, &unk_221BDC5A8);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA798, &qword_221BE0CF0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA798, &qword_221BE0CF0);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA798, &qword_221BE0CF0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA798, &qword_221BE0CF0);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA790, &qword_221BE0CE8);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221ACEA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA790, &qword_221BE0CE8);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA790, &qword_221BE0CE8);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221ACEF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v4 = OUTLINED_FUNCTION_3_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(v8);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_15_11();
    sub_221ACF1F4(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_15_11();
    sub_221ACEFE0(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_49_7();
  sub_221ADFE28();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
    OUTLINED_FUNCTION_94_4();
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221ACEFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA790, &qword_221BE0CE8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB990, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success, &unk_221BDC5A8);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ACF1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA790, &qword_221BE0CE8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221ACF408()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(v1);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_13();
  v3 = OUTLINED_FUNCTION_120();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7A0, &qword_221BE0CF8);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_35_8();
    if (v9)
    {
      sub_2219A1CC8(v0, &qword_27CFBA790, &qword_221BE0CE8);
LABEL_12:
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
      OUTLINED_FUNCTION_259_0();
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
      v10 = OUTLINED_FUNCTION_36_8(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v9)
  {
    OUTLINED_FUNCTION_49_7();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA7A0, &qword_221BE0CF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8DF44();
  v12 = v11;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA790, &qword_221BE0CE8);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v10);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ACF6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA788, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse, &unk_221BDC6D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ACF764(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse, &unk_221BDC710);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ACF82C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse, &unk_221BDC710);

  return sub_221BCCB48();
}

uint64_t sub_221ACF8AC()
{
  if (qword_27CFB7180 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE3B0;
  v2 = *algn_27CFDE3B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE3D8 = v1;
  unk_27CFDE3E0 = v2;
  return result;
}

uint64_t sub_221ACF950()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE3E8);
  __swift_project_value_buffer(v0, qword_27CFDE3E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "firstElementPage";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ACFB18()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 100)
    {
      v7 = OUTLINED_FUNCTION_5_17();
      sub_221ACFC30(v7, v8, v9, v10);
    }

    else if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_5_17();
      sub_221ACFB7C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_221ACFB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  return sub_221BCCAD8();
}

uint64_t sub_221ACFC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  sub_221ADB35C(&qword_27CFB98D8, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage, &unk_221BDAA50);
  return sub_221BCCAD8();
}

uint64_t sub_221ACFCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_109_2();
  v7 = OUTLINED_FUNCTION_34_8();
  result = v8(v7);
  if (!v5)
  {
    v10 = OUTLINED_FUNCTION_34_8();
    a5(v10);
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221ACFD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221ACFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB980, &unk_221BE0A20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB980, &unk_221BE0A20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB98D8, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage, &unk_221BDAA50);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AD00FC()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218_2();
  v4 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(v3);
  v5 = OUTLINED_FUNCTION_67_4(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_12(v6, v37);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB980, &unk_221BE0A20);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_89_5(v9, v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7B0, &qword_221BE0D08);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v12 = OUTLINED_FUNCTION_41_4(v11, v39);
  type metadata accessor for AppIntentsProtobuf_Value(v12);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v16 = (v15 - v14);
  v17 = OUTLINED_FUNCTION_131_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_8_1(v19);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_74_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_221_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_116_5();
  v22 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  OUTLINED_FUNCTION_308(v22);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_20_8(v2);
  if (!v24)
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v2 + v1);
    if (!v24)
    {
      OUTLINED_FUNCTION_10_14();
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v0, v0[1], *v16, v16[1]))
      {
        v29 = sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v30, v31, MEMORY[0x277D216D0]);
        sub_221BCD338();
        OUTLINED_FUNCTION_20_9();
        sub_221ADFE28();
        sub_221ADFE28();
        sub_2219A1CC8(v2, &unk_27CFBB660, &qword_221BE4610);
        if ((v29 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_6;
      }

      OUTLINED_FUNCTION_247_0();
      sub_221ADFE28();
      OUTLINED_FUNCTION_0_0();
      sub_221ADFE28();
      v25 = &unk_27CFBB660;
      v26 = &qword_221BE4610;
LABEL_15:
      v27 = v2;
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_4_19();
    sub_221ADFE28();
LABEL_14:
    v25 = &qword_27CFB85E0;
    v26 = &unk_221BD3E40;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_20_8(v2 + v1);
  if (!v24)
  {
    goto LABEL_14;
  }

  sub_2219A1CC8(v2, &unk_27CFBB660, &qword_221BE4610);
LABEL_6:
  v23 = *(v40 + 48);
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_66_3(v41);
  if (v24)
  {
    OUTLINED_FUNCTION_39_8(v41 + v23);
    if (v24)
    {
      sub_2219A1CC8(v41, &unk_27CFBB980, &unk_221BE0A20);
      goto LABEL_28;
    }
  }

  else
  {
    OUTLINED_FUNCTION_346();
    sub_221A1C558();
    OUTLINED_FUNCTION_39_8(v41 + v23);
    if (!v32)
    {
      OUTLINED_FUNCTION_125_3();
      OUTLINED_FUNCTION_325();
      OUTLINED_FUNCTION_24();
      sub_221A77A1C();
      v34 = v33;
      sub_221ADFE28();
      OUTLINED_FUNCTION_300();
      sub_2219A1CC8(v41, &unk_27CFBB980, &unk_221BE0A20);
      if ((v34 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_28:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v35, v36, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_285_0();
      v28 = sub_221BCD338();
      goto LABEL_18;
    }

    sub_221ADFE28();
  }

  v25 = &qword_27CFBA7B0;
  v26 = &qword_221BE0D08;
  v27 = v41;
LABEL_16:
  sub_2219A1CC8(v27, v25, v26);
LABEL_17:
  v28 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v28);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD0630(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA7B8, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success, &unk_221BDC570);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD06D0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB990, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success, &unk_221BDC5A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD0798(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB990, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success, &unk_221BDC5A8);

  return sub_221BCCB48();
}

uint64_t sub_221AD0818()
{
  result = MEMORY[0x223DA31F0](0xD000000000000023, 0x8000000221BF01A0);
  qword_27CFDE400 = 0xD00000000000001FLL;
  *algn_27CFDE408 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD0884()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE410);
  __swift_project_value_buffer(v0, qword_27CFDE410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD0A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0);
  MEMORY[0x28223BE20](DeferredPropertyValue);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7D0, &qword_221BE0D18);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, DeferredPropertyValue);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA7C8, &qword_221BE0D10);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v18, &qword_27CFBA7D0, &qword_221BE0D18);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, DeferredPropertyValue);
    }
  }

  sub_221ADB35C(&unk_27CFBB9B0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success, &unk_221BDC2D8);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA7D0, &qword_221BE0D18);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, DeferredPropertyValue) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA7D0, &qword_221BE0D18);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA7D0, &qword_221BE0D18);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA7D0, &qword_221BE0D18);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA7C8, &qword_221BE0D10);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221AD0F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](DeferredPropertyValue);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, DeferredPropertyValue);
  v27 = DeferredPropertyValue;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA7C8, &qword_221BE0D10);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA7C8, &qword_221BE0D10);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221AD143C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v4 = OUTLINED_FUNCTION_3_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(DeferredPropertyValue);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_15_11();
    sub_221AD1728(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_15_11();
    sub_221AD1514(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_48_7();
  sub_221ADFE28();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
    OUTLINED_FUNCTION_94_4();
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AD1514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0);
  MEMORY[0x28223BE20](DeferredPropertyValue);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA7C8, &qword_221BE0D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB9B0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success, &unk_221BDC2D8);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AD1728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, DeferredPropertyValue) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA7C8, &qword_221BE0D10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AD193C()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(v1);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_13();
  v3 = OUTLINED_FUNCTION_120();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7D8, &qword_221BE0D20);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_35_8();
    if (v9)
    {
      sub_2219A1CC8(v0, &qword_27CFBA7C8, &qword_221BE0D10);
LABEL_12:
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
      OUTLINED_FUNCTION_259_0();
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
      v10 = OUTLINED_FUNCTION_36_8(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v9)
  {
    OUTLINED_FUNCTION_48_7();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA7D8, &qword_221BE0D20);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8E44C();
  v12 = v11;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA7C8, &qword_221BE0D10);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v10);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD1BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA7C0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse, &unk_221BDC408);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD1C98(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse, &unk_221BDC440);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD1D60(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse, &unk_221BDC440);

  return sub_221BCCB48();
}

uint64_t sub_221AD1DE0()
{
  if (qword_27CFB71A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE400;
  v2 = *algn_27CFDE408;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE428 = v1;
  unk_27CFDE430 = v2;
  return result;
}

uint64_t sub_221AD1E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  return sub_221BCCAD8();
}

uint64_t sub_221AD1F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AD2130()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_Value(v4);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_8();
  v6 = OUTLINED_FUNCTION_120();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_157();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_29_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(v11);
  v12 = *(v3 + 56);
  OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_20_8(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_20_8(v0 + v12);
    if (v16)
    {
      sub_2219A1CC8(v0, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v0 + v12);
  if (v16)
  {
    OUTLINED_FUNCTION_4_19();
    sub_221ADFE28();
LABEL_10:
    v17 = &qword_27CFB85E0;
    v18 = &unk_221BD3E40;
LABEL_11:
    sub_2219A1CC8(v0, v17, v18);
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_10_14();
  sub_221ADFDB4();
  if ((MEMORY[0x223DA21A0](*v2, v2[1], *v1, v1[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_79_1();
    sub_221ADFE28();
    OUTLINED_FUNCTION_298();
    sub_221ADFE28();
    v17 = &unk_27CFBB660;
    v18 = &qword_221BE4610;
    goto LABEL_11;
  }

  v19 = sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  v22 = sub_221ADB35C(v20, v21, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_312(v22);
  OUTLINED_FUNCTION_20_9();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB660, &qword_221BE4610);
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_118_0();
  v15 = sub_221BCD338();
LABEL_13:
  OUTLINED_FUNCTION_100_3(v15);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD2468(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA7E8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success, &unk_221BDC2A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD2508(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB9B0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success, &unk_221BDC2D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD25D0(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB9B0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success, &unk_221BDC2D8);

  return sub_221BCCB48();
}

uint64_t sub_221AD2650()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001ELL, 0x8000000221BF01D0);
  qword_27CFDE450 = 0xD00000000000001FLL;
  *algn_27CFDE458 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD26C4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE460);
  __swift_project_value_buffer(v0, qword_27CFDE460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD288C()
{
  OUTLINED_FUNCTION_130_3();
  while (1)
  {
    OUTLINED_FUNCTION_14();
    result = sub_221BCC998();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v6 = OUTLINED_FUNCTION_188_2();
      v0(v6);
    }

    else if (result == 2)
    {
      v5 = OUTLINED_FUNCTION_188_2();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_221AD2900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0);
  MEMORY[0x28223BE20](OptionsForAction);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB6D0, &qword_221BE0D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7F8, &qword_221BE0D38);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, OptionsForAction);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB6D0, &qword_221BE0D30);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v18, &qword_27CFBA7F8, &qword_221BE0D38);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, OptionsForAction);
    }
  }

  sub_221ADB35C(&qword_27CFB9E60, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success, &unk_221BDC008);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA7F8, &qword_221BE0D38);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, OptionsForAction) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA7F8, &qword_221BE0D38);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA7F8, &qword_221BE0D38);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA7F8, &qword_221BE0D38);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB6D0, &qword_221BE0D30);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221AD2DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB6D0, &qword_221BE0D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](OptionsForAction);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, OptionsForAction);
  v27 = OptionsForAction;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB6D0, &qword_221BE0D30);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB6D0, &qword_221BE0D30);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221AD32F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v4 = OUTLINED_FUNCTION_3_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(OptionsForAction);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_15_11();
    sub_221AD35DC(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_15_11();
    sub_221AD33C8(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_47_5();
  sub_221ADFE28();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
    OUTLINED_FUNCTION_94_4();
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AD33C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB6D0, &qword_221BE0D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0);
  MEMORY[0x28223BE20](OptionsForAction);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB6D0, &qword_221BE0D30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9E60, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success, &unk_221BDC008);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AD35DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB6D0, &qword_221BE0D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, OptionsForAction) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB6D0, &qword_221BE0D30);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AD37F0()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(v1);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_13();
  v3 = OUTLINED_FUNCTION_120();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA800, &qword_221BE0D40);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_35_8();
    if (v9)
    {
      sub_2219A1CC8(v0, &unk_27CFBB6D0, &qword_221BE0D30);
LABEL_12:
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
      OUTLINED_FUNCTION_259_0();
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
      v10 = OUTLINED_FUNCTION_36_8(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v9)
  {
    OUTLINED_FUNCTION_47_5();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA800, &qword_221BE0D40);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8E730();
  v12 = v11;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB6D0, &qword_221BE0D30);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v10);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD3AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse, &unk_221BDC138);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD3B4C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse, &unk_221BDC170);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD3C14(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse, &unk_221BDC170);

  return sub_221BCCB48();
}

uint64_t sub_221AD3C94()
{
  if (qword_27CFB71C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE450;
  v2 = *algn_27CFDE458;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE478 = v1;
  unk_27CFDE480 = v2;
  return result;
}

uint64_t sub_221AD3D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0);
  type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
  sub_221ADB35C(&unk_27CFBB6F0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult, &unk_221BDA320);
  return sub_221BCCAD8();
}

uint64_t sub_221AD3E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA810, &qword_221BE0D50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFBA810, &qword_221BE0D50);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB6F0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult, &unk_221BDA320);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AD3FE4()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(v1);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_13();
  v3 = OUTLINED_FUNCTION_120();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA818, &qword_221BE0D58);
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_29_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(v8);
  OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_310();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_35_8();
    if (v9)
    {
      sub_2219A1CC8(v0, &qword_27CFBA810, &qword_221BE0D50);
LABEL_12:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v14 = sub_221ADB35C(v12, v13, MEMORY[0x277D216D0]);
      v10 = OUTLINED_FUNCTION_135_3(v14);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v9)
  {
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA818, &qword_221BE0D58);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  v11 = sub_221A7B56C();
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA810, &qword_221BE0D50);
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v10);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD42BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA820, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success, &unk_221BDBFD0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD435C(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9E60, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success, &unk_221BDC008);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD4424(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFB9E60, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success, &unk_221BDC008);

  return sub_221BCCB48();
}

uint64_t sub_221AD44A4()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BF01F0);
  qword_27CFDE4A0 = 0xD00000000000001FLL;
  *algn_27CFDE4A8 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD4518()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE4B0);
  __swift_project_value_buffer(v0, qword_27CFDE4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD46E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
  MEMORY[0x28223BE20](AsyncIterator);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA830, &qword_221BE0D68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, AsyncIterator);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB9E0, &qword_221BE0D60);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v18, &qword_27CFBA830, &qword_221BE0D68);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, AsyncIterator);
    }
  }

  sub_221ADB35C(&unk_27CFBB9F0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success, &unk_221BDBD38);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA830, &qword_221BE0D68);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, AsyncIterator) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA830, &qword_221BE0D68);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA830, &qword_221BE0D68);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA830, &qword_221BE0D68);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB9E0, &qword_221BE0D60);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221AD4BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](AsyncIterator);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, AsyncIterator);
  v27 = AsyncIterator;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB9E0, &qword_221BE0D60);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB9E0, &qword_221BE0D60);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221AD50D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v4 = OUTLINED_FUNCTION_3_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(AsyncIterator);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_15_11();
    sub_221AD53BC(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_15_11();
    sub_221AD51A8(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_46_6();
  sub_221ADFE28();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
    OUTLINED_FUNCTION_94_4();
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AD51A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
  MEMORY[0x28223BE20](AsyncIterator);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB9E0, &qword_221BE0D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB9F0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success, &unk_221BDBD38);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AD53BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, AsyncIterator) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB9E0, &qword_221BE0D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AD55D0()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(v1);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_13();
  v3 = OUTLINED_FUNCTION_120();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA838, &qword_221BE0D70);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_35_8();
    if (v9)
    {
      sub_2219A1CC8(v0, &unk_27CFBB9E0, &qword_221BE0D60);
LABEL_12:
      type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
      OUTLINED_FUNCTION_259_0();
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
      v10 = OUTLINED_FUNCTION_36_8(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v9)
  {
    OUTLINED_FUNCTION_46_6();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA838, &qword_221BE0D70);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8EA6C();
  v12 = v11;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB9E0, &qword_221BE0D60);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v10);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD588C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA828, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse, &unk_221BDBE68);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD592C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse, &unk_221BDBEA0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD59F4(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse, &unk_221BDBEA0);

  return sub_221BCCB48();
}

uint64_t sub_221AD5A74()
{
  if (qword_27CFB71E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE4A0;
  v2 = *algn_27CFDE4A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE4C8 = v1;
  unk_27CFDE4D0 = v2;
  return result;
}

uint64_t sub_221AD5B18()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE4D8);
  __swift_project_value_buffer(v0, qword_27CFDE4D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sequenceIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "iteratorIdentifier";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD5CE0()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA38();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_17();
      sub_221AD5D44(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_221AD5D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221AD5DF8()
{
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  result = sub_221AD5E70(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1)
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBB8();
    }

    type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
    return OUTLINED_FUNCTION_30_7();
  }

  return result;
}

uint64_t sub_221AD5E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AD6050()
{
  OUTLINED_FUNCTION_21();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_246_1();
  v5 = OUTLINED_FUNCTION_3_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_97_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_29_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(v10);
  v11 = *(v3 + 56);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_20_8(v0 + v11);
    if (v19)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v0 + v11);
  if (v19)
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
LABEL_11:
    v20 = &qword_27CFB9990;
    v21 = &qword_221BDAE28;
LABEL_18:
    sub_2219A1CC8(v0, v20, v21);
LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_3_22();
  sub_221ADFDB4();
  if (*v1 != *v2 || v1[1] != v2[1])
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    goto LABEL_17;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v22, v23, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_379();
  v24 = sub_221BCD338();
  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
  if ((v24 & 1) == 0)
  {
LABEL_17:
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    v20 = &qword_27CFB9988;
    v21 = &qword_221BDAE20;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
LABEL_5:
  sub_2219A1CC8(v0, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_334();
  if (!v19)
  {
    goto LABEL_19;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v12, v13, MEMORY[0x277D216D0]);
  v14 = OUTLINED_FUNCTION_271_0();
  v18 = OUTLINED_FUNCTION_361(v14, v15, v16, v17);
LABEL_20:
  OUTLINED_FUNCTION_100_3(v18);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD635C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA848, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success, &unk_221BDBD00);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD63FC(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB9F0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success, &unk_221BDBD38);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD64C4(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB9F0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success, &unk_221BDBD38);

  return sub_221BCCB48();
}

uint64_t sub_221AD6544()
{
  result = MEMORY[0x223DA31F0](0xD000000000000026, 0x8000000221BF0210);
  qword_27CFDE4F0 = 0xD00000000000001FLL;
  *algn_27CFDE4F8 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD65B0()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE500);
  __swift_project_value_buffer(v0, qword_27CFDE500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD6778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  MEMORY[0x28223BE20](NextAsyncIteratorResults);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA860, &qword_221BE0D88);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, NextAsyncIteratorResults);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA858, &qword_221BE0D80);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v18, &qword_27CFBA860, &qword_221BE0D88);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, NextAsyncIteratorResults);
    }
  }

  sub_221ADB35C(&qword_27CFB9DF8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success, &unk_221BDBA68);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA860, &qword_221BE0D88);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, NextAsyncIteratorResults) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA860, &qword_221BE0D88);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA860, &qword_221BE0D88);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA860, &qword_221BE0D88);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA858, &qword_221BE0D80);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221AD6C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](NextAsyncIteratorResults);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, NextAsyncIteratorResults);
  v27 = NextAsyncIteratorResults;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA858, &qword_221BE0D80);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA858, &qword_221BE0D80);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221AD7168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v4 = OUTLINED_FUNCTION_3_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(NextAsyncIteratorResults);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_15_11();
    sub_221AD7454(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_15_11();
    sub_221AD7240(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_75_6();
  sub_221ADFE28();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
    OUTLINED_FUNCTION_94_4();
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AD7240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  MEMORY[0x28223BE20](NextAsyncIteratorResults);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA858, &qword_221BE0D80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9DF8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success, &unk_221BDBA68);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AD7454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, NextAsyncIteratorResults) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA858, &qword_221BE0D80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AD7668()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(v1);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_13();
  v3 = OUTLINED_FUNCTION_120();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA868, &qword_221BE0D90);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_35_8();
    if (v9)
    {
      sub_2219A1CC8(v0, &qword_27CFBA858, &qword_221BE0D80);
LABEL_12:
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
      OUTLINED_FUNCTION_259_0();
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
      v10 = OUTLINED_FUNCTION_36_8(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v9)
  {
    OUTLINED_FUNCTION_75_6();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA868, &qword_221BE0D90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8ED90();
  v12 = v11;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA858, &qword_221BE0D80);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v10);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD7924(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA850, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse, &unk_221BDBB98);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD79C4(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse, &unk_221BDBBD0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD7A8C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse, &unk_221BDBBD0);

  return sub_221BCCB48();
}

uint64_t sub_221AD7B0C()
{
  if (qword_27CFB7200 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE4F0;
  v2 = *algn_27CFDE4F8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE518 = v1;
  unk_27CFDE520 = v2;
  return result;
}

uint64_t sub_221AD7BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  return sub_221BCCAC8();
}

void sub_221AD7C68()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_7_13();
  if (!*(*v0 + 16) || (type metadata accessor for AppIntentsProtobuf_Value(0), sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70), OUTLINED_FUNCTION_91_4(), OUTLINED_FUNCTION_49_6(), sub_221BCCC18(), !v1))
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221AD7D18()
{
  OUTLINED_FUNCTION_69_1();
  sub_221A174D8();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  OUTLINED_FUNCTION_259_0();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  v3 = sub_221ADB35C(v1, v2, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v3) & 1;
}

uint64_t sub_221AD7E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA878, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success, &unk_221BDBA30);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD7EA8(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9DF8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success, &unk_221BDBA68);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD7F70(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFB9DF8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success, &unk_221BDBA68);

  return sub_221BCCB48();
}

uint64_t sub_221AD7FF0()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BF0240);
  qword_27CFDE540 = 0xD00000000000001FLL;
  *algn_27CFDE548 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD807C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    OUTLINED_FUNCTION_70_0();
    result = sub_221BCC998();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_221AD80F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221AD81A4()
{
  OUTLINED_FUNCTION_109_2();
  v1 = OUTLINED_FUNCTION_34_8();
  result = v2(v1);
  if (!v0)
  {
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221AD81E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AD83C8()
{
  OUTLINED_FUNCTION_21();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_218_2();
  type metadata accessor for AppIntentsProtobuf_UUID(v5);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_8();
  v24 = v7;
  v8 = OUTLINED_FUNCTION_3_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_97_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_29_8();
  v4(v13);
  v14 = *(v2 + 56);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v0);
  if (!v18)
  {
    OUTLINED_FUNCTION_1();
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v0 + v14);
    if (!v18)
    {
      sub_221ADFDB4();
      if (*v1 == *v24 && v1[1] == v24[1])
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v21, v22, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_379();
        v23 = sub_221BCD338();
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        if (v23)
        {
          sub_221ADFE28();
          goto LABEL_5;
        }
      }

      else
      {
        sub_221ADFE28();
      }

      sub_221ADFE28();
      v19 = &qword_27CFB9988;
      v20 = &qword_221BDAE20;
LABEL_16:
      sub_2219A1CC8(v0, v19, v20);
      v17 = 0;
      goto LABEL_17;
    }

    sub_221ADFE28();
LABEL_9:
    v19 = &qword_27CFB9990;
    v20 = &qword_221BDAE28;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_20_8(v0 + v14);
  if (!v18)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_2219A1CC8(v0, &qword_27CFB9988, &qword_221BDAE20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v15, v16, MEMORY[0x277D216D0]);
  v17 = sub_221BCD338();
LABEL_17:
  OUTLINED_FUNCTION_100_3(v17);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD8730()
{
  OUTLINED_FUNCTION_40_3();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_70();

  return v1(v0);
}

uint64_t sub_221AD87E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA880, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse, &unk_221BDB8C8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD8880(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse, &unk_221BDB900);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD8948(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse, &unk_221BDB900);

  return sub_221BCCB48();
}

uint64_t sub_221AD89F4()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BF0260);
  qword_27CFDE568 = 0xD00000000000001FLL;
  unk_27CFDE570 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AD8A68()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE578);
  __swift_project_value_buffer(v0, qword_27CFDE578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AD8C30()
{
  OUTLINED_FUNCTION_130_3();
  while (1)
  {
    OUTLINED_FUNCTION_14();
    result = sub_221BCC998();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v6 = OUTLINED_FUNCTION_188_2();
      v0(v6);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_188_2();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_221AD8CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  MEMORY[0x28223BE20](AppDescription);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA898, &qword_221BE0DA8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, AppDescription);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA890, &qword_221BE0DA0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v18, &qword_27CFBA898, &qword_221BE0DA8);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, AppDescription);
    }
  }

  sub_221ADB35C(&unk_27CFBB640, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success, &unk_221BDB630);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA898, &qword_221BE0DA8);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, AppDescription) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA898, &qword_221BE0DA8);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA898, &qword_221BE0DA8);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA898, &qword_221BE0DA8);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA890, &qword_221BE0DA0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221AD919C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](AppDescription);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, AppDescription);
  v27 = AppDescription;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA890, &qword_221BE0DA0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA890, &qword_221BE0DA0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221AD9694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v4 = OUTLINED_FUNCTION_3_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(AppDescription);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_15_11();
    sub_221AD9980(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_15_11();
    sub_221AD976C(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_53_8();
  sub_221ADFE28();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
    OUTLINED_FUNCTION_94_4();
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AD976C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  MEMORY[0x28223BE20](AppDescription);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA890, &qword_221BE0DA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB640, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success, &unk_221BDB630);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AD9980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, AppDescription) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA890, &qword_221BE0DA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AD9B94()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(v1);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_13();
  v3 = OUTLINED_FUNCTION_120();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA8A0, &qword_221BE0DB0);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_35_8();
    if (v9)
    {
      sub_2219A1CC8(v0, &qword_27CFBA890, &qword_221BE0DA0);
LABEL_12:
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
      OUTLINED_FUNCTION_259_0();
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
      v10 = OUTLINED_FUNCTION_36_8(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v9)
  {
    OUTLINED_FUNCTION_53_8();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA8A0, &qword_221BE0DB0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8F0E4();
  v12 = v11;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA890, &qword_221BE0DA0);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v10);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AD9E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA888, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse, &unk_221BDB760);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AD9EF0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse, &unk_221BDB798);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AD9FB8(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse, &unk_221BDB798);

  return sub_221BCCB48();
}

uint64_t sub_221ADA038()
{
  if (qword_27CFB7230 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE568;
  v2 = qword_27CFDE570;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE590 = v1;
  *algn_27CFDE598 = v2;
  return result;
}

uint64_t sub_221ADA0DC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE5A0);
  __swift_project_value_buffer(v0, qword_27CFDE5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "protectionState";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ADA2A4()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_5_17();
      sub_221ADA308(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA98();
    }
  }

  return result;
}

uint64_t sub_221ADA308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  sub_221ADB35C(&qword_27CFB9D90, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState, &unk_221BDB4C8);
  return sub_221BCCAD8();
}

void sub_221ADA3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_356();
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_7_13();
  v9 = OUTLINED_FUNCTION_42_8();
  if (!v10 || (OUTLINED_FUNCTION_103_5(v9), !v4))
  {
    v11 = OUTLINED_FUNCTION_3_21();
    v8(v11);
    if (!v4)
    {
      v6(0);
      OUTLINED_FUNCTION_30_7();
    }
  }

  OUTLINED_FUNCTION_355();
}

uint64_t sub_221ADA438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBB620, &qword_221BE0DC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  MEMORY[0x28223BE20](AppDescription);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, AppDescription) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFBB620, &qword_221BE0DC0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9D90, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState, &unk_221BDB4C8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221ADA618()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(v4);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBB620, &qword_221BE0DC0);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_157();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA8B0, &qword_221BE0DC8);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_102_2();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_20;
  }

  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  OUTLINED_FUNCTION_329(AppDescription);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_20_8(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_20_8(v0 + v3);
    if (v11)
    {
      sub_2219A1CC8(v0, &qword_27CFBB620, &qword_221BE0DC0);
      goto LABEL_11;
    }

LABEL_15:
    v18 = &qword_27CFBA8B0;
    v19 = &qword_221BE0DC8;
LABEL_19:
    sub_2219A1CC8(v0, v18, v19);
LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v0 + v3);
  if (v17)
  {
    OUTLINED_FUNCTION_175_0();
    sub_221ADFE28();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_265_0();
  sub_221ADFDB4();
  if (*v2 != *v1 || v2[1] != v1[1])
  {
    sub_221ADFE28();
    OUTLINED_FUNCTION_298();
    sub_221ADFE28();
    v18 = &qword_27CFBB620;
    v19 = &qword_221BE0DC0;
    goto LABEL_19;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  v22 = sub_221ADB35C(v20, v21, MEMORY[0x277D216D0]);
  v23 = OUTLINED_FUNCTION_312(v22);
  sub_221ADFE28();
  OUTLINED_FUNCTION_343();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBB620, &qword_221BE0DC0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
  v16 = OUTLINED_FUNCTION_118_3(v15);
LABEL_21:
  OUTLINED_FUNCTION_100_3(v16);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ADA9C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA8B8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success, &unk_221BDB5F8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ADAA64(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB640, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success, &unk_221BDB630);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ADAB2C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB640, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success, &unk_221BDB630);

  return sub_221BCCB48();
}

uint64_t sub_221ADABAC()
{
  if (qword_27CFB7240 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE590;
  v2 = *algn_27CFDE598;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000010, 0x8000000221BF0290);

  qword_27CFDE5B8 = v1;
  unk_27CFDE5C0 = v2;
  return result;
}

uint64_t sub_221ADAC54()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE5C8);
  __swift_project_value_buffer(v0, qword_27CFDE5C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "isHidden";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isLocked";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ADAE1C()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_58_6();
      sub_221BCC9C8();
    }
  }

  return result;
}

uint64_t sub_221ADAE7C()
{
  OUTLINED_FUNCTION_7_13();
  if (*v0 != 1 || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCB88(), !v1))
  {
    if (*(v2 + 1) != 1 || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCB88(), !v1))
    {
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221ADAF0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  if (*(v2 + 1) != *(v3 + 1))
  {
    return 0;
  }

  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  OUTLINED_FUNCTION_397();
  OUTLINED_FUNCTION_0_41();
  v7 = sub_221ADB35C(v5, v6, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v7) & 1;
}

uint64_t sub_221ADAF98(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_314(a1);
  a1(0);
  v6 = OUTLINED_FUNCTION_24();
  sub_221ADB35C(v6, v7, a4);
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t sub_221ADB040(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_70();
}

uint64_t sub_221ADB0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA8C0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState, &unk_221BDB490);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ADB164(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9D90, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState, &unk_221BDB4C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ADB22C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFB9D90, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState, &unk_221BDB4C8);

  return sub_221BCCB48();
}

uint64_t sub_221ADB35C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221ADFDB4()
{
  v1 = OUTLINED_FUNCTION_88_5();
  v2(v1);
  OUTLINED_FUNCTION_2_1();
  v3 = OUTLINED_FUNCTION_0_0();
  v4(v3);
  return v0;
}

uint64_t sub_221ADFE28()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2(v1);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_221ADFEBC()
{
  v1 = OUTLINED_FUNCTION_88_5();
  v2(v1);
  OUTLINED_FUNCTION_2_1();
  v3 = OUTLINED_FUNCTION_0_0();
  v4(v3);
  return v0;
}

unint64_t sub_221AE0070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBA618;
  if (!qword_27CFBA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBA618);
  }

  return result;
}

uint64_t sub_221AE00C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2219ACB84(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_221AE00DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBA758;
  if (!qword_27CFBA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBA758);
  }

  return result;
}

uint64_t sub_221AE0248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_290_0();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_220_2();
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_153();
    }
  }

  return result;
}

uint64_t sub_221AE0340(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_221AE0450(uint64_t a1)
{
  result = type metadata accessor for AppIntentsProtobuf_Error(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppIntentsProtobuf_Value(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_221AE04CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_290_0();
  result = type metadata accessor for AppIntentsProtobuf_Error(v4);
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_220_2();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return OUTLINED_FUNCTION_153();
  }

  return result;
}

void sub_221AE0630(uint64_t a1)
{
  sub_221ABF2A8(319, &qword_27CFBA9D0, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFBA9D8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_221BCC8D8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221AE0764(uint64_t a1)
{
  sub_221ABF2A8(319, &qword_27CFBA9F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v2 <= 0x3F)
    {
      sub_221ABF2A8(319, &qword_27CFB94B8, type metadata accessor for AppIntentsProtobuf_Value, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221AE0898(uint64_t a1)
{
  sub_221ABF2A8(319, &qword_27CFBAA08, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFBAA10, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_221BCC8D8();
      if (v3 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFBAA18, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_221AE3130(319, &qword_27CFB9508);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_221AE0AFC(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFB94B8, type metadata accessor for AppIntentsProtobuf_Value, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_221AE0BF0(uint64_t a1)
{
  sub_221AE3130(319, &qword_27CFBAA70);
  if (v1 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_221AE0CE8(uint64_t a1)
{
  sub_221ABF2A8(319, &qword_27CFBAA88, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_393Tm()
{
  OUTLINED_FUNCTION_48_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_51_5();
  }

  OUTLINED_FUNCTION_186_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_69_3();
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_129_3();
  }

  else
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_108_3();
  }

  v7 = OUTLINED_FUNCTION_10_9(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_394Tm()
{
  OUTLINED_FUNCTION_24_8();
  if (v1)
  {
    OUTLINED_FUNCTION_107_4();
  }

  else
  {
    OUTLINED_FUNCTION_202_1();
    v7 = OUTLINED_FUNCTION_296_0(v2, v3, v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_69_3();
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_130_2();
    }

    else
    {
      sub_221BCC8D8();
      OUTLINED_FUNCTION_109_1();
    }

    v11 = OUTLINED_FUNCTION_41_3(v10);

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

void sub_221AE0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = OUTLINED_FUNCTION_388();
  sub_221ABF2A8(v6, v7, v8, v9);
  if (v10 <= 0x3F)
  {
    OUTLINED_FUNCTION_383();
    v11 = sub_221BCC8D8();
    if (v12 <= 0x3F)
    {
      OUTLINED_FUNCTION_116_4(v11, v12, v13, v14, v15, v16, v17, v18, v19, SBYTE4(v19), SBYTE5(v19), SBYTE6(v19), SHIBYTE(v19), v20, v21, v22);
      OUTLINED_FUNCTION_153();
    }
  }
}

void sub_221AE1044(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221AE3130(319, qword_27CFB7C40);
    if (v2 <= 0x3F)
    {
      sub_221AE3130(319, &qword_27CFB9610);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_438Tm()
{
  OUTLINED_FUNCTION_48_6();
  if (v0)
  {
    return OUTLINED_FUNCTION_51_5();
  }

  OUTLINED_FUNCTION_186_1();
  sub_221BCC8D8();
  v2 = OUTLINED_FUNCTION_155_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_221AE13BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  result = sub_221BCC8D8();
  if (v5 <= 0x3F)
  {
    OUTLINED_FUNCTION_116_4(result, v5, v6, v7, v8, v9, v10, v11, *v12, v12[4], 0, 0, v13, v14, a4, v16);
    return OUTLINED_FUNCTION_153();
  }

  return result;
}

void sub_221AE1434(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_221AE3130(319, &qword_27CFB9508);
      if (v3 <= 0x3F)
      {
        sub_221AE3130(319, qword_27CFB7C40);
        if (v4 <= 0x3F)
        {
          sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_240Tm()
{
  OUTLINED_FUNCTION_48_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_51_5();
  }

  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_186_1();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_129_3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_56_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_108_3();
  }

  v7 = OUTLINED_FUNCTION_10_9(v4);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void __swift_store_extra_inhabitant_index_241Tm()
{
  OUTLINED_FUNCTION_24_8();
  if (v1)
  {
    OUTLINED_FUNCTION_107_4();
  }

  else
  {
    OUTLINED_FUNCTION_376();
    sub_221BCC8D8();
    OUTLINED_FUNCTION_69_3();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_130_2();
    }

    else
    {
      v4 = OUTLINED_FUNCTION_56_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      OUTLINED_FUNCTION_109_1();
    }

    v6 = OUTLINED_FUNCTION_41_3(v3);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_221AE1788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_388();
  sub_221BCC8D8();
  if (v3 <= 0x3F)
  {
    OUTLINED_FUNCTION_383();
    OUTLINED_FUNCTION_9_15();
    OUTLINED_FUNCTION_316();
    sub_221ABF2A8(v4, v5, v6, v7);
    if (v9 <= 0x3F)
    {
      OUTLINED_FUNCTION_116_4(v8, v9, v10, v11, v12, v13, v14, v15, v16, SBYTE4(v16), SBYTE5(v16), SBYTE6(v16), SHIBYTE(v16), v17, v18, v19);
      OUTLINED_FUNCTION_153();
    }
  }
}

void sub_221AE1878(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFBABD0, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221AE1A08(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_258Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_278_0();
  OUTLINED_FUNCTION_5_0();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_129_3();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    OUTLINED_FUNCTION_69_3();
    if (*(v6 + 84) == v1)
    {
      OUTLINED_FUNCTION_108_3();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_56_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      OUTLINED_FUNCTION_240_1();
    }
  }

  v9 = OUTLINED_FUNCTION_10_9(v3);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

uint64_t __swift_store_extra_inhabitant_index_259Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_32_5();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v4 + 84) == a3)
  {
    OUTLINED_FUNCTION_130_2();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_221();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_69_3();
    if (*(v8 + 84) == a3)
    {
      OUTLINED_FUNCTION_109_1();
    }

    else
    {
      v9 = OUTLINED_FUNCTION_56_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      OUTLINED_FUNCTION_237_0();
    }
  }

  v11 = OUTLINED_FUNCTION_41_3(v5);

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void sub_221AE1CFC()
{
  OUTLINED_FUNCTION_217_2();
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_15();
    OUTLINED_FUNCTION_58_6();
    sub_221ABF2A8(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_316();
      sub_221ABF2A8(v6, v7, v8, v9);
      if (v10 <= 0x3F)
      {
        OUTLINED_FUNCTION_127_5();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_153();
      }
    }
  }
}

void sub_221AE1E38(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFB94B0, type metadata accessor for AppIntentsProtobuf_Action, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_221AE3130(319, qword_27CFB7C40);
      if (v3 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFBAC38, type metadata accessor for AppIntentsProtobuf_Environment, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_157Tm()
{
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_5_0();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_284_0();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_56_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_129_3();
    v3 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_158Tm()
{
  OUTLINED_FUNCTION_376();
  OUTLINED_FUNCTION_32_5();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_91_4();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_56_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_130_2();
  }

  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_221AE21EC()
{
  OUTLINED_FUNCTION_290_0();
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_15();
    OUTLINED_FUNCTION_316();
    sub_221ABF2A8(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_127_5();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_153();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_683Tm()
{
  OUTLINED_FUNCTION_5_0();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_284_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
    OUTLINED_FUNCTION_69_3();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_129_3();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_69_3();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_108_3();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
        OUTLINED_FUNCTION_240_1();
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_684Tm()
{
  OUTLINED_FUNCTION_108_4();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_91_4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
    OUTLINED_FUNCTION_69_3();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_130_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_69_3();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_109_1();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
        OUTLINED_FUNCTION_237_0();
      }
    }
  }

  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void sub_221AE24E4()
{
  OUTLINED_FUNCTION_290_0();
  sub_221BCC8D8();
  if (v0 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFBAC68, type metadata accessor for AppIntentsProtobuf_NotificationTopic, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_126_3();
      sub_221ABF2A8(319, v2, v3, MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_127_5();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_153();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_719Tm()
{
  OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_69_3();
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_284_0();
  }

  else
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_69_3();
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_129_3();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_108_3();
    }

    v5 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_index_720Tm()
{
  OUTLINED_FUNCTION_108_4();
  v6 = OUTLINED_FUNCTION_296_0(v1, v2, v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_69_3();
  if (*(v8 + 84) == v0)
  {
    OUTLINED_FUNCTION_91_4();
  }

  else
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_69_3();
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_130_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_109_1();
    }
  }

  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void sub_221AE2914(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_15();
  sub_221ABF2A8(v1, v2, v3, v4);
  if (v6 <= 0x3F)
  {
    v20 = v5;
    sub_221BCC8D8();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_126_3();
      sub_221ABF2A8(319, v8, v9, MEMORY[0x277D83D88]);
      if (v11 <= 0x3F)
      {
        OUTLINED_FUNCTION_116_4(v10, v11, v12, v13, v14, v15, v16, v17, *v18, v18[4], 0, v19, SHIBYTE(v19), v20, v21, v22);
        OUTLINED_FUNCTION_153();
      }
    }
  }
}

void sub_221AE29D8(uint64_t a1)
{
  sub_221ABF2A8(319, &qword_27CFBAD28, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v2 <= 0x3F)
    {
      sub_221ABF2A8(319, &qword_27CFBAD30, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_197Tm()
{
  OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_69_3();
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_284_0();
  }

  else
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_129_3();
    v5 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_index_198Tm()
{
  OUTLINED_FUNCTION_108_4();
  v6 = OUTLINED_FUNCTION_296_0(v1, v2, v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_69_3();
  if (*(v8 + 84) == v0)
  {
    OUTLINED_FUNCTION_91_4();
  }

  else
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_130_2();
  }

  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void sub_221AE2C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_290_0();
  sub_221ABF2A8(v5, v6, v7, v8);
  if (v9 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_127_5();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_153();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_222Tm(uint64_t a1)
{
  OUTLINED_FUNCTION_278_0();
  OUTLINED_FUNCTION_5_0();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_284_0();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_69_3();
    if (*(v8 + 84) == v1)
    {
      OUTLINED_FUNCTION_129_3();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_56_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
      OUTLINED_FUNCTION_108_3();
    }

    v4 = v2 + v9;
  }

  return __swift_getEnumTagSinglePayload(v4, v1, v5);
}

uint64_t __swift_store_extra_inhabitant_index_223Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_32_5();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v4 + 84) == a3)
  {
    OUTLINED_FUNCTION_91_4();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_221();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_69_3();
    if (*(v7 + 84) == a3)
    {
      OUTLINED_FUNCTION_130_2();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_56_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      OUTLINED_FUNCTION_109_1();
    }
  }

  OUTLINED_FUNCTION_76_1();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void sub_221AE2F34()
{
  OUTLINED_FUNCTION_217_2();
  v0 = sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    v21 = v0;
    OUTLINED_FUNCTION_9_15();
    OUTLINED_FUNCTION_58_6();
    sub_221ABF2A8(v2, v3, v4, v5);
    if (v6 <= 0x3F)
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_316();
      sub_221ABF2A8(v7, v8, v9, v10);
      if (v12 <= 0x3F)
      {
        OUTLINED_FUNCTION_116_4(v11, v12, v13, v14, v15, v16, v17, v18, *v19, v19[4], 0, v20, SHIBYTE(v20), v21, v22, v23);
        OUTLINED_FUNCTION_153();
      }
    }
  }
}

uint64_t sub_221AE2FC0()
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(319);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_220_2();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return OUTLINED_FUNCTION_153();
  }

  return result;
}

void sub_221AE304C(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221AE3130(319, qword_27CFB7C40);
    if (v2 <= 0x3F)
    {
      sub_221AE3130(319, &qword_27CFBADE0);
      if (v3 <= 0x3F)
      {
        sub_221AE3130(319, &qword_27CFB9610);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_221AE3130(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_221BCDC98();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_503Tm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_3();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_123_1();

    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  else
  {
    OUTLINED_FUNCTION_386();
    return OUTLINED_FUNCTION_287(v7);
  }
}

void __swift_store_extra_inhabitant_index_504Tm()
{
  OUTLINED_FUNCTION_108_4();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_91_4();
    OUTLINED_FUNCTION_76_1();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

void sub_221AE32C8(uint64_t a1)
{
  sub_221BCC8D8();
  if (v1 <= 0x3F)
  {
    sub_221AE3130(319, qword_27CFB7C40);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_221AE3384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_290_0();
  result = sub_221BCC8D8();
  if (v4 <= 0x3F)
  {
    OUTLINED_FUNCTION_127_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_153();
  }

  return result;
}

void sub_221AE3408(uint64_t a1)
{
  sub_221ABF2A8(319, &qword_27CFB95F8, type metadata accessor for AppIntentsProtobuf_Property, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_221BCC8D8();
    if (v2 <= 0x3F)
    {
      sub_221ABF2A8(319, &qword_27CFBAE18, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFBAC38, type metadata accessor for AppIntentsProtobuf_Environment, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_221ABF2A8(319, &qword_27CFBAE20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_221ABF2A8(319, &qword_27CFBAB78, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_221ABF2A8(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_40_3();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_19_9(*(v3 + *(a3 + 20)));
  }

  v7 = OUTLINED_FUNCTION_123_1();

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_108_4();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_69_3();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_91_4();
    OUTLINED_FUNCTION_76_1();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_221AE3798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_290_0();
  result = sub_221BCC8D8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_127_5();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_153();
    }
  }

  return result;
}

unint64_t sub_221AE3818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBAE38;
  if (!qword_27CFBAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBAE38);
  }

  return result;
}

unint64_t sub_221AE38A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBAE50;
  if (!qword_27CFBAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBAE50);
  }

  return result;
}

unint64_t sub_221AE38F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBAE58;
  if (!qword_27CFBAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBAE58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_6()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_38_5()
{

  return sub_221ADFE28();
}

uint64_t OUTLINED_FUNCTION_51_5()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_70_6()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_72_5()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_94_4()
{

  return sub_221BCC8B8();
}

uint64_t OUTLINED_FUNCTION_103_5(uint64_t a1)
{

  return sub_221BCCBF8();
}

uint64_t OUTLINED_FUNCTION_105_4(uint64_t a1)
{
  *(v2 - 128) = a1;
  *(v2 - 88) = v1;

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_124_4(uint64_t a1)
{

  return sub_221BCCBF8();
}

uint64_t OUTLINED_FUNCTION_132_3(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_134_3()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_135_3(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_139_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_157_1()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_160_1()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_171_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_221BCE1B8();
}

uint64_t OUTLINED_FUNCTION_172_2()
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_185_1()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_191_2(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_192_2(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_204_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_210_2()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_211_2()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_216_1(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_222_2()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_223_2()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_228_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_232_0()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_233_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_239_1()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_266_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_267_0()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_268_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_269_0()
{

  return sub_221A1C558();
}

void *OUTLINED_FUNCTION_270_0(uint64_t a1, ...)
{

  return sub_221BCE308();
}

uint64_t OUTLINED_FUNCTION_274_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 72) = a8;

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_280()
{

  return sub_221ADFEBC();
}

uint64_t OUTLINED_FUNCTION_287@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_293_0()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_294_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_300()
{

  return sub_221ADFE28();
}

uint64_t OUTLINED_FUNCTION_307(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_308(uint64_t a1)
{
  *(v2 - 120) = a1;
  *(v2 - 88) = v1;

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_309()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_310()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_311(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_312(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_313(uint64_t a1)
{

  return sub_221BCD338();
}

void *OUTLINED_FUNCTION_314(uint64_t a1, ...)
{

  return sub_221BCE308();
}

uint64_t OUTLINED_FUNCTION_315()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_317()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_325()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_335()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_336()
{

  return swift_getEnumCaseMultiPayload();
}

void *OUTLINED_FUNCTION_337(uint64_t a1, uint64_t a2, ...)
{

  return sub_221BCE308();
}

uint64_t OUTLINED_FUNCTION_352()
{
}

uint64_t OUTLINED_FUNCTION_353()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_354()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_358()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_359()
{

  return sub_221ADFEBC();
}

uint64_t OUTLINED_FUNCTION_361(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_362()
{

  return sub_221ADFDB4();
}

void OUTLINED_FUNCTION_364()
{

  JUMPOUT(0x223DA4060);
}

uint64_t OUTLINED_FUNCTION_368()
{

  return sub_221ADFDB4();
}

uint64_t OUTLINED_FUNCTION_369(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_370()
{
}

uint64_t OUTLINED_FUNCTION_371()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_391()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_392(uint64_t a1)
{

  return sub_221BCD338();
}

uint64_t OUTLINED_FUNCTION_393()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_394(uint64_t a1, uint64_t a2, ...)
{

  return sub_221BCD318();
}

uint64_t OUTLINED_FUNCTION_395()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_396()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_397()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_398()
{

  return sub_221BCC8D8();
}

uint64_t OUTLINED_FUNCTION_399()
{

  return sub_221A1C558();
}

uint64_t sub_221AE5318(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_221AE5358(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_221AE53DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_221AE541C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221AE54F8(uint64_t a1)
{
  result = sub_221BCC418();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_38Tm()
{
  OUTLINED_FUNCTION_2_31();
  sub_221BCC558();
  OUTLINED_FUNCTION_69_3();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_19_9(*(v0 + *(v2 + 24) + 8));
  }

  v4 = OUTLINED_FUNCTION_3_23();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_39Tm()
{
  OUTLINED_FUNCTION_0_42();
  sub_221BCC558();
  OUTLINED_FUNCTION_69_3();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_1_36();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }
}

uint64_t sub_221AE5720()
{
  result = sub_221BCC558();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_127_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221AE57F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_221AE5834(uint64_t result, int a2, int a3)
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

uint64_t sub_221AE58D8()
{
  result = sub_221BCC558();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_127_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221AE5964(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 106))
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

uint64_t sub_221AE59A4(uint64_t result, int a2, int a3)
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
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices0aB8ProtocolO24AsyncSequenceElementPageVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221AE5A34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
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

uint64_t sub_221AE5A74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_221AE5AF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 210))
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

uint64_t sub_221AE5B30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221AE5C70(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221AE5CC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_221AE5D14(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_221AE5E08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_221AE5E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_105Tm()
{
  OUTLINED_FUNCTION_2_31();
  sub_221BCC558();
  OUTLINED_FUNCTION_69_3();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_3_23();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_14();
    if (v7 > 1)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }
}

void __swift_store_extra_inhabitant_index_106Tm()
{
  OUTLINED_FUNCTION_0_42();
  sub_221BCC558();
  OUTLINED_FUNCTION_69_3();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_1_36();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_13_12();
  }
}

uint64_t sub_221AE6064()
{
  result = sub_221BCC558();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_127_5();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221AE60CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_221AE610C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_221AE6180(uint64_t a1)
{
  sub_221AE62DC(319);
  if (v1 <= 0x3F)
  {
    sub_2219A1D20(319, &qword_27CFBAF28, 0x277CCA9B8);
    if (v3 <= 0x3F)
    {
      sub_221AE636C(319, &qword_27CFBAF30, &type metadata for PerformAppIntent.ActionConfirmationRequest, v2);
      if (v5 <= 0x3F)
      {
        sub_221AE636C(319, &qword_27CFBAF38, &type metadata for AppIntentsProtocol.PerformAction.ChoiceRequest, v4);
        if (v7 <= 0x3F)
        {
          sub_221AE636C(319, &qword_27CFBAF40, &type metadata for PerformAppIntent.ConfirmationRequest, v6);
          if (v9 <= 0x3F)
          {
            sub_221AE636C(319, &qword_27CFBAF48, &type metadata for PerformAppIntent.ContinueInAppRequest, v8);
            if (v11 <= 0x3F)
            {
              sub_221AE636C(319, &qword_27CFBAF50, &type metadata for AppIntentsProtocol.PerformAction.DisambiguationRequest, v10);
              if (v13 <= 0x3F)
              {
                sub_221AE636C(319, qword_27CFBAF58, &type metadata for AppIntentsProtocol.PerformAction.NeedsValueRequest, v12);
                if (v14 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_221AE62DC(uint64_t a1)
{
  if (!qword_27CFBAF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CFBB7A0, &qword_221BD2930);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CFBAF20);
    }
  }
}

void sub_221AE636C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for AppIntentsProtocol.PerformAction.ExecutionIdentifiable(0, a3, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_221AE63C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_221AE6400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221AE648C(uint64_t a1)
{
  result = sub_221BCC558();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_221AE6514(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_221BCC558();
  v7 = *(*(v6 - 8) + 84);
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = *(*(v6 - 8) + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v6;
  v15 = *(*(v6 - 8) + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v23 = a1;
      v8 = v14;
    }

    else
    {
      v23 = ((a1 + v15) & ~v12);
      v7 = v10;
    }

    return __swift_getEnumTagSinglePayload(v23, v7, v8);
  }

  v16 = (v15 & ~v12) + v13;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_24;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    switch(v21)
    {
      case 2:
        v22 = *a1;
        break;
      case 3:
        v22 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v22 = *a1;
        break;
      default:
        v22 = *a1;
        break;
    }
  }

  else
  {
    v22 = 0;
  }

  return v11 + (v22 | v20) + 1;
}

void sub_221AE672C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_221BCC558();
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(*(v8 - 8) + 84);
  v12 = *(v10 + 84);
  if (v12 <= v11)
  {
    v13 = *(*(v8 - 8) + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + v14;
  v16 = (v15 & ~v14) + *(v10 + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v11 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v9 = v8;
          }

          else
          {
            v24 = (&a1[v15] & ~v14);
            v25 = a2;
            v11 = v12;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v11, v9);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_221AE6A24(uint64_t a1)
{
  result = sub_221AE6AD4();
  if (v2 <= 0x3F)
  {
    result = sub_221BCC558();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_221AE6AD4()
{
  result = qword_27CFBAFF0;
  if (!qword_27CFBAFF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CFBAFF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppIntentsProtocol.PerformAction.Request.SystemContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 11;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 11;
  if (v6 < 0xA)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppIntentsProtocol.PerformAction.Request.SystemContext(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_221AE6CAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 215))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_221AE6D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 214) = 0;
    *(result + 212) = 0;
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 215) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 215) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_221AE6DB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 33))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t sub_221AE6DF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_221AE6EA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_221AE6EE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221AE6F5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 34))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = (*(a1 + 32) & 0xFE | (*(a1 + 32) >> 15) | (*(a1 + 32) >> 1) & 0x3F00) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
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

uint64_t sub_221AE6FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_221AE70A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_221AE70E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_221AE7140()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D23CB0]) init];
  v3 = 0;
  switch(v1)
  {
    case 10:
      break;
    default:
      v3 = sub_221BCD358();

      break;
  }

  [v2 setInterfaceIdiom_];

  return v2;
}

void *sub_221AE7294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *(v4 + 1);
  v9 = *(v4 + 16);
  v10 = v4[3];
  v11 = *(v4 + 32);
  v12 = *(v4 + 33);
  v13 = *(v4 + 6);
  v21 = *(v4 + 1);
  v22 = *(v4 + 7);
  v23 = *(v4 + 9);
  v26 = *(v4 + 64);
  v27 = *(v4 + 80);
  v28 = *(v4 + 104);
  v29 = *(v4 + 34);
  v24 = *(v4 + 106);
  v14 = *(v4 + 214);
  v15 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
  v16 = v15;
  if (v7 != 2)
  {
    [v15 setAllowLiveActivities_];
  }

  if (v8 == 2)
  {
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [v16 setAllowsPrepareBeforePerform_];
    if (v9)
    {
LABEL_5:
      if (!a2)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  [v16 setAssistantDismissalPolicy_];
  if (a2)
  {
LABEL_6:
    sub_2219B2D48(a1, a2, v16);
  }

LABEL_7:
  if ((v11 & 1) == 0)
  {
    [v16 setConnectionOperationTimeout_];
  }

  if (v12 != 2)
  {
    [v16 setConvertArrayResultToAsyncSequence_];
  }

  if (a3)
  {
    [v16 setEnvironment_];
  }

  if (v13)
  {
    sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);
    v17 = v14;
    swift_bridgeObjectRetain_n();
    v18 = sub_221BCDA48();
    v19 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v18 preferredExtractionType:1];

    v14 = v17;
    [v16 setExportedContentConfiguration_];
  }

  if ((v26 & 1) == 0)
  {
    [v16 setInteractionMode_];
  }

  if ((v27 & 1) == 0)
  {
    [v16 setKind_];
  }

  if (v28 != 2)
  {
    [v16 setRequestUnlockIfNeeded_];
  }

  if ((v14 & 1) == 0)
  {
    [v16 setSource_];
  }

  if (a4)
  {
    [v16 setSystemContext_];
  }

  [v16 setDonateToTranscript_];
  return v16;
}