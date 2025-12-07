unint64_t sub_193666B84()
{
  result = qword_1EAE3FB60;
  if (!qword_1EAE3FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FB60);
  }

  return result;
}

uint64_t TextUnderstandingEvent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v49 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v46 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v45 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v44 - v9;
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v47 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v17 = OUTLINED_FUNCTION_47(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v24 = type metadata accessor for TextUnderstandingEvent(0);
  memcpy(v56, (v1 + v24[7]), 0x60uLL);
  sub_19365B174();
  sub_19393C540();
  OUTLINED_FUNCTION_19_40();
  OUTLINED_FUNCTION_19_40();
  OUTLINED_FUNCTION_19_40();
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_6_47();
  sub_193667288(v25, v26, &protocol conformance descriptor for TextUnderstandingEvent.Metadata);
  sub_19393C540();
  sub_1934486F8(v1 + v24[12], v23, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v23, 1, v10) == 1)
  {
    OUTLINED_FUNCTION_95_8();
    v27 = v47;
  }

  else
  {
    v28 = v47;
    (*(v47 + 32))(v15, v23, v10);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_69();
    v31 = sub_193667288(v29, v30, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_26_23(v31);
    (*(v28 + 8))(v15, v10);
    v27 = v28;
  }

  sub_1934486F8(v1 + v24[13], v20, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v20, 1, v10) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    (*(v27 + 32))(v15, v20, v10);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_69();
    v34 = sub_193667288(v32, v33, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_26_23(v34);
    v35 = *(v27 + 8);
    v27 += 8;
    v35(v15, v10);
  }

  OUTLINED_FUNCTION_29_23(v55);
  OUTLINED_FUNCTION_29_23(v56);
  OUTLINED_FUNCTION_25_29(v56);
  if (v36)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v52, v55, sizeof(v52));
    OUTLINED_FUNCTION_94();
    memcpy(v53, v55, sizeof(v53));
    sub_193665984(v53, v54);
    sub_193667234();
    sub_19393C540();
    memcpy(v54, v52, sizeof(v54));
    sub_193666B30(v54);
  }

  OUTLINED_FUNCTION_29_23(v53);
  OUTLINED_FUNCTION_29_23(v54);
  OUTLINED_FUNCTION_25_29(v54);
  if (v36)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    memcpy(v50, v53, sizeof(v50));
    OUTLINED_FUNCTION_94();
    memcpy(v51, v53, sizeof(v51));
    sub_193665984(v51, v52);
    sub_193667234();
    sub_19393C540();
    memcpy(v52, v50, sizeof(v52));
    sub_193666B30(v52);
  }

  OUTLINED_FUNCTION_18_33();
  if (v27)
  {
    OUTLINED_FUNCTION_10_46();
    OUTLINED_FUNCTION_11_37();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_18_33();
  if (v27)
  {
    OUTLINED_FUNCTION_10_46();
    OUTLINED_FUNCTION_11_37();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_18_33();
  if (v27)
  {
    OUTLINED_FUNCTION_10_46();
    OUTLINED_FUNCTION_11_37();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_18_33();
  if (v27)
  {
    OUTLINED_FUNCTION_10_46();
    OUTLINED_FUNCTION_11_37();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_18_33();
  if (v27)
  {
    OUTLINED_FUNCTION_10_46();
    OUTLINED_FUNCTION_11_37();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  sub_19393CAD0();
  v37 = v48;
  sub_1934486F8(v2 + v24[22], v48, &qword_1EAE3ACA0, &qword_193972420);
  v38 = v49;
  if (__swift_getEnumTagSinglePayload(v37, 1, v49) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v40 = v45;
    v39 = v46;
    (*(v46 + 32))(v45, v37, v38);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_7_34();
    sub_193667288(v41, v42, MEMORY[0x1E6968FC0]);
    sub_19393C540();
    (*(v39 + 8))(v40, v38);
  }

  if (*(v2 + v24[23]) != 2)
  {
    OUTLINED_FUNCTION_94();
  }

  return sub_19393CAD0();
}

unint64_t sub_193667234()
{
  result = qword_1EAE3FB70;
  if (!qword_1EAE3FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FB70);
  }

  return result;
}

uint64_t sub_193667288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_21_32(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

void sub_1936672EC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEABA38);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v58 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v58, xmmword_193969E40);
  *v0 = "documentIdentifiers";
  *(v0 + 8) = 19;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v10 = 2;
  *v9 = "status";
  v9[1] = 6;
  v11 = OUTLINED_FUNCTION_1_3(v9);
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v13 = 3;
  *v12 = "category";
  v12[1] = 8;
  v14 = OUTLINED_FUNCTION_1_3(v12);
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_45_2(3 * v6);
  *v16 = 4;
  *v15 = "algorithm";
  v15[1] = 9;
  v17 = OUTLINED_FUNCTION_1_3(v15);
  (v8)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v1 + 4 * v6);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_40_21(v18);
  v21 = OUTLINED_FUNCTION_1_3(v20);
  (v8)(v21);
  v22 = OUTLINED_FUNCTION_45_2(5 * v6);
  *v23 = 6;
  *v22 = "startDate";
  v22[1] = 9;
  v24 = OUTLINED_FUNCTION_1_3(v22);
  (v8)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 6 * v6);
  *v26 = 7;
  *v25 = "endDate";
  v25[1] = 7;
  v27 = OUTLINED_FUNCTION_1_3(v25);
  (v8)(v27);
  v28 = OUTLINED_FUNCTION_45_2(7 * v6);
  *v29 = 8;
  *v28 = "startLocation";
  v28[1] = 13;
  v30 = OUTLINED_FUNCTION_1_3(v28);
  (v8)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v1 + 8 * v6);
  *v32 = 9;
  *v31 = "endLocation";
  v31[1] = 11;
  v33 = OUTLINED_FUNCTION_1_3(v31);
  (v8)(v33);
  v34 = OUTLINED_FUNCTION_45_2(9 * v6);
  *v35 = 10;
  *v34 = "groupId";
  v34[1] = 7;
  v36 = OUTLINED_FUNCTION_1_3(v34);
  (v8)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v1 + 10 * v6);
  *v38 = 11;
  *v37 = "fallbackGroupId";
  v37[1] = 15;
  v39 = OUTLINED_FUNCTION_1_3(v37);
  (v8)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v1 + 11 * v6);
  *v41 = 12;
  *v40 = "geocodingMode";
  v40[1] = 13;
  v42 = OUTLINED_FUNCTION_1_3(v40);
  (v8)(v42);
  v43 = OUTLINED_FUNCTION_3_1(v1 + 12 * v6);
  *v44 = 13;
  *v43 = "notes";
  v43[1] = 5;
  v45 = OUTLINED_FUNCTION_1_3(v43);
  (v8)(v45);
  v46 = OUTLINED_FUNCTION_3_1(v1 + 13 * v6);
  *v47 = 14;
  *v46 = "title";
  v46[1] = 5;
  v48 = OUTLINED_FUNCTION_1_3(v46);
  (v8)(v48);
  v49 = OUTLINED_FUNCTION_3_1(v1 + 14 * v6);
  *v50 = 15;
  v51 = OUTLINED_FUNCTION_40_21(v49);
  v52 = OUTLINED_FUNCTION_1_3(v51);
  (v8)(v52);
  v53 = OUTLINED_FUNCTION_45_2(15 * v6);
  *v54 = 16;
  *v53 = "url";
  v53[1] = 3;
  v55 = OUTLINED_FUNCTION_1_3(v53);
  (v8)(v55);
  v56 = OUTLINED_FUNCTION_3_1(v1 + 16 * v6);
  *v57 = 17;
  *v56 = "isValidCalendarEvent";
  *(v56 + 8) = 20;
  *(v56 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19366771C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBA8, &qword_193977EC0);
  v14 = OUTLINED_FUNCTION_47(v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v51 = v8;
  v43 = v12;
  v44 = &v43 - v16;
  v18 = v17;
  v45 = v0;
  v46 = v17;
  while (1)
  {
    OUTLINED_FUNCTION_234();
    v19 = sub_19393C0E0();
    if (v2 || (v20 & 1) != 0)
    {
      break;
    }

    switch(v19)
    {
      case 1:
        v49 = 0u;
        memset(v50, 0, sizeof(v50));
        sub_193498018();
        if (*(&v49 + 1))
        {
          memcpy(&v47[1], v50, 0x50uLL);
          v47[0] = v49;
          v18 = v46;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v47);
        }

        v42 = *(type metadata accessor for TextUnderstandingEvent(0) + 28);
        v3 = v45;
        memcpy(v48, (v45 + v42), sizeof(v48));
        sub_19365A098(v48);
        memcpy((v3 + v42), v47, 0x60uLL);
        v8 = v51;
        continue;
      case 2:
        v49 = 0uLL;
        OUTLINED_FUNCTION_20_38();
        sub_19393C200();
        v2 = 0;
        OUTLINED_FUNCTION_44_20();
        if (v31)
        {
          v38 = 0xE000000000000000;
        }

        else
        {
          v38 = v37;
        }

        v39 = (v3 + *(type metadata accessor for TextUnderstandingEvent(0) + 32));

        *v39 = v8;
        v39[1] = v38;
        goto LABEL_26;
      case 3:
        v49 = 0uLL;
        OUTLINED_FUNCTION_20_38();
        sub_19393C200();
        v2 = 0;
        OUTLINED_FUNCTION_44_20();
        if (v31)
        {
          v32 = 0xE000000000000000;
        }

        else
        {
          v32 = v30;
        }

        v33 = *(type metadata accessor for TextUnderstandingEvent(0) + 36);
        goto LABEL_21;
      case 4:
        v49 = 0uLL;
        OUTLINED_FUNCTION_20_38();
        sub_19393C200();
        v2 = 0;
        OUTLINED_FUNCTION_44_20();
        if (v31)
        {
          v32 = 0xE000000000000000;
        }

        else
        {
          v32 = v35;
        }

        v33 = *(type metadata accessor for TextUnderstandingEvent(0) + 40);
LABEL_21:
        v36 = (v3 + v33);

        *v36 = v8;
        v36[1] = v32;
LABEL_26:
        v18 = v46;
        v8 = v51;
        continue;
      case 5:
        v25 = v44;
        __swift_storeEnumTagSinglePayload(v44, 1, 1, v8);
        sub_193498018();
        v26 = v25;
        v27 = v18;
        sub_193448758(v26, v18, &qword_1EAE3FBA8, &qword_193977EC0);
        if (__swift_getEnumTagSinglePayload(v18, 1, v8) == 1)
        {
          v28 = v43;
          TextUnderstandingEvent.Metadata.init()();
          sub_19344E6DC(v44, &qword_1EAE3FBA8, &qword_193977EC0);
          v29 = v27;
          if (__swift_getEnumTagSinglePayload(v27, 1, v8) != 1)
          {
            sub_19344E6DC(v27, &qword_1EAE3FBA8, &qword_193977EC0);
          }
        }

        else
        {
          sub_19344E6DC(v44, &qword_1EAE3FBA8, &qword_193977EC0);
          v28 = v43;
          sub_193667D44(v27, v43);
          v29 = v27;
        }

        v41 = type metadata accessor for TextUnderstandingEvent(0);
        v3 = v45;
        sub_193667CE0(v28, v45 + *(v41 + 44));
        v18 = v29;
        continue;
      case 6:
        v40 = *(type metadata accessor for TextUnderstandingEvent(0) + 48);
        goto LABEL_29;
      case 7:
        v40 = *(type metadata accessor for TextUnderstandingEvent(0) + 52);
LABEL_29:
        sub_1934976E4(v3 + v40, 2020175477, 0xE400000000000000, v7, v5);
        goto LABEL_32;
      case 8:
      case 9:
        type metadata accessor for TextUnderstandingEvent(0);
        sub_193498018();
        goto LABEL_32;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        type metadata accessor for TextUnderstandingEvent(0);
        OUTLINED_FUNCTION_20_38();
        sub_19393C200();
        goto LABEL_32;
      case 15:
        LOBYTE(v49) = 2;
        OUTLINED_FUNCTION_20_38();
        sub_19393C0F0();
        v2 = 0;
        v21 = v8;
        v22 = v49;
        v23 = type metadata accessor for TextUnderstandingEvent(0);
        v24 = v22 & 1;
        v8 = v21;
        v3 = v45;
        *(v45 + *(v23 + 84)) = v24;
        continue;
      case 16:
        v34 = type metadata accessor for TextUnderstandingEvent(0);
        sub_19349780C(v3 + *(v34 + 88));
        goto LABEL_32;
      case 17:
        type metadata accessor for TextUnderstandingEvent(0);
        OUTLINED_FUNCTION_20_38();
        sub_19393C0F0();
LABEL_32:
        v2 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193667CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_193667D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_193667DA8()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v3 = type metadata accessor for TextUnderstandingEvent(0);
  v4 = v3[7];
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v20, (v0 + v4), sizeof(v20));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v5 = sub_19393C550();
  memcpy(v22, __src, 0x60uLL);
  sub_19365A098(v22);
  memcpy(v23, v20, 0x60uLL);
  sub_19365A098(v23);
  if (v5)
  {
    if (v1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    memcpy(v20, (v2 + v4), sizeof(v20));
    memcpy(__src, (v2 + v4), sizeof(__src));
    sub_19365A03C(v20, v18);
    OUTLINED_FUNCTION_34_28(__src, 1, v6, &type metadata for TextUnderstandingDocumentIdentifiers);
    if (v1)
    {
      memcpy(v18, __src, sizeof(v18));
      sub_19365A098(v18);
      goto LABEL_22;
    }

    memcpy(v18, __src, sizeof(v18));
    sub_19365A098(v18);
  }

  v7 = (v2 + v3[8]);
  if (*v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7[1] == 0xE000000000000000;
  }

  if (!v8 && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  v9 = (v2 + v3[9]);
  if ((*v9 || v9[1] != 0xE000000000000000) && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  v10 = (v2 + v3[10]);
  if ((*v10 || v10[1] != 0xE000000000000000) && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_13_35();
  sub_1936681EC();
  OUTLINED_FUNCTION_13_35();
  sub_1936682C8();
  OUTLINED_FUNCTION_13_35();
  sub_193668400();
  memcpy(v23, (v2 + v3[14]), sizeof(v23));
  if (sub_19366596C(v23) != 1)
  {
    memcpy(v22, v23, sizeof(v22));
    OUTLINED_FUNCTION_34_28(v22, 8, v11, &type metadata for TextUnderstandingEvent.Location);
  }

  memcpy(v23, (v2 + v3[15]), sizeof(v23));
  if (sub_19366596C(v23) != 1)
  {
    memcpy(v22, v23, sizeof(v22));
    OUTLINED_FUNCTION_34_28(v22, 9, v12, &type metadata for TextUnderstandingEvent.Location);
  }

  OUTLINED_FUNCTION_5_20();
  if (v13)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_5_20();
  if (v14)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_5_20();
  if (v15)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_5_20();
  if (v16)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  OUTLINED_FUNCTION_5_20();
  if (v17)
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
  }

  if (*(v2 + v3[21]) == 1)
  {
    OUTLINED_FUNCTION_15_11();
    sub_19393C2E0();
  }

  OUTLINED_FUNCTION_13_35();
  sub_193668538();
  if (*(v2 + v3[23]) != 2)
  {
    OUTLINED_FUNCTION_15_11();
    sub_19393C2E0();
  }

LABEL_22:
  OUTLINED_FUNCTION_27();
}

void sub_1936681EC()
{
  OUTLINED_FUNCTION_26();
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_37();
  type metadata accessor for TextUnderstandingEvent(v2);
  TextUnderstandingEvent.Metadata.init()();
  sub_193669D44();
  v3 = sub_19393C550();
  sub_193669D9C(v0);
  if ((v3 & 1) == 0)
  {
    sub_193447600();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1936682C8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_9();
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v9 = OUTLINED_FUNCTION_14_5();
  v10 = type metadata accessor for TextUnderstandingEvent(v9);
  OUTLINED_FUNCTION_42_7(*(v10 + 48));
  OUTLINED_FUNCTION_23_5(v1);
  if (v11)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_243();
    v13(v12);
    OUTLINED_FUNCTION_22_1(v0, 6);
    v14 = OUTLINED_FUNCTION_234();
    v15(v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193668400()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_9();
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v9 = OUTLINED_FUNCTION_14_5();
  v10 = type metadata accessor for TextUnderstandingEvent(v9);
  OUTLINED_FUNCTION_42_7(*(v10 + 52));
  OUTLINED_FUNCTION_23_5(v1);
  if (v11)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_243();
    v13(v12);
    OUTLINED_FUNCTION_22_1(v0, 7);
    v14 = OUTLINED_FUNCTION_234();
    v15(v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193668538()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BD10();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_37();
  v10 = type metadata accessor for TextUnderstandingEvent(v9);
  OUTLINED_FUNCTION_20_8(*(v10 + 88));
  OUTLINED_FUNCTION_23_5(v0);
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3ACA0, &qword_193972420);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_78_0();
    v13(v12);
    OUTLINED_FUNCTION_35_26(v1, 16);
    v14 = OUTLINED_FUNCTION_86_0();
    v15(v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1936686C8()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEABA50);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v7, xmmword_193952700);
  *v0 = "category";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v6);
  *v11 = 2;
  *v10 = "name";
  v10[1] = 4;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v6);
  *v14 = 3;
  *v13 = "address";
  v13[1] = 7;
  v15 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_45_2(3 * v6);
  *v17 = 4;
  *v16 = "phoneNumber";
  v16[1] = 11;
  v18 = OUTLINED_FUNCTION_1_3(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v6);
  *v20 = 5;
  *v19 = "coordinates";
  v19[1] = 11;
  v21 = OUTLINED_FUNCTION_1_3(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_45_2(5 * v6);
  *v23 = 6;
  v24 = OUTLINED_FUNCTION_40_21(v22);
  v25 = OUTLINED_FUNCTION_1_3(v24);
  (v9)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v1 + 6 * v6);
  *v27 = 7;
  *v26 = "timeZoneIdentifier";
  *(v26 + 8) = 18;
  *(v26 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193668920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v6 = sub_19393C0E0();
    if (v5 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 1:
        sub_19393C200();

        *v3 = 0;
        v3[1] = 0xE000000000000000;
        break;
      case 2:
      case 4:
      case 7:
        sub_19393C200();
        goto LABEL_8;
      case 3:
      case 5:
      case 6:
        sub_193498018();
LABEL_8:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193668AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[3];
  v16 = v3[23];
  v13 = *(v3 + 208);
  v11 = *(v3 + 27);
  v12 = v3[30];
  if ((v7 || v6 != 0xE000000000000000) && (sub_19393CA30() & 1) == 0)
  {
    OUTLINED_FUNCTION_52_16();
    sub_19393C3C0();
    v5 = v4;
  }

  if (!v5)
  {
    if (!v8 || (OUTLINED_FUNCTION_52_16(), sub_19393C3C0(), !v4))
    {
      memcpy(__dst, v3 + 4, 0x90uLL);
      if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1 || (memcpy(v14, __dst, sizeof(v14)), OUTLINED_FUNCTION_50_17(v14, 3, v10, &type metadata for TextUnderstandingLocation.Address), !v4))
      {
        if (!v16 || (OUTLINED_FUNCTION_52_16(), sub_19393C3C0(), !v4))
        {
          if ((v13 & 1) != 0 || (__dst[0] = *(v3 + 12), OUTLINED_FUNCTION_50_17(__dst, 5, v9, &type metadata for TextUnderstandingLocation.Coordinates), !v4))
          {
            if (*(&v11 + 1) == 1 || (__dst[0] = v11, OUTLINED_FUNCTION_50_17(__dst, 6, v9, &type metadata for TextUnderstandingLocation.Metadata), !v4))
            {
              if (v12)
              {
                OUTLINED_FUNCTION_52_16();
                sub_19393C3C0();
              }
            }
          }
        }
      }
    }
  }
}

void sub_193668D24()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABA68);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_193952730;
  v5 = v85 + v0 + dword_1EAEABAA0;
  *(v85 + v0) = 1;
  *v5 = "confirmationNumber";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v85 + v0 + v4);
  *v9 = 2;
  *v8 = "bookingProvider";
  v8[1] = 15;
  v10 = OUTLINED_FUNCTION_41(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v85 + v0 + 2 * v4);
  *v12 = 3;
  *v11 = "participants";
  v11[1] = 12;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v85 + v0 + 3 * v4);
  *v15 = 4;
  *v14 = "flightCarrierCode";
  v14[1] = 17;
  v16 = OUTLINED_FUNCTION_41(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v85 + v0 + 4 * v4);
  *v18 = 5;
  *v17 = "flightNumber";
  v17[1] = 12;
  v19 = OUTLINED_FUNCTION_41(v17);
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v85 + v0 + 5 * v4);
  *v21 = 6;
  *v20 = "seatNumbers";
  v20[1] = 11;
  v22 = OUTLINED_FUNCTION_41(v20);
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_52_0();
  *v24 = 7;
  *v23 = "flightBoardingTime";
  v23[1] = 18;
  v25 = OUTLINED_FUNCTION_41(v23);
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v85 + v0 + 7 * v4);
  *v27 = 8;
  *v26 = "duration";
  v26[1] = 8;
  v28 = OUTLINED_FUNCTION_41(v26);
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v85 + v0 + 8 * v4);
  *v30 = 9;
  *v29 = "flightCheckInURL";
  v29[1] = 16;
  v31 = OUTLINED_FUNCTION_41(v29);
  (v7)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v85 + v0 + 9 * v4);
  *v33 = 10;
  *v32 = "cost";
  v32[1] = 4;
  v34 = OUTLINED_FUNCTION_41(v32);
  (v7)(v34);
  v35 = OUTLINED_FUNCTION_52_0();
  *v36 = 11;
  v37 = OUTLINED_FUNCTION_40_21(v35);
  v38 = OUTLINED_FUNCTION_41(v37);
  (v7)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v85 + v0 + 11 * v4);
  *v40 = 12;
  *v39 = "hotelRoomCount";
  v39[1] = 14;
  v41 = OUTLINED_FUNCTION_41(v39);
  (v7)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v85 + v0 + 12 * v4);
  *v43 = 13;
  *v42 = "hotelRoomNumbers";
  v42[1] = 16;
  v44 = OUTLINED_FUNCTION_41(v42);
  (v7)(v44);
  v45 = OUTLINED_FUNCTION_3_1(v85 + v0 + 13 * v4);
  *v46 = 14;
  *v45 = "restaurantPartySize";
  v45[1] = 19;
  v47 = OUTLINED_FUNCTION_41(v45);
  (v7)(v47);
  v48 = OUTLINED_FUNCTION_52_0();
  *v49 = 15;
  *v48 = "carRentalName";
  v48[1] = 13;
  v50 = OUTLINED_FUNCTION_41(v48);
  (v7)(v50);
  v51 = OUTLINED_FUNCTION_3_1(v85 + v0 + 15 * v4);
  *v52 = 16;
  *v51 = "carRentalVehicleName";
  v51[1] = 20;
  v53 = OUTLINED_FUNCTION_41(v51);
  (v7)(v53);
  v54 = OUTLINED_FUNCTION_3_1(v85 + v0 + 16 * v4);
  *v55 = 17;
  *v54 = "partyName";
  v54[1] = 9;
  v56 = OUTLINED_FUNCTION_41(v54);
  (v7)(v56);
  v57 = OUTLINED_FUNCTION_3_1(v85 + v0 + 17 * v4);
  *v58 = 18;
  v59 = OUTLINED_FUNCTION_40_21(v57);
  v60 = OUTLINED_FUNCTION_41(v59);
  (v7)(v60);
  v61 = OUTLINED_FUNCTION_3_1(v85 + v0 + 18 * v4);
  *v62 = 19;
  *v61 = "appointmentName";
  v61[1] = 15;
  v63 = OUTLINED_FUNCTION_41(v61);
  (v7)(v63);
  v64 = OUTLINED_FUNCTION_3_1(v85 + v0 + 19 * v4);
  *v65 = 20;
  *v64 = "appointmentAgentName";
  v64[1] = 20;
  v66 = OUTLINED_FUNCTION_41(v64);
  (v7)(v66);
  v67 = OUTLINED_FUNCTION_52_0();
  *v68 = 21;
  v69 = OUTLINED_FUNCTION_40_21(v67);
  v70 = OUTLINED_FUNCTION_41(v69);
  (v7)(v70);
  v71 = OUTLINED_FUNCTION_52_0();
  *v72 = 22;
  *v71 = "showName";
  v71[1] = 8;
  v73 = OUTLINED_FUNCTION_41(v71);
  (v7)(v73);
  v74 = OUTLINED_FUNCTION_52_0();
  *v75 = 23;
  *v74 = "showTicketType";
  v74[1] = 14;
  v76 = OUTLINED_FUNCTION_41(v74);
  (v7)(v76);
  v77 = OUTLINED_FUNCTION_52_0();
  *v78 = 24;
  *v77 = "transportType";
  v77[1] = 13;
  v79 = OUTLINED_FUNCTION_41(v77);
  (v7)(v79);
  v80 = OUTLINED_FUNCTION_52_0();
  *v81 = 25;
  *v80 = "transportName";
  v80[1] = 13;
  v82 = OUTLINED_FUNCTION_41(v80);
  (v7)(v82);
  v83 = OUTLINED_FUNCTION_52_0();
  *v84 = 26;
  *v83 = "attachmentData";
  *(v83 + 8) = 14;
  *(v83 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193669308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
        goto LABEL_14;
      case 3:
      case 6:
        goto LABEL_8;
      case 7:
        v11 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
        sub_1934976E4(v3 + *(v11 + 40), 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_15;
      case 8:
      case 10:
      case 11:
      case 15:
      case 16:
      case 17:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
        type metadata accessor for TextUnderstandingEvent.Metadata(0);
LABEL_14:
        OUTLINED_FUNCTION_28_22();
        sub_19393C200();
        goto LABEL_15;
      case 9:
        v10 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 48);
        goto LABEL_12;
      case 12:
      case 14:
        type metadata accessor for TextUnderstandingEvent.Metadata(0);
        OUTLINED_FUNCTION_28_22();
        sub_19393C170();
        goto LABEL_15;
      case 13:
        type metadata accessor for TextUnderstandingEvent.Metadata(0);
LABEL_8:
        OUTLINED_FUNCTION_28_22();
        sub_19393C1B0();
        goto LABEL_15;
      case 18:
        v10 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 84);
