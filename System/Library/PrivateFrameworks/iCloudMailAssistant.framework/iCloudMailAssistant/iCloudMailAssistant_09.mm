uint64_t sub_214979210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21497928C()
{
  v1[12] = v0;
  v2 = sub_21498E690();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = sub_21498E1B0();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  sub_21498FAB0();
  v1[19] = sub_21498FAA0();
  v4 = sub_21498FA50();
  v1[20] = v4;
  v1[21] = v5;

  return MEMORY[0x2822009F8](sub_214979410, v4, v5);
}

uint64_t sub_214979410()
{
  v1 = v0[12];
  sub_214979C6C(*(v1 + 40), *(v1 + 56), *(v1 + 64), v0[18]);
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  v2 = sub_21498E130();
  v4 = v3;
  v0[22] = v3;
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_214979528;

  return sub_214937744(v2, v4, 1, 0, 0xF000000000000000);
}

uint64_t sub_214979528(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[24] = a1;
  v5[25] = a2;
  v5[26] = v2;

  v6 = v4[21];
  v7 = v4[20];
  if (v2)
  {
    v8 = sub_2149796B4;
  }

  else
  {
    v8 = sub_214979954;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2149796B4()
{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21498E670();
  v8 = sub_21498FBB0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v12 = v0[17];
  v11 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  if (v9)
  {
    v26 = v0[13];
    v17 = swift_slowAlloc();
    v25 = v13;
    v18 = swift_slowAlloc();
    v27[0] = v18;
    *v17 = 136315138;
    swift_getErrorValue();
    v19 = sub_214990100();
    v24 = v14;
    v21 = sub_2149079F4(v19, v20, v27);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_21488E000, v7, v8, "Unable to load entry point: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x216059AC0](v18, -1, -1);
    MEMORY[0x216059AC0](v17, -1, -1);

    (*(v15 + 8))(v24, v26);
    (*(v12 + 8))(v11, v25);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_214979954()
{

  v1 = objc_opt_self();
  v2 = sub_21498E1C0();
  v0[10] = 0;
  v3 = [v1 JSONObjectWithData:v2 options:0 error:v0 + 10];

  v4 = v0[10];
  if (!v3)
  {
    v17 = v0[24];
    v18 = v0[25];
    v20 = v0[17];
    v19 = v0[18];
    v21 = v0[16];
    v22 = v4;
    v23 = sub_21498E100();

    swift_willThrow();
    sub_21489B4F8(v17, v18);

    (*(v20 + 8))(v19, v21);
    v24 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  sub_21498FD40();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CD80, qword_21499E728);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = v0[24];
    v26 = v0[25];
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_21489B4F8(v25, v26);
    goto LABEL_10;
  }

  v6 = v0[11];
  if (!*(v6 + 16) || (v7 = sub_214907F9C(2003134838, 0xE400000000000000), (v8 & 1) == 0))
  {
    v28 = v0[17];
    v27 = v0[18];
    v29 = v0[16];
    sub_21489B4F8(v0[24], v0[25]);

    (*(v28 + 8))(v27, v29);
    v24 = 0;
    goto LABEL_14;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v11 = v0[24];
  v10 = v0[25];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[16];
  if (*(v9 + 16))
  {
    sub_214907F9C(0x6569567974706D45, 0xE900000000000077);
    v16 = v15;
    sub_21489B4F8(v11, v10);
    (*(v13 + 8))(v12, v14);

    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    v24 = 0;
    goto LABEL_14;
  }

  (*(v13 + 8))(v0[18], v0[16]);
  sub_21489B4F8(v11, v10);

LABEL_13:
  v24 = 1;
LABEL_14:

  v30 = v0[1];

  return v30(v24);
}

uint64_t sub_214979C6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_21489E320(a1);
  v19 = a2;
  v20 = a3;
  v17 = v11;
  v18 = v12;
  v17 = sub_21498F970();
  v18 = v13;
  sub_21498F920();
  sub_21498E1A0();
  v14 = sub_21498E1B0();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v10, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v15 + 32))(a4, v10, v14);
  }

  return result;
}

uint64_t sub_214979DE0@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v53 - v5;
  v67 = sub_21498E510();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = (&v53 - v8);
  v9 = type metadata accessor for TracingContext(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v54 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_21498E1B0();
  v12 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for MALiftUISource(0);
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v1[5];
  v17 = v1[7];
  v18 = v1[8];
  sub_214979C6C(v55, v17, v18, v14);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
  v20 = *(v19 + 48);
  v21 = &v16[*(v19 + 64)];
  (*(v12 + 32))(v16, v14, v66);
  *&v16[v20] = xmmword_214994690;
  v22 = v54;
  *v21 = 0;
  *(v21 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v23 = v1[6];
  v24 = *(v10 + 28);
  v57 = v24;
  v64 = sub_21498E5D0();
  v25 = *(v64 - 8);
  v63 = *(v25 + 56);
  v66 = v25 + 56;
  v63(v22 + v24, 1, 1, v64);
  *v22 = v17;
  v22[1] = v18;
  v26 = v58;
  *v58 = v17;
  v26[1] = v18;
  v27 = type metadata accessor for MARemoteView(0);
  sub_2148D9620(v16, v26 + v27[5]);
  *(v26 + v27[9]) = v23;
  v28 = v55;
  *(v26 + v27[10]) = v55;
  v29 = (v26 + v27[7]);
  sub_21498E8C0();
  *v29 = 0;
  v29[1] = 0;
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v30 = v23;
  v55 = v28;
  v31 = sub_21498E8B0();
  v53 = "Assistant19IntervalGuardAction";
  v32 = swift_allocObject();
  v33 = v65;
  v34 = v61;
  v35 = v67;
  (*(v65 + 104))(v61, *MEMORY[0x277D245A0], v67);
  LOBYTE(v24) = sub_21498E500();
  (*(v33 + 8))(v34, v35);
  *(v32 + 16) = v24 & 1;
  v36 = v60;
  *v60 = v32;
  v37 = *MEMORY[0x277D23258];
  v38 = sub_21498E7C0();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v36, v37, v38);
  (*(v39 + 56))(v36, 0, 1, v38);
  sub_21498E8E0();
  v40 = v68;
  sub_2148D9620(v16, v68);
  (*(v59 + 56))(v40, 0, 1, v56);
  type metadata accessor for MARemoteViewModel(0);
  memset(v69, 0, sizeof(v69));
  v70 = 0;
  swift_allocObject();
  v41 = v55;

  v42 = sub_21490B164(v41, v40, v31, v69);
  v43 = v26 + v27[6];
  *v43 = sub_21489B760;
  *(v43 + 1) = v42;
  v43[16] = 0;
  v44 = v57;
  v45 = v26;
  sub_21489B768(v22 + v57, v26 + v27[11]);
  v46 = v62;
  sub_21489B768(v22 + v44, v62);
  type metadata accessor for MARemoteViewDelegate(0);
  v47 = swift_allocObject();
  v48 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  v63((v47 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID), 1, 1, v64);
  v49 = qword_281190DA8;

  if (v49 != -1)
  {
    swift_once();
  }

  sub_2148D9684(v22, type metadata accessor for TracingContext);
  sub_2148D9684(v16, type metadata accessor for MALiftUISource);
  v50 = sub_21498E600();
  __swift_project_value_buffer(v50, qword_281194E30);
  *(v47 + 16) = "LoadRemoteView";
  *(v47 + 24) = 14;
  *(v47 + 32) = 2;
  swift_beginAccess();
  sub_21489B818(v46, v47 + v48);
  result = swift_endAccess();
  v52 = (v47 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
  *v52 = sub_21489B7D8;
  v52[1] = v42;
  *(v45 + v27[8]) = v47;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_21497A590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21497A5D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21497A644()
{
  v1 = *(v0 + 56);
  v2 = v1 + 72;
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *(v2 - 8);
    if (*(v2 - 40) != 0x5441435F4C49414DLL || *(v2 - 32) != 0xED000059524F4745)
    {
      v2 += 56;
      if ((sub_214990080() & 1) == 0)
      {
        continue;
      }
    }

    return v4;
  }

  return 0;
}

uint64_t sub_21497A6F0()
{
  v1 = *(v0 + 56);
  v2 = (v1 + 80);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 7;
    if (v4)
    {
    }
  }

  return 0;
}

