uint64_t sub_2662EBCD0(void (*a1)(uint64_t (*)(), char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v26 = a4;
  v27 = a8;
  v28 = a2;
  v29 = a1;
  v25 = a9;
  v13 = sub_2664DE438();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a6, v13);
  v17 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 2) = v25;
  *(v19 + 3) = a3;
  *(v19 + 4) = v20;
  *(v19 + 5) = a5;
  (*(v14 + 32))(&v19[v17], v16, v13);
  *&v19[v18] = a7;
  v21 = v27;
  *&v19[(v18 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;

  v22 = v21;
  v29(sub_2662EDB14, v19);
}

void sub_2662EBE80(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v41 = a5;
  v42 = a6;
  v40 = a4;
  v38 = a1;
  v10 = sub_2664DE438();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v19, v20, v16);
  (*(v11 + 16))(v15, a3, v10);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();
  v39 = v16;
  v23 = v10;
  v24 = v22;

  if (os_log_type_enabled(v21, v24))
  {
    v25 = a2;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = a7;
    v28 = v27;
    v43[0] = v27;
    *v26 = 136446466;
    *(v26 + 4) = sub_2662A320C(v38, v25, v43);
    *(v26 + 12) = 2050;
    v29 = v37;
    sub_2664DE428();
    sub_2664DE388();
    v31 = v30;
    v38 = v19;
    v32 = *(v11 + 8);
    v32(v29, v23);
    v32(v15, v23);
    *(v26 + 14) = v31;
    _os_log_impl(&dword_26629C000, v21, v24, "Completions#timeout completion: %{public}s received result in %{public}f seconds", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v33 = v28;
    a7 = v36;
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);

    (*(v17 + 8))(v38, v39);
  }

  else
  {

    (*(v11 + 8))(v15, v23);
    (*(v17 + 8))(v19, v39);
  }

  v34 = v40;
  swift_beginAccess();
  (*(*(a7 - 8) + 24))(v34, v41, a7);
  dispatch_group_leave(v42);
}

uint64_t sub_2662EC260(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(char *), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v90 = a8;
  v81 = a7;
  v78 = a6;
  v77 = a5;
  v79 = a4;
  v74 = a3;
  v91 = a2;
  v84 = a1;
  v89 = a9;
  v87 = sub_2664DE438();
  v80 = *(v87 - 8);
  v11 = MEMORY[0x28223BE20](v87);
  v75 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v86 = &v70 - v13;
  v14 = sub_2664DFE38();
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v88 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a11;
  v17 = *(a11 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v85 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v70 - v20;
  v22 = sub_2664E0018();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_2664E00E8();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v70 - v31;
  v33 = swift_projectBox();
  sub_2664E00C8();
  *v25 = v91;
  (*(v23 + 104))(v25, *MEMORY[0x277D85178], v22);
  MEMORY[0x266783140](v30, v25);
  (*(v23 + 8))(v25, v22);
  v34 = *(v27 + 8);
  v34(v30, v26);
  sub_2664E0738();
  v34(v32, v26);
  if (sub_2664E0028())
  {
    swift_beginAccess();
    v35 = v92;
    (*(v17 + 16))(v21, v33, v92);
    v90(v21);
    return (*(v17 + 8))(v21, v35);
  }

  else
  {
    v73 = v33;
    v76 = v21;
    v84 = v17;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v37 = v83;
    v38 = __swift_project_value_buffer(v83, qword_280F914F0);
    swift_beginAccess();
    v39 = v82;
    (*(v82 + 16))(v88, v38, v37);
    v40 = v84;
    v41 = v84 + 16;
    v42 = *(v84 + 16);
    v43 = v92;
    v42(v85, v77, v92);
    v44 = v80;
    (*(v80 + 16))(v86, v78, v87);
    v45 = v79;

    v46 = v45;
    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();

    v49 = os_log_type_enabled(v47, v48);
    v72 = v41;
    v71 = v42;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v93[0] = v78;
      *v50 = 136446978;
      *(v50 + 4) = sub_2662A320C(v74, v46, v93);
      v51 = v40;
      *(v50 + 12) = 2050;
      *(v50 + 14) = v91;
      *(v50 + 22) = 2080;
      v52 = v85;
      v42(v76, v85, v43);
      v53 = sub_2664E0318();
      v55 = v54;
      v56 = v51;
      v57 = v87;
      v58 = v48;
      v59 = *(v56 + 8);
      v59(v52, v92);
      v60 = sub_2662A320C(v53, v55, v93);
      v43 = v92;

      *(v50 + 24) = v60;
      *(v50 + 32) = 2050;
      v61 = v75;
      sub_2664DE428();
      v62 = v86;
      sub_2664DE388();
      v64 = v63;
      v65 = *(v44 + 8);
      v65(v61, v57);
      v65(v62, v57);
      *(v50 + 34) = v64;
      _os_log_impl(&dword_26629C000, v47, v58, "Completions#timeout completion: %{public}s not complete within timeout: %{public}ldms, returning default: %s. %{public}f seconds since start.", v50, 0x2Au);
      v66 = v78;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v66, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);

      (*(v82 + 8))(v88, v83);
    }

    else
    {

      (*(v44 + 8))(v86, v87);
      v59 = *(v40 + 8);
      v59(v85, v43);
      (*(v39 + 8))(v88, v37);
    }

    v67 = v90;
    v68 = v73;
    if (v81)
    {
      sub_2664DF638();
      swift_allocObject();
      sub_2664DF628();
      sub_2664DF618();
    }

    swift_beginAccess();
    v69 = v76;
    v71(v76, v68, v43);
    v67(v69);
    return (v59)(v69, v43);
  }
}

uint64_t sub_2662ECB18(char a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v7, v8, "Completions#timeout completion did AutoBugCapture for completion wait timeout with: %{BOOL}d", v9, 8u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

SiriAudioSupport::Completions::TimeoutMillis_optional __swiftcall Completions.TimeoutMillis.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 4999)
  {
    if (rawValue <= 8000)
    {
      switch(rawValue)
      {
        case 5000:
          *v1 = 5;
          return rawValue;
        case 5001:
          *v1 = 12;
          return rawValue;
        case 8000:
          *v1 = 6;
          return rawValue;
      }
    }

    else if (rawValue > 29999)
    {
      if (rawValue == 30000)
      {
        *v1 = 7;
        return rawValue;
      }

      if (rawValue == 60000)
      {
        *v1 = 8;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 8001)
      {
        *v1 = 4;
        return rawValue;
      }

      if (rawValue == 10000)
      {
        *v1 = 13;
        return rawValue;
      }
    }

LABEL_34:
    *v1 = 14;
    return rawValue;
  }

  if (rawValue <= 499)
  {
    switch(rawValue)
    {
      case 20:
        *v1 = 10;
        return rawValue;
      case 100:
        *v1 = 2;
        return rawValue;
      case 499:
        *v1 = 3;
        return rawValue;
    }

    goto LABEL_34;
  }

  if (rawValue > 999)
  {
    if (rawValue == 1000)
    {
      *v1 = 11;
      return rawValue;
    }

    if (rawValue == 1001)
    {
      *v1 = 9;
      return rawValue;
    }

    goto LABEL_34;
  }

  if (rawValue == 500)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 501)
  {
    goto LABEL_34;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t sub_2662ECE6C()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](qword_2664E4938[v1]);
  return sub_2664E0EB8();
}

uint64_t sub_2662ECEF4(uint64_t a1)
{
  v2 = *v1;
  sub_2664E0E68();
  MEMORY[0x266783E90](qword_2664E4938[v2]);
  return sub_2664E0EB8();
}

uint64_t sub_2662ECF60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  v10 = qword_280F91D08;
  v11 = sub_2664DE438();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  v12 = (v5 + *(*v5 + 112));
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  v13 = (v5 + *(*v5 + 120));
  *v13 = a3;
  v13[1] = a4;
  v14 = (v5 + *(*v5 + 128));
  *v14 = a1;
  v14[1] = a2;
  v15 = qword_280F91468;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91470;
  v18[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v18[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v18[0] = v16;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v5 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v18);
  return v5;
}

uint64_t sub_2662ED0F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  v10 = qword_280F91D08;
  v11 = sub_2664DE438();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  v12 = (v5 + *(*v5 + 112));
  sub_2662DC04C(v25);
  v13 = v25[7];
  v12[6] = v25[6];
  v12[7] = v13;
  v14 = v25[5];
  v12[4] = v25[4];
  v12[5] = v14;
  v15 = v25[11];
  v12[10] = v25[10];
  v12[11] = v15;
  v16 = v25[9];
  v12[8] = v25[8];
  v12[9] = v16;
  v17 = v25[1];
  *v12 = v25[0];
  v12[1] = v17;
  v18 = v25[3];
  v12[2] = v25[2];
  v12[3] = v18;
  v19 = (v5 + *(*v5 + 120));
  *v19 = a3;
  v19[1] = a4;
  v20 = (v5 + *(*v5 + 128));
  *v20 = a1;
  v20[1] = a2;
  v21 = qword_280F91468;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91470;
  v24[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v24[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v24[0] = v22;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v5 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v24);
  return v5;
}

uint64_t sub_2662ED2BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  v10 = qword_280F91D08;
  v11 = sub_2664DE438();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 112)) = 0;
  v12 = (v5 + *(*v5 + 120));
  *v12 = a3;
  v12[1] = a4;
  v13 = (v5 + *(*v5 + 128));
  *v13 = a1;
  v13[1] = a2;
  v14 = qword_280F91468;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_280F91470;
  v17[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v17[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v17[0] = v15;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v5 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v17);
  return v5;
}

uint64_t sub_2662ED444(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  v10 = qword_280F91D08;
  v11 = sub_2664DE438();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  *(v5 + *(*v5 + 112)) = 2;
  v12 = (v5 + *(*v5 + 120));
  *v12 = a3;
  v12[1] = a4;
  v13 = (v5 + *(*v5 + 128));
  *v13 = a1;
  v13[1] = a2;
  v14 = qword_280F91468;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_280F91470;
  v17[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v17[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v17[0] = v15;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v5 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v17);
  return v5;
}

uint64_t sub_2662ED608()
{
  v1 = *(v0 + 16);
  v2 = *(sub_2664DE438() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2662EBCD0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + v3, *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), v1);
}

uint64_t sub_2662ED6B8()
{
  v1 = v0[2];
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_2664DE438() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  return sub_2662EC260(v0[3], v0[4], v0[5], v0[6], v0 + v2, v0 + v5, *(v0 + v6), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + (((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)), v1);
}

unint64_t sub_2662ED7D0()
{
  result = qword_2800726A0;
  if (!qword_2800726A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800726A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Completions.TimeoutMillis(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Completions.TimeoutMillis(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2662ED984(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 24) = 0;
  v10 = qword_280F91D08;
  v11 = sub_2664DE438();
  (*(*(v11 - 8) + 56))(v5 + v10, 1, 1, v11);
  v12 = (v5 + *(*v5 + 112));
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (v5 + *(*v5 + 120));
  *v13 = a3;
  v13[1] = a4;
  v14 = (v5 + *(*v5 + 128));
  *v14 = a1;
  v14[1] = a2;
  v15 = qword_280F91468;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280F91470;
  v18[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v18[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v18[0] = v16;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v5 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(a1, a2, 1, v18);
  return v5;
}

uint64_t sub_2662EDB14(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(sub_2664DE438() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + v5;
  v9 = *(v1 + ((((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
  v11[2] = v3;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v8;
  v11[6] = swift_projectBox();
  v11[7] = a1;
  v11[8] = v9;
  return sub_266469DF8(sub_2662EDC08, v11);
}

uint64_t PlaybackAttributes.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v13 = *(v0 + 3);
  v14 = v0[50];

  sub_2664E0B28();
  MEMORY[0x2667833B0](0x3A656C6666756873, 0xE800000000000000);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v3, v4);

  MEMORY[0x2667833B0](0xD00000000000001ELL, 0x80000002664F45C0);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v5, v6);

  MEMORY[0x2667833B0](0xD000000000000017, 0x80000002664F45E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  v7 = sub_2664E0318();
  MEMORY[0x2667833B0](v7);

  MEMORY[0x2667833B0](0xD000000000000011, 0x80000002664F4600);
  v8 = MEMORY[0x2667834D0](v13, MEMORY[0x277D837D0]);
  MEMORY[0x2667833B0](v8);

  MEMORY[0x2667833B0](0x6574756F52657320, 0xEB000000003A6449);
  v9 = sub_2664E0318();
  MEMORY[0x2667833B0](v9);

  MEMORY[0x2667833B0](0xD000000000000017, 0x80000002664F4620);
  sub_2664E0C28();
  MEMORY[0x2667833B0](0x4D74616570657220, 0xEC0000003A65646FLL);
  sub_2664E0C28();
  MEMORY[0x2667833B0](0xD00000000000001ALL, 0x80000002664F4640);
  if (v14)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v14)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v10, v11);

  return 0;
}

void __swiftcall PlaybackAttributes.init(shuffle:overrideManuallyCuratedQueue:requesterSharedUserID:playbackQueueLocation:targetsLocalDevice:hashedRouteUIDs:seRouteId:startPlaybackImmediately:repeatMode:)(SiriAudioSupport::PlaybackAttributes *__return_ptr retstr, Swift::Bool shuffle, Swift::Bool overrideManuallyCuratedQueue, Swift::String_optional requesterSharedUserID, SiriAudioSupport::PlaybackQueueLocation playbackQueueLocation, Swift::Bool targetsLocalDevice, Swift::OpaquePointer hashedRouteUIDs, Swift::String_optional seRouteId, Swift::Bool startPlaybackImmediately, SiriAudioSupport::PlaybackRepeatMode repeatMode)
{
  v10 = *playbackQueueLocation;
  v11 = *v12;
  retstr->shuffle = shuffle;
  retstr->overrideManuallyCuratedQueue = overrideManuallyCuratedQueue;
  retstr->requesterSharedUserID = requesterSharedUserID;
  retstr->playbackQueueLocation = v10;
  retstr->targetsLocalDevice = targetsLocalDevice;
  retstr->repeatMode = v11;
  retstr->startPlaybackImmediately = startPlaybackImmediately;
  retstr->hashedRouteUIDs = hashedRouteUIDs;
  retstr->seRouteId = seRouteId;
}

uint64_t PlaybackAttributes.requesterSharedUserID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PlaybackAttributes.seRouteId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PlaybackAttributes.mediaRemoteRepeatMode.getter()
{
  v1 = *(v0 + 49);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2662EE0AC()
{
  v1 = *(v0 + 49);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2662EE0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_2662EE120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2662EE198(uint64_t a1, __int128 *a2, char *a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v114 = a5;
  v115 = a6;
  v103 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v101 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v104 = &v101 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v110 = &v101 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v24 = &v101 - v23;
  v25 = a2[1];
  v123 = *a2;
  v124 = v25;
  *v125 = a2[2];
  *&v125[15] = *(a2 + 47);
  v113 = a3;
  if (a3)
  {
    v101 = v21;
    LOBYTE(v122[0]) = v125[16];
    v26 = sub_2664C7D24(v122);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v28 = *(v11 + 16);
    v107 = v11 + 16;
    v108 = v27;
    v106 = v28;
    v28(v24, v27, v10);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v115;
    v111 = v7;
    v112 = v11;
    v105 = v26;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v102 = v10;
      v35 = v34;
      *&v122[0] = v34;
      *v33 = 136315138;
      LODWORD(v117) = v26;
      v36 = sub_2664E0D48();
      v38 = sub_2662A320C(v36, v37, v122);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_26629C000, v29, v30, "PlaybackQueueLocationProvider#handleUpNext Handling insertion position %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v39 = v35;
      v10 = v102;
      MEMORY[0x266784AD0](v39, -1, -1);
      v40 = v33;
      v7 = v111;
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v109 = *(v11 + 8);
    v109(v24, v10);
    v41 = v113;
    v43 = *(&v124 + 1);
    v42 = *v125;
    v44 = *&v125[8];
    sub_2662F0CC0(v7, v122);
    v45 = swift_allocObject();
    v46 = v114;
    *(v45 + 16) = v114;
    *(v45 + 24) = v32;
    v47 = v122[3];
    *(v45 + 64) = v122[2];
    *(v45 + 80) = v47;
    *(v45 + 96) = v122[4];
    v48 = v122[1];
    *(v45 + 32) = v122[0];
    *(v45 + 48) = v48;
    *(v45 + 112) = v41;
    v49 = v105;
    *(v45 + 120) = v105;
    v50 = v123;
    v51 = v124;
    v52 = *v125;
    *(v45 + 175) = *&v125[15];
    *(v45 + 144) = v51;
    *(v45 + 160) = v52;
    *(v45 + 128) = v50;
    if (*(v43 + 16))
    {
      v53 = v110;
      v54 = v10;
      v106(v110, v108, v10);
      sub_2662D2A64(&v123, v122);

      v55 = sub_2664DFE18();
      v56 = sub_2664E06C8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_26629C000, v55, v56, "PlaybackQueueLocationProvider#handleUpNext Executing logic for hashedRouteUIDs (WHA)", v57, 2u);
        MEMORY[0x266784AD0](v57, -1, -1);
      }

      v109(v53, v54);
      __swift_project_boxed_opaque_existential_1((v111 + 40), *(v111 + 64));
      v58 = swift_allocObject();
      *(v58 + 16) = sub_2662F1BD4;
      *(v58 + 24) = v45;

      sub_2664A4F2C(v43, sub_2662F1BDC, v58);
LABEL_20:
    }

    v115 = v42;
    if (v44)
    {
      v81 = v104;
      v106(v104, v108, v10);
      sub_2662D2A64(&v123, v122);

      v82 = sub_2664DFE18();
      v83 = sub_2664E06C8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = v10;
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_26629C000, v82, v83, "PlaybackQueueLocationProvider#handleUpNext Executing logic for seRouteId", v85, 2u);
        v86 = v85;
        v10 = v84;
        MEMORY[0x266784AD0](v86, -1, -1);
      }

      v109(v81, v10);
      __swift_project_boxed_opaque_existential_1((v111 + 40), *(v111 + 64));
      v87 = swift_allocObject();
      *(v87 + 16) = sub_2662F1BD4;
      *(v87 + 24) = v45;

      sub_2664A5784(v115, v44, sub_2662F1BDC, v87);

      goto LABEL_20;
    }

    sub_2662F0CC0(v111, v122);
    v89 = v10;
    v106(v101, v108, v10);

    sub_2662D2A64(&v123, &v117);
    sub_2662D2A64(&v123, &v117);

    v90 = v103;
    v91 = sub_2664DFE18();
    v92 = v32;
    v93 = sub_2664E06E8();
    if (os_log_type_enabled(v91, v93))
    {
      v94 = v49;
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_26629C000, v91, v93, "MediaPlaybackProvider#companionOriginIfAvailable On non-watch. Returning nil", v95, 2u);
      v96 = v95;
      v49 = v94;
      MEMORY[0x266784AD0](v96, -1, -1);
    }

    v109(v101, v89);
    sub_2662F0CC0(v122, &v117);
    v97 = swift_allocObject();
    v98 = v120;
    *(v97 + 48) = v119;
    *(v97 + 64) = v98;
    *(v97 + 80) = v121;
    v99 = v118;
    *(v97 + 16) = v117;
    *(v97 + 32) = v99;
    *(v97 + 96) = v113;
    *(v97 + 104) = v49;
    v100 = v124;
    *(v97 + 112) = v123;
    *(v97 + 128) = v100;
    *(v97 + 144) = *v125;
    *(v97 + 159) = *&v125[15];
    *(v97 + 168) = v46;
    *(v97 + 176) = v92;
    sub_2662D2A64(&v123, &v116);

    sub_2664AD07C(v90, sub_2662F1BD8, v97);

    sub_2662F0D28(v122);

    sub_2662D2B88(&v123);
  }

  else
  {
    v113 = v22;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v59 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v111 = *(v11 + 16);
    (v111)(v15, v59, v10);

    v60 = sub_2664DFE18();
    v61 = sub_2664E06D8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v112 = v11;
      v63 = v62;
      v64 = swift_slowAlloc();
      v110 = v59;
      v65 = v64;
      *&v117 = v64;
      *v63 = 136315138;

      v66 = sub_2664C8950();
      v102 = v10;
      v68 = v67;

      v69 = sub_2662A320C(v66, v68, &v117);
      v10 = v102;

      *(v63 + 4) = v69;
      _os_log_impl(&dword_26629C000, v60, v61, "PlaybackQueueLocationProvider#handleUpNext Nil playbackQueue for item: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      v70 = v65;
      v59 = v110;
      MEMORY[0x266784AD0](v70, -1, -1);
      v71 = v63;
      v11 = v112;
      MEMORY[0x266784AD0](v71, -1, -1);
    }

    v72 = *(v11 + 8);
    v72(v15, v10);
    v73 = v113;
    (v111)(v113, v59, v10);
    v74 = sub_2664DFE18();
    v75 = sub_2664E06B8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = v10;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v117 = v78;
      *v77 = 134218498;
      *(v77 + 4) = 13;
      *(v77 + 12) = 2048;
      *(v77 + 14) = 7;
      *(v77 + 22) = 2080;
      *(v77 + 24) = sub_2662A320C(0x65756575516C694ELL, 0xEF6D657449726F46, &v117);
      _os_log_impl(&dword_26629C000, v74, v75, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v77, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266784AD0](v78, -1, -1);
      MEMORY[0x266784AD0](v77, -1, -1);

      v79 = v73;
      v80 = v76;
    }

    else
    {

      v79 = v73;
      v80 = v10;
    }

    v72(v79, v80);
    v117 = xmmword_2664E4AC0;
    *&v118 = 0xEF6D657449726F46;
    v114(&v117);
  }
}

void sub_2662EECF8(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v81 = a7;
  v82 = a5;
  LODWORD(v83) = a6;
  v80 = a4;
  v85 = a3;
  v87 = sub_2664DFE38();
  v9 = *(v87 - 8);
  v10 = MEMORY[0x28223BE20](v87);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v79 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v79 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v79 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v79 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v84 = (&v79 - v26);
  MEMORY[0x28223BE20](v25);
  v28 = &v79 - v27;
  v29 = *(a1 + 16);
  v86 = a2;
  if (v29 < 2)
  {
    if (v29)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v47 = v87;
      v48 = __swift_project_value_buffer(v87, qword_280F914F0);
      swift_beginAccess();
      v84 = *(v9 + 16);
      v84(v18, v48, v47);
      v49 = sub_2664DFE18();
      v50 = sub_2664E06D8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_26629C000, v49, v50, "PlaybackQueueLocationProvider#handleUpNext Correct number of endpoints", v51, 2u);
        MEMORY[0x266784AD0](v51, -1, -1);
      }

      v52 = *(v9 + 8);
      v53 = v87;
      v52(v18, v87);
      sub_2662A01E8(a1 + 32, &v89);
      sub_2662F0DB0();
      if (swift_dynamicCast())
      {
        v54 = v88;
        __swift_project_boxed_opaque_existential_1((v80 + 40), *(v80 + 64));
        sub_2664A2C9C(v54, v82, v83, *(v81 + 8), *(v81 + 16), *(v81 + 8), *(v81 + 16), v86, v85);

        return;
      }

      v84(v15, v48, v53);
      v69 = sub_2664DFE18();
      v70 = sub_2664E06D8();
      v71 = v53;
      if (os_log_type_enabled(v69, v70))
      {
        v72 = v48;
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_26629C000, v69, v70, "PlaybackQueueLocationProvider#handleUpNext Guarenteed single endpoint not available", v73, 2u);
        v74 = v73;
        v48 = v72;
        MEMORY[0x266784AD0](v74, -1, -1);
      }

      v52(v15, v71);
      v84(v12, v48, v71);
      v75 = sub_2664DFE18();
      v76 = sub_2664E06B8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v89 = v78;
        *v77 = 134218498;
        *(v77 + 4) = 13;
        *(v77 + 12) = 2048;
        *(v77 + 14) = 7;
        *(v77 + 22) = 2080;
        *(v77 + 24) = sub_2662A320C(0xD000000000000024, 0x80000002664F4680, &v89);
        _os_log_impl(&dword_26629C000, v75, v76, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v77, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        MEMORY[0x266784AD0](v78, -1, -1);
        MEMORY[0x266784AD0](v77, -1, -1);
      }

      v52(v12, v71);
      v89 = xmmword_2664E4AD0;
      v90 = 0x80000002664F4680;
      v86(&v89);
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v55 = v87;
      v56 = __swift_project_value_buffer(v87, qword_280F914F0);
      swift_beginAccess();
      v57 = v9;
      v58 = *(v9 + 16);
      v58(v24, v56, v55);
      v59 = sub_2664DFE18();
      v60 = sub_2664E06D8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_26629C000, v59, v60, "PlaybackQueueLocationProvider#handleUpNext No endpoints found", v61, 2u);
        v62 = v61;
        v57 = v9;
        MEMORY[0x266784AD0](v62, -1, -1);
      }

      v63 = *(v57 + 8);
      v64 = v87;
      v63(v24, v87);
      v58(v21, v56, v64);
      v65 = sub_2664DFE18();
      v66 = sub_2664E06B8();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v91 = v68;
        *v67 = 134218498;
        *(v67 + 4) = 13;
        *(v67 + 12) = 2048;
        *(v67 + 14) = 7;
        *(v67 + 22) = 2080;
        *(v67 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F46B0, &v91);
        _os_log_impl(&dword_26629C000, v65, v66, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v67, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x266784AD0](v68, -1, -1);
        MEMORY[0x266784AD0](v67, -1, -1);
      }

      v63(v21, v64);
      v91 = xmmword_2664E4AE0;
      v92 = 0x80000002664F46B0;
      v86(&v91);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = v87;
    v31 = __swift_project_value_buffer(v87, qword_280F914F0);
    swift_beginAccess();
    v83 = *(v9 + 16);
    v83(v28, v31, v30);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v82 = v31;
      v35 = v34;
      v36 = swift_slowAlloc();
      *&v91 = v36;
      *v35 = 136315138;
      v88 = v29;
      v37 = sub_2664E0D48();
      v39 = sub_2662A320C(v37, v38, &v91);

      *(v35 + 4) = v39;
      v30 = v87;
      _os_log_impl(&dword_26629C000, v32, v33, "PlaybackQueueLocationProvider#handleUpNext Too many endpoints, count: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266784AD0](v36, -1, -1);
      v40 = v35;
      v31 = v82;
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v41 = *(v9 + 8);
    v41(v28, v30);
    v42 = v84;
    v83(v84, v31, v30);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06B8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v91 = v46;
      *v45 = 134218498;
      *(v45 + 4) = 13;
      *(v45 + 12) = 2048;
      *(v45 + 14) = 7;
      *(v45 + 22) = 2080;
      *(v45 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F46D0, &v91);
      _os_log_impl(&dword_26629C000, v43, v44, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v45, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    v41(v42, v30);
    v91 = xmmword_2664E4AE0;
    v92 = 0x80000002664F46D0;
    v86(&v91);
  }
}