LABEL_12:
        sub_19349780C(v3 + v10);
        goto LABEL_15;
      case 26:
        type metadata accessor for TextUnderstandingEvent.Metadata(0);
        OUTLINED_FUNCTION_28_22();
        sub_19393C140();
LABEL_15:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_19366956C()
{
  v2 = v1;
  if (v0[1])
  {
    OUTLINED_FUNCTION_24_2();
    sub_19393C3C0();
    v2 = v1;
  }

  if (!v2)
  {
    if (!v0[3] || (OUTLINED_FUNCTION_24_2(), sub_19393C3C0(), !v1))
    {
      if (!*(v0[4] + 16) || (OUTLINED_FUNCTION_15_11(), sub_19393C380(), !v1))
      {
        if (!v0[6] || (OUTLINED_FUNCTION_24_2(), sub_19393C3C0(), !v1))
        {
          if (!v0[8] || (OUTLINED_FUNCTION_24_2(), sub_19393C3C0(), !v1))
          {
            if (!*(v0[9] + 16) || (OUTLINED_FUNCTION_15_11(), sub_19393C380(), !v1))
            {
              OUTLINED_FUNCTION_12_32();
              sub_193669950();
              if (!v1)
              {
                v3 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
                OUTLINED_FUNCTION_16_4();
                if (v4)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_12_32();
                sub_193669A88();
                OUTLINED_FUNCTION_16_4();
                if (v5)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4();
                if (v6)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                if ((*(v0 + v3[15] + 4) & 1) == 0)
                {
                  OUTLINED_FUNCTION_15_11();
                  sub_19393C350();
                }

                if (*(*(v0 + v3[16]) + 16))
                {
                  OUTLINED_FUNCTION_15_11();
                  sub_19393C380();
                }

                if ((*(v0 + v3[17] + 4) & 1) == 0)
                {
                  OUTLINED_FUNCTION_15_11();
                  sub_19393C350();
                }

                OUTLINED_FUNCTION_16_4();
                if (v7)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4();
                if (v8)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4();
                if (v9)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_12_32();
                sub_193669BB4();
                OUTLINED_FUNCTION_16_4();
                if (v10)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4();
                if (v11)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4();
                if (v12)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4();
                if (v13)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4();
                if (v14)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4();
                if (v15)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                OUTLINED_FUNCTION_16_4();
                if (v16)
                {
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C3C0();
                }

                if (*(v0 + v3[29] + 8) >> 60 != 15)
                {
                  v17 = OUTLINED_FUNCTION_234();
                  sub_193450688(v17, v18);
                  OUTLINED_FUNCTION_234();
                  OUTLINED_FUNCTION_24_2();
                  sub_19393C330();
                  v19 = OUTLINED_FUNCTION_234();
                  sub_19345012C(v19, v20);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_193669950()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_9();
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v9 = OUTLINED_FUNCTION_14_5();
  v10 = type metadata accessor for TextUnderstandingEvent.Metadata(v9);
  OUTLINED_FUNCTION_42_7(*(v10 + 40));
  OUTLINED_FUNCTION_23_5(v1);
  if (v11)
  {
    sub_19344E6DC(v1, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_243();
    v13(v12);
    OUTLINED_FUNCTION_22_1(v0, 7);
    v14 = OUTLINED_FUNCTION_234();
    v15(v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193669A88()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BD10();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_37();
  v10 = type metadata accessor for TextUnderstandingEvent.Metadata(v9);
  OUTLINED_FUNCTION_20_8(*(v10 + 48));
  OUTLINED_FUNCTION_23_5(v0);
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3ACA0, &qword_193972420);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_78_0();
    v13(v12);
    OUTLINED_FUNCTION_35_26(v1, 9);
    v14 = OUTLINED_FUNCTION_86_0();
    v15(v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193669BB4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  sub_19393BD10();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_37();
  v10 = type metadata accessor for TextUnderstandingEvent.Metadata(v9);
  OUTLINED_FUNCTION_20_8(*(v10 + 84));
  OUTLINED_FUNCTION_23_5(v0);
  if (v11)
  {
    sub_19344E6DC(v0, &qword_1EAE3ACA0, &qword_193972420);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_78_0();
    v13(v12);
    OUTLINED_FUNCTION_35_26(v1, 18);
    v14 = OUTLINED_FUNCTION_86_0();
    v15(v14);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

unint64_t sub_193669D44()
{
  result = qword_1EAE3FB50;
  if (!qword_1EAE3FB50)
  {
    type metadata accessor for TextUnderstandingEvent.Metadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FB50);
  }

  return result;
}

uint64_t sub_193669D9C(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193669E10()
{
  OUTLINED_FUNCTION_8_4();
  sub_19393BE00();
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t TextUnderstandingEvent.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 20));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t TextUnderstandingEvent.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 24));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t TextUnderstandingEvent.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.documentIdentifiers.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x60uLL);
  return sub_19365A03C(__dst, &v5);
}

void *TextUnderstandingEvent.documentIdentifiers.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 28);
  memcpy(v5, (v1 + v3), sizeof(v5));
  sub_19365A098(v5);
  return memcpy((v1 + v3), v0, 0x60uLL);
}

uint64_t TextUnderstandingEvent.documentIdentifiers.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.status.getter()
{
  type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.status.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.status.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.category.getter()
{
  type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.category.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.category.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.algorithm.getter()
{
  type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.algorithm.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.algorithm.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 44));

  return sub_19366A328(v2, v3);
}

uint64_t sub_19366A328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TextUnderstandingEvent.metadata.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  v1 = OUTLINED_FUNCTION_100_0();

  return sub_193667CE0(v1, v2);
}

uint64_t TextUnderstandingEvent.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.startDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.endDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 52));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.endDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t TextUnderstandingEvent.endDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.startLocation.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 56);
  OUTLINED_FUNCTION_51_16(v6);
  memcpy(v0, (v1 + v3), 0xF8uLL);
  return sub_193448804(v6, &v5, &qword_1EAE3FB48, &qword_193977E48);
}

void *TextUnderstandingEvent.startLocation.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 56);
  OUTLINED_FUNCTION_51_16(v5);
  sub_19344E6DC(v5, &qword_1EAE3FB48, &qword_193977E48);
  return memcpy((v1 + v3), v0, 0xF8uLL);
}

uint64_t TextUnderstandingEvent.startLocation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.endLocation.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 60);
  OUTLINED_FUNCTION_51_16(v6);
  memcpy(v0, (v1 + v3), 0xF8uLL);
  return sub_193448804(v6, &v5, &qword_1EAE3FB48, &qword_193977E48);
}

void *TextUnderstandingEvent.endLocation.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent(v2) + 60);
  OUTLINED_FUNCTION_51_16(v5);
  sub_19344E6DC(v5, &qword_1EAE3FB48, &qword_193977E48);
  return memcpy((v1 + v3), v0, 0xF8uLL);
}

uint64_t TextUnderstandingEvent.endLocation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.groupId.getter()
{
  type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.groupId.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.groupId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.fallbackGroupId.getter()
{
  type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.fallbackGroupId.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.fallbackGroupId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.geocodingMode.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.notes.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.title.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.isAllDay.setter(char a1)
{
  result = type metadata accessor for TextUnderstandingEvent(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t TextUnderstandingEvent.isAllDay.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19366AB14()
{
  OUTLINED_FUNCTION_8_4();
  sub_19393BD10();
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t TextUnderstandingEvent.url.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 88));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.url.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t TextUnderstandingEvent.url.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.isValidCalendarEvent.setter(char a1)
{
  result = type metadata accessor for TextUnderstandingEvent(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t TextUnderstandingEvent.isValidCalendarEvent.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Location.category.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Location.name.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double sub_19366ADA0(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1939526A0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  return result;
}

uint64_t TextUnderstandingEvent.Location.address.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_37_22(v5);
  memcpy(a1, (v1 + 32), 0x90uLL);
  return sub_193448804(v5, v4, &qword_1EAE3FBB0, &qword_193977F08);
}

void *TextUnderstandingEvent.Location.address.setter(const void *a1)
{
  OUTLINED_FUNCTION_37_22(v4);
  sub_19344E6DC(v4, &qword_1EAE3FBB0, &qword_193977F08);
  return memcpy((v1 + 32), a1, 0x90uLL);
}

uint64_t TextUnderstandingEvent.Location.phoneNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

__n128 TextUnderstandingEvent.Location.coordinates.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[13].n128_u8[0];
  result = v1[12];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TextUnderstandingEvent.Location.coordinates.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[12] = *a1;
  v1[13].n128_u8[0] = v2;
  return result;
}

uint64_t TextUnderstandingEvent.Location.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 224);
  *a1 = v2;
  a1[1] = v3;
  return sub_19350CB08(v2, v3);
}

uint64_t TextUnderstandingEvent.Location.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_193456418(*(v1 + 216), *(v1 + 224));
  *(v1 + 216) = v2;
  *(v1 + 224) = v3;
  return result;
}

uint64_t TextUnderstandingEvent.Location.timeZoneIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

double TextUnderstandingEvent.Location.init()@<D0>(uint64_t a1@<X8>)
{
  sub_19366ADA0(v3);
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  memcpy(__dst, v3, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3FBB0, &qword_193977F08);
  memcpy((a1 + 32), v3, 0x90uLL);
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1;
  sub_193456418(0, 1);
  result = 0.0;
  *(a1 + 216) = xmmword_1939526A0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return result;
}

