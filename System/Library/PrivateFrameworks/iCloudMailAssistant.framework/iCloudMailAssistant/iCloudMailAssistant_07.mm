unint64_t sub_214947350()
{
  result = qword_281191878;
  if (!qword_281191878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191878);
  }

  return result;
}

unint64_t sub_2149473A4()
{
  result = qword_27CA1C8B0;
  if (!qword_27CA1C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8B0);
  }

  return result;
}

unint64_t sub_2149473F8()
{
  result = qword_27CA1C8C0;
  if (!qword_27CA1C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8C0);
  }

  return result;
}

unint64_t sub_21494744C()
{
  result = qword_281191560;
  if (!qword_281191560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191560);
  }

  return result;
}

unint64_t sub_2149474D4()
{
  result = qword_27CA1C8D0;
  if (!qword_27CA1C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8D0);
  }

  return result;
}

unint64_t sub_21494752C()
{
  result = qword_27CA1C8D8;
  if (!qword_27CA1C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8D8);
  }

  return result;
}

unint64_t sub_214947584()
{
  result = qword_27CA1C8E0;
  if (!qword_27CA1C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8E0);
  }

  return result;
}

unint64_t sub_2149475DC()
{
  result = qword_281191550;
  if (!qword_281191550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191550);
  }

  return result;
}

unint64_t sub_214947634()
{
  result = qword_281191558;
  if (!qword_281191558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191558);
  }

  return result;
}

unint64_t sub_21494768C()
{
  result = qword_27CA1C8E8;
  if (!qword_27CA1C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8E8);
  }

  return result;
}

unint64_t sub_2149476E4()
{
  result = qword_27CA1C8F0;
  if (!qword_27CA1C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8F0);
  }

  return result;
}

unint64_t sub_21494773C()
{
  result = qword_27CA1C8F8;
  if (!qword_27CA1C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C8F8);
  }

  return result;
}

unint64_t sub_214947794()
{
  result = qword_27CA1C900;
  if (!qword_27CA1C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C900);
  }

  return result;
}

uint64_t sub_2149477FC()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_214947844()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v33[-v2];
  v37 = sub_21498E1B0();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21498E690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  BulkActionJobsAPIRequest = type metadata accessor for GetBulkActionJobsAPIRequest(0);
  v39.receiver = v0;
  v39.super_class = BulkActionJobsAPIRequest;
  v12 = objc_msgSendSuper2(&v39, sel_urlString);
  v13 = sub_21498F870();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v37;
  }

  else
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v7, qword_281194E18);
    v19 = v8;
    v20 = v7;
    v21 = *(v8 + 16);
    v22 = v10;
    v35 = v20;
    v21(v10, v18);
    v23 = v0;
    v24 = sub_21498E670();
    v25 = sub_21498FBD0();
    v36 = v23;

    v26 = v24;
    v34 = v25;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_2149079F4(0xD000000000000032, 0x80000002149A3020, v38);
      *(v27 + 12) = 2080;

      v29 = sub_2149079F4(v13, v15, v38);

      *(v27 + 14) = v29;
      _os_log_impl(&dword_21488E000, v26, v34, "Using fallback url for %s: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v28, -1, -1);
      MEMORY[0x216059AC0](v27, -1, -1);
    }

    (*(v19 + 8))(v22, v35);
    v17 = v37;
    v38[0] = sub_21498DE14();
    v38[1] = v30;

    MEMORY[0x2160589C0](0xD000000000000015, 0x80000002149A3060);
  }

  sub_21498E1A0();

  result = (*(v4 + 48))(v3, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v3, v17);
    v32 = sub_21498E130();
    (*(v4 + 8))(v6, v17);

    return v32;
  }

  return result;
}

id sub_214947CB4(void *a1)
{
  v1 = a1;
  sub_214947844();

  v2 = sub_21498F840();

  return v2;
}

id sub_214947D1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetBulkActionJobsAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetBulkActionJobsAPIRequest(uint64_t a1)
{
  result = qword_27CA1C908;
  if (!qword_27CA1C908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214947DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1935830890 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214947E50(uint64_t a1)
{
  v2 = sub_214948078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214947E8C(uint64_t a1)
{
  v2 = sub_214948078();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_214947EC8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_214947EF4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_214947EF4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C918, &qword_21499C748);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214948078();
  sub_2149901B0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF10, &unk_2149990C0);
    sub_214904614();
    sub_21498FFA0();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_214948078()
{
  result = qword_27CA1C920;
  if (!qword_27CA1C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C920);
  }

  return result;
}

unint64_t sub_2149480E0()
{
  result = qword_27CA1C928;
  if (!qword_27CA1C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C928);
  }

  return result;
}

unint64_t sub_214948138()
{
  result = qword_27CA1C930;
  if (!qword_27CA1C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C930);
  }

  return result;
}

unint64_t sub_214948190()
{
  result = qword_27CA1C938;
  if (!qword_27CA1C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C938);
  }

  return result;
}

uint64_t sub_2149481E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v69 = a1;
  v4 = sub_21498E690();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21498E6C0();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v56 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v61 = (&v56 - v9);
  v58 = sub_21498E730();
  v67 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v65 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C970, &qword_21499C980);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  v15 = sub_21498E910();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v57 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v64 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = (&v56 - v21);
  v23 = *(v16 + 16);
  v23(&v56 - v21, v3, v15);
  v24 = (*(v16 + 88))(v22, v15);
  if (v24 == *MEMORY[0x277D23358])
  {
    (*(v16 + 96))(v22, v15);
    v25 = swift_projectBox();
    (*(v12 + 16))(v14, v25, v11);
    sub_21498E750();
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v27 = v69;
    if (v24 == *MEMORY[0x277D23350])
    {
      (*(v16 + 96))(v22, v15);
      v28 = *v22;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C978, &qword_21499C988);
      v66 = v28;
      v30 = swift_projectBox();
      v31 = *(v29 + 48);
      v32 = *(v29 + 64);
      v23(v64, v30, v15);
      v33 = v30 + v31;
      v34 = v58;
      (*(v67 + 16))(v65, v33, v58);
      v35 = v30 + v32;
      v36 = v57;
      v23(v57, v35, v15);
      v37 = v61;
      v38 = v27;
      v39 = v70;
      sub_2149481E4(v27, v61);
      if (v39)
      {
        v49 = *(v16 + 8);
        v49(v36, v15);
        (*(v67 + 8))(v65, v34);
      }

      else
      {
        v47 = v56;
        sub_2149481E4(v38, v56);
        v48 = (v62 + 8);
        v50 = v37;
        v51 = v65;
        sub_214949978(v50, v47, v68);
        v52 = *v48;
        v53 = v47;
        v54 = v34;
        v55 = v63;
        (*v48)(v53, v63);
        v52(v61, v55);
        v49 = *(v16 + 8);
        v49(v36, v15);
        (*(v67 + 8))(v51, v54);
      }

      v49(v64, v15);
    }

    else
    {
      v40 = v68;
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v41 = v60;
      v42 = __swift_project_value_buffer(v60, qword_281194E18);
      v43 = v59;
      (*(v59 + 16))(v66, v42, v41);
      v44 = sub_21498E670();
      v45 = sub_21498FBB0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_21488E000, v44, v45, "NumericResolvable has unknown case", v46, 2u);
        MEMORY[0x216059AC0](v46, -1, -1);
      }

      (*(v43 + 8))(v66, v41);
      *v40 = 0;
      (*(v62 + 104))(v40, *MEMORY[0x277D231B8], v63);
      return (*(v16 + 8))(v22, v15);
    }
  }
}

uint64_t sub_214948908(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498E690();
  MEMORY[0x28223BE20](v2);
  v3 = sub_21498E7C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21498E6B0();
  sub_21498E8A0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214948C20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 0x636E657265666572;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 0x636E657265666572;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_214990080();
  }

  return v8 & 1;
}

uint64_t sub_214948CC8()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214948D4C(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_214948DBC(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214948E3C@<X0>(char *a2@<X8>)
{
  v3 = sub_21498FEF0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_214948E9C(uint64_t *a1@<X8>)
{
  v2 = 0x636E657265666572;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_214948EDC()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x636E657265666572;
  }
}

uint64_t sub_214948F18@<X0>(char *a3@<X8>)
{
  v4 = sub_21498FEF0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_214948F7C(uint64_t a1)
{
  v2 = sub_21494AC9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214948FB8(uint64_t a1)
{
  v2 = sub_21494AC9C();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_214948FF4(void *a1)
{
  v28 = *v1;
  v3 = sub_21498E910();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C988, &qword_21499DB80);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v25 = v19 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C990, &qword_21499C9A0);
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21494AC9C();
  v11 = v26;
  sub_2149901B0();
  if (v11)
  {
    swift_deallocPartialClassInstance();
    v18 = a1;
  }

  else
  {
    v26 = v8;
    v12 = v23;
    sub_2148994D0(a1, v27);
    sub_21498E7C0();
    sub_21494ACF0(&qword_27CA1A550, MEMORY[0x277D232B0], MEMORY[0x277D232C0]);
    sub_21498E740();
    v13 = *(v12 + 32);
    v19[1] = OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_reference;
    v20 = a1;
    v13(v1 + OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_reference, v25, v6);
    v27[0] = 1;
    sub_21494ACF0(&qword_27CA1C9A0, MEMORY[0x277D23360], MEMORY[0x277D23368]);
    v14 = v5;
    v15 = v22;
    v16 = v26;
    sub_21498FFA0();
    (*(v24 + 8))(v10, v16);
    (*(v21 + 32))(v1 + OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_value, v14, v15);
    v18 = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v1;
}

uint64_t sub_21494941C()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_reference;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C988, &qword_21499DB80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19iCloudMailAssistant13MathSetAction_value;
  v4 = sub_21498E910();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MathSetAction(uint64_t a1)
{
  result = qword_27CA1C940;
  if (!qword_27CA1C940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214949558(uint64_t a1)
{
  sub_214949624(319);
  if (v1 <= 0x3F)
  {
    sub_21498E910();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_214949624(uint64_t a1)
{
  if (!qword_27CA1C950)
  {
    sub_21498E7C0();
    sub_21494ACF0(&qword_27CA1A550, MEMORY[0x277D232B0], MEMORY[0x277D232C0]);
    v1 = sub_21498E770();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1C950);
    }
  }
}

uint64_t sub_2149496B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899138;

  return sub_21494A578(a1);
}

char *sub_214949890@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_214948FF4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_214949978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v5 = sub_21498E6C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C980, &unk_21499C990);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  v13 = *(v10 + 56);
  v14 = *(v6 + 16);
  v26[0] = a1;
  v14(v26 - v11, a1, v5);
  v26[1] = a2;
  v14(&v12[v13], a2, v5);
  v15 = *(v6 + 88);
  v16 = v15(v12, v5);
  if (v16 == *MEMORY[0x277D231B8] && (v17 = v16, v14(v8, v12, v5), v18 = *(v6 + 96), v18(v8, v5), v19 = *v8, v15(&v12[v13], v5) == v17))
  {
    v18(&v12[v13], v5);
    v20 = sub_214949C2C(v19, *&v12[v13]);
    v21 = v27;
    *v27 = v20;
    (*(v6 + 104))(v21, v17, v5);
    return (*(v6 + 8))(v12, v5);
  }

  else
  {
    v23 = sub_214949F88();
    v24 = sub_214949F88();
    sub_21494A264(v23, v24);
    *v27 = v25;
    (*(v6 + 104))();
    return sub_21489DFCC(v12, &qword_27CA1C980, &unk_21499C990);
  }
}

uint64_t sub_214949C2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21498E730();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v3, v10);
  result = (*(v11 + 88))(v13, v10);
  if (result == *MEMORY[0x277D23208])
  {
    result = a1 + a2;
    if (!__OFADD__(a1, a2))
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277D23228])
  {
    result = a1 - a2;
    if (!__OFSUB__(a1, a2))
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277D23220])
  {
    result = a1 * a2;
    if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277D23218])
  {
    if (a2)
    {
      if (a1 != 0x8000000000000000 || a2 != -1)
      {
        return a1 / a2;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result == *MEMORY[0x277D23210])
  {
    if (a2)
    {
      if (a1 != 0x8000000000000000 || a2 != -1)
      {
        return a1 % a2;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (qword_281190DA0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v7 + 16))(v9, v15, v6);
  v16 = sub_21498E670();
  v17 = sub_21498FBB0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21488E000, v16, v17, "MathOperation has unknown case", v18, 2u);
    MEMORY[0x216059AC0](v18, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  return 0;
}

double sub_214949F88()
{
  v1 = v0;
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21498E6C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D231B8])
  {
    (*(v7 + 96))(v9, v6);
    return *v9;
  }

  else if (v10 == *MEMORY[0x277D231C0])
  {
    (*(v7 + 96))(v9, v6);
    return *v9;
  }

  else
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_281194E18);
    (*(v3 + 16))(v5, v12, v2);
    v13 = sub_21498E670();
    v14 = sub_21498FBB0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21488E000, v13, v14, "NumericValue has unknown case", v15, 2u);
      MEMORY[0x216059AC0](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
    return 0.0;
  }
}

void sub_21494A264(long double a1, long double a2)
{
  v3 = v2;
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21498E730();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v3, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 != *MEMORY[0x277D23208] && v14 != *MEMORY[0x277D23228] && v14 != *MEMORY[0x277D23220] && v14 != *MEMORY[0x277D23218])
  {
    if (v14 == *MEMORY[0x277D23210])
    {
      fmod(a1, a2);
    }

    else
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v6, qword_281194E18);
      (*(v7 + 16))(v9, v15, v6);
      v16 = sub_21498E670();
      v17 = sub_21498FBB0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_21488E000, v16, v17, "MathOperation has unknown case", v18, 2u);
        MEMORY[0x216059AC0](v18, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      (*(v11 + 8))(v13, v10);
    }
  }
}