void sub_2662EF750(void (*a1)(_BYTE *, uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v86 = a3;
  v87 = a6;
  v10 = a5;
  v88 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v85 = &v79[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v79[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v79[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v79[-v23];
  if (a2)
  {
    v83 = a4;
    type metadata accessor for CFError(0);
    sub_2662F0D58();
    v25 = swift_allocError();
    *v26 = a2;
    v82 = a2;
    v27 = sub_2664DE198();

    v28 = [v27 code];
    v84 = a7;
    if (v28 == 33)
    {
      v80 = v10;
      v81 = v14;
      v29 = a8;
      v30 = [v27 domain];
      v31 = sub_2664E02C8();
      if (!*MEMORY[0x277D27AE0])
      {
        __break(1u);
        return;
      }

      v33 = v31;
      v34 = v32;

      if (v33 == sub_2664E02C8() && v34 == v35)
      {

        a8 = v29;
        v14 = v81;
        v36 = v84;
        v37 = v80;
LABEL_14:
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v53 = __swift_project_value_buffer(v13, qword_280F914F0);
        swift_beginAccess();
        (*(v14 + 16))(v22, v53, v13);
        v54 = sub_2664DFE18();
        v55 = sub_2664E06C8();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_26629C000, v54, v55, "PlaybackQueueLocationProvider#handleUpNext group leader legacy", v56, 2u);
          MEMORY[0x266784AD0](v56, -1, -1);
        }

        (*(v14 + 8))(v22, v13);
        __swift_project_boxed_opaque_existential_1((v86 + 40), *(v86 + 64));
        sub_2664A2C9C(v88, v83, v37, *(v87 + 8), *(v87 + 16), *(v87 + 8), *(v87 + 16), v36, a8);

        return;
      }

      v52 = sub_2664E0D88();

      a8 = v29;
      v14 = v81;
      v36 = v84;
      v37 = v80;
      if (v52)
      {
        goto LABEL_14;
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v57 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v88 = *(v14 + 16);
    v88(v19, v57, v13);
    v58 = v14;
    v59 = v82;
    v60 = sub_2664DFE18();
    v61 = sub_2664E06D8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v81 = v58;
      v63 = v62;
      v64 = swift_slowAlloc();
      v87 = a8;
      v65 = v64;
      *&v89 = v64;
      *v63 = 136315138;
      v91 = a2;
      v66 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726B8, &qword_2664E4B08);
      v67 = sub_2664E0318();
      v69 = sub_2662A320C(v67, v68, &v89);

      *(v63 + 4) = v69;
      _os_log_impl(&dword_26629C000, v60, v61, "PlaybackQueueLocationProvider#handleUpNext group leader endpoint not found: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v63, -1, -1);

      v70 = v81;
    }

    else
    {

      v70 = v58;
    }

    v71 = *(v70 + 8);
    v71(v19, v13);
    v72 = v85;
    v88(v85, v57, v13);
    v73 = sub_2664DFE18();
    v74 = sub_2664E06B8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v72;
      v77 = swift_slowAlloc();
      *&v89 = v77;
      *v75 = 134218498;
      *(v75 + 4) = 13;
      *(v75 + 12) = 2048;
      *(v75 + 14) = 7;
      *(v75 + 22) = 2080;
      *(v75 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F4660, &v89);
      _os_log_impl(&dword_26629C000, v73, v74, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v75, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      MEMORY[0x266784AD0](v77, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);

      v78 = v76;
    }

    else
    {

      v78 = v72;
    }

    v71(v78, v13);
    v89 = xmmword_2664E4AF0;
    v90 = 0x80000002664F4660;
    v84(&v89);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v24, v38, v13);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06C8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v83 = a4;
      v43 = v42;
      *&v89 = v42;
      *v41 = 136315138;
      v91 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726A8, &qword_2664E4B00);
      v44 = sub_2664E0318();
      v85 = v13;
      v46 = sub_2662A320C(v44, v45, &v89);
      v80 = v10;
      v47 = v14;
      v48 = a8;
      v49 = v46;

      *(v41 + 4) = v49;
      a8 = v48;
      _os_log_impl(&dword_26629C000, v39, v40, "PlaybackQueueLocationProvider#handleUpNext group leader endpoint %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      v50 = v43;
      a4 = v83;
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v41, -1, -1);

      v51 = v88;
      (*(v47 + 8))(v24, v85);
      v10 = v80;
    }

    else
    {

      (*(v14 + 8))(v24, v13);
      v51 = v88;
    }

    __swift_project_boxed_opaque_existential_1((v86 + 40), *(v86 + 64));
    sub_2664A2C9C(v51, a4, v10, *(v87 + 8), *(v87 + 16), *(v87 + 8), *(v87 + 16), a7, a8);
  }
}

uint64_t sub_2662F0024(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v119 = a5;
  v111 = a4;
  v115 = a1;
  v11 = sub_2664DFE38();
  v120 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v112 = &v109 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v113 = (&v109 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v116 = &v109 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v109 - v22;
  MEMORY[0x28223BE20](v21);
  v117 = &v109 - v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a6;
  *(v25 + 24) = a7;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2662F0CB0;
  *(v26 + 24) = v25;
  v121 = v26;
  v27 = a2[1];
  v129 = *a2;
  v130 = v27;
  *v131 = a2[2];
  *&v131[15] = *(a2 + 47);
  v118 = v25;
  if (!a3)
  {
    v116 = v14;
    v117 = a6;
    v47 = qword_280F914E8;
    v119 = a7;

    if (v47 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v49 = v120;
    v50 = v23;
    v113 = *(v120 + 16);
    v114 = v48;
    v113(v23, v48, v11);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06D8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v110 = v11;
      v54 = v53;
      v55 = swift_slowAlloc();
      *&v124 = v55;
      *v54 = 136315138;

      v56 = sub_2664C8950();
      v58 = v57;

      v59 = sub_2662A320C(v56, v58, &v124);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_26629C000, v51, v52, "PlaybackQueueLocationProvider#handleUpNext Nil playbackQueue for item: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266784AD0](v55, -1, -1);
      v60 = v54;
      v11 = v110;
      MEMORY[0x266784AD0](v60, -1, -1);

      v61 = v120;
    }

    else
    {

      v61 = v49;
    }

    v86 = *(v61 + 8);
    v86(v50, v11);
    v87 = v116;
    v113(v116, v114, v11);
    v88 = sub_2664DFE18();
    v89 = v11;
    v90 = sub_2664E06B8();
    if (os_log_type_enabled(v88, v90))
    {
      v91 = v87;
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v124 = v93;
      *v92 = 134218498;
      *(v92 + 4) = 13;
      *(v92 + 12) = 2048;
      *(v92 + 14) = 7;
      *(v92 + 22) = 2080;
      *(v92 + 24) = sub_2662A320C(0x65756575516C694ELL, 0xEF6D657449726F46, &v124);
      _os_log_impl(&dword_26629C000, v88, v90, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v92, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x266784AD0](v93, -1, -1);
      MEMORY[0x266784AD0](v92, -1, -1);

      v94 = v91;
    }

    else
    {

      v94 = v87;
    }

    v86(v94, v89);
    v95 = v117;
    v124 = xmmword_2664E4AC0;
    *&v125 = 0xEF6D657449726F46;
    BYTE8(v125) = 1;

    sub_2663C6558(&v124, v95);
    sub_2662D2F30(v124, *(&v124 + 1), v125, SBYTE8(v125));
  }

  v115 = a3;
  LOBYTE(v124) = v131[16];

  v28 = sub_2664C7D24(&v124);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v30 = v120;
  v31 = *(v120 + 16);
  v32 = v117;
  v114 = v29;
  v31(v117, v29, v11);
  v33 = sub_2664DFE18();
  v34 = sub_2664E06C8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v110 = v11;
    v36 = v35;
    v37 = swift_slowAlloc();
    v109 = v31;
    v38 = v37;
    *&v124 = v37;
    *v36 = 136315138;
    LODWORD(v123[0]) = v28;
    v39 = sub_2664E0D48();
    v41 = v28;
    v42 = v30;
    v43 = sub_2662A320C(v39, v40, &v124);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_26629C000, v33, v34, "PlaybackQueueLocationProvider#handleUpNext Handling insertion position %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v44 = v38;
    v31 = v109;
    MEMORY[0x266784AD0](v44, -1, -1);
    v45 = v36;
    v11 = v110;
    MEMORY[0x266784AD0](v45, -1, -1);

    v46 = v117;
    v117 = *(v42 + 8);
    (v117)(v46, v11);
  }

  else
  {

    v117 = *(v30 + 8);
    (v117)(v32, v11);
    v41 = v28;
  }

  v63 = *(&v130 + 1);
  v62 = *v131;
  v64 = *&v131[8];
  sub_2662F0CC0(v119, &v124);
  v65 = swift_allocObject();
  v66 = v121;
  *(v65 + 16) = sub_2662F0CB8;
  *(v65 + 24) = v66;
  v67 = v127;
  *(v65 + 64) = v126;
  *(v65 + 80) = v67;
  *(v65 + 96) = v128;
  v68 = v125;
  *(v65 + 32) = v124;
  *(v65 + 48) = v68;
  *(v65 + 112) = v115;
  *(v65 + 120) = v41;
  v69 = v129;
  v70 = v130;
  v71 = *v131;
  *(v65 + 175) = *&v131[15];
  *(v65 + 144) = v70;
  *(v65 + 160) = v71;
  *(v65 + 128) = v69;
  if (*(v63 + 16))
  {
    v72 = v116;
    v31(v116, v114, v11);
    sub_2662D2A64(&v129, &v124);

    v73 = sub_2664DFE18();
    v74 = sub_2664E06C8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v11;
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_26629C000, v73, v74, "PlaybackQueueLocationProvider#handleUpNext Executing logic for hashedRouteUIDs (WHA)", v76, 2u);
      v77 = v76;
      v11 = v75;
      MEMORY[0x266784AD0](v77, -1, -1);
    }

    (v117)(v72, v11);
    __swift_project_boxed_opaque_existential_1((v119 + 40), *(v119 + 64));
    v78 = swift_allocObject();
    *(v78 + 16) = sub_2662F0CF8;
    *(v78 + 24) = v65;

    sub_2664A4F2C(v63, sub_2662F0CFC, v78);

LABEL_19:
  }

  LODWORD(v116) = v41;
  if (v64)
  {
    v116 = v62;
    v79 = v113;
    v31(v113, v114, v11);
    sub_2662D2A64(&v129, &v124);

    v80 = sub_2664DFE18();
    v81 = sub_2664E06C8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = v11;
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_26629C000, v80, v81, "PlaybackQueueLocationProvider#handleUpNext Executing logic for seRouteId", v83, 2u);
      v84 = v83;
      v11 = v82;
      MEMORY[0x266784AD0](v84, -1, -1);
    }

    (v117)(v79, v11);
    __swift_project_boxed_opaque_existential_1((v119 + 40), *(v119 + 64));
    v85 = swift_allocObject();
    *(v85 + 16) = sub_2662F0CF8;
    *(v85 + 24) = v65;

    sub_2664A5784(v116, v64, sub_2662F1BDC, v85);

    goto LABEL_19;
  }

  sub_2662F0CC0(v119, &v124);
  v97 = v112;
  v31(v112, v114, v11);
  sub_2662D2A64(&v129, v123);

  sub_2662D2A64(&v129, v123);

  v98 = v111;
  v99 = sub_2664DFE18();
  v100 = sub_2664E06E8();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = v11;
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_26629C000, v99, v100, "MediaPlaybackProvider#companionOriginIfAvailable On non-watch. Returning nil", v102, 2u);
    v103 = v102;
    v11 = v101;
    MEMORY[0x266784AD0](v103, -1, -1);
  }

  (v117)(v97, v11);
  sub_2662F0CC0(&v124, v123);
  v104 = swift_allocObject();
  v105 = v123[3];
  *(v104 + 48) = v123[2];
  *(v104 + 64) = v105;
  *(v104 + 80) = v123[4];
  v106 = v123[1];
  *(v104 + 16) = v123[0];
  *(v104 + 32) = v106;
  *(v104 + 96) = v115;
  *(v104 + 104) = v116;
  v107 = v130;
  *(v104 + 112) = v129;
  *(v104 + 128) = v107;
  *(v104 + 144) = *v131;
  *(v104 + 159) = *&v131[15];
  v108 = v121;
  *(v104 + 168) = sub_2662F0CB8;
  *(v104 + 176) = v108;
  sub_2662D2A64(&v129, &v122);

  sub_2664AD07C(v98, sub_2662F0D24, v104);

  sub_2662F0D28(&v124);

  sub_2662D2B88(&v129);
}