uint64_t static TextUnderstandingEvent.Location.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  OUTLINED_FUNCTION_38_24(v113);
  v93 = a1[22];
  v99 = a1[23];
  v82 = *(a1 + 12);
  HIDWORD(v87) = *(a1 + 208);
  v77 = *(a1 + 27);
  v57 = a1[29];
  v63 = a1[30];
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  OUTLINED_FUNCTION_37_22(v114);
  v90 = a2[22];
  v96 = a2[23];
  v66 = *(a2 + 12);
  LODWORD(v87) = *(a2 + 208);
  v102 = a2[27];
  v74 = a2[28];
  v12 = v5 == v8 && v4 == v9;
  v54 = a2[29];
  v60 = a2[30];
  if (!v12 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    v13 = v7 == v11 && v6 == v10;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24(v111);
  OUTLINED_FUNCTION_37_22(&v111[9]);
  OUTLINED_FUNCTION_38_24(v112);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v112) == 1)
  {
    OUTLINED_FUNCTION_37_22(v109);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v109) == 1)
    {
      OUTLINED_FUNCTION_38_24(v110);
      OUTLINED_FUNCTION_79_1(v113, __src);
      OUTLINED_FUNCTION_79_1(v114, __src);
      sub_19344E6DC(v110, &qword_1EAE3FBB0, &qword_193977F08);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_79_1(v113, v110);
    OUTLINED_FUNCTION_79_1(v114, v110);
LABEL_21:
    memcpy(v109, v111, sizeof(v109));
    sub_19344E6DC(v109, &qword_1EAE3FBB8, &qword_193977F10);
    return 0;
  }

  OUTLINED_FUNCTION_38_24(v110);
  OUTLINED_FUNCTION_38_24(__src);
  OUTLINED_FUNCTION_37_22(v109);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v109) == 1)
  {
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_79_1(v113, v106);
    OUTLINED_FUNCTION_79_1(v114, v106);
    OUTLINED_FUNCTION_79_1(v110, v106);
    sub_19366B68C(__dst);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_37_22(__dst);
  OUTLINED_FUNCTION_39_23(v113, v15, v16, v17, v18, v19, v20, v21, v54, v57, v60, v63, v66, *(&v66 + 1), v71, v74, v77, *(&v77 + 1), v82, *(&v82 + 1), v87, v90, v93, v96, v99, v102, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], v105[10], v105[11], v105[12], v105[13], v105[14], v105[15], v105[16], v105[17]);
  OUTLINED_FUNCTION_39_23(v114, v22, v23, v24, v25, v26, v27, v28, v55, v58, v61, v64, v67, v69, v72, v75, v78, v80, v83, v85, v88, v91, v94, v97, v100, v103, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], v105[10], v105[11], v105[12], v105[13], v105[14], v105[15], v105[16], v105[17]);
  OUTLINED_FUNCTION_39_23(v110, v29, v30, v31, v32, v33, v34, v35, v56, v59, v62, v65, v68, v70, v73, v76, v79, v81, v84, v86, v89, v92, v95, v98, v101, v104, v105[0], v105[1], v105[2], v105[3], v105[4], v105[5], v105[6], v105[7], v105[8], v105[9], v105[10], v105[11], v105[12], v105[13], v105[14], v105[15], v105[16], v105[17]);
  sub_19366B6E0();
  v36 = sub_19393C550();
  memcpy(v105, __dst, sizeof(v105));
  sub_19366B68C(v105);
  memcpy(v106, __src, sizeof(v106));
  sub_19366B68C(v106);
  OUTLINED_FUNCTION_38_24(__dst);
  sub_19344E6DC(__dst, &qword_1EAE3FBB0, &qword_193977F08);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if (v99)
  {
    v37 = v102;
    if (!v96)
    {
      return 0;
    }

    v38 = v93 == v90 && v99 == v96;
    if (!v38 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v37 = v102;
    if (v96)
    {
      return 0;
    }
  }

  if ((v87 & 0x100000000) != 0)
  {
    if ((v87 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v111[0] = v82;
    LOBYTE(v111[1]) = 0;
    if (v87)
    {
      return 0;
    }

    v109[0] = v66;
    sub_19366B638();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(&v77 + 1) != 1)
  {
    v39 = v74;
    v111[0] = v77;
    if (v74 != 1)
    {
      *&v109[0] = v37;
      *(&v109[0] + 1) = v74;
      v46 = OUTLINED_FUNCTION_115_0();
      sub_19350CB08(v46, v47);
      sub_19350CB08(v37, v74);
      v48 = OUTLINED_FUNCTION_115_0();
      sub_19350CB08(v48, v49);
      sub_19366B5E4();
      v50 = sub_19393C550();

      v51 = OUTLINED_FUNCTION_115_0();
      sub_193456418(v51, v52);
      if ((v50 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_47;
    }

    v40 = OUTLINED_FUNCTION_115_0();
    sub_19350CB08(v40, v41);
    sub_19350CB08(v37, 1);
    v42 = OUTLINED_FUNCTION_115_0();
    sub_19350CB08(v42, v43);

LABEL_45:
    v44 = OUTLINED_FUNCTION_115_0();
    sub_193456418(v44, v45);
    sub_193456418(v37, v39);
    return 0;
  }

  sub_19350CB08(v77, 1);
  v39 = v74;
  if (v74 != 1)
  {
    sub_19350CB08(v37, v74);
    goto LABEL_45;
  }

  sub_19350CB08(v37, 1);
  sub_193456418(v77, 1);
LABEL_47:
  if (v63)
  {
    if (v60)
    {
      v53 = v57 == v54 && v63 == v60;
      if (v53 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v60)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_19366B5E4()
{
  result = qword_1EAE3FBC0;
  if (!qword_1EAE3FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBC0);
  }

  return result;
}

unint64_t sub_19366B638()
{
  result = qword_1EAE3FBC8;
  if (!qword_1EAE3FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBC8);
  }

  return result;
}

unint64_t sub_19366B6E0()
{
  result = qword_1EAE3FBD0;
  if (!qword_1EAE3FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBD0);
  }

  return result;
}

uint64_t TextUnderstandingEvent.Location.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 224);
  v8 = *(v1 + 240);
  v10 = *(v1 + 216);
  sub_19393C640();
  if (v2)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  memcpy(__dst, (v1 + 32), 0x90uLL);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_9:
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  memcpy(__src, (v1 + 32), sizeof(__src));
  OUTLINED_FUNCTION_103_0();
  memcpy(v12, (v1 + 32), sizeof(v12));
  sub_19366B910(v12, v13);
  sub_19366B96C();
  sub_19393C540();
  memcpy(v13, __src, sizeof(v13));
  sub_19366B68C(v13);
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_6:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_30_15();
  sub_19393C640();
  if (v6)
  {
LABEL_7:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_11;
  }

LABEL_10:
  v13[0] = v4;
  v13[1] = v5;
  OUTLINED_FUNCTION_103_0();
  sub_19366B9C0();
  sub_19393C540();
LABEL_11:
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v8)
    {
LABEL_13:
      OUTLINED_FUNCTION_103_0();
      return sub_19393C640();
    }
  }

  else
  {
    v13[0] = v10;
    v13[1] = v7;
    OUTLINED_FUNCTION_103_0();
    sub_19366BA14();

    sub_19393C540();

    if (v8)
    {
      goto LABEL_13;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

unint64_t sub_19366B96C()
{
  result = qword_1EAE3FBD8;
  if (!qword_1EAE3FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBD8);
  }

  return result;
}

unint64_t sub_19366B9C0()
{
  result = qword_1EAE3FBE0;
  if (!qword_1EAE3FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBE0);
  }

  return result;
}

unint64_t sub_19366BA14()
{
  result = qword_1EAE3FBE8;
  if (!qword_1EAE3FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FBE8);
  }

  return result;
}

uint64_t TextUnderstandingEvent.Location.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingEvent.Location.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19366BAB0(uint64_t a1)
{
  sub_19393CAB0();
  TextUnderstandingEvent.Location.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t TextUnderstandingEvent.Metadata.confirmationNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.bookingProvider.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.participants.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.flightCarrierCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.flightNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.seatNumbers.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.flightBoardingTime.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 40));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.Metadata.flightBoardingTime.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t TextUnderstandingEvent.Metadata.flightBoardingTime.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.duration.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.duration.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.duration.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.flightCheckInURL.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.cost.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.cost.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.cost.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.currency.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.currency.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.currency.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

void TextUnderstandingEvent.Metadata.hotelRoomCount.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  OUTLINED_FUNCTION_263(*(v1 + 60));
}

uint64_t TextUnderstandingEvent.Metadata.hotelRoomCount.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.hotelRoomNumbers.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
}

uint64_t TextUnderstandingEvent.Metadata.hotelRoomNumbers.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for TextUnderstandingEvent.Metadata(v2) + 64);

  *(v1 + v3) = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.hotelRoomNumbers.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

void TextUnderstandingEvent.Metadata.restaurantPartySize.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  OUTLINED_FUNCTION_263(*(v1 + 68));
}