uint64_t sub_21494A578(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_21498E690();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_21498F510();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_21498F540();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C968, &unk_21499C970);
  v2[20] = swift_task_alloc();
  v6 = sub_21498E6C0();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v2[23] = *(v7 + 64);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494A798, 0, 0);
}

uint64_t sub_21494A798()
{
  sub_2149481E4(v0[9], v0[20]);
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[21];
  v14 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v19 = v0[15];
  v16 = v0[16];
  v17 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  (*(v3 + 56))(v4, 0, 1, v5);
  v8 = *(v3 + 32);
  v18 = v2;
  v8(v2, v4, v5);
  sub_2148FFDCC();
  v15 = sub_21498FC20();
  (*(v3 + 16))(v1, v2, v5);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  v8(v10 + v9, v1, v5);
  v0[6] = sub_21494AC20;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2148A457C;
  v0[5] = &block_descriptor_5;
  v11 = _Block_copy(v0 + 2);

  sub_21498F530();
  v0[8] = MEMORY[0x277D84F90];
  sub_21494ACF0(&qword_281190D90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_214925D6C();
  sub_21498FD60();
  MEMORY[0x216058CD0](0, v14, v16, v11);
  _Block_release(v11);

  (*(v19 + 8))(v16, v17);
  (*(v20 + 8))(v14, v21);
  (*(v3 + 8))(v18, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_21494AC20()
{
  sub_21498E6C0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_214948908(v1, v2);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21494AC9C()
{
  result = qword_27CA1C998;
  if (!qword_27CA1C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C998);
  }

  return result;
}

uint64_t sub_21494ACF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21494AD4C()
{
  result = qword_27CA1C9A8;
  if (!qword_27CA1C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9A8);
  }

  return result;
}

unint64_t sub_21494ADA4()
{
  result = qword_27CA1C9B0;
  if (!qword_27CA1C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9B0);
  }

  return result;
}

unint64_t sub_21494ADFC()
{
  result = qword_27CA1C9B8;
  if (!qword_27CA1C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9B8);
  }

  return result;
}