unint64_t sub_2662F0D58()
{
  result = qword_2800726B0;
  if (!qword_2800726B0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800726B0);
  }

  return result;
}

unint64_t sub_2662F0DB0()
{
  result = qword_2800726C0;
  if (!qword_2800726C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800726C0);
  }

  return result;
}

uint64_t objectdestroy_5Tm_0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 179, 7);
}

uint64_t objectdestroy_11Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_2662F0EBC(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v107 = a5;
  v97 = a4;
  v104 = a1;
  v11 = sub_2664DFE38();
  v108 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v98 = &v96 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v103 = &v96 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v105 = &v96 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v96 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v96 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = a7;
  v106 = v26;
  v27 = a2[1];
  v116 = *a2;
  v117 = v27;
  *v118 = a2[2];
  *&v118[15] = *(a2 + 47);
  if (a3)
  {
    v104 = a3;
    LOBYTE(v111) = v118[16];

    v28 = sub_2664C7D24(&v111);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v30 = v108;
    v31 = *(v108 + 16);
    v100 = (v108 + 16);
    v101 = v29;
    v99 = v31;
    v31(v25, v29, v11);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v111 = v102;
      *v34 = 136315138;
      LODWORD(v110[0]) = v28;
      v35 = sub_2664E0D48();
      v37 = v30;
      v38 = sub_2662A320C(v35, v36, &v111);

      *(v34 + 4) = v38;
      v39 = v106;
      _os_log_impl(&dword_26629C000, v32, v33, "PlaybackQueueLocationProvider#handleUpNext Handling insertion position %s", v34, 0xCu);
      v40 = v102;
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);

      v41 = v11;
      v102 = *(v37 + 8);
      (v102)(v25, v11);
    }

    else
    {

      v41 = v11;
      v102 = *(v30 + 8);
      (v102)(v25, v11);
      v39 = v106;
    }

    v65 = *(&v117 + 1);
    v66 = *v118;
    v67 = *&v118[8];
    sub_2662F0CC0(v107, &v111);
    v68 = swift_allocObject();
    *(v68 + 16) = sub_2662F0CB8;
    *(v68 + 24) = v39;
    v69 = v114;
    *(v68 + 64) = v113;
    *(v68 + 80) = v69;
    *(v68 + 96) = v115;
    v70 = v112;
    *(v68 + 32) = v111;
    *(v68 + 48) = v70;
    *(v68 + 112) = v104;
    *(v68 + 120) = v28;
    v71 = v116;
    v72 = v117;
    v73 = *v118;
    *(v68 + 175) = *&v118[15];
    *(v68 + 144) = v72;
    *(v68 + 160) = v73;
    *(v68 + 128) = v71;
    v106 = v65;
    if (*(v65 + 16))
    {
      v99(v105, v101, v41);
      sub_2662D2A64(&v116, &v111);

      v74 = sub_2664DFE18();
      v75 = sub_2664E06C8();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_26629C000, v74, v75, "PlaybackQueueLocationProvider#handleUpNext Executing logic for hashedRouteUIDs (WHA)", v76, 2u);
        MEMORY[0x266784AD0](v76, -1, -1);
      }

      (v102)(v105, v41);
      __swift_project_boxed_opaque_existential_1((v107 + 40), *(v107 + 64));
      v77 = swift_allocObject();
      *(v77 + 16) = sub_2662F1BD4;
      *(v77 + 24) = v68;

      sub_2664A4F2C(v106, sub_2662F1BDC, v77);

LABEL_21:
    }

    if (v67)
    {
      v99(v103, v101, v41);
      sub_2662D2A64(&v116, &v111);

      v78 = sub_2664DFE18();
      v79 = sub_2664E06C8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_26629C000, v78, v79, "PlaybackQueueLocationProvider#handleUpNext Executing logic for seRouteId", v80, 2u);
        MEMORY[0x266784AD0](v80, -1, -1);
      }

      (v102)(v103, v41);
      __swift_project_boxed_opaque_existential_1((v107 + 40), *(v107 + 64));
      v81 = swift_allocObject();
      *(v81 + 16) = sub_2662F1BD4;
      *(v81 + 24) = v68;

      sub_2664A5784(v66, v67, sub_2662F1BDC, v81);

      goto LABEL_21;
    }

    v84 = v102;
    LODWORD(v106) = v28;
    sub_2662F0CC0(v107, &v111);
    v99(v98, v101, v41);
    sub_2662D2A64(&v116, v110);

    sub_2662D2A64(&v116, v110);

    v85 = v97;
    v86 = v39;
    v87 = sub_2664DFE18();
    v88 = sub_2664E06E8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = v86;
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_26629C000, v87, v88, "MediaPlaybackProvider#companionOriginIfAvailable On non-watch. Returning nil", v90, 2u);
      v91 = v90;
      v86 = v89;
      MEMORY[0x266784AD0](v91, -1, -1);
    }

    v84(v98, v41);
    sub_2662F0CC0(&v111, v110);
    v92 = swift_allocObject();
    v93 = v110[3];
    *(v92 + 48) = v110[2];
    *(v92 + 64) = v93;
    *(v92 + 80) = v110[4];
    v94 = v110[1];
    *(v92 + 16) = v110[0];
    *(v92 + 32) = v94;
    *(v92 + 96) = v104;
    *(v92 + 104) = v106;
    v95 = v117;
    *(v92 + 112) = v116;
    *(v92 + 128) = v95;
    *(v92 + 144) = *v118;
    *(v92 + 159) = *&v118[15];
    *(v92 + 168) = sub_2662F0CB8;
    *(v92 + 176) = v86;
    sub_2662D2A64(&v116, &v109);

    sub_2664AD07C(v85, sub_2662F1BD8, v92);

    sub_2662F0D28(&v111);

    sub_2662D2B88(&v116);
  }

  else
  {
    v105 = v14;
    v103 = a6;
    v42 = qword_280F914E8;
    v107 = a7;

    if (v42 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v44 = v11;
    v45 = v108;
    v102 = *(v108 + 16);
    (v102)(v23, v43, v11);

    v46 = sub_2664DFE18();
    v47 = sub_2664E06D8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v101 = v11;
      *&v111 = v100;
      *v48 = 136315138;

      v49 = v43;
      v50 = sub_2664C8950();
      v52 = v51;

      v53 = v50;
      v43 = v49;
      v54 = sub_2662A320C(v53, v52, &v111);
      v45 = v108;

      *(v48 + 4) = v54;
      _os_log_impl(&dword_26629C000, v46, v47, "PlaybackQueueLocationProvider#handleUpNext Nil playbackQueue for item: %s", v48, 0xCu);
      v55 = v100;
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
      v44 = v101;
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v56 = *(v45 + 8);
    v56(v23, v44);
    v57 = v105;
    (v102)(v105, v43, v44);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06B8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v44;
      v62 = swift_slowAlloc();
      *&v111 = v62;
      *v60 = 134218498;
      *(v60 + 4) = 13;
      *(v60 + 12) = 2048;
      *(v60 + 14) = 7;
      *(v60 + 22) = 2080;
      *(v60 + 24) = sub_2662A320C(0x65756575516C694ELL, 0xEF6D657449726F46, &v111);
      _os_log_impl(&dword_26629C000, v58, v59, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v60, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x266784AD0](v62, -1, -1);
      MEMORY[0x266784AD0](v60, -1, -1);

      v63 = v57;
      v64 = v61;
    }

    else
    {

      v63 = v57;
      v64 = v44;
    }

    v56(v63, v64);
    v83 = v103;
    v111 = xmmword_2664E4AC0;
    *&v112 = 0xEF6D657449726F46;
    BYTE8(v112) = 1;

    (v83)(&v111);
    sub_2662D2F30(v111, *(&v111 + 1), v112, SBYTE8(v112));
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2662F1B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2662F1B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SiriAudioSupport::BuildVersion_optional __swiftcall BuildVersion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

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

  *v2 = v5;
  return result;
}

uint64_t BuildVersion.rawValue.getter()
{
  if (*v0)
  {
    return 4534578;
  }

  else
  {
    return 4272434;
  }
}

uint64_t sub_2662F1C78(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 4534578;
  }

  else
  {
    v2 = 4272434;
  }

  if (*a2)
  {
    v3 = 4534578;
  }

  else
  {
    v3 = 4272434;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2664E0D88();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2662F1CEC()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2662F1D50(uint64_t a1)
{
  sub_2664E0368();
}

uint64_t sub_2662F1D98(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2662F1DF8@<X0>(char *a2@<X8>)
{
  v3 = sub_2664E0CB8();

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

void sub_2662F1E58(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 4534578;
  }

  else
  {
    v2 = 4272434;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_2662F1E7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726F0, &qword_2664E4BE0);
  __swift_allocate_value_buffer(v0, qword_2800726C8);
  __swift_project_value_buffer(v0, qword_2800726C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280072700, qword_2664E4D40);
  return sub_2664DF7E8();
}

uint64_t CompanionProductPrefixParser.deviceType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CompanionProductPrefixParser.build.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CompanionProductPrefixParser.__allocating_init(for:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CompanionProductPrefixParser.init(for:)(a1, a2);
  return v4;
}

uint64_t CompanionProductPrefixParser.init(for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726E0, &qword_2664E4BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726E8, &qword_2664E4BD8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  if (qword_280071AA0 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726F0, &qword_2664E4BE0);
  __swift_project_value_buffer(v10, qword_2800726C8);
  sub_2664DF7F8();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2662F226C(v5);
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    swift_getKeyPath();
    sub_2664DF808();

    v12 = MEMORY[0x266783360](v19, v20, v21, v22);
    v14 = v13;

    *(v2 + 16) = v12;
    *(v2 + 24) = v14;
    swift_getKeyPath();
    sub_2664DF808();

    v15 = MEMORY[0x266783360](v19, v20, v21, v22);
    v17 = v16;

    (*(v7 + 8))(v9, v6);
    *(v2 + 32) = v15;
    *(v2 + 40) = v17;
  }

  return v2;
}

uint64_t sub_2662F226C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726E0, &qword_2664E4BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2662F22D4(_BYTE *a1)
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 40);
  if (v7)
  {
    v8 = *(v1 + 32);
    if (*a1)
    {
      v9 = 4534578;
    }

    else
    {
      v9 = 4272434;
    }

    v10 = sub_2664E0378();

    v11 = sub_2662F26E0(v10, v8, v7);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v35 = v15;
    v36 = v13;
    v18 = sub_2662F277C(v11, v13, v15, v17, v9, 0xE300000000000000);

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v6, v19, v3);

    v20 = sub_2664DFE18();
    v21 = sub_2664E06B8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      HIDWORD(v33) = v18;
      v23 = v22;
      v24 = swift_slowAlloc();
      v34 = v4;
      v25 = v24;
      v37 = v24;
      *v23 = 136315650;
      v26 = sub_2662A320C(v9, 0xE300000000000000, &v37);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = MEMORY[0x266783360](v11, v36, v35, v17);
      v29 = v28;

      v30 = sub_2662A320C(v27, v29, &v37);

      *(v23 + 14) = v30;
      *(v23 + 22) = 1024;
      v31 = BYTE4(v33) ^ 1;
      *(v23 + 24) = (BYTE4(v33) ^ 1) & 1;
      _os_log_impl(&dword_26629C000, v20, v21, "CompanionProductPrefixParser#isBuildEqualOrGreaterThan Build %s greater or equal to %s = %{BOOL}d", v23, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v25, -1, -1);
      MEMORY[0x266784AD0](v23, -1, -1);

      (*(v34 + 8))(v6, v3);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
      v31 = v18 ^ 1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_2662F2640(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t CompanionProductPrefixParser.deinit()
{

  return v0;
}

uint64_t CompanionProductPrefixParser.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2662F26E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2664E0388();

    return sub_2664E0428();
  }

  return result;
}

uint64_t sub_2662F277C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 0;
  }

  else
  {
    return sub_2664E0D38() & 1;
  }
}

unint64_t sub_2662F27FC()
{
  result = qword_2800726F8;
  if (!qword_2800726F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800726F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInstalledAs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInstalledAs(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_2662F2A78(uint64_t a1)
{
  sub_2662F37D0();
  v2 = [swift_getObjCClassFromMetadata() identityKind];
  v3 = objc_allocWithZone(MEMORY[0x277CD5DA0]);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2662F381C;
  *(v4 + 24) = a1;
  v8[4] = sub_2662F3824;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26631C950;
  v8[3] = &block_descriptor_6;
  v5 = _Block_copy(v8);

  v6 = [v3 initWithModelKind:v2 block:v5];

  _Block_release(v5);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2662F2BE4(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2662F382C;
  *(v4 + 24) = a2;
  v7[4] = sub_2662F3824;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2663F8490;
  v7[3] = &block_descriptor_21;
  v5 = _Block_copy(v7);

  [a1 setUniversalStoreIdentifiersWithBlock_];
  _Block_release(v5);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2662F2D24(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_2662F3020(*v11, a2, v15, v19, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t sub_2662F2F8C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t sub_2662F3020(uint64_t a1, void *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v63 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v82[3] = v10;
  v82[4] = &off_2877F3740;
  v82[0] = a1;
  v81[3] = &type metadata for PlaybackStarter;
  v81[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v81[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v80[3] = &type metadata for PlaybackQueueLocationProvider;
  v80[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v80[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v82, v79);
  sub_2662A5550(a2, v78);
  sub_2662A5550(v81, v77);
  sub_2662A5550(v80, v76);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v79, v79[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x28223BE20](v21);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
  MEMORY[0x28223BE20](v25);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v19;
  v75[3] = v10;
  v75[4] = &off_2877F3740;
  v75[0] = v29;
  v74[3] = &type metadata for PlaybackStarter;
  v74[4] = &off_2877EE098;
  v30 = swift_allocObject();
  v74[0] = v30;
  v31 = v23[3];
  v30[3] = v23[2];
  v30[4] = v31;
  v30[5] = v23[4];
  v32 = v23[1];
  v30[1] = *v23;
  v30[2] = v32;
  v72 = &type metadata for PlaybackQueueLocationProvider;
  v73 = &off_2877E8100;
  v33 = swift_allocObject();
  *&v71 = v33;
  v34 = v27[3];
  v33[3] = v27[2];
  v33[4] = v34;
  v33[5] = v27[4];
  v35 = v27[1];
  v33[1] = *v27;
  v33[2] = v35;
  sub_2662A5550(v75, a5 + 16);
  sub_2662A5550(v78, a5 + 56);
  sub_2662A5550(v74, a5 + 104);
  sub_2662A5550(v75, v70);
  sub_2662A5550(v78, v69);
  sub_2662A5550(v74, v68);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  MEMORY[0x28223BE20](v36);
  v38 = (&v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  MEMORY[0x28223BE20](v40);
  v42 = (&v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = *v38;
  v67[3] = v10;
  v67[4] = &off_2877F3740;
  v66 = &off_2877EE098;
  v67[0] = v44;
  v65 = &type metadata for PlaybackStarter;
  v45 = swift_allocObject();
  v64[0] = v45;
  v46 = v42[3];
  v45[3] = v42[2];
  v45[4] = v46;
  v45[5] = v42[4];
  v47 = v42[1];
  v45[1] = *v42;
  v45[2] = v47;
  type metadata accessor for LocalPlaybackHelper();
  v48 = swift_allocObject();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v67, v10);
  MEMORY[0x28223BE20](v49);
  v51 = (&v62 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x28223BE20](v53);
  v55 = (&v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v51;
  v48[5] = v10;
  v48[6] = &off_2877F3740;
  v48[2] = v57;
  v48[15] = &type metadata for PlaybackStarter;
  v48[16] = &off_2877EE098;
  v58 = swift_allocObject();
  v48[12] = v58;
  v59 = v55[3];
  v58[3] = v55[2];
  v58[4] = v59;
  v58[5] = v55[4];
  v60 = v55[1];
  v58[1] = *v55;
  v58[2] = v60;
  sub_2662A8618(v69, (v48 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(v75);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  *(a5 + 96) = v48;
  sub_2662A8618(&v71, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v79);
  return a5;
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_2662F37D0()
{
  result = qword_280072710;
  if (!qword_280072710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280072710);
  }

  return result;
}

void sub_2662F382C(void *a1)
{
  v2 = sub_2664E02A8();
  [a1 setGlobalPlaylistID_];
}

uint64_t Parse.playMediaIntent.getter()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v55 = &v52 - v6;
  v7 = sub_2664DEBD8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = sub_2664DEBF8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == *MEMORY[0x277D5C158])
  {
    (*(v18 + 96))(v20, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072848, &qword_2664E4DB8);
    v22 = sub_2664DEBE8();

    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
    }

    else
    {

      v24 = 0;
    }

    v48 = sub_2664DF2D8();
    (*(*(v48 - 8) + 8))(v20, v48);
    return v24;
  }

  else
  {
    if (v21 == *MEMORY[0x277D5C150])
    {
      (*(v18 + 96))(v20, v17);
      v25 = v8;
      (*(v8 + 32))(v16, v20, v7);
      sub_2663DD4DC(v16, v59);
      if (v61)
      {
        if (v61 != 255)
        {
          sub_2662A9238(v59, &qword_280072840, &qword_2664E4DB0);
        }

        v26 = v55;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v27 = v57;
        v28 = __swift_project_value_buffer(v57, qword_280F914F0);
        swift_beginAccess();
        v29 = v56;
        (*(v56 + 16))(v26, v28, v27);
        v30 = *(v25 + 16);
        v30(v14, v16, v7);
        v31 = sub_2664DFE18();
        v32 = sub_2664E06D8();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v54 = v32;
          v34 = v25;
          v35 = v33;
          v53 = swift_slowAlloc();
          v58 = v53;
          *v35 = 136315138;
          v30(v11, v14, v7);
          v36 = sub_2664E0318();
          v38 = v37;
          v39 = *(v34 + 8);
          v39(v14, v7);
          v40 = sub_2662A320C(v36, v38, &v58);

          *(v35 + 4) = v40;
          _os_log_impl(&dword_26629C000, v31, v54, "Parse#playMediaIntent Unable to get INPlayMediaIntent from unsupported direct invocation use case %s", v35, 0xCu);
          v41 = v53;
          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          MEMORY[0x266784AD0](v41, -1, -1);
          MEMORY[0x266784AD0](v35, -1, -1);

          (*(v29 + 8))(v55, v57);
          v39(v16, v7);
        }

        else
        {

          v51 = *(v25 + 8);
          v51(v14, v7);
          (*(v29 + 8))(v55, v57);
          v51(v16, v7);
        }
      }

      else
      {
        v50 = v60;
        (*(v8 + 8))(v16, v7);

        if (v50)
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v42 = v57;
      v43 = __swift_project_value_buffer(v57, qword_280F914F0);
      swift_beginAccess();
      v44 = v56;
      (*(v56 + 16))(v5, v43, v42);
      v45 = sub_2664DFE18();
      v46 = sub_2664E06D8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_26629C000, v45, v46, "Parse#playMediaIntent unable to get INPlayMediaIntent from parse", v47, 2u);
        MEMORY[0x266784AD0](v47, -1, -1);
      }

      (*(v44 + 8))(v5, v42);
      (*(v18 + 8))(v20, v17);
    }

    return 0;
  }
}

uint64_t Parse.siriKitIntent.getter()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664DEBF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D5C158])
  {
    (*(v7 + 96))(v9, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072848, &qword_2664E4DB8);
    v10 = sub_2664DF2D8();
    (*(*(v10 - 8) + 8))(v9, v10);
    v11 = sub_2664DEBE8();

    return v11;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v5, v13, v2);
    v14 = sub_2664DFE18();
    v15 = sub_2664E06E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26629C000, v14, v15, "Parse#playMediaIntent Ignoring non-server-conversion parse", v16, 2u);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t Parse.firstNLUUserDialogAct()@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v1 = sub_2664DEBD8();
  v103 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v94 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v96 = &v93 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v93 - v6;
  v8 = sub_2664DFE38();
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v97 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v100 = (&v93 - v12);
  MEMORY[0x28223BE20](v11);
  v95 = &v93 - v13;
  v14 = sub_2664DF0B8();
  v98 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664DF0D8();
  v18 = *(v17 - 8);
  v104 = v17;
  v105 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2664DEC28();
  v21 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2664DEBF8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v27, v107, v24);
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 == *MEMORY[0x277D5C150])
  {
    (*(v25 + 96))(v27, v24);
    v29 = v103;
    (*(v103 + 32))(v7, v27, v1);
    sub_2663DD4DC(v7, v110);
    v30 = v7;
    if (v111 == 4)
    {
      v48 = v110[0];

      if (v48)
      {
        v49 = v48;
        v50 = v106;
        sub_2664DFC88();

        (*(v29 + 8))(v30, v1);
        v51 = *(v105 + 56);
        v52 = v50;
LABEL_25:
        v55 = 0;
        return v51(v52, v55, 1, v104);
      }

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v56 = v102;
      v57 = __swift_project_value_buffer(v102, qword_280F914F0);
      swift_beginAccess();
      v58 = v101;
      v59 = v97;
      (*(v101 + 16))(v97, v57, v56);
      v60 = *(v29 + 16);
      v61 = v96;
      v60(v96, v30, v1);
      v62 = sub_2664DFE18();
      v63 = sub_2664E06D8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v107 = v30;
        v108 = v65;
        v100 = v65;
        *v64 = 136315138;
        v60(v94, v61, v1);
        v66 = sub_2664E0318();
        v68 = v67;
        v69 = *(v29 + 8);
        v69(v61, v1);
        v70 = sub_2662A320C(v66, v68, &v108);

        *(v64 + 4) = v70;
        _os_log_impl(&dword_26629C000, v62, v63, "Parse+Extension#firstUserDialogAct PlayMediaShim directInvocation doesn't contain audioExperience %s", v64, 0xCu);
        v71 = v100;
        __swift_destroy_boxed_opaque_existential_1Tm(v100);
        MEMORY[0x266784AD0](v71, -1, -1);
        MEMORY[0x266784AD0](v64, -1, -1);

        (*(v58 + 8))(v97, v102);
        v69(v107, v1);
      }

      else
      {

        v79 = *(v29 + 8);
        v79(v61, v1);
        (*(v58 + 8))(v59, v102);
        v79(v30, v1);
      }
    }

    else
    {
      if (v111 != 255)
      {
        sub_2662A9238(v110, &qword_280072840, &qword_2664E4DB0);
      }

      (*(v29 + 8))(v7, v1);
    }
  }

  else if (v28 == *MEMORY[0x277D5C148])
  {
    (*(v25 + 96))(v27, v24);
    v31 = *v27;
    v32 = sub_2664DFCC8();
    v33 = v32;
    if (v32 >> 62)
    {
      goto LABEL_38;
    }

    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v101;
    for (i = v102; v34; i = v102)
    {
      v37 = 0;
      while (1)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x266783B70](v37, v33);
        }

        else
        {
          if (v37 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v38 = *(v33 + 8 * v37 + 32);
        }

        v39 = v38;
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        sub_2664DFCD8();
        if (swift_dynamicCastClass())
        {

          v53 = v39;
          v54 = v106;
          sub_2664DFC88();

          v51 = *(v105 + 56);
          v52 = v54;
          goto LABEL_25;
        }

        ++v37;
        if (v40 == v34)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      v34 = sub_2664E0A68();
      v36 = v101;
    }

LABEL_39:

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v80 = __swift_project_value_buffer(i, qword_280F914F0);
    swift_beginAccess();
    v81 = v100;
    (*(v36 + 16))(v100, v80, i);
    v82 = v31;
    v83 = sub_2664DFE18();
    v84 = sub_2664E06D8();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v109[0] = v86;
      *v85 = 136315138;
      v87 = sub_2664DFCC8();
      v88 = sub_2664DFC98();
      v89 = MEMORY[0x2667834D0](v87, v88);
      v91 = v90;

      v92 = sub_2662A320C(v89, v91, v109);

      *(v85 + 4) = v92;
      _os_log_impl(&dword_26629C000, v83, v84, "Parse+Extension#firstUserDialogAct PommesResponse doesn't contain audioExperience %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x266784AD0](v86, -1, -1);
      MEMORY[0x266784AD0](v85, -1, -1);

      (*(v36 + 8))(v100, i);
    }

    else
    {

      (*(v36 + 8))(v81, i);
    }
  }

  else
  {
    if (v28 != *MEMORY[0x277D5C160])
    {
      (*(v105 + 56))(v106, 1, 1, v104);
      return (*(v25 + 8))(v27, v24);
    }

    (*(v25 + 96))(v27, v24);
    v41 = v21;
    v42 = v99;
    (*(v21 + 32))(v23, v27, v99);
    sub_2664DEC18();
    v43 = sub_2664DF0A8();
    (*(v98 + 8))(v16, v14);
    if (*(v43 + 16))
    {
      v45 = v104;
      v44 = v105;
      (*(v105 + 16))(v20, v43 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v104);

      (*(v41 + 8))(v23, v42);
      v46 = v106;
      (*(v44 + 32))(v106, v20, v45);
      return (*(v44 + 56))(v46, 0, 1, v45);
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v72 = v102;
    v73 = __swift_project_value_buffer(v102, qword_280F914F0);
    swift_beginAccess();
    v74 = v101;
    v75 = v95;
    (*(v101 + 16))(v95, v73, v72);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06E8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_26629C000, v76, v77, "Parse+Extension#firstUserDialogAct No user dialog act found in userParse.", v78, 2u);
      MEMORY[0x266784AD0](v78, -1, -1);
    }

    (*(v74 + 8))(v75, v72);
    (*(v41 + 8))(v23, v42);
  }

  v52 = v106;
  v51 = *(v105 + 56);
  v55 = 1;
  return v51(v52, v55, 1, v104);
}