uint64_t TextUnderstandingEvent.Metadata.restaurantPartySize.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19366C374(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19366C3C4()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.carRentalName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19366C458(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19366C4A8()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.carRentalVehicleName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19366C53C(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t sub_19366C58C()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.partyName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.partyURL.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  v2 = OUTLINED_FUNCTION_101(*(v1 + 84));
  return sub_193448804(v2, v3, v4, v5);
}

uint64_t TextUnderstandingEvent.Metadata.partyURL.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  v1 = OUTLINED_FUNCTION_100_0();
  return sub_19344542C(v1, v2, v3, v4);
}

uint64_t TextUnderstandingEvent.Metadata.partyURL.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.appointmentName.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.appointmentName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.appointmentName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.appointmentAgentName.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.appointmentAgentName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.appointmentAgentName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.showType.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.showType.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.showType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.showName.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.showName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.showName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.showTicketType.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.showTicketType.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.showTicketType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.transportType.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.transportType.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.transportType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.transportName.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.transportName.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  type metadata accessor for TextUnderstandingEvent.Metadata(v3);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.transportName.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t TextUnderstandingEvent.Metadata.attachmentData.getter()
{
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  v0 = OUTLINED_FUNCTION_13_0();
  sub_193450268(v0, v1);
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingEvent.Metadata.attachmentData.setter()
{
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = v1 + *(type metadata accessor for TextUnderstandingEvent.Metadata(v3) + 116);
  result = sub_19345012C(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v0;
  return result;
}

uint64_t TextUnderstandingEvent.Metadata.attachmentData.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for TextUnderstandingEvent.Metadata(v0);
  return OUTLINED_FUNCTION_1_4();
}

__n128 TextUnderstandingEvent.Metadata.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingEvent.Metadata(v1);
  v3 = v2[10];
  v37 = sub_19393BE00();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2[12];
  v9 = (v0 + v2[11]);
  v10 = sub_19393BD10();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = (v0 + v2[13]);
  v32 = (v0 + v2[14]);
  v36 = v0 + v2[15];
  v35 = v0 + v2[17];
  v39 = (v0 + v2[18]);
  v31 = (v0 + v2[19]);
  v34 = (v0 + v2[20]);
  v15 = v2[21];
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
  v43 = (v0 + v2[22]);
  v44 = (v0 + v2[23]);
  v41 = (v0 + v2[24]);
  v42 = (v0 + v2[25]);
  v38 = (v0 + v2[26]);
  v40 = (v0 + v2[27]);
  v33 = (v0 + v2[28]);
  v19 = v0 + v2[29];
  *v19 = xmmword_193950B20;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  v20 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = v20;
  sub_19344E6DC(v0 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v37);
  *v9 = 0;
  v9[1] = 0;
  sub_19344E6DC(v0 + v8, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v10);
  *v14 = 0;
  v14[1] = 0;
  *v32 = 0;
  v32[1] = 0;
  *v36 = 0;
  *(v36 + 4) = 1;
  *(v0 + v2[16]) = v20;
  *v35 = 0;
  *(v35 + 4) = 1;
  *v39 = 0;
  v39[1] = 0;
  *v31 = 0;
  v31[1] = 0;
  *v34 = 0;
  v34[1] = 0;
  sub_19344E6DC(v0 + v15, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v10);
  *v43 = 0;
  v43[1] = 0;
  *v44 = 0;
  v44[1] = 0;
  *v41 = 0;
  v41[1] = 0;
  *v42 = 0;
  v42[1] = 0;
  *v38 = 0;
  v38[1] = 0;
  *v40 = 0;
  v40[1] = 0;
  *v33 = 0;
  v33[1] = 0;
  sub_19345012C(*v19, *(v19 + 8));
  result = xmmword_193950B20;
  *v19 = xmmword_193950B20;
  return result;
}

BOOL static TextUnderstandingEvent.Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48_1();
  v187 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v185 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v184 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v7 = OUTLINED_FUNCTION_47(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_8();
  v182 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v180 - v10;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F118, &qword_193972428);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15_8();
  v183 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v180 - v15;
  v17 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v25 = OUTLINED_FUNCTION_47(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v180 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v180 - v30;
  v32 = v1[1];
  v33 = v0[1];
  if (v32)
  {
    if (!v33)
    {
      return 0;
    }

    v34 = *v1 == *v0 && v32 == v33;
    if (!v34 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v35 = v1[3];
  v36 = v0[3];
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    v37 = v1[2] == v0[2] && v35 == v36;
    if (!v37 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  if ((sub_19344FC94(v1[4], v0[4]) & 1) == 0)
  {
    return 0;
  }

  v38 = v1[6];
  v39 = v0[6];
  if (v38)
  {
    if (!v39)
    {
      return 0;
    }

    v40 = v1[5] == v0[5] && v38 == v39;
    if (!v40 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v41 = v1[8];
  v42 = v0[8];
  if (v41)
  {
    if (!v42)
    {
      return 0;
    }

    v43 = v1[7] == v0[7] && v41 == v42;
    if (!v43 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  if ((sub_19344FC94(v1[9], v0[9]) & 1) == 0)
  {
    return 0;
  }

  v44 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  v45 = *(v44 + 40);
  v180 = v44;
  v181 = v45;
  v46 = *(v28 + 48);
  sub_193448804(v1 + v45, v31, &qword_1EAE3A9E8, &qword_19394F800);
  v47 = v0 + v181;
  v181 = v46;
  sub_193448804(v47, &v31[v46], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v31, 1, v17);
  if (v34)
  {
    OUTLINED_FUNCTION_6_3(&v31[v181], 1, v17);
    if (v34)
    {
      sub_19344E6DC(v31, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_51;
    }

LABEL_47:
    v50 = &qword_1EAE3B968;
    v51 = &qword_193972430;
    v52 = v31;
LABEL_48:
    sub_19344E6DC(v52, v50, v51);
    return 0;
  }

  sub_193448804(v31, v27, &qword_1EAE3A9E8, &qword_19394F800);
  v48 = v181;
  OUTLINED_FUNCTION_6_3(&v31[v181], 1, v17);
  if (v49)
  {
    (*(v19 + 8))(v27, v17);
    goto LABEL_47;
  }

  (*(v19 + 32))(v23, &v31[v48], v17);
  OUTLINED_FUNCTION_17_33();
  sub_19366E22C(v54, v55, MEMORY[0x1E6969550]);
  LODWORD(v181) = sub_19393C550();
  v56 = *(v19 + 8);
  v56(v23, v17);
  v56(v27, v17);
  sub_19344E6DC(v31, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v181 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v57 = v180;
  OUTLINED_FUNCTION_3();
  if (v60)
  {
    if (!v58)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v59);
    v63 = v34 && v61 == v62;
    if (!v63 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v58)
  {
    return 0;
  }

  v64 = v57[12];
  v65 = *(v186 + 48);
  OUTLINED_FUNCTION_50_18(v1 + v64, v16);
  OUTLINED_FUNCTION_50_18(v0 + v64, &v16[v65]);
  v66 = v187;
  OUTLINED_FUNCTION_6_3(v16, 1, v187);
  if (v34)
  {
    OUTLINED_FUNCTION_6_3(&v16[v65], 1, v66);
    if (v34)
    {
      sub_19344E6DC(v16, &qword_1EAE3ACA0, &qword_193972420);
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  sub_193448804(v16, v11, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_6_3(&v16[v65], 1, v66);
  if (v67)
  {
    (*(v185 + 8))(v11, v66);
LABEL_68:
    v50 = &qword_1EAE3F118;
    v51 = &qword_193972428;
    v52 = v16;
    goto LABEL_48;
  }

  v69 = v184;
  v68 = v185;
  (*(v185 + 32))(v184, &v16[v65], v66);
  OUTLINED_FUNCTION_2_57();
  sub_19366E22C(v70, v71, MEMORY[0x1E6968FC8]);
  v72 = sub_19393C550();
  v73 = *(v68 + 8);
  v73(v69, v66);
  v73(v11, v66);
  sub_19344E6DC(v16, &qword_1EAE3ACA0, &qword_193972420);
  if ((v72 & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  OUTLINED_FUNCTION_3();
  if (v76)
  {
    if (!v74)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v75);
    v79 = v34 && v77 == v78;
    if (!v79 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v74)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v82)
  {
    if (!v80)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v81);
    v85 = v34 && v83 == v84;
    if (!v85 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v80)
  {
    return 0;
  }

  OUTLINED_FUNCTION_49_2();
  if (v87)
  {
    if (!v86)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v88)
    {
      return 0;
    }
  }

  if ((sub_19344FC94(*(v1 + v180[16]), *(v0 + v180[16])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_49_2();
  if (v90)
  {
    if (!v89)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v91)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v94)
  {
    if (!v92)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v93);
    v97 = v34 && v95 == v96;
    if (!v97 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v92)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v100)
  {
    if (!v98)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v99);
    v103 = v34 && v101 == v102;
    if (!v103 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v98)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v106)
  {
    if (!v104)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v105);
    v109 = v34 && v107 == v108;
    if (!v109 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v104)
  {
    return 0;
  }

  v110 = v180[21];
  v111 = *(v186 + 48);
  v112 = v183;
  OUTLINED_FUNCTION_50_18(v1 + v110, v183);
  OUTLINED_FUNCTION_50_18(v0 + v110, v112 + v111);
  OUTLINED_FUNCTION_6_3(v112, 1, v187);
  if (v34)
  {
    OUTLINED_FUNCTION_6_3(v183 + v111, 1, v187);
    if (v34)
    {
      sub_19344E6DC(v183, &qword_1EAE3ACA0, &qword_193972420);
      goto LABEL_134;
    }

    goto LABEL_132;
  }

  v113 = v183;
  sub_193448804(v183, v182, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_6_3(v113 + v111, 1, v187);
  if (v114)
  {
    (*(v185 + 8))(v182, v187);
LABEL_132:
    v50 = &qword_1EAE3F118;
    v51 = &qword_193972428;
    v52 = v183;
    goto LABEL_48;
  }

  v116 = v184;
  v115 = v185;
  v117 = v183;
  v118 = v183 + v111;
  v119 = v187;
  (*(v185 + 32))(v184, v118, v187);
  OUTLINED_FUNCTION_2_57();
  sub_19366E22C(v120, v121, MEMORY[0x1E6968FC8]);
  v122 = v182;
  v123 = sub_19393C550();
  v124 = *(v115 + 8);
  v124(v116, v119);
  v124(v122, v119);
  sub_19344E6DC(v117, &qword_1EAE3ACA0, &qword_193972420);
  if ((v123 & 1) == 0)
  {
    return 0;
  }

LABEL_134:
  OUTLINED_FUNCTION_3();
  if (v127)
  {
    if (!v125)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v126);
    v130 = v34 && v128 == v129;
    if (!v130 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v125)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v133)
  {
    if (!v131)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v132);
    v136 = v34 && v134 == v135;
    if (!v136 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v131)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v139)
  {
    if (!v137)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v138);
    v142 = v34 && v140 == v141;
    if (!v142 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v137)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v145)
  {
    if (!v143)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v144);
    v148 = v34 && v146 == v147;
    if (!v148 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v143)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v151)
  {
    if (!v149)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v150);
    v154 = v34 && v152 == v153;
    if (!v154 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v149)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v157)
  {
    if (!v155)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v156);
    v160 = v34 && v158 == v159;
    if (!v160 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v155)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v163)
  {
    if (!v161)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v162);
    v166 = v34 && v164 == v165;
    if (!v166 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v161)
  {
    return 0;
  }

  v167 = v180[29];
  v168 = v1 + v167;
  v170 = *(v1 + v167);
  v169 = *(v168 + 1);
  v171 = (v0 + v167);
  v173 = *v171;
  v172 = v171[1];
  if (v169 >> 60 != 15)
  {
    if (v172 >> 60 == 15)
    {
      goto LABEL_201;
    }

    v178 = OUTLINED_FUNCTION_16_29();
    v179 = MEMORY[0x193B172A0](v178);
    sub_19345012C(v173, v172);
    sub_19345012C(v170, v169);
    return (v179 & 1) != 0;
  }

  if (v172 >> 60 != 15)
  {
LABEL_201:
    v176 = OUTLINED_FUNCTION_16_29();
    sub_19345012C(v176, v177);
    sub_19345012C(v173, v172);
    return 0;
  }

  v174 = OUTLINED_FUNCTION_16_29();
  sub_19345012C(v174, v175);
  return 1;
}

uint64_t TextUnderstandingEvent.Metadata.hash(into:)()
{
  v3 = v1;
  OUTLINED_FUNCTION_3_4();
  sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v44[2] = v5;
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v44[1] = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v9 = OUTLINED_FUNCTION_47(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_8();
  v44[0] = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  v14 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v22 = OUTLINED_FUNCTION_47(v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v44 - v23;
  if (v1[1])
  {
    v2 = *v1;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v1[3])
  {
    v2 = v1[2];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934D11C8(v0, v1[4]);
  if (v1[6])
  {
    v2 = v1[5];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v1[8])
  {
    v2 = v1[7];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934D11C8(v0, v1[9]);
  v25 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
  sub_193448804(v1 + v25[10], v24, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v24, 1, v14);
  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v16 + 32))(v20, v24, v14);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_17_33();
    sub_19366E22C(v27, v28, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v16 + 8))(v20, v14);
  }

  v29 = v45;
  OUTLINED_FUNCTION_31_30();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_193448804(v1 + v25[12], v13, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_6_3(v13, 1, v29);
  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v30 = OUTLINED_FUNCTION_42_27();
    v31(v30, v13, v29);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_2_57();
    v34 = sub_19366E22C(v32, v33, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_49_17(v34);
    (*(v2 + 8))(v24, v29);
  }

  OUTLINED_FUNCTION_31_30();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_31_30();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v35 = (v1 + v25[15]);
  if (*(v35 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v35;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  sub_1934D11C8(v0, *(v1 + v25[16]));
  v36 = (v1 + v25[17]);
  if (*(v36 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v36;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_31_30();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_31_30();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_31_30();
  if (v24)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v37 = v44[0];
  sub_193448804(v3 + v25[21], v44[0], &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_6_3(v37, 1, v29);
  if (v26)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v38 = OUTLINED_FUNCTION_42_27();
    v39(v38, v37, v29);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_2_57();
    v42 = sub_19366E22C(v40, v41, MEMORY[0x1E6968FC0]);
    OUTLINED_FUNCTION_49_17(v42);
    (*(v2 + 8))(v24, v29);
  }

  OUTLINED_FUNCTION_25_30();
  if (v29)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30();
  if (v29)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30();
  if (v29)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30();
  if (v29)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30();
  if (v29)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30();
  if (v29)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_25_30();
  if (v29)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_30_15();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v3 + v25[29] + 8) >> 60 == 15)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393BD50();
}

uint64_t sub_19366E17C(uint64_t (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19366E1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_19366E22C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19366E330(uint64_t a1)
{
  OUTLINED_FUNCTION_19_41(a1, &qword_1ED5082C0);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    v4 = type metadata accessor for TextUnderstandingEvent.Metadata(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_0_70(v4, qword_1ED502F68, &type metadata for TextUnderstandingEvent.Location);
      OUTLINED_FUNCTION_4_0();
      if (!(!v3 & v2))
      {
        OUTLINED_FUNCTION_0_70(v7, &qword_1ED508290, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          OUTLINED_FUNCTION_18_34(v8, qword_1ED504400);
          OUTLINED_FUNCTION_4_0();
          if (!(!v3 & v2))
          {
            OUTLINED_FUNCTION_0_70(v9, &qword_1ED506698, MEMORY[0x1E69E6370]);
            OUTLINED_FUNCTION_4_0();
            if (!(!v3 & v2))
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_19366E4BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_19366E518(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_19366E558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19366E60C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_70(a1, &qword_1ED508290, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19366E7B4(319, qword_1ED507ED8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      OUTLINED_FUNCTION_19_41(v4, &qword_1ED5082C0);
      if (v7 > 0x3F)
      {
        return v6;
      }

      OUTLINED_FUNCTION_18_34(v6, qword_1ED504400);
      if (v9 > 0x3F)
      {
        return v8;
      }

      OUTLINED_FUNCTION_0_70(v8, &qword_1ED508058, MEMORY[0x1E69E72F0]);
      if (v10 > 0x3F)
      {
        return v6;
      }

      else
      {
        OUTLINED_FUNCTION_0_70(v6, &qword_1ED506D30, MEMORY[0x1E6969080]);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_19366E7B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_39_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);

  return sub_193448804(a1, va, v44, v45);
}

uint64_t OUTLINED_FUNCTION_49_17(uint64_t a1)
{

  return sub_19393C540();
}

void *OUTLINED_FUNCTION_51_16(void *a1)
{

  return memcpy(a1, (v1 + v2), 0xF8uLL);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingLocation.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for TextUnderstandingLocation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBF8, &qword_1939782F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_19366EA58(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3FBF8, &qword_1939782F0, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3FBF8, &qword_1939782F0);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_19366EA58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingLocation.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBF8, &qword_1939782F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FBF8, &qword_1939782F0, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_19366EBFC(v8, a3);
  }

  return result;
}

uint64_t sub_19366EBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingLocation.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v38 = a5;
  v36 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBF8, &qword_1939782F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  if (*sub_193671928() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v42;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v29 = v37;
      sub_19366EBFC(v11, v37);
      v30 = type metadata accessor for TextUnderstandingLocation(0);
      v31 = *(v30 + 20);
      sub_19344E6DC(v29 + v31, &qword_1EAE3A9E8, &qword_19394F800);
      v32 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v33 + 16))(v29 + v31, v36, v32);
      __swift_storeEnumTagSinglePayload(v29 + v31, 0, 1, v32);
      v34 = *(v30 + 24);
      sub_19344E6DC(v29 + v34, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v38, v29 + v34);
    }
  }

  else
  {
    v27 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v27);
    *v28 = a3;
    *(v28 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TextUnderstandingLocation.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingLocation(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBF8, &qword_1939782F0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_19366EA58(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FBF8, &qword_1939782F0, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FBF8, &qword_1939782F0);
  return v11;
}

id static TextUnderstandingLocation.columns.getter()
{
  v77 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(1701667182, 0xE400000000000000);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(inited, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v22[2].n128_u64[0] = sub_19393C850();
  v32 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v33 = OUTLINED_FUNCTION_31_2();
  result = OUTLINED_FUNCTION_3_5(v33, 0xE800000000000000);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  v34 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  v44 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  v44[2].n128_u64[0] = sub_19393C850();
  v54 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v55 = OUTLINED_FUNCTION_30_2();
  result = OUTLINED_FUNCTION_3_5(v55, 0xE90000000000006DLL);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v56 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
  v66 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  v66[2].n128_u64[0] = sub_19393C850();
  v76 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000012, 0x8000000193A2B980, 2, 0, v66, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v77;
  }

LABEL_9:
  __break(1u);
  return result;
}

int *sub_19366F308@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_38();
  v7 = v5 == 0xD000000000000013 && v6 == a1;
  if (v7 || (v8 = v5, (OUTLINED_FUNCTION_59_0(0xD000000000000013, v6) & 1) != 0))
  {
    v9 = *(type metadata accessor for TextUnderstandingLocation(0) + 28);
    memcpy(__dst, (v2 + v9), 0x60uLL);
    memcpy(v37, (v2 + v9), sizeof(v37));
    sub_19365A03C(__dst, __src);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, a2);
    memcpy(__src, v37, 0x60uLL);
    return sub_19365A098(__src);
  }

  v11 = v8 == 1701667182 && a1 == 0xE400000000000000;
  if (v11 || (OUTLINED_FUNCTION_59_0(1701667182, 0xE400000000000000) & 1) != 0)
  {
    v12 = *(type metadata accessor for TextUnderstandingLocation(0) + 32);
LABEL_13:
    v13 = (v2 + v12);
    v15 = *v13;
    v14 = v13[1];
LABEL_14:
    *&__src[0] = v15;
    *(&__src[0] + 1) = v14;
    return sub_1934948FC();
  }

  v16 = OUTLINED_FUNCTION_31_2();
  v17 = v8 == v16 && a1 == 0xE800000000000000;
  if (v17 || (OUTLINED_FUNCTION_59_0(v16, 0xE800000000000000) & 1) != 0)
  {
    v12 = *(type metadata accessor for TextUnderstandingLocation(0) + 36);
    goto LABEL_13;
  }

  v18 = OUTLINED_FUNCTION_30_2();
  v20 = v8 == v18 && a1 == v19;
  if (v20 || (OUTLINED_FUNCTION_59_0(v18, 0xE90000000000006DLL) & 1) != 0)
  {
    v12 = *(type metadata accessor for TextUnderstandingLocation(0) + 40);
    goto LABEL_13;
  }

  v21 = v8 == 0x73736572646461 && a1 == 0xE700000000000000;
  if (v21 || (OUTLINED_FUNCTION_59_0(0x73736572646461, 0xE700000000000000) & 1) != 0)
  {
    v22 = type metadata accessor for TextUnderstandingLocation(0);
    memcpy(__src, (v2 + *(v22 + 44)), sizeof(__src));
    result = get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src);
    if (result == 1)
    {
LABEL_33:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    memcpy(__dst, __src, sizeof(__dst));
    v23 = &type metadata for TextUnderstandingLocation.Address;
    v24 = &off_1F07DBAC8;
    return sub_193494798(v23, v24, a2);
  }

  v25 = v8 == 0x616E6964726F6F63 && a1 == 0xEB00000000736574;
  if (v25 || (OUTLINED_FUNCTION_59_0(0x616E6964726F6F63, 0xEB00000000736574) & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLocation(0);
    v26 = v2 + result[12];
    if (*(v26 + 16))
    {
      goto LABEL_33;
    }

    __src[0] = *v26;
    v23 = &type metadata for TextUnderstandingLocation.Coordinates;
    v24 = &off_1F07DBAD8;
    return sub_193494798(v23, v24, a2);
  }

  v27 = v8 == 0x617461646174656DLL && a1 == 0xE800000000000000;
  if (v27 || (OUTLINED_FUNCTION_59_0(0x617461646174656DLL, 0xE800000000000000) & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLocation(0);
    v28 = (v2 + result[13]);
    v29 = v28[1];
    if (v29 == 1)
    {
      goto LABEL_33;
    }

    *&__src[0] = *v28;
    *(&__src[0] + 1) = v29;
    v23 = &type metadata for TextUnderstandingLocation.Metadata;
    v24 = &off_1F07DBAE8;
    return sub_193494798(v23, v24, a2);
  }

  OUTLINED_FUNCTION_38();
  v31 = v8 == 0xD000000000000012 && v30 == a1;
  if (v31 || (OUTLINED_FUNCTION_59_0(0xD000000000000012, v30) & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLocation(0);
    v32 = (v2 + result[14]);
    v14 = v32[1];
    if (v14)
    {
      v15 = *v32;
      goto LABEL_14;
    }

    goto LABEL_33;
  }

  v33 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v33);
  v35 = v34;
  *v34 = v8;
  v34[1] = a1;
  v34[5] = type metadata accessor for TextUnderstandingLocation(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v35 + 2);
  sub_19366EA58(v2, boxed_opaque_existential_1Tm);
  *(v35 + 48) = 1;
  swift_willThrow();
}

void sub_19366F6CC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  v8 = a1 == 0x64656E69626D6F63 && a2 == 0xEF73736572646441;
  if (v8 || (OUTLINED_FUNCTION_5_5(0x64656E69626D6F63, 0xEF73736572646441) & 1) != 0)
  {
    v9 = __dst[1];
    if (__dst[1])
    {
      v10 = __dst[0];
LABEL_8:
      v25[0] = v10;
      v25[1] = v9;
      sub_1934948FC();
      return;
    }

    goto LABEL_65;
  }

  v11 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
  if (v11 || (OUTLINED_FUNCTION_5_5(0x746565727473, 0xE600000000000000) & 1) != 0)
  {
    v9 = __dst[3];
    if (__dst[3])
    {
      v10 = __dst[2];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v12 = a1 == 2037672291 && a2 == 0xE400000000000000;
  if (v12 || (OUTLINED_FUNCTION_5_5(2037672291, 0xE400000000000000) & 1) != 0)
  {
    v9 = __dst[5];
    if (__dst[5])
    {
      v10 = __dst[4];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v13 = a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469;
  if (v13 || (OUTLINED_FUNCTION_5_5(0x6C61636F4C627573, 0xEB00000000797469) & 1) != 0)
  {
    v9 = __dst[7];
    if (__dst[7])
    {
      v10 = __dst[6];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  OUTLINED_FUNCTION_38();
  v15 = a1 == 0xD000000000000012 && v14 == a2;
  if (v15 || (OUTLINED_FUNCTION_5_5(0xD000000000000012, v14) & 1) != 0)
  {
    v9 = __dst[9];
    if (__dst[9])
    {
      v10 = __dst[8];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  OUTLINED_FUNCTION_38();
  v17 = a1 == 0xD000000000000015 && v16 == a2;
  if (v17 || (OUTLINED_FUNCTION_5_5(0xD000000000000015, v16) & 1) != 0)
  {
    v9 = __dst[11];
    if (__dst[11])
    {
      v10 = __dst[10];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v18 = a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564;
  if (v18 || (OUTLINED_FUNCTION_5_5(0x6F436C6174736F70, 0xEA00000000006564) & 1) != 0)
  {
    v9 = __dst[13];
    if (__dst[13])
    {
      v10 = __dst[12];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v19 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_5_5(0x7972746E756F63, 0xE700000000000000) & 1) != 0)
  {
    v9 = __dst[15];
    if (__dst[15])
    {
      v10 = __dst[14];
      goto LABEL_8;
    }

    goto LABEL_65;
  }

  v20 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v20 || (OUTLINED_FUNCTION_5_5(0x437972746E756F63, 0xEB0000000065646FLL) & 1) != 0)
  {
    v9 = __dst[17];
    if (__dst[17])
    {
      v10 = __dst[16];
      goto LABEL_8;
    }

LABEL_65:
    *a3 = 0u;
    a3[1] = 0u;
    return;
  }

  v21 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v21);
  v23 = v22;
  *v22 = a1;
  v22[1] = a2;
  v22[5] = &type metadata for TextUnderstandingLocation.Address;
  v24 = swift_allocObject();
  v23[2] = v24;
  memcpy((v24 + 16), __dst, 0x90uLL);
  *(v23 + 48) = 1;
  swift_willThrow();

  sub_19366B910(__dst, v25);
}

uint64_t sub_19366FA18(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000)
  {
    return sub_1934948FC();
  }

  v7 = v2[1];
  if (sub_19393CA30())
  {
    return sub_1934948FC();
  }

  v9 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
  if (v9 || (sub_19393CA30() & 1) != 0)
  {
    return sub_1934948FC();
  }

  v10 = sub_19349AB64();
  OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v10);
  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 40) = &type metadata for TextUnderstandingLocation.Coordinates;
  *(v11 + 16) = v4;
  *(v11 + 24) = v7;
  *(v11 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_19366FB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x4374726F70726961;
  v9 = *v3;
  v8 = v3[1];
  v10 = a1 == 0x4374726F70726961 && a2 == 0xEB0000000065646FLL;
  if (v10 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    v11 = sub_19349AB64();
    OUTLINED_FUNCTION_13_9(&type metadata for BiomeError, v11);
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 40) = &type metadata for TextUnderstandingLocation.Metadata;
    *(v12 + 16) = v9;
    *(v12 + 24) = v8;
    *(v12 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

double TextUnderstandingLocation.init()@<D0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingLocation(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[11];
  sub_193671DF4(a1 + v5);
  v6 = a1 + v2[12];
  sub_193671FA8(v6);
  v7 = a1 + v2[13];
  sub_19360ADE8(v7);
  v8 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_193671928();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  TextUnderstandingDocumentIdentifiers.init()(__src);
  memcpy(a1 + v2[7], __src, 0x60uLL);
  v10 = (a1 + v2[8]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (a1 + v2[9]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (a1 + v2[10]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  sub_19366ADA0(v15);
  memcpy(__dst, a1 + v5, 0x90uLL);
  sub_193442B60(__dst, &qword_1EAE3FBB0, &qword_193977F08);
  memcpy(a1 + v5, v15, 0x90uLL);
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_193456418(*v7, *(v7 + 1));

  result = 0.0;
  *v7 = xmmword_1939526A0;
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t static TextUnderstandingLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLocation(0);
  v5 = v4[7];
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(v61, (a1 + v5), 0x60uLL);
  v6 = v4[7];
  memcpy(v66, (a2 + v6), sizeof(v66));
  memcpy(__src, (a2 + v6), 0x60uLL);
  sub_19365A03C(__dst, v64);
  sub_19365A03C(v66, v64);
  v7 = sub_19365AB48();
  LOBYTE(v6) = OUTLINED_FUNCTION_4_53(v7, v8, &type metadata for TextUnderstandingDocumentIdentifiers, v7);
  memcpy(v67, __src, sizeof(v67));
  sub_19365A098(v67);
  memcpy(v68, v61, sizeof(v68));
  sub_19365A098(v68);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_71(v4[8]);
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_71(v4[9]);
  v14 = v11 && v12 == v13;
  if (!v14 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_71(v4[10]);
  v17 = v11 && v15 == v16;
  if (!v17 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_58(v62);
  OUTLINED_FUNCTION_5_52(v63);
  OUTLINED_FUNCTION_2_58(v61);
  OUTLINED_FUNCTION_5_52(&v61[9]);
  OUTLINED_FUNCTION_2_58(v64);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v64) == 1)
  {
    OUTLINED_FUNCTION_5_52(__src);
    if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src) == 1)
    {
      OUTLINED_FUNCTION_2_58(v60);
      sub_19367031C(v62, v58);
      sub_19367031C(v63, v58);
      sub_193442B60(v60, &qword_1EAE3FBB0, &qword_193977F08);
      goto LABEL_27;
    }

    sub_19367031C(v62, v60);
    sub_19367031C(v63, v60);
LABEL_23:
    memcpy(__src, v61, sizeof(__src));
    sub_193442B60(__src, &qword_1EAE3FBB8, &qword_193977F10);
    return 0;
  }

  OUTLINED_FUNCTION_2_58(v60);
  OUTLINED_FUNCTION_2_58(v58);
  OUTLINED_FUNCTION_5_52(__src);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src) == 1)
  {
    memcpy(v57, v58, sizeof(v57));
    sub_19367031C(v62, v56);
    sub_19367031C(v63, v56);
    sub_19367031C(v60, v56);
    sub_19366B68C(v57);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_5_52(v57);
  sub_19367031C(v62, v56);
  sub_19367031C(v63, v56);
  sub_19367031C(v60, v56);
  sub_19366B6E0();
  v19 = sub_19393C550();
  memcpy(v55, v57, sizeof(v55));
  sub_19366B68C(v55);
  memcpy(v56, v58, sizeof(v56));
  sub_19366B68C(v56);
  OUTLINED_FUNCTION_2_58(v57);
  sub_193442B60(v57, &qword_1EAE3FBB0, &qword_193977F08);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v20 = v4[12];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 16);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 16);
  if (v22)
  {
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v25 = *v23;
    v61[0] = *v21;
    LOBYTE(v61[1]) = 0;
    if (v24)
    {
      return 0;
    }

    __src[0] = v25;
    v26 = sub_19366B638();
    if ((OUTLINED_FUNCTION_4_53(v26, v27, &type metadata for TextUnderstandingLocation.Coordinates, v26) & 1) == 0)
    {
      return 0;
    }
  }

  v28 = v4[13];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *v31;
  v33 = v31[1];
  if (v30 != 1)
  {
    *&v61[0] = v29;
    *(&v61[0] + 1) = v30;
    if (v33 != 1)
    {
      *&__src[0] = v32;
      *(&__src[0] + 1) = v33;
      v40 = OUTLINED_FUNCTION_32_4();
      sub_19350CB08(v40, v41);
      sub_19350CB08(v32, v33);
      v42 = OUTLINED_FUNCTION_32_4();
      sub_19350CB08(v42, v43);
      v44 = sub_19366B5E4();
      v46 = OUTLINED_FUNCTION_4_53(v44, v45, &type metadata for TextUnderstandingLocation.Metadata, v44);

      v47 = OUTLINED_FUNCTION_32_4();
      sub_193456418(v47, v48);
      if ((v46 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_40;
    }

    v34 = OUTLINED_FUNCTION_32_4();
    sub_19350CB08(v34, v35);
    sub_19350CB08(v32, 1);
    v36 = OUTLINED_FUNCTION_32_4();
    sub_19350CB08(v36, v37);

LABEL_38:
    v38 = OUTLINED_FUNCTION_32_4();
    sub_193456418(v38, v39);
    sub_193456418(v32, v33);
    return 0;
  }

  sub_19350CB08(v29, 1);
  if (v33 != 1)
  {
    sub_19350CB08(v32, v33);
    goto LABEL_38;
  }

  sub_19350CB08(v32, 1);
  sub_193456418(v29, 1);
LABEL_40:
  v49 = v4[14];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (v53)
    {
      v54 = *v50 == *v52 && v51 == v53;
      if (v54 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v53)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_19367031C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBB0, &qword_193977F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TextUnderstandingLocation.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingLocation(0);
  memcpy(__dst, (v1 + v2[7]), 0x60uLL);
  sub_19365B174();
  sub_19393C540();
  OUTLINED_FUNCTION_3_52();
  OUTLINED_FUNCTION_3_52();
  OUTLINED_FUNCTION_3_52();
  OUTLINED_FUNCTION_2_58(__dst);
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_58(v7);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_2_58(v8);
    sub_19366B910(v8, v9);
    sub_19366B96C();
    sub_19393C540();
    memcpy(v9, v7, sizeof(v9));
    sub_19366B68C(v9);
  }

  v3 = v1 + v2[12];
  if (*(v3 + 16) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v9[0] = *v3;
    OUTLINED_FUNCTION_103_0();
    sub_19366B9C0();
    sub_19393C540();
  }

  v4 = (v1 + v2[13]);
  v5 = v4[1];
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    *&v9[0] = *v4;
    *(&v9[0] + 1) = v5;
    OUTLINED_FUNCTION_103_0();
    sub_19366BA14();

    sub_19393C540();
  }

  if (!*(v1 + v2[14] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_193670568()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABA80);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1939526B0;
  v5 = v30 + v4;
  v6 = v30 + v4 + dword_1EAEABAB8;
  *(v30 + v4) = 1;
  *v6 = "documentIdentifiers";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v10 = 2;
  *v9 = "name";
  v9[1] = 4;
  v11 = OUTLINED_FUNCTION_41(v9);
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v13 = 3;
  *v12 = "category";
  v12[1] = 8;
  v14 = OUTLINED_FUNCTION_41(v12);
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v16 = 4;
  *v15 = "algorithm";
  v15[1] = 9;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v8)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v19 = 5;
  *v18 = "address";
  v18[1] = 7;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v8)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v22 = 6;
  *v21 = "coordinates";
  v21[1] = 11;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v8)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v5 + 6 * v2);
  *v25 = 7;
  *v24 = "metadata";
  v24[1] = 8;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v8)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v5 + 7 * v2);
  *v28 = 8;
  *v27 = "timeZoneIdentifier";
  *(v27 + 8) = 18;
  *(v27 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  return sub_19393C410();
}

void sub_193670830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  while (1)
  {
    v7 = sub_19393C0E0();
    if (v6 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 1:
        __src = 0u;
        memset(v25, 0, sizeof(v25));
        sub_193498018();
        if (*(&__src + 1))
        {
          memcpy(&v22[2], v25, 0x50uLL);
          *v22 = __src;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v22);
        }

        v5 = *(type metadata accessor for TextUnderstandingLocation(0) + 28);
        memcpy(__dst, (v3 + v5), sizeof(__dst));
        sub_19365A098(__dst);
        memcpy((v3 + v5), v22, 0x60uLL);
        continue;
      case 2:
        OUTLINED_FUNCTION_11_6(v7, v8, v9, v10, v11, v12, v13, v14, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __src, *(&__src + 1));
        v6 = 0;
        OUTLINED_FUNCTION_15_39();
        if (v16)
        {
          v17 = 0xE000000000000000;
        }

        else
        {
          v17 = v20;
        }

        v18 = *(type metadata accessor for TextUnderstandingLocation(0) + 32);
        goto LABEL_20;
      case 3:
        OUTLINED_FUNCTION_11_6(v7, v8, v9, v10, v11, v12, v13, v14, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __src, *(&__src + 1));
        v6 = 0;
        OUTLINED_FUNCTION_15_39();
        if (v16)
        {
          v17 = 0xE000000000000000;
        }

        else
        {
          v17 = v15;
        }

        v18 = *(type metadata accessor for TextUnderstandingLocation(0) + 36);
        goto LABEL_20;
      case 4:
        OUTLINED_FUNCTION_11_6(v7, v8, v9, v10, v11, v12, v13, v14, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __src, *(&__src + 1));
        v6 = 0;
        OUTLINED_FUNCTION_15_39();
        if (v16)
        {
          v17 = 0xE000000000000000;
        }

        else
        {
          v17 = v19;
        }

        v18 = *(type metadata accessor for TextUnderstandingLocation(0) + 40);
LABEL_20:
        v21 = (v3 + v18);

        *v21 = v5;
        v21[1] = v17;
        continue;
      case 5:
      case 6:
      case 7:
        type metadata accessor for TextUnderstandingLocation(0);
        sub_193498018();
        goto LABEL_22;
      case 8:
        type metadata accessor for TextUnderstandingLocation(0);
        sub_19393C200();
LABEL_22:
        v6 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193670AE0()
{
  v2 = v0;
  v3 = type metadata accessor for TextUnderstandingLocation(0);
  v4 = v3[7];
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v26, (v0 + v4), sizeof(v26));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v5 = sub_19393C550();
  memcpy(v28, __src, 0x60uLL);
  sub_19365A098(v28);
  memcpy(v29, v26, 0x60uLL);
  sub_19365A098(v29);
  if (v5)
  {
    if (v1)
    {
      return;
    }
  }

  else
  {
    memcpy(v26, (v2 + v4), sizeof(v26));
    memcpy(__src, (v2 + v4), sizeof(__src));
    sub_19365A03C(v26, v24);
    OUTLINED_FUNCTION_34_28(__src, 1, v6, &type metadata for TextUnderstandingDocumentIdentifiers);
    if (v1)
    {
      memcpy(v24, __src, sizeof(v24));
      sub_19365A098(v24);
      return;
    }

    memcpy(v24, __src, sizeof(v24));
    sub_19365A098(v24);
  }

  v7 = (v2 + v3[8]);
  v8 = *v7;
  v9 = v7[1];
  if (*v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0xE000000000000000;
  }

  if (!v10 && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_7(v8, v9, 2);
  }

  v11 = (v2 + v3[9]);
  v12 = *v11;
  v13 = v11[1];
  if ((*v11 || v13 != 0xE000000000000000) && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_7(v12, v13, 3);
  }

  v14 = (v2 + v3[10]);
  v15 = *v14;
  v16 = v14[1];
  if ((*v14 || v16 != 0xE000000000000000) && (OUTLINED_FUNCTION_29_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_7(v15, v16, 4);
  }

  memcpy(v29, (v2 + v3[11]), sizeof(v29));
  if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v29) != 1)
  {
    memcpy(v28, v29, sizeof(v28));
    OUTLINED_FUNCTION_34_28(v28, 5, v18, &type metadata for TextUnderstandingLocation.Address);
  }

  v19 = v2 + v3[12];
  if ((*(v19 + 16) & 1) == 0)
  {
    v29[0] = *v19;
    OUTLINED_FUNCTION_34_28(v29, 6, v17, &type metadata for TextUnderstandingLocation.Coordinates);
  }

  v20 = (v2 + v3[13]);
  v21 = v20[1];
  if (v21 != 1)
  {
    *&v29[0] = *v20;
    *(&v29[0] + 1) = v21;
    OUTLINED_FUNCTION_34_28(v29, 7, v17, &type metadata for TextUnderstandingLocation.Metadata);
  }

  v22 = (v2 + v3[14]);
  v23 = v22[1];
  if (v23)
  {
    OUTLINED_FUNCTION_4_7(*v22, v23, 8);
  }
}

uint64_t sub_193670E64()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABA98);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_193951270;
  v6 = v5 + v4;
  v7 = v5 + v4 + dword_1EAEABAD0;
  *(v5 + v4) = 1;
  *v7 = "combinedAddress";
  *(v7 + 8) = 15;
  *(v7 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v11 = 2;
  v12 = OUTLINED_FUNCTION_0_0(v10, "street");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v14 = 3;
  *v13 = "city";
  *(v13 + 8) = 4;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v15 = OUTLINED_FUNCTION_3_1(v6 + 3 * v2);
  *v16 = 4;
  v17 = OUTLINED_FUNCTION_0_0(v15, "subLocality");
  (v9)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v6 + 4 * v2);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_0_0(v18, "administrativeArea");
  (v9)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v6 + 5 * v2);
  *v22 = 6;
  v23 = OUTLINED_FUNCTION_0_0(v21, "subAdministrativeArea");
  (v9)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v6 + 6 * v2);
  *v25 = 7;
  v26 = OUTLINED_FUNCTION_0_0(v24, "postalCode");
  (v9)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v6 + 7 * v2);
  *v28 = 8;
  *v27 = "country";
  *(v27 + 8) = 7;
  *(v27 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v29 = OUTLINED_FUNCTION_3_1(v6 + 8 * v2);
  *v30 = 9;
  *v29 = "countryCode";
  *(v29 + 8) = 11;
  *(v29 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  return sub_19393C410();
}

uint64_t sub_193671154()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
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
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_193671210()
{
  v2 = v0[1];
  v3 = v0[2];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v18 = v0[8];
  v19 = v0[9];
  v16 = v0[10];
  v17 = v0[11];
  v14 = v0[12];
  v15 = v0[13];
  v12 = v0[14];
  v13 = v0[15];
  v10 = v0[16];
  v11 = v0[17];
  if (v2)
  {
    result = OUTLINED_FUNCTION_181(*v0, v2, 1);
  }

  if (!v1)
  {
    if (v5)
    {
      result = OUTLINED_FUNCTION_181(v3, v5, 2);
    }

    if (v6)
    {
      result = OUTLINED_FUNCTION_181(v4, v6, 3);
    }

    if (v8)
    {
      result = OUTLINED_FUNCTION_181(v7, v8, 4);
    }

    if (v19)
    {
      result = OUTLINED_FUNCTION_181(v18, v19, 5);
    }

    if (v17)
    {
      result = OUTLINED_FUNCTION_181(v16, v17, 6);
    }

    if (v15)
    {
      result = OUTLINED_FUNCTION_181(v14, v15, 7);
    }

    if (v13)
    {
      result = OUTLINED_FUNCTION_181(v12, v13, 8);
    }

    if (v11)
    {
      return OUTLINED_FUNCTION_181(v10, v11, 9);
    }
  }

  return result;
}

uint64_t sub_1936713E0()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABAB0);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBE0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + dword_1EAEABAE8;
  *v6 = 1;
  *v7 = "latitude";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 104);
  (v11)(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v13 = 2;
  *v12 = "longitude";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  v11();
  return sub_19393C410();
}

uint64_t sub_193671588()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v26 = OUTLINED_FUNCTION_21_33(2, v3, v4, v5, v6, v7, v8, v9, v42, v45);
      v0[1] = OUTLINED_FUNCTION_24_32(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v44, v47);
    }

    else if (result == 1)
    {
      v10 = OUTLINED_FUNCTION_21_33(1, v3, v4, v5, v6, v7, v8, v9, v42, v45);
      *v0 = OUTLINED_FUNCTION_24_32(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v43, v46);
    }
  }

  return result;
}

uint64_t sub_19367161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  if (*v3 == 0.0)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_19393C3B0();
    if (v4)
    {
      return result;
    }
  }

  if (v5 != 0.0)
  {
    return sub_19393C3B0();
  }

  return result;
}

uint64_t sub_193671704()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABAC8);
  OUTLINED_FUNCTION_25_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19394FAC0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "airportCode";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 104))(v4, v5);
  return sub_19393C410();
}

uint64_t sub_193671860()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_19393C200();
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return sub_19393C1E0();
}

uint64_t TextUnderstandingLocation.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingLocation(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingLocation(uint64_t a1)
{
  result = qword_1ED50D180;
  if (!qword_1ED50D180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingLocation.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingLocation(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingLocation.documentIdentifiers.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingLocation(v2) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x60uLL);
  return sub_19365A03C(__dst, &v5);
}

void *TextUnderstandingLocation.documentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_53() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingLocation.name.getter()
{
  type metadata accessor for TextUnderstandingLocation(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.name.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for TextUnderstandingLocation(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingLocation.category.getter()
{
  type metadata accessor for TextUnderstandingLocation(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.category.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for TextUnderstandingLocation(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingLocation.algorithm.getter()
{
  type metadata accessor for TextUnderstandingLocation(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.algorithm.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for TextUnderstandingLocation(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingLocation.address.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingLocation(v2) + 44);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x90uLL);
  return sub_19344865C(__dst, &v5, &qword_1EAE3FBB0, &qword_193977F08);
}

void *TextUnderstandingLocation.address.setter()
{
  v2 = *(OUTLINED_FUNCTION_5_53() + 44);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_193671F04(v4);
  return memcpy((v1 + v2), v0, 0x90uLL);
}

uint64_t sub_193671F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FBB0, &qword_193977F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_193671FA8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

__n128 TextUnderstandingLocation.coordinates.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for TextUnderstandingLocation(v2) + 48));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *v0 = *v3;
  v0[1].n128_u8[0] = v4;
  return result;
}

uint64_t TextUnderstandingLocation.coordinates.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for TextUnderstandingLocation(0);
  v6 = v1 + *(result + 48);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t TextUnderstandingLocation.metadata.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for TextUnderstandingLocation(v2) + 52));
  v4 = *v3;
  v5 = v3[1];
  *v0 = *v3;
  v0[1] = v5;

  return sub_19350CB08(v4, v5);
}

uint64_t TextUnderstandingLocation.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for TextUnderstandingLocation(0) + 52));
  result = sub_193456418(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t TextUnderstandingLocation.timeZoneIdentifier.getter()
{
  type metadata accessor for TextUnderstandingLocation(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLocation.timeZoneIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  type metadata accessor for TextUnderstandingLocation(0);
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.combinedAddress.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.street.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.city.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.subLocality.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.administrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.postalCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.country.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t TextUnderstandingLocation.Address.countryCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t static TextUnderstandingLocation.Address.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v5 = a1[3];
  v4 = a1[4];
  v7 = a1[5];
  v6 = a1[6];
  v9 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v12 = a1[12];
  v14 = a1[13];
  v114 = a1[14];
  v118 = a1[15];
  v15 = a1[16];
  v117 = a1[17];
  v16 = a2[1];
  v120 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v24 = a2[9];
  v23 = a2[10];
  v26 = a2[11];
  v25 = a2[12];
  v27 = a2[13];
  v115 = a2[14];
  v119 = a2[15];
  v113 = a2[16];
  v116 = a2[17];
  if (v3)
  {
    if (!v16)
    {
      return 0;
    }

    v112 = a1[2];
    if (*a1 != *a2 || v3 != v16)
    {
      v109 = a2[9];
      v110 = a2[10];
      v100 = a2[7];
      v91 = a1[16];
      v93 = a2[5];
      v29 = a1[12];
      v96 = a1[5];
      v97 = a2[6];
      v30 = a1[13];
      v31 = a2[13];
      v89 = a2[12];
      v90 = a1[8];
      v32 = a1[10];
      v94 = a1[4];
      v33 = a1[11];
      v103 = a1[6];
      v106 = a2[8];
      v34 = a2[11];
      v35 = a1[9];
      v36 = sub_19393CA30();
      v24 = v109;
      v23 = v110;
      v10 = v35;
      v25 = v89;
      v8 = v90;
      v26 = v34;
      v6 = v103;
      v21 = v106;
      v13 = v33;
      v11 = v32;
      v27 = v31;
      v19 = v97;
      v22 = v100;
      v14 = v30;
      v4 = v94;
      v7 = v96;
      v12 = v29;
      v15 = v91;
      v20 = v93;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v112 = a1[2];
    if (v16)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v17)
    {
      return 0;
    }

    if (v112 != v120 || v5 != v17)
    {
      v104 = v6;
      v92 = v15;
      v38 = v12;
      v39 = v14;
      v101 = v9;
      v40 = v27;
      v41 = v25;
      v98 = v19;
      v42 = v11;
      v95 = v4;
      v43 = v13;
      sub_19393CA30();
      OUTLINED_FUNCTION_7_35();
      v18 = v44;
      v13 = v43;
      v4 = v95;
      v11 = v42;
      v19 = v98;
      v25 = v41;
      v6 = v104;
      v27 = v40;
      v9 = v101;
      v14 = v39;
      v12 = v38;
      v15 = v92;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v20)
    {
      return 0;
    }

    if (v4 != v18 || v7 != v20)
    {
      v105 = v6;
      v107 = v21;
      v47 = v15;
      v48 = v12;
      v49 = v14;
      v102 = v9;
      v50 = v27;
      v51 = v25;
      v99 = v19;
      v52 = v11;
      v53 = v13;
      sub_19393CA30();
      OUTLINED_FUNCTION_7_35();
      v13 = v53;
      v11 = v52;
      v19 = v99;
      v25 = v51;
      v27 = v50;
      v9 = v102;
      v6 = v105;
      v14 = v49;
      v12 = v48;
      v15 = v47;
      v21 = v107;
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v6 != v19 || v9 != v22)
    {
      v108 = v21;
      v56 = v15;
      v57 = v12;
      v58 = v14;
      v59 = v27;
      v60 = v25;
      v61 = v11;
      v62 = v13;
      sub_19393CA30();
      OUTLINED_FUNCTION_7_35();
      v13 = v62;
      v11 = v61;
      v25 = v60;
      v27 = v59;
      v14 = v58;
      v12 = v57;
      v15 = v56;
      v21 = v108;
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v10)
  {
    if (!v24)
    {
      return 0;
    }

    if (v8 != v21 || v10 != v24)
    {
      v111 = v23;
      v65 = v15;
      v66 = v12;
      v67 = v14;
      v68 = v27;
      v69 = v25;
      v70 = v11;
      v71 = v13;
      v72 = v26;
      v73 = sub_19393CA30();
      v23 = v111;
      v26 = v72;
      v13 = v71;
      v11 = v70;
      v25 = v69;
      v27 = v68;
      v14 = v67;
      v12 = v66;
      v15 = v65;
      if ((v73 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v13)
  {
    if (!v26)
    {
      return 0;
    }

    if (v11 != v23 || v13 != v26)
    {
      v75 = v15;
      v76 = v12;
      v77 = v14;
      v78 = v27;
      v79 = v25;
      v80 = sub_19393CA30();
      v25 = v79;
      v27 = v78;
      v14 = v77;
      v12 = v76;
      v15 = v75;
      if ((v80 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v14)
  {
    if (!v27)
    {
      return 0;
    }

    if (v12 != v25 || v14 != v27)
    {
      v82 = v15;
      v83 = sub_19393CA30();
      v15 = v82;
      if ((v83 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  if (v118)
  {
    if (!v119)
    {
      return 0;
    }

    if (v114 != v115 || v118 != v119)
    {
      v85 = v15;
      v86 = sub_19393CA30();
      v15 = v85;
      if ((v86 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v119)
  {
    return 0;
  }

  if (v117)
  {
    if (v116)
    {
      v87 = v15 == v113 && v117 == v116;
      if (v87 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v116)
  {
    return 1;
  }

  return 0;
}

void TextUnderstandingLocation.Address.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[9];
  v5 = v1[11];
  v6 = v1[13];
  v7 = v1[15];
  v9 = v1[7];
  v10 = v1[17];
  if (v1[1])
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v3)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_19393CAD0();
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_19393CAD0();
  sub_19393C640();
  if (v4)
  {
LABEL_9:
    sub_19393CAD0();
    sub_19393C640();
    goto LABEL_13;
  }

LABEL_12:
  sub_19393CAD0();
LABEL_13:
  if (v5)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v6)
    {
LABEL_15:
      sub_19393CAD0();
      sub_19393C640();
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_22:
      sub_19393CAD0();
      if (v10)
      {
        goto LABEL_17;
      }

LABEL_23:
      sub_19393CAD0();
      OUTLINED_FUNCTION_196();
      return;
    }
  }

  sub_19393CAD0();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_16:
  sub_19393CAD0();
  sub_19393C640();
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_17:
  sub_19393CAD0();
  OUTLINED_FUNCTION_196();

  sub_19393C640();
}

uint64_t TextUnderstandingLocation.Address.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  TextUnderstandingLocation.Address.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193672DB4(uint64_t a1)
{
  sub_19393CAB0();
  TextUnderstandingLocation.Address.hash(into:)(v2);
  return sub_19393CB00();
}

IntelligencePlatformLibrary::TextUnderstandingLocation::Coordinates __swiftcall TextUnderstandingLocation.Coordinates.init()()
{
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t TextUnderstandingLocation.Coordinates.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193B18060](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x193B18060](*&v3);
}

uint64_t TextUnderstandingLocation.Coordinates.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_119();
  if (v1 == 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  MEMORY[0x193B18060](*&v2);
  OUTLINED_FUNCTION_13_37();
  return sub_19393CB00();
}

uint64_t sub_193672F44(uint64_t a1)
{
  v2 = *v1;
  sub_19393CAB0();
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  MEMORY[0x193B18060](*&v3);
  OUTLINED_FUNCTION_13_37();
  return sub_19393CB00();
}

uint64_t TextUnderstandingLocation.Metadata.airportCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::TextUnderstandingLocation::Metadata __swiftcall TextUnderstandingLocation.Metadata.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.airportCode.value._object = v2;
  result.airportCode.value._countAndFlagsBits = v1;
  return result;
}

uint64_t static TextUnderstandingLocation.Metadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t TextUnderstandingLocation.Metadata.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t TextUnderstandingLocation.Metadata.hashValue.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_193673198(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t TextUnderstandingLocation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  TextUnderstandingLocation.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193673248(uint64_t a1)
{
  sub_19393CAB0();
  TextUnderstandingLocation.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193673294()
{
  result = qword_1EAE3FC48;
  if (!qword_1EAE3FC48)
  {
    type metadata accessor for TextUnderstandingLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FC48);
  }

  return result;
}

void sub_193673318(uint64_t a1)
{
  sub_19349D140(319);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED502F58, &type metadata for TextUnderstandingLocation.Address);
      if (v3 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED502F60, &type metadata for TextUnderstandingLocation.Coordinates);
        if (v4 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED502C80, &type metadata for TextUnderstandingLocation.Metadata);
          if (v5 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_193673468(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 144))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1936734B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextUnderstandingLocation.Coordinates(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_46_4(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextUnderstandingLocation.Coordinates(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_19367358C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingNamedEntity.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for TextUnderstandingNamedEntity(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC50, &qword_193978718);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1936737C8(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3FC50, &qword_193978718, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3FC50, &qword_193978718);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1936737C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingNamedEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingNamedEntity.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC50, &qword_193978718);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FC50, &qword_193978718, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_19367396C(v8, a3);
  }

  return result;
}

uint64_t sub_19367396C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingNamedEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingNamedEntity.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC50, &qword_193978718);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_193674CB4() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_19367396C(v11, v36);
      v29 = type metadata accessor for TextUnderstandingNamedEntity(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TextUnderstandingNamedEntity.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingNamedEntity(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC50, &qword_193978718);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1936737C8(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FC50, &qword_193978718, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FC50, &qword_193978718);
  return v11;
}

id static TextUnderstandingNamedEntity.columns.getter()
{
  v12 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_3_5(1701667182, 0xE400000000000000);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_5_54(result);
  v4 = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_22_15(v4, xmmword_193950B10);
  *(v5 + 16) = xmmword_193950B10;
  *(v5 + 32) = sub_19393C850();
  v6 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v7 = OUTLINED_FUNCTION_31_2();
  result = OUTLINED_FUNCTION_3_5(v7, 0xE800000000000000);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_54(result);
  v8 = swift_initStackObject();
  v9 = OUTLINED_FUNCTION_22_15(v8, xmmword_193950B10);
  *(v9 + 16) = xmmword_193950B10;
  *(v9 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v11 = OUTLINED_FUNCTION_30_2();
  result = sub_19343D150(v11, 0xE90000000000006DLL, 2, 0, v9, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_5_54(result);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_19367401C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 0xD000000000000013 && 0x8000000193A2B920 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0(0xD000000000000013, 0x8000000193A2B920) & 1) != 0)
  {
    v8 = *(type metadata accessor for TextUnderstandingNamedEntity(0) + 28);
    memcpy(__dst, (v3 + v8), sizeof(__dst));
    memcpy(v23, (v3 + v8), sizeof(v23));
    sub_19365A03C(__dst, v25);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, a3);
    memcpy(v25, v23, sizeof(v25));
    return sub_19365A098(v25);
  }

  v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v10 || (OUTLINED_FUNCTION_59_0(1701667182, 0xE400000000000000) & 1) != 0)
  {
    v11 = *(type metadata accessor for TextUnderstandingNamedEntity(0) + 32);
LABEL_13:
    v12 = (v3 + v11);
    v14 = *v12;
    v13 = v12[1];
    v25[0] = v14;
    v25[1] = v13;
    return sub_1934948FC();
  }

  v15 = OUTLINED_FUNCTION_31_2();
  v16 = a1 == v15 && a2 == 0xE800000000000000;
  if (v16 || (OUTLINED_FUNCTION_59_0(v15, 0xE800000000000000) & 1) != 0)
  {
    v11 = *(type metadata accessor for TextUnderstandingNamedEntity(0) + 36);
    goto LABEL_13;
  }

  v17 = OUTLINED_FUNCTION_30_2();
  v19 = a1 == v17 && a2 == v18;
  if (v19 || (OUTLINED_FUNCTION_59_0(v17, 0xE90000000000006DLL) & 1) != 0)
  {
    v11 = *(type metadata accessor for TextUnderstandingNamedEntity(0) + 40);
    goto LABEL_13;
  }

  sub_19349AB64();
  swift_allocError();
  v21 = v20;
  *v20 = a1;
  v20[1] = a2;
  v20[5] = type metadata accessor for TextUnderstandingNamedEntity(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21 + 2);
  sub_1936737C8(v3, boxed_opaque_existential_1Tm);
  *(v21 + 48) = 1;
  swift_willThrow();
}

void *TextUnderstandingNamedEntity.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingNamedEntity(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  *a1 = *sub_193674CB4();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v5 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v5);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  TextUnderstandingDocumentIdentifiers.init()(v10);
  result = memcpy(a1 + v2[7], v10, 0x60uLL);
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (a1 + v2[9]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  return result;
}

BOOL static TextUnderstandingNamedEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingNamedEntity(0);
  v5 = v4[7];
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(__src, (a1 + v5), sizeof(__src));
  v6 = v4[7];
  memcpy(v20, (a2 + v6), sizeof(v20));
  memcpy(v17, (a2 + v6), sizeof(v17));
  sub_19365A03C(__dst, v22);
  sub_19365A03C(v20, v22);
  sub_19365AB48();
  LOBYTE(v6) = sub_19393C550();
  memcpy(v21, v17, sizeof(v21));
  sub_19365A098(v21);
  memcpy(v22, __src, sizeof(v22));
  sub_19365A098(v22);
  result = 0;
  if (v6)
  {
    OUTLINED_FUNCTION_0_71(v4[8]);
    v9 = v9 && v7 == v8;
    if (v9 || (sub_19393CA30() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_71(v4[9]);
      v12 = v9 && v10 == v11;
      if (v12 || (sub_19393CA30() & 1) != 0)
      {
        OUTLINED_FUNCTION_0_71(v4[10]);
        v15 = v9 && v13 == v14;
        if (v15 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t TextUnderstandingNamedEntity.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingNamedEntity(0);
  memcpy(v4, (v1 + *(v2 + 28)), sizeof(v4));
  sub_19365B174();
  sub_19393C540();
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_1_57();
  return OUTLINED_FUNCTION_1_57();
}

uint64_t sub_19367452C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEABAE0);
  __swift_project_value_buffer(v0, &qword_1EAEABAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "documentIdentifiers";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *(*(sub_19393C400() - 8) + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v9 = (v5 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "category";
  *(v10 + 1) = 8;
  v10[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v11 = (v5 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "algorithm";
  *(v12 + 1) = 9;
  v12[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  return sub_19393C410();
}

uint64_t sub_19367475C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  while (1)
  {
    result = sub_19393C0E0();
    if (v6 || (v8 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        __src = 0u;
        memset(v27, 0, sizeof(v27));
        sub_193498018();
        if (*(&__src + 1))
        {
          memcpy(&v24[2], v27, 0x50uLL);
          *v24 = __src;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v24);
        }

        v5 = *(type metadata accessor for TextUnderstandingNamedEntity(0) + 28);
        memcpy(__dst, (v3 + v5), sizeof(__dst));
        sub_19365A098(__dst);
        memcpy((v3 + v5), v24, 0x60uLL);
        break;
      case 2:
        OUTLINED_FUNCTION_11_6(result, v8, v9, v10, v11, v12, v13, v14, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __src, *(&__src + 1));
        v6 = 0;
        OUTLINED_FUNCTION_3_53();
        if (v16)
        {
          v22 = 0xE000000000000000;
        }

        else
        {
          v22 = v21;
        }

        v23 = (v3 + *(type metadata accessor for TextUnderstandingNamedEntity(0) + 32));

        *v23 = v5;
        v23[1] = v22;
        break;
      case 3:
        OUTLINED_FUNCTION_11_6(result, v8, v9, v10, v11, v12, v13, v14, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __src, *(&__src + 1));
        v6 = 0;
        OUTLINED_FUNCTION_3_53();
        if (v16)
        {
          v17 = 0xE000000000000000;
        }

        else
        {
          v17 = v15;
        }

        v18 = *(type metadata accessor for TextUnderstandingNamedEntity(0) + 36);
        goto LABEL_15;
      case 4:
        OUTLINED_FUNCTION_11_6(result, v8, v9, v10, v11, v12, v13, v14, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __src, *(&__src + 1));
        v6 = 0;
        OUTLINED_FUNCTION_3_53();
        if (v16)
        {
          v17 = 0xE000000000000000;
        }

        else
        {
          v17 = v19;
        }

        v18 = *(type metadata accessor for TextUnderstandingNamedEntity(0) + 40);
LABEL_15:
        v20 = (v3 + v18);

        *v20 = v5;
        v20[1] = v17;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_193674964()
{
  v2 = v0;
  v3 = type metadata accessor for TextUnderstandingNamedEntity(0);
  v4 = v3[7];
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v19, (v0 + v4), sizeof(v19));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v5 = sub_19393C550();
  memcpy(v21, __src, sizeof(v21));
  sub_19365A098(v21);
  memcpy(v22, v19, sizeof(v22));
  result = sub_19365A098(v22);
  if (v5)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    memcpy(v19, (v2 + v4), sizeof(v19));
    memcpy(__src, (v2 + v4), sizeof(__src));
    sub_19365A03C(v19, v17);
    sub_193447600();
    if (v1)
    {
      memcpy(v17, __src, sizeof(v17));
      return sub_19365A098(v17);
    }

    memcpy(v17, __src, sizeof(v17));
    result = sub_19365A098(v17);
  }

  v7 = (v2 + v3[8]);
  v8 = *v7;
  v9 = v7[1];
  if (*v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0xE000000000000000;
  }

  if (!v10)
  {
    result = OUTLINED_FUNCTION_29_3();
    if ((result & 1) == 0)
    {
      result = OUTLINED_FUNCTION_4_7(v8, v9, 2);
    }
  }

  v11 = (v2 + v3[9]);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 || v13 != 0xE000000000000000)
  {
    result = OUTLINED_FUNCTION_29_3();
    if ((result & 1) == 0)
    {
      result = OUTLINED_FUNCTION_4_7(v12, v13, 3);
    }
  }

  v14 = (v2 + v3[10]);
  v15 = *v14;
  v16 = v14[1];
  if (*v14 || v16 != 0xE000000000000000)
  {
    result = sub_19393CA30();
    if ((result & 1) == 0)
    {
      return OUTLINED_FUNCTION_4_7(v15, v16, 4);
    }
  }

  return result;
}

uint64_t sub_193674BB0(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3FC60;

  return v1;
}

uint64_t sub_193674BF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE779D0 != -1)
  {
    OUTLINED_FUNCTION_0_72(&qword_1EAE779D0);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, &qword_1EAEABAE0);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TextUnderstandingNamedEntity.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingNamedEntity(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingNamedEntity(uint64_t a1)
{
  result = qword_1ED50D170;
  if (!qword_1ED50D170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingNamedEntity.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingNamedEntity(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingNamedEntity.documentIdentifiers.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingNamedEntity(v2) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x60uLL);
  return sub_19365A03C(__dst, &v5);
}

void *TextUnderstandingNamedEntity.documentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_1_58() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingNamedEntity.name.getter()
{
  type metadata accessor for TextUnderstandingNamedEntity(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingNamedEntity.name.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_54() + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingNamedEntity.category.getter()
{
  type metadata accessor for TextUnderstandingNamedEntity(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingNamedEntity.category.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_54() + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingNamedEntity.algorithm.getter()
{
  type metadata accessor for TextUnderstandingNamedEntity(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingNamedEntity.algorithm.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_4_54() + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingNamedEntity.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingNamedEntity.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936751C8(uint64_t a1)
{
  sub_19393CAB0();
  TextUnderstandingNamedEntity.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193675208()
{
  result = qword_1EAE3FC70;
  if (!qword_1EAE3FC70)
  {
    type metadata accessor for TextUnderstandingNamedEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FC70);
  }

  return result;
}

void sub_19367528C(uint64_t a1)
{
  sub_19349D140(319);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingTopic.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for TextUnderstandingTopic(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC78, &qword_193978860);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_193675518(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3FC78, &qword_193978860, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3FC78, &qword_193978860);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_193675518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingTopic(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingTopic.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC78, &qword_193978860);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FC78, &qword_193978860, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_1936756BC(v8, a3);
  }

  return result;
}

uint64_t sub_1936756BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingTopic(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingTopic.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC78, &qword_193978860);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_193676910() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_1936756BC(v11, v36);
      v29 = type metadata accessor for TextUnderstandingTopic(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TextUnderstandingTopic.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingTopic(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FC78, &qword_193978860);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_193675518(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FC78, &qword_193978860, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FC78, &qword_193978860);
  return v11;
}

id static TextUnderstandingTopic.columns.getter()
{
  v9 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v3 = OUTLINED_FUNCTION_105();
  result = sub_19343D150(v3, 0xEA00000000007265, 2, 0, v1, 13, 0);
  if (result)
  {
    inited[2].n128_u64[0] = result;
    sub_19343D230(inited);
    v5 = swift_initStackObject();
    v6 = OUTLINED_FUNCTION_22_15(v5, xmmword_193950B10);
    *(v6 + 16) = xmmword_193950B10;
    *(v6 + 32) = sub_19393C850();
    v7 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
    v8 = OUTLINED_FUNCTION_30_2();
    result = sub_19343D150(v8, 0xE90000000000006DLL, 2, 0, v6, 13, 0);
    if (result)
    {
      v5[2].n128_u64[0] = result;
      sub_19343D230(v5);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_193675D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 0xD000000000000013 && 0x8000000193A2B920 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0(0xD000000000000013, 0x8000000193A2B920) & 1) != 0)
  {
    v8 = *(type metadata accessor for TextUnderstandingTopic(0) + 28);
    memcpy(__dst, (v3 + v8), sizeof(__dst));
    memcpy(v23, (v3 + v8), sizeof(v23));
    sub_19365A03C(__dst, v25);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, a3);
    memcpy(v25, v23, sizeof(v25));
    return sub_19365A098(v25);
  }

  v10 = OUTLINED_FUNCTION_105();
  v12 = a1 == v10 && a2 == v11;
  if (v12 || (OUTLINED_FUNCTION_59_0(v10, 0xEA00000000007265) & 1) != 0)
  {
    v13 = *(type metadata accessor for TextUnderstandingTopic(0) + 32);
LABEL_13:
    v14 = (v3 + v13);
    v16 = *v14;
    v15 = v14[1];
    v25[0] = v16;
    v25[1] = v15;
    return sub_1934948FC();
  }

  v17 = OUTLINED_FUNCTION_30_2();
  v19 = a1 == v17 && a2 == v18;
  if (v19 || (OUTLINED_FUNCTION_59_0(v17, 0xE90000000000006DLL) & 1) != 0)
  {
    v13 = *(type metadata accessor for TextUnderstandingTopic(0) + 36);
    goto LABEL_13;
  }

  sub_19349AB64();
  swift_allocError();
  v21 = v20;
  *v20 = a1;
  v20[1] = a2;
  v20[5] = type metadata accessor for TextUnderstandingTopic(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21 + 2);
  sub_193675518(v3, boxed_opaque_existential_1Tm);
  *(v21 + 48) = 1;
  swift_willThrow();
}

void *TextUnderstandingTopic.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingTopic(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  *a1 = *sub_193676910();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v5 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v5);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  TextUnderstandingDocumentIdentifiers.init()(v9);
  result = memcpy(a1 + v2[7], v9, 0x60uLL);
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (a1 + v2[9]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return result;
}

BOOL static TextUnderstandingTopic.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingTopic(0);
  v5 = v4[7];
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(__src, (a1 + v5), sizeof(__src));
  v6 = v4[7];
  memcpy(v17, (a2 + v6), sizeof(v17));
  memcpy(v14, (a2 + v6), sizeof(v14));
  sub_19365A03C(__dst, v19);
  sub_19365A03C(v17, v19);
  sub_19365AB48();
  LOBYTE(v6) = sub_19393C550();
  memcpy(v18, v14, sizeof(v18));
  sub_19365A098(v18);
  memcpy(v19, __src, sizeof(v19));
  sub_19365A098(v19);
  result = 0;
  if (v6)
  {
    OUTLINED_FUNCTION_0_71(v4[8]);
    v9 = v9 && v7 == v8;
    if (v9 || (sub_19393CA30() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_71(v4[9]);
      v12 = v9 && v10 == v11;
      if (v12 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t TextUnderstandingTopic.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingTopic(0);
  memcpy(v4, (v1 + *(v2 + 28)), sizeof(v4));
  sub_19365B174();
  sub_19393C540();
  sub_19393C640();
  return sub_19393C640();
}

uint64_t sub_193676204()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABAF8);
  __swift_project_value_buffer(v0, qword_1EAEABAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "documentIdentifiers";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "algorithm";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_19393C410();
}

uint64_t sub_19367640C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_11_6(3, v7, v8, v9, v10, v11, v12, v13, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __src, *(&__src + 1));
        v5 = 0;
        if (*(&__src + 1))
        {
          v17 = __src;
        }

        else
        {
          v17 = 0;
        }

        if (*(&__src + 1))
        {
          v18 = *(&__src + 1);
        }

        else
        {
          v18 = 0xE000000000000000;
        }

        v19 = (v3 + *(type metadata accessor for TextUnderstandingTopic(0) + 36));

        *v19 = v17;
        v19[1] = v18;
        break;
      case 2:
        OUTLINED_FUNCTION_11_6(2, v7, v8, v9, v10, v11, v12, v13, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __src, *(&__src + 1));
        v5 = 0;
        if (*(&__src + 1))
        {
          v14 = __src;
        }

        else
        {
          v14 = 0;
        }

        if (*(&__src + 1))
        {
          v15 = *(&__src + 1);
        }

        else
        {
          v15 = 0xE000000000000000;
        }

        v16 = (v3 + *(type metadata accessor for TextUnderstandingTopic(0) + 32));

        *v16 = v14;
        v16[1] = v15;
        break;
      case 1:
        __src = 0u;
        memset(v24, 0, sizeof(v24));
        sub_193498018();
        if (*(&__src + 1))
        {
          memcpy(&v21[2], v24, 0x50uLL);
          *v21 = __src;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v21);
        }

        v20 = *(type metadata accessor for TextUnderstandingTopic(0) + 28);
        memcpy(__dst, (v3 + v20), sizeof(__dst));
        sub_19365A098(__dst);
        memcpy((v3 + v20), v21, 0x60uLL);
        break;
    }
  }

  return result;
}

uint64_t sub_1936765E8()
{
  v2 = v0;
  v3 = type metadata accessor for TextUnderstandingTopic(0);
  v4 = v3[7];
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v16, (v0 + v4), sizeof(v16));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v5 = sub_19393C550();
  memcpy(v18, __src, sizeof(v18));
  sub_19365A098(v18);
  memcpy(v19, v16, sizeof(v19));
  result = sub_19365A098(v19);
  if (v5)
  {
    if (v1)
    {
      return result;
    }
  }

  else
  {
    memcpy(v16, (v2 + v4), sizeof(v16));
    memcpy(__src, (v2 + v4), sizeof(__src));
    sub_19365A03C(v16, v14);
    sub_193447600();
    if (v1)
    {
      memcpy(v14, __src, sizeof(v14));
      return sub_19365A098(v14);
    }

    memcpy(v14, __src, sizeof(v14));
    result = sub_19365A098(v14);
  }

  v7 = (v2 + v3[8]);
  v8 = *v7;
  v9 = v7[1];
  if (*v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0xE000000000000000;
  }

  if (!v10)
  {
    result = sub_19393CA30();
    if ((result & 1) == 0)
    {
      result = OUTLINED_FUNCTION_4_7(v8, v9, 2);
    }
  }

  v11 = (v2 + v3[9]);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 || v13 != 0xE000000000000000)
  {
    result = sub_19393CA30();
    if ((result & 1) == 0)
    {
      return OUTLINED_FUNCTION_4_7(v12, v13, 3);
    }
  }

  return result;
}

uint64_t sub_19367680C(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3FC88;

  return v1;
}

uint64_t sub_193676850@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77AE0 != -1)
  {
    OUTLINED_FUNCTION_0_73(&qword_1EAE77AE0);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABAF8);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TextUnderstandingTopic.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingTopic(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingTopic(uint64_t a1)
{
  result = qword_1ED50D1B0;
  if (!qword_1ED50D1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingTopic.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingTopic(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingTopic.documentIdentifiers.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingTopic(v2) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x60uLL);
  return sub_19365A03C(__dst, &v5);
}

void *TextUnderstandingTopic.documentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_0_74() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingTopic.identifier.getter()
{
  type metadata accessor for TextUnderstandingTopic(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingTopic.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextUnderstandingTopic(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextUnderstandingTopic.algorithm.getter()
{
  type metadata accessor for TextUnderstandingTopic(0);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingTopic.algorithm.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TextUnderstandingTopic(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TextUnderstandingTopic.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingTopic.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193676DAC(uint64_t a1)
{
  sub_19393CAB0();
  TextUnderstandingTopic.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193676DEC()
{
  result = qword_1EAE3FC98;
  if (!qword_1EAE3FC98)
  {
    type metadata accessor for TextUnderstandingTopic(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FC98);
  }

  return result;
}

void sub_193676E70(uint64_t a1)
{
  sub_19349D140(319);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_193676F34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511538);
  v4 = __swift_project_value_buffer(v3, qword_1ED511538);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.PromptTags.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:1209600.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_43 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511538);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCA0, &qword_193978988);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.PromptTags.attribute(_:)(void (*a1)(void))
{
  result = sub_193677344(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19367738C(void (*a1)(void))
{
  result = sub_193677344(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936773BC(uint64_t a1)
{
  result = sub_1936773E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936773E4()
{
  result = qword_1ED5048E0;
  if (!qword_1ED5048E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5048E0);
  }

  return result;
}

_BYTE *_s10PromptTagsOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeExperiencesPromptTags.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for GenerativeExperiencesPromptTags(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCA8, &qword_193978A00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1936776EC(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3FCA8, &qword_193978A00, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3FCA8, &qword_193978A00);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1936776EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesPromptTags(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesPromptTags.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCA8, &qword_193978A00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FCA8, &qword_193978A00, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_193677890(v8, a3);
  }

  return result;
}

uint64_t sub_193677890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesPromptTags(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesPromptTags.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCA8, &qword_193978A00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_193679924() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_193677890(v11, v36);
      v29 = type metadata accessor for GenerativeExperiencesPromptTags(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t GenerativeExperiencesPromptTags.serialize()()
{
  v1 = type metadata accessor for GenerativeExperiencesPromptTags(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FCA8, &qword_193978A00);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1936776EC(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FCA8, &qword_193978A00, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FCA8, &qword_193978A00);
  return v11;
}

id static GenerativeExperiencesPromptTags.columns.getter()
{
  v199 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0x64496D657469, 0xE600000000000000, 6, 0, v0, 14, 3);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v21 = OUTLINED_FUNCTION_2_4(inited, v14, v15, v16, v17, v18, v19, v20, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v31);
  v32 = OUTLINED_FUNCTION_19_42();
  result = OUTLINED_FUNCTION_3_5(v32, 0xE900000000000064);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_7_2(result);
  v33 = swift_initStackObject();
  v41 = OUTLINED_FUNCTION_2_4(v33, v34, v35, v36, v37, v38, v39, v40, v193);
  OUTLINED_FUNCTION_5_10(v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v51 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v51);
  v52 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v52 | 0x6D614E6C00000000, 0xE900000000000065);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_2(result);
  v53 = swift_initStackObject();
  v61 = OUTLINED_FUNCTION_2_4(v53, v54, v55, v56, v57, v58, v59, v60, v194);
  OUTLINED_FUNCTION_5_10(v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  v71 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v71);
  v72 = OUTLINED_FUNCTION_12_3();
  result = OUTLINED_FUNCTION_3_5(v72 | 0x7265566C00000000, 0xEC0000006E6F6973);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_2(result);
  v73 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  v83 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  v93 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v93);
  v94 = OUTLINED_FUNCTION_31_6();
  result = OUTLINED_FUNCTION_3_5(v94, v95);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v96 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  v106 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  v116 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v116);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000013, 0x8000000193A2B250);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v117 = swift_initStackObject();
  v125 = OUTLINED_FUNCTION_2_4(v117, v118, v119, v120, v121, v122, v123, v124, v195);
  OUTLINED_FUNCTION_5_10(v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
  v135 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v135);
  OUTLINED_FUNCTION_15_40();
  OUTLINED_FUNCTION_14_39();
  result = OUTLINED_FUNCTION_13_38(v136, v137);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v138 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
  v148 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
  v158 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v158);
  v159 = OUTLINED_FUNCTION_31_6();
  result = OUTLINED_FUNCTION_3_5(v159, v160);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  v161 = swift_initStackObject();
  v169 = OUTLINED_FUNCTION_2_4(v161, v162, v163, v164, v165, v166, v167, v168, v196);
  OUTLINED_FUNCTION_5_10(v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
  v179 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v179);
  v180 = OUTLINED_FUNCTION_21_34();
  result = OUTLINED_FUNCTION_13_38(v180, 0xE700000000000000);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  v181 = swift_initStackObject();
  v189 = OUTLINED_FUNCTION_2_4(v181, v182, v183, v184, v185, v186, v187, v188, v197);
  *(v189 + 16) = v198;
  *(v189 + 32) = sub_19393C850();
  v190 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_20_39();
  OUTLINED_FUNCTION_18_35();
  result = sub_19343D150(v191, v192, 2, 0, v189, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v199;
  }

LABEL_21:
  __break(1u);
  return result;
}

int *sub_19367815C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  v10 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = a1 == 0x64496D657469 && a2 == 0xE600000000000000;
  if (!v17 && (OUTLINED_FUNCTION_59_0(0x64496D657469, 0xE600000000000000) & 1) == 0)
  {
    v20 = OUTLINED_FUNCTION_19_42();
    v21 = a1 == v20 && a2 == 0xE900000000000064;
    if (v21 || (OUTLINED_FUNCTION_59_0(v20, 0xE900000000000064) & 1) != 0)
    {
      result = type metadata accessor for GenerativeExperiencesPromptTags(0);
      v22 = result[8];
LABEL_16:
      v23 = (v3 + v22);
      v24 = *(v3 + v22 + 8);
      if (!v24)
      {
        goto LABEL_8;
      }

      v52 = *v23;
      v53 = v24;
      return sub_1934948FC();
    }

    v25 = a1 == 1936154996 && a2 == 0xE400000000000000;
    if (v25 || (OUTLINED_FUNCTION_59_0(1936154996, 0xE400000000000000) & 1) != 0)
    {
      v52 = *(v3 + *(type metadata accessor for GenerativeExperiencesPromptTags(0) + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_12_3() | 0x6D614E6C00000000;
      v27 = a1 == v26 && a2 == 0xE900000000000065;
      if (v27 || (OUTLINED_FUNCTION_59_0(v26, 0xE900000000000065) & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesPromptTags(0);
        v22 = result[10];
        goto LABEL_16;
      }

      v28 = OUTLINED_FUNCTION_12_3() | 0x7265566C00000000;
      v30 = a1 == v28 && a2 == v29;
      if (v30 || (OUTLINED_FUNCTION_59_0(v28, v29) & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesPromptTags(0);
        v22 = result[11];
        goto LABEL_16;
      }

      v31 = a1 == 0xD000000000000015 && 0x8000000193A2B230 == a2;
      if (v31 || (v32 = OUTLINED_FUNCTION_31_6(), (OUTLINED_FUNCTION_59_0(v32, v33) & 1) != 0))
      {
        result = type metadata accessor for GenerativeExperiencesPromptTags(0);
        v22 = result[12];
        goto LABEL_16;
      }

      v34 = a1 == 0xD000000000000013 && 0x8000000193A2B250 == a2;
      if (v34 || (OUTLINED_FUNCTION_59_0(0xD000000000000013, 0x8000000193A2B250) & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesPromptTags(0);
        v22 = result[13];
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_14_39();
      v35 = OUTLINED_FUNCTION_15_40();
      v37 = a1 == v35 && a2 == v36;
      if (v37 || (OUTLINED_FUNCTION_59_0(v35, v36) & 1) != 0)
      {
        result = type metadata accessor for GenerativeExperiencesPromptTags(0);
        v38 = result[14];
      }

      else
      {
        v40 = a1 == 0xD000000000000015 && 0x8000000193A2BDD0 == a2;
        if (v40 || (v41 = OUTLINED_FUNCTION_31_6(), (OUTLINED_FUNCTION_59_0(v41, v42) & 1) != 0))
        {
          result = type metadata accessor for GenerativeExperiencesPromptTags(0);
          v22 = result[15];
          goto LABEL_16;
        }

        v43 = OUTLINED_FUNCTION_21_34();
        v44 = a1 == v43 && a2 == 0xE700000000000000;
        if (!v44 && (OUTLINED_FUNCTION_59_0(v43, 0xE700000000000000) & 1) == 0)
        {
          OUTLINED_FUNCTION_18_35();
          v45 = OUTLINED_FUNCTION_20_39();
          v47 = a1 == v45 && a2 == v46;
          if (!v47 && (OUTLINED_FUNCTION_59_0(v45, v46) & 1) == 0)
          {
            sub_19349AB64();
            swift_allocError();
            v49 = v48;
            *v48 = a1;
            v48[1] = a2;
            v48[5] = type metadata accessor for GenerativeExperiencesPromptTags(0);
            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v49 + 2);
            sub_1936776EC(v3, boxed_opaque_existential_1Tm);
            *(v49 + 48) = 1;
            swift_willThrow();
          }

          result = type metadata accessor for GenerativeExperiencesPromptTags(0);
          v22 = result[17];
          goto LABEL_16;
        }

        result = type metadata accessor for GenerativeExperiencesPromptTags(0);
        v38 = result[16];
      }

      v39 = v3 + v38;
      if (*(v39 + 4))
      {
        goto LABEL_8;
      }

      LODWORD(v52) = *v39;
    }

    return sub_1934948FC();
  }

  v18 = type metadata accessor for GenerativeExperiencesPromptTags(0);
  sub_193458F7C(v3 + *(v18 + 28), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_19344E6DC(v9, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_8:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  (*(v12 + 32))(v16, v9, v10);
  sub_1934948FC();
  return (*(v12 + 8))(v16, v10);
}

uint64_t GenerativeExperiencesPromptTags.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeExperiencesPromptTags(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B7DC();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v17 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = (a1 + v2[12]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = a1 + v2[14];
  sub_1934E3F94();
  v8 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = a1 + v2[16];
  sub_193656664();
  v10 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_193679924();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v11);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_193442B60(a1 + v5, &qword_1EAE3AA88, &qword_19394F9C0);
  v12 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v12);

  *v6 = 0;
  v6[1] = 0;

  *(a1 + v2[9]) = MEMORY[0x1E69E7CC0];
  *v17 = 0;
  v17[1] = 0;

  *v16 = 0;
  v16[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  *v7 = 0;
  v7[4] = 1;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[4] = 1;
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t static GenerativeExperiencesPromptTags.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v72 - v15;
  v17 = type metadata accessor for GenerativeExperiencesPromptTags(0);
  v18 = *(v17 + 28);
  v19 = *(v14 + 56);
  sub_193458F7C(a1 + v18, v16);
  sub_193458F7C(a2 + v18, &v16[v19]);
  OUTLINED_FUNCTION_31(v16);
  if (!v20)
  {
    sub_193458F7C(v16, v12);
    OUTLINED_FUNCTION_31(&v16[v19]);
    if (!v20)
    {
      (*(v6 + 32))(v9, &v16[v19], v4);
      sub_193678F88(&qword_1ED5029B8, MEMORY[0x1E69695C8]);
      v22 = sub_19393C550();
      v23 = *(v6 + 8);
      v23(v9, v4);
      v23(v12, v4);
      sub_193442B60(v16, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v6 + 8))(v12, v4);
LABEL_9:
    sub_193442B60(v16, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v16[v19]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_193442B60(v16, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_13:
  OUTLINED_FUNCTION_3();
  if (v26)
  {
    if (!v24)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v25);
    v29 = v20 && v27 == v28;
    if (!v29 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (sub_19344FC94(*(a1 + *(v17 + 36)), *(a2 + *(v17 + 36))))
  {
    OUTLINED_FUNCTION_3();
    if (v32)
    {
      if (!v30)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v31);
      v35 = v20 && v33 == v34;
      if (!v35 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v30)
    {
      return 0;
    }

    OUTLINED_FUNCTION_3();
    if (v38)
    {
      if (!v36)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v37);
      v41 = v20 && v39 == v40;
      if (!v41 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v36)
    {
      return 0;
    }

    OUTLINED_FUNCTION_3();
    if (v44)
    {
      if (!v42)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v43);
      v47 = v20 && v45 == v46;
      if (!v47 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v42)
    {
      return 0;
    }

    OUTLINED_FUNCTION_3();
    if (v50)
    {
      if (!v48)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v49);
      v53 = v20 && v51 == v52;
      if (!v53 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v48)
    {
      return 0;
    }

    OUTLINED_FUNCTION_49_2();
    if (v55)
    {
      if (!v54)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_258();
      if (v56)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_3();
    if (v59)
    {
      if (!v57)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5(v58);
      v62 = v20 && v60 == v61;
      if (!v62 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v57)
    {
      return 0;
    }

    OUTLINED_FUNCTION_49_2();
    if (v64)
    {
      if (!v63)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_258();
      if (v65)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_3();
    if (v68)
    {
      if (v66)
      {
        OUTLINED_FUNCTION_5(v67);
        v71 = v20 && v69 == v70;
        if (v71 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v66)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t GenerativeExperiencesPromptTags.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for GenerativeExperiencesPromptTags(0);
  sub_193458F7C(v2 + v13[7], v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v6 + 32))(v9, v12, v4);
    OUTLINED_FUNCTION_103_0();
    sub_193678F88(&qword_1EAE3AD68, MEMORY[0x1E69695B8]);
    sub_19393C540();
    (*(v6 + 8))(v9, v4);
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934D11C8(a1, *(v2 + v13[9]));
  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v14 = (v2 + v13[14]);
  if (*(v14 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v4 = *v14;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v2 + v13[16] + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (!*(v2 + v13[17] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_193678F88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_19393BE60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_193678FCC()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABB10);
  __swift_project_value_buffer(v0, qword_1EAEABB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1939526F0;
  v4 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v4 = "itemId";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_3_1(v38 + v3 + v2);
  *v9 = 2;
  *v8 = "usecaseId";
  v8[1] = 9;
  v10 = OUTLINED_FUNCTION_41(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v38 + v3 + 2 * v2);
  *v12 = 3;
  *v11 = "tags";
  v11[1] = 4;
  v13 = OUTLINED_FUNCTION_41(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v38 + v3 + 3 * v2);
  *v15 = 4;
  *v14 = "modelName";
  v14[1] = 9;
  v16 = OUTLINED_FUNCTION_41(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v38 + v3 + 4 * v2);
  *v18 = 5;
  *v17 = "modelVersion";
  v17[1] = 12;
  v19 = OUTLINED_FUNCTION_41(v17);
  (v7)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v38 + v3 + 5 * v2);
  *v21 = 6;
  *v20 = "userInterfaceLanguage";
  v20[1] = 21;
  v22 = OUTLINED_FUNCTION_41(v20);
  (v7)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v38 + v3 + 6 * v2);
  *v24 = 7;
  *v23 = "userSetRegionFormat";
  v23[1] = 19;
  v25 = OUTLINED_FUNCTION_41(v23);
  (v7)(v25);
  v26 = OUTLINED_FUNCTION_3_1(v38 + v3 + 7 * v2);
  *v27 = 8;
  *v26 = "alignmentGrade";
  v26[1] = 14;
  v28 = OUTLINED_FUNCTION_41(v26);
  (v7)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v38 + v3 + 8 * v2);
  *v30 = 9;
  *v29 = "alignmentModelVersion";
  v29[1] = 21;
  v31 = OUTLINED_FUNCTION_41(v29);
  (v7)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v38 + v3 + 9 * v2);
  *v33 = 10;
  *v32 = "siGrade";
  v32[1] = 7;
  v34 = OUTLINED_FUNCTION_41(v32);
  (v7)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v38 + v3 + 10 * v2);
  *v36 = 11;
  *v35 = "siModelVersion";
  *(v35 + 8) = 14;
  *(v35 + 16) = 2;
  (v7)();
  return sub_19393C410();
}

uint64_t sub_193679348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    result = sub_19393C0E0();
    if (v5 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v8 = type metadata accessor for GenerativeExperiencesPromptTags(0);
        sub_193497890(v3 + *(v8 + 28));
        goto LABEL_18;
      case 2:
        v9 = *(type metadata accessor for GenerativeExperiencesPromptTags(0) + 32);
        goto LABEL_17;
      case 3:
        v11 = type metadata accessor for GenerativeExperiencesPromptTags(0);
        OUTLINED_FUNCTION_4_55(*(v11 + 36));
        sub_19393C1B0();
        goto LABEL_18;
      case 4:
        v9 = *(type metadata accessor for GenerativeExperiencesPromptTags(0) + 40);
        goto LABEL_17;
      case 5:
        v9 = *(type metadata accessor for GenerativeExperiencesPromptTags(0) + 44);
        goto LABEL_17;
      case 6:
        v9 = *(type metadata accessor for GenerativeExperiencesPromptTags(0) + 48);
        goto LABEL_17;
      case 7:
        v9 = *(type metadata accessor for GenerativeExperiencesPromptTags(0) + 52);
        goto LABEL_17;
      case 8:
        v10 = *(type metadata accessor for GenerativeExperiencesPromptTags(0) + 56);
        goto LABEL_11;
      case 9:
        v9 = *(type metadata accessor for GenerativeExperiencesPromptTags(0) + 60);
        goto LABEL_17;
      case 10:
        v10 = *(type metadata accessor for GenerativeExperiencesPromptTags(0) + 64);
LABEL_11:
        OUTLINED_FUNCTION_4_55(v10);
        sub_19393C170();
        goto LABEL_18;
      case 11:
        v9 = *(type metadata accessor for GenerativeExperiencesPromptTags(0) + 68);
LABEL_17:
        OUTLINED_FUNCTION_4_55(v9);
        sub_19393C200();
LABEL_18:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_1936794B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_193679670(v3);
  if (!v4)
  {
    v5 = type metadata accessor for GenerativeExperiencesPromptTags(0);
    OUTLINED_FUNCTION_16_4();
    if (v6)
    {
      OUTLINED_FUNCTION_2_7(*v7, v6, 2);
    }

    if (*(*(v3 + v5[9]) + 16))
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C380();
    }

    OUTLINED_FUNCTION_16_4();
    if (v8)
    {
      OUTLINED_FUNCTION_2_7(*v9, v8, 4);
    }

    OUTLINED_FUNCTION_16_4();
    if (v10)
    {
      OUTLINED_FUNCTION_2_7(*v11, v10, 5);
    }

    OUTLINED_FUNCTION_16_4();
    if (v12)
    {
      OUTLINED_FUNCTION_2_7(*v13, v12, 6);
    }

    OUTLINED_FUNCTION_16_4();
    if (v14)
    {
      OUTLINED_FUNCTION_2_7(*v15, v14, 7);
    }

    if ((*(v3 + v5[14] + 4) & 1) == 0)
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_16_4();
    if (v16)
    {
      OUTLINED_FUNCTION_2_7(*v17, v16, 9);
    }

    if ((*(v3 + v5[16] + 4) & 1) == 0)
    {
      OUTLINED_FUNCTION_15_11();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_16_4();
    if (v18)
    {
      OUTLINED_FUNCTION_2_7(*v19, v18, 11);
    }
  }
}

uint64_t sub_193679670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v11 - v3;
  v5 = sub_19393BE60();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeExperiencesPromptTags(0);
  sub_193458F7C(a1 + *(v9 + 28), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_193458FEC(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_19344652C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_193679820(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3FCB8;

  return v1;
}

uint64_t sub_193679864@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77BF0 != -1)
  {
    OUTLINED_FUNCTION_1_59(&qword_1EAE77BF0);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABB10);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t GenerativeExperiencesPromptTags.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for GenerativeExperiencesPromptTags(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for GenerativeExperiencesPromptTags(uint64_t a1)
{
  result = qword_1ED50D880;
  if (!qword_1ED50D880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeExperiencesPromptTags.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for GenerativeExperiencesPromptTags(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t GenerativeExperiencesPromptTags.itemId.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for GenerativeExperiencesPromptTags(v2);
  return sub_19344865C(v1 + *(v3 + 28), v0, &qword_1EAE3AA88, &qword_19394F9C0);
}

uint64_t GenerativeExperiencesPromptTags.usecaseId.getter()
{
  type metadata accessor for GenerativeExperiencesPromptTags(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.usecaseId.setter()
{
  OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.tags.getter()
{
  type metadata accessor for GenerativeExperiencesPromptTags(0);
}

uint64_t GenerativeExperiencesPromptTags.tags.setter()
{
  v2 = *(OUTLINED_FUNCTION_7_36() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.modelName.getter()
{
  type metadata accessor for GenerativeExperiencesPromptTags(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.modelName.setter()
{
  OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.modelVersion.getter()
{
  type metadata accessor for GenerativeExperiencesPromptTags(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.modelVersion.setter()
{
  OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.userInterfaceLanguage.getter()
{
  type metadata accessor for GenerativeExperiencesPromptTags(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.userInterfaceLanguage.setter()
{
  OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.userSetRegionFormat.getter()
{
  type metadata accessor for GenerativeExperiencesPromptTags(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.userSetRegionFormat.setter()
{
  OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.alignmentModelVersion.getter()
{
  type metadata accessor for GenerativeExperiencesPromptTags(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.alignmentModelVersion.setter()
{
  OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.siModelVersion.getter()
{
  type metadata accessor for GenerativeExperiencesPromptTags(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GenerativeExperiencesPromptTags.siModelVersion.setter()
{
  OUTLINED_FUNCTION_2_59();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenerativeExperiencesPromptTags.hashValue.getter()
{
  sub_19393CAB0();
  GenerativeExperiencesPromptTags.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19367A22C(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeExperiencesPromptTags.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_19367A26C()
{
  result = qword_1EAE3FCC8;
  if (!qword_1EAE3FCC8)
  {
    type metadata accessor for GenerativeExperiencesPromptTags(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FCC8);
  }

  return result;
}

uint64_t sub_19367A2F0(uint64_t a1)
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v3 & v2))
  {
    sub_19349D198(319);
    OUTLINED_FUNCTION_4_0();
    if (!(!v3 & v2))
    {
      sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
      OUTLINED_FUNCTION_4_0();
      if (!(!v3 & v2))
      {
        OUTLINED_FUNCTION_5_55(v4, &qword_1ED508290, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_4_0();
        if (!(!v3 & v2))
        {
          sub_19367A478(319, qword_1ED507ED8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          if (v6 > 0x3F)
          {
            return v5;
          }

          OUTLINED_FUNCTION_5_55(v5, &qword_1ED508058, MEMORY[0x1E69E72F0]);
          if (v7 > 0x3F)
          {
            return v5;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}