uint64_t sub_21494AE50()
{
  v1 = v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  v2 = type metadata accessor for MailCleanupState(0);
  v3 = *(*(v1 + *(v2 + 48)) + 16) != 0;
  v4 = *(v1 + *(v2 + 44));
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

  v13 = v3;

  v7 = 0;
  v8 = (v4 + 88);
  while (v7 < *(v4 + 16))
  {
    v9 = *v8;
    if (*(v8 - 24) && *(v8 - 24) == 1)
    {
    }

    else
    {
      v10 = sub_214990080();

      if ((v10 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (!*(v9 + 16))
    {
LABEL_3:

      goto LABEL_4;
    }

    v11 = *(v9 + 80);

    if (v11)
    {
      v12 = *(v11 + 16);

      if (v12)
      {
        v3 = 1;
LABEL_15:

        return v3;
      }
    }

LABEL_4:
    ++v7;
    v8 += 14;
    if (v5 == v7)
    {
      v3 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21494B028(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailCleanupState(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  sub_2148E5F5C(a1, v9, type metadata accessor for MailCleanupState);
  v15 = sub_21498E670();
  v16 = sub_21498FBA0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v10;
    v20 = v19;
    v33[0] = v19;
    *v18 = 136315138;
    v31 = a1;
    sub_2148E5F5C(v9, v7, type metadata accessor for MailCleanupState);
    v21 = sub_21498F8D0();
    v32 = v7;
    v22 = v2;
    v24 = v23;
    sub_214950444(v9, type metadata accessor for MailCleanupState);
    v25 = sub_2149079F4(v21, v24, v33);
    v2 = v22;
    v7 = v32;

    *(v18 + 4) = v25;
    a1 = v31;
    _os_log_impl(&dword_21488E000, v15, v16, "[ProviderModel] stateDidChange(%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x216059AC0](v20, -1, -1);
    MEMORY[0x216059AC0](v18, -1, -1);

    (*(v30 + 8))(v13, v29);
  }

  else
  {

    sub_214950444(v9, type metadata accessor for MailCleanupState);
    (*(v11 + 8))(v13, v10);
  }

  sub_2148E5F5C(a1, v7, type metadata accessor for MailCleanupState);
  v26 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  sub_214950398(v7, v2 + v26);
  swift_endAccess();
  return sub_21494CF34();
}

uint64_t sub_21494B3A8(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 81) = a2;
  *(v3 + 80) = a1;
  v4 = sub_21498E690();
  *(v3 + 24) = v4;
  *(v3 + 32) = *(v4 - 8);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494B47C, 0, 0);
}

uint64_t sub_21494B47C()
{
  v35 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 48);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  if (v8)
  {
    v32 = v5;
    v12 = *(v0 + 80);
    v31 = *(v0 + 48);
    v13 = swift_slowAlloc();
    v33 = v4;
    v34 = swift_slowAlloc();
    v14 = v34;
    *v13 = 136315138;
    if (v12)
    {
      v15 = 0x646563726F66;
    }

    else
    {
      v15 = 0;
    }

    if (v12)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_2149079F4(v15, v16, &v34);
    v5 = v32;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_21488E000, v6, v7, "[ProviderModel] sync(%s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v18 = v14;
    v4 = v33;
    MEMORY[0x216059AC0](v18, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);

    v19 = *(v10 + 8);
    v19(v31, v11);
  }

  else
  {

    v19 = *(v10 + 8);
    v19(v9, v11);
  }

  v20 = off_2826CD670;
  type metadata accessor for NetworkStatusProvider(0);
  if (v20())
  {
    v21 = *(v0 + 16);
    if (*(v21 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_shouldSyncWhenOnline) == 1)
    {
      *(v21 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_shouldSyncWhenOnline) = 0;
    }

    v22 = swift_task_alloc();
    *(v0 + 56) = v22;
    *v22 = v0;
    v22[1] = sub_21494B814;

    return sub_21494FA90();
  }

  else
  {
    v5(*(v0 + 40), v4, *(v0 + 24));
    v24 = sub_21498E670();
    v25 = sub_21498FBA0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21488E000, v24, v25, "[ProviderModel] sync - offline - sync is deferred...", v26, 2u);
      MEMORY[0x216059AC0](v26, -1, -1);
    }

    v27 = *(v0 + 40);
    v29 = *(v0 + 16);
    v28 = *(v0 + 24);

    v19(v27, v28);
    *(v29 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_shouldSyncWhenOnline) = 1;

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_21494B814(uint64_t a1)
{
  v2 = *v1;
  v7 = *v1;
  *(v2 + 64) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v7;
  v3[1] = sub_21494B950;
  v4 = *(v2 + 81);
  v5 = *(v2 + 80);

  return sub_21496D6C4(v5, v4);
}

uint64_t sub_21494B950()
{

  return MEMORY[0x2822009F8](sub_21494BA4C, 0, 0);
}

uint64_t sub_21494BA4C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_21494BABC@<X0>(void (*a1)(char *, uint64_t)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v101 = a3;
  v97 = a1;
  v88 = a5;
  v91 = type metadata accessor for MailCleanupState(0);
  MEMORY[0x28223BE20](v91);
  v82 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v84 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v80 - v13;
  v14 = sub_21498E320();
  v15 = *(v14 - 8);
  v92 = v14;
  v93 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v81 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v80 - v18;
  v20 = sub_21498E690();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v80 = &v80 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v89 = &v80 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v80 - v28;
  if (qword_281190DA0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v30 = __swift_project_value_buffer(v20, qword_281194E18);
    v31 = *(v21 + 16);
    v94 = v30;
    v95 = v31;
    v96 = v21 + 16;
    (v31)(v29);

    v32 = sub_21498E670();
    v33 = sub_21498FBA0();

    v34 = os_log_type_enabled(v32, v33);
    v98 = v6;
    v85 = v19;
    v100 = a4;
    v90 = a2;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v104[0] = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_2149079F4(v97, a2, v104);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2149079F4(v101, a4, v104);
      _os_log_impl(&dword_21488E000, v32, v33, "[ProviderModel] getTip(%s, %s)", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v36, -1, -1);
      v37 = v35;
      v6 = v98;
      MEMORY[0x216059AC0](v37, -1, -1);
    }

    v38 = *(v21 + 8);
    v38(v29, v20);
    v39 = v21;
    v40 = v89;
    v95(v89, v94, v20);

    v41 = sub_21498E670();
    v42 = sub_21498FBA0();

    v43 = os_log_type_enabled(v41, v42);
    v99 = v20;
    v44 = v91;
    v87 = v39;
    if (v43)
    {
      v45 = v6;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v104[0] = v47;
      *v46 = 136315138;
      v48 = v40;
      v49 = v38;
      v50 = v45 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
      swift_beginAccess();
      LOBYTE(v103[0]) = *(v50 + *(v44 + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C9C0, qword_21499CBD0);
      v51 = sub_21498F8D0();
      v53 = sub_2149079F4(v51, v52, v104);
      v38 = v49;

      *(v46 + 4) = v53;
      _os_log_impl(&dword_21488E000, v41, v42, "[ProviderModel] getTip - consent: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x216059AC0](v47, -1, -1);
      MEMORY[0x216059AC0](v46, -1, -1);

      v49(v48, v99);
    }

    else
    {

      v38(v40, v99);
    }

    v55 = v92;
    v54 = v93;
    if ((v97 != 0x786F626E49 || v90 != 0xE500000000000000) && (sub_214990080() & 1) == 0)
    {
      goto LABEL_14;
    }

    v56 = v98 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
    swift_beginAccess();
    v57 = v56 + *(v44 + 20);
    v58 = v86;
    sub_2149051DC(v57, v86);
    v59 = *(v54 + 48);
    if (v59(v58, 1, v55) == 1)
    {
      sub_21489DFCC(v58, &qword_27CA1ABA0, &qword_214993E20);
      v60 = v83;
      v95(v83, v94, v99);
      v61 = sub_21498E670();
      v62 = sub_21498FBB0();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_21488E000, v61, v62, "[ProviderModel] getTip - dateFetched is nil", v63, 2u);
        MEMORY[0x216059AC0](v63, -1, -1);
      }

      v38(v60, v99);
LABEL_14:
      sub_2148DA328(v104);
      goto LABEL_25;
    }

    v97 = v38;
    v64 = *(v54 + 32);
    v65 = v85;
    v64(v85, v58, v55);
    v66 = v84;
    sub_214976218(v84);
    if (v59(v66, 1, v55) == 1)
    {
      sub_21489DFCC(v66, &qword_27CA1ABA0, &qword_214993E20);
      v21 = v93;
      v19 = v65;
    }

    else
    {
      v67 = v81;
      v64(v81, v66, v55);
      sub_2149503FC(&qword_2811926F0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v19 = v65;
      if ((sub_21498F820() & 1) == 0)
      {
        v73 = v80;
        v95(v80, v94, v99);
        v74 = sub_21498E670();
        v75 = sub_21498FBB0();
        v76 = os_log_type_enabled(v74, v75);
        v77 = v93;
        if (v76)
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_21488E000, v74, v75, "[ProviderModel] getTip - tips are marked stale", v78, 2u);
          MEMORY[0x216059AC0](v78, -1, -1);
        }

        v97(v73, v99);
        v79 = *(v77 + 8);
        v79(v81, v55);
        v79(v65, v55);
        goto LABEL_14;
      }

      v21 = v93;
      (*(v93 + 8))(v67, v55);
    }

    v68 = v82;
    sub_2148E5F5C(v56, v82, type metadata accessor for MailCleanupState);
    a4 = *v68;
    a2 = *(*v68 + 16);
    v6 = v98;
    if (!a2)
    {
      break;
    }

    v69 = 0;
    v20 = 0;
    v29 = (a4 + 32);
    while (v69 < *(a4 + 16))
    {
      memcpy(v104, v29, 0x179uLL);
      memcpy(v103, v29, 0x179uLL);
      sub_2148D8FC8(v104, v102);
      if (sub_21494C574(v103, v6, v101, v100))
      {
        (*(v21 + 8))(v19, v92);
        sub_214950444(v68, type metadata accessor for MailCleanupState);
        memcpy(v102, v103, 0x179uLL);
        nullsub_1();
        v71 = v102;
        return memcpy(v88, v71, 0x179uLL);
      }

      ++v69;
      memcpy(v102, v103, 0x179uLL);
      sub_2148F6AF8(v102);
      v29 += 384;
      if (a2 == v69)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_24:
  v70 = sub_2148DA328(v104);
  (*(v21 + 8))(v19, v92, v70);
  sub_214950444(v68, type metadata accessor for MailCleanupState);
LABEL_25:
  v71 = v104;
  return memcpy(v88, v71, 0x179uLL);
}

uint64_t sub_21494C574(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v6 = sub_21498E320();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MATipDismissal(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = a1[1];
  v59 = a1[46];
  v14 = *(a1 + 376);
  v15 = *(a2 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
  v16 = sub_21498F840();
  v17 = [v15 BOOLForKey_];

  if (v17 && (v12 == 0x5F544E45534E4F43 && v13 == 0xEB00000000504954 || (sub_214990080() & 1) != 0))
  {
    v18 = a2 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
    swift_beginAccess();
    v19 = *(v18 + *(type metadata accessor for MailCleanupState(0) + 36));
    if (v19 != 4 && (sub_214959884(v19, 2u) & 1) != 0)
    {
      goto LABEL_15;
    }
  }

  v20 = sub_21498F840();
  v21 = [v15 BOOLForKey_];

  if (v21)
  {
    *&v63[0] = v12;
    *(&v63[0] + 1) = v13;
    *&v61 = 0x5243534255534E55;
    *(&v61 + 1) = 0xEB00000000454249;
    sub_21489CA00();
    if (sub_21498FD30())
    {
      goto LABEL_15;
    }
  }

  v22 = sub_21498F840();
  v23 = [v15 BOOLForKey_];

  if (v23)
  {
    if ((v12 != 0x4F49544F4D4F5250 || v13 != 0xEE005049545F534ELL) && ((sub_214990080() | v14) & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    v24 = a2 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
    swift_beginAccess();
    result = type metadata accessor for MailCleanupState(0);
    v26 = 0;
    v27 = *(v24 + *(result + 24));
    v28 = *(v27 + 16);
    while (v28 != v26)
    {
      if (v26 >= *(v27 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      sub_2148E5F5C(v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, v11, type metadata accessor for MATipDismissal);
      if (*v11 == v12 && v11[1] == v13)
      {
        sub_214950444(v11, type metadata accessor for MATipDismissal);
        return 0;
      }

      ++v26;
      v30 = sub_214990080();
      result = sub_214950444(v11, type metadata accessor for MATipDismissal);
      if (v30)
      {
        return 0;
      }
    }

    if (v59)
    {
      v31 = *(v59 + 16);
      if (v31)
      {
        v32 = v59 + 40;
        v33 = -v31;
        v34 = -1;
        while (v33 + v34 != -1)
        {
          if (++v34 >= *(v59 + 16))
          {
            goto LABEL_59;
          }

          v35 = sub_21498F8E0();
          v37 = v36;
          if (v35 == sub_21498F8E0() && v37 == v38)
          {

            goto LABEL_37;
          }

          v32 += 16;
          v40 = sub_214990080();

          if (v40)
          {
            goto LABEL_37;
          }
        }

        return 0;
      }
    }

LABEL_37:
    if ((v12 != 0xD000000000000014 || 0x80000002149A31C0 != v13) && (sub_214990080() & 1) == 0)
    {
      return 1;
    }

    v41 = sub_21498F840();
    v42 = [v15 valueForKey_];

    if (v42)
    {
      sub_21498FD40();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63[0] = v61;
    v63[1] = v62;
    if (*(&v62 + 1))
    {
      if (swift_dynamicCast())
      {
        v43 = 0;
        v44 = v60;
        goto LABEL_48;
      }
    }

    else
    {
      sub_21489DFCC(v63, &qword_27CA1B878, qword_214996678);
    }

    v44 = 0;
    v43 = 1;
LABEL_48:
    v45 = sub_21498F840();
    v46 = [v15 BOOLForKey_];

    if (v43)
    {
      return 0;
    }

    v47 = v54;
    sub_21498E310();
    sub_21498E2E0();
    v49 = v48;
    v50 = v48;
    result = (*(v55 + 8))(v47, v56);
    if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_60:
      __break(1u);
    }

    else if (v49 > -9.22337204e18)
    {
      if (v49 < 9.22337204e18)
      {
        v51 = v49 - v44;
        if (!__OFSUB__(v49, v44))
        {
          if ((v51 & 0x8000000000000000) == 0)
          {
            return (v51 > 1295999) & (v46 ^ 1);
          }

          v52 = __OFSUB__(0, v51);
          v51 = v44 - v49;
          if (!v52)
          {
            return (v51 > 1295999) & (v46 ^ 1);
          }

          goto LABEL_64;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        return result;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_62;
  }

  if (v14)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t sub_21494CC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a2;
  v5 = v3 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  result = type metadata accessor for MailCleanupState(0);
  v7 = *(v5 + *(result + 44));
  v8 = *(v7 + 16);
  v9 = 0uLL;
  v36 = v8;
  if (v8)
  {
    v32 = a3;
    v10 = 0;
    v43 = v7 + 32;
    v35 = v7;
    while (v10 < *(v7 + 16))
    {
      v44 = v10;
      v11 = (v43 + 112 * v10);
      v13 = v11[1];
      v12 = v11[2];
      v50 = *v11;
      v51 = v13;
      v52 = v12;
      v15 = v11[5];
      v14 = v11[6];
      v16 = v11[4];
      *v53 = v11[3];
      *&v53[16] = v16;
      *&v53[32] = v15;
      *&v53[48] = v14;
      v41 = v52;
      v42 = v51;
      v39 = *&v53[24];
      v40 = *&v53[8];
      v37 = v50;
      v38 = *&v53[40];
      v17 = *v53;
      v18 = *(&v14 + 1);
      v19 = *&v53[8];
      v20 = *(*&v53[8] + 16);
      sub_2148D9164(&v50, v49);

      v47 = v20;
      if (v20)
      {
        v33 = v17;
        v34 = v18;
        v21 = 0;
        v22 = (v19 + 80);
        while (v21 < *(v19 + 16))
        {
          v23 = *v22;
          if (*v22)
          {
            v48 = &v31;
            v49[0] = v45;
            v49[1] = v46;
            MEMORY[0x28223BE20](result);
            *(&v31 - 2) = v49;

            swift_bridgeObjectRetain_n();

            v24 = sub_214923544(sub_2149504A4, (&v31 - 4), v23);

            result = swift_bridgeObjectRelease_n();
            if (v24)
            {

              v9 = v37;
              v25 = v38;
              a3 = v32;
              v26 = v33;
              v8 = v34;
              v28 = v41;
              v27 = v42;
              v30 = v39;
              v29 = v40;
              goto LABEL_13;
            }
          }

          ++v21;
          v22 += 7;
          if (v47 == v21)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        break;
      }

LABEL_3:
      v10 = v44 + 1;
      sub_2149504C4(&v50);

      v7 = v35;
      v9 = 0uLL;
      if (v10 == v36)
      {
        v26 = 0;
        v8 = 0;
        v27 = 0uLL;
        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v25 = 0uLL;
        a3 = v32;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = 0;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v25 = 0uLL;
LABEL_13:
    *a3 = v9;
    *(a3 + 16) = v27;
    *(a3 + 32) = v28;
    *(a3 + 48) = v26;
    *(a3 + 56) = v29;
    *(a3 + 72) = v30;
    *(a3 + 88) = v25;
    *(a3 + 104) = v8;
  }

  return result;
}

uint64_t sub_21494CF34()
{
  v0 = sub_21498F510();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21498F540();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21498E690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_281194E18);
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_21498E670();
  v13 = sub_21498FBA0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v5;
    v15 = v3;
    v16 = v0;
    v17 = v4;
    v18 = v1;
    v19 = v14;
    *v14 = 0;
    _os_log_impl(&dword_21488E000, v12, v13, "[ProviderModel] notifyDataChange() - mailCleanupDataDidChange", v14, 2u);
    v20 = v19;
    v1 = v18;
    v4 = v17;
    v0 = v16;
    v3 = v15;
    v5 = v26;
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2148FFDCC();
  v21 = sub_21498FC20();
  aBlock[4] = sub_214950378;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2148A457C;
  aBlock[3] = &block_descriptor_6;
  v22 = _Block_copy(aBlock);

  v23 = v28;
  sub_21498F530();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2149503FC(&qword_281190D90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_214925D6C();
  sub_21498FD60();
  MEMORY[0x216058CD0](0, v23, v3, v22);
  _Block_release(v22);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v23, v4);
}

void sub_21494D364(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_notificationCenter);
  v2 = sub_21498F840();
  [v1 postNotificationName:v2 object:0];
}

uint64_t sub_21494D3E0()
{
  v1[4] = v0;
  v2 = sub_21498E690();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494D4A0, 0, 0);
}

uint64_t sub_21494D4A0()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[ProviderModel] hydrateFromCache()", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_21494D628;

  return sub_21494FA90();
}

uint64_t sub_21494D628(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return MEMORY[0x2822009F8](sub_21494D728, 0, 0);
}

uint64_t sub_21494D728()
{
  if (qword_281191B88 != -1)
  {
    swift_once();
  }

  *(v0 + 72) = *(v0 + 24);
  v1 = qword_281194E50;

  return MEMORY[0x2822009F8](sub_21494D7C4, v1, 0);
}

uint64_t sub_21494D7C4()
{
  sub_21496C7C0();
  sub_2148E4100();

  return MEMORY[0x2822009F8](sub_21494D83C, 0, 0);
}

uint64_t sub_21494D83C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21494D8A8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = sub_21498E690();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494D978, 0, 0);
}

uint64_t sub_21494D978()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FB90();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 64);
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_21488E000, v6, v7, "[ProviderModel] onNetworkStatusChangeAsync(%{BOOL}d)", v9, 8u);
    MEMORY[0x216059AC0](v9, -1, -1);
  }

  v10 = *(v0 + 48);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 64);

  v14 = *(v12 + 8);
  v14(v10, v11);
  if (v13 == 1 && *(*(v0 + 16) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_shouldSyncWhenOnline) == 1)
  {
    v5(*(v0 + 40), v4, *(v0 + 24));
    v15 = sub_21498E670();
    v16 = sub_21498FB90();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21488E000, v15, v16, "[ProviderModel] onNetworkStatusChangeAsync - triggering previously deferred sync", v17, 2u);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v18 = *(v0 + 40);
    v19 = *(v0 + 24);

    v14(v18, v19);
    v20 = swift_task_alloc();
    *(v0 + 56) = v20;
    *v20 = v0;
    v20[1] = sub_21494DC4C;

    return sub_21494B3A8(0, 1);
  }

  else
  {

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_21494DC4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21494DD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_21498E320();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_21498E690();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494DE9C, 0, 0);
}

uint64_t sub_21494DE9C()
{
  v26 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_21498E670();
  v6 = sub_21498FB90();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  if (v7)
  {
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x216058A90](v11, MEMORY[0x277D837D0]);
    v16 = sub_2149079F4(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21488E000, v5, v6, "[ProviderModel] createUnsubscribeRule(senderEmails: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x216059AC0](v13, -1, -1);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v17 = v0[9];
  v18 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository;
  v0[16] = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository;
  __swift_project_boxed_opaque_existential_1((v17 + v18), *(v17 + v18 + 24));
  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = sub_21494E0DC;
  v20 = v0[7];
  v21 = v0[8];
  v23 = v0[5];
  v22 = v0[6];

  return sub_214936B2C(v23, v22, v20, v21);
}

uint64_t sub_21494E0DC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21494E234, 0, 0);
  }
}

uint64_t sub_21494E234()
{
  v1 = v0[9] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  v2 = *(v1 + *(type metadata accessor for MailCleanupState(0) + 32));
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    v9 = *(v0[9] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
    sub_21498E310();
    v10 = sub_21498E2B0();
    v11 = sub_21498F840();
    [v9 setValue:v10 forKey:v11];

    v12 = *(v7 + 8);
    v12(v6, v8);
    sub_21498E310();
    v13 = sub_21498E2B0();
    v14 = sub_21498F840();
    [v9 setValue:v13 forKey:v14];

    v12(v6, v8);
    sub_21494CF34();
    v15 = swift_task_alloc();
    v0[19] = v15;
    *v15 = v0;
    v15[1] = sub_21494E794;

    return sub_21494B3A8(0, 0);
  }

  else
  {
    v3 = (v0[9] + v0[16]);
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_21494E494;

    return sub_2149364FC();
  }
}

uint64_t sub_21494E494()
{

  return MEMORY[0x2822009F8](sub_21494E590, 0, 0);
}

uint64_t sub_21494E590(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v5 = *(v1[9] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
  sub_21498E310();
  v6 = sub_21498E2B0();
  v7 = sub_21498F840();
  [v5 setValue:v6 forKey:v7];

  (*(v3 + 8))(v2, v4);
  v9 = v1[11];
  v8 = v1[12];
  v10 = v1[10];
  v11 = *(v1[9] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
  sub_21498E310();
  v12 = sub_21498E2B0();
  v13 = sub_21498F840();
  [v11 setValue:v12 forKey:v13];

  v14 = *(v9 + 8);
  v14(v8, v10);
  sub_21498E310();
  v15 = sub_21498E2B0();
  v16 = sub_21498F840();
  [v11 setValue:v15 forKey:v16];

  v14(v8, v10);
  sub_21494CF34();
  v17 = swift_task_alloc();
  v1[19] = v17;
  *v17 = v1;
  v17[1] = sub_21494E794;

  return sub_21494B3A8(0, 0);
}

uint64_t sub_21494E794()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21494E8C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21498E320();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_21498E690();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494E9E4, 0, 0);
}

uint64_t sub_21494E9E4()
{
  v20 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_21498E670();
  v6 = sub_21498FB90();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v12 = v0[2];
    v11 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2149079F4(v12, v11, &v19);
    _os_log_impl(&dword_21488E000, v5, v6, "[ProviderModel] removeUnsubscribeRule(senderEmail: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x216059AC0](v14, -1, -1);
    MEMORY[0x216059AC0](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository), *(v0[4] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository + 24));
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  v15[1] = sub_21494EC04;
  v17 = v0[2];
  v16 = v0[3];

  return sub_21493713C(v17, v16);
}

uint64_t sub_21494EC04()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21494ED5C, 0, 0);
  }
}