uint64_t Parse.firstUsoTask()()
{
  v1 = sub_2664DFE38();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v44 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v43[1] = v43 - v5;
  MEMORY[0x28223BE20](v4);
  v43[0] = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v43 - v8;
  v10 = sub_2664DF0D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DEBF8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, v0, v13);
  v17 = (*(v14 + 88))(v16, v13);
  v18 = *MEMORY[0x277D5C148];
  v19 = *MEMORY[0x277D5C160];
  (*(v14 + 8))(v16, v13);
  result = 0;
  if (v17 == v18 || v17 == v19)
  {
    Parse.firstNLUUserDialogAct()(v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_2662A9238(v9, &qword_280072850, &qword_2664EDE70);
      v23 = v46;
      v22 = v47;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v22, qword_280F914F0);
      swift_beginAccess();
      v25 = v44;
      (*(v23 + 16))(v44, v24, v22);
      v26 = sub_2664DFE18();
      v27 = sub_2664E06E8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_26629C000, v26, v27, "Parse+Extension#firstUsoTask No user dialog act found in userParse.", v28, 2u);
        MEMORY[0x266784AD0](v28, -1, -1);
      }

      (*(v23 + 8))(v25, v22);
      return 0;
    }

    v29 = v10;
    v30 = v11;
    v31 = v45;
    (*(v11 + 32))(v45, v9, v29);
    v32 = sub_2664DF108();
    v34 = v46;
    v33 = v47;
    if (v32 >> 62)
    {
      v37 = v32;
      v38 = sub_2664E0A68();
      v32 = v37;
      v35 = v43[0];
      if (v38)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v35 = v43[0];
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_17:
        if ((v32 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x266783B70](0);
          goto LABEL_20;
        }

        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v36 = *(v32 + 32);

LABEL_20:

          (*(v11 + 8))(v31, v29);
          return v36;
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    if (qword_280F914E8 == -1)
    {
LABEL_23:
      v39 = __swift_project_value_buffer(v33, qword_280F914F0);
      swift_beginAccess();
      (*(v34 + 16))(v35, v39, v33);
      v40 = sub_2664DFE18();
      v41 = sub_2664E06E8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_26629C000, v40, v41, "Parse+Extension#firstUsoTask No tasks found in input", v42, 2u);
        MEMORY[0x266784AD0](v42, -1, -1);
      }

      (*(v34 + 8))(v35, v33);
      (*(v30 + 8))(v31, v29);
      return 0;
    }

LABEL_27:
    swift_once();
    goto LABEL_23;
  }

  return result;
}

uint64_t Parse.getPommesResponse()()
{
  v1 = v0;
  v2 = sub_2664DEBF8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D5C148])
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_2662F57BC()
{
  sub_2662F5824();
  result = sub_2664E0928();
  qword_280F91D48 = result;
  return result;
}

unint64_t sub_2662F5824()
{
  result = qword_280F914E0;
  if (!qword_280F914E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F914E0);
  }

  return result;
}

BOOL sub_2662F5880(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  if (a1 == 6 || a1 == 1)
  {
    v13 = AFIsInternalInstall();
    v14 = 72;
    if (v13)
    {
      v14 = 80;
    }

    v15 = *(a2 + v14);
    v16 = v3[8];
    v17 = v3[9];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v16);
    if ((*(v17 + 72))(v16, v17))
    {
      v18 = 1;
    }

    else
    {
      sub_2662F632C(0.0, 1.0);
      v18 = v19 < v15;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v12, v20, v6);
    sub_2662F63D0(v3, v40);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v6;
      v39 = v24;
      v25 = v24;
      *v23 = 136315650;
      if (v18)
      {
        v26 = 1702195828;
      }

      else
      {
        v26 = 0x65736C6166;
      }

      if (v18)
      {
        v27 = 0xE400000000000000;
      }

      else
      {
        v27 = 0xE500000000000000;
      }

      v28 = sub_2662A320C(v26, v27, &v39);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v15;
      *(v23 + 22) = 1024;
      v29 = v42;
      v30 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v31 = (*(v30 + 72))(v29, v30) & 1;
      sub_2662F6408(v40);
      *(v23 + 24) = v31;
      _os_log_impl(&dword_26629C000, v21, v22, "MegamodelConfiguration#shouldRecordMegamodel: record megamodel decision is %s collection rate: %f, force: %{BOOL}d", v23, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x266784AD0](v25, -1, -1);
      MEMORY[0x266784AD0](v23, -1, -1);

      (*(v7 + 8))(v12, v38);
    }

    else
    {
      sub_2662F6408(v40);

      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v32, v6);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "MegamodelConfiguration#shouldRecordMegamodel: caller other than searchui and siri, record megamodel decision is false", v35, 2u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  return v18;
}

uint64_t sub_2662F5CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 6 || a1 == 1)
  {
    v8 = *(a2 + 88);

    return sub_2662F5EDC(v8);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, v10, v4);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26629C000, v11, v12, "MegamodelConfiguration#shouldEvaluateMegamodel: caller other than searchui and siri, evaluate megamodel decision is false", v13, 2u);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

uint64_t sub_2662F5EDC(char a1)
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = v1[3];
  v14 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v13);
  v15 = (*(v14 + 16))(v13, v14);
  if (v15)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v7, v16, v3);
    v17 = sub_2664DFE18();
    v18 = sub_2664E06D8();
    if (!os_log_type_enabled(v17, v18))
    {
      v22 = 0;
      v12 = v7;
LABEL_21:

      (*(v4 + 8))(v12, v3);
      return v22 & 1;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "MegamodelConfiguration#isMegamodelEvaluationAvailable: Megamodel evaluation is disabled on AppleTV", v19, 2u);
    v12 = v7;
LABEL_17:
    v22 = v15 ^ 1;
    MEMORY[0x266784AD0](v19, -1, -1);
    goto LABEL_21;
  }

  if (a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v12, v20, v3);
    v17 = sub_2664DFE18();
    v21 = sub_2664E06C8();
    if (!os_log_type_enabled(v17, v21))
    {
      v22 = 1;
      goto LABEL_21;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v21, "MegamodelConfiguration#isMegamodelEvaluationAvailable: evaluating megamodel: configuration enabled", v19, 2u);
    goto LABEL_17;
  }

  v23 = v1[8];
  v24 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v23);
  if ((*(v24 + 80))(v23, v24))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v3, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v10, v25, v3);
    v17 = sub_2664DFE18();
    v26 = sub_2664E06C8();
    if (!os_log_type_enabled(v17, v26))
    {
      v22 = 1;
      v12 = v10;
      goto LABEL_21;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v26, "MegamodelConfiguration#isMegamodelEvaluationAvailable: evaluating megamodel: forced evaluation", v19, 2u);
    v12 = v10;
    goto LABEL_17;
  }

  v22 = 0;
  return v22 & 1;
}

void sub_2662F632C(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x266784AF0](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_2662F632C(a1, a2);
  }
}

uint64_t OnscreenEntityProvider.init(referenceResolver:siriAudioLinkServices:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2662A8618(a1, a3);

  return sub_2662A8618(a2, a3 + 40);
}