uint64_t sub_21497A734(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_214990080() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21497A7C4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v25 = a2 + 32;
  v26 = result + 32;
  v24 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v26 + 56 * v3);
    result = *v4;
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    v8 = v4[5];
    v27 = v4[4];
    v9 = v4[6];
    v10 = (v25 + 56 * v3);
    v11 = v10[2];
    v12 = v10[3];
    v14 = v10[4];
    v13 = v10[5];
    v15 = v10[6];
    if (result != *v10 || v5 != v10[1])
    {
      result = sub_214990080();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != v11 || v7 != v12)
    {
      result = sub_214990080();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v8)
    {
      if (!v13)
      {
        return 0;
      }

      result = v27;
      if (v27 != v14 || v8 != v13)
      {
        result = sub_214990080();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v13)
    {
      return 0;
    }

    if (v9)
    {
      if (!v15)
      {
        return 0;
      }

      v19 = *(v9 + 16);
      if (v19 != *(v15 + 16))
      {
        return 0;
      }

      if (v19)
      {
        v20 = v9 == v15;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v9 + 40);
        v22 = (v15 + 40);
        while (v19)
        {
          result = *(v21 - 1);
          if (result != *(v22 - 1) || *v21 != *v22)
          {
            result = sub_214990080();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v21 += 2;
          v22 += 2;
          if (!--v19)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }

    else if (v15)
    {
      return 0;
    }

LABEL_6:
    ++v3;
    result = 1;
    v2 = v24;
    if (v3 == v24)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21497A984(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, 0x179uLL);
    memcpy(v12, v5, 0x179uLL);
    memcpy(v14, v6, 0x179uLL);
    memcpy(__src, v6, 0x179uLL);
    sub_2148D8FC8(__dst, v10);
    sub_2148D8FC8(v14, v10);
    v8 = _s19iCloudMailAssistant5MATipV2eeoiySbAC_ACtFZ_0(v12, __src);
    memcpy(v15, __src, 0x179uLL);
    sub_2148F6AF8(v15);
    memcpy(v16, v12, 0x179uLL);
    sub_2148F6AF8(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 384;
    v5 += 384;
  }

  return 1;
}

uint64_t sub_21497AAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MATipDismissal(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v22 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_2148F6D1C(v13, v10);
    if (!v11)
    {
      break;
    }

    sub_2148F6D1C(v14, v7);
    v17 = *v10 == *v7 && v10[1] == v7[1];
    if (!v17 && (sub_214990080() & 1) == 0 || (sub_21498E2F0() & 1) == 0)
    {
      sub_2148F6D80(v7);
      sub_2148F6D80(v10);
      return 0;
    }

    v18 = *(v4 + 24);
    v19 = *(v10 + v18);
    v20 = *(v7 + v18);
    sub_2148F6D80(v7);
    sub_2148F6D80(v10);
    result = v19 == v20;
    v21 = v19 != v20 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v21)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21497AC70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v38 = v2;
  v39 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v29 = v5[4];
    v30 = v8;
    v31 = v5[6];
    v9 = v5[1];
    v26 = *v5;
    v27 = v9;
    v10 = v5[3];
    *v28 = v5[2];
    *&v28[16] = v10;
    v11 = v6[1];
    v32 = *v6;
    v33 = v11;
    v12 = v6[2];
    v13 = v6[3];
    v14 = v6[6];
    v36 = v6[5];
    v37 = v14;
    v15 = v6[4];
    *&v34[16] = v13;
    v35 = v15;
    *v34 = v12;
    if (*(&v26 + 1))
    {
      if (!*(&v32 + 1) || v26 != v32 && (sub_214990080() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(&v32 + 1))
    {
      return 0;
    }

    if (v27 != v33 && (sub_214990080() & 1) == 0)
    {
      return 0;
    }

    if (v28[0])
    {
      if (v28[0] == 1)
      {
        v16 = 0xE500000000000000;
        v17 = 0x4B434F4C42;
        v18 = v34[0];
        if (!v34[0])
        {
          goto LABEL_22;
        }
      }

      else
      {
        v17 = 0x4954414D4F545541;
        v16 = 0xEA00000000004E4FLL;
        v18 = v34[0];
        if (!v34[0])
        {
LABEL_22:
          v19 = 0xE600000000000000;
          if (v17 != 0x4E4F4D4D4F43)
          {
            goto LABEL_27;
          }

          goto LABEL_25;
        }
      }
    }

    else
    {
      v16 = 0xE600000000000000;
      v17 = 0x4E4F4D4D4F43;
      v18 = v34[0];
      if (!v34[0])
      {
        goto LABEL_22;
      }
    }

    if (v18 == 1)
    {
      v19 = 0xE500000000000000;
      if (v17 != 0x4B434F4C42)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v19 = 0xEA00000000004E4FLL;
      if (v17 != 0x4954414D4F545541)
      {
        goto LABEL_27;
      }
    }

LABEL_25:
    if (v16 == v19)
    {
      sub_2148D9164(&v26, v25);
      sub_2148D9164(&v32, v25);

      goto LABEL_28;
    }

LABEL_27:
    v20 = sub_214990080();
    sub_2148D9164(&v26, v25);
    sub_2148D9164(&v32, v25);

    if ((v20 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_28:
    v21 = *&v28[24];
    v22 = *&v34[24];
    if (*&v28[8] != *&v34[8] && (sub_214990080() & 1) == 0 || (sub_21497A7C4(v21, v22) & 1) == 0 || v29 != v35 && (sub_214990080() & 1) == 0)
    {
LABEL_46:
      sub_2149504C4(&v32);
      sub_2149504C4(&v26);
      return 0;
    }

    if (*(&v30 + 1))
    {
      if (!*(&v36 + 1) || v30 != v36 && (sub_214990080() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(&v36 + 1))
    {
      goto LABEL_46;
    }

    if (v31 == v37)
    {
      sub_2149504C4(&v32);
      sub_2149504C4(&v26);
    }

    else
    {
      v23 = sub_214990080();
      sub_2149504C4(&v32);
      sub_2149504C4(&v26);
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 += 7;
    v5 += 7;
  }

  return 1;
}

uint64_t sub_21497AFCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    v6 = *(a1 + 56);
    v7 = *(a2 + 48);
    v8 = *(a2 + 49);
    v30 = *(a2 + 56);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (v9 = a2, v10 = sub_214990080(), a2 = v9, (v10 & 1) != 0))
    {
      v28 = a2;
      v29 = v6;
      v11 = 0;
      v12 = 0xED0000455A49524FLL;
      for (i = v2 - 1; ; --i)
      {
        if (v4 > 1u)
        {
          if (v4 == 2)
          {
            v14 = 0x47455441435F4552;
          }

          else
          {
            v14 = 0xD000000000000018;
          }

          if (v4 == 2)
          {
            v15 = 0xED0000455A49524FLL;
          }

          else
          {
            v15 = 0x80000002149A09E0;
          }
        }

        else
        {
          if (v4)
          {
            v14 = 0x4145525F4B52414DLL;
          }

          else
          {
            v14 = 1163284301;
          }

          if (v4)
          {
            v15 = 0xE900000000000044;
          }

          else
          {
            v15 = 0xE400000000000000;
          }
        }

        if (v7 == 2)
        {
          v16 = 0x47455441435F4552;
        }

        else
        {
          v16 = 0xD000000000000018;
        }

        if (v7 != 2)
        {
          v12 = 0x80000002149A09E0;
        }

        if (v7)
        {
          v17 = 0x4145525F4B52414DLL;
        }

        else
        {
          v17 = 1163284301;
        }

        v18 = 0xE900000000000044;
        if (!v7)
        {
          v18 = 0xE400000000000000;
        }

        if (v7 <= 1u)
        {
          v19 = v17;
        }

        else
        {
          v19 = v16;
        }

        if (v7 <= 1u)
        {
          v20 = v18;
        }

        else
        {
          v20 = v12;
        }

        if (v14 == v19 && v15 == v20)
        {
        }

        else
        {
          v21 = sub_214990080();

          if ((v21 & 1) == 0)
          {

            return 0;
          }
        }

        if (v5 <= 1u)
        {
          if (v5)
          {
            v22 = 0x52474F52505F4E49;
            v23 = 0xEB00000000535345;
          }

          else
          {
            v23 = 0xE700000000000000;
            v22 = 0x474E49444E4550;
          }
        }

        else if (v5 == 2)
        {
          v23 = 0xE500000000000000;
          v22 = 0x524F525245;
        }

        else
        {
          if (v5 == 3)
          {
            v22 = 0x454C54544F524854;
          }

          else
          {
            v22 = 0x4554454C504D4F43;
          }

          v23 = 0xE900000000000044;
        }

        if (v8 <= 1u)
        {
          if (v8)
          {
            v25 = 0xEB00000000535345;
            if (v22 != 0x52474F52505F4E49)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v25 = 0xE700000000000000;
            if (v22 != 0x474E49444E4550)
            {
              goto LABEL_69;
            }
          }
        }

        else if (v8 == 2)
        {
          v25 = 0xE500000000000000;
          if (v22 != 0x524F525245)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v8 == 3)
          {
            v24 = 0x454C54544F524854;
          }

          else
          {
            v24 = 0x4554454C504D4F43;
          }

          v25 = 0xE900000000000044;
          if (v22 != v24)
          {
            goto LABEL_69;
          }
        }

        if (v23 == v25)
        {

          if (v29 != v30)
          {
            return 0;
          }

          goto LABEL_71;
        }

LABEL_69:
        v26 = sub_214990080();

        result = 0;
        if ((v26 & 1) == 0 || v29 != v30)
        {
          return result;
        }

LABEL_71:
        if (!i)
        {
          return 1;
        }

        v4 = *(a1 + v11 + 80);
        v5 = *(a1 + v11 + 81);
        v7 = *(v28 + v11 + 80);
        v8 = *(v28 + v11 + 81);
        v29 = *(a1 + v11 + 88);
        v30 = *(v28 + v11 + 88);
        if ((*(a1 + v11 + 64) != *(v28 + v11 + 64) || *(a1 + v11 + 72) != *(v28 + v11 + 72)) && (sub_214990080() & 1) == 0)
        {
          return 0;
        }

        v11 += 32;
        v12 = 0xED0000455A49524FLL;
      }
    }
  }

  return 0;
}

uint64_t sub_21497B454(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CD90, &qword_21499E980);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497C4D0();
  sub_2149901C0();
  LOBYTE(v10) = 0;
  sub_21498FFC0();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_214990000();
    LOBYTE(v10) = *(v3 + 32);
    v12 = 2;
    sub_21497C524();
    sub_214990040();
    v10 = *(v3 + 40);
    v11 = *(v3 + 56);
    v12 = 3;
    sub_21497C578();
    sub_214990040();
    LOBYTE(v10) = 4;
    sub_214990000();
    LOBYTE(v10) = 5;
    sub_21498FFC0();
    LOBYTE(v10) = 6;
    sub_214990000();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21497B6DC()
{
  v1 = *v0;
  v2 = 0x6449656C7572;
  v3 = 0x746567726174;
  if (v1 != 5)
  {
    v3 = 0x69546E6F69746361;
  }

  v4 = 0x7461636964657270;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D614E656C7572;
  if (v1 != 1)
  {
    v5 = 6775156;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21497B7AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21497CD0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21497B7D4(uint64_t a1)
{
  v2 = sub_21497C4D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21497B810(uint64_t a1)
{
  v2 = sub_21497C4D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21497B84C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21497CA04(v13, v14) & 1;
}

__n128 sub_21497B8B4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_21497CF58(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_21497B920@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21498E350();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  if (v7)
  {
    v8 = *v1;
    v9 = v7;
  }

  else
  {
    sub_21498E340();
    v8 = sub_21498E330();
    v9 = v10;
    (*(v4 + 8))(v6, v3);
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t sub_21497BA1C()
{
  v1 = *(v0 + 32);
  if (*(v0 + 32) && v1 == 1)
  {

    goto LABEL_5;
  }

  v2 = sub_214990080();

  if (v2)
  {
LABEL_5:
    v3 = *(v0 + 56);
    v4 = (v3 + 80);
    v5 = *(v3 + 16) + 1;
    do
    {
      if (!--v5)
      {
        break;
      }

      v6 = *v4;
      v4 += 7;
    }

    while (!v6);
    sub_21498FE00();

    v15 = 0x28204B434F4C42;
    v7 = sub_214990050();
    MEMORY[0x2160589C0](v7);

    v8 = 0x737265646E657320;
    v9 = 0xE900000000000029;
LABEL_16:
    MEMORY[0x2160589C0](v8, v9);
    return v15;
  }

  if (v1 > 1)
  {

    goto LABEL_13;
  }

  v10 = sub_214990080();

  if (v10)
  {
LABEL_13:
    v11 = sub_21497A644();
    v12 = 0xD00000000000001DLL;
    if (v13)
    {
      v12 = v11;
    }

    v15 = v12;
    MEMORY[0x2160589C0](2108704, 0xE300000000000000);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    goto LABEL_16;
  }

  v15 = 0;
  sub_21498FE70();
  return v15;
}

uint64_t sub_21497BC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CDE8, &qword_21499EB58);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497D7B0();
  sub_2149901C0();
  v13 = 0;
  sub_214990000();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CDF8, &qword_21499EB60);
    sub_21497DA8C(&qword_27CA1CE00, sub_21497D804, MEMORY[0x277D83948]);
    sub_214990040();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21497BE38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CE40, &unk_21499ED38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497DC80();
  sub_2149901C0();
  v14 = 0;
  sub_214990000();
  if (!v2)
  {
    v13 = 1;
    sub_214990000();
    v12 = 2;
    sub_21498FFC0();
    v11 = *(v3 + 48);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
    sub_2148F6A8C(&qword_281190CF8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_21498FFE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21497C074(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x4B434F4C42;
  if (v2 != 1)
  {
    v4 = 0x4954414D4F545541;
    v3 = 0xEA00000000004E4FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4E4F4D4D4F43;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x4B434F4C42;
  if (*a2 != 1)
  {
    v8 = 0x4954414D4F545541;
    v7 = 0xEA00000000004E4FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x4E4F4D4D4F43;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
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

uint64_t sub_21497C174()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21497C214(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_21497C2A0(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_21497C33C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21497D5E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21497C36C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x4B434F4C42;
  if (v2 != 1)
  {
    v5 = 0x4954414D4F545541;
    v4 = 0xEA00000000004E4FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4E4F4D4D4F43;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_21497C47C()
{
  result = qword_27CA1CD88;
  if (!qword_27CA1CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD88);
  }

  return result;
}

unint64_t sub_21497C4D0()
{
  result = qword_27CA1CD98;
  if (!qword_27CA1CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CD98);
  }

  return result;
}

unint64_t sub_21497C524()
{
  result = qword_27CA1CDA0;
  if (!qword_27CA1CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDA0);
  }

  return result;
}

unint64_t sub_21497C578()
{
  result = qword_27CA1CDA8;
  if (!qword_27CA1CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDA8);
  }

  return result;
}

uint64_t sub_21497C5CC()
{
  if (*v0)
  {
    return 0x6F697469646E6F63;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_21497C604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_214990080() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_214990080();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21497C6E8(uint64_t a1)
{
  v2 = sub_21497D7B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21497C724(uint64_t a1)
{
  v2 = sub_21497D7B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21497C760(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  return sub_21497A7C4(v2, v3);
}

uint64_t sub_21497C7D4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21497D858(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_21497C824()
{
  v1 = 0x786966657270;
  v2 = 2036625250;
  if (*v0 != 2)
  {
    v2 = 0x7473694C79646F62;
  }

  if (*v0)
  {
    v1 = 0x6F697469646E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21497C8A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21497DCD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21497C8C8(uint64_t a1)
{
  v2 = sub_21497DC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21497C904(uint64_t a1)
{
  v2 = sub_21497DC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21497C940(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_21497CC40(v5, v7) & 1;
}

double sub_21497C99C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_21497DE3C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_21497CA04(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v7 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  v8 = 0xE500000000000000;
  v9 = 0x4B434F4C42;
  if (*(a1 + 32) != 1)
  {
    v9 = 0x4954414D4F545541;
    v8 = 0xEA00000000004E4FLL;
  }

  if (*(a1 + 32))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x4E4F4D4D4F43;
  }

  if (*(a1 + 32))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  v12 = 0xE500000000000000;
  v13 = 0x4B434F4C42;
  if (*(a2 + 32) != 1)
  {
    v13 = 0x4954414D4F545541;
    v12 = 0xEA00000000004E4FLL;
  }

  if (*(a2 + 32))
  {
    v14 = v13;
  }

  else
  {
    v14 = 0x4E4F4D4D4F43;
  }

  if (*(a2 + 32))
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v16 = sub_214990080();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = a1[7];
  v18 = *(a2 + 56);
  if ((a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (sub_214990080() & 1) == 0 || (sub_21497A7C4(v17, v18) & 1) == 0 || (a1[8] != *(a2 + 64) || a1[9] != *(a2 + 72)) && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  v19 = a1[11];
  v20 = *(a2 + 88);
  if (v19)
  {
    if (v20 && (a1[10] == *(a2 + 80) && v19 == v20 || (sub_214990080() & 1) != 0))
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_47:
  if (a1[12] == *(a2 + 96) && a1[13] == *(a2 + 104))
  {
    return 1;
  }

  return sub_214990080();
}

uint64_t sub_21497CC40(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_214990080() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[6];
  v9 = a2[6];
  if (v8)
  {
    if (v9 && (sub_21497A734(v8, v9) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21497CD0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C7572 && a2 == 0xE600000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E656C7572 && a2 == 0xE800000000000000 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065 || (sub_214990080() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69546E6F69746361 && a2 == 0xEA0000000000656DLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_21497CF58@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CDB0, &qword_21499E988);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497C4D0();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v47) = 0;
  v9 = sub_21498FF20();
  v39 = v10;
  LOBYTE(v47) = 1;
  *&v38 = sub_21498FF60();
  *(&v38 + 1) = v11;
  LOBYTE(v40) = 2;
  sub_21497D540();
  sub_21498FFA0();
  v12 = v47;
  LOBYTE(v40) = 3;
  sub_21497D594();
  sub_21498FFA0();
  v61 = v12;
  v13 = v47;
  v37 = v48;
  v36 = v49;
  LOBYTE(v47) = 4;
  v32 = sub_21498FF60();
  v31 = v13;
  v33 = 0;
  v35 = v14;
  LOBYTE(v47) = 5;
  v15 = sub_21498FF20();
  v34 = v16;
  v62 = 6;
  v30 = sub_21498FF60();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  *&v40 = v9;
  v19 = v39;
  *(&v40 + 1) = v39;
  v41 = v38;
  v20 = *(&v38 + 1);
  LOBYTE(v42) = v61;
  v21 = v15;
  v29 = v15;
  v22 = v31;
  *(&v42 + 1) = v31;
  *&v43 = v37;
  *(&v43 + 1) = v36;
  *&v44 = v32;
  *(&v44 + 1) = v35;
  *&v45 = v21;
  v23 = v30;
  *(&v45 + 1) = v34;
  *&v46 = v30;
  *(&v46 + 1) = v18;
  sub_2148D9164(&v40, &v47);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v47 = v9;
  v48 = v19;
  v49 = v38;
  v50 = v20;
  v51 = v61;
  v52 = v22;
  v53 = v37;
  v54 = v36;
  v55 = v32;
  v56 = v35;
  v57 = v29;
  v58 = v34;
  v59 = v23;
  v60 = v18;
  result = sub_2149504C4(&v47);
  v25 = v45;
  a2[4] = v44;
  a2[5] = v25;
  a2[6] = v46;
  v26 = v41;
  *a2 = v40;
  a2[1] = v26;
  v27 = v43;
  a2[2] = v42;
  a2[3] = v27;
  return result;
}

unint64_t sub_21497D540()
{
  result = qword_27CA1CDB8;
  if (!qword_27CA1CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDB8);
  }

  return result;
}

unint64_t sub_21497D594()
{
  result = qword_27CA1CDC0;
  if (!qword_27CA1CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDC0);
  }

  return result;
}

unint64_t sub_21497D5E8(uint64_t a1, uint64_t a2)
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

unint64_t sub_21497D634()
{
  result = qword_27CA1CDC8;
  if (!qword_27CA1CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDC8);
  }

  return result;
}

unint64_t sub_21497D6AC()
{
  result = qword_27CA1CDD0;
  if (!qword_27CA1CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDD0);
  }

  return result;
}

unint64_t sub_21497D704()
{
  result = qword_27CA1CDD8;
  if (!qword_27CA1CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDD8);
  }

  return result;
}

unint64_t sub_21497D75C()
{
  result = qword_27CA1CDE0;
  if (!qword_27CA1CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDE0);
  }

  return result;
}

unint64_t sub_21497D7B0()
{
  result = qword_27CA1CDF0;
  if (!qword_27CA1CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CDF0);
  }

  return result;
}

unint64_t sub_21497D804()
{
  result = qword_27CA1CE08;
  if (!qword_27CA1CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE08);
  }

  return result;
}

uint64_t sub_21497D858(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CE10, &qword_21499EB68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497D7B0();
  sub_2149901B0();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_21498FF60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CDF8, &qword_21499EB60);
    v9[15] = 1;
    sub_21497DA8C(&qword_27CA1CE18, sub_21497DB04, MEMORY[0x277D83978]);
    sub_21498FFA0();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_21497DA8C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CDF8, &qword_21499EB60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21497DB04()
{
  result = qword_27CA1CE20;
  if (!qword_27CA1CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE20);
  }

  return result;
}

unint64_t sub_21497DB7C()
{
  result = qword_27CA1CE28;
  if (!qword_27CA1CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE28);
  }

  return result;
}

unint64_t sub_21497DBD4()
{
  result = qword_27CA1CE30;
  if (!qword_27CA1CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE30);
  }

  return result;
}

unint64_t sub_21497DC2C()
{
  result = qword_27CA1CE38;
  if (!qword_27CA1CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE38);
  }

  return result;
}

unint64_t sub_21497DC80()
{
  result = qword_27CA1CE48;
  if (!qword_27CA1CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE48);
  }

  return result;
}

uint64_t sub_21497DCD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xED0000657079546ELL || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694C79646F62 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21497DE3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CE50, &qword_21499ED48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21497DC80();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_21498FF60();
  v11 = v10;
  v23 = v9;
  v28 = 1;
  v12 = sub_21498FF60();
  v24 = v13;
  v21 = v12;
  v27 = 2;
  v20 = sub_21498FF20();
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  v26 = 3;
  sub_2148F6A8C(&qword_281190CE8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_21498FF40();
  (*(v6 + 8))(v8, v5);
  v15 = v25;

  v16 = v24;

  v17 = v22;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v23;
  a2[1] = v11;
  v19 = v20;
  a2[2] = v21;
  a2[3] = v16;
  a2[4] = v19;
  a2[5] = v17;
  a2[6] = v15;
  return result;
}

unint64_t sub_21497E190()
{
  result = qword_27CA1CE58;
  if (!qword_27CA1CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE58);
  }

  return result;
}

unint64_t sub_21497E1E8()
{
  result = qword_27CA1CE60;
  if (!qword_27CA1CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE60);
  }

  return result;
}

unint64_t sub_21497E240()
{
  result = qword_27CA1CE68;
  if (!qword_27CA1CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CE68);
  }

  return result;
}

uint64_t sub_21497E294(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 144) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = sub_21498E5D0();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21497E36C, 0, 0);
}

uint64_t sub_21497E36C(uint64_t a1)
{
  sub_21498E5F0();
  sub_21498E5B0();
  v2 = sub_21498E5F0();
  v3 = sub_21498FC80();
  result = sub_21498FCE0();
  if (result)
  {
    v5 = *(v1 + 24);
    if ((*(v1 + 144) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = sub_21498E5C0();
        _os_signpost_emit_with_name_impl(&dword_21488E000, v2, v3, v7, v5, "", v6, 2u);
        MEMORY[0x216059AC0](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v1 + 56);
  v8 = *(v1 + 64);
  v10 = *(v1 + 48);
  (*(*(v1 + 80) + 16))(*(v1 + 88), *(v1 + 96), *(v1 + 72));
  sub_21498E650();
  swift_allocObject();
  *(v1 + 104) = sub_21498E640();
  *(v1 + 112) = *(v10 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
  v11 = swift_allocObject();
  *(v1 + 120) = v11;
  *(v11 + 16) = xmmword_214991720;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;

  v12 = swift_task_alloc();
  *(v1 + 128) = v12;
  *v12 = v1;
  v12[1] = sub_21497E590;

  return sub_21494DD78(v11, 0, 0, 0);
}

uint64_t sub_21497E590()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_21497E788;
  }

  else
  {

    v2 = sub_21497E6B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21497E6B4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  sub_21497EFE0(*(v0 + 40), *(v0 + 24), *(v0 + 32), *(v0 + 144), *(v0 + 104));

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21497E788()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 144);

  sub_21497EFE0(v5, v6, v7, v8, v1);

  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21497E88C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 136) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = sub_21498E5D0();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21497E964, 0, 0);
}

uint64_t sub_21497E964(uint64_t a1)
{
  sub_21498E5F0();
  sub_21498E5B0();
  v2 = sub_21498E5F0();
  v3 = sub_21498FC80();
  result = sub_21498FCE0();
  if (result)
  {
    v5 = *(v1 + 24);
    if ((*(v1 + 136) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = sub_21498E5C0();
        _os_signpost_emit_with_name_impl(&dword_21488E000, v2, v3, v7, v5, "", v6, 2u);
        MEMORY[0x216059AC0](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v8 = *(v1 + 48);
  (*(*(v1 + 80) + 16))(*(v1 + 88), *(v1 + 96), *(v1 + 72));
  sub_21498E650();
  swift_allocObject();
  *(v1 + 104) = sub_21498E640();
  *(v1 + 112) = *(v8 + 64);

  v9 = swift_task_alloc();
  *(v1 + 120) = v9;
  *v9 = v1;
  v9[1] = sub_21497EB3C;
  v11 = *(v1 + 56);
  v10 = *(v1 + 64);

  return sub_21494E8C4(v11, v10);
}

uint64_t sub_21497EB3C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_21497ED2C;
  }

  else
  {

    v2 = sub_21497EC58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21497EC58()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  sub_21497EFE0(*(v0 + 40), *(v0 + 24), *(v0 + 32), *(v0 + 136), *(v0 + 104));

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21497ED2C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 136);

  sub_21497EFE0(v5, v7, v6, v8, v1);

  (*(v4 + 8))(v2, v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21497EE24()
{
  v0 = sub_21498E690();
  __swift_allocate_value_buffer(v0, qword_281194E18);
  __swift_project_value_buffer(v0, qword_281194E18);
  return sub_21498E680();
}

uint64_t sub_21497EEA4()
{
  v0 = sub_21498E690();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21498E600();
  __swift_allocate_value_buffer(v4, qword_281194E30);
  __swift_project_value_buffer(v4, qword_281194E30);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281194E18);
  (*(v1 + 16))(v3, v5, v0);
  return sub_21498E5E0();
}

uint64_t sub_21497EFE0(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v27 = a2;
  v6 = sub_21498E610();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21498E5D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_21498E5F0();
  sub_21498E630();
  v26 = sub_21498FC70();
  result = sub_21498FCE0();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    if (v27)
    {
LABEL_9:

      sub_21498E660();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D85B00])
      {
        v16 = 0;
        v17 = 0;
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v18 = "%s";
        v17 = 2;
        v16 = 1;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = v17;
      *(v19 + 1) = v16;
      *(v19 + 2) = 2080;
      v21 = sub_21498FE10();
      v23 = sub_2149079F4(v21, v22, &v28);

      *(v19 + 4) = v23;
      v24 = sub_21498E5C0();
      _os_signpost_emit_with_name_impl(&dword_21488E000, v14, v26, v24, v27, v18, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x216059AC0](v20, -1, -1);
      MEMORY[0x216059AC0](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21497F2F8@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v28 = *(v4 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onErrorActions);

  sub_2148A8A04(v7);

  sub_2148A8A04(v8);
  v9 = v28;
  result = sub_2148994D0(a1, &v22);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v9 + 16))
    {
      sub_2148994D0(v13, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      sub_21498E7E0();
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1(&v22);

        v18 = v21;
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      ++v12;
      __swift_destroy_boxed_opaque_existential_1(&v22);
      __swift_destroy_boxed_opaque_existential_1(v21);
      result = sub_2148970B8(&v20, &v22);
      v13 += 40;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_2148970B8(&v22, v25);
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    swift_getKeyPath();
    v16 = type metadata accessor for MARemoteViewModel(255);
    v17 = sub_214985D14(&qword_27CA1A5B0, type metadata accessor for MARemoteViewModel, &unk_214999798);
    *&v22 = v14;
    *(&v22 + 1) = v16;
    v23 = v15;
    v24 = v17;
    a4[3] = swift_getOpaqueTypeMetadata2();
    *&v22 = v14;
    *(&v22 + 1) = v16;
    v23 = v15;
    v24 = v17;
    a4[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a4);

    sub_21498F1C0();

    v18 = v25;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return result;
}

uint64_t sub_21497F590(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v3[21] = swift_task_alloc();
  v4 = sub_21498E7C0();
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v3[24] = *(v5 + 64);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v3[28] = swift_task_alloc();
  v6 = sub_21498E690();
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v3[36] = swift_task_alloc();
  v7 = sub_21498E1B0();
  v3[37] = v7;
  v3[38] = *(v7 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21497F8AC, 0, 0);
}

uint64_t sub_21497F8AC()
{
  v88 = v0;
  v87[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21498E8F0();
  v0[42] = v2;
  v3 = v2;
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[36];
  v85 = v1;
  sub_21498E1A0();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_21489DFCC(v0[36], &qword_27CA1A348, &qword_214991700);
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v7 = v0[32];
    v8 = v0[29];
    v9 = v0[30];
    v10 = __swift_project_value_buffer(v8, qword_281194E18);
    (*(v9 + 16))(v7, v10, v8);

    v11 = sub_21498E670();
    v12 = sub_21498FBB0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[32];
    v15 = v0[29];
    v16 = v0[30];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v87[0] = v18;
      *v17 = 136315138;
      v19 = sub_2149079F4(v85, v3, v87);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_21488E000, v11, v12, "HTTP Request Action: not url: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x216059AC0](v18, -1, -1);
      MEMORY[0x216059AC0](v17, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v14, v15);
    sub_21498FA20();
    sub_21498FA20();
LABEL_30:

    v76 = v0[1];

    return v76();
  }

  v20 = v0[19];
  (*(v0[38] + 32))(v0[41], v0[36], v0[37]);
  v21 = *(v20 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_viewModel);
  v0[43] = v21;
  if (!v21)
  {

    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v49 = v0[33];
    v50 = v0[29];
    v51 = v0[30];
    v52 = __swift_project_value_buffer(v50, qword_281194E18);
    (*(v51 + 16))(v49, v52, v50);
    v53 = sub_21498E670();
    v54 = sub_21498FBB0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_21488E000, v53, v54, "ViewModel is nil", v55, 2u);
      MEMORY[0x216059AC0](v55, -1, -1);
    }

    v86 = v0[41];
    v56 = v0[37];
    v57 = v0[38];
    v58 = v0[33];
    v59 = v0[29];
    v60 = v0[30];

    (*(v60 + 8))(v58, v59);
    sub_21498FA20();
    sub_21498FA20();
    (*(v57 + 8))(v86, v56);
    goto LABEL_30;
  }

  v22 = qword_281190DA0;

  if (v22 != -1)
  {
    swift_once();
  }

  v24 = v0[40];
  v23 = v0[41];
  v25 = v0[37];
  v26 = v0[38];
  v27 = v0[35];
  v28 = v0[29];
  v29 = v0[30];
  v30 = __swift_project_value_buffer(v28, qword_281194E18);
  v0[44] = v30;
  v31 = *(v29 + 16);
  v0[45] = v31;
  v0[46] = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v27, v30, v28);
  v32 = *(v26 + 16);
  v0[47] = v32;
  v0[48] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v32(v24, v23, v25);
  v33 = sub_21498E670();
  v84 = sub_21498FBD0();
  v34 = os_log_type_enabled(v33, v84);
  v35 = v0[40];
  v36 = v0[37];
  v37 = v0[38];
  v38 = v0[35];
  v39 = v0[29];
  v40 = v0[30];
  if (v34)
  {
    v83 = v21;
    v41 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v87[0] = v82;
    *v41 = 136315138;
    sub_214985D14(&unk_281192700, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v80 = v39;
    v81 = v38;
    v42 = sub_214990050();
    v44 = v43;
    log = v33;
    v45 = *(v37 + 8);
    v45(v35, v36);
    v46 = sub_2149079F4(v42, v44, v87);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_21488E000, log, v84, "HTTP Request Action: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x216059AC0](v82, -1, -1);
    v47 = v41;
    v21 = v83;
    MEMORY[0x216059AC0](v47, -1, -1);

    v48 = *(v40 + 8);
    v48(v81, v80);
  }

  else
  {

    v45 = *(v37 + 8);
    v45(v35, v36);
    v48 = *(v40 + 8);
    v48(v38, v39);
  }

  v0[49] = v45;
  v0[50] = v48;
  v61 = v0[28];
  sub_2148AA824(v0[19] + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_method, v61, &qword_27CA1A800, &unk_214993100);
  v62 = sub_21498E900();
  v63 = *(v62 - 8);
  if ((*(v63 + 48))(v61, 1, v62) == 1)
  {
    sub_21489DFCC(v0[28], &qword_27CA1A800, &unk_214993100);
    v64 = 1;
  }

  else
  {
    v65 = sub_21498E8F0();
    v67 = v66;
    (*(v63 + 8))(v0[28], v62);
    v68 = sub_21491F750(v65, v67);
    if (v68 == 4)
    {
      v64 = 1;
    }

    else
    {
      v64 = v68;
    }
  }

  v69 = v0[27];
  sub_2148AA824(v0[19] + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_jsonBody, v69, &qword_27CA1A808, &unk_21499B730);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v69, 1, v70) == 1)
  {
    sub_21489DFCC(v0[27], &qword_27CA1A808, &unk_21499B730);
    v72 = 0;
    v73 = 0xF000000000000000;
  }

  else
  {
    sub_2148B4A4C();
    sub_21498E750();
    (*(v71 + 8))(v0[27], v70);
    v77 = v0[12];
    sub_21498DF70();
    swift_allocObject();
    sub_21498DF60();
    v0[16] = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6D0, &qword_2149933D0);
    sub_2148B4AC8();
    v72 = sub_21498DF50();
    v73 = v78;
  }

  v0[51] = v72;
  v0[52] = v73;
  __swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository), *(v21 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository + 24));
  v74 = swift_task_alloc();
  v0[53] = v74;
  *v74 = v0;
  v74[1] = sub_21498070C;

  return sub_214937744(v85, v3, v64, v72, v73);
}

uint64_t sub_21498070C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = v2;

  if (v2)
  {
    v5 = sub_214980878;
  }

  else
  {
    v5 = sub_214980CD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_214980878()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  sub_21489B8F0(v0[51], v0[52]);
  v35 = v0[56];
  v0[13] = v35;
  v33 = v0[47];
  v1 = v0[45];
  v2 = v0[44];
  v31 = v0[41];
  v3 = v0[39];
  v4 = v0[37];
  v5 = v0[31];
  v6 = v0[29];
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  sub_21498FE70();
  v30 = v0[10];
  v7 = v0[11];
  v1(v5, v2, v6);
  v33(v3, v31, v4);

  v8 = sub_21498E670();
  LOBYTE(v2) = sub_21498FBB0();

  v34 = v2;
  v9 = os_log_type_enabled(v8, v2);
  v11 = v0[49];
  v10 = v0[50];
  v12 = v0[39];
  v13 = v0[37];
  v14 = v0[31];
  v15 = v0[29];
  if (v9)
  {
    v32 = v0[31];
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36[0] = v29;
    *v16 = 136315394;
    sub_214985D14(&unk_281192700, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v27 = v15;
    v28 = v10;
    v17 = sub_214990050();
    v19 = v18;
    v11(v12, v13);
    v20 = sub_2149079F4(v17, v19, v36);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_2149079F4(v30, v7, v36);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_21488E000, v8, v34, "Network request failed with url: %s | Error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v29, -1, -1);
    MEMORY[0x216059AC0](v16, -1, -1);

    v28(v32, v27);
  }

  else
  {

    v11(v12, v13);
    v10(v14, v15);
  }

  sub_21498FA20();
  sub_21498FA20();

  v22 = v0[49];
  v23 = v0[41];
  v24 = v0[37];

  v22(v23, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_214980CD8()
{
  v79 = v0;
  v78[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = sub_21498E1C0();
  v0[14] = 0;
  v3 = [v1 JSONObjectWithData:v2 options:0 error:v0 + 14];

  v4 = v0[14];
  if (!v3)
  {
    v17 = v0[54];
    v18 = v0[55];
    v20 = v0[51];
    v19 = v0[52];
    v21 = v4;
    v22 = sub_21498E100();

    swift_willThrow();
    sub_21489B4F8(v17, v18);
    sub_21489B8F0(v20, v19);
    v0[10] = 0;
    v73 = v0[47];
    v23 = v0[45];
    v24 = v0[44];
    v70 = v0[41];
    v25 = v0[39];
    v26 = v0[37];
    v27 = v0[31];
    v28 = v0[29];
    v0[11] = 0xE000000000000000;
    v76 = v22;
    v0[13] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
    sub_21498FE70();
    v29 = v0[11];
    v67 = v0[10];
    v23(v27, v24, v28);
    v73(v25, v70, v26);

    v30 = sub_21498E670();
    LOBYTE(v24) = sub_21498FBB0();

    v74 = v24;
    v31 = os_log_type_enabled(v30, v24);
    v33 = v0[49];
    v32 = v0[50];
    v34 = v0[39];
    v35 = v0[37];
    v36 = v0[31];
    v37 = v0[29];
    if (v31)
    {
      v71 = v0[31];
      v38 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v78[0] = v68;
      *v38 = 136315394;
      sub_214985D14(&unk_281192700, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v65 = v37;
      v66 = v32;
      v39 = sub_214990050();
      v41 = v40;
      v33(v34, v35);
      v42 = sub_2149079F4(v39, v41, v78);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v43 = sub_2149079F4(v67, v29, v78);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_21488E000, v30, v74, "Network request failed with url: %s | Error: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v68, -1, -1);
      MEMORY[0x216059AC0](v38, -1, -1);

      v66(v71, v65);
    }

    else
    {

      v33(v34, v35);
      v32(v36, v37);
    }

    sub_21498FA20();
    sub_21498FA20();

    goto LABEL_14;
  }

  v5 = v4;
  sub_21498FD40();
  swift_unknownObjectRelease();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CE98, &qword_21499EFA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = v0[22];
  v8 = v0[23];
  v9 = v0 + 22;
  v10 = v0[21];
  v11 = v0[15];
  v0[9] = v6;
  v0[6] = v11;
  sub_2149814F4((v0 + 6), v10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  if ((*(v8 + 48))(v10, 1, v7) == 1)
  {
    sub_21489DFCC(v0[21], &qword_27CA1A330, &qword_2149916E0);
LABEL_5:
    v9 = v0 + 29;
    v12 = v0 + 34;
    (v0[45])(v0[34], v0[44], v0[29]);
    v13 = sub_21498E670();
    v14 = sub_21498FBB0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21488E000, v13, v14, "Unable to parse json", v15, 2u);
      MEMORY[0x216059AC0](v15, -1, -1);
    }

    v16 = (v0 + 50);
    goto LABEL_13;
  }

  v12 = v0 + 26;
  v44 = v0[26];
  v45 = v0[25];
  v47 = v0[22];
  v46 = v0[23];
  v48 = v0[20];
  v72 = v45;
  v75 = v48;
  v69 = v0[19];
  v49 = v0[17];
  v77 = *(v46 + 32);
  v77(v44, v0[21], v47);
  v50 = sub_21498FAE0();
  (*(*(v50 - 8) + 56))(v48, 1, 1, v50);
  v51 = *(v46 + 16);
  v46 += 16;
  v51(v45, v44, v47);
  sub_21498FAB0();

  v52 = sub_21498FAA0();
  v53 = (*(v46 + 64) + 48) & ~*(v46 + 64);
  v54 = swift_allocObject();
  v55 = MEMORY[0x277D85700];
  v54[2] = v52;
  v54[3] = v55;
  v54[4] = v69;
  v54[5] = v49;
  v77(v54 + v53, v72, v47);
  sub_214906278(0, 0, v75, &unk_21499EFB0, v54);

  v16 = (v46 - 8);
LABEL_13:
  v56 = v0[54];
  v57 = v0[55];
  v59 = v0[51];
  v58 = v0[52];
  (*v16)(*v12, *v9);
  sub_21498FA20();
  sub_21498FA20();
  sub_21489B8F0(v59, v58);
  sub_21489B4F8(v56, v57);
LABEL_14:
  v60 = v0[49];
  v61 = v0[41];
  v62 = v0[37];

  v60(v61, v62);

  v63 = v0[1];

  return v63();
}

uint64_t sub_2149814F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v86 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v95 = (v86 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = (v86 - v13);
  v15 = sub_21498E7C0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v97 = v86 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v86 - v22;
  sub_21489E614(a1, &v102);
  if (swift_dynamicCast())
  {
    sub_21498FB60();
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  sub_21489E614(a1, &v102);
  if (swift_dynamicCast())
  {
    sub_21498F910();

    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  sub_21489E614(a1, &v102);
  if (swift_dynamicCast())
  {
    sub_21498FA40();
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  sub_21489E614(a1, &v102);
  if (swift_dynamicCast())
  {
    sub_21498FB10();
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  sub_21489E614(a1, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CEA8, &qword_21499EFD8);
  v25 = swift_dynamicCast();
  v96 = v15;
  v94 = v16;
  if (v25)
  {
    v26 = *(v99 + 16);
    if (v26)
    {
      v86[0] = a2;
      v97 = v99;
      v27 = v99 + 32;
      v28 = (v94 + 48);
      v29 = (v94 + 32);
      v30 = MEMORY[0x277D84F90];
      do
      {
        sub_21489E614(v27, &v102);
        sub_2149814F4(&v102, v14);
        __swift_destroy_boxed_opaque_existential_1(&v102);
        v31 = v96;
        if ((*v28)(v14, 1, v96) == 1)
        {
          sub_21489DFCC(v14, &qword_27CA1A330, &qword_2149916E0);
        }

        else
        {
          v32 = *v29;
          (*v29)(v23, v14, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_2148A92FC(0, *(v30 + 2) + 1, 1, v30);
          }

          v34 = *(v30 + 2);
          v33 = *(v30 + 3);
          if (v34 >= v33 >> 1)
          {
            v30 = sub_2148A92FC((v33 > 1), v34 + 1, 1, v30);
          }

          *(v30 + 2) = v34 + 1;
          v32(&v30[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v34], v23, v96);
        }

        v27 += 32;
        --v26;
      }

      while (v26);

      a2 = v86[0];
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    v83 = swift_allocObject();
    *(v83 + 16) = v30;
    *a2 = v83;
    v84 = v94;
    v85 = v96;
    (*(v94 + 104))(a2, *MEMORY[0x277D23278], v96);
    return (*(v84 + 56))(a2, 0, 1, v85);
  }

  sub_21489E614(a1, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CE98, &qword_21499EFA0);
  if (!swift_dynamicCast())
  {
    sub_21489E614(a1, &v102);
    v75 = swift_dynamicCast();
    v76 = v16;
    v77 = *(v16 + 56);
    if (v75)
    {
      v77(v7, 0, 1, v15);
      v78 = *(v76 + 32);
      v78(v19, v7, v15);
      v78(a2, v19, v15);
      v79 = a2;
      v80 = 0;
    }

    else
    {
      v77(v7, 1, 1, v15);
      sub_21489DFCC(v7, &qword_27CA1A330, &qword_2149916E0);
      v79 = a2;
      v80 = 1;
    }

    return (v77)(v79, v80, 1, v15);
  }

  v87 = v10;
  v86[0] = a2;
  v35 = v99;
  v36 = sub_2148E0C4C(MEMORY[0x277D84F90]);
  v37 = 0;
  v39 = v35 + 64;
  v38 = *(v35 + 64);
  v89 = v35;
  v40 = 1 << *(v35 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v38;
  v43 = (v40 + 63) >> 6;
  v93 = (v16 + 48);
  v92 = (v16 + 32);
  v86[1] = v16 + 40;
  v88 = (v16 + 56);
  v44 = v95;
  v90 = v43;
  v91 = v35 + 64;
  if ((v41 & v38) == 0)
  {
    goto LABEL_29;
  }

  do
  {
    while (1)
    {
      v47 = v37;
LABEL_37:
      v50 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v51 = v50 | (v47 << 6);
      v52 = (*(v89 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      sub_21489E614(*(v89 + 56) + 32 * v51, v98);
      *&v99 = v54;
      *(&v99 + 1) = v53;
      sub_2148A4198(v98, &v100);

LABEL_38:
      v102 = v99;
      v103[0] = v100;
      v103[1] = v101;
      v55 = *(&v99 + 1);
      if (!*(&v99 + 1))
      {

        v81 = swift_allocObject();
        *(v81 + 16) = v36;
        v82 = v86[0];
        *v86[0] = v81;
        (*(v16 + 104))(v82, *MEMORY[0x277D23270], v15);
        return (*(v16 + 56))(v82, 0, 1, v15);
      }

      v56 = v102;
      sub_2148A4198(v103, &v99);
      sub_2149814F4(&v99, v44);
      if ((*v93)(v44, 1, v15) == 1)
      {
        break;
      }

      v61 = *v92;
      (*v92)(v97, v44, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v98[0] = v36;
      v64 = sub_214907F9C(v56, v55);
      v65 = v36[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_67;
      }

      v68 = v63;
      if (v36[3] >= v67)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v15 = v96;
          if ((v63 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          sub_214985524();
          v15 = v96;
          if ((v68 & 1) == 0)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        sub_214955BF4(v67, isUniquelyReferenced_nonNull_native);
        v69 = sub_214907F9C(v56, v55);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_69;
        }

        v64 = v69;
        v15 = v96;
        if ((v68 & 1) == 0)
        {
LABEL_54:
          v36 = *&v98[0];
          *(*&v98[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
          v71 = (v36[6] + 16 * v64);
          *v71 = v56;
          v71[1] = v55;
          v61((v36[7] + *(v94 + 72) * v64), v97, v15);
          __swift_destroy_boxed_opaque_existential_1(&v99);
          v72 = v36[2];
          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (v73)
          {
            goto LABEL_68;
          }

          v36[2] = v74;
          v16 = v94;
          goto LABEL_56;
        }
      }

      v36 = *&v98[0];
      v16 = v94;
      (*(v94 + 40))(*(*&v98[0] + 56) + *(v94 + 72) * v64, v97, v15);
      __swift_destroy_boxed_opaque_existential_1(&v99);
LABEL_56:
      v44 = v95;
      v39 = v91;
      v43 = v90;
      if (!v42)
      {
        goto LABEL_29;
      }
    }

    sub_21489DFCC(v44, &qword_27CA1A330, &qword_2149916E0);
    v57 = sub_214907F9C(v56, v55);
    v59 = v58;

    if (v59)
    {
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *&v98[0] = v36;
      v39 = v91;
      v43 = v90;
      if (!v60)
      {
        sub_214985524();
        v36 = *&v98[0];
      }

      v46 = v87;
      (*(v16 + 32))(v87, v36[7] + *(v16 + 72) * v57, v15);
      sub_2149850EC(v57, v36);
      __swift_destroy_boxed_opaque_existential_1(&v99);
      v45 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v99);
      v45 = 1;
      v46 = v87;
      v39 = v91;
      v43 = v90;
    }

    (*v88)(v46, v45, 1, v15);
    sub_21489DFCC(v46, &qword_27CA1A330, &qword_2149916E0);
  }

  while (v42);
LABEL_29:
  if (v43 <= v37 + 1)
  {
    v48 = v37 + 1;
  }

  else
  {
    v48 = v43;
  }

  v49 = v48 - 1;
  while (1)
  {
    v47 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v47 >= v43)
    {
      v42 = 0;
      v100 = 0u;
      v101 = 0u;
      v37 = v49;
      v99 = 0u;
      goto LABEL_38;
    }

    v42 = *(v39 + 8 * v47);
    ++v37;
    if (v42)
    {
      v37 = v47;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = sub_2149900F0();
  __break(1u);
  return result;
}

uint64_t sub_214982060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21498FAB0();
  v6[5] = sub_21498FAA0();
  v8 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2149820FC, v8, v7);
}

uint64_t sub_2149820FC()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_214982188(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_214982188(NSObject *a1, uint64_t a2)
{
  v85 = sub_21498E690();
  v5 = *(v85 - 8);
  v6 = MEMORY[0x28223BE20](v85);
  v8 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v84 = &v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v96 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v95 = &v75 - v14;
  MEMORY[0x28223BE20](v13);
  v94 = (&v75 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CEA0, &unk_21499EFC0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v100 = (&v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v97 = (&v75 - v19);
  v20 = sub_21498E7C0();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v83 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v90 = &v75 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - v26);
  v88 = *(v21 + 16);
  v89 = v21 + 16;
  v88(&v75 - v26, a2, v20);
  if ((*(v21 + 88))(v27, v20) != *MEMORY[0x277D23270])
  {
    if (qword_281190DA0 == -1)
    {
LABEL_26:
      v69 = v85;
      v70 = __swift_project_value_buffer(v85, qword_281194E18);
      (*(v5 + 16))(v8, v70, v69);
      v71 = sub_21498E670();
      v72 = sub_21498FBB0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_21488E000, v71, v72, "updateDataStore input is not a dictionary", v73, 2u);
        MEMORY[0x216059AC0](v73, -1, -1);
      }

      (*(v5 + 8))(v8, v85);
      return (*(v21 + 8))(v27, v20);
    }

LABEL_31:
    swift_once();
    goto LABEL_26;
  }

  v93 = a1;
  v77 = v2;
  v86 = v21;
  v8 = (v21 + 96);
  (*(v21 + 96))(v27, v20);
  v76 = *v27;
  v28 = *(v76 + 16);
  v29 = *(v28 + 64);
  v79 = v28 + 64;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v21 = v31 & v29;
  v78 = (v30 + 63) >> 6;
  v99 = v8 - 8;
  v91 = &v8[-6];
  v92 = v8 - 5;
  v82 = v8 - 11;
  v81 = (v5 + 16);
  v80 = (v5 + 8);
  v87 = v28;

  v32 = 0;
  v27 = &qword_27CA1CB10;
  v33 = v100;
  if (!v21)
  {
LABEL_6:
    if (v78 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    else
    {
      v34 = v78;
    }

    v35 = v34 - 1;
    v36 = v99;
    while (1)
    {
      v5 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v5 >= v78)
      {
        v49 = v20;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
        (*(*(v68 - 8) + 56))(v33, 1, 1, v68);
        v21 = 0;
        goto LABEL_14;
      }

      v21 = *(v79 + 8 * v5);
      ++v32;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  while (1)
  {
    v5 = v32;
LABEL_13:
    v37 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v38 = v37 | (v5 << 6);
    v39 = v86;
    v40 = (*(v87 + 48) + 16 * v38);
    v42 = *v40;
    v41 = v40[1];
    v43 = v90;
    v88(v90, *(v87 + 56) + *(v86 + 72) * v38, v20);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
    v45 = *(v44 + 48);
    v46 = v100;
    *v100 = v42;
    v46[1] = v41;
    v47 = *(v39 + 32);
    v48 = v43;
    v49 = v20;
    v33 = v46;
    v36 = v99;
    v47(v46 + v45, v48, v20);
    (*(*(v44 - 8) + 56))(v33, 0, 1, v44);

    v35 = v5;
LABEL_14:
    v50 = v33;
    v51 = v97;
    sub_2148B4C68(v50, v97, &qword_27CA1CEA0, &unk_21499EFC0);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {
      break;
    }

    v103 = v35;
    v53 = *v51;
    v54 = v51[1];
    isa = v36->isa;
    v56 = v51 + *(v52 + 48);
    v57 = v95;
    v20 = v49;
    (v36->isa)(v95, v56, v49);
    (v92->isa)(v57, 0, 1, v49);
    v58 = v96;
    v98 = v53;
    v59 = v93;
    sub_21498E8D0();
    v60 = v94;
    sub_214982B08(v57, v58, v94);
    sub_21489DFCC(v58, &qword_27CA1A330, &qword_2149916E0);
    sub_21489DFCC(v57, &qword_27CA1A330, &qword_2149916E0);
    if ((*v91)(v60, 1, v20) == 1)
    {

      sub_21489DFCC(v60, &qword_27CA1A330, &qword_2149916E0);
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v61 = v85;
      v62 = __swift_project_value_buffer(v85, qword_281194E18);
      v63 = v84;
      (*v81)(v84, v62, v61);
      v8 = sub_21498E670();
      v64 = sub_21498FBB0();
      v65 = os_log_type_enabled(v8, v64);
      v33 = v100;
      if (v65)
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_21488E000, v8, v64, "updateDataStore: unable to get decodable value", v66, 2u);
        MEMORY[0x216059AC0](v66, -1, -1);
      }

      (*v80)(v63, v61);
      v32 = v103;
    }

    else
    {
      v67 = v83;
      isa(v83, v60, v20);
      v101 = v98;
      v102 = v54;
      v8 = v59;
      sub_21498E990();
      (v82->isa)(v67, v20);

      v32 = v103;
      v33 = v100;
    }

    v27 = &qword_27CA1CB10;
    if (!v21)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_214982B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v217 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CEA0, &unk_21499EFC0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v213 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v212 = (&v181 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v197 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v203 = &v181 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v202 = &v181 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v201 = &v181 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v181 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v181 - v21;
  v23 = sub_21498E7C0();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v207 = &v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v199 = &v181 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v200 = &v181 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v206 = &v181 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v216 = &v181 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v209 = &v181 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v181 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  i = &v181 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v181 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v205 = &v181 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v181 - v47;
  sub_2148AA824(a1, v22, &qword_27CA1A330, &qword_2149916E0);
  v49 = *(v24 + 48);
  if (v49(v22, 1, v23) == 1)
  {
    sub_21489DFCC(v22, &qword_27CA1A330, &qword_2149916E0);
    return sub_2148AA824(v217, a3, &qword_27CA1A330, &qword_2149916E0);
  }

  v196 = v39;
  v198 = a3;
  v51 = *(v24 + 32);
  v51(v48, v22, v23);
  sub_2148AA824(v217, v20, &qword_27CA1A330, &qword_2149916E0);
  v191 = v24 + 48;
  v190 = v49;
  if (v49(v20, 1, v23) == 1)
  {
    (*(v24 + 8))(v48, v23);
    sub_21489DFCC(v20, &qword_27CA1A330, &qword_2149916E0);
    return (*(v24 + 56))(v198, 1, 1, v23);
  }

  v52 = v205;
  v214 = v24 + 32;
  v215 = v51;
  v51(v205, v20, v23);
  v53 = v24 + 16;
  v54 = *(v24 + 16);
  v187 = v48;
  v54(v44, v48, v23);
  v55 = *(v24 + 88);
  v56 = v55(v44, v23);
  v57 = v56 == *MEMORY[0x277D23278];
  v58 = v198;
  v59 = v24;
  v217 = v23;
  if (v57)
  {
    v60 = *(v24 + 96);
    v61 = v56;
    v62 = v217;
    v212 = v60;
    (v60)(v44, v217);
    v216 = *v44;
    v213 = *(v216 + 2);
    v63 = i;
    v54(i, v52, v62);
    v64 = v63;
    if (v55(v63, v62) == v61)
    {
      v65 = v217;
      (v212)(v63, v217);
      v66 = *(*v63 + 16);
      v67 = v213;

      v218 = v66;
      sub_2148A8D38(v67);
      v68 = *(v59 + 8);
      v68(v52, v65);
      v68(v187, v65);
      v69 = swift_allocObject();
      *(v69 + 16) = v218;
      v70 = v198;
      *v198 = v69;
      (*(v59 + 104))(v70, v61, v65);
    }

    else
    {
      v169 = *(v59 + 8);
      v65 = v217;
      v169(v52, v217);
      v169(v64, v65);
      v70 = v198;
      v215(v198, v187, v65);
    }

    (*(v59 + 56))(v70, 0, 1, v65);
  }

  else
  {
    v210 = v54;
    if (v56 == *MEMORY[0x277D23270])
    {
      v204 = v24;
      v71 = *(v24 + 96);
      v182 = v56;
      v72 = v217;
      v71(v44, v217);
      v73 = *v44;
      v74 = *(*v44 + 16);
      v75 = v196;
      v76 = v53;
      v77 = v205;
      v208 = v76;
      v210(v196, v205, v72);
      v78 = v55(v75, v72);
      if (v78 != v182)
      {
        v172 = v204;
        v173 = *(v204 + 8);
        v174 = v217;
        v173(v77, v217);
        v173(v75, v174);
        v175 = v198;
        v215(v198, v187, v174);
        (*(v172 + 56))(v175, 0, 1, v174);
      }

      v181 = v73;
      v71(v75, v217);
      v79 = *(*v75 + 16);

      v196 = v79;

      v80 = sub_2148E0C4C(MEMORY[0x277D84F90]);
      v81 = v80;
      v82 = 0;
      v83 = v74 + 64;
      v84 = 1 << *(v74 + 32);
      v85 = -1;
      if (v84 < 64)
      {
        v85 = ~(-1 << v84);
      }

      v86 = v85 & *(v74 + 64);
      v87 = (v84 + 63) >> 6;
      v88 = v204;
      v185 = v204 + 56;
      v194 = (v204 + 8);
      v183 = (v204 + 40);
      v89 = v213;
      v195 = v74;
      v193 = v74 + 64;
      v192 = v87;
      for (i = v80; v86; i = v81)
      {
        while (1)
        {
          v90 = v82;
LABEL_23:
          v93 = __clz(__rbit64(v86));
          v86 &= v86 - 1;
          v94 = v93 | (v90 << 6);
          v95 = (*(v74 + 48) + 16 * v94);
          v97 = *v95;
          v96 = v95[1];
          v98 = *(v74 + 56) + *(v88 + 72) * v94;
          v99 = v209;
          v100 = v217;
          v210(v209, v98, v217);
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
          v102 = *(v101 + 48);
          *v89 = v97;
          v89[1] = v96;
          v215((v89 + v102), v99, v100);
          (*(*(v101 - 8) + 56))(v89, 0, 1, v101);

          v81 = i;
LABEL_24:
          v103 = v212;
          sub_2148B4C68(v89, v212, &qword_27CA1CEA0, &unk_21499EFC0);
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
          if ((*(*(v104 - 8) + 48))(v103, 1, v104) == 1)
          {

            v176 = v204;
            v177 = *(v204 + 8);
            v178 = v217;
            v177(v205, v217);
            v177(v187, v178);
            v179 = swift_allocObject();
            *(v179 + 16) = v81;
            v180 = v198;
            *v198 = v179;
            (*(v176 + 104))(v180, v182, v178);
            (*(v176 + 56))(v180, 0, 1, v178);
          }

          v105 = *v103;
          v106 = v103[1];
          v215(v216, v103 + *(v104 + 48), v217);
          v107 = v196;
          if (!*(v196 + 2))
          {
            break;
          }

          v108 = sub_214907F9C(v105, v106);
          if ((v109 & 1) == 0)
          {
            break;
          }

          v188 = v105;
          v189 = v106;
          v110 = *(v107 + 7);
          v111 = v204;
          v186 = *(v204 + 72);
          v112 = v200;
          v113 = v217;
          v114 = v210;
          v210(v200, (v110 + v186 * v108), v217);
          v115 = v206;
          v215(v206, v112, v113);
          v116 = v202;
          v114(v202, v216, v113);
          v117 = *(v111 + 56);
          v117(v116, 0, 1, v113);
          v118 = v203;
          v114(v203, v115, v113);
          v184 = v117;
          v117(v118, 0, 1, v113);
          v119 = v201;
          sub_214982B08(v116, v118, v201);
          sub_21489DFCC(v118, &qword_27CA1A330, &qword_2149916E0);
          sub_21489DFCC(v116, &qword_27CA1A330, &qword_2149916E0);
          if (v190(v119, 1, v113) == 1)
          {
            sub_21489DFCC(v119, &qword_27CA1A330, &qword_2149916E0);
            v81 = i;
            v120 = sub_214907F9C(v188, v189);
            v122 = v121;

            if (v122)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v218 = v81;
              v89 = v213;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_214985524();
                v81 = v218;
              }

              v124 = v197;
              v125 = v217;
              v215(v197, (*(v81 + 7) + v120 * v186), v217);
              sub_2149850EC(v120, v81);
              v126 = *v194;
              (*v194)(v206, v125);
              v126(v216, v125);
              v127 = 0;
              v88 = v204;
            }

            else
            {
              v162 = *v194;
              v163 = v217;
              (*v194)(v206, v217);
              v162(v216, v163);
              v127 = 1;
              v88 = v204;
              v89 = v213;
              v124 = v197;
            }

            v184(v124, v127, 1, v217);
            sub_21489DFCC(v124, &qword_27CA1A330, &qword_2149916E0);
            v74 = v195;
            goto LABEL_56;
          }

          v215(v199, v119, v217);
          v146 = i;
          v147 = swift_isUniquelyReferenced_nonNull_native();
          v218 = v146;
          v148 = v188;
          v149 = v189;
          v150 = sub_214907F9C(v188, v189);
          v152 = *(v146 + 2);
          v153 = (v151 & 1) == 0;
          v134 = __OFADD__(v152, v153);
          v154 = v152 + v153;
          if (v134)
          {
            goto LABEL_71;
          }

          v155 = v151;
          if (*(v146 + 3) >= v154)
          {
            v74 = v195;
            if (v147)
            {
              if ((v151 & 1) == 0)
              {
                goto LABEL_48;
              }
            }

            else
            {
              v168 = v150;
              sub_214985524();
              v74 = v195;
              v150 = v168;
              if ((v155 & 1) == 0)
              {
                goto LABEL_48;
              }
            }
          }

          else
          {
            sub_214955BF4(v154, v147);
            v150 = sub_214907F9C(v148, v149);
            if ((v155 & 1) != (v156 & 1))
            {
              goto LABEL_73;
            }

            v74 = v195;
            if ((v155 & 1) == 0)
            {
LABEL_48:
              v157 = v217;
              v81 = v218;
              *&v218[8 * (v150 >> 6) + 64] |= 1 << v150;
              v158 = (*(v81 + 6) + 16 * v150);
              *v158 = v148;
              v158[1] = v149;
              v215((*(v81 + 7) + v150 * v186), v199, v157);
              v159 = *v194;
              (*v194)(v206, v157);
              v159(v216, v157);
              v160 = *(v81 + 2);
              v134 = __OFADD__(v160, 1);
              v161 = v160 + 1;
              if (v134)
              {
                goto LABEL_72;
              }

              *(v81 + 2) = v161;
              goto LABEL_55;
            }
          }

          v164 = v150;

          v165 = v217;
          v81 = v218;
          (*v183)(*(v218 + 7) + v164 * v186, v199, v217);
          v166 = *v194;
          (*v194)(v206, v165);
          v166(v216, v165);
LABEL_55:
          v88 = v204;
          v89 = v213;
LABEL_56:
          v83 = v193;
          v87 = v192;
          i = v81;
          if (!v86)
          {
            goto LABEL_15;
          }
        }

        v128 = v207;
        v210(v207, v216, v217);
        v129 = swift_isUniquelyReferenced_nonNull_native();
        v218 = v81;
        v130 = sub_214907F9C(v105, v106);
        v132 = *(v81 + 2);
        v133 = (v131 & 1) == 0;
        v134 = __OFADD__(v132, v133);
        v135 = v132 + v133;
        if (v134)
        {
          goto LABEL_69;
        }

        v136 = v131;
        if (*(v81 + 3) >= v135)
        {
          v74 = v195;
          if (v129)
          {
            if ((v131 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v167 = v130;
            sub_214985524();
            v74 = v195;
            v130 = v167;
            if ((v136 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          sub_214955BF4(v135, v129);
          v130 = sub_214907F9C(v105, v106);
          if ((v136 & 1) != (v137 & 1))
          {
            goto LABEL_73;
          }

          v74 = v195;
          if ((v136 & 1) == 0)
          {
LABEL_36:
            v138 = v217;
            v81 = v218;
            *&v218[8 * (v130 >> 6) + 64] |= 1 << v130;
            v139 = (*(v81 + 6) + 16 * v130);
            *v139 = v105;
            v139[1] = v106;
            v88 = v204;
            v215((*(v81 + 7) + *(v204 + 72) * v130), v128, v138);
            (*(v88 + 8))(v216, v138);
            v140 = *(v81 + 2);
            v134 = __OFADD__(v140, 1);
            v141 = v140 + 1;
            if (v134)
            {
              goto LABEL_70;
            }

            *(v81 + 2) = v141;
            goto LABEL_41;
          }
        }

        v142 = v130;

        v81 = v218;
        v88 = v204;
        v143 = *(v218 + 7) + *(v204 + 72) * v142;
        v144 = v217;
        (*(v204 + 40))(v143, v128, v217);
        (*(v88 + 8))(v216, v144);
LABEL_41:
        v89 = v213;
        v83 = v193;
        v87 = v192;
      }

LABEL_15:
      if (v87 <= v82 + 1)
      {
        v91 = v82 + 1;
      }

      else
      {
        v91 = v87;
      }

      v92 = v91 - 1;
      while (1)
      {
        v90 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          break;
        }

        if (v90 >= v87)
        {
          v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB10, &qword_21499D2A0);
          (*(*(v145 - 8) + 56))(v89, 1, 1, v145);
          v86 = 0;
          v82 = v92;
          goto LABEL_24;
        }

        v86 = *(v83 + 8 * v90);
        ++v82;
        if (v86)
        {
          v82 = v90;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      result = sub_2149900F0();
      __break(1u);
    }

    else
    {
      v170 = *(v24 + 8);
      v171 = v217;
      v170(v205, v217);
      v215(v58, v187, v171);
      (*(v24 + 56))(v58, 0, 1, v171);
      return (v170)(v44, v171);
    }
  }

  return result;
}

unint64_t sub_214983ED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214985E74(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_214983F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214985E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214983F28(uint64_t a1)
{
  v2 = sub_214985CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214983F64(uint64_t a1)
{
  v2 = sub_214985CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_214983FA0(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v79 = v2;
  v80 = v5;
  v74 = sub_21498E890();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v61 - v10;
  v11 = sub_21498E900();
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v78 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CEB0, &qword_21499F008);
  v77 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_viewModel) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214985CC0();
  v16 = v79;
  sub_2149901B0();
  if (v16)
  {
LABEL_5:

    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  v17 = v76;
  v79 = v1;
  v70 = a1;
  LOBYTE(v81[0]) = 0;
  sub_214985D14(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  sub_21498FFA0();
  v18 = *(v75 + 32);
  v19 = v79;
  v69 = OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_urlReference;
  v18(v79 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_urlReference, v78, v11);
  LOBYTE(v81[0]) = 1;
  sub_21498FF40();
  v68 = v11;
  sub_2148B4C68(v17, v19 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_method, &qword_27CA1A800, &unk_214993100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  LOBYTE(v81[0]) = 6;
  sub_214941B08();
  v20 = v72;
  v67 = 0;
  sub_21498FF40();
  v21 = v77;
  sub_2148B4C68(v20, v19 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_jsonBody, &qword_27CA1A808, &unk_21499B730);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5F0, &qword_21499B770);
  LOBYTE(v82) = 3;
  v23 = sub_2148AAA9C();
  sub_21498FF40();
  v63 = v23;
  v64 = v22;
  v65 = v15;
  v66 = v13;
  v62 = 0;
  v26 = *&v81[0];
  v27 = MEMORY[0x277D84F90];
  if (!*&v81[0])
  {
    v26 = MEMORY[0x277D84F90];
  }

  v72 = v26;
  v28 = *(v26 + 2);
  if (v28)
  {
    v82 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v28, 0);
    v29 = v82;
    v78 = *(v71 + 16);
    v30 = v73;
    v31 = &v72[(*(v71 + 80) + 32) & ~*(v71 + 80)];
    v76 = *(v71 + 72);
    v32 = (v71 + 8);
    v33 = v74;
    do
    {
      (v78)(v30, v31, v33);
      sub_21498E880();
      (*v32)(v30, v33);
      v82 = v29;
      v35 = *(v29 + 2);
      v34 = *(v29 + 3);
      if (v35 >= v34 >> 1)
      {
        sub_2148A9BD8((v34 > 1), v35 + 1, 1);
        v29 = v82;
      }

      *(v29 + 2) = v35 + 1;
      sub_2148970B8(v81, &v29[40 * v35 + 32]);
      v31 += v76;
      --v28;
      v30 = v73;
      v33 = v74;
    }

    while (v28);

    v21 = v77;
    v27 = MEMORY[0x277D84F90];
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    v30 = v73;
    v33 = v74;
  }

  *(v79 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onSuccessActions) = v29;
  LOBYTE(v82) = 4;
  v36 = v65;
  v37 = v66;
  v38 = v62;
  sub_21498FF40();
  v39 = v75;
  if (v38)
  {
    (*(v21 + 8))(v36, v37);
    v3 = v79;
    v24 = v67;
    (*(v39 + 8))(v79 + v69, v68);
    if (!v24)
    {
      sub_21489DFCC(v3 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_method, &qword_27CA1A800, &unk_214993100);
    }

    sub_21489DFCC(v3 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_jsonBody, &qword_27CA1A808, &unk_21499B730);

    a1 = v70;
    goto LABEL_5;
  }

  if (*&v81[0])
  {
    v40 = *&v81[0];
  }

  else
  {
    v40 = v27;
  }

  v41 = *(v40 + 2);
  if (v41)
  {
    v82 = v27;
    sub_2148A9BD8(0, v41, 0);
    v42 = v82;
    v78 = *(v71 + 16);
    v43 = &v40[(*(v71 + 80) + 32) & ~*(v71 + 80)];
    v76 = *(v71 + 72);
    v72 = (v71 + 16);
    v44 = v40;
    v45 = (v71 + 8);
    v62 = v44;
    do
    {
      (v78)(v30, v43, v33);
      sub_21498E880();
      (*v45)(v30, v33);
      v82 = v42;
      v47 = *(v42 + 2);
      v46 = *(v42 + 3);
      if (v47 >= v46 >> 1)
      {
        sub_2148A9BD8((v46 > 1), v47 + 1, 1);
        v42 = v82;
      }

      *(v42 + 2) = v47 + 1;
      sub_2148970B8(v81, &v42[40 * v47 + 32]);
      v43 += v76;
      --v41;
      v30 = v73;
      v33 = v74;
    }

    while (v41);

    v21 = v77;
    v27 = MEMORY[0x277D84F90];
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  v3 = v79;
  *(v79 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onErrorActions) = v42;
  LOBYTE(v82) = 5;
  v48 = v65;
  v49 = v66;
  sub_21498FF40();
  if (*&v81[0])
  {
    v50 = *&v81[0];
  }

  else
  {
    v50 = v27;
  }

  v51 = *(v50 + 2);
  if (v51)
  {
    v82 = v27;
    sub_2148A9BD8(0, v51, 0);
    v52 = v82;
    v80 = *(v71 + 16);
    v53 = *(v71 + 80);
    v76 = v50;
    v54 = &v50[(v53 + 32) & ~v53];
    v78 = *(v71 + 72);
    v55 = (v71 + 8);
    v71 += 16;
    do
    {
      v57 = v73;
      v56 = v74;
      v80(v73, v54, v74);
      sub_21498E880();
      (*v55)(v57, v56);
      v82 = v52;
      v59 = *(v52 + 2);
      v58 = *(v52 + 3);
      if (v59 >= v58 >> 1)
      {
        sub_2148A9BD8((v58 > 1), v59 + 1, 1);
        v52 = v82;
      }

      *(v52 + 2) = v59 + 1;
      sub_2148970B8(v81, &v52[40 * v59 + 32]);
      v54 = &v78[v54];
      --v51;
    }

    while (v51);
    (*(v77 + 8))(v65, v66);

    v60 = v70;
    v3 = v79;
  }

  else
  {

    (*(v21 + 8))(v48, v49);
    v52 = MEMORY[0x277D84F90];
    v60 = v70;
  }

  *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_onCompletionActions) = v52;
  __swift_destroy_boxed_opaque_existential_1(v60);
  return v3;
}

uint64_t sub_214984B14()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_urlReference;
  v2 = sub_21498E900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_method, &qword_27CA1A800, &unk_214993100);
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_jsonBody, &qword_27CA1A808, &unk_21499B730);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MALoadRemoteDataAction(uint64_t a1)
{
  result = qword_27CA1CE78;
  if (!qword_27CA1CE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214984C84(uint64_t a1)
{
  sub_21498E900();
  if (v1 <= 0x3F)
  {
    sub_2149415D0(319);
    if (v2 <= 0x3F)
    {
      sub_214941628(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_214984DA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return sub_21497F590(a1, a2);
}

void *sub_214984F00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_214983FA0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_214984FE8(uint64_t a1)
{
  v4 = *(sub_21498E7C0() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_214899138;

  return sub_214982060(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_2149850EC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21498FD80() + 1) & ~v5;
    while (1)
    {
      sub_214990160();

      sub_21498F900();
      v9 = sub_214990190();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_21498E7C0() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2149852D8(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21498FD80() + 1) & ~v5;
    v26 = v2;
    v27 = v4;
    do
    {
      v9 = v7;
      v10 = *(v2 + 48) + 48 * v6;
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      sub_214990160();

      sub_21489B6F8(v11, v12);
      sub_21489B6F8(v11, v12);
      sub_21498F900();
      sub_21498F900();
      if (v12 >> 60 != 15)
      {
        sub_21498E1E0();
        sub_21489B8F0(v11, v12);
      }

      v13 = sub_214990190();

      result = sub_21489B8F0(v11, v12);
      v7 = v9;
      v14 = v13 & v9;
      if (v3 >= v8)
      {
        v2 = v26;
        v4 = v27;
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = v26;
        v4 = v27;
        if (v14 >= v8)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v14)
      {
LABEL_12:
        v15 = *(v2 + 48);
        v16 = (v15 + 48 * v3);
        v17 = (v15 + 48 * v6);
        if (v3 != v6 || v16 >= v17 + 3)
        {
          v18 = *v17;
          v19 = v17[2];
          v16[1] = v17[1];
          v16[2] = v19;
          *v16 = v18;
        }

        v20 = *(v2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(v2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v25;
    ++*(v2 + 36);
  }

  return result;
}

char *sub_214985524()
{
  v1 = v0;
  v35 = sub_21498E7C0();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B598, &qword_21499EFD0);
  v3 = *v0;
  v4 = sub_21498FEA0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2149857A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4B8, &qword_214992020);
  v2 = *v0;
  v3 = sub_21498FEA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_21489E614(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2148A4198(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_214985948()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CB38, &qword_21499F010);
  v2 = *v0;
  v3 = sub_21498FEA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_214985AD8(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v27 = v2;
  v3 = *v2;
  v4 = sub_21498FEA0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 48 * v18);
        v20 = v19[1];
        v21 = v19[2];
        v22 = v19[3];
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v19[4];
        v25 = v19[5];
        v26 = (*(v5 + 48) + 48 * v18);
        *v26 = *v19;
        v26[1] = v20;
        v26[2] = v21;
        v26[3] = v22;
        v26[4] = v24;
        v26[5] = v25;
        *(*(v5 + 56) + 8 * v18) = v23;

        sub_21489B6F8(v24, v25);
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v5;
  }

  return result;
}

uint64_t sub_214985C78(uint64_t *a1)
{
  *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant22MALoadRemoteDataAction_viewModel) = *a1;
}

unint64_t sub_214985CC0()
{
  result = qword_27CA1CEB8;
  if (!qword_27CA1CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CEB8);
  }

  return result;
}

uint64_t sub_214985D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_214985D70()
{
  result = qword_27CA1CEC0;
  if (!qword_27CA1CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CEC0);
  }

  return result;
}

unint64_t sub_214985DC8()
{
  result = qword_27CA1CEC8;
  if (!qword_27CA1CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CEC8);
  }

  return result;
}

unint64_t sub_214985E20()
{
  result = qword_27CA1CED0[0];
  if (!qword_27CA1CED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA1CED0);
  }

  return result;
}

unint64_t sub_214985E74(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214985EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214985F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20](a1);
  v12(v11);
  return sub_21498EC70();
}

uint64_t sub_21498603C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = a1[3];
  v24 = a1[2];
  v25 = v3;
  v4 = a1[5];
  v22 = a1[4];
  v23 = v4;
  v27 = v3;
  v28 = v24;
  v29 = v4;
  v30 = v22;
  v5 = sub_21498EC80();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  v21 = *(v2 + 32);
  v17 = *(v2 + 40);
  v16 = *(v2 + 48);

  sub_214985F5C(v12, v13, v14, v15, v21, v17, v16, v25, v24, v23, v22);
  swift_getWitnessTable();
  v18 = *(v6 + 16);
  v18(v11, v9, v5);
  v19 = *(v6 + 8);
  v19(v9, v5);
  v18(v26, v11, v5);
  return (v19)(v11, v5);
}

uint64_t sub_21498623C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6449656C7572 && a2 == 0xE600000000000000)
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

uint64_t sub_2149862C0(uint64_t a1)
{
  v2 = sub_214986A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149862FC(uint64_t a1)
{
  v2 = sub_214986A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214986338@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CF78, &qword_21499F390);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214986A98();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_21498FF60();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_2149864B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CF68, &qword_21499F388);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214986A98();
  sub_2149901C0();
  sub_214990000();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2149865F8()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeleteUnifiedRuleAPIRequest(0);
  v31.receiver = v0;
  v31.super_class = v5;
  v6 = objc_msgSendSuper2(&v31, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v32 = v7;
  v33 = v9;
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v11, v1);
    v12 = v0;
    v13 = sub_21498E670();
    v14 = sub_21498FBD0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2149079F4(0xD00000000000002FLL, 0x80000002149A0C40, &v23);
      *(v15 + 12) = 2080;

      v17 = sub_2149079F4(v7, v9, &v23);

      *(v15 + 14) = v17;
      _os_log_impl(&dword_21488E000, v13, v14, "Using fallback url for %s: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v16, -1, -1);
      MEMORY[0x216059AC0](v15, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v23 = sub_21498BF80();
    v24 = v18;

    MEMORY[0x2160589C0](0xD000000000000024, 0x80000002149A0C70);

    v7 = v23;
    v19 = v24;
    swift_beginAccess();
    v32 = v7;
    v33 = v19;

    v9 = v19;
  }

  v29 = v7;
  v30 = v9;
  v27 = 0x776574616763636DLL;
  v28 = 0xEA00000000007961;
  v25 = 6513517;
  v26 = 0xE300000000000000;
  sub_21489CA00();
  v20 = sub_21498FD20();

  return v20;
}

id sub_214986984(void *a1)
{
  v1 = a1;
  sub_2149865F8();

  v2 = sub_21498F840();

  return v2;
}

id sub_2149869EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteUnifiedRuleAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DeleteUnifiedRuleAPIRequest(uint64_t a1)
{
  result = qword_27CA1CF58;
  if (!qword_27CA1CF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_214986A98()
{
  result = qword_27CA1CF70;
  if (!qword_27CA1CF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CF70);
  }

  return result;
}

unint64_t sub_214986B00()
{
  result = qword_27CA1CF80;
  if (!qword_27CA1CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CF80);
  }

  return result;
}

unint64_t sub_214986B58()
{
  result = qword_27CA1CF88;
  if (!qword_27CA1CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CF88);
  }

  return result;
}

unint64_t sub_214986BB0()
{
  result = qword_27CA1CF90;
  if (!qword_27CA1CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CF90);
  }

  return result;
}

uint64_t sub_214986C04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214986C60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DelayedDisplay(uint64_t a1)
{
  result = qword_27CA1CF98;
  if (!qword_27CA1CF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214986D38(uint64_t a1)
{
  sub_2148F7A38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_214986DA4(uint64_t a1, uint64_t a2, double a3)
{
  v9 = 0;
  sub_21498F400();
  v8 = a3;
  MEMORY[0x2160582A0](v7, a1, &type metadata for DelayDisplayModifier, a2);
}

uint64_t sub_214986E40(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFB8, &qword_21499F600);
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFC0, &qword_21499F608);
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-v10];
  v16[16] = a2;
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C270, &qword_21499A2C8);
  sub_21498F410();
  v12 = v16[15];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFC8, &qword_21499F610);
  v14 = *(*(v13 - 8) + 16);
  if (v12 == 1)
  {
    v14(v11, a1, v13);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1CFD0, &qword_27CA1CFC8, &qword_21499F610, MEMORY[0x277CE04B0]);
    sub_214987C04();
    return sub_21498EE90();
  }

  else
  {
    v14(v8, a1, v13);
    sub_214987B94(v8, v11);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1CFD0, &qword_27CA1CFC8, &qword_21499F610, MEMORY[0x277CE04B0]);
    sub_214987C04();
    sub_21498EE90();
    return sub_214987D10(v8);
  }
}

uint64_t sub_2149870AC(char a1, uint64_t a2, double a3)
{
  *(v3 + 40) = a3;
  *(v3 + 32) = a2;
  *(v3 + 81) = a1;
  sub_21498FAB0();
  *(v3 + 48) = sub_21498FAA0();
  v5 = sub_21498FA50();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return MEMORY[0x2822009F8](sub_21498714C, v5, v4);
}

uint64_t sub_21498714C(unint64_t a1)
{
  v3 = *(v1 + 40) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 72) = v5;
  *v5 = v1;
  v5[1] = sub_214987234;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_214987234()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_214988104;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_214987358;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_214987358()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 81);

  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 80) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C270, &qword_21499A2C8);
  sub_21498F420();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_214987424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  sub_214986E40(a1, *v2, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFB0, &unk_21499F5F0) + 36));
  sub_21498EC30();

  result = sub_21498FAC0();
  *v8 = &unk_21499F5E8;
  v8[1] = v7;
  return result;
}

uint64_t sub_2149874E0()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_214987544(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_214987590@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_21498FEF0();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_214987610@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_21498FEF0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_214987668(uint64_t a1)
{
  v2 = sub_214987D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149876A4(uint64_t a1)
{
  v2 = sub_214987D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2149876E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFE8, &qword_21499F618);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DelayedDisplay(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214987D78();
  v12 = v19;
  sub_2149901B0();
  if (!v12)
  {
    v13 = v17;
    sub_2148B4C20(&qword_27CA1A930, &qword_27CA1A848, &qword_214993160, MEMORY[0x277D23238]);
    sub_21498FFA0();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_214987DCC(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214987964@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  result = sub_21498E750();
  if (!v3)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    a3[3] = sub_21498ECC0();
    sub_2148B490C();
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_214986DA4(v7, v8, v9);
  }

  return result;
}

uint64_t sub_214987AE8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_214899138;

  return sub_2149870AC(v2, v3, v4);
}

uint64_t sub_214987B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFB8, &qword_21499F600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214987C04()
{
  result = qword_27CA1CFD8;
  if (!qword_27CA1CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CFB8, &qword_21499F600);
    sub_2148B4C20(&qword_27CA1CFD0, &qword_27CA1CFC8, &qword_21499F610, MEMORY[0x277CE04B0]);
    sub_214987CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CFD8);
  }

  return result;
}

unint64_t sub_214987CBC()
{
  result = qword_27CA1CFE0;
  if (!qword_27CA1CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CFE0);
  }

  return result;
}

uint64_t sub_214987D10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CFB8, &qword_21499F600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214987D78()
{
  result = qword_27CA1CFF0;
  if (!qword_27CA1CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CFF0);
  }

  return result;
}

uint64_t sub_214987DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelayedDisplay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_214987E40()
{
  result = qword_27CA1CFF8;
  if (!qword_27CA1CFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1CFB0, &unk_21499F5F0);
    sub_214987EFC();
    sub_214987FB4(&qword_27CA1B7A0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1CFF8);
  }

  return result;
}

unint64_t sub_214987EFC()
{
  result = qword_27CA1D000;
  if (!qword_27CA1D000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1D008, &qword_21499F630);
    sub_2148B4C20(&qword_27CA1CFD0, &qword_27CA1CFC8, &qword_21499F610, MEMORY[0x277CE04B0]);
    sub_214987C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D000);
  }

  return result;
}

uint64_t sub_214987FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_214988000()
{
  result = qword_27CA1D010;
  if (!qword_27CA1D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D010);
  }

  return result;
}

unint64_t sub_214988058()
{
  result = qword_27CA1D018;
  if (!qword_27CA1D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D018);
  }

  return result;
}

unint64_t sub_2149880B0()
{
  result = qword_27CA1D020;
  if (!qword_27CA1D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D020);
  }

  return result;
}