uint64_t sub_21494ED5C(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  v5 = *(v1[4] + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
  sub_21498E310();
  v6 = sub_21498E2B0();
  v7 = sub_21498F840();
  [v5 setValue:v6 forKey:v7];

  v8 = *(v3 + 8);
  v8(v2, v4);
  sub_21498E310();
  v9 = sub_21498E2B0();
  v10 = sub_21498F840();
  [v5 setValue:v9 forKey:v10];

  v8(v2, v4);
  sub_21494CF34();
  v11 = swift_task_alloc();
  v1[12] = v11;
  *v11 = v1;
  v11[1] = sub_21494EEF0;

  return sub_21494B3A8(0, 0);
}

uint64_t sub_21494EEF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21494F020()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v77 = v1;
  v78 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v73 = &v68 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v74 = &v68 - v9;
  MEMORY[0x28223BE20](v8);
  v72 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v68 - v15;
  v17 = sub_21498E320();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v75 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v23 = v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  v76 = type metadata accessor for MailCleanupState(0);
  sub_2149051DC(v23 + *(v76 + 40), v16);
  v24 = *(v18 + 48);
  if (v24(v16, 1, v17) == 1)
  {
    v25 = v78;
    sub_21489DFCC(v16, &qword_27CA1ABA0, &qword_214993E20);
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v26 = v77;
    v27 = __swift_project_value_buffer(v77, qword_281194E18);
    (*(v25 + 16))(v5, v27, v26);
    v28 = sub_21498E670();
    v29 = sub_21498FBB0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21488E000, v28, v29, "[ProviderModel] shouldShowConsentInMail - dateFetched is nil", v30, 2u);
      MEMORY[0x216059AC0](v30, -1, -1);
    }

    (*(v25 + 8))(v5, v26);
    return 0;
  }

  v71 = v18;
  v32 = *(v18 + 32);
  v32(v22, v16, v17);
  v69 = *(v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
  sub_21497620C(v14);
  if (v24(v14, 1, v17) == 1)
  {
    v33 = v22;
    sub_21489DFCC(v14, &qword_27CA1ABA0, &qword_214993E20);
    v34 = v71;
    v35 = v76;
  }

  else
  {
    v36 = v75;
    v32(v75, v14, v17);
    sub_2149503FC(&qword_2811926F0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v33 = v22;
    v37 = sub_21498F820();
    v35 = v76;
    if ((v37 & 1) == 0)
    {
      v39 = v17;
      v40 = v78;
      v41 = v71;
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v42 = v77;
      v43 = __swift_project_value_buffer(v77, qword_281194E18);
      v44 = v72;
      (*(v40 + 16))(v72, v43, v42);
      v45 = sub_21498E670();
      v46 = sub_21498FBB0();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_21488E000, v45, v46, "[ProviderModel] shouldShowConsentInMail - consentStatus is stale", v47, 2u);
        MEMORY[0x216059AC0](v47, -1, -1);
      }

      (*(v40 + 8))(v44, v42);
      v48 = *(v41 + 8);
      v48(v75, v39);
      v48(v22, v39);
      return 0;
    }

    v34 = v71;
    (*(v71 + 8))(v36, v17);
  }

  v38 = *(v23 + *(v35 + 36));
  v70 = v17;
  if (v38)
  {
    v49 = sub_214990080();

    if (v49)
    {
      goto LABEL_21;
    }

    v57 = *(v23 + *(v35 + 36));
    if (v57 <= 2 && *(v23 + *(v35 + 36)))
    {
      v59 = v77;
      v58 = v78;
      v60 = v73;
      if (v57 != 1)
      {

LABEL_35:
        v62 = v69;
        v63 = sub_21498F840();
        LODWORD(v62) = [v62 BOOLForKey_];

        if (v62)
        {
          if (qword_281190DA0 != -1)
          {
            swift_once();
          }

          v64 = __swift_project_value_buffer(v59, qword_281194E18);
          (*(v58 + 16))(v60, v64, v59);
          v65 = sub_21498E670();
          v66 = sub_21498FB90();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&dword_21488E000, v65, v66, "[ProviderModel] shouldShowConsentInMail - Show consent in mail.app even when it is declined", v67, 2u);
            MEMORY[0x216059AC0](v67, -1, -1);
          }

          (*(v58 + 8))(v60, v59);
          goto LABEL_26;
        }

LABEL_41:
        (*(v34 + 8))(v33, v70);
        return 0;
      }
    }

    else
    {
      v59 = v77;
      v58 = v78;
      v60 = v73;
    }

    v61 = sub_214990080();

    if ((v61 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_21:
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v50 = v77;
  v51 = __swift_project_value_buffer(v77, qword_281194E18);
  v52 = v78;
  v53 = v74;
  (*(v78 + 16))(v74, v51, v50);
  v54 = sub_21498E670();
  v55 = sub_21498FBB0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_21488E000, v54, v55, "[ProviderModel] shouldShowConsentInMail - undecided", v56, 2u);
    MEMORY[0x216059AC0](v56, -1, -1);
  }

  (*(v52 + 8))(v53, v50);
LABEL_26:
  (*(v34 + 8))(v33, v70);
  return 1;
}

void *sub_21494F990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    while (1)
    {
      memcpy(__dst, v10, 0x179uLL);
      v11 = *&__dst[0] == a1 && *(&__dst[0] + 1) == a2;
      if (v11 || (sub_214990080() & 1) != 0)
      {
        break;
      }

      v10 += 384;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    memcpy(__src, __dst, sizeof(__src));
    nullsub_1();
    memcpy(a3, __src, 0x179uLL);
    return sub_2148D8FC8(__dst, v13);
  }

  else
  {
LABEL_9:
    sub_2148DA328(__dst);
    return memcpy(a3, __dst, 0x179uLL);
  }
}

uint64_t sub_21494FA90()
{
  v1[7] = v0;
  v2 = sub_21498F710();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21494FB50, 0, 0);
}

uint64_t sub_21494FB50()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel__dataStore;
  v0[11] = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel__dataStore;
  v3 = *(v1 + v2);
  v4 = v0[10];
  if (v3)
  {

    v5 = v0[1];

    return v5(v3);
  }

  else
  {
    v7 = v0[8];
    v8 = v0[9];
    sub_2148994D0(v1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository, (v0 + 2));
    v9 = *(v1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults);
    v0[12] = v9;
    (*(v8 + 16))(v4, v1 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_modelConfiguration, v7);
    v10 = qword_281191B88;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_281194E50;

    return MEMORY[0x2822009F8](sub_21494FCAC, v12, 0);
  }
}

uint64_t sub_21494FCAC()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[5];
  v5 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v8 = *v7;

  v0[13] = sub_2149501C0(v8, v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  return MEMORY[0x2822009F8](sub_21494FDEC, 0, 0);
}

uint64_t sub_21494FDEC()
{
  *(v0[7] + v0[11]) = v0[13];

  v1 = v0[13];

  v2 = v0[1];

  return v2(v1);
}

uint64_t iCloudMailAssistantProviderSwift.ProviderModel.deinit()
{
  sub_214950444(v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state, type metadata accessor for MailCleanupState);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_modelConfiguration;
  v2 = sub_21498F710();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository));
  return v0;
}