uint64_t OnscreenEntityProvider.retrieveOnScreenMediaItem(matching:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v33 - v4;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v34 = *(v6 + 16);
  v34(v10, v11, v5);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem...", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  v15 = *(v6 + 8);
  v15(v10, v5);
  v16 = sub_2664DFC28();
  if (v17)
  {
    v16 = sub_2664E0328();
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_2664DFC38();
  if (!v21)
  {
    v22 = v20;
    v24 = 0;
    if (!v19)
    {
      goto LABEL_10;
    }

LABEL_14:
    v32 = v39;

    sub_26630128C(v35, v16, v19, v38, v32, v22, v24);
  }

  v22 = sub_2664E0328();
  v24 = v23;

  if (v19 | v24)
  {
    goto LABEL_14;
  }

LABEL_10:
  v25 = v36;
  v34(v36, v11, v5);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06C8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem there is no media item title to match with.", v28, 2u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v15(v25, v5);
  v29 = sub_2664DFC48();
  v30 = v37;
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  v38(v30);
  return sub_2662A9238(v30, &qword_280072858, &qword_2664E4E40);
}

uint64_t sub_2662F687C(uint64_t a1, void *a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v142 = a7;
  v145 = a6;
  v136 = a5;
  v137 = a4;
  v147 = a2;
  v139 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  MEMORY[0x28223BE20](v8 - 8);
  v135 = v125 - v9;
  v10 = sub_2664DFC48();
  isa = v10[-1].isa;
  v11 = MEMORY[0x28223BE20](v10);
  v128 = v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v144 = v125 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v129 = v125 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v130 = v125 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v125 - v19;
  v21 = sub_2664DFE38();
  v140 = *(v21 - 8);
  v141 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v134 = v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v132 = v125 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v133 = v125 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v131 = v125 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = v125 - v30;
  v146 = v10;
  v143 = a3;
  if (a3)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = v141;
    v33 = __swift_project_value_buffer(v141, qword_280F914F0);
    swift_beginAccess();
    v34 = v140;
    v35 = v140 + 16;
    v125[0] = *(v140 + 16);
    (v125[0])(v31, v33, v32);
    v36 = v143;

    v37 = sub_2664DFE18();
    v38 = sub_2664E06C8();

    v39 = os_log_type_enabled(v37, v38);
    v126 = v33;
    v125[1] = v35;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v148[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_2662A320C(v147, v36, v148);
      _os_log_impl(&dword_26629C000, v37, v38, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem search in results matching title: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266784AD0](v41, -1, -1);
      v42 = v40;
      v10 = v146;
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v127 = *(v34 + 8);
    v127(v31, v32);
    v43 = *(v139 + 16);
    if (v43)
    {
      v44 = *(isa + 2);
      v45 = v139 + ((*(isa + 80) + 32) & ~*(isa + 80));
      v46 = (isa + 8);
      v47 = *(isa + 9);
      v44(v20, v45, v10);
      while (1)
      {
        sub_2664DFC28();
        if (v49)
        {
          v50 = sub_2664E0328();
          v52 = v51;

          if (v50 == v147 && v52 == v143)
          {

            v10 = v146;
LABEL_15:
            v53 = v131;
            v54 = v141;
            (v125[0])(v131, v126, v141);
            v55 = v130;
            v44(v130, v20, v10);
            v56 = sub_2664DFE18();
            v57 = sub_2664E06C8();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v146 = v56;
              v59 = v58;
              v147 = swift_slowAlloc();
              v148[0] = v147;
              *v59 = 136315138;
              LODWORD(v145) = v57;
              v44(v129, v55, v10);
              v144 = sub_2664E0318();
              v61 = v60;
              v62 = *v46;
              v63 = v10;
              (*v46)(v55, v10);
              v64 = v62;
              v65 = sub_2662A320C(v144, v61, v148);

              v66 = v59;
              *(v59 + 4) = v65;
              v67 = v146;
              _os_log_impl(&dword_26629C000, v146, v145, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem returning on-screen media item: %s.", v66, 0xCu);
              v68 = v147;
              __swift_destroy_boxed_opaque_existential_1Tm(v147);
              MEMORY[0x266784AD0](v68, -1, -1);
              MEMORY[0x266784AD0](v66, -1, -1);

              v69 = v141;
              v70 = v131;
            }

            else
            {

              v120 = *v46;
              v63 = v10;
              (*v46)(v55, v10);
              v64 = v120;
              v70 = v53;
              v69 = v54;
            }

            v127(v70, v69);
            v121 = v135;
            v44(v135, v20, v63);
            (*(isa + 7))(v121, 0, 1, v63);
            v137(v121);
            sub_2662A9238(v121, &qword_280072858, &qword_2664E4E40);
            return v64(v20, v63);
          }

          v48 = sub_2664E0D88();

          v10 = v146;
          if (v48)
          {
            goto LABEL_15;
          }
        }

        (*v46)(v20, v10);
        v45 += v47;
        if (!--v43)
        {
          break;
        }

        v44(v20, v45, v10);
      }
    }
  }

  v71 = v144;
  if (!v142)
  {
    goto LABEL_33;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v72 = v141;
  v73 = __swift_project_value_buffer(v141, qword_280F914F0);
  swift_beginAccess();
  v74 = v140;
  v75 = *(v140 + 16);
  v76 = v133;
  v143 = v73;
  v131 = v75;
  (v75)(v133, v73, v72);
  v77 = v142;

  v78 = sub_2664DFE18();
  v79 = sub_2664E06C8();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v148[0] = v81;
    *v80 = 136315138;
    *(v80 + 4) = sub_2662A320C(v145, v77, v148);
    _os_log_impl(&dword_26629C000, v78, v79, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem search in results matching artist: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    v82 = v81;
    v10 = v146;
    MEMORY[0x266784AD0](v82, -1, -1);
    v83 = v80;
    v71 = v144;
    MEMORY[0x266784AD0](v83, -1, -1);
  }

  v147 = *(v74 + 8);
  (v147)(v76, v72);
  v84 = *(v139 + 16);
  if (!v84)
  {
LABEL_33:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v110 = v141;
    v111 = __swift_project_value_buffer(v141, qword_280F914F0);
    swift_beginAccess();
    v112 = v140;
    v113 = v134;
    (*(v140 + 16))(v134, v111, v110);
    v114 = sub_2664DFE18();
    v115 = sub_2664E06C8();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_26629C000, v114, v115, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem media item not found.", v116, 2u);
      v117 = v116;
      v10 = v146;
      MEMORY[0x266784AD0](v117, -1, -1);
    }

    (*(v112 + 8))(v113, v110);
    v118 = v135;
    (*(isa + 7))(v135, 1, 1, v10);
    v137(v118);
    return sub_2662A9238(v118, &qword_280072858, &qword_2664E4E40);
  }

  v85 = *(isa + 2);
  v86 = v139 + ((*(isa + 80) + 32) & ~*(isa + 80));
  v87 = (isa + 8);
  v88 = *(isa + 9);
  v85(v71, v86, v10);
  while (1)
  {
    sub_2664DFC38();
    if (!v91)
    {
      goto LABEL_25;
    }

    v92 = sub_2664E0328();
    v94 = v93;

    if (v92 == v145 && v94 == v142)
    {
      break;
    }

    v89 = sub_2664E0D88();

    v10 = v146;
    if (v89)
    {
      goto LABEL_31;
    }

LABEL_25:
    v90 = v144;
    (*v87)(v144, v10);
    v86 += v88;
    if (!--v84)
    {
      goto LABEL_33;
    }

    v85(v90, v86, v10);
  }

  v10 = v146;
LABEL_31:
  v95 = v141;
  (v131)(v132, v143, v141);
  v96 = v128;
  v85(v128, v144, v10);
  v97 = sub_2664DFE18();
  v98 = v10;
  v99 = sub_2664E06C8();
  if (os_log_type_enabled(v97, v99))
  {
    v100 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v148[0] = v146;
    *v100 = 136315138;
    v85(v129, v96, v98);
    v101 = sub_2664E0318();
    v102 = v96;
    v145 = v101;
    v104 = v103;
    v105 = *v87;
    (*v87)(v102, v98);
    v106 = sub_2662A320C(v145, v104, v148);

    *(v100 + 4) = v106;
    _os_log_impl(&dword_26629C000, v97, v99, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem returning on-screen media item: %s.", v100, 0xCu);
    v107 = v146;
    __swift_destroy_boxed_opaque_existential_1Tm(v146);
    MEMORY[0x266784AD0](v107, -1, -1);
    MEMORY[0x266784AD0](v100, -1, -1);

    v108 = v141;
    v109 = v132;
  }

  else
  {

    v122 = *v87;
    (*v87)(v96, v98);
    v105 = v122;
    v109 = v132;
    v108 = v95;
  }

  (v147)(v109, v108);
  v123 = v135;
  v124 = v144;
  v85(v135, v144, v98);
  (*(isa + 7))(v123, 0, 1, v98);
  v137(v123);
  sub_2662A9238(v123, &qword_280072858, &qword_2664E4E40);
  return (v105)(v124, v98);
}

void OnscreenEntityProvider.onscreenMediaItems(completion:)(void (*a1)(void), uint64_t a2)
{
  v146 = a2;
  v147 = a1;
  v2 = sub_2664DFE68();
  v3 = *(v2 - 8);
  v170 = v2;
  v171 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v169 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v168 = (&v138 - v6);
  v159 = sub_2664DFF28();
  v161 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_2664DFE88();
  v8 = *(v160 - 8);
  v9 = MEMORY[0x28223BE20](v160);
  v157 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v164 = &v138 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v156 = &v138 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v154 = (&v138 - v16);
  MEMORY[0x28223BE20](v15);
  v163 = (&v138 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  MEMORY[0x28223BE20](v18);
  v20 = &v138 - v19;
  v21 = sub_2664DFF38();
  v22 = *(v21 - 8);
  v165 = v21;
  v166 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v162 = (&v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v167 = &v138 - v25;
  v26 = sub_2664DFE38();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v139 = &v138 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v151 = (&v138 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v150 = &v138 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v152 = (&v138 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v153 = &v138 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v138 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v138 - v44;
  sub_2664DF148();
  swift_allocObject();
  sub_2664DF138();
  v46 = MEMORY[0x266782230]();

  v148 = v46;
  if (v46)
  {
    if (qword_280F914E8 != -1)
    {
      goto LABEL_59;
    }

    while (1)
    {
      v47 = __swift_project_value_buffer(v26, qword_280F914F0);
      swift_beginAccess();
      v48 = *(v27 + 2);
      v142 = v47;
      v141 = v27 + 16;
      v140 = v48;
      v48(v45, v47, v26);
      v49 = sub_2664DFE18();
      v50 = sub_2664E06C8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_26629C000, v49, v50, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v51, 2u);
        MEMORY[0x266784AD0](v51, -1, -1);
      }

      v52 = *(v27 + 1);
      v144 = v27 + 8;
      v143 = v52;
      v52(v45, v26);
      v173 = MEMORY[0x277D84F90];
      __swift_project_boxed_opaque_existential_1(v145, v145[3]);
      sub_2664DFEA8();
      swift_allocObject();

      sub_2664DFE98();
      sub_2664DFCF8();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v172 = *v20;
        v53 = v172;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
        swift_willThrowTypedImpl();
        v140(v43, v142, v26);
        v54 = v53;
        v55 = sub_2664DFE18();
        v56 = sub_2664E06D8();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v172 = v58;
          *v57 = 136315138;
          swift_getErrorValue();
          v59 = sub_2664E0DE8();
          v61 = sub_2662A320C(v59, v60, &v172);

          *(v57 + 4) = v61;
          _os_log_impl(&dword_26629C000, v55, v56, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          MEMORY[0x266784AD0](v58, -1, -1);
          MEMORY[0x266784AD0](v57, -1, -1);
        }

        v143(v43, v26);
        v147(MEMORY[0x277D84F90]);

        return;
      }

      v68 = v166;
      v69 = v167;
      v27 = v165;
      (*(v166 + 32))(v167, v20, v165);
      v70 = v162;
      (*(v68 + 16))(v162, v69, v27);
      v71 = (*(v68 + 88))(v70, v27);
      v72 = v71 == *MEMORY[0x277D5FEC0];
      v138 = v26;
      v155 = v8;
      if (v72)
      {
        (*(v68 + 96))(v70, v27);
        v73 = *(v8 + 32);
        v74 = v163;
        v75 = v70;
        v76 = v160;
        v162 = (v8 + 32);
        v152 = v73;
        v73(v163, v75, v160);
        v77 = v153;
        v140(v153, v142, v26);
        v78 = v154;
        v151 = *(v8 + 16);
        v151(v154, v74, v76);
        v79 = sub_2664DFE18();
        v80 = sub_2664E06C8();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v172 = v82;
          *v81 = 136315138;
          sub_2663029EC();
          v83 = sub_2664E0D48();
          v84 = v78;
          v86 = v85;
          v43 = *(v8 + 8);
          (v43)(v84, v160);
          v87 = sub_2662A320C(v83, v86, &v172);

          *(v81 + 4) = v87;
          _os_log_impl(&dword_26629C000, v79, v80, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v82);
          v88 = v82;
          v27 = v165;
          MEMORY[0x266784AD0](v88, -1, -1);
          v89 = v81;
          v76 = v160;
          MEMORY[0x266784AD0](v89, -1, -1);
        }

        else
        {

          v43 = *(v8 + 8);
          (v43)(v78, v76);
        }

        v143(v77, v26);
        v98 = v156;
        v99 = v163;
        v151(v156, v163, v76);
        v100 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
        v102 = *(v100 + 2);
        v101 = *(v100 + 3);
        if (v102 >= v101 >> 1)
        {
          v100 = sub_266384A74((v101 > 1), v102 + 1, 1, v100);
        }

        v8 = v155;
        v103 = v99;
        v104 = v160;
        (v43)(v103, v160);
        (*(v166 + 8))(v167, v27);
        *(v100 + 2) = v102 + 1;
        v105 = &v100[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v102];
        v45 = v104;
        v152(v105, v98, v104);
        v173 = v100;
      }

      else
      {
        if (v71 == *MEMORY[0x277D5FED0])
        {
          (*(v68 + 96))(v70, v27);
          v90 = *v70;
          v43 = v152;
          v140(v152, v142, v26);

          v91 = sub_2664DFE18();
          v92 = sub_2664E06C8();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v172 = v94;
            *v93 = 136315138;
            v95 = MEMORY[0x2667834D0](v90, v160);
            v97 = sub_2662A320C(v95, v96, &v172);
            v27 = v165;

            *(v93 + 4) = v97;
            v68 = v166;
            _os_log_impl(&dword_26629C000, v91, v92, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v93, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v94);
            MEMORY[0x266784AD0](v94, -1, -1);
            MEMORY[0x266784AD0](v93, -1, -1);
          }

          v143(v43, v26);
          sub_2662FA148(v90, sub_266384A74, MEMORY[0x277D5FE08]);
          (*(v68 + 8))(v167, v27);
        }

        else if (v71 == *MEMORY[0x277D5FEC8] || v71 == *MEMORY[0x277D5FED8] || v71 != *MEMORY[0x277D5FEE0])
        {
          v110 = *(v68 + 8);
          v110(v70, v27);
          v111 = v151;
          v140(v151, v142, v26);
          v43 = (v68 + 8);
          v112 = sub_2664DFE18();
          v113 = sub_2664E06D8();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            *v114 = 0;
            _os_log_impl(&dword_26629C000, v112, v113, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v114, 2u);
            MEMORY[0x266784AD0](v114, -1, -1);
          }

          v143(v111, v26);
          v110(v167, v27);
        }

        else
        {
          v106 = v150;
          v140(v150, v142, v26);
          v107 = sub_2664DFE18();
          v108 = sub_2664E06C8();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            *v109 = 0;
            _os_log_impl(&dword_26629C000, v107, v108, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v109, 2u);
            MEMORY[0x266784AD0](v109, -1, -1);
          }

          v143(v106, v26);
          (*(v166 + 8))(v167, v27);
        }

        v45 = v160;
      }

      v115 = v173;
      v154 = *(v173 + 2);
      if (!v154)
      {
        break;
      }

      v20 = 0;
      v153 = (v8 + 16);
      v152 = (v161 + 8);
      v167 = (v171 + 16);
      LODWORD(v166) = *MEMORY[0x277D5FE90];
      v116 = *MEMORY[0x277D5FDF0];
      v165 = v171 + 104;
      v26 = v171 + 8;
      v150 = (v8 + 32);
      v149 = (v8 + 8);
      v156 = MEMORY[0x277D84F90];
      v151 = v173;
      while (v20 < *(v115 + 2))
      {
        v162 = ((*(v8 + 80) + 32) & ~*(v8 + 80));
        v161 = *(v8 + 72);
        (*(v8 + 16))(v164, v162 + v115 + v161 * v20++, v45);
        v163 = v20;
        v45 = v158;
        sub_2664DFE78();
        v117 = sub_2664DFF08();
        (*v152)(v45, v159);
        v8 = 0;
        v118 = *(v117 + 16);
        do
        {
          if (v118 == v8)
          {
            v45 = v160;
            (*v149)(v164, v160);

            goto LABEL_39;
          }

          if (v8 >= *(v117 + 16))
          {
            __break(1u);
            goto LABEL_58;
          }

          v45 = v170;
          v119 = v171;
          v20 = v168;
          (*(v171 + 16))(v168, v117 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v8++, v170);
          v120 = sub_2664DFEB8();
          v27 = v169;
          (*(*(v120 - 8) + 104))(v169, v166, v120);
          (*(v119 + 104))(v27, v116, v45);
          v121 = sub_2664DFE58();
          v43 = *(v119 + 8);
          (v43)(v27, v45);
          (v43)(v20, v45);
        }

        while ((v121 & 1) == 0);

        v122 = *v150;
        v45 = v160;
        (*v150)(v157, v164, v160);
        v123 = v156;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v172 = v123;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FD058(0, *(v123 + 16) + 1, 1);
          v123 = v172;
        }

        v125 = v162;
        v127 = *(v123 + 16);
        v126 = *(v123 + 24);
        if (v127 >= v126 >> 1)
        {
          sub_2662FD058((v126 > 1), v127 + 1, 1);
          v123 = v172;
        }

        *(v123 + 16) = v127 + 1;
        v156 = v123;
        v122(v125 + v123 + v127 * v161, v157, v45);
LABEL_39:
        v20 = v163;
        v8 = v155;
        v115 = v151;
        if (v163 == v154)
        {
          goto LABEL_51;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
    }

    v156 = MEMORY[0x277D84F90];
LABEL_51:

    v128 = v156;
    if (*(v156 + 2))
    {
      v129 = v145[8];
      v130 = v145[9];
      __swift_project_boxed_opaque_existential_1(v145 + 5, v129);
      (*(v130 + 8))(v128, v147, v146, v129, v130);
    }

    else
    {

      v131 = v139;
      v132 = v138;
      v140(v139, v142, v138);
      v133 = sub_2664DFE18();
      v134 = sub_2664E06C8();
      v135 = os_log_type_enabled(v133, v134);
      v136 = v147;
      if (v135)
      {
        v137 = swift_slowAlloc();
        *v137 = 0;
        _os_log_impl(&dword_26629C000, v133, v134, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v137, 2u);
        MEMORY[0x266784AD0](v137, -1, -1);
      }

      v143(v131, v132);
      v136(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v26, qword_280F914F0);
    swift_beginAccess();
    (*(v27 + 2))(v30, v62, v26);
    v63 = sub_2664DFE18();
    v64 = sub_2664E06D8();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v147;
    if (v65)
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v63, v64, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v67, 2u);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    (*(v27 + 1))(v30, v26);
    v66(MEMORY[0x277D84F90]);
  }
}

uint64_t OnscreenEntityProvider.firstOnScreenMediaItem(completion:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "OnscreenEntityProvider#firstOnScreenMediaItem...", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);

  sub_2663047E4(v3, a1, a2);
}

uint64_t sub_2662F8E50(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v64 = a3;
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v55 - v5;
  v7 = sub_2664DFE38();
  v66 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v13 = sub_2664DFC48();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v22 = &v55 - v20;
  if (*(a1 + 16))
  {
    v62 = v21;
    v63 = v6;
    v23 = *(v21 + 16);
    v23(&v55 - v20, a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v13);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v25 = v66;
    (*(v66 + 16))(v10, v24, v7);
    v23(v19, v22, v13);
    v61 = v7;
    v26 = v23;
    v27 = sub_2664DFE18();
    v28 = sub_2664E06C8();
    v29 = os_log_type_enabled(v27, v28);
    v60 = v26;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v57 = v27;
      v31 = v13;
      v32 = v30;
      v58 = swift_slowAlloc();
      v67 = v58;
      *v32 = 136315138;
      v26(v16, v19, v31);
      v33 = sub_2664E0318();
      v59 = v10;
      v35 = v34;
      v36 = v62;
      v37 = *(v62 + 8);
      v55 = v33;
      v56 = v37;
      v37(v19, v31);
      v38 = sub_2662A320C(v55, v35, &v67);

      v39 = v32;
      v13 = v31;
      *(v39 + 1) = v38;
      v40 = v28;
      v41 = v57;
      v42 = v39;
      _os_log_impl(&dword_26629C000, v57, v40, "OnscreenEntityProvider#firstOnScreenMediaItem returning on-screen media item: %s).", v39, 0xCu);
      v43 = v58;
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);

      v44 = v56;
      (*(v25 + 8))(v59, v61);
    }

    else
    {

      v36 = v62;
      v44 = *(v62 + 8);
      v44(v19, v13);
      (*(v25 + 8))(v10, v61);
    }

    v54 = v63;
    v60(v63, v22, v13);
    (*(v36 + 56))(v54, 0, 1, v13);
    v65(v54);
    sub_2662A9238(v54, &qword_280072858, &qword_2664E4E40);
    return (v44)(v22, v13);
  }

  else
  {
    v45 = v21;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v47 = v66;
    v48 = v7;
    (*(v66 + 16))(v12, v46, v7);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06C8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, "OnscreenEntityProvider#firstOnScreenMediaItem media item not found.", v51, 2u);
      v52 = v51;
      v47 = v66;
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    (*(v47 + 8))(v12, v48);
    (*(v45 + 56))(v6, 1, 1, v13);
    v65(v6);
    return sub_2662A9238(v6, &qword_280072858, &qword_2664E4E40);
  }
}

uint64_t OnscreenEntityProvider.onScreenMediaItem(at:completion:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a1;
    _os_log_impl(&dword_26629C000, v13, v14, "OnscreenEntityProvider#onScreenMediaItemAtIndex at index: %ld", v15, 0xCu);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);

  sub_266307C70(v4, a1, a2, a3);
}

uint64_t sub_2662F9658(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v63 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v52 - v8;
  v9 = sub_2664DFE38();
  v61 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  v15 = sub_2664DFC48();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v52 - v20;
  result = MEMORY[0x28223BE20](v19);
  v25 = &v52 - v23;
  v26 = *(a1 + 16);
  v27 = a2;
  if (a2 < 0)
  {
    v27 = -a2;
    if (__OFSUB__(0, a2))
    {
      __break(1u);
      return result;
    }
  }

  if (v27 < v26)
  {
    if (a2 < 0 || v26 <= a2)
    {
      __break(1u);
    }

    else
    {
      v59 = v24;
      v60 = a4;
      v12 = *(v24 + 16);
      (v12)(&v52 - v23, a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * a2, v15);
      if (qword_280F914E8 == -1)
      {
LABEL_7:
        v28 = __swift_project_value_buffer(v9, qword_280F914F0);
        swift_beginAccess();
        v29 = v61;
        (*(v61 + 16))(v14, v28, v9);
        (v12)(v21, v25, v15);
        v58 = v9;
        v30 = sub_2664DFE18();
        v31 = sub_2664E06C8();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v57 = v12;
          v33 = v32;
          v54 = v32;
          v55 = swift_slowAlloc();
          v64 = v55;
          *v33 = 136315138;
          (v57)(v18, v21, v15);
          v52 = sub_2664E0318();
          v56 = v14;
          v35 = v34;
          v53 = v31;
          v36 = v59;
          v37 = *(v59 + 8);
          v37(v21, v15);
          v38 = sub_2662A320C(v52, v35, &v64);

          v39 = v54;
          *(v54 + 4) = v38;
          v40 = v37;
          _os_log_impl(&dword_26629C000, v30, v53, "OnscreenEntityProvider#onScreenMediaItemAtIndex returning on-screen media item: %s).", v39, 0xCu);
          v41 = v55;
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          MEMORY[0x266784AD0](v41, -1, -1);
          v12 = v57;
          MEMORY[0x266784AD0](v39, -1, -1);

          (*(v29 + 8))(v56, v58);
        }

        else
        {

          v36 = v59;
          v50 = v21;
          v40 = *(v59 + 8);
          v40(v50, v15);
          (*(v29 + 8))(v14, v58);
        }

        v51 = v62;
        (v12)(v62, v25, v15);
        (*(v36 + 56))(v51, 0, 1, v15);
        v63(v51);
        sub_2662A9238(v51, &qword_280072858, &qword_2664E4E40);
        return (v40)(v25, v15);
      }
    }

    swift_once();
    goto LABEL_7;
  }

  v42 = v24;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v44 = v61;
  v45 = v9;
  (*(v61 + 16))(v12, v43, v9);
  v46 = sub_2664DFE18();
  v47 = sub_2664E06C8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_26629C000, v46, v47, "OnscreenEntityProvider#onScreenMediaItemAtIndex index seems to be out of bound.", v48, 2u);
    MEMORY[0x266784AD0](v48, -1, -1);
  }

  (*(v44 + 8))(v12, v45);
  v49 = v62;
  (*(v42 + 56))(v62, 1, 1, v15);
  v63(v49);
  return sub_2662A9238(v49, &qword_280072858, &qword_2664E4E40);
}