uint64_t sub_214988108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899964;

  return v9(a1, a2, a3);
}

uint64_t sub_214988258()
{
  v1 = v0;
  v22 = sub_21498FC10();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21498FBE0();
  MEMORY[0x28223BE20](v4);
  v5 = sub_21498F540();
  MEMORY[0x28223BE20](v5 - 8);
  sub_21498EAC0();
  swift_allocObject();
  *(v0 + 16) = sub_21498EAB0();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_pathStatus;
  v7 = *MEMORY[0x277CD8F70];
  v8 = sub_21498EAE0();
  (*(*(v8 - 8) + 104))(v1 + v6, v7, v8);
  v15[0] = OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_syncQueue;
  sub_2148FFDCC();
  sub_21498F530();
  v23 = MEMORY[0x277D84F90];
  v20 = sub_214989100();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D028, &unk_21499F840);
  v18 = sub_214989158();
  sub_21498FD60();
  v16 = *MEMORY[0x277D85260];
  v9 = *(v2 + 104);
  v15[1] = v2 + 104;
  v17 = v9;
  v11 = v21;
  v10 = v22;
  v9(v21);
  *(v1 + v15[0]) = sub_21498FC50();
  v12 = swift_allocObject();
  swift_weakInit();

  sub_21490D9F8(sub_2149891BC, v12);
  sub_21498EA80();

  sub_21498F530();
  v23 = MEMORY[0x277D84F90];
  sub_21498FD60();
  v17(v11, v16, v10);
  v13 = sub_21498FC50();
  sub_21498EA90();

  return v1;
}