uint64_t iCloudMailAssistantProviderSwift.ProviderModel.__deallocating_deinit()
{
  sub_214950444(v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state, type metadata accessor for MailCleanupState);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_modelConfiguration;
  v2 = sub_21498F710();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for iCloudMailAssistantProviderSwift.ProviderModel(uint64_t a1)
{
  result = qword_281192498;
  if (!qword_281192498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2149500AC(uint64_t a1)
{
  result = type metadata accessor for MailCleanupState(319);
  if (v2 <= 0x3F)
  {
    result = sub_21498F710();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

char *sub_2149501C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MARepositoryDefault();
  v18[3] = v7;
  v18[4] = &off_2826CB168;
  v18[0] = a1;
  _s9DataStoreCMa(0);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v18, v7);
  MEMORY[0x28223BE20](v9);
  v11 = (&v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  *(v8 + 5) = v7;
  *(v8 + 6) = &off_2826CB168;
  *(v8 + 2) = v13;
  *(v8 + 8) = 0;
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___modelContext] = 1;
  *&v8[OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore____lazy_storage___dataModel] = 0;
  *(v8 + 8) = &off_2826CBF58;
  swift_unknownObjectWeakAssign();
  *(v8 + 9) = a3;
  v14 = OBJC_IVAR____TtCCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel9DataStore_modelConfiguration;
  v15 = sub_21498F710();
  (*(*(v15 - 8) + 32))(&v8[v14], a4, v15);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v8;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_214950398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailCleanupState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2149503FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_214950444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214950534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000002149A1EC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_214990080();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2149505C8(uint64_t a1)
{
  v2 = sub_214950D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214950604(uint64_t a1)
{
  v2 = sub_214950D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214950640@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C9E8, &qword_21499CD00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214950D30();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_21498FF70();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_2149507A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C9D8, &qword_21499CCF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214950D30();
  sub_2149901C0();
  sub_214990010();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2149508DC()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_214950924()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SharedPreferencesAPIRequest(0);
  v22.receiver = v0;
  v22.super_class = v5;
  v6 = objc_msgSendSuper2(&v22, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = v7;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v12, v1);
    v13 = v0;
    v14 = sub_21498E670();
    v15 = sub_21498FBD0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2149079F4(0xD000000000000023, 0x80000002149A3220, v21);
      *(v16 + 12) = 2080;

      v18 = sub_2149079F4(v11, v9, v21);

      *(v16 + 14) = v18;
      _os_log_impl(&dword_21488E000, v14, v15, "Using fallback url for %s: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v17, -1, -1);
      MEMORY[0x216059AC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21[0] = sub_21498BF80();
    v21[1] = v19;

    MEMORY[0x2160589C0](0xD000000000000029, 0x80000002149A3250);

    return v21[0];
  }

  return v7;
}

id sub_214950C1C(void *a1)
{
  v1 = a1;
  sub_214950924();

  v2 = sub_21498F840();

  return v2;
}

id sub_214950C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedPreferencesAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharedPreferencesAPIRequest(uint64_t a1)
{
  result = qword_27CA1C9C8;
  if (!qword_27CA1C9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_214950D30()
{
  result = qword_27CA1C9E0;
  if (!qword_27CA1C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9E0);
  }

  return result;
}

unint64_t sub_214950D98()
{
  result = qword_27CA1C9F0;
  if (!qword_27CA1C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9F0);
  }

  return result;
}

unint64_t sub_214950DF0()
{
  result = qword_27CA1C9F8;
  if (!qword_27CA1C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C9F8);
  }

  return result;
}

unint64_t sub_214950E48()
{
  result = qword_27CA1CA00;
  if (!qword_27CA1CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CA00);
  }

  return result;
}

uint64_t type metadata accessor for MARemoteViewOfflineView(uint64_t a1)
{
  result = qword_27CA1CA10;
  if (!qword_27CA1CA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214950F10(uint64_t a1)
{
  sub_214950F94(319);
  if (v1 <= 0x3F)
  {
    sub_214950FEC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214950F94(uint64_t a1)
{
  if (!qword_27CA1CA20)
  {
    sub_21498EC20();
    v1 = sub_21498EB70();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1CA20);
    }
  }
}

void sub_214950FEC(uint64_t a1)
{
  if (!qword_27CA1BFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C000, &qword_214999708);
    v1 = sub_21498FCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1BFF8);
    }
  }
}

uint64_t sub_21495106C(uint64_t a1)
{
  v1 = sub_21498EE70();
  v7 = 1;
  sub_214951284(__src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v9, __src, 0x109uLL);
  sub_2148AA824(__dst, v5, &qword_27CA1AEB0, &qword_214994550);
  sub_21489DFCC(v9, &qword_27CA1AEB0, &qword_214994550);
  memcpy(&v6[7], __dst, 0x109uLL);
  v5[0] = v1;
  v5[1] = 0;
  LOBYTE(v5[2]) = v7;
  memcpy(&v5[2] + 1, v6, 0x110uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AED8, &qword_2149945A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA30, &qword_21499CED0);
  sub_2148B4C20(&qword_27CA1AED0, &qword_27CA1AED8, &qword_2149945A0, MEMORY[0x277CE1198]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CA38, &qword_21499CED8);
  v3 = sub_2148B4C20(&qword_27CA1CA40, &qword_27CA1CA38, &qword_21499CED8, MEMORY[0x277CDD7A8]);
  __src[0] = v2;
  __src[1] = v3;
  swift_getOpaqueTypeConformance2();
  sub_21498F200();
  memcpy(__src, v5, 0x121uLL);
  return sub_21489DFCC(__src, &qword_27CA1AED8, &qword_2149945A0);
}

void sub_214951284(void *a1@<X8>)
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v84 = ObjCClassFromMetadata;
  v3 = [v2 bundleForClass_];
  MEMORY[0x2160589C0](0x5F454E494C46464FLL, 0xED0000454C544954);
  MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
  v4 = sub_21498E0A0() >> 32;
  v6 = v5;

  HIDWORD(v133) = v4;
  v134 = v6;
  sub_21489CA00();
  v7 = sub_21498F100();
  v9 = v8;
  v11 = v10;
  sub_21498F050();
  sub_21498F030();
  sub_21498F060();

  v12 = sub_21498F0E0();
  v14 = v13;
  v16 = v15;

  sub_2148C85D4(v7, v9, v11 & 1);

  LODWORD(v133) = sub_21498EF00();
  v17 = sub_21498F0B0();
  v19 = v18;
  LOBYTE(v7) = v20;
  v22 = v21;
  sub_2148C85D4(v12, v14, v16 & 1);

  v23 = sub_21498EFE0();
  sub_21498EB50();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7 & 1;
  LOBYTE(v125) = v7 & 1;
  LOBYTE(v98[0]) = 0;
  v33 = sub_21498F000();
  sub_21498EB50();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v133) = 0;
  v42 = MobileGestalt_get_current_device();
  if (v42)
  {
    v43 = v42;
    v86 = v41;
    v87 = v39;
    v88 = v37;
    v89 = v35;
    v90 = v33;
    v91 = v31;
    v92 = v29;
    v93 = v27;
    v94 = v25;
    v95 = v23;
    v96 = v19;
    v97 = v17;
    v83 = v22;
    MobileGestalt_get_wapiCapability();

    v44 = objc_opt_self();
    v45 = sub_21498F840();

    v46 = [v44 modelSpecificLocalizedStringKeyForKey_];

    if (v46)
    {
      v47 = sub_21498F870();
      v49 = v48;

      v50 = [v2 bundleForClass_];
      MEMORY[0x2160589C0](v47, v49);
      MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
      sub_21498E0A0();

      v51 = sub_21498F100();
      v53 = v52;
      LOBYTE(v47) = v54;
      sub_21498F010();
      v55 = sub_21498F0E0();
      v57 = v56;
      v59 = v58;

      sub_2148C85D4(v51, v53, v47 & 1);

      sub_21498EF00();
      v60 = sub_21498F0B0();
      v62 = v61;
      LOBYTE(v51) = v63;
      v65 = v64;
      sub_2148C85D4(v55, v57, v59 & 1);

      LOBYTE(v55) = sub_21498EFE0();
      sub_21498EB50();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      LOBYTE(v57) = v51 & 1;
      v159 = v51 & 1;
      v156 = 0;
      LOBYTE(v51) = sub_21498F000();
      sub_21498EB50();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v160 = 0;
      KeyPath = swift_getKeyPath();
      *&v118 = v97;
      *(&v118 + 1) = v96;
      LOBYTE(v119) = v32;
      *(&v119 + 1) = *v165;
      DWORD1(v119) = *&v165[3];
      *(&v119 + 1) = v83;
      LOBYTE(v120) = v95;
      *(&v120 + 1) = *v164;
      DWORD1(v120) = *&v164[3];
      *(&v120 + 1) = v94;
      *&v121 = v93;
      *(&v121 + 1) = v92;
      *&v122 = v91;
      BYTE8(v122) = 0;
      *(&v122 + 9) = v167[0];
      HIDWORD(v122) = *(v167 + 3);
      LOBYTE(v123) = v90;
      DWORD1(v123) = *&v166[3];
      *(&v123 + 1) = *v166;
      *(&v123 + 1) = v89;
      *v124 = v88;
      *&v124[8] = v87;
      *&v124[16] = v86;
      v124[24] = 0;
      __src[2] = v120;
      __src[3] = v121;
      __src[0] = v118;
      __src[1] = v119;
      *(&__src[6] + 9) = *&v124[9];
      __src[4] = v122;
      __src[5] = v123;
      *&v125 = v60;
      *(&v125 + 1) = v62;
      LOBYTE(v126) = v57;
      DWORD1(v126) = *&v158[3];
      *(&v126 + 1) = *v158;
      *(&v126 + 1) = v65;
      LOBYTE(v127) = v55;
      DWORD1(v127) = *&v157[3];
      *(&v127 + 1) = *v157;
      *(&v127 + 1) = v67;
      *&v128 = v69;
      *(&v128 + 1) = v71;
      *&v129 = v73;
      BYTE8(v129) = 0;
      HIDWORD(v129) = *&v162[3];
      *(&v129 + 9) = *v162;
      LOBYTE(v130) = v51;
      DWORD1(v130) = *&v161[3];
      *(&v130 + 1) = *v161;
      *(&v130 + 1) = v75;
      *&v131 = v77;
      *(&v131 + 1) = v79;
      *v132 = v81;
      v132[8] = 0;
      *&v132[12] = *(v163 + 3);
      *&v132[9] = v163[0];
      *&v132[16] = KeyPath;
      v132[24] = 1;
      __src[6] = *v124;
      __src[8] = v125;
      __src[9] = v126;
      __src[11] = v128;
      __src[12] = v129;
      __src[10] = v127;
      *(&__src[15] + 9) = *&v132[9];
      __src[14] = v131;
      __src[15] = *v132;
      __src[13] = v130;
      memcpy(a1, __src, 0x109uLL);
      v133 = v60;
      v134 = v62;
      v135 = v57;
      *v136 = *v158;
      *&v136[3] = *&v158[3];
      v137 = v65;
      v138 = v55;
      *v139 = *v157;
      *&v139[3] = *&v157[3];
      v140 = v67;
      v141 = v69;
      v142 = v71;
      v143 = v73;
      v144 = 0;
      *&v145[3] = *&v162[3];
      *v145 = *v162;
      v146 = v51;
      *&v147[3] = *&v161[3];
      *v147 = *v161;
      v148 = v75;
      v149 = v77;
      v150 = v79;
      v151 = v81;
      v152 = 0;
      *v153 = v163[0];
      *&v153[3] = *(v163 + 3);
      v154 = KeyPath;
      v155 = 1;
      sub_2148AA824(&v118, v98, &qword_27CA1AEB8, qword_21499CF20);
      sub_2148AA824(&v125, v98, &qword_27CA1AEC0, &qword_214994590);
      sub_21489DFCC(&v133, &qword_27CA1AEC0, &qword_214994590);
      v98[0] = v97;
      v98[1] = v96;
      v99 = v32;
      *v100 = *v165;
      *&v100[3] = *&v165[3];
      v101 = v83;
      v102 = v95;
      *v103 = *v164;
      *&v103[3] = *&v164[3];
      v104 = v94;
      v105 = v93;
      v106 = v92;
      v107 = v91;
      v108 = 0;
      *&v109[3] = *(v167 + 3);
      *v109 = v167[0];
      v110 = v90;
      *&v111[3] = *&v166[3];
      *v111 = *v166;
      v112 = v89;
      v113 = v88;
      v114 = v87;
      v115 = v86;
      v116 = 0;
      sub_21489DFCC(v98, &qword_27CA1AEB8, qword_21499CF20);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_214951AF8(uint64_t a1)
{
  v2 = sub_21498EED0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA38, &qword_21499CED8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_21498EEC0();
  v10 = a1;
  sub_21498E450();
  sub_214952AA0(&qword_27CA1AE28, MEMORY[0x277D24538], MEMORY[0x277D24530]);
  sub_21498EBB0();
  v7 = sub_2148B4C20(&qword_27CA1CA40, &qword_27CA1CA38, &qword_21499CED8, MEMORY[0x277CDD7A8]);
  MEMORY[0x216057F70](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214951CD4(uint64_t a1)
{
  v2 = type metadata accessor for MARemoteViewOfflineView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2149528E0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_214952944(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_21498E400();
}

uint64_t sub_214951DD8(uint64_t a1)
{
  v15 = sub_21498EDC0();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C090, &qword_2149999A0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_21498EC20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2148AA824(a1, v7, &qword_27CA1C090, &qword_2149999A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21498FBC0();
    v12 = sub_21498EFC0();
    sub_21498E5A0();

    sub_21498EDB0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_21498EC10();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_214952054()
{
  v1 = v0;
  v2 = sub_21498F510();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21498F540();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MARemoteViewOfflineView(0);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = sub_21498F560();
  v32 = *(v39 - 8);
  v7 = MEMORY[0x28223BE20](v39);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - v10;
  v11 = sub_21498E690();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_281194E18);
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_21498E670();
  v17 = sub_21498FB90();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v1;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21488E000, v16, v17, "[MARemoteViewOfflineView] handleAppWillEnterForeground - triggering retry", v19, 2u);
    v20 = v19;
    v1 = v18;
    MEMORY[0x216059AC0](v20, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  sub_2148FFDCC();
  v21 = sub_21498FC20();
  sub_21498F550();
  v22 = v31;
  sub_21498F570();
  v32 = *(v32 + 8);
  (v32)(v9, v39);
  sub_2149528E0(v1, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v24 = swift_allocObject();
  sub_214952944(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  aBlock[4] = sub_214952A04;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2148A457C;
  aBlock[3] = &block_descriptor_7;
  v25 = _Block_copy(aBlock);

  v26 = v33;
  sub_21498F530();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_214952AA0(&qword_281190D90, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C348, &qword_21499A980);
  sub_2148B4C20(&qword_281190D00, &qword_27CA1C348, &qword_21499A980, MEMORY[0x277D83970]);
  v27 = v35;
  v28 = v38;
  sub_21498FD60();
  MEMORY[0x216058C80](v22, v26, v27, v25);
  _Block_release(v25);

  (*(v37 + 8))(v27, v28);
  (*(v34 + 8))(v26, v36);
  return (v32)(v22, v39);
}

uint64_t sub_214952630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v15 = v2;
  v16 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v17 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA28, &unk_21499CEC0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AED8, &qword_2149945A0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CA30, &qword_21499CED0);
  v8 = sub_2148B4C20(&qword_27CA1AED0, &qword_27CA1AED8, &qword_2149945A0, MEMORY[0x277CE1198]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CA38, &qword_21499CED8);
  sub_2148B4C20(&qword_27CA1CA40, &qword_27CA1CA38, &qword_21499CED8, MEMORY[0x277CDD7A8]);
  v18 = v6;
  v19 = v7;
  v20 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21498ECD0();
  v9 = [objc_opt_self() defaultCenter];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA48, &unk_21499CEE0);
  sub_21498FCA0();

  sub_2149528E0(v15, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v12 = swift_allocObject();
  result = sub_214952944(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v14 = (a2 + *(v10 + 56));
  *v14 = sub_2149529A8;
  v14[1] = v12;
  return result;
}

uint64_t sub_2149528E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MARemoteViewOfflineView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214952944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MARemoteViewOfflineView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214952A04()
{
  v1 = type metadata accessor for MARemoteViewOfflineView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 28) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_214952AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for MARemoteViewOfflineView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C090, &qword_2149999A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21498EC20();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 20)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214952C14()
{
  v1 = *(type metadata accessor for MARemoteViewOfflineView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_214951DD8(v2);
}

uint64_t sub_214952C74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21498ED60();
  *a1 = result;
  return result;
}

uint64_t sub_214952CC8()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_214952D10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v34 - v2;
  v4 = sub_21498E1B0();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21498E690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecommendationsAPIRequest = type metadata accessor for GetRecommendationsAPIRequest(0);
  v39 = v0;
  v41.receiver = v0;
  v41.super_class = RecommendationsAPIRequest;
  v12 = objc_msgSendSuper2(&v41, sel_urlString);
  v13 = sub_21498F870();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v7, qword_281194E18);
    v35 = v8;
    (*(v8 + 16))(v10, v17, v7);
    v18 = v39;
    v19 = sub_21498E670();
    v20 = sub_21498FBD0();
    v36 = v18;

    v37 = v19;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34 = v4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v40[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_2149079F4(0xD000000000000033, 0x80000002149A3320, v40);
      *(v22 + 12) = 2080;

      v24 = sub_2149079F4(v13, v15, v40);

      *(v22 + 14) = v24;
      v25 = v20;
      v26 = v37;
      _os_log_impl(&dword_21488E000, v37, v25, "Using fallback url for %s: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v23, -1, -1);
      v27 = v22;
      v4 = v34;
      MEMORY[0x216059AC0](v27, -1, -1);
    }

    else
    {
    }

    (*(v35 + 8))(v10, v7);
    v40[0] = sub_21498DE14();
    v40[1] = v28;

    MEMORY[0x2160589C0](0xD000000000000020, 0x80000002149A3360);
  }

  sub_21498E1A0();

  v29 = v38;
  result = (*(v38 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v29 + 32))(v6, v3, v4);
    v31 = v39;
    if (*&v39[qword_27CA1CA58 + 8])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A380, &qword_214991820);
      sub_21498DFB0();
      *(swift_allocObject() + 16) = xmmword_214991720;
      sub_21498DFA0();
      sub_21498E190();
    }

    v32 = v31[qword_27CA1CA60];
    if (v32 != 2 && (v32 & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A380, &qword_214991820);
      sub_21498DFB0();
      *(swift_allocObject() + 16) = xmmword_214991720;
      sub_21498DFA0();
      sub_21498E190();
    }

    v33 = sub_21498E130();
    (*(v29 + 8))(v6, v4);

    return v33;
  }

  return result;
}

id sub_21495334C(void *a1)
{
  v1 = a1;
  sub_214952D10();

  v2 = sub_21498F840();

  return v2;
}

id sub_2149533C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetRecommendationsAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GetRecommendationsAPIRequest(uint64_t a1)
{
  result = qword_27CA1CA68;
  if (!qword_27CA1CA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2149534C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CAB0, &qword_21499D058);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214953C40();
  sub_2149901C0();
  LOBYTE(v14) = 0;
  sub_214990010();
  if (!v4)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B398, &qword_214995188);
    sub_214953DB4(&qword_27CA1CAB8, sub_214953E2C, MEMORY[0x277D83948]);
    sub_214990040();
    v14 = a4;
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA98, &qword_21499D050);
    sub_214953CE8(&qword_27CA1CAC8, sub_214953E80, MEMORY[0x277D83948]);
    sub_214990040();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_214953714()
{
  v1 = 0x6974616D6F747561;
  if (*v0 != 1)
  {
    v1 = 0x7263736275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_214953780@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214953874(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2149537A8(uint64_t a1)
{
  v2 = sub_214953C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149537E4(uint64_t a1)
{
  v2 = sub_214953C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214953820@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2149539A4(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_214953874(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x80000002149A3390 == a2 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEA00000000006E6FLL || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEB00000000656269)
  {

    return 2;
  }

  else
  {
    v5 = sub_214990080();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2149539A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA78, &unk_21499D040);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214953C40();
  sub_2149901B0();
  LOBYTE(v9) = 0;
  v6 = sub_21498FF70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B398, &qword_214995188);
  HIBYTE(v8) = 1;
  sub_214953DB4(&qword_27CA1CA88, sub_214953C94, MEMORY[0x277D83978]);
  sub_21498FFA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA98, &qword_21499D050);
  HIBYTE(v8) = 2;
  sub_214953CE8(&qword_27CA1CAA0, sub_214953D60, MEMORY[0x277D83978]);
  sub_21498FFA0();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6 & 1;
}

unint64_t sub_214953C40()
{
  result = qword_27CA1CA80;
  if (!qword_27CA1CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CA80);
  }

  return result;
}

unint64_t sub_214953C94()
{
  result = qword_27CA1CA90;
  if (!qword_27CA1CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CA90);
  }

  return result;
}

uint64_t sub_214953CE8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CA98, &qword_21499D050);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214953D60()
{
  result = qword_27CA1CAA8;
  if (!qword_27CA1CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAA8);
  }

  return result;
}

uint64_t sub_214953DB4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B398, &qword_214995188);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214953E2C()
{
  result = qword_27CA1CAC0;
  if (!qword_27CA1CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAC0);
  }

  return result;
}