uint64_t sub_2662F9CB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2663846F4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2662F9DA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2664E0A68();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2664E0A68();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2662FE5D4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2662FE674(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_2662F9E94(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_266385394(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_26640D17C(v38, &v3[8 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 64) >> 6;
LABEL_27:
  v24 = *(result[6] + 8 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = result;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = sub_266385394((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  result = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(result[6] + ((v16 << 9) | (8 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_2662B793C(result);
  *v1 = v3;
  return result;
}

uint64_t sub_2662FA148(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::String_optional __swiftcall OnscreenEntityProvider.retrieveOnScreenApp()()
{
  v0 = sub_2664DFE68();
  v194 = *(v0 - 1);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (&v160 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v1);
  v192 = &v160 - v4;
  v179 = sub_2664DFF28();
  v166 = *(v179 - 8);
  v5 = MEMORY[0x28223BE20](v179);
  v163 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v178 = &v160 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072870, &qword_2664E4E58);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v165 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v164 = &v160 - v11;
  v180 = sub_2664DFE88();
  v181 = *(v180 - 8);
  v12 = MEMORY[0x28223BE20](v180);
  v162 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v184 = &v160 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v188 = &v160 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v189 = &v160 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v187 = &v160 - v21;
  MEMORY[0x28223BE20](v20);
  v193 = &v160 - v22;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  MEMORY[0x28223BE20](v197);
  v24 = &v160 - v23;
  v25 = sub_2664DFF38();
  v26 = *(v25 - 8);
  v195 = v25;
  v196 = v26;
  v27 = MEMORY[0x28223BE20](v25);
  v191 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v199 = &v160 - v29;
  v30 = sub_2664DFE38();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v161 = &v160 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v185 = &v160 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v183 = &v160 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v186 = (&v160 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v190 = &v160 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v160 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v160 - v48;
  sub_2664DF238();
  swift_allocObject();
  sub_2664DF228();
  v50 = MEMORY[0x266782230]();

  v173 = v50;
  if (v50)
  {
    v182 = v3;
    if (qword_280F914E8 != -1)
    {
      goto LABEL_68;
    }

    while (1)
    {
      v51 = __swift_project_value_buffer(v30, qword_280F914F0);
      swift_beginAccess();
      v52 = *(v31 + 2);
      v169 = v51;
      v168 = v31 + 16;
      v167 = v52;
      v52(v49, v51, v30);
      v53 = sub_2664DFE18();
      v54 = sub_2664E06C8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_26629C000, v53, v54, "OnscreenAppProvider#retrieveOnScreenApp Checking for Onscreen App", v55, 2u);
        MEMORY[0x266784AD0](v55, -1, -1);
      }

      v56 = *(v31 + 1);
      v171 = v31 + 8;
      v170 = v56;
      v56(v49, v30);
      v201 = MEMORY[0x277D84F90];
      __swift_project_boxed_opaque_existential_1(v198, v198[3]);
      sub_2664DFEA8();
      swift_allocObject();

      sub_2664DFE98();
      sub_2664DFCF8();

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v200 = *v24;
        v57 = v200;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
        swift_willThrowTypedImpl();
        v167(v47, v169, v30);
        v58 = v57;
        v59 = sub_2664DFE18();
        v60 = sub_2664E06D8();

        v61 = v30;
        if (os_log_type_enabled(v59, v60))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v200 = v63;
          *v62 = 136315138;
          swift_getErrorValue();
          v64 = sub_2664E0DE8();
          v66 = sub_2662A320C(v64, v65, &v200);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_26629C000, v59, v60, "OnscreenAppProvider#retrieveOnScreenApp reference resolution failed with error: %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x266784AD0](v63, -1, -1);
          MEMORY[0x266784AD0](v62, -1, -1);
        }

        else
        {
        }

        v170(v47, v61);
        goto LABEL_64;
      }

      v160 = v30;
      v47 = v195;
      v71 = v196;
      v72 = v199;
      (*(v196 + 32))(v199, v24, v195);
      v73 = v191;
      (*(v71 + 16))(v191, v72, v47);
      v74 = (*(v71 + 88))(v73, v47);
      if (v74 == *MEMORY[0x277D5FEC0])
      {
        v198 = v0;
        (*(v71 + 96))(v73, v47);
        v75 = v181;
        v76 = *(v181 + 32);
        v77 = v193;
        v78 = v180;
        v197 = v181 + 32;
        v191 = v76;
        (v76)(v193, v73, v180);
        v79 = v190;
        v80 = v160;
        v167(v190, v169, v160);
        v81 = *(v75 + 16);
        v82 = v187;
        v81(v187, v77, v78);
        v83 = sub_2664DFE18();
        v84 = sub_2664E06C8();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v186 = v81;
          v86 = v85;
          v87 = swift_slowAlloc();
          v200 = v87;
          *v86 = 136315138;
          sub_2663029EC();
          v88 = sub_2664E0D48();
          v89 = v82;
          v91 = v90;
          v187 = *(v75 + 8);
          (v187)(v89, v78);
          v92 = sub_2662A320C(v88, v91, &v200);

          *(v86 + 4) = v92;
          _os_log_impl(&dword_26629C000, v83, v84, "OnscreenAppProvider#retrieveOnScreenApp found match: %s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v87);
          MEMORY[0x266784AD0](v87, -1, -1);
          v93 = v86;
          v81 = v186;
          MEMORY[0x266784AD0](v93, -1, -1);

          v94 = v190;
        }

        else
        {

          v187 = *(v75 + 8);
          (v187)(v82, v78);
          v94 = v79;
        }

        v170(v94, v80);
        v96 = v182;
        v31 = v192;
        v47 = v189;
        v81(v189, v193, v78);
        v109 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
        v111 = v109[2];
        v110 = v109[3];
        v30 = v78;
        v112 = v195;
        if (v111 >= v110 >> 1)
        {
          v109 = sub_266384A74((v110 > 1), v111 + 1, 1, v109);
        }

        v0 = v198;
        v24 = v181;
        (v187)(v193, v30);
        (*(v196 + 8))(v199, v112);
        v109[2] = v111 + 1;
        v113 = v24;
        (v191)(v109 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v111, v47, v30);
        v201 = v109;
      }

      else
      {
        v95 = v160;
        v96 = v182;
        if (v74 == *MEMORY[0x277D5FED0])
        {
          (*(v71 + 96))(v73, v47);
          v97 = *v73;
          v98 = v186;
          v167(v186, v169, v95);

          v99 = sub_2664DFE18();
          v24 = sub_2664E06C8();

          if (os_log_type_enabled(v99, v24))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v200 = v101;
            *v100 = 136315138;
            v30 = v180;
            v102 = MEMORY[0x2667834D0](v97, v180);
            v104 = sub_2662A320C(v102, v103, &v200);
            v198 = v97;
            v105 = v98;
            v106 = v104;
            v96 = v182;

            *(v100 + 4) = v106;
            _os_log_impl(&dword_26629C000, v99, v24, "OnscreenAppProvider#retrieveOnScreenApp found multiple matches: %s", v100, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v101);
            v107 = v101;
            v71 = v196;
            MEMORY[0x266784AD0](v107, -1, -1);
            MEMORY[0x266784AD0](v100, -1, -1);

            v108 = v105;
            v97 = v198;
            v170(v108, v160);
          }

          else
          {

            v170(v98, v95);
            v30 = v180;
          }

          v31 = v192;
          sub_2662FA148(v97, sub_266384A74, MEMORY[0x277D5FE08]);
          (*(v71 + 8))(v199, v47);
          v113 = v181;
        }

        else
        {
          if (v74 == *MEMORY[0x277D5FEC8] || v74 == *MEMORY[0x277D5FED8] || v74 != *MEMORY[0x277D5FEE0])
          {
            v117 = *(v71 + 8);
            v117(v73, v47);
            v24 = v185;
            v167(v185, v169, v95);
            v118 = sub_2664DFE18();
            v119 = sub_2664E06D8();
            if (os_log_type_enabled(v118, v119))
            {
              v24 = swift_slowAlloc();
              *v24 = 0;
              _os_log_impl(&dword_26629C000, v118, v119, "OnscreenAppProvider#retrieveOnScreenApp Unknown/unsupported result type", v24, 2u);
              MEMORY[0x266784AD0](v24, -1, -1);

              v120 = v185;
            }

            else
            {

              v120 = v24;
            }

            v170(v120, v95);
            v117(v199, v47);
          }

          else
          {
            v114 = v183;
            v167(v183, v169, v160);
            v115 = sub_2664DFE18();
            v116 = sub_2664E06C8();
            if (os_log_type_enabled(v115, v116))
            {
              v24 = swift_slowAlloc();
              *v24 = 0;
              _os_log_impl(&dword_26629C000, v115, v116, "OnscreenAppProvider#retrieveOnScreenApp No app on screen", v24, 2u);
              MEMORY[0x266784AD0](v24, -1, -1);
            }

            v170(v114, v95);
            (*(v71 + 8))(v199, v47);
          }

          v30 = v180;
          v113 = v181;
          v31 = v192;
        }
      }

      v121 = v201;
      v177 = v201[2];
      if (!v177)
      {
        break;
      }

      v122 = 0;
      v176 = v113 + 16;
      v175 = (v166 + 8);
      v193 = (v194 + 16);
      LODWORD(v192) = *MEMORY[0x277D5FE90];
      LODWORD(v195) = *MEMORY[0x277D5FDF0];
      v49 = (v194 + 104);
      v191 = (v194 + 8);
      LODWORD(v189) = *MEMORY[0x277D5FE78];
      v182 = (v113 + 32);
      v172 = (v113 + 8);
      v183 = MEMORY[0x277D84F90];
      v174 = v201;
      v190 = (v194 + 104);
      while (v122 < v121[2])
      {
        v186 = ((*(v113 + 80) + 32) & ~*(v113 + 80));
        v185 = *(v113 + 72);
        (*(v113 + 16))(v188, v186 + v121 + v185 * v122, v30);
        v187 = v122 + 1;
        v123 = v178;
        sub_2664DFE78();
        v124 = sub_2664DFF08();
        (*v175)(v123, v179);
        v125 = 0;
        v126 = *(v124 + 16);
        v196 = v124;
        v197 = v126;
        v127 = v195;
        while (1)
        {
          if (v197 == v125)
          {
            v30 = v180;
            (*v172)(v188, v180);

            v113 = v181;
            goto LABEL_41;
          }

          if (v125 >= *(v124 + 16))
          {
            __break(1u);
            goto LABEL_67;
          }

          v128 = v194;
          v129 = v124 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
          v130 = *(v194 + 72);
          v198 = v125;
          (*(v194 + 16))(v31, v129 + v130 * v125, v0);
          v131 = sub_2664DFEB8();
          v132 = *(*(v131 - 8) + 104);
          v132(v96, v192, v131);
          v133 = *(v128 + 104);
          v133(v96, v127, v0);
          LODWORD(v199) = sub_2664DFE58();
          v47 = *(v128 + 8);
          (v47)(v96, v0);
          if (v199)
          {
            break;
          }

          v134 = v198 + 1;
          v132(v96, v189, v131);
          v30 = v195;
          v135 = v190;
          v133(v96, v195, v0);
          v24 = sub_2664DFE58();
          (v47)(v96, v0);
          (v47)(v31, v0);
          v125 = v134;
          v127 = v30;
          v49 = v135;
          v124 = v196;
          if (v24)
          {

            goto LABEL_50;
          }
        }

        (v47)(v31, v0);
        v49 = v190;
LABEL_50:
        v136 = *v182;
        v30 = v180;
        (*v182)(v184, v188, v180);
        v137 = v183;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v200 = v137;
        if (isUniquelyReferenced_nonNull_native)
        {
          v113 = v181;
          v139 = v137;
        }

        else
        {
          sub_2662FD058(0, *(v137 + 16) + 1, 1);
          v139 = v200;
          v113 = v181;
        }

        v141 = *(v139 + 16);
        v140 = *(v139 + 24);
        v24 = v141 + 1;
        if (v141 >= v140 >> 1)
        {
          sub_2662FD058((v140 > 1), v141 + 1, 1);
          v113 = v181;
          v139 = v200;
        }

        *(v139 + 16) = v24;
        v183 = v139;
        v136(v186 + v139 + v141 * v185, v184, v30);
LABEL_41:
        v122 = v187;
        v121 = v174;
        if (v187 == v177)
        {
          goto LABEL_57;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      swift_once();
    }

    v183 = MEMORY[0x277D84F90];
LABEL_57:

    if (*(v183 + 2))
    {
      v142 = v164;
      (*(v113 + 16))(v164, &v183[(*(v113 + 80) + 32) & ~*(v113 + 80)], v30);
      v143 = 0;
      v144 = v160;
      v145 = v30;
    }

    else
    {
      v143 = 1;
      v144 = v160;
      v145 = v30;
      v142 = v164;
    }

    (*(v113 + 56))(v142, v143, 1, v145);
    v146 = v165;
    sub_2662A7224(v142, v165, &qword_280072870, &qword_2664E4E58);
    if ((*(v113 + 48))(v146, 1, v145) != 1)
    {
      v153 = v162;
      (*(v113 + 32))(v162, v146, v145);
      v154 = v163;
      v155 = v113;
      sub_2664DFE78();
      v156 = sub_2664DFEC8();
      v158 = v157;

      (*(v166 + 8))(v154, v179);
      (*(v155 + 8))(v153, v145);
      sub_2662A9238(v142, &qword_280072870, &qword_2664E4E58);
      v152 = v158;
      v151 = v156;
      goto LABEL_69;
    }

    sub_2662A9238(v146, &qword_280072870, &qword_2664E4E58);
    v147 = v161;
    v167(v161, v169, v144);
    v148 = sub_2664DFE18();
    v149 = sub_2664E06C8();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_26629C000, v148, v149, "OnscreenAppProvider#retrieveOnScreenApp foreground App not found", v150, 2u);
      MEMORY[0x266784AD0](v150, -1, -1);
    }

    v170(v147, v144);
    sub_2662A9238(v142, &qword_280072870, &qword_2664E4E58);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v67 = __swift_project_value_buffer(v30, qword_280F914F0);
    swift_beginAccess();
    (*(v31 + 2))(v34, v67, v30);
    v68 = sub_2664DFE18();
    v69 = sub_2664E06D8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26629C000, v68, v69, "OnscreenAppProvider#retrieveOnScreenApp failed to create App from builder", v70, 2u);
      MEMORY[0x266784AD0](v70, -1, -1);
    }

    (*(v31 + 1))(v34, v30);
  }

LABEL_64:
  v151 = 0;
  v152 = 0;
LABEL_69:
  result.value._object = v152;
  result.value._countAndFlagsBits = v151;
  return result;
}

uint64_t OnscreenEntityProvider.resolveSalientOnscreenMediaItem(from:using:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v66 = a2;
  v5 = sub_2664DFC48();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v63 - v9;
  v11 = sub_2664DFE38();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v63 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v63 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v63 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v63 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (CommonIntentSignals.hasDefiniteReferenceRequest()())
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = v71;
    v27 = __swift_project_value_buffer(v71, qword_280F914F0);
    swift_beginAccess();
    v28 = v70;
    (*(v70 + 16))(v25, v27, v26);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06B8();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v69;
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "OnscreenAppProvider#resolveSalientOnscreenMediaItem intent is definite reference for onscreen entity. Fetching first onscreen media item...", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v28 + 8))(v25, v26);

    sub_2663092DC(v67, v68, v32);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v72 = CommonIntentSignals.onscreenMediaItemListPosition()();
    if (v72.is_nil)
    {
      if (v66)
      {
        INMediaSearch.toAudioMediaItem()();
        v36 = v64;
        v35 = v65;
        (*(v64 + 32))(v10, v8, v65);
        v37 = v69;
        v38 = v70;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v39 = v71;
        v40 = __swift_project_value_buffer(v71, qword_280F914F0);
        swift_beginAccess();
        (*(v38 + 16))(v17, v40, v39);
        v41 = sub_2664DFE18();
        v42 = sub_2664E06B8();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_26629C000, v41, v42, "OnscreenAppProvider#resolveSalientOnscreenMediaItem looking for onscreen entity matching search...", v43, 2u);
          MEMORY[0x266784AD0](v43, -1, -1);
        }

        (*(v38 + 8))(v17, v39);

        sub_266300E6C(v10, v67, v68, v37);

        return (*(v36 + 8))(v10, v35);
      }

      else
      {
        v57 = v70;
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v58 = v71;
        v59 = __swift_project_value_buffer(v71, qword_280F914F0);
        swift_beginAccess();
        (*(v57 + 16))(v14, v59, v58);
        v60 = sub_2664DFE18();
        v61 = sub_2664E06E8();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_26629C000, v60, v61, "OnscreenAppProvider#resolveSalientOnscreenMediaItem no conditions met, returning nil", v62, 2u);
          MEMORY[0x266784AD0](v62, -1, -1);
        }

        (*(v57 + 8))(v14, v58);
        return v68(0);
      }
    }

    else
    {
      value = v72.value;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v45 = v71;
      v46 = __swift_project_value_buffer(v71, qword_280F914F0);
      swift_beginAccess();
      v47 = *(v70 + 16);
      v47(v23, v46, v45);
      v48 = sub_2664DFE18();
      v49 = sub_2664E06B8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 134217984;
        *(v50 + 4) = value;
        _os_log_impl(&dword_26629C000, v48, v49, "OnscreenAppProvider#resolveSalientOnscreenMediaItem onscreen media item list position was found: %ld", v50, 0xCu);
        MEMORY[0x266784AD0](v50, -1, -1);
      }

      v51 = v71;
      v52 = *(v70 + 8);
      v52(v23, v71);
      v47(v20, v46, v51);
      v53 = v69;
      swift_retain_n();
      v54 = sub_2664DFE18();
      v55 = sub_2664E06C8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 134217984;
        *(v56 + 4) = value;
        _os_log_impl(&dword_26629C000, v54, v55, "OnscreenEntityProvider#onScreenMediaItemAtIndex at index: %ld", v56, 0xCu);
        MEMORY[0x266784AD0](v56, -1, -1);
      }

      v52(v20, v71);
      sub_2663064A4(v67, value, value, v68, v53);
    }
  }
}