uint64_t sub_214988640(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = sub_21498EB00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_syncQueue);
    (*(v7 + 16))(&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    (*(v7 + 32))(v13 + v12, &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2149891C4;
    *(v14 + 24) = v13;
    aBlock[4] = sub_214989228;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2148FF3A8;
    aBlock[3] = &block_descriptor_11;
    v15 = _Block_copy(aBlock);

    dispatch_sync(v11, v15);
    _Block_release(v15);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v16 = sub_21498FAE0();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v10;

      sub_214926C38(0, 0, v5, &unk_21499F858, v17);
    }
  }

  return result;
}

uint64_t sub_214988984(uint64_t a1)
{
  v2 = sub_21498EAE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21498EAF0();
  v6 = OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_pathStatus;
  swift_beginAccess();
  (*(v3 + 40))(a1 + v6, v5, v2);
  return swift_endAccess();
}

uint64_t sub_214988A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_214988AA0, 0, 0);
}

uint64_t sub_214988AA0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    sub_21498FC30();
    v2 = *(v0 + 48);
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_214988BD0;

    return sub_21494D8A8(v2);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_214988BD0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_214988CE8, 0, 0);
}

uint64_t sub_214988D10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_21498EAE0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_pathStatus;
  swift_beginAccess();
  (*(v5 + 16))(v10, a1 + v11, v4);
  (*(v5 + 104))(v8, *MEMORY[0x277CD8F78], v4);
  LOBYTE(a1) = sub_21498EAD0();
  v12 = *(v5 + 8);
  v12(v8, v4);
  result = (v12)(v10, v4);
  *a2 = a1 & 1;
  return result;
}