unint64_t sub_214953E80()
{
  result = qword_27CA1CAD0;
  if (!qword_27CA1CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAD0);
  }

  return result;
}

unint64_t sub_214953EE8()
{
  result = qword_27CA1CAD8;
  if (!qword_27CA1CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAD8);
  }

  return result;
}

unint64_t sub_214953F40()
{
  result = qword_27CA1CAE0;
  if (!qword_27CA1CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAE0);
  }

  return result;
}

unint64_t sub_214953F98()
{
  result = qword_27CA1CAE8;
  if (!qword_27CA1CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CAE8);
  }

  return result;
}

id sub_214953FEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_214956DB8();
    v4 = sub_21498F7D0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_214954078(uint64_t a1)
{
  v82 = sub_21498E7C0();
  v2 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
  v4 = MEMORY[0x28223BE20](v77);
  v64 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v80 = &v62 - v7;
  MEMORY[0x28223BE20](v6);
  v75 = &v62 - v8;
  v65 = MEMORY[0x277D84F98];
  v83 = MEMORY[0x277D84F98];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v72 = v2 + 88;
  v73 = v2 + 16;
  v71 = *MEMORY[0x277D232A0];
  v68 = *MEMORY[0x277D23248];
  v67 = *MEMORY[0x277D23288];
  v66 = *MEMORY[0x277D23258];
  v69 = (v2 + 8);
  v76 = v2;
  v63 = (v2 + 96);
  v78 = a1;

  v15 = 0;
  v70 = a1 + 64;
  v74 = v13;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v15 = v16;
LABEL_10:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v15 << 6);
      v19 = v77;
      v20 = *(v78 + 56);
      v21 = (*(v78 + 48) + 16 * v18);
      v22 = v21[1];
      v79 = *v21;
      v23 = v75;
      v24 = v76;
      v25 = *(v76 + 16);
      v26 = v82;
      v25(&v75[*(v77 + 48)], v20 + *(v76 + 72) * v18, v82);
      *v23 = v79;
      v23[1] = v22;
      v79 = v22;
      v27 = v80;
      sub_2148B4C68(v23, v80, &qword_27CA1CB10, &qword_21499D2A0);
      v28 = v27 + *(v19 + 48);
      v29 = v81;
      v25(v81, v28, v26);
      v30 = (*(v24 + 88))(v29, v26);
      if (v30 == v71)
      {
        (*v63)(v81, v82);
        v32 = objc_allocWithZone(MEMORY[0x277CCACA8]);

        v33 = sub_21498F840();

        v34 = [v32 initWithString_];

        v13 = v74;
        goto LABEL_21;
      }

      if (v30 == v68)
      {
        v35 = v81;
        (*v63)(v81, v82);
        v36 = *(*v35 + 16);
        v37 = objc_allocWithZone(MEMORY[0x277CCABB0]);

        v34 = [v37 initWithInteger_];

        v13 = v74;
        goto LABEL_21;
      }

      v13 = v74;
      if (v30 == v67)
      {
        v38 = v81;
        (*v63)(v81, v82);
        v39 = *(*v38 + 16);
        v40 = objc_allocWithZone(MEMORY[0x277CCABB0]);

        v41 = [v40 initWithDouble_];
        goto LABEL_20;
      }

      if (v30 == v66)
      {
        break;
      }

      v31 = *v69;

      v31(v81, v82);
      result = sub_21489DFCC(v80, &qword_27CA1CB10, &qword_21499D2A0);
      v16 = v15;
      v9 = v70;
      if (!v12)
      {
LABEL_7:
        while (1)
        {
          v15 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v15 >= v13)
          {

            return v65;
          }

          v12 = *(v9 + 8 * v15);
          ++v16;
          if (v12)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_36;
      }
    }

    v42 = v81;
    (*v63)(v81, v82);
    v43 = *(*v42 + 16);
    v44 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    v41 = [v44 initWithBool_];
LABEL_20:
    v34 = v41;