uint64_t sub_2662FC3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v54 = a4;
  v55 = a3;
  v53 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v52 = &v46[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46[-v12];
  v14 = sub_2664DFC48();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2662A7224(a1, v13, &qword_280072858, &qword_2664E4E40);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2662A9238(v13, &qword_280072858, &qword_2664E4E40);
LABEL_9:
    v39 = v5;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v9, v40, v5);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06B8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = v53;
      _os_log_impl(&dword_26629C000, v41, v42, "OnscreenAppProvider#resolveSalientOnscreenMediaItem no onscreen mediaItem found at: %ld", v43, 0xCu);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    (*(v6 + 8))(v9, v39);
    return v55(0);
  }

  (*(v15 + 32))(v17, v13, v14);
  v18 = _sSo11INMediaItemC16SiriAudioSupportE4from010audioMediaB0ABSg0cD11IntentUtils0dhB0V_tFZ_0(v17);
  if (!v18)
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_9;
  }

  v19 = v18;
  v20 = v5;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v22 = v52;
  (*(v6 + 16))(v52, v21, v20);
  v23 = v19;
  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v50 = v24;
    v27 = v26;
    v49 = swift_slowAlloc();
    v56 = v49;
    *v27 = 136315394;
    v28 = v23;
    v51 = v23;
    v29 = v28;
    v30 = v19;
    v31 = [v28 description];
    v32 = sub_2664E02C8();
    v48 = v20;
    v33 = v32;
    v47 = v25;
    v35 = v34;

    v23 = v51;
    v36 = sub_2662A320C(v33, v35, &v56);

    *(v27 + 4) = v36;
    v19 = v30;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v53;
    v37 = v50;
    _os_log_impl(&dword_26629C000, v50, v47, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem: %s at: %ld", v27, 0x16u);
    v38 = v49;
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266784AD0](v38, -1, -1);
    MEMORY[0x266784AD0](v27, -1, -1);

    (*(v6 + 8))(v52, v48);
  }

  else
  {

    (*(v6 + 8))(v22, v20);
  }

  v45 = v23;
  v55(v19);

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_2662FC988(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, const char *a4, char *a5)
{
  v56 = a4;
  v57 = a5;
  v59 = a3;
  v60 = a2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_2664DFC48();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662A7224(a1, v14, &qword_280072858, &qword_2664E4E40);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2662A9238(v14, &qword_280072858, &qword_2664E4E40);
LABEL_9:
    v44 = v6;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v45, v6);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06B8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v46, v47, v57, v48, 2u);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    (*(v7 + 8))(v10, v44);
    return v60(0);
  }

  (*(v16 + 32))(v18, v14, v15);
  v19 = _sSo11INMediaItemC16SiriAudioSupportE4from010audioMediaB0ABSg0cD11IntentUtils0dhB0V_tFZ_0(v18);
  if (!v19)
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_9;
  }

  v20 = v19;
  v21 = v6;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v23 = v58;
  (*(v7 + 16))(v58, v22, v21);
  v24 = v20;
  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v52 = v25;
    v28 = v27;
    v54 = swift_slowAlloc();
    v61 = v54;
    *v28 = 136315138;
    v29 = v24;
    v57 = v24;
    v30 = v29;
    v31 = [v29 description];
    v55 = v20;
    v32 = v31;
    v33 = sub_2664E02C8();
    v53 = v21;
    v34 = v33;
    v35 = v26;
    v37 = v36;

    v24 = v57;
    v38 = sub_2662A320C(v34, v37, &v61);

    v39 = v28;
    *(v28 + 4) = v38;
    v20 = v55;
    v40 = v35;
    v41 = v52;
    v42 = v39;
    _os_log_impl(&dword_26629C000, v52, v40, v56, v39, 0xCu);
    v43 = v54;
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v42, -1, -1);

    (*(v7 + 8))(v58, v53);
  }

  else
  {

    (*(v7 + 8))(v23, v21);
  }

  v50 = v24;
  v60(v20);

  return (*(v16 + 8))(v18, v15);
}

char *sub_2662FCF04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FD284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FCF24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FD3A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FCF44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FD4B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FCF64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FD5BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FCF84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FE1B4(a1, a2, a3, *v3, &unk_280073AA0, &unk_2664E4F40);
  *v3 = result;
  return result;
}

void *sub_2662FCFB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FD728(a1, a2, a3, *v3, &qword_2800728B0, &unk_2664F0500, &qword_2800728B8, &unk_2664E4F20);
  *v3 = result;
  return result;
}

void *sub_2662FCFF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FE3F8(a1, a2, a3, *v3, &qword_280072930, &unk_2664E4FB0, MEMORY[0x277D5BCE8]);
  *v3 = result;
  return result;
}

char *sub_2662FD038(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FD870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FD058(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FE3F8(a1, a2, a3, *v3, &qword_280072928, &qword_2664E4FA8, MEMORY[0x277D5FE08]);
  *v3 = result;
  return result;
}

void *sub_2662FD09C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FD980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FD0BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FDAB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FD0DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FDBB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FD0FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FDCEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FD11C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FE3F8(a1, a2, a3, *v3, &qword_280072920, &qword_2664E4FA0, type metadata accessor for SearchItem);
  *v3 = result;
  return result;
}

char *sub_2662FD160(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FE1B4(a1, a2, a3, *v3, &qword_280072548, &qword_2664E39B0);
  *v3 = result;
  return result;
}

void *sub_2662FD190(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FDDF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FD1B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FDF38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FD1D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FE06C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2662FD1F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FE1B4(a1, a2, a3, *v3, &qword_2800728F0, &qword_2664E4F60);
  *v3 = result;
  return result;
}

void *sub_2662FD220(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FE2B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2662FD240(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2662FE3F8(a1, a2, a3, *v3, &qword_280072908, &qword_2664E4F78, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

char *sub_2662FD284(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072940, &unk_2664E4FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2662FD3A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2662FD4B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072938, qword_2664EBFD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FD5BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072878, &qword_2664E4ED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072880, &unk_2664E4EE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FD728(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2662FD870(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C8, &qword_2664E4F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FD980(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728F8, &qword_2664E4F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072900, &qword_2664E4F70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2662FDAB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C0, &unk_2664EAA90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2662FDBB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072888, &qword_2664E4EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072890, &qword_2664E4EF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2662FDCEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072898, &qword_2664E4F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2662FDDF0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FDF38(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072910, &unk_2664E4F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FE06C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728A0, &qword_2664E4F08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728A8, &unk_2664E4F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2662FE1B4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_2662FE2B0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728E8, &unk_2664E4F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2662FE3F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2662FE5D4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2664E0A68();
LABEL_9:
  result = sub_2664E0B68();
  *v2 = result;
  return result;
}

uint64_t sub_2662FE674(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2664E0A68();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2664E0A68();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_266309518();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728D8, &qword_2664E4F38);
            v9 = sub_2663D13C0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2663094CC();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2662FE7F4(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t a7)
{
  v130 = a6;
  v131 = a7;
  v136 = a5;
  v139 = a4;
  v141 = a2;
  v133 = a1;
  v8 = sub_2664DFC48();
  v132 = *(v8 - 1);
  v9 = MEMORY[0x28223BE20](v8);
  v124 = v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v119 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v123 = v119 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v122 = v119 - v17;
  MEMORY[0x28223BE20](v16);
  v138 = v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  MEMORY[0x28223BE20](v19 - 8);
  v129 = v119 - v20;
  v21 = sub_2664DFE38();
  v134 = *(v21 - 8);
  v135 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v125 = v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v126 = v119 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v128 = v119 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v127 = v119 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = v119 - v30;
  v140 = v8;
  v137 = a3;
  if (a3)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = v135;
    v33 = __swift_project_value_buffer(v135, qword_280F914F0);
    swift_beginAccess();
    v34 = v134;
    v35 = v134 + 16;
    v119[0] = *(v134 + 16);
    (v119[0])(v31, v33, v32);
    v36 = v137;

    v37 = sub_2664DFE18();
    v38 = sub_2664E06C8();

    v39 = os_log_type_enabled(v37, v38);
    v120 = v33;
    v119[1] = v35;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v142[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_2662A320C(v141, v36, v142);
      _os_log_impl(&dword_26629C000, v37, v38, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem search in results matching title: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266784AD0](v41, -1, -1);
      v42 = v40;
      v8 = v140;
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v121 = *(v34 + 8);
    v121(v31, v32);
    v43 = *(v133 + 16);
    if (v43)
    {
      v44 = *(v132 + 16);
      v45 = v133 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
      v46 = (v132 + 8);
      v47 = *(v132 + 72);
      v44(v13, v45, v8);
      while (1)
      {
        sub_2664DFC28();
        if (v49)
        {
          v50 = sub_2664E0328();
          v52 = v51;

          if (v50 == v141 && v52 == v137)
          {

            v8 = v140;
LABEL_15:
            v53 = v125;
            (v119[0])(v125, v120, v135);
            v54 = v124;
            v44(v124, v13, v8);
            v55 = sub_2664DFE18();
            v56 = v8;
            v57 = sub_2664E06C8();
            if (os_log_type_enabled(v55, v57))
            {
              v58 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v142[0] = v141;
              *v58 = 136315138;
              v44(v123, v54, v56);
              v139 = sub_2664E0318();
              v59 = v54;
              v61 = v60;
              LODWORD(v140) = v57;
              v62 = *v46;
              (*v46)(v59, v56);
              v63 = sub_2662A320C(v139, v61, v142);

              *(v58 + 4) = v63;
              _os_log_impl(&dword_26629C000, v55, v140, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem returning on-screen media item: %s.", v58, 0xCu);
              v64 = v141;
              __swift_destroy_boxed_opaque_existential_1Tm(v141);
              MEMORY[0x266784AD0](v64, -1, -1);
              MEMORY[0x266784AD0](v58, -1, -1);

              v65 = v125;
            }

            else
            {

              v62 = *v46;
              (*v46)(v54, v56);
              v65 = v53;
            }

            v121(v65, v135);
            v116 = v129;
            v44(v129, v13, v56);
            (*(v132 + 56))(v116, 0, 1, v56);
            sub_2662FC988(v116, v130, v131, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem matching request: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no matching onscreen mediaItem found.");
            sub_2662A9238(v116, &qword_280072858, &qword_2664E4E40);
            v117 = v13;
            return v62(v117, v56);
          }

          v48 = sub_2664E0D88();

          v8 = v140;
          if (v48)
          {
            goto LABEL_15;
          }
        }

        (*v46)(v13, v8);
        v45 += v47;
        if (!--v43)
        {
          break;
        }

        v44(v13, v45, v8);
      }
    }
  }

  v66 = v138;
  if (!v136)
  {
    goto LABEL_33;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v67 = v135;
  v68 = __swift_project_value_buffer(v135, qword_280F914F0);
  swift_beginAccess();
  v69 = v134;
  v70 = *(v134 + 16);
  v71 = v127;
  v137 = v68;
  v125 = v70;
  (v70)(v127, v68, v67);
  v72 = v136;

  v73 = sub_2664DFE18();
  v74 = sub_2664E06C8();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v142[0] = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_2662A320C(v139, v72, v142);
    _os_log_impl(&dword_26629C000, v73, v74, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem search in results matching artist: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    v77 = v76;
    v8 = v140;
    MEMORY[0x266784AD0](v77, -1, -1);
    v78 = v75;
    v66 = v138;
    MEMORY[0x266784AD0](v78, -1, -1);
  }

  v141 = *(v69 + 8);
  (v141)(v71, v67);
  v79 = *(v133 + 16);
  if (!v79)
  {
LABEL_33:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v106 = v135;
    v107 = __swift_project_value_buffer(v135, qword_280F914F0);
    swift_beginAccess();
    v108 = v134;
    v109 = v128;
    (*(v134 + 16))(v128, v107, v106);
    v110 = sub_2664DFE18();
    v111 = sub_2664E06C8();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_26629C000, v110, v111, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem media item not found.", v112, 2u);
      v113 = v112;
      v8 = v140;
      MEMORY[0x266784AD0](v113, -1, -1);
    }

    (*(v108 + 8))(v109, v106);
    v114 = v129;
    (*(v132 + 56))(v129, 1, 1, v8);
    sub_2662FC988(v114, v130, v131, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem matching request: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no matching onscreen mediaItem found.");
    return sub_2662A9238(v114, &qword_280072858, &qword_2664E4E40);
  }

  v80 = *(v132 + 16);
  v81 = v133 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
  v82 = (v132 + 8);
  v83 = *(v132 + 72);
  v80(v66, v81, v8);
  while (1)
  {
    sub_2664DFC38();
    if (!v86)
    {
      goto LABEL_25;
    }

    v87 = sub_2664E0328();
    v89 = v88;

    if (v87 == v139 && v89 == v136)
    {
      break;
    }

    v84 = sub_2664E0D88();

    v8 = v140;
    if (v84)
    {
      goto LABEL_31;
    }

LABEL_25:
    v85 = v138;
    (*v82)(v138, v8);
    v81 += v83;
    if (!--v79)
    {
      goto LABEL_33;
    }

    v80(v85, v81, v8);
  }

  v8 = v140;
LABEL_31:
  v90 = v135;
  (v125)(v126, v137, v135);
  v91 = v122;
  v92 = v138;
  v80(v122, v138, v8);
  v93 = sub_2664DFE18();
  v56 = v8;
  v94 = sub_2664E06C8();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v142[0] = v140;
    *v95 = 136315138;
    v80(v123, v91, v56);
    v96 = sub_2664E0318();
    v97 = v91;
    v98 = v96;
    v100 = v99;
    LODWORD(v139) = v94;
    v62 = *v82;
    (*v82)(v97, v56);
    v101 = sub_2662A320C(v98, v100, v142);

    *(v95 + 4) = v101;
    _os_log_impl(&dword_26629C000, v93, v139, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem returning on-screen media item: %s.", v95, 0xCu);
    v102 = v140;
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    MEMORY[0x266784AD0](v102, -1, -1);
    v103 = v95;
    v92 = v138;
    MEMORY[0x266784AD0](v103, -1, -1);

    v104 = v135;
    v105 = v126;
  }

  else
  {

    v62 = *v82;
    (*v82)(v91, v56);
    v105 = v126;
    v104 = v90;
  }

  (v141)(v105, v104);
  v118 = v129;
  v80(v129, v92, v56);
  (*(v132 + 56))(v118, 0, 1, v56);
  sub_2662FC988(v118, v130, v131, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem matching request: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no matching onscreen mediaItem found.");
  sub_2662A9238(v118, &qword_280072858, &qword_2664E4E40);
  v117 = v92;
  return v62(v117, v56);
}

uint64_t sub_2662FF5D8(void *a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *), uint64_t a7)
{
  v179 = a1;
  v13 = sub_2664DFE68();
  v14 = *(v13 - 8);
  v206 = v13;
  v207 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v205 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v204 = (&v166 - v17);
  v193 = sub_2664DFF28();
  v188 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_2664DFE88();
  v194 = *(v195 - 8);
  v19 = MEMORY[0x28223BE20](v195);
  v191 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v200 = &v166 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v189 = &v166 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v187 = &v166 - v26;
  MEMORY[0x28223BE20](v25);
  v201 = &v166 - v27;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  MEMORY[0x28223BE20](v203);
  v29 = (&v166 - v28);
  v202 = sub_2664DFF38();
  v198 = *(v202 - 8);
  v30 = MEMORY[0x28223BE20](v202);
  v190 = &v166 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v197 = &v166 - v32;
  v184 = sub_2664DFE38();
  v185 = *(v184 - 8);
  v33 = MEMORY[0x28223BE20](v184);
  v183 = (&v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v33);
  v171 = &v166 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v167 = &v166 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v186 = &v166 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v196 = &v166 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v199 = &v166 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v166 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v166 - v48;
  v50 = swift_allocObject();
  *(v50 + 16) = a6;
  *(v50 + 24) = a7;
  v51 = swift_allocObject();
  v177 = a2;
  v51[2] = a2;
  v51[3] = a3;
  v51[4] = sub_2663095C8;
  v51[5] = v50;
  v178 = a4;
  v51[6] = a4;
  v51[7] = a5;
  v181 = v51;
  sub_2664DF148();
  swift_allocObject();

  swift_retain_n();
  v180 = v50;

  sub_2664DF138();
  v52 = MEMORY[0x266782230]();

  v182 = v52;
  if (!v52)
  {
    v75 = a6;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v76 = v184;
    v77 = __swift_project_value_buffer(v184, qword_280F914F0);
    swift_beginAccess();
    (*(v185 + 16))(v47, v77, v76);
    v78 = sub_2664DFE18();
    v79 = sub_2664E06D8();
    v80 = os_log_type_enabled(v78, v79);
    v81 = v178;
    if (v80)
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_26629C000, v78, v79, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v82, 2u);
      MEMORY[0x266784AD0](v82, -1, -1);
    }

    (*(v185 + 8))(v47, v184);

    sub_2662FE7F4(MEMORY[0x277D84F90], v177, a3, v81, a5, v75, a7);
  }

  v169 = a5;
  v170 = a6;
  v172 = a3;
  v173 = a7;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v53 = v184;
    v54 = __swift_project_value_buffer(v184, qword_280F914F0);
    swift_beginAccess();
    v55 = *(v185 + 16);
    v176 = v54;
    v175 = v185 + 16;
    v174 = v55;
    v55(v49, v54, v53);
    v56 = sub_2664DFE18();
    v57 = sub_2664E06C8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_26629C000, v56, v57, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v58, 2u);
      v53 = v184;
      MEMORY[0x266784AD0](v58, -1, -1);
    }

    v59 = *(v185 + 8);
    v185 += 8;
    v59(v49, v53);
    v209 = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v179, v179[3]);
    sub_2664DFEA8();
    swift_allocObject();

    sub_2664DFE98();
    sub_2664DFCF8();

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v60 = v178;
      v208 = *v29;
      v61 = v208;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
      swift_willThrowTypedImpl();
      v62 = v199;
      v174(v199, v176, v53);
      v63 = v61;
      v64 = sub_2664DFE18();
      v65 = sub_2664E06D8();

      v66 = os_log_type_enabled(v64, v65);
      v67 = v173;
      v68 = v172;
      if (v66)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v168 = v59;
        v71 = v70;
        v208 = v70;
        *v69 = 136315138;
        swift_getErrorValue();
        v72 = sub_2664E0DE8();
        v74 = sub_2662A320C(v72, v73, &v208);

        *(v69 + 4) = v74;
        _os_log_impl(&dword_26629C000, v64, v65, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        MEMORY[0x266784AD0](v71, -1, -1);
        MEMORY[0x266784AD0](v69, -1, -1);

        v168(v199, v184);
      }

      else
      {

        v59(v62, v53);
      }

      v106 = v177;

      sub_2662FE7F4(MEMORY[0x277D84F90], v106, v68, v60, v169, v170, v67);
    }

    v168 = v59;
    v84 = v197;
    v83 = v198;
    v85 = v202;
    (*(v198 + 32))(v197, v29, v202);
    v86 = v190;
    (*(v83 + 16))(v190, v84, v85);
    v87 = (*(v83 + 88))(v86, v85);
    if (v87 == *MEMORY[0x277D5FEC0])
    {
      (*(v83 + 96))(v86, v85);
      v88 = v194;
      v89 = *(v194 + 32);
      v90 = v201;
      v91 = v195;
      v203 = v194 + 32;
      v199 = v89;
      (v89)(v201, v86, v195);
      v92 = v184;
      v174(v196, v176, v184);
      v93 = v187;
      v190 = *(v88 + 16);
      (v190)(v187, v90, v91);
      v94 = sub_2664DFE18();
      v95 = sub_2664E06C8();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v208 = v97;
        *v96 = 136315138;
        sub_2663029EC();
        LODWORD(v186) = v95;
        v98 = sub_2664E0D48();
        v100 = v99;
        v101 = *(v88 + 8);
        v101(v93, v91);
        v102 = sub_2662A320C(v98, v100, &v208);
        v84 = v197;

        *(v96 + 4) = v102;
        _os_log_impl(&dword_26629C000, v94, v186, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        v103 = v97;
        v83 = v198;
        MEMORY[0x266784AD0](v103, -1, -1);
        MEMORY[0x266784AD0](v96, -1, -1);

        v104 = v196;
        v105 = v184;
      }

      else
      {

        v101 = *(v88 + 8);
        v101(v93, v91);
        v104 = v196;
        v105 = v92;
      }

      v168(v104, v105);
      v123 = v91;
      v124 = v189;
      (v190)(v189, v201, v123);
      v125 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
      v127 = *(v125 + 2);
      v126 = *(v125 + 3);
      v128 = v202;
      if (v127 >= v126 >> 1)
      {
        v125 = sub_266384A74((v126 > 1), v127 + 1, 1, v125);
      }

      v129 = v195;
      v101(v201, v195);
      (*(v83 + 8))(v84, v128);
      *(v125 + 2) = v127 + 1;
      (v199)(&v125[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v127], v124, v129);
      v209 = v125;
    }

    else
    {
      v107 = v184;
      v108 = v195;
      v88 = v194;
      if (v87 == *MEMORY[0x277D5FED0])
      {
        (*(v83 + 96))(v86, v85);
        v109 = *v86;
        v110 = v186;
        v174(v186, v176, v107);

        v111 = sub_2664DFE18();
        v112 = sub_2664E06C8();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = v109;
          v114 = v110;
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v208 = v116;
          *v115 = 136315138;
          v117 = MEMORY[0x2667834D0](v113, v108);
          v119 = sub_2662A320C(v117, v118, &v208);
          v84 = v197;

          *(v115 + 4) = v119;
          _os_log_impl(&dword_26629C000, v111, v112, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v116);
          v120 = v116;
          v83 = v198;
          MEMORY[0x266784AD0](v120, -1, -1);
          MEMORY[0x266784AD0](v115, -1, -1);

          v121 = v114;
          v109 = v113;
          v122 = v184;
        }

        else
        {

          v121 = v110;
          v122 = v107;
        }

        v168(v121, v122);
        sub_2662FA148(v109, sub_266384A74, MEMORY[0x277D5FE08]);
LABEL_36:
        (*(v83 + 8))(v84, v85);
        goto LABEL_37;
      }

      if (v87 != *MEMORY[0x277D5FEC8] && v87 != *MEMORY[0x277D5FED8] && v87 == *MEMORY[0x277D5FEE0])
      {
        v130 = v167;
        v174(v167, v176, v184);
        v131 = sub_2664DFE18();
        v132 = sub_2664E06C8();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&dword_26629C000, v131, v132, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v133, 2u);
          MEMORY[0x266784AD0](v133, -1, -1);
        }

        v168(v130, v107);
        goto LABEL_36;
      }

      v134 = *(v83 + 8);
      v134(v86, v85);
      v135 = v183;
      v174(v183, v176, v107);
      v136 = sub_2664DFE18();
      v137 = sub_2664E06D8();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_26629C000, v136, v137, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v138, 2u);
        MEMORY[0x266784AD0](v138, -1, -1);
      }

      v168(v135, v107);
      v134(v84, v85);
    }