uint64_t sub_214988E9C()
{
  v1 = v0;

  sub_21498EAA0();

  sub_2148E609C(v0 + 24);
  v2 = OBJC_IVAR____TtC19iCloudMailAssistant21NetworkStatusProvider_pathStatus;
  v3 = sub_21498EAE0();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkStatusProvider(uint64_t a1)
{
  result = qword_281191660;
  if (!qword_281191660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214988FC8(uint64_t a1)
{
  result = sub_21498EAE0();
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

unint64_t sub_214989100()
{
  result = qword_281190CD0;
  if (!qword_281190CD0)
  {
    sub_21498FBE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190CD0);
  }

  return result;
}

unint64_t sub_214989158()
{
  result = qword_281190CE0;
  if (!qword_281190CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1D028, &unk_21499F840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190CE0);
  }

  return result;
}

uint64_t sub_2149891C4()
{
  sub_21498EB00();
  v1 = *(v0 + 16);

  return sub_214988984(v1);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_214989248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899138;

  return sub_214988A80(a1, v4, v5, v6);
}

uint64_t sub_214989320()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2149893EC(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2149894A4(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_21498956C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21498AAD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21498959C(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE800000000000000;
  v5 = 0x656D614E6E6F6369;
  if (*v1 != 2)
  {
    v5 = 0x72656665526C7275;
    v4 = 0xEC00000065636E65;
  }

  if (*v1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = 0x80000002149A0B40;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_214989624()
{
  v1 = 0x656C746974;
  v2 = 0x656D614E6E6F6369;
  if (*v0 != 2)
  {
    v2 = 0x72656665526C7275;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2149896A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21498AAD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2149896D0(uint64_t a1)
{
  v2 = sub_21498A924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21498970C(uint64_t a1)
{
  v2 = sub_21498A924();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_214989748(void *a1)
{
  v4 = *v1;
  v37 = v2;
  v38 = v4;
  v5 = sub_21498E900();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - v15;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D050, &qword_21499F980);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v17 = &v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21498A924();
  v34 = v17;
  v18 = v37;
  sub_2149901B0();
  if (v18)
  {
    swift_deallocPartialClassInstance();
    v26 = a1;
  }

  else
  {
    v19 = v11;
    v30 = v8;
    v37 = a1;
    v42 = 0;
    v20 = sub_21498A978(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v21 = v32;
    v22 = v33;
    sub_21498FFA0();
    v28 = *(v31 + 32);
    v29 = OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_title;
    v28(v1 + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_title, v36, v21);
    v41 = 1;
    v36 = v20;
    sub_21498FFA0();
    v23 = v28;
    v28(v1 + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_localizedNavigationPathString, v14, v21);
    v40 = 2;
    sub_21498FFA0();
    v23(v1 + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_iconName, v19, v21);
    v39 = 3;
    v24 = v30;
    sub_21498FFA0();
    (*(v35 + 8))(v34, v22);
    v23(v1 + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_urlReference, v24, v21);
    v26 = v37;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v1;
}

uint64_t sub_214989C58()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_title;
  v2 = sub_21498E900();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_localizedNavigationPathString, v2);
  v3(v0 + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_iconName, v2);
  v3(v0 + OBJC_IVAR____TtC19iCloudMailAssistant25EmitNavigationEventAction_urlReference, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmitNavigationEventAction(uint64_t a1)
{
  result = qword_27CA1D030;
  if (!qword_27CA1D030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214989DB0(uint64_t a1)
{
  result = sub_21498E900();
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

uint64_t sub_214989E44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899138;

  return sub_21498A104(a1);
}

char *sub_21498A01C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_214989748(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_21498A104(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_21498F580();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_21498DF90();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_21498E120();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v2[20] = swift_task_alloc();
  v6 = sub_21498E1B0();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21498A31C, 0, 0);
}

uint64_t sub_21498A31C()
{
  v1 = sub_21498E8F0();
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    MEMORY[0x2160589C0]();
  }

  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[20];
  sub_21498E1A0();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_21498A8BC(v0[20]);
    goto LABEL_11;
  }

  (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
  v0[2] = sub_21498E8F0();
  v0[3] = v9;
  v0[4] = 9602786;
  v0[5] = 0xA300000000000000;
  sub_21489CA00();
  v10 = sub_21498FD00();

  v37 = *(v10 + 16);
  if (!v37)
  {
LABEL_20:

    sub_21498F5B0();
    sub_21498F5A0();
    v22 = sub_21498E8F0();
    v24 = v0[11];
    v23 = v0[12];
    v25 = v0[10];
    *v23 = v22;
    v23[1] = v26;
    (*(v24 + 104))(v23, *MEMORY[0x277D4D788], v25);
    sub_21498E8F0();
    v27 = v0[22];
    v28 = v0[23];
    v29 = v0[21];
    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[11];
    v36 = v0[12];
    v38 = v0[16];
    v39 = v0[10];
    sub_21498E110();
    sub_21498F590();

    (*(v31 + 8))(v30, v38);
    (*(v32 + 8))(v36, v39);
    (*(v27 + 8))(v28, v29);
LABEL_11:

    v8 = v0[1];

    return v8();
  }

  v11 = 0;
  v33 = (v0[14] + 8);
  v34 = v0[17];
  v12 = (v10 + 40);
  v13 = MEMORY[0x277D84F90];
  v35 = v10;
  while (v11 < *(v10 + 16))
  {
    v14 = v0[15];
    v15 = v0[13];
    v16 = v13;
    v17 = *v12;
    v0[6] = *(v12 - 1);
    v0[7] = v17;

    sub_21498DF80();
    sub_21498FD10();
    (*v33)(v14, v15);
    sub_21498E110();
    v13 = v16;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2148A9324(0, v16[2] + 1, 1, v16);
    }

    v19 = v13[2];
    v18 = v13[3];
    if (v19 >= v18 >> 1)
    {
      v13 = sub_2148A9324((v18 > 1), v19 + 1, 1, v13);
    }

    ++v11;
    v20 = v0[19];
    v21 = v0[16];
    v13[2] = v19 + 1;
    result = (*(v34 + 32))(v13 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v19, v20, v21);
    v12 += 2;
    v10 = v35;
    if (v37 == v11)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21498A8BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21498A924()
{
  result = qword_27CA1D058;
  if (!qword_27CA1D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D058);
  }

  return result;
}

uint64_t sub_21498A978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21498A9D4()
{
  result = qword_27CA1D060;
  if (!qword_27CA1D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D060);
  }

  return result;
}

unint64_t sub_21498AA2C()
{
  result = qword_27CA1D068;
  if (!qword_27CA1D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D068);
  }

  return result;
}

unint64_t sub_21498AA84()
{
  result = qword_27CA1D070;
  if (!qword_27CA1D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D070);
  }

  return result;
}

unint64_t sub_21498AAD8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for AllowsHitTestingModifier(uint64_t a1)
{
  result = qword_27CA1D078;
  if (!qword_27CA1D078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21498AB98(uint64_t a1)
{
  sub_21490FC08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21498AC04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - v6;
  v8 = type metadata accessor for AllowsHitTestingModifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149901A0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_2148FE654();
    sub_2149900A0();
    (*(v5 + 32))(v10, v7, v4);
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_21498AF58(v10, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21498ADD0@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  sub_21498E750();
  if (v3)
  {
  }

  a3[3] = sub_21498ECC0();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_21498F1B0();
}

unint64_t sub_21498AF00()
{
  result = qword_27CA1D088;
  if (!qword_27CA1D088)
  {
    type metadata accessor for AllowsHitTestingModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D088);
  }

  return result;
}

uint64_t sub_21498AF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllowsHitTestingModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21498AFBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0A0, &unk_21499FC18);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - v2;
  v4 = sub_21498E030();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = sub_21498E1B0();
  v32 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + qword_281190E60);
  v19 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v15);

  v20 = [v18 propertiesForDataclass_];

  if (!v20)
  {
    return 0;
  }

  v30 = v5;
  v31 = v4;
  v21 = sub_21498F7E0();

  v33 = 0xD000000000000026;
  v34 = 0x80000002149A1E00;
  sub_21498FDB0();
  if (!*(v21 + 16) || (v22 = sub_214908014(v35), (v23 & 1) == 0))
  {

    sub_21489E5C0(v35);
    return 0;
  }

  sub_21489E614(*(v21 + 56) + 32 * v22, v36);
  sub_21489E5C0(v35);

  if (!swift_dynamicCast())
  {
    return 0;
  }

  sub_21498E1A0();

  v24 = v32;
  v25 = *(v32 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    sub_21489DFCC(v13, &qword_27CA1A348, &qword_214991700);
    return 0;
  }

  (*(v24 + 32))(v17, v13, v14);
  sub_21498DFD0();
  v28 = v30;
  v27 = v31;
  if ((*(v30 + 48))(v3, 1, v31) == 1)
  {
    (*(v24 + 8))(v17, v14);
    sub_21489DFCC(v3, &qword_27CA1D0A0, &unk_21499FC18);
    return 0;
  }

  (*(v28 + 32))(v7, v3, v27);
  MEMORY[0x216057090](0, 0xE000000000000000);
  sub_21498DFE0();
  if (v25(v11, 1, v14) == 1)
  {
    sub_21489DFCC(v11, &qword_27CA1A348, &qword_214991700);
    v29 = 0;
  }

  else
  {
    v29 = sub_21498E130();
    (*(v24 + 8))(v11, v14);
  }

  (*(v28 + 8))(v7, v27);
  (*(v24 + 8))(v17, v14);
  return v29;
}

uint64_t sub_21498B4CC()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21498B514()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAUpdateConsentAPIRequest(0);
  v31.receiver = v0;
  v31.super_class = v5;
  v6 = objc_msgSendSuper2(&v31, sel_urlString);
  v7 = sub_21498F870();
  v9 = v8;

  v32 = v7;
  v33 = v9;
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v1, qword_281194E18);
    (*(v2 + 16))(v4, v11, v1);
    v12 = v0;
    v13 = sub_21498E670();
    v14 = sub_21498FBD0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2149079F4(0xD000000000000031, 0x80000002149A3DE0, &v23);
      *(v15 + 12) = 2080;

      v17 = sub_2149079F4(v7, v9, &v23);

      *(v15 + 14) = v17;
      _os_log_impl(&dword_21488E000, v13, v14, "Using fallback url for %s: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v16, -1, -1);
      MEMORY[0x216059AC0](v15, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v23 = sub_21498AFBC();
    v24 = v18;

    MEMORY[0x2160589C0](0xD000000000000029, 0x80000002149A3250);

    v7 = v23;
    v19 = v24;
    swift_beginAccess();
    v32 = v7;
    v33 = v19;

    v9 = v19;
  }

  v29 = v7;
  v30 = v9;
  v27 = 0x776574616763636DLL;
  v28 = 0xEA00000000007961;
  v25 = 6513517;
  v26 = 0xE300000000000000;
  sub_21489CA00();
  v20 = sub_21498FD20();

  return v20;
}

id sub_21498B8A0(void *a1)
{
  v1 = a1;
  sub_21498B514();

  v2 = sub_21498F840();

  return v2;
}

id sub_21498B908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAUpdateConsentAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MAUpdateConsentAPIRequest(uint64_t a1)
{
  result = qword_27CA1D090;
  if (!qword_27CA1D090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21498B9A4(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0A8, &qword_21499FCC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21498BC90();
  sub_2149901C0();
  v13[1] = a2;
  v13[2] = a3;
  *&v13[3] = a4;
  sub_2148EFA40();
  sub_214990040();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21498BB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001CLL && 0x80000002149A1EA0 == a2)
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

uint64_t sub_21498BBB8(uint64_t a1)
{
  v2 = sub_21498BC90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21498BBF4(uint64_t a1)
{
  v2 = sub_21498BC90();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21498BC30(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v6 = sub_21498BCE4(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    *(a1 + 2) = v6;
  }
}

unint64_t sub_21498BC90()
{
  result = qword_27CA1D0B0;
  if (!qword_27CA1D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D0B0);
  }

  return result;
}

double sub_21498BCE4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0B8, &qword_21499FCC8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21498BC90();
  sub_2149901B0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2148EF9EC();
    sub_21498FFA0();
    (*(v5 + 8))(v7, v4);
    v2 = *&v9[3];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

unint64_t sub_21498BE7C()
{
  result = qword_27CA1D0C0;
  if (!qword_27CA1D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D0C0);
  }

  return result;
}

unint64_t sub_21498BED4()
{
  result = qword_27CA1D0C8;
  if (!qword_27CA1D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D0C8);
  }

  return result;
}

unint64_t sub_21498BF2C()
{
  result = qword_27CA1D0D0;
  if (!qword_27CA1D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D0D0);
  }

  return result;
}

uint64_t sub_21498BF8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21498BFD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21498C0A4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0D8, &qword_21499FFF8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  memcpy(v18, v2, sizeof(v18));
  v16[2] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0E0, &qword_2149A0000);
  sub_2148B4C20(&qword_27CA1D0E8, &qword_27CA1D0E0, &qword_2149A0000, MEMORY[0x277CE14C0]);
  sub_21498F090();
  v11 = swift_allocObject();
  memcpy((v11 + 16), v18, 0x188uLL);
  v12 = *(v5 + 16);
  v12(v8, v10, v4);
  v12(a1, v8, v4);
  v13 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0F0, &qword_2149A0008) + 48)];
  *v13 = sub_21498CCFC;
  *(v13 + 1) = v11;
  v13[16] = 0;
  sub_21498CD04(v18, &v17);
  sub_214897F3C(sub_21498CCFC, v11);
  v14 = *(v5 + 8);
  v14(v10, v4);
  sub_214897F28(sub_21498CCFC, v11);
  return (v14)(v8, v4);
}

uint64_t sub_21498C310@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D0F8, &qword_2149A0058);
  v37 = *(v39 - 8);
  v3 = MEMORY[0x28223BE20](v39);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D100, &qword_2149A0060);
  v35 = *(v7 - 8);
  v8 = v35;
  v36 = v7;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v42 = a1;
  sub_21498EE40();
  v43 = sub_21498F0F0();
  v44 = v14;
  v45 = v15 & 1;
  v46 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D108, &qword_2149A0068);
  sub_2148B4C20(&qword_27CA1D110, &qword_27CA1D108, &qword_2149A0068, MEMORY[0x277CE14C0]);
  v34 = v13;
  sub_21498F4A0();
  v41 = a1;
  sub_21498EE40();
  v43 = sub_21498F0F0();
  v44 = v17;
  v45 = v18 & 1;
  v46 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D118, &qword_2149A0070);
  sub_2148B4C20(&qword_27CA1D120, &qword_27CA1D118, &qword_2149A0070, &unk_21499BD60);
  v32 = v6;
  sub_21498F4A0();
  v20 = *(v8 + 16);
  v33 = v11;
  v21 = v36;
  v20(v11, v13, v36);
  v23 = v37;
  v22 = v38;
  v24 = *(v37 + 16);
  v25 = v39;
  v24(v38, v6, v39);
  v26 = v40;
  v20(v40, v11, v21);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D128, &unk_2149A0078) + 48)];
  v24(v27, v22, v25);
  v28 = *(v23 + 8);
  v28(v32, v25);
  v29 = *(v35 + 8);
  v29(v34, v21);
  v28(v22, v25);
  return (v29)(v33, v21);
}