LABEL_21:
    v45 = v64;
    sub_2148B4C68(v80, v64, &qword_27CA1CB10, &qword_21499D2A0);
    v46 = v65[2];
    if (v65[3] <= v46)
    {
      sub_214955950(v46 + 1, 1);
    }

    v47 = v83;
    v48 = *v45;
    v49 = v45[1];
    sub_214990160();
    sub_21498F900();
    result = sub_214990190();
    v50 = v47 + 64;
    v65 = v47;
    v51 = -1 << *(v47 + 32);
    v52 = result & ~v51;
    v53 = v52 >> 6;
    if (((-1 << v52) & ~*(v47 + 64 + 8 * (v52 >> 6))) == 0)
    {
      break;
    }

    v54 = __clz(__rbit64((-1 << v52) & ~*(v47 + 64 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_33:
    v59 = *(v77 + 48);
    *(v50 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
    v60 = v65;
    v61 = (v65[6] + 16 * v54);
    *v61 = v48;
    v61[1] = v49;
    *(v60[7] + 8 * v54) = v34;
    ++v60[2];
    result = (*v69)(v45 + v59, v82);
    v9 = v70;
  }

  v55 = 0;
  v56 = (63 - v51) >> 6;
  while (++v53 != v56 || (v55 & 1) == 0)
  {
    v57 = v53 == v56;
    if (v53 == v56)
    {
      v53 = 0;
    }

    v55 |= v57;
    v58 = *(v50 + 8 * v53);
    if (v58 != -1)
    {
      v54 = __clz(__rbit64(~v58)) + (v53 << 6);
      goto LABEL_33;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2149547A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F7250746E657665;
  }

  else
  {
    v3 = 0x6D614E746E657665;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEF73656974726570;
  }

  if (*a2)
  {
    v5 = 0x6F7250746E657665;
  }

  else
  {
    v5 = 0x6D614E746E657665;
  }

  if (*a2)
  {
    v6 = 0xEF73656974726570;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_214990080();
  }

  return v8 & 1;
}

uint64_t sub_214954858()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149548EC(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_21495496C(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149549FC@<X0>(char *a2@<X8>)
{
  v3 = sub_21498FEF0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_214954A5C(uint64_t *a1@<X8>)
{
  v2 = 0x6D614E746E657665;
  if (*v1)
  {
    v2 = 0x6F7250746E657665;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEF73656974726570;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_214954AAC()
{
  if (*v0)
  {
    return 0x6F7250746E657665;
  }

  else
  {
    return 0x6D614E746E657665;
  }
}

uint64_t sub_214954AF8@<X0>(char *a3@<X8>)
{
  v4 = sub_21498FEF0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_214954B5C(uint64_t a1)
{
  v2 = sub_214956E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214954B98(uint64_t a1)
{
  v2 = sub_214956E04();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_214954BD4(void *a1)
{
  v21 = *v1;
  v22 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_21498E900();
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB28, &unk_21499D2B0);
  v10 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v12 = &v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214956E04();
  v13 = v22;
  sub_2149901B0();
  if (v13)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v10;
    v14 = v18;
    v24 = 0;
    sub_214956E58(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    sub_21498FFA0();
    v15 = *(v14 + 32);
    v17 = OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventName;
    v15(&v1[OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventName], v9, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
    v23 = 1;
    sub_214941B08();
    sub_21498FF40();
    (*(v22 + 8))(v12, v20);
    sub_2148B4C68(v6, &v1[OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventProperties], &qword_27CA1A808, &unk_21499B730);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_214954FA0()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventName;
  v2 = sub_21498E900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventProperties, &qword_27CA1A808, &unk_21499B730);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MACoreAnalyticsLogging(uint64_t a1)
{
  result = qword_27CA1CAF0;
  if (!qword_27CA1CAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2149550B0(uint64_t a1)
{
  sub_21498E900();
  if (v1 <= 0x3F)
  {
    sub_214941628(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21495517C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899138;

  return sub_214956848(a1);
}

char *sub_214955354@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_214954BD4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_21495543C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4E494C4E495F4143;
  v4 = 0xED00005049545F45;
  if (v2 != 1)
  {
    v3 = 0x42485341445F4143;
    v4 = 0xEC0000004452414FLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x49545445535F4143;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB0000000053474ELL;
  }

  v7 = 0x4E494C4E495F4143;
  v8 = 0xED00005049545F45;
  if (*a2 != 1)
  {
    v7 = 0x42485341445F4143;
    v8 = 0xEC0000004452414FLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x49545445535F4143;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB0000000053474ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_21495556C()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21495562C(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2149556D8(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_214955794@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214957074(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2149557C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000053474ELL;
  v4 = 0xED00005049545F45;
  v5 = 0x4E494C4E495F4143;
  if (v2 != 1)
  {
    v5 = 0x42485341445F4143;
    v4 = 0xEC0000004452414FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x49545445535F4143;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2149558F0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_214955950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB18, &qword_21499D2A8);
  v35 = v4;
  result = sub_21498FEB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_214990160();
      sub_21498F900();
      result = sub_214990190();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_214955BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_21498E7C0();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B598, &qword_21499EFD0);
  v42 = v4;
  result = sub_21498FEB0();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_214990160();
      sub_21498F900();
      result = sub_214990190();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_214955F74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4B8, &qword_214992020);
  v33 = v4;
  result = sub_21498FEB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2148A4198(v24, v34);
      }

      else
      {
        sub_21489E614(v24, v34);
      }

      sub_214990160();
      sub_21498F900();
      result = sub_214990190();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2148A4198(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21495622C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB38, &qword_21499F010);
  v34 = v4;
  result = sub_21498FEB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_214990160();
      sub_21498F900();
      result = sub_214990190();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2149564F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_21498FEB0();
  v42 = result;
  if (*(v7 + 16))
  {
    v38 = v4;
    v39 = v7;
    v9 = 0;
    v10 = (v7 + 64);
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_16:
      v25 = v22 | (v9 << 6);
      v26 = *(v7 + 56);
      v27 = (*(v7 + 48) + 48 * v25);
      v28 = v27[1];
      v44 = *v27;
      v29 = v27[3];
      v43 = v27[2];
      v30 = v27[4];
      v31 = v27[5];
      v32 = *(v26 + 8 * v25);
      if ((v6 & 1) == 0)
      {

        sub_21489B6F8(v30, v31);
      }

      sub_214990160();
      sub_21489B6F8(v30, v31);
      sub_21498F900();
      v40 = v29;
      sub_21498F900();
      if (v31 >> 60 != 15)
      {
        sub_21498E1E0();
        sub_21489B8F0(v30, v31);
      }

      result = sub_214990190();
      v16 = -1 << *(v42 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v16) >> 6;
        v20 = v32;
        while (++v18 != v34 || (v33 & 1) == 0)
        {
          v35 = v18 == v34;
          if (v18 == v34)
          {
            v18 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v18);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
      v20 = v32;
LABEL_8:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v21 = (*(v42 + 48) + 48 * v19);
      *v21 = v44;
      v21[1] = v28;
      v21[2] = v43;
      v21[3] = v40;
      v21[4] = v30;
      v21[5] = v31;
      *(*(v42 + 56) + 8 * v19) = v20;
      ++*(v42 + 16);
      v7 = v39;
      v13 = v41;
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v41 = (v24 - 1) & v24;
        goto LABEL_16;
      }
    }

    if (v6)
    {
      v37 = 1 << *(v7 + 32);
      if (v37 >= 64)
      {
        bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v37;
      }

      *(v7 + 16) = 0;
    }

    v5 = v38;
  }

  else
  {
  }

  *v5 = v42;
  return result;
}

uint64_t sub_214956848(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_21498E690();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214956940, 0, 0);
}

uint64_t sub_214956940()
{
  sub_21498E8F0();
  v1 = v0[14];
  sub_214956D28(v0[10] + OBJC_IVAR____TtC19iCloudMailAssistant22MACoreAnalyticsLogging_eventProperties, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_21489DFCC(v0[14], &qword_27CA1A808, &unk_21499B730);
    v4 = 0;
  }

  else
  {
    sub_2148B4A4C();
    sub_21498E750();
    (*(v3 + 8))(v0[14], v2);
    v4 = sub_214954078(v0[8]);
  }

  v5 = sub_21498F840();

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v0[6] = sub_214956D98;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_214953FEC;
  v0[5] = &block_descriptor_8;
  v7 = _Block_copy(v0 + 2);

  AnalyticsSendEventLazy();
  _Block_release(v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_214956D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_214956DB8()
{
  result = qword_27CA1CB20;
  if (!qword_27CA1CB20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA1CB20);
  }

  return result;
}

unint64_t sub_214956E04()
{
  result = qword_27CA1CB30;
  if (!qword_27CA1CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB30);
  }

  return result;
}

uint64_t sub_214956E58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_214956EB4()
{
  result = qword_27CA1CB40;
  if (!qword_27CA1CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB40);
  }

  return result;
}

unint64_t sub_214956F0C()
{
  result = qword_27CA1CB48;
  if (!qword_27CA1CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB48);
  }

  return result;
}

unint64_t sub_214956F64()
{
  result = qword_27CA1CB50;
  if (!qword_27CA1CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB50);
  }

  return result;
}

unint64_t sub_214956FCC()
{
  result = qword_27CA1CB58;
  if (!qword_27CA1CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB58);
  }

  return result;
}

unint64_t sub_214957020()
{
  result = qword_27CA1CB60;
  if (!qword_27CA1CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CB60);
  }

  return result;
}

unint64_t sub_214957074(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2149570C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = 1818326372;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 1818326372;
    }

    if (v4 == 2)
    {
      v6 = 0x80000002149A0900;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4)
    {
      v6 = 0x80000002149A08E0;
    }

    else
    {
      v6 = 0x80000002149A08C0;
    }
  }

  v7 = 0x80000002149A0900;
  if (a2 == 2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x80000002149A08E0;
  if (a2)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v8 = 0x80000002149A08C0;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_2149571DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657474696D6FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x647261646E617473;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x656E6574726F6873;
    }

    else
    {
      v4 = 0x64657474696D6FLL;
    }

    if (v3)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x647261646E617473;
  if (a2 != 2)
  {
    v7 = 0x6574656C706D6F63;
  }

  if (a2)
  {
    v2 = 0x656E6574726F6873;
    v6 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_214990080();
  }

  return v10 & 1;
}

uint64_t sub_214957328(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6D726F4665746164;
    }

    else
    {
      v3 = 0x6D726F46656D6974;
    }

    v4 = 0xEA00000000007461;
  }

  else
  {
    if (a1)
    {
      v3 = 0x6D617473656D6974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE900000000000070;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x6D726F4665746164;
  if (a2 != 2)
  {
    v7 = 0x6D726F46656D6974;
  }

  if (a2)
  {
    v6 = 0x6D617473656D6974;
    v5 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xEA00000000007461;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_214990080();
  }

  return v10 & 1;
}

uint64_t sub_21495747C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657474696D6FLL;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x636972656D756ELL;
    }

    else
    {
      v4 = 0x64657474696D6FLL;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x6169766572626261;
    v3 = 0xEB00000000646574;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1735290732;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6574656C706D6F63;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE700000000000000;
    v6 = 0xE700000000000000;
    v7 = 0x636972656D756ELL;
    v8 = a2 == 0;
  }

  else
  {
    v2 = 0x6169766572626261;
    v5 = 0xEB00000000646574;
    v6 = 0xE400000000000000;
    v7 = 1735290732;
    if (a2 != 3)
    {
      v7 = 0x6574656C706D6F63;
      v6 = 0xE800000000000000;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v3 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_2149575F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x656D614E6E6F6369;
  if (a1 == 2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x72656665526C7275;
    v5 = 0xEC00000065636E65;
  }

  v6 = 0xD00000000000001DLL;
  if (a1)
  {
    v3 = 0x80000002149A0B40;
  }

  else
  {
    v6 = 0x656C746974;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x656D614E6E6F6369;
    }

    else
    {
      v11 = 0x72656665526C7275;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xEC00000065636E65;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD00000000000001DLL;
    }

    else
    {
      v9 = 0x656C746974;
    }

    if (a2)
    {
      v10 = 0x80000002149A0B40;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_214990080();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_21495774C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x6567616D69;
  v7 = 0xE600000000000000;
  v8 = 0x6C6F626D7973;
  if (a1 != 4)
  {
    v8 = 0x726F6C6F63;
    v7 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (a1 != 1)
  {
    v10 = 0x65546C6961746564;
    v9 = 0xEA00000000007478;
  }

  if (a1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE500000000000000;
      v14 = 1734438249;
LABEL_26:
      if (v11 != (v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x6C6F626D7973)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x726F6C6F63)
      {
LABEL_33:
        v15 = sub_214990080();
        goto LABEL_34;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v13 = 0xEA00000000007478;
        if (v11 != 0x65546C6961746564)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      v13 = 0xE500000000000000;
      v14 = 1819568500;
      goto LABEL_26;
    }

    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_33;
    }
  }

LABEL_31:
  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v15 = 1;
LABEL_34:

  return v15 & 1;
}

uint64_t sub_214957908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6C6562616CLL;
    }

    else
    {
      v3 = 0x74616E6974736564;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xEB000000006E6F69;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6576697463417369;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (a2 != 2)
  {
    v8 = 0x74616E6974736564;
    v7 = 0xEB000000006E6F69;
  }

  if (a2)
  {
    v6 = 0x6576697463417369;
    v5 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_214957A4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  v5 = 0x697461676976616ELL;
  v6 = 0xEE006B6E694C6E6FLL;
  if (a1 != 5)
  {
    v5 = 0x6C65656877;
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x657474656C6170;
  if (a1 != 3)
  {
    v8 = 0x65746E656D676573;
    v7 = 0xE900000000000064;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x656E696C6E69;
  if (a1 != 1)
  {
    v10 = 1970169197;
    v9 = 0xE400000000000000;
  }

  if (!a1)
  {
    v10 = 0x6974616D6F747561;
    v9 = 0xE900000000000063;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x656E696C6E69)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1970169197)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEE006B6E694C6E6FLL;
        if (v11 != 0x697461676976616ELL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x6C65656877)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x657474656C6170)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x65746E656D676573;
    v2 = 0xE900000000000064;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_214990080();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_214957C60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x736D657469;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xD000000000000016;
    v13 = 0x80000002149A0400;
    if (a1 != 2)
    {
      v12 = 0xD000000000000018;
      v13 = 0x80000002149A0420;
    }

    v14 = 0x6C69616D65;
    if (!a1)
    {
      v14 = 0x736D657469;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }

    if (v3 <= 1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v4 = 0x7365636375536E6FLL;
    v5 = 0xE900000000000073;
    v6 = 0xE700000000000000;
    v7 = 0x726F7272456E6FLL;
    if (a1 != 7)
    {
      v7 = 0x656C706D6F436E6FLL;
      v6 = 0xEC0000006E6F6974;
    }

    if (a1 != 6)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0xD000000000000016;
    v9 = 0x80000002149A0440;
    if (a1 != 4)
    {
      v8 = 0xD00000000000001ALL;
      v9 = 0x80000002149A0460;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xE900000000000073;
        if (v10 != 0x7365636375536E6FLL)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      if (a2 == 7)
      {
        v15 = 0xE700000000000000;
        if (v10 != 0x726F7272456E6FLL)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v2 = 0x656C706D6F436E6FLL;
      v15 = 0xEC0000006E6F6974;
      goto LABEL_45;
    }

    if (a2 != 4)
    {
      v15 = 0x80000002149A0460;
      if (v10 != 0xD00000000000001ALL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v16 = "delayUnsubscribeLinkMs";
LABEL_38:
    v15 = (v16 - 32) | 0x8000000000000000;
    if (v10 != 0xD000000000000016)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v15 = 0x80000002149A0420;
      if (v10 != 0xD000000000000018)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v16 = "delayPostUnsubscribeMs";
    goto LABEL_38;
  }

  v15 = 0xE500000000000000;
  if (a2)
  {
    if (v10 != 0x6C69616D65)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_45:
  if (v10 != v2)
  {
LABEL_49:
    v17 = sub_214990080();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_214957F28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x656C706D6F436E6FLL;
  v5 = 0xEC0000006E6F6974;
  if (a1 != 5)
  {
    v4 = 2036625250;
    v5 = 0xE400000000000000;
  }

  v6 = 0x7365636375536E6FLL;
  v7 = 0xE900000000000073;
  if (a1 != 3)
  {
    v6 = 0x726F7272456E6FLL;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x646F6874656DLL;
  if (a1 != 1)
  {
    v9 = 0x6D6F437469617761;
    v8 = 0xEF6E6F6974656C70;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7107189;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x646F6874656DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEF6E6F6974656C70;
        if (v10 != 0x6D6F437469617761)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7107189)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x656C706D6F436E6FLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 2036625250)
      {
LABEL_39:
        v13 = sub_214990080();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE900000000000073;
    if (v10 != 0x7365636375536E6FLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x726F7272456E6FLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_214958168(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    v2 = 0xE200000000000000;
    v3 = 25705;
    v4 = 0xE300000000000000;
    v5 = 7107189;
    v6 = a1 == 0;
  }

  else
  {
    v2 = 0xE600000000000000;
    v3 = 0x646F6874656DLL;
    v4 = 0xE400000000000000;
    v5 = 2036625250;
    if (a1 != 3)
    {
      v5 = 0xD000000000000011;
      v4 = 0x80000002149A04B0;
    }

    v6 = a1 == 2;
  }

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    v8 = v2;
  }

  else
  {
    v8 = v4;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 7107189;
    }

    else
    {
      v13 = 25705;
    }

    if (a2)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = 0xE200000000000000;
    }

    if (v7 != v13)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v9 = 2036625250;
    v10 = 0x80000002149A04B0;
    if (a2 == 3)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v11 = 0x646F6874656DLL;
    }

    else
    {
      v11 = v9;
    }

    if (a2 == 2)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = v10;
    }

    if (v7 != v11)
    {
      goto LABEL_33;
    }
  }

  if (v8 != v12)
  {
LABEL_33:
    v14 = sub_214990080();
    goto LABEL_34;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_2149582BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x52474F52505F4E49;
    }

    else
    {
      v3 = 0x474E49444E4550;
    }

    if (v2)
    {
      v4 = 0xEB00000000535345;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x524F525245;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x454C54544F524854;
    }

    else
    {
      v3 = 0x4554454C504D4F43;
    }

    v4 = 0xE900000000000044;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x52474F52505F4E49;
    }

    else
    {
      v8 = 0x474E49444E4550;
    }

    if (a2)
    {
      v7 = 0xEB00000000535345;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x454C54544F524854;
    if (a2 != 3)
    {
      v5 = 0x4554454C504D4F43;
    }

    if (a2 == 2)
    {
      v6 = 0x524F525245;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE900000000000044;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v7)
  {
LABEL_34:
    v9 = sub_214990080();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_214958458(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1163284301;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x47455441435F4552;
    }

    else
    {
      v4 = 0xD000000000000018;
    }

    if (v3 == 2)
    {
      v5 = 0xED0000455A49524FLL;
    }

    else
    {
      v5 = 0x80000002149A09E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4145525F4B52414DLL;
    }

    else
    {
      v4 = 1163284301;
    }

    if (v3)
    {
      v5 = 0xE900000000000044;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x47455441435F4552;
  v8 = 0x80000002149A09E0;
  if (a2 == 2)
  {
    v8 = 0xED0000455A49524FLL;
  }

  else
  {
    v7 = 0xD000000000000018;
  }

  if (a2)
  {
    v2 = 0x4145525F4B52414DLL;
    v6 = 0xE900000000000044;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_2149585B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x736D657469;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x736E6F6974636573;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x80000002149A0930;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D6F74737563;
    }

    else
    {
      v4 = 0x736D657469;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x736E6F6974636573;
  v8 = 0x80000002149A0930;
  if (a2 == 2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (a2)
  {
    v2 = 0x6D6F74737563;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_2149586EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4449656C646E7562;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656C797473;
    }

    else
    {
      v4 = 0x726F4D6E7261656CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1954047348;
    }

    else
    {
      v4 = 0x4449656C646E7562;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x656C797473;
  if (a2 != 2)
  {
    v8 = 0x726F4D6E7261656CLL;
    v7 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 1954047348;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_214958820(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x614E6D6574737973;
    }

    else
    {
      v5 = 25705;
    }

    if (v2)
    {
      v6 = 0xEA0000000000656DLL;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701667182;
    if (a1 != 3)
    {
      v4 = 0xD000000000000010;
      v3 = 0x80000002149A0770;
    }

    if (a1 == 2)
    {
      v5 = 0x646F4D6567616D69;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xEE00737265696669;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x614E6D6574737973;
    }

    else
    {
      v11 = 25705;
    }

    if (a2)
    {
      v10 = 0xEA0000000000656DLL;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 1701667182;
    v8 = 0x80000002149A0770;
    if (a2 == 3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x646F4D6567616D69;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEE00737265696669;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_214990080();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_2149589B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6C69616D65;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1701667182;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6C6F686563616C70;
    }

    else
    {
      v3 = 0x646F4D6567616D69;
    }

    if (v2 == 3)
    {
      v4 = 0xEB00000000726564;
    }

    else
    {
      v4 = 0xEE00737265696669;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6C69616D65;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE400000000000000;
    if (v3 != 1701667182)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000726564;
    if (v3 != 0x6C6F686563616C70)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEE00737265696669;
    if (v3 != 0x646F4D6567616D69)
    {
LABEL_34:
      v7 = sub_214990080();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_214958B58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_214990080();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_214958D5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x80000002149A0700;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000002149A0720;
    }

    v5 = 0x80000002149A06C0;
    if (a1 != 3)
    {
      v5 = 0x80000002149A06E0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_214990080();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x80000002149A0700;
    }

    else
    {
      v10 = 0x80000002149A0720;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x80000002149A06C0;
    }

    else
    {
      v10 = 0x80000002149A06E0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_214958F34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x2065727574616546;
    v12 = 0xED00002977654E28;
    v13 = 0x6D65636E61686E45;
    v14 = 0xEB00000000746E65;
    if (a1 != 8)
    {
      v13 = 1802723668;
      v14 = 0xE400000000000000;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0x2073756F69726553;
    v16 = 0xEB00000000677542;
    if (a1 != 5)
    {
      v15 = 0x754220726568744FLL;
      v16 = 0xE900000000000067;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x7265776F50;
    v6 = 0x616D726F66726550;
    v7 = 0xEB0000000065636ELL;
    if (a1 != 3)
    {
      v6 = 0x69626173552F4955;
      v7 = 0xEC0000007974696CLL;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xD000000000000014;
    if (a1)
    {
      v3 = 0x80000002149A05E0;
    }

    else
    {
      v8 = 0x7974697275636553;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 != 5)
      {
        v19 = 0xE900000000000067;
        if (v9 != 0x754220726568744FLL)
        {
LABEL_56:
          v20 = sub_214990080();
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      v17 = 0x2073756F69726553;
      v18 = 6780226;
    }

    else
    {
      if (a2 == 7)
      {
        v19 = 0xED00002977654E28;
        if (v9 != 0x2065727574616546)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (a2 != 8)
      {
        v19 = 0xE400000000000000;
        if (v9 != 1802723668)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      v17 = 0x6D65636E61686E45;
      v18 = 7630437;
    }

LABEL_41:
    v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v17)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v19 = 0xE500000000000000;
      if (v9 != 0x7265776F50)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    if (a2 != 3)
    {
      v19 = 0xEC0000007974696CLL;
      if (v9 != 0x69626173552F4955)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v17 = 0x616D726F66726550;
    v18 = 6644590;
    goto LABEL_41;
  }

  if (a2)
  {
    v19 = 0x80000002149A05E0;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    if (v9 != 0x7974697275636553)
    {
      goto LABEL_56;
    }
  }

LABEL_54:
  if (v10 != v19)
  {
    goto LABEL_56;
  }

  v20 = 1;
LABEL_57:

  return v20 & 1;
}

uint64_t sub_214959274(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x5654656C707041;
  v6 = 0xE700000000000000;
  v7 = 0x646F50656D6F48;
  if (a1 != 4)
  {
    v7 = 6512973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (a1 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x5654656C707041)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x646F50656D6F48)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6512973)
      {
LABEL_34:
        v13 = sub_214990080();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1684099177)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6863746157)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x656E6F685069)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_214959430(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C62617369447369;
    }

    else
    {
      v4 = 0x736E6F69746361;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6964616F4C7369;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v3)
    {
      v5 = 0xE900000000000067;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x6C62617369447369;
  v8 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v7 = 0x736E6F69746361;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6E6964616F4C7369;
    v6 = 0xE900000000000067;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_214959580(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0x65546C6961746564;
    v14 = 0xEA00000000007478;
    if (a1 != 2)
    {
      v13 = 0x6D49726564616568;
      v14 = 0xEB00000000656761;
    }

    if (a1)
    {
      v12 = 0x656C746974;
      v11 = 0xE500000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E6F6974706163;
    v5 = 0x427972616D697270;
    v6 = 0xED00006E6F747475;
    if (a1 != 7)
    {
      v5 = 0x7261646E6F636573;
      v6 = 0xEF6E6F7474754279;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xE700000000000000;
    v8 = 0x746E65746E6F63;
    if (a1 != 4)
    {
      v8 = 0x4C746E65746E6F63;
      v7 = 0xED000074756F7961;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = 0xEA00000000007478;
        if (v9 != 0x65546C6961746564)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0xEB00000000656761;
        if (v9 != 0x6D49726564616568)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a2)
    {
      v17 = 0xE500000000000000;
      if (v9 != 0x656C746974)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v17 = 0xE200000000000000;
      if (v9 != 25705)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x746E65746E6F63)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v15 = 0x4C746E65746E6F63;
      v16 = 0x74756F7961;
    }

    else
    {
      if (a2 == 6)
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x6E6F6974706163)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      if (a2 != 7)
      {
        v17 = 0xEF6E6F7474754279;
        if (v9 != 0x7261646E6F636573)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v15 = 0x427972616D697270;
      v16 = 0x6E6F747475;
    }

    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v9 != v15)
    {
LABEL_51:
      v18 = sub_214990080();
      goto LABEL_52;
    }
  }

LABEL_49:
  if (v10 != v17)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_214959884(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E55;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64656E696C636544;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465747065636341;
    }

    else
    {
      v5 = 0x6564696365646E55;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656E696C636544;
  if (a2 != 2)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6465747065636341;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t static iCloudMailAssistantProviderSwift.isMailCleanupFeatureAvailable.getter()
{
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  return byte_281194E48;
}

void sub_214959A58(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_214959AA4(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_214959B34;
}

void sub_214959B34(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_214959BB0()
{
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 != 1)
  {
    return 0;
  }

  v0 = sub_21494F020();

  return v0 & 1;
}

uint64_t sub_214959C34(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = sub_21498E690();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214959D04, 0, 0);
}

uint64_t sub_214959D04()
{
  if (v0[5] > 0.0)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 10);
    v2 = *(v0 + 7);
    v3 = *(v0 + 8);
    v4 = __swift_project_value_buffer(v2, qword_281194E18);
    (*(v3 + 16))(v1, v4, v2);
    v5 = sub_21498E670();
    v6 = sub_21498FBA0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 5);
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v7;
      _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] init - cacheLoadDelayInSeconds: %f", v8, 0xCu);
      MEMORY[0x216059AC0](v8, -1, -1);
    }

    v9 = *(v0 + 10);
    v10 = *(v0 + 7);
    v11 = *(v0 + 8);
    v12 = v0[5];

    v13 = (*(v11 + 8))(v9, v10);
    v14 = v12 * 1000000000.0;
    if (COERCE_UNSIGNED_INT64(v12 * 1000000000.0) >> 52 <= 0x7FE)
    {
      if (v14 <= -1.0)
      {
        __break(1u);
      }

      else if (v14 < 1.84467441e19)
      {
        v15 = v14;
        v16 = swift_task_alloc();
        *(v0 + 11) = v16;
        *v16 = v0;
        v16[1] = sub_21495A0DC;
        v13 = v15;

        return MEMORY[0x282200480](v13);
      }

      __break(1u);
      return MEMORY[0x282200480](v13);
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_281190DA0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v18 = *(v0 + 8);
  v17 = *(v0 + 9);
  v19 = *(v0 + 7);
  v20 = __swift_project_value_buffer(v19, qword_281194E18);
  (*(v18 + 16))(v17, v20, v19);
  v21 = sub_21498E670();
  v22 = sub_21498FBA0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21488E000, v21, v22, "[iCloudMailAssistantProviderSwift] init - cacheLoadDelayInSeconds - passed", v23, 2u);
    MEMORY[0x216059AC0](v23, -1, -1);
  }

  v25 = *(v0 + 8);
  v24 = *(v0 + 9);
  v26 = *(v0 + 7);

  (*(v25 + 8))(v24, v26);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[12] = *(Strong + 64);

    v28 = swift_task_alloc();
    *(v0 + 13) = v28;
    *v28 = v0;
    v28[1] = sub_21495A404;

    return sub_21494D3E0();
  }

  else
  {

    v30 = *(v0 + 1);

    return v30();
  }
}

uint64_t sub_21495A0DC()
{

  if (v0)
  {

    v1 = sub_21496A354;
  }

  else
  {
    v1 = sub_21495A1F4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_21495A1F4()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_21498E670();
  v6 = sub_21498FBA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] init - cacheLoadDelayInSeconds - passed", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  (*(v9 + 8))(v8, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[12] = *(Strong + 64);

    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_21495A404;

    return sub_21494D3E0();
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_21495A404()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *iCloudMailAssistantProviderSwift.__allocating_init(appleAccount:accountStore:)(void *a1, void *a2)
{
  v4 = sub_21498F710();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21498E350();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MARepositoryDefault();
  v12 = swift_allocObject();
  v13 = a2;
  v14 = a1;
  sub_21498E340();
  v15 = sub_21498E330();
  v17 = v16;
  (*(v8 + 8))(v10, v7);
  v12[2] = v15;
  v12[3] = v17;
  v12[4] = v13;
  v12[5] = v14;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v19 = v18;
  v20 = [objc_opt_self() defaultCenter];
  sub_21496BCB8(v6);
  type metadata accessor for NetworkStatusProvider(0);
  swift_allocObject();
  v21 = sub_214988258();
  v30[3] = v11;
  v30[4] = &off_2826CB168;
  v30[0] = v12;
  type metadata accessor for iCloudMailAssistantProviderSwift();
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v11);
  MEMORY[0x28223BE20](v23);
  v25 = (&v30[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_2148D72D0(v14, v13, *v25, v19, v20, v6, v21, 0x3FE0000000000000, 0, v22);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v27;
}

uint64_t sub_21495A814()
{
  v1[2] = v0;
  v2 = sub_21498E690();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21495A8E0, 0, 0);
}

uint64_t sub_21495A8E0()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  v0[7] = v4;
  v5 = *(v3 + 16);
  v0[8] = v5;
  v0[9] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "[iCloudMailAssistantProviderSwift] prepare()", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[10] = v13;
  v13(v9, v10);
  v0[11] = *(v12 + 64);

  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_21495AAA0;

  return sub_21494B3A8(0, 1);
}

uint64_t sub_21495AAA0()
{

  return MEMORY[0x2822009F8](sub_21495ABB8, 0, 0);
}

uint64_t sub_21495ABB8()
{
  (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 24));
  v1 = sub_21498E670();
  v2 = sub_21498FBA0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21488E000, v1, v2, "[iCloudMailAssistantProviderSwift] prepare - done", v3, 2u);
    MEMORY[0x216059AC0](v3, -1, -1);
  }

  v4 = *(v0 + 80);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);

  v4(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21495ACD8()
{

  v0 = sub_21494AE50();

  return v0 & 1;
}

BOOL sub_21495AD14()
{
  v1 = *(v0 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  return *(*(v1 + *(type metadata accessor for MailCleanupState(0) + 56)) + 16) != 0;
}

uint64_t sub_21495AD78()
{
  v1 = *(v0 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  v2 = (v1 + *(type metadata accessor for MailCleanupState(0) + 60));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21495ADF8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  swift_beginAccess();
  result = type metadata accessor for MailCleanupState(0);
  v5 = *(v3 + *(result + 36));
  if (v5 == 4)
  {
    LOBYTE(v5) = 3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_21495AE64(uint64_t a1, uint64_t a2)
{
  v4 = sub_21498E690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 != 1)
  {
    return 0;
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_21498E670();
  v10 = sub_21498FB90();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21488E000, v9, v10, "[iCloudMailAssistantProviderSwift] isSenderEmailAddressBlocked", v11, 2u);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);

  sub_21494CC60(a1, a2, v13);

  if (!v14)
  {
    return 0;
  }

  sub_21489DFCC(v13, &qword_27CA1AAA0, &qword_214993640);
  return 1;
}

uint64_t sub_21495B0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_21498E5D0();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v8 = sub_21498E600();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = sub_21498E690();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21495B22C, 0, 0);
}

uint64_t sub_21495B22C()
{
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 == 1)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v2 = v0[16];
    v1 = v0[17];
    v3 = v0[15];
    v4 = __swift_project_value_buffer(v3, qword_281194E18);
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_21498E670();
    v6 = sub_21498FB90();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] blockSender", v7, 2u);
      MEMORY[0x216059AC0](v7, -1, -1);
    }

    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];

    (*(v9 + 8))(v8, v10);
    if (qword_281190DA8 != -1)
    {
      swift_once();
    }

    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v14 = __swift_project_value_buffer(v13, qword_281194E30);
    (*(v12 + 16))(v11, v14, v13);

    sub_21498E5F0();
    sub_21498E5B0();
    v15 = sub_21498E5F0();
    v16 = sub_21498FC80();
    if (sub_21498FCE0())
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_21498E5C0();
      _os_signpost_emit_with_name_impl(&dword_21488E000, v15, v16, v18, "BlockSender", "", v17, 2u);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    v20 = v0[10];
    v19 = v0[11];
    v21 = v0[8];
    v22 = v0[9];
    v23 = v0[7];
    v25 = v0[2];
    v24 = v0[3];

    (*(v22 + 16))(v20, v19, v21);
    sub_21498E650();
    swift_allocObject();
    v0[18] = sub_21498E640();
    v0[19] = *(v23 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
    v26 = swift_allocObject();
    v0[20] = v26;
    *(v26 + 16) = xmmword_214991720;
    *(v26 + 32) = v25;
    *(v26 + 40) = v24;

    v27 = swift_task_alloc();
    v0[21] = v27;
    *v27 = v0;
    v27[1] = sub_21495B634;
    v28 = v0[5];
    v29 = v0[6];
    v30 = v0[4];

    return sub_21494DD78(v26, v30, v28, v29);
  }

  else
  {

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_21495B634()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_21495B890;
  }

  else
  {

    v2 = sub_21495B758;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21495B758()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v8 = v0[12];
  sub_21497EFE0(v1, "BlockSender", 11, 2, v0[18]);

  (*(v5 + 8))(v3, v4);

  (*(v2 + 8))(v1, v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21495B890()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v9 = v0[12];
  v5 = v0[9];
  v6 = v0[8];

  sub_21497EFE0(v3, "BlockSender", 11, 2, v1);

  (*(v5 + 8))(v4, v6);

  (*(v2 + 8))(v3, v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21495B9D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21498E600();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_21498E690();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21495BAF8, 0, 0);
}

uint64_t sub_21495BAF8()
{
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if (byte_281194E48 == 1)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[8];
    v4 = __swift_project_value_buffer(v3, qword_281194E18);
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_21498E670();
    v6 = sub_21498FB90();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21488E000, v5, v6, "[iCloudMailAssistantProviderSwift] blockSender", v7, 2u);
      MEMORY[0x216059AC0](v7, -1, -1);
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];

    (*(v9 + 8))(v8, v10);
    if (qword_281190DA8 != -1)
    {
      swift_once();
    }

    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    v14 = __swift_project_value_buffer(v13, qword_281194E30);
    (*(v12 + 16))(v11, v14, v13);

    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_21495BDC0;
    v16 = v0[7];
    v18 = v0[3];
    v17 = v0[4];
    v19 = v0[2];

    return sub_21497E294(sub_21497E294, "BlockSender", 11, 2, v16, v17, v19, v18);
  }

  else
  {

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_21495BDC0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_21495BFA0;
  }

  else
  {
    v5 = sub_21495BF30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21495BF30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21495BFA0()
{

  v1 = *(v0 + 8);

  return v1();
}