LABEL_37:
    v139 = v209;
    v190 = *(v209 + 2);
    if (!v190)
    {
      break;
    }

    v140 = 0;
    v189 = (v88 + 16);
    ++v188;
    v203 = v207 + 16;
    LODWORD(v202) = *MEMORY[0x277D5FE90];
    v141 = *MEMORY[0x277D5FDF0];
    v201 = (v207 + 104);
    v186 = (v88 + 32);
    v183 = (v88 + 8);
    v142 = MEMORY[0x277D84F90];
    v49 = v195;
    v187 = v209;
    v29 = v204;
    v143 = v206;
    while (v140 < *(v139 + 2))
    {
      v199 = v142;
      v197 = ((*(v88 + 80) + 32) & ~*(v88 + 80));
      v196 = *(v88 + 72);
      (*(v88 + 16))(v200, &v197[v139 + v196 * v140], v49);
      v198 = v140 + 1;
      v49 = v192;
      sub_2664DFE78();
      v144 = sub_2664DFF08();
      (*v188)(v49, v193);
      v145 = 0;
      v146 = *(v144 + 16);
      do
      {
        if (v146 == v145)
        {
          v49 = v195;
          (*v183)(v200, v195);

          v142 = v199;
          goto LABEL_40;
        }

        if (v145 >= *(v144 + 16))
        {
          __break(1u);
          goto LABEL_60;
        }

        v147 = v207;
        (*(v207 + 16))(v29, v144 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v145++, v143);
        v148 = sub_2664DFEB8();
        v49 = v205;
        (*(*(v148 - 8) + 104))(v205, v202, v148);
        (*(v147 + 104))(v49, v141, v143);
        v149 = sub_2664DFE58();
        v150 = *(v147 + 8);
        v150(v49, v143);
        v150(v29, v143);
      }

      while ((v149 & 1) == 0);

      v151 = *v186;
      v49 = v195;
      (*v186)(v191, v200, v195);
      v142 = v199;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v208 = v142;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD058(0, *(v142 + 16) + 1, 1);
        v142 = v208;
      }

      v153 = v197;
      v155 = *(v142 + 16);
      v154 = *(v142 + 24);
      if (v155 >= v154 >> 1)
      {
        sub_2662FD058((v154 > 1), v155 + 1, 1);
        v142 = v208;
      }

      *(v142 + 16) = v155 + 1;
      v151(&v153[v142 + v155 * v196], v191, v49);
LABEL_40:
      v140 = v198;
      v88 = v194;
      v139 = v187;
      if (v198 == v190)
      {
        goto LABEL_52;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }

  v142 = MEMORY[0x277D84F90];
LABEL_52:

  if (*(v142 + 16))
  {
    v156 = v179[8];
    v157 = v179[9];
    __swift_project_boxed_opaque_existential_1(v179 + 5, v156);
    (*(v157 + 8))(v142, sub_2663095F4, v181, v156, v157);
  }

  v159 = v184;
  v174(v171, v176, v184);
  v160 = sub_2664DFE18();
  v161 = sub_2664E06C8();
  v162 = os_log_type_enabled(v160, v161);
  v163 = v173;
  v164 = v172;
  if (v162)
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&dword_26629C000, v160, v161, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v165, 2u);
    MEMORY[0x266784AD0](v165, -1, -1);
  }

  v168(v171, v159);

  sub_2662FE7F4(MEMORY[0x277D84F90], v177, v164, v178, v169, v170, v163);
}

uint64_t sub_266300E6C(uint64_t a1, void *a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v42 = a3;
  v39 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072858, &qword_2664E4E40);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - v6;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = qword_280F914E8;
  v43 = a4;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v38 = *(v8 + 16);
  v38(v12, v14, v7);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem...", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  v18 = *(v8 + 8);
  v18(v12, v7);
  v19 = sub_2664DFC28();
  if (v20)
  {
    v21 = sub_2664E0328();
    v23 = v22;
  }

  else
  {
    v21 = v19;
    v23 = 0;
  }

  v24 = sub_2664DFC38();
  if (!v25)
  {
    v26 = v24;
    v28 = 0;
    if (!v23)
    {
      goto LABEL_10;
    }

LABEL_14:
    v36 = v43;

    sub_2662FF5D8(v39, v21, v23, v26, v28, v42, v36);
  }

  v26 = sub_2664E0328();
  v28 = v27;

  if (v23 | v28)
  {
    goto LABEL_14;
  }

LABEL_10:
  v29 = v40;
  v38(v40, v14, v7);
  v30 = sub_2664DFE18();
  v31 = sub_2664E06C8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v30, v31, "OnscreenEntityProvider#retrieveSalientOnScreenMediaItem there is no media item title to match with.", v32, 2u);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v18(v29, v7);
  v33 = sub_2664DFC48();
  v34 = v41;
  (*(*(v33 - 8) + 56))(v41, 1, 1, v33);
  sub_2662FC988(v34, v42, v43, "OnscreenAppProvider#resolveSalientOnscreenMediaItem returning salient onscreen mediaItem matching request: %s", "OnscreenAppProvider#resolveSalientOnscreenMediaItem no matching onscreen mediaItem found.");
  sub_2662A9238(v34, &qword_280072858, &qword_2664E4E40);
}

uint64_t sub_26630128C(void *a1, void *a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v158 = a1;
  v13 = sub_2664DFE68();
  v14 = *(v13 - 8);
  v184 = v13;
  v185 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v183 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v182 = &v146 - v17;
  v172 = sub_2664DFF28();
  v166 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v171 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_2664DFE88();
  v173 = *(v176 - 8);
  v19 = MEMORY[0x28223BE20](v176);
  v170 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v178 = &v146 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v167 = &v146 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v165 = &v146 - v26;
  MEMORY[0x28223BE20](v25);
  v179 = &v146 - v27;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072860, &qword_2664E4E48);
  MEMORY[0x28223BE20](v180);
  v29 = &v146 - v28;
  v30 = sub_2664DFF38();
  v174 = *(v30 - 8);
  v175 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v168 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v181 = &v146 - v33;
  v161 = sub_2664DFE38();
  v163 = *(v161 - 8);
  v34 = MEMORY[0x28223BE20](v161);
  v162 = (&v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x28223BE20](v34);
  v150 = &v146 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v147 = &v146 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v164 = &v146 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v169 = &v146 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v177 = &v146 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v146 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v146 - v49;
  v51 = swift_allocObject();
  v156 = a2;
  v51[2] = a2;
  v51[3] = a3;
  v157 = a4;
  v51[4] = a4;
  v51[5] = a5;
  v52 = a6;
  v51[6] = a6;
  v51[7] = a7;
  v159 = v51;
  sub_2664DF148();
  swift_allocObject();
  v53 = a7;

  sub_2664DF138();
  v54 = MEMORY[0x266782230]();

  v160 = v54;
  if (!v54)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v80 = v161;
    v81 = __swift_project_value_buffer(v161, qword_280F914F0);
    swift_beginAccess();
    (*(v163 + 16))(v48, v81, v80);
    v82 = sub_2664DFE18();
    v83 = sub_2664E06D8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_26629C000, v82, v83, "OnscreenEntityProvider#onscreenMediaItems failed to create entity from builder", v84, 2u);
      MEMORY[0x266784AD0](v84, -1, -1);
    }

    (*(v163 + 8))(v48, v161);
    sub_2662F687C(MEMORY[0x277D84F90], v156, a3, v157, a5, v52, a7);
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v148 = a3;
    v149 = a5;
    v151 = v52;
    v152 = v53;
    v55 = v161;
    v56 = __swift_project_value_buffer(v161, qword_280F914F0);
    swift_beginAccess();
    v57 = *(v163 + 16);
    v155 = v56;
    v154 = v163 + 16;
    v153 = v57;
    v57(v50, v56, v55);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06C8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "OnscreenEntityProvider#onscreenMediaItems fetching on-screen candidates.", v60, 2u);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    v61 = *(v163 + 8);
    v163 += 8;
    v61(v50, v55);
    v187 = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v158, v158[3]);
    sub_2664DFEA8();
    swift_allocObject();

    sub_2664DFE98();
    sub_2664DFCF8();

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v186 = *v29;
      v62 = v186;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
      swift_willThrowTypedImpl();
      v63 = v177;
      v153(v177, v155, v55);
      v64 = v62;
      v65 = sub_2664DFE18();
      v66 = v55;
      v67 = sub_2664E06D8();

      v68 = os_log_type_enabled(v65, v67);
      v69 = v152;
      v70 = v151;
      v71 = v149;
      if (v68)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v186 = v73;
        *v72 = 136315138;
        swift_getErrorValue();
        v74 = sub_2664E0DE8();
        v76 = v61;
        v77 = sub_2662A320C(v74, v75, &v186);

        *(v72 + 4) = v77;
        _os_log_impl(&dword_26629C000, v65, v67, "OnscreenEntityProvider#onscreenMediaItems reference resolution failed with error: %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        v78 = v73;
        v70 = v151;
        MEMORY[0x266784AD0](v78, -1, -1);
        v79 = v72;
        v69 = v152;
        MEMORY[0x266784AD0](v79, -1, -1);

        v76(v177, v66);
      }

      else
      {

        v61(v63, v66);
      }

      sub_2662F687C(MEMORY[0x277D84F90], v156, v148, v157, v71, v70, v69);
    }

    v146 = v61;
    v85 = v174;
    v52 = v175;
    v86 = v181;
    (*(v174 + 32))(v181, v29, v175);
    v87 = v168;
    (*(v85 + 16))(v168, v86, v52);
    v88 = (*(v85 + 88))(v87, v52);
    if (v88 == *MEMORY[0x277D5FEC0])
    {
      (*(v85 + 96))(v87, v52);
      v53 = v173;
      v89 = *(v173 + 32);
      v90 = v179;
      v91 = v176;
      v180 = v173 + 32;
      v177 = v89;
      (v89)(v179, v87, v176);
      v153(v169, v155, v55);
      v92 = v165;
      v168 = *(v53 + 16);
      (v168)(v165, v90, v91);
      v93 = sub_2664DFE18();
      v94 = sub_2664E06C8();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = v92;
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v186 = v97;
        *v96 = 136315138;
        sub_2663029EC();
        v98 = sub_2664E0D48();
        v100 = v99;
        v101 = *(v173 + 8);
        v101(v95, v91);
        v102 = sub_2662A320C(v98, v100, &v186);
        v52 = v175;
        v53 = v173;

        *(v96 + 4) = v102;
        _os_log_impl(&dword_26629C000, v93, v94, "OnscreenEntityProvider#onscreenMediaItems found match: %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        v103 = v97;
        v85 = v174;
        MEMORY[0x266784AD0](v103, -1, -1);
        MEMORY[0x266784AD0](v96, -1, -1);
      }

      else
      {

        v101 = *(v53 + 8);
        v101(v92, v91);
      }

      v146(v169, v161);
      v29 = v167;
      (v168)(v167, v179, v91);
      v113 = sub_266384A74(0, 1, 1, MEMORY[0x277D84F90]);
      v115 = *(v113 + 2);
      v114 = *(v113 + 3);
      v50 = (v115 + 1);
      if (v115 >= v114 >> 1)
      {
        v113 = sub_266384A74((v114 > 1), v115 + 1, 1, v113);
      }

      v101(v179, v91);
      (*(v85 + 8))(v181, v52);
      *(v113 + 2) = v50;
      (v177)(&v113[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v115], v29, v91);
      v187 = v113;
    }

    else
    {
      v91 = v176;
      v53 = v173;
      if (v88 == *MEMORY[0x277D5FED0])
      {
        (*(v85 + 96))(v87, v52);
        v50 = *v87;
        v104 = v164;
        v153(v164, v155, v55);

        v105 = sub_2664DFE18();
        v29 = sub_2664E06C8();

        if (os_log_type_enabled(v105, v29))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v186 = v107;
          *v106 = 136315138;
          v108 = MEMORY[0x2667834D0](v50, v91);
          v110 = v50;
          v111 = sub_2662A320C(v108, v109, &v186);
          v85 = v174;

          *(v106 + 4) = v111;
          v50 = v110;
          _os_log_impl(&dword_26629C000, v105, v29, "OnscreenEntityProvider#onscreenMediaItems found multiple matches: %s", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v107);
          v112 = v107;
          v52 = v175;
          v53 = v173;
          MEMORY[0x266784AD0](v112, -1, -1);
          MEMORY[0x266784AD0](v106, -1, -1);
        }

        v146(v104, v55);
        sub_2662FA148(v50, sub_266384A74, MEMORY[0x277D5FE08]);
LABEL_32:
        (*(v85 + 8))(v181, v52);
        goto LABEL_36;
      }

      if (v88 != *MEMORY[0x277D5FEC8] && v88 != *MEMORY[0x277D5FED8] && v88 == *MEMORY[0x277D5FEE0])
      {
        v116 = v147;
        v153(v147, v155, v55);
        v117 = sub_2664DFE18();
        v50 = sub_2664E06C8();
        if (os_log_type_enabled(v117, v50))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_26629C000, v117, v50, "OnscreenEntityProvider#onscreenMediaItems No salient on screen entities found", v29, 2u);
          MEMORY[0x266784AD0](v29, -1, -1);
        }

        v146(v116, v55);
        goto LABEL_32;
      }

      v118 = v55;
      v119 = *(v85 + 8);
      v119(v87, v52);
      v120 = v162;
      v153(v162, v155, v118);
      v121 = sub_2664DFE18();
      v50 = sub_2664E06D8();
      if (os_log_type_enabled(v121, v50))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_26629C000, v121, v50, "OnscreenEntityProvider#onscreenMediaItems Unknown/unsupported result type", v29, 2u);
        MEMORY[0x266784AD0](v29, -1, -1);
      }

      v146(v120, v118);
      v119(v181, v52);
    }

LABEL_36:
    v122 = v187;
    v168 = *(v187 + 2);
    if (!v168)
    {
      break;
    }

    v123 = 0;
    v167 = (v53 + 16);
    ++v166;
    v181 = (v185 + 16);
    LODWORD(v180) = *MEMORY[0x277D5FE90];
    v124 = *MEMORY[0x277D5FDF0];
    v179 = (v185 + 104);
    a3 = v185 + 8;
    v164 = (v53 + 32);
    v162 = (v53 + 8);
    v169 = MEMORY[0x277D84F90];
    v165 = v187;
    a5 = v184;
    while (v123 < *(v122 + 2))
    {
      v175 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v174 = *(v53 + 72);
      (*(v53 + 16))(v178, &v122[v175 + v174 * v123], v91);
      v177 = (v123 + 1);
      v125 = v171;
      sub_2664DFE78();
      v126 = sub_2664DFF08();
      (*v166)(v125, v172);
      v127 = 0;
      v128 = *(v126 + 16);
      do
      {
        if (v128 == v127)
        {
          v91 = v176;
          (*v162)(v178, v176);

          goto LABEL_39;
        }

        if (v127 >= *(v126 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }

        v129 = v185;
        v29 = v182;
        (*(v185 + 16))(v182, v126 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v127++, a5);
        v130 = sub_2664DFEB8();
        v50 = v183;
        (*(*(v130 - 8) + 104))(v183, v180, v130);
        (*(v129 + 104))(v50, v124, a5);
        v52 = sub_2664DFE58();
        v53 = *(v129 + 8);
        (v53)(v50, a5);
        (v53)(v29, a5);
      }

      while ((v52 & 1) == 0);

      v131 = *v164;
      (*v164)(v170, v178, v176);
      v132 = v169;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v186 = v132;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FD058(0, *(v132 + 16) + 1, 1);
        v132 = v186;
      }

      v29 = v174;
      v50 = v175;
      v135 = *(v132 + 16);
      v134 = *(v132 + 24);
      v52 = v135 + 1;
      if (v135 >= v134 >> 1)
      {
        sub_2662FD058((v134 > 1), v135 + 1, 1);
        v132 = v186;
      }

      *(v132 + 16) = v52;
      v169 = v132;
      v136 = &v50[v132 + v135 * v29];
      v91 = v176;
      v131(v136, v170, v176);
LABEL_39:
      v123 = v177;
      v53 = v173;
      v122 = v165;
      if (v177 == v168)
      {
        goto LABEL_51;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
  }

  v169 = MEMORY[0x277D84F90];
LABEL_51:

  v137 = v169;
  if (*(v169 + 2))
  {
    v138 = v158[8];
    v139 = v158[9];
    __swift_project_boxed_opaque_existential_1(v158 + 5, v138);
    (*(v139 + 8))(v137, sub_266309654, v159, v138, v139);
  }

  else
  {

    v140 = v150;
    v141 = v161;
    v153(v150, v155, v161);
    v142 = sub_2664DFE18();
    v143 = sub_2664E06C8();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_26629C000, v142, v143, "OnscreenEntityProvider#onscreenMediaItems no on screen entities found", v144, 2u);
      MEMORY[0x266784AD0](v144, -1, -1);
    }

    v146(v140, v141);
    sub_2662F687C(MEMORY[0x277D84F90], v156, v148, v157, v149, v151, v152);
  }
}