uint64_t sub_21498C768@<X0>(const void *a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B020, &qword_2149948A0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = swift_allocObject();
  memcpy((v16 + 16), a1, 0x188uLL);
  sub_21498CD04(a1, v25);
  sub_21498F450();
  v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0x188uLL);
  sub_21498CD04(a1, v25);
  sub_21498F450();
  v18 = *(v4 + 16);
  v18(v10, v15, v3);
  v18(v7, v13, v3);
  v19 = v24;
  v18(v24, v10, v3);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D130, &qword_2149A0088);
  v18(&v19[*(v20 + 48)], v7, v3);
  v21 = *(v4 + 8);
  v21(v13, v3);
  v21(v15, v3);
  v21(v7, v3);
  return (v21)(v10, v3);
}

uint64_t sub_21498CA6C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  (*(*v3 + 448))(*a1, a1[1]);
}

uint64_t sub_21498CB40(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  (*(*v3 + 472))(*a1, a1[1]);
}

uint64_t sub_21498CC18@<X0>(uint64_t a3@<X8>)
{
  sub_21498EE40();
  result = sub_21498F0F0();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_21498CC78(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v2;
}

uint64_t sub_21498CD3C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a2 = v4;
  return result;
}

uint64_t sub_21498CDBC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_21498CE40@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  memcpy(__dst, v3, 0x179uLL);
  memcpy(a1, v3, 0x179uLL);
  return sub_2148D8FC8(__dst, &v5);
}

uint64_t objectdestroyTm_6()
{

  if (v0[5])
  {
  }

  if (v0[15])
  {
  }

  if (v0[25])
  {
  }

  if (v0[33])
  {
  }

  if (v0[41])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 408, 7);
}

unint64_t sub_21498CFBC()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + qword_281190E60);
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v3);

  v8 = [v6 propertiesForDataclass_];

  if (v8)
  {
    v9 = sub_21498F7E0();

    v18 = 0xD000000000000020;
    v19 = 0x80000002149A0D20;
    sub_21498FDB0();
    if (*(v9 + 16) && (v10 = sub_214908014(v20), (v11 & 1) != 0))
    {
      sub_21489E614(*(v9 + 56) + 32 * v10, v21);
      sub_21489E5C0(v20);

      if (swift_dynamicCast())
      {
        return v18;
      }
    }

    else
    {

      sub_21489E5C0(v20);
    }
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v1, qword_281194E18);
  (*(v2 + 16))(v5, v13, v1);
  v14 = sub_21498E670();
  v15 = sub_21498FB90();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21488E000, v14, v15, "[MSRequest] apiGatewayUrl is empty", v16, 2u);
    MEMORY[0x216059AC0](v16, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return 0;
}

uint64_t sub_21498D2A4()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21498D2EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_21498E690();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnsubscribeLinksAPIRequest(0);
  v36.receiver = v0;
  v36.super_class = v9;
  v10 = objc_msgSendSuper2(&v36, sel_urlString);
  v11 = sub_21498F870();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14 && (v34 = v11, v35 = v13, strcpy(v33, "/encodedview/"), HIWORD(v33[3]) = -4864, sub_21489CA00(), (sub_21498FD30() & 1) != 0))
  {
    v34 = v11;
    v35 = v13;
    strcpy(v33, "/mailws/");
    BYTE1(v33[2]) = 0;
    HIWORD(v33[2]) = 0;
    v33[3] = -402653184;
    v31 = 0x3273776C69616D2FLL;
    v32 = 0xE90000000000002FLL;
    sub_21498FD20();
  }

  else
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v5, qword_281194E18);
    (*(v6 + 16))(v8, v15, v5);
    v16 = v1;
    v17 = sub_21498E670();
    v18 = sub_21498FBD0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v4;
      v21 = v20;
      v34 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2149079F4(0xD000000000000031, 0x80000002149A3E60, &v34);
      *(v19 + 12) = 2080;

      v22 = sub_2149079F4(v11, v13, &v34);

      *(v19 + 14) = v22;
      _os_log_impl(&dword_21488E000, v17, v18, "Using fallback url for %s: %s", v19, 0x16u);
      swift_arrayDestroy();
      v23 = v21;
      v4 = v30;
      MEMORY[0x216059AC0](v23, -1, -1);
      MEMORY[0x216059AC0](v19, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v34 = sub_21498CFBC();
    v35 = v24;

    MEMORY[0x2160589C0](0xD00000000000003ELL, 0x80000002149A3EA0);
  }

  sub_21498E1A0();

  v25 = sub_21498E1B0();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v4, 1, v25) == 1)
  {
    sub_21498A8BC(v4);
    v27 = 0;
  }

  else
  {
    v27 = sub_21498E130();
    (*(v26 + 8))(v4, v25);
  }

  return v27;
}

id sub_21498D7D8(void *a1)
{
  v1 = a1;
  sub_21498D2EC();

  v2 = sub_21498F840();

  return v2;
}

id sub_21498D840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnsubscribeLinksAPIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UnsubscribeLinksAPIRequest(uint64_t a1)
{
  result = qword_27CA1D148;
  if (!qword_27CA1D148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21498D8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000)
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

uint64_t sub_21498D968(uint64_t a1)
{
  v2 = sub_21498DCA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21498D9A4(uint64_t a1)
{
  v2 = sub_21498DCA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21498D9E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D168, &qword_2149A0188);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21498DCA8();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_21498FF60();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_21498DB5C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1D158, &qword_2149A0180);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21498DCA8();
  sub_2149901C0();
  sub_214990000();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21498DCA8()
{
  result = qword_27CA1D160;
  if (!qword_27CA1D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D160);
  }

  return result;
}

unint64_t sub_21498DD10()
{
  result = qword_27CA1D170;
  if (!qword_27CA1D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D170);
  }

  return result;
}

unint64_t sub_21498DD68()
{
  result = qword_27CA1D178;
  if (!qword_27CA1D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D178);
  }

  return result;
}

unint64_t sub_21498DDC0()
{
  result = qword_27CA1D180;
  if (!qword_27CA1D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1D180);
  }

  return result;
}