uint64_t sub_22C9E4F00()
{
  sub_22C9D6F3C();
  sub_22CA20F50();
  v1 = sub_22C9E6E40();
  *(v0 + 16) = v1;
  sub_22C9E6E58(v1, MEMORY[0x277D85700]);
  sub_22C9E6E34();
  v2 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C9E4F74()
{
  sub_22C9D7018();

  sub_22C9E5010((v0 + 24));
  sub_22C9E6EBC();

  return v1();
}

void sub_22C9E5010(char *a1@<X8>)
{
  v39 = sub_22CA20AB0();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22CA20900();
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22CA209F0();
  v41 = *(v42 - 8);
  v9 = MEMORY[0x28223BE20](v42);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  if (qword_28143A0E8 != -1)
  {
    swift_once();
  }

  v13 = qword_28143A420;
  v14 = sub_22CA20E10();
  v15 = [v13 objectForKey_];

  if (v15)
  {
    v35 = a1;
    v36 = v1;
    sub_22CA209E0();
    v16 = *(v41 + 16);
    v34 = v15;
    v37 = v12;
    v16(v40, &v15[OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_cachedDate], v42);
    sub_22CA20A80();
    sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
    v17 = sub_22CA20A90();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22CA22F90;
    (*(v18 + 104))(v20 + v19, *MEMORY[0x277CC99A0], v17);
    sub_22CA02080(v20);
    v21 = v37;
    sub_22CA20A70();

    (*(v3 + 8))(v5, v39);
    v22 = sub_22CA208F0();
    v24 = v23;
    (*(v6 + 8))(v8, v38);
    if ((v24 & 1) != 0 || v22 < 3)
    {
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v30 = sub_22CA20B10();
      sub_22C9D0494(v30, qword_28143A438);
      v26 = sub_22CA20AF0();
      v31 = sub_22CA21010();
      if (!os_log_type_enabled(v26, v31))
      {
        v29 = 0;
        goto LABEL_17;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22C9CA000, v26, v31, "MSMediaAppIntentsCache appIntentCacheRequiresUpdate: Returning false", v28, 2u);
      v29 = 0;
    }

    else
    {
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v25 = sub_22CA20B10();
      sub_22C9D0494(v25, qword_28143A438);
      v26 = sub_22CA20AF0();
      v27 = sub_22CA21010();
      if (!os_log_type_enabled(v26, v27))
      {
        v29 = 1;
        a1 = v35;
        v21 = v37;
        goto LABEL_19;
      }

      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = v22;
      _os_log_impl(&dword_22C9CA000, v26, v27, "MSMediaAppIntentsCache appIntentCacheRequiresUpdate: Returning true %ld minutes since last update)", v28, 0xCu);
      v29 = 1;
      v21 = v37;
    }

    MEMORY[0x2318BB680](v28, -1, -1);
LABEL_17:
    a1 = v35;
LABEL_19:

    v32 = *(v41 + 8);
    v33 = v42;
    v32(v40, v42);
    v32(v21, v33);
    goto LABEL_20;
  }

  v29 = 1;
LABEL_20:
  *a1 = v29;
}

uint64_t MSMediaAppIntentsCacheManager.saveAppIntentsToCache(_:usecase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_22C9E6DB4(sub_22C9E55CC);
}

uint64_t sub_22C9E55CC()
{
  v15 = v0;
  if (qword_28143A1A8 != -1)
  {
    sub_22C9E6DD0(&qword_28143A1A8);
  }

  v1 = sub_22CA20B10();
  sub_22C9D0494(v1, qword_28143A438);

  v2 = sub_22CA20AF0();
  v3 = sub_22CA21010();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22C9D60B0(v5, v4, &v14);
    *(v7 + 12) = 2048;
    *(v7 + 14) = sub_22C9E3CB8(v6);

    _os_log_impl(&dword_22C9CA000, v2, v3, "MSMediaAppIntentsCache (%s): Saving %ld app intents to cache", v7, 0x16u);
    sub_22C9D04CC(v8);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  else
  {
  }

  sub_22CA20F50();
  v9 = sub_22C9E6E40();
  v0[5] = v9;
  sub_22C9E6E58(v9, MEMORY[0x277D85700]);
  sub_22C9E6E34();
  v10 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C9E578C()
{
  sub_22C9D7018();
  v1 = *(v0 + 16);

  sub_22C9E5834(v1);

  return MEMORY[0x2822009F8](sub_22C9E6DAC, 0, 0);
}

void sub_22C9E5834(unint64_t a1)
{
  if (qword_28143A0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_28143A420;
  [qword_28143A420 removeAllObjects];
  v3 = objc_allocWithZone(type metadata accessor for MSMediaAppIntentsCache(0));

  v5 = sub_22C9E3F3C(v4, &OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_appIntents, &OBJC_IVAR____TtC14MediaSuggester22MSMediaAppIntentsCache_cachedDate);
  v6 = sub_22CA20E10();
  [v2 setObject:v5 forKey:v6 cost:sub_22C9E3CB8(a1)];
}

uint64_t sub_22C9E5930(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_22C9E6DB4(sub_22C9E5948);
}

uint64_t sub_22C9E5948()
{
  sub_22C9D6F3C();
  sub_22CA20F50();
  v1 = sub_22C9E6E40();
  *(v0 + 40) = v1;
  sub_22C9E6E58(v1, MEMORY[0x277D85700]);
  sub_22C9E6E34();
  v2 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_22C9E59BC()
{
  sub_22C9D7018();

  v1 = sub_22C9E6EA8();
  sub_22C9E5A58(v1, v2, v3);
  if (v0)
  {
  }

  else
  {
    sub_22C9E6EBC();

    v4();
  }
}

void sub_22C9E5A58(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v60 = a2;
  v6 = sub_22CA20AB0();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22CA20900();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22CA209F0();
  v63 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v61 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v50 - v15;
  if (qword_28143A0E0 != -1)
  {
    swift_once();
  }

  v16 = qword_28143A418;
  v17 = sub_22CA20E10();
  v18 = [v16 objectForKey_];

  if (v18)
  {
    v51 = a1;
    v54 = a3;
    v55 = v3;
    sub_22CA209E0();
    v19 = *(v63 + 16);
    v52 = v18;
    v53 = v12;
    v19(v61, &v18[OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_cachedDate], v12);
    sub_22CA20A80();
    sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
    v20 = sub_22CA20A90();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_22CA22F90;
    (*(v21 + 104))(v23 + v22, *MEMORY[0x277CC9968], v20);
    sub_22CA02080(v23);
    sub_22CA20A70();

    (*(v58 + 8))(v8, v59);
    v24 = sub_22CA208E0();
    LOBYTE(v23) = v25;
    (*(v56 + 8))(v11, v57);
    if ((v23 & 1) == 0 && v24 >= 1)
    {
      [v16 removeAllObjects];
      v26 = v60;
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v27 = sub_22CA20B10();
      sub_22C9D0494(v27, qword_28143A438);

      v28 = sub_22CA20AF0();
      v29 = sub_22CA21010();

      v30 = os_log_type_enabled(v28, v29);
      v31 = v53;
      a3 = v54;
      v32 = v52;
      if (!v30)
      {
        goto LABEL_21;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v64 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_22C9D60B0(v51, v26, &v64);
      v35 = "MSMediaAppIntentsCache (%s): Discarded cache (stale data).";
LABEL_20:
      _os_log_impl(&dword_22C9CA000, v28, v29, v35, v33, 0xCu);
      sub_22C9D04CC(v34);
      MEMORY[0x2318BB680](v34, -1, -1);
      MEMORY[0x2318BB680](v33, -1, -1);
LABEL_21:

      v48 = *(v63 + 8);
      v48(v61, v31);
      v48(v62, v31);
      v36 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }

    v37 = OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_bundleIDs;
    v32 = v52;
    v38 = v60;
    if (!*(*&v52[OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_bundleIDs] + 16))
    {
      v31 = v53;
      if (qword_28143A1A8 != -1)
      {
        swift_once();
      }

      v46 = sub_22CA20B10();
      sub_22C9D0494(v46, qword_28143A438);

      v28 = sub_22CA20AF0();
      v29 = sub_22CA21000();

      v47 = os_log_type_enabled(v28, v29);
      a3 = v54;
      if (!v47)
      {
        goto LABEL_21;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v64 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_22C9D60B0(v51, v38, &v64);
      v35 = "MSMediaAppIntentsCache (%s): No data found";
      goto LABEL_20;
    }

    v39 = v53;
    if (qword_28143A1A8 != -1)
    {
      swift_once();
    }

    v40 = sub_22CA20B10();
    sub_22C9D0494(v40, qword_28143A438);

    v41 = v32;
    v42 = sub_22CA20AF0();
    v43 = sub_22CA21010();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64 = v45;
      *v44 = 136315394;
      *(v44 + 4) = sub_22C9D60B0(v51, v38, &v64);
      *(v44 + 12) = 2048;
      *(v44 + 14) = *(*&v32[v37] + 16);

      _os_log_impl(&dword_22C9CA000, v42, v43, "MSMediaAppIntentsCache (%s): Loaded %ld bundleIDs", v44, 0x16u);
      sub_22C9D04CC(v45);
      MEMORY[0x2318BB680](v45, -1, -1);
      MEMORY[0x2318BB680](v44, -1, -1);
    }

    else
    {
    }

    v49 = *(v63 + 8);
    v49(v61, v39);
    v49(v62, v39);
    v36 = *&v32[v37];

    a3 = v54;
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

LABEL_24:
  *a3 = v36;
}

uint64_t sub_22C9E6220()
{
  sub_22C9D6F3C();
  sub_22CA20F50();
  v1 = sub_22C9E6E40();
  *(v0 + 16) = v1;
  sub_22C9E6E58(v1, MEMORY[0x277D85700]);
  sub_22C9E6E34();
  v2 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C9E6294()
{
  sub_22C9D7018();

  sub_22C9E6330((v0 + 24));
  sub_22C9E6EBC();

  return v1();
}

void sub_22C9E6330(char *a1@<X8>)
{
  v44 = a1;
  v2 = sub_22CA20AB0();
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22CA20900();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22CA209F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  if (qword_28143A0E0 != -1)
  {
    swift_once();
  }

  v13 = qword_28143A418;
  v14 = sub_22CA20E10();
  v15 = [v13 objectForKey_];

  if (v15)
  {
    v37 = v12;
    sub_22CA209E0();
    v16 = *(v7 + 16);
    v35 = v10;
    v38 = v6;
    v16(v10, &v15[OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_cachedDate], v6);
    v17 = v40;
    sub_22CA20A80();
    sub_22C9D02E4(&qword_27D9E4E70, &qword_22CA243E0);
    v18 = sub_22CA20A90();
    v19 = v42;
    v36 = v4;
    v20 = v18;
    v21 = *(v18 - 8);
    v39 = v1;
    v22 = v21;
    v23 = *(v21 + 80);
    v34 = v2;
    v24 = (v23 + 32) & ~v23;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_22CA22F90;
    (*(v22 + 104))(v25 + v24, *MEMORY[0x277CC9980], v20);
    sub_22CA02080(v25);
    v26 = v41;
    v27 = v35;
    v28 = v37;
    sub_22CA20A70();

    (*(v19 + 8))(v17, v34);
    v29 = sub_22CA208F0();
    LOBYTE(v25) = v30;

    (*(v43 + 8))(v26, v36);
    v31 = *(v7 + 8);
    v32 = v38;
    v31(v27, v38);
    v31(v28, v32);
    v33 = (v29 > 6) & ~v25;
  }

  else
  {
    v33 = 1;
  }

  *v44 = v33;
}

uint64_t MSMediaAppIntentsCacheManager.saveBundleIDsToCache(_:usecase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_22C9E6DB4(sub_22C9E6790);
}

uint64_t sub_22C9E6790()
{
  v15 = v0;
  if (qword_28143A1A8 != -1)
  {
    sub_22C9E6DD0(&qword_28143A1A8);
  }

  v1 = sub_22CA20B10();
  sub_22C9D0494(v1, qword_28143A438);

  v2 = sub_22CA20AF0();
  v3 = sub_22CA21010();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22C9D60B0(v5, v4, &v14);
    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v6 + 16);

    _os_log_impl(&dword_22C9CA000, v2, v3, "MSMediaAppIntentsCache (%s): Saving %ld bundleIDs to cache", v7, 0x16u);
    sub_22C9D04CC(v8);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  else
  {
  }

  sub_22CA20F50();
  v9 = sub_22C9E6E40();
  v0[5] = v9;
  sub_22C9E6E58(v9, MEMORY[0x277D85700]);
  sub_22C9E6E34();
  v10 = sub_22C9E6DC0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C9E694C()
{
  sub_22C9D7018();
  v1 = *(v0 + 16);

  sub_22C9E6A08(v1);

  return MEMORY[0x2822009F8](sub_22C9E69F4, 0, 0);
}

void sub_22C9E6A08(uint64_t a1)
{
  if (qword_28143A0E0 != -1)
  {
    swift_once();
  }

  v2 = qword_28143A418;
  [qword_28143A418 removeAllObjects];
  v3 = objc_allocWithZone(type metadata accessor for MSMediaBundleIDCache(0));

  v5 = sub_22C9E3F3C(v4, &OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_bundleIDs, &OBJC_IVAR____TtC14MediaSuggester20MSMediaBundleIDCache_cachedDate);
  v6 = sub_22CA20E10();
  [v2 setObject:v5 forKey:v6 cost:*(a1 + 16)];
}

id sub_22C9E6AFC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22C9E6B88(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C9E6BC0(uint64_t a1)
{
  result = sub_22CA209F0();
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

void sub_22C9E6C84(uint64_t a1, unint64_t a2)
{
  v3 = sub_22C9E3CB8(a2);
  MEMORY[0x2318BAFA0](v3);
  v4 = sub_22C9E6DA0();
  if (v4)
  {
    v5 = v4;
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v5; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2318BAD10](i, a2);
        }

        else
        {
          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        sub_22CA210E0();
      }
    }
  }
}

uint64_t sub_22C9E6D28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2318BAFA0](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_22CA20E60();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22C9E6DD0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22C9E6E40()
{

  return sub_22CA20F40();
}

uint64_t sub_22C9E6E58(uint64_t a1, uint64_t a2)
{

  return sub_22CA20F10();
}

uint64_t sub_22C9E6E70()
{

  return swift_dynamicCast();
}

uint64_t sub_22C9E6EC8()
{

  return sub_22C9D032C(v0, v1 - 96);
}

uint64_t sub_22C9E6EE0(uint64_t a1)
{
  result = sub_22C9E969C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_22C9E96DC(result, v3, 0, a1);
  }
}

uint64_t sub_22C9E6F48()
{
  sub_22C9D6F3C();
  v1[50] = v2;
  v1[51] = v0;
  v1[48] = v3;
  v1[49] = v4;
  sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v5 = sub_22CA209F0();
  v1[54] = v5;
  v1[55] = *(v5 - 8);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v6 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C9E705C()
{
  v26 = v0;
  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v1 = v0[49];
  v2 = sub_22CA20B10();
  v0[59] = sub_22C9D0494(v2, &unk_28143A4E0);
  v3 = v1;

  v4 = sub_22CA20AF0();
  sub_22CA21010();

  if (sub_22C9E9990())
  {
    v5 = v0[51];
    v6 = v0[49];
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = v6 + OBJC_IVAR___MSSuggesterRequestOptions_requestID;
    v9 = *(v6 + OBJC_IVAR___MSSuggesterRequestOptions_requestID);
    v10 = *(v8 + 8);

    v11 = sub_22C9D60B0(v9, v10, &v25);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v0[47] = *(v5 + 16);
    sub_22CA20C20();
    sub_22C9E9848();
    sub_22C9E97D0(v12, 255, v13, MEMORY[0x277CE9B08]);
    v14 = sub_22CA21340();
    v16 = sub_22C9D60B0(v14, v15, &v25);

    *(v7 + 14) = v16;
    sub_22C9E988C();
    _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    sub_22C9E9964();
    swift_arrayDestroy();
    sub_22C9D6FFC();
    sub_22C9D6FC4();
  }

  v0[60] = sub_22CA20F50();
  v0[61] = sub_22CA20F40();
  v23 = sub_22CA20F10();

  return MEMORY[0x2822009F8](sub_22C9E72C4, v23, v22);
}

uint64_t sub_22C9E72C4()
{
  sub_22C9D6F3C();

  if (qword_28143A0D0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22C9E7358, 0, 0);
}

uint64_t sub_22C9E7358()
{
  sub_22C9D6F3C();
  *(v0 + 496) = sub_22CA20F40();
  v2 = sub_22CA20F10();

  return MEMORY[0x2822009F8](sub_22C9E73E0, v2, v1);
}

uint64_t sub_22C9E73E0()
{
  sub_22C9D6F3C();

  *(v0 + 504) = qword_28143A0D8;
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_22C9E7498;

  return sub_22C9E4610(0x6979616C50776F4ELL, 0xEA0000000000676ELL);
}

uint64_t sub_22C9E7498()
{
  sub_22C9D6F3C();
  *(*v0 + 520) = v1;

  v2 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22C9E758C()
{
  v1 = sub_22C9E6DA0();
  v2 = MEMORY[0x277D84F90];
  if (v1 >= 1)
  {
    v3 = [*(v0 + 392) allowedBundleIdentifiers];
    v4 = sub_22CA20EC0();

    if (*(v4 + 16))
    {
      result = sub_22C9E6DA0();
      if (result)
      {
        v6 = result;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v7 = 0;
        v8 = *(v0 + 520);
        v9 = v8 & 0xC000000000000001;
        v36 = v8 + 32;
        v37 = MEMORY[0x277D84F90];
        do
        {
          if (v9)
          {
            v10 = MEMORY[0x2318BAD10](v7, *(v0 + 520));
          }

          else
          {
            v10 = *(v36 + 8 * v7);
          }

          v11 = v10;
          v12 = *&v10[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID + 8];
          *(v0 + 312) = *&v10[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
          *(v0 + 320) = v12;
          v13 = swift_task_alloc();
          *(v13 + 16) = v0 + 312;

          v14 = sub_22C9F9E10(sub_22C9E9828, v13, v4);

          if (v14)
          {
            v15 = v11;
            MEMORY[0x2318BA9F0]();
            if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22CA20EE0();
            }

            sub_22CA20F00();

            v37 = v2;
          }

          else
          {
          }

          ++v7;
        }

        while (v6 != v7);

        v2 = MEMORY[0x277D84F90];
        v32 = v37;
      }

      else
      {

        v32 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v32 = *(v0 + 520);
    }

    goto LABEL_23;
  }

  v16 = *(v0 + 456);
  v17 = *(v0 + 464);
  v19 = *(v0 + 440);
  v18 = *(v0 + 448);
  v20 = *(v0 + 424);
  v21 = *(v0 + 432);
  v22 = *(v0 + 416);
  v23 = *(v0 + 392);
  sub_22CA209E0();
  sub_22CA209B0();
  v24 = *(v19 + 8);
  *(v0 + 528) = v24;
  *(v0 + 536) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v16, v21);
  sub_22CA209E0();
  type metadata accessor for MSBiomeMediaReader();
  inited = swift_initStackObject();
  v26 = *(v19 + 16);
  v26(v20, v17, v21);
  sub_22C9D0B98(v20, 0, 1, v21);
  v26(v22, v18, v21);
  sub_22C9D0B98(v22, 0, 1, v21);
  v27 = [v23 allowedBundleIdentifiers];
  v28 = sub_22CA20EC0();

  sub_22C9F4E64();
  v30 = v29;
  *(v0 + 544) = v29;

  sub_22C9E9758(v22);
  sub_22C9E9758(v20);
  if (sub_22C9E6DA0() < 1)
  {
    v33 = sub_22C9E98B8();
    v28(v33);
    (v28)(inited, v20);
    v32 = *(v0 + 544);
    v2 = MEMORY[0x277D84F90];
LABEL_23:
    *(v0 + 560) = v32;
    *(v0 + 328) = MEMORY[0x277D84FA0];
    *(v0 + 336) = v2;
    *(v0 + 344) = v2;
    type metadata accessor for MSSuggestionContextFeatureProvider();
    swift_allocObject();
    *(v0 + 568) = sub_22C9EE934();
    v34 = swift_task_alloc();
    *(v0 + 576) = v34;
    *v34 = v0;
    v35 = sub_22C9E9860(v34);

    return sub_22C9EE9E0(v35);
  }

  v31 = swift_task_alloc();
  *(v0 + 552) = v31;
  *v31 = v0;
  v31[1] = sub_22C9E7A40;

  return MSMediaAppIntentsCacheManager.saveAppIntentsToCache(_:usecase:)(v30, 0x6979616C50776F4ELL, 0xEA0000000000676ELL);
}

uint64_t sub_22C9E7A40()
{
  sub_22C9D6F3C();
  v1 = *v0;
  sub_22C9D6EA4();
  *v2 = v1;

  v3 = sub_22C9E98D4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22C9E7B28()
{
  v4 = sub_22C9E98B8();
  v3(v4);
  (v3)(v1, v0);
  v5 = MEMORY[0x277D84FA0];
  v2[70] = v2[68];
  v6 = MEMORY[0x277D84F90];
  v2[41] = v5;
  v2[42] = v6;
  v2[43] = v6;
  type metadata accessor for MSSuggestionContextFeatureProvider();
  swift_allocObject();
  v2[71] = sub_22C9EE934();
  v7 = swift_task_alloc();
  v2[72] = v7;
  *v7 = v2;
  v8 = sub_22C9E9860(v7);

  return sub_22C9EE9E0(v8);
}

uint64_t sub_22C9E7BF8()
{
  v2 = *v1;
  sub_22C9D6EA4();
  *v3 = v2;
  *(v2 + 584) = v4;
  *(v2 + 592) = v0;

  if (v0)
  {

    v5 = sub_22C9E8D9C;
  }

  else
  {
    v5 = sub_22C9E7D4C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22C9E7D4C()
{
  v236 = v0;
  v1 = v0;

  v2 = sub_22CA20AF0();
  v3 = sub_22CA21010();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = sub_22C9E6DA0();

    _os_log_impl(&dword_22C9CA000, v2, v3, "PlayMediaAppIntent: Using %ld app intents for ranking", v4, 0xCu);
    MEMORY[0x2318BB680](v4, -1, -1);
  }

  else
  {
  }

  v5 = MEMORY[0x277D84F90];
  v197 = sub_22C9E9970();
  v226 = sub_22C9E9970();
  v232 = sub_22C9E6DA0();
  if (!v232)
  {
    v223 = 0;
    v216 = v5;
LABEL_67:
    v88 = *(v1 + 472);
    v89 = *(v1 + 392);

    v90 = v89;

    v91 = sub_22CA20AF0();
    sub_22CA21010();

    if (sub_22C9E9990())
    {
      v92 = *(v1 + 408);
      v93 = sub_22C9E9914();
      v235 = swift_slowAlloc();
      *v93 = 136315650;
      sub_22C9E9930();
      sub_22C9E989C(v94, v95, v96, v97, v98, v99, v100, v101, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v216, v220, v223, v226, v229, v232, v235);
      sub_22C9E994C();
      *(v93 + 4) = v88;
      *(v93 + 12) = 2080;
      *(v1 + 368) = *(v92 + 16);
      v102 = sub_22CA20C20();
      sub_22C9E9848();
      sub_22C9E97D0(v103, 255, v104, MEMORY[0x277CE9B08]);
      v105 = sub_22CA21340();
      sub_22C9D60B0(v105, v106, &v235);
      sub_22C9D7248();

      *(v93 + 14) = v102;
      *(v93 + 22) = 2080;

      v107 = sub_22CA20DC0();

      sub_22C9E989C(v108, v109, v110, v111, v112, v113, v114, v115, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v214, v218, v221, v224, v227, v230, v233, v235);
      sub_22C9E994C();
      *(v93 + 24) = v107;
      sub_22C9E988C();
      _os_log_impl(v116, v117, v118, v119, v120, 0x20u);
      sub_22C9E9964();
      swift_arrayDestroy();
      sub_22C9D6FFC();
      sub_22C9D6FC4();
    }

    v121 = *(v1 + 472);
    v122 = *(v1 + 392);

    v123 = sub_22CA20AF0();
    sub_22CA21010();

    if (sub_22C9E9990())
    {
      v124 = *(v1 + 408);
      v125 = sub_22C9E9914();
      v235 = swift_slowAlloc();
      *v125 = 136315650;
      sub_22C9E9930();
      sub_22C9E989C(v126, v127, v128, v129, v130, v131, v132, v133, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v216, v220, v223, v226, v229, v232, v235);
      sub_22C9E994C();
      *(v125 + 4) = v121;
      *(v125 + 12) = 2080;
      *(v1 + 360) = *(v124 + 16);
      v134 = sub_22CA20C20();
      sub_22C9E9848();
      sub_22C9E97D0(v135, 255, v136, MEMORY[0x277CE9B08]);
      v137 = sub_22CA21340();
      sub_22C9D60B0(v137, v138, &v235);
      sub_22C9D7248();

      *(v125 + 14) = v134;
      *(v125 + 22) = 2080;

      v139 = sub_22CA20DC0();

      sub_22C9E989C(v140, v141, v142, v143, v144, v145, v146, v147, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v215, v219, v222, v225, v228, v231, v234, v235);
      sub_22C9E994C();
      *(v125 + 24) = v139;
      sub_22C9E988C();
      _os_log_impl(v148, v149, v150, v151, v152, 0x20u);
      sub_22C9E9964();
      swift_arrayDestroy();
      sub_22C9D6FFC();
      sub_22C9D6FC4();
    }

    v153 = *(v1 + 472);
    v154 = *(v1 + 392);
    swift_bridgeObjectRetain_n();
    v155 = v154;

    v156 = sub_22CA20AF0();
    sub_22CA21010();

    if (sub_22C9E9990())
    {
      v157 = *(v1 + 408);
      v158 = sub_22C9E9914();
      v235 = swift_slowAlloc();
      *v158 = 136315650;
      sub_22C9E9930();
      sub_22C9E989C(v159, v160, v161, v162, v163, v164, v165, v166, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v216, v220, v223, v226, v229, v232, v235);
      sub_22C9E994C();
      *(v158 + 4) = v153;
      *(v158 + 12) = 2080;
      *(v1 + 352) = *(v157 + 16);
      v167 = sub_22CA20C20();
      sub_22C9E9848();
      sub_22C9E97D0(v168, 255, v169, MEMORY[0x277CE9B08]);
      v170 = sub_22CA21340();
      sub_22C9D60B0(v170, v171, &v235);
      sub_22C9D7248();

      *(v158 + 14) = v167;
      *(v158 + 22) = 2048;
      v172 = sub_22C9E6DA0();

      *(v158 + 24) = v172;

      sub_22C9E988C();
      _os_log_impl(v173, v174, v175, v176, v177, 0x20u);
      sub_22C9E9964();
      swift_arrayDestroy();
      sub_22C9D6FFC();
      sub_22C9D6FC4();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_22C9D0434(0, &qword_27D9E4E38, 0x277CBFEB0);
    sub_22CA169F0(v216);
    type metadata accessor for MSSuggestion(0);
    sub_22CA20CB0();

    swift_unknownObjectRelease();
    sub_22C9E97C0(v223, 0);

    sub_22C9E98F4();

    __asm { BRAA            X1, X16 }
  }

  v223 = 0;
  v6 = 0;
  v7 = *(v1 + 560);
  v229 = v7 & 0xC000000000000001;
  v191 = v7 + 32;
  v194 = v7 & 0xFFFFFFFFFFFFFF8;
  v182 = "contextTimeOfDay";
  v185 = "candidateSourceType";
  v188 = "mostRecentPlayback";
  v8 = MEMORY[0x277D84F90];
  v216 = MEMORY[0x277D84F90];
  v220 = *(v1 + 592);
  while (1)
  {
    if (v229)
    {
      v9 = MEMORY[0x2318BAD10](v6, *(v1 + 560));
    }

    else
    {
      if (v6 >= *(v194 + 16))
      {
        goto LABEL_84;
      }

      v9 = *(v191 + 8 * v6);
    }

    v10 = v9;
    v11 = __OFADD__(v6++, 1);
    if (v11)
    {
      break;
    }

    v12 = *&v9[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8];
    if (!v12)
    {
      goto LABEL_53;
    }

    v13 = *&v9[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier];
    v14 = *(v1 + 328);
    if (*(v14 + 16))
    {
      v15 = v8;
      sub_22CA21440();

      sub_22CA20E60();
      v16 = sub_22CA21490();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v18 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        v19 = (*(v14 + 48) + 16 * v18);
        if (*v19 != v13 || v12 != v19[1])
        {
          v21 = sub_22CA21360();
          v16 = v18 + 1;
          if ((v21 & 1) == 0)
          {
            continue;
          }
        }

        v8 = v15;
        goto LABEL_53;
      }

      v8 = v15;
    }

    else
    {
    }

    v22 = OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags;
    v23 = *&v10[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_editorialTags];
    if (v23)
    {
      v24 = 0;
      v25 = (v23 + 56);
      v26 = 1 << *(v23 + 32);
      v27 = (v26 + 63) >> 6;
      if (v27)
      {
        while (!*v25)
        {
          ++v25;
          v24 -= 64;
          if (!--v27)
          {
            goto LABEL_29;
          }
        }

        v28 = __clz(__rbit64(*v25));
        if (v28 - v26 != v24)
        {
          if (-v24 < 0)
          {
            goto LABEL_88;
          }

          v81 = v28 - v24;
          if (v81 >= v26)
          {
            goto LABEL_88;
          }

          if (((*v25 >> v28) & 1) == 0)
          {
            goto LABEL_89;
          }

          v82 = *(v1 + 392);
          v83 = (*(v23 + 48) + 16 * v81);
          v84 = *v83;
          v85 = v83[1];

          if ([v82 suggestionType] == 1)
          {

LABEL_60:

            goto LABEL_53;
          }

          type metadata accessor for MSSuggesterUtils();
          v86 = sub_22CA1638C(v84, v85);

          if (__OFSUB__(3000, v86))
          {
            goto LABEL_90;
          }

          if (v86 != 3000)
          {
            v87 = [*(v1 + 392) workoutType];
            if (__OFSUB__(v86, v87))
            {
              goto LABEL_91;
            }

            if (v86 != v87)
            {
              goto LABEL_60;
            }
          }
        }
      }
    }

LABEL_29:
    v213 = v6;
    v217 = v22;

    sub_22CA15904(&v235, v13, v12);

    v30 = *&v10[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
    v29 = *&v10[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID + 8];
    v31 = objc_allocWithZone(MEMORY[0x277CD3EC0]);

    v32 = [v31 init];
    v33 = objc_allocWithZone(MSUnifiedMediaIntent);

    v34 = sub_22CA20E10();

    v35 = [v33 initWithIntent:v32 bundleID:v34];

    v36 = *&v10[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource];
    v37 = objc_allocWithZone(MSSuggestion);

    v206 = v35;
    v38 = sub_22C9DDDC8(v206, v30, v29, v36);
    v39 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
    swift_beginAccess();
    v40 = *&v38[v39];
    *&v38[v39] = v10;
    v41 = v10;

    v203 = v41;
    [v38 setIntentDate_];
    v42 = v38;
    MEMORY[0x2318BA9F0]();
    if (*((*(v1 + 336) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 336) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22CA20EE0();
    }

    v200 = v42;
    sub_22CA20F00();
    v43 = v1;
    v209 = *(v1 + 336);
    sub_22C9E97C0(v223, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v235 = v226;
    v44 = v30;
    v45 = sub_22C9FBFA8(v30, v29);
    if (__OFADD__(*(v226 + 16), (v46 & 1) == 0))
    {
      goto LABEL_85;
    }

    v47 = v45;
    v48 = v46;
    sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
    v49 = sub_22CA21250();
    v50 = v235;
    if (v49)
    {
      v51 = sub_22C9FBFA8(v44, v29);
      if ((v48 & 1) != (v52 & 1))
      {
        sub_22C9E98F4();

        sub_22CA213C0();
        return;
      }

      v47 = v51;
      if (v48)
      {
        goto LABEL_38;
      }

LABEL_37:
      sub_22CA028F4(v47, v44, v29, 0, v50);

      goto LABEL_38;
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_38:
    v53 = *(v50 + 56);
    v54 = *(v53 + 8 * v47);
    v11 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v11)
    {
      goto LABEL_86;
    }

    v226 = v50;
    *(v53 + 8 * v47) = v55;
    v56 = sub_22C9D0434(0, &qword_27D9E4E90, 0x277CBFEF8);
    v57 = sub_22C9E8E38(0x6574736567677573, 0xEE00616964654D64);
    *(v1 + 40) = v56;
    *(v1 + 16) = v57;
    sub_22C9E9818((v1 + 16), (v1 + 48));
    v58 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v235 = v58;
    sub_22C9EE518(v1 + 48, 0xD000000000000013, 0x800000022CA25DF0);
    v59 = v235;
    v60 = *&v10[v217];
    if (v60)
    {
      v6 = v213;
      if (*(v60 + 16))
      {

        v62 = sub_22C9E6EE0(v61);
        if (!v63)
        {
          goto LABEL_92;
        }

        v64 = v62;
        v65 = v63;

        type metadata accessor for MSSuggesterUtils();
        v66 = sub_22CA1638C(v64, v65);
        v67 = [objc_opt_self() featureValueWithInt64_];
        *(v1 + 168) = v56;
        *(v1 + 144) = v67;
        sub_22C9E9818((v1 + 144), (v1 + 176));
        swift_isUniquelyReferenced_nonNull_native();
        v235 = v59;
        sub_22C9EE518(v1 + 176, 0x7974697669746361, 0xEC00000065707954);
        v68 = v235;
        v69 = sub_22CA163EC(v64, v65);
        *(v1 + 232) = v56;
        *(v1 + 208) = v69;
        sub_22C9E9818((v1 + 208), (v1 + 240));
        swift_isUniquelyReferenced_nonNull_native();
        v235 = v68;
        sub_22C9EE518(v1 + 240, 0xD000000000000011, 0x800000022CA25C10);
        v59 = v235;
        v70 = sub_22C9EEEB8(v64, v65, v197);
        if (v71)
        {
          v72 = 0;
        }

        else
        {
          v72 = v70;
        }

        v43 = (v72 + 1);
        if (__OFADD__(v72, 1))
        {
          goto LABEL_87;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v235 = v197;
        sub_22C9EE43C(v43, v64, v65);

        v197 = v235;
      }

      else
      {
      }
    }

    else
    {

      v6 = v213;
    }

    objc_allocWithZone(MEMORY[0x277CBFED0]);

    v74 = sub_22CA17474(v73);
    v8 = v209;
    if (v220)
    {
      sub_22C9E98E4();
      sub_22C9E98F4();

      swift_unexpectedError();
      return;
    }

    v75 = v74;
    v76 = sub_22C9D7248();
    sub_22C9E91D8(v76, v43);
    v78 = v77;

    *(v1 + 104) = MEMORY[0x277D839F8];
    *(v1 + 80) = v78;
    sub_22C9E9818((v1 + 80), (v1 + 112));
    swift_isUniquelyReferenced_nonNull_native();
    v235 = v59;
    sub_22C9EE518(v1 + 112, 0xD000000000000016, 0x800000022CA25E10);
    objc_allocWithZone(MEMORY[0x277CBFED0]);

    sub_22CA17474(v79);
    v212 = 0;

    MEMORY[0x2318BA9F0](v80);
    if (*((*(v1 + 344) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 344) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22CA20EE0();
    }

    sub_22CA20F00();
    v216 = *(v1 + 344);

    v220 = 0;
    v223 = sub_22C9E8E30;
    v10 = v203;
LABEL_53:

    if (v6 == v232)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t sub_22C9E8D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_22C9E8E38(uint64_t a1, uint64_t a2)
{
  v2 = sub_22CA20E10();

  v3 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v3;
}

uint64_t sub_22C9E8E9C(uint64_t a1)
{
  sub_22CA20C20();
  swift_allocObject();
  *(v1 + 16) = sub_22CA20C10();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_22C9E8F68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C9E9018;

  return sub_22C9E6F48();
}

uint64_t sub_22C9E9018()
{
  sub_22C9D6F3C();
  v1 = *v0;
  sub_22C9D6EA4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void sub_22C9E91D8(void *a1, void *a2)
{
  v4 = sub_22CA20E10();
  v5 = [a1 featureValueForName_];

  if (!v5)
  {
    v5 = [objc_opt_self() featureValueWithDouble_];
  }

  swift_getObjectType();
  v6 = sub_22CA20E10();
  v7 = [a2 featureValueForName_];

  if (!v7)
  {
    v7 = [objc_opt_self() featureValueWithDouble_];
  }

  [v5 doubleValue];
  [v7 doubleValue];
  v8 = sub_22CA20E10();
  v24 = a1;
  v9 = [a1 featureValueForName_];

  if (!v9)
  {
    v9 = [objc_opt_self() featureValueWithInt64_];
  }

  v10 = sub_22CA20E10();
  v11 = [a2 0x27872B578];

  if (!v11)
  {
    v11 = [objc_opt_self() featureValueWithInt64_];
  }

  v12 = [v9 int64Value];
  v13 = [v11 int64Value];
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  if (v14 < 0 && __OFSUB__(0, v14))
  {
    goto LABEL_26;
  }

  sub_22CA0DD90();
  sub_22C9D0434(0, &qword_27D9E4E98, 0x277CBFED0);
  v15 = sub_22CA21040();
  v17 = v16;

  if (v15 == 0x6574736567677573 && v17 == 0xEE00616964654D64)
  {

    goto LABEL_19;
  }

  v19 = sub_22CA21360();

  if (v19)
  {

LABEL_19:
    return;
  }

  v20 = sub_22CA20E10();
  v21 = [v24 featureValueForName_];

  if (!v21)
  {
    v21 = [objc_opt_self() 0x27872B9ACLL];
  }

  [v21 doubleValue];

  v22 = sub_22CA20E10();
  v23 = [a2 featureValueForName_];

  if (!v23)
  {
    v23 = [objc_opt_self() 0x27872B9ACLL];
  }

  [v23 doubleValue];
}

uint64_t sub_22C9E96DC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22C9E9758(uint64_t a1)
{
  v2 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C9E97C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22C9E97D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_22C9E9818(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22C9E989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return sub_22C9D60B0(v26, v27, &a26);
}

uint64_t sub_22C9E9914()
{

  return swift_slowAlloc();
}

double sub_22C9E9930()
{

  return result;
}

uint64_t sub_22C9E994C()
{
}

uint64_t sub_22C9E9970()
{

  return sub_22CA20DD0();
}

BOOL sub_22C9E9990()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22C9E99D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_22CA209F0();
  sub_22C9E054C();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

id MSWorkoutItem.__allocating_init(workout:startDate:endDate:latitude:longitude:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = a1;
  v11 = objc_allocWithZone(v5);
  return MSWorkoutItem.init(workout:startDate:endDate:latitude:longitude:)(v10, a2, a3, a4, a5);
}

id MSWorkoutItem.init(workout:startDate:endDate:latitude:longitude:)(int a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_workoutType] = a1;
  v10 = OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_startDate;
  v11 = sub_22CA209F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v5[v10], a2, v11);
  v13(&v5[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_endDate], a3, v11);
  *&v5[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_latitude] = a4;
  *&v5[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_longitude] = a5;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for MSWorkoutItem(0);
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = *(v12 + 8);
  v15(a3, v11);
  v15(a2, v11);
  return v14;
}

uint64_t type metadata accessor for MSWorkoutItem(uint64_t a1)
{
  result = qword_27D9E4EC0;
  if (!qword_27D9E4EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_22C9E9C50@<X0>(void *a1@<X8>)
{
  v3 = sub_22CA209F0();
  sub_22C9DAE90();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C9E05C0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_workoutType);
  v14 = *(v5 + 16);
  v14(&v20 - v11, v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_startDate, v3);
  v14(v9, v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_endDate, v3);
  v15 = *(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_latitude);
  v16 = *(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_longitude);
  v17 = type metadata accessor for MSWorkoutItem(0);
  v18 = objc_allocWithZone(v17);
  result = MSWorkoutItem.init(workout:startDate:endDate:latitude:longitude:)(v13, v12, v9, v15, v16);
  a1[3] = v17;
  *a1 = result;
  return result;
}

void sub_22C9E9E1C()
{
  type metadata accessor for MSWorkoutActivityType(0);
  sub_22CA213A0();
  v0 = sub_22C9ECB30();
  sub_22C9ECAB4();
  swift_unknownObjectRelease();

  v1 = sub_22CA209A0();
  v2 = sub_22C9E05E0();
  sub_22C9ECAB4();

  v3 = sub_22CA209A0();
  v4 = sub_22C9E062C();
  sub_22C9ECAB4();

  v5 = sub_22C9ECB0C();
  sub_22C9ECB60();

  v6 = sub_22C9ECAE4();
  sub_22C9ECB60();
}

id MSWorkoutItem.init(coder:)(void *a1)
{
  v3 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22C9E05C0();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v10 = sub_22CA209F0();
  sub_22C9DAE90();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C9E05C0();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = sub_22C9E05E0();
  v21 = [a1 decodeObjectForKey_];

  if (v21)
  {
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_22C9E0608();
  }

  sub_22C9E04DC();
  if (!v22)
  {

    sub_22C9DF60C(v63, &unk_27D9E4D60, &unk_22CA22BE0);
    sub_22C9ECBA0(v9, 1);
    goto LABEL_8;
  }

  v23 = swift_dynamicCast();
  sub_22C9ECBA0(v9, v23 ^ 1u);
  if (sub_22C9D68B0(v9, 1, v10) != 1)
  {
    v60 = *(v12 + 32);
    v60(v19, v9, v10);
    v27 = sub_22C9E062C();
    v28 = [a1 decodeObjectForKey_];

    if (v28)
    {
      sub_22CA21130();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_22C9E0608();
    }

    sub_22C9E04DC();
    if (!v29)
    {
      v33 = sub_22C9ECB54();
      v34(v33);

      sub_22C9DF60C(v63, &unk_27D9E4D60, &unk_22CA22BE0);
      sub_22C9ECBA0(v6, 1);
      goto LABEL_16;
    }

    v30 = swift_dynamicCast();
    sub_22C9ECBA0(v6, v30 ^ 1u);
    if (sub_22C9D68B0(v6, 1, v10) == 1)
    {
      v31 = sub_22C9ECB54();
      v32(v31);

LABEL_16:
      v24 = &unk_27D9E4F00;
      v25 = &unk_22CA232D0;
      v26 = v6;
      goto LABEL_17;
    }

    v60(v16, v6, v10);
    v37 = sub_22C9ECB0C();
    v38 = [a1 decodeObjectForKey_];

    if (v38)
    {
      sub_22CA21130();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_22C9E0608();
    }

    sub_22C9E04DC();
    if (v42)
    {
      if ((sub_22C9ECB80(v39, v40, v41, MEMORY[0x277D839F8]) & 1) == 0)
      {
LABEL_32:

        v58 = *(v12 + 8);
        v58(v16, v10);
        v59 = sub_22C9ECB54();
        (v58)(v59);
        goto LABEL_18;
      }

      v43 = v62;
      v44 = sub_22C9ECAE4();
      v45 = [a1 decodeObjectForKey_];

      if (v45)
      {
        sub_22CA21130();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_22C9E0608();
      }

      sub_22C9E04DC();
      if (v49)
      {
        if (sub_22C9ECB80(v46, v47, v48, MEMORY[0x277D839F8]))
        {
          v50 = v62;
          v51 = sub_22C9ECB30();
          v52 = [a1 decodeInt32ForKey_];

          *&v1[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_workoutType] = v52;
          v53 = v19;
          v54 = v60;
          v60(&v1[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_startDate], v53, v10);
          v54(&v1[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_endDate], v16, v10);
          *&v1[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_latitude] = v43;
          *&v1[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_longitude] = v50;
          v55 = type metadata accessor for MSWorkoutItem(0);
          v61.receiver = v1;
          v61.super_class = v55;
          v35 = objc_msgSendSuper2(&v61, sel_init);

          return v35;
        }

        goto LABEL_32;
      }
    }

    v56 = *(v12 + 8);
    v56(v16, v10);
    v57 = sub_22C9ECB54();
    (v56)(v57);
    v24 = &unk_27D9E4D60;
    v25 = &unk_22CA22BE0;
    v26 = v63;
    goto LABEL_17;
  }

LABEL_8:
  v24 = &unk_27D9E4F00;
  v25 = &unk_22CA232D0;
  v26 = v9;
LABEL_17:
  sub_22C9DF60C(v26, v24, v25);
LABEL_18:
  type metadata accessor for MSWorkoutItem(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_22C9EA5A8(int a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 15:
    case 17:
    case 20:
    case 30:
    case 33:
    case 50:
    case 60:
    case 63:
    case 70:
    case 71:
    case 83:
      sub_22C9DE260();
      break;
    default:
      return;
  }
}

uint64_t sub_22C9EAE40()
{
  sub_22CA20E40();
  v1 = v0;
  sub_22C9DE260();
  v4 = v2 == 0xD000000000000010 && v3 == v1;
  if (v4 || (v5 = v2, (sub_22C9ECA98(0xD000000000000010, v3) & 1) != 0))
  {

    return 1;
  }

  else
  {
    v7 = v5 == 0x79726568637261 && v1 == 0xE700000000000000;
    if (v7 || (sub_22C9ECA58(0x79726568637261) & 1) != 0)
    {

      return 2;
    }

    else
    {
      sub_22C9DE260();
      v9 = v5 == 0xD000000000000012 && v8 == v1;
      if (v9 || (sub_22C9ECA98(0xD000000000000012, v8) & 1) != 0)
      {

        return 3;
      }

      else
      {
        v10 = v5 == 0x6F746E696D646162 && v1 == 0xE90000000000006ELL;
        if (v10 || (sub_22C9ECA98(0x6F746E696D646162, 0xE90000000000006ELL) & 1) != 0)
        {

          return 4;
        }

        else
        {
          v11 = sub_22C9ECAD4(0x65736162u);
          v12 = v4 && v1 == 0xE800000000000000;
          if (v12 || (sub_22C9ECA98(v11, 0xE800000000000000) & 1) != 0)
          {

            return 5;
          }

          else
          {
            v13 = v5 == 0x616274656B736162 && v1 == 0xEA00000000006C6CLL;
            if (v13 || (sub_22C9ECA98(0x616274656B736162, 0xEA00000000006C6CLL) & 1) != 0)
            {

              return 6;
            }

            else
            {
              v14 = sub_22C9ECA48(0x6C776F62u);
              v15 = v4 && v1 == 0xE700000000000000;
              if (v15 || (sub_22C9ECA58(v14) & 1) != 0)
              {

                return 7;
              }

              else
              {
                v16 = v5 == 0x676E69786F62 && v1 == 0xE600000000000000;
                if (v16 || (sub_22C9ECA78(0x676E69786F62) & 1) != 0)
                {

                  return 8;
                }

                else
                {
                  v17 = v5 == 0x676E69626D696C63 && v1 == 0xE800000000000000;
                  if (v17 || (sub_22C9ECA98(0x676E69626D696C63, 0xE800000000000000) & 1) != 0)
                  {

                    return 9;
                  }

                  else
                  {
                    v18 = v5 == 0x74656B63697263 && v1 == 0xE700000000000000;
                    if (v18 || (sub_22C9ECA58(0x74656B63697263) & 1) != 0)
                    {

                      return 10;
                    }

                    else
                    {
                      v19 = v5 == 0x61727473736F7263 && v1 == 0xED0000676E696E69;
                      if (v19 || (sub_22C9ECA98(0x61727473736F7263, 0xED0000676E696E69) & 1) != 0)
                      {

                        return 11;
                      }

                      else
                      {
                        v20 = sub_22C9ECA48(0x6C727563u);
                        v21 = v4 && v1 == 0xE700000000000000;
                        if (v21 || (sub_22C9ECA58(v20) & 1) != 0)
                        {

                          return 12;
                        }

                        else
                        {
                          v22 = sub_22C9ECA48(0x6C637963u);
                          v23 = v4 && v1 == 0xE700000000000000;
                          if (v23 || (sub_22C9ECA58(v22) & 1) != 0)
                          {

                            return 13;
                          }

                          else
                          {
                            v24 = v5 == 0x65636E6164 && v1 == 0xE500000000000000;
                            if (v24 || (sub_22C9ECA98(0x65636E6164, 0xE500000000000000) & 1) != 0)
                            {

                              return 14;
                            }

                            else
                            {
                              sub_22C9DE260();
                              v26 = v5 == 0xD000000000000015 && v25 == v1;
                              if (v26 || (sub_22C9ECA98(0xD000000000000015, v25) & 1) != 0)
                              {

                                return 15;
                              }

                              else
                              {
                                v27 = v5 == 0x63697470696C6C65 && v1 == 0xEA00000000006C61;
                                if (v27 || (sub_22C9ECA98(0x63697470696C6C65, 0xEA00000000006C61) & 1) != 0)
                                {

                                  return 16;
                                }

                                else
                                {
                                  sub_22C9DE260();
                                  v29 = v5 == 0xD000000000000010 && v28 == v1;
                                  if (v29 || (sub_22C9ECA98(0xD000000000000010, v28) & 1) != 0)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v30 = sub_22C9ECA48(0x636E6566u);
                                    v31 = v4 && v1 == 0xE700000000000000;
                                    if (v31 || (sub_22C9ECA58(v30) & 1) != 0)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v32 = sub_22C9ECA48(0x68736966u);
                                      v33 = v4 && v1 == 0xE700000000000000;
                                      if (v33 || (sub_22C9ECA58(v32) & 1) != 0)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        sub_22C9DE260();
                                        v35 = v5 == 0xD00000000000001ALL && v34 == v1;
                                        if (v35 || (sub_22C9ECA98(0xD00000000000001ALL, v34) & 1) != 0)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v36 = v5 == 1718382439 && v1 == 0xE400000000000000;
                                          if (v36 || (sub_22C9ECA98(1718382439, 0xE400000000000000) & 1) != 0)
                                          {

                                            return 21;
                                          }

                                          else
                                          {
                                            v37 = v5 == 0x697473616E6D7967 && v1 == 0xEA00000000007363;
                                            if (v37 || (sub_22C9ECA98(0x697473616E6D7967, 0xEA00000000007363) & 1) != 0)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v38 = sub_22C9ECAD4(0x646E6168u);
                                              v39 = v4 && v1 == 0xE800000000000000;
                                              if (v39 || (sub_22C9ECA98(v38, 0xE800000000000000) & 1) != 0)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v40 = v5 == 0x676E696B6968 && v1 == 0xE600000000000000;
                                                if (v40 || (sub_22C9ECA78(0x676E696B6968) & 1) != 0)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v41 = v5 == 0x79656B636F68 && v1 == 0xE600000000000000;
                                                  if (v41 || (sub_22C9ECA78(0x79656B636F68) & 1) != 0)
                                                  {

                                                    return 25;
                                                  }

                                                  else
                                                  {
                                                    v42 = sub_22C9ECA48(0x746E7568u);
                                                    v43 = v4 && v1 == 0xE700000000000000;
                                                    if (v43 || (sub_22C9ECA58(v42) & 1) != 0)
                                                    {

                                                      return 26;
                                                    }

                                                    else
                                                    {
                                                      v44 = v5 == 0x6573736F7263616CLL && v1 == 0xE800000000000000;
                                                      if (v44 || (sub_22C9ECA98(0x6573736F7263616CLL, 0xE800000000000000) & 1) != 0)
                                                      {

                                                        return 27;
                                                      }

                                                      else
                                                      {
                                                        v45 = v5 == 0x616C61697472616DLL && v1 == 0xEB00000000737472;
                                                        if (v45 || (sub_22C9ECA98(0x616C61697472616DLL, 0xEB00000000737472) & 1) != 0)
                                                        {

                                                          return 28;
                                                        }

                                                        else
                                                        {
                                                          v46 = v5 == 0x62646E61646E696DLL && v1 == 0xEB0000000079646FLL;
                                                          if (v46 || (sub_22C9ECA98(0x62646E61646E696DLL, 0xEB0000000079646FLL) & 1) != 0)
                                                          {

                                                            return 29;
                                                          }

                                                          else
                                                          {
                                                            sub_22C9DE260();
                                                            v48 = v5 == 0xD00000000000001CLL && v47 == v1;
                                                            if (v48 || (sub_22C9ECA98(0xD00000000000001CLL, v47) & 1) != 0)
                                                            {

                                                              return 30;
                                                            }

                                                            else
                                                            {
                                                              v49 = v5 == 0x7073656C64646170 && v1 == 0xEC0000007374726FLL;
                                                              if (v49 || (sub_22C9ECA98(0x7073656C64646170, 0xEC0000007374726FLL) & 1) != 0)
                                                              {

                                                                return 31;
                                                              }

                                                              else
                                                              {
                                                                v50 = v5 == 2036427888 && v1 == 0xE400000000000000;
                                                                if (v50 || (sub_22C9ECA98(2036427888, 0xE400000000000000) & 1) != 0)
                                                                {

                                                                  return 32;
                                                                }

                                                                else
                                                                {
                                                                  sub_22C9DE260();
                                                                  v52 = v5 == 0xD000000000000016 && v51 == v1;
                                                                  if (v52 || (sub_22C9ECA98(0xD000000000000016, v51) & 1) != 0)
                                                                  {

                                                                    return 33;
                                                                  }

                                                                  else
                                                                  {
                                                                    v53 = v5 == 0x6274657571636172 && v1 == 0xEB000000006C6C61;
                                                                    if (v53 || (sub_22C9ECA98(0x6274657571636172, 0xEB000000006C6C61) & 1) != 0)
                                                                    {

                                                                      return 34;
                                                                    }

                                                                    else
                                                                    {
                                                                      v54 = v5 == 0x676E69776F72 && v1 == 0xE600000000000000;
                                                                      if (v54 || (sub_22C9ECA78(0x676E69776F72) & 1) != 0)
                                                                      {

                                                                        return 35;
                                                                      }

                                                                      else
                                                                      {
                                                                        v55 = v5 == 0x7962677572 && v1 == 0xE500000000000000;
                                                                        if (v55 || (sub_22C9ECA98(0x7962677572, 0xE500000000000000) & 1) != 0)
                                                                        {

                                                                          return 36;
                                                                        }

                                                                        else
                                                                        {
                                                                          v56 = sub_22C9ECA48(0x6E6E7572u);
                                                                          v57 = v4 && v1 == 0xE700000000000000;
                                                                          if (v57 || (sub_22C9ECA58(v56) & 1) != 0)
                                                                          {

                                                                            return 37;
                                                                          }

                                                                          else
                                                                          {
                                                                            v58 = sub_22C9ECA48(0x6C696173u);
                                                                            v59 = v4 && v1 == 0xE700000000000000;
                                                                            if (v59 || (sub_22C9ECA58(v58) & 1) != 0)
                                                                            {

                                                                              return 38;
                                                                            }

                                                                            else
                                                                            {
                                                                              v60 = v5 == 0x73676E6974616B73 && v1 == 0xED00007374726F70;
                                                                              if (v60 || (sub_22C9ECA98(0x73676E6974616B73, 0xED00007374726F70) & 1) != 0)
                                                                              {

                                                                                return 39;
                                                                              }

                                                                              else
                                                                              {
                                                                                v61 = v5 == 0x726F7073776F6E73 && v1 == 0xEA00000000007374;
                                                                                if (v61 || (sub_22C9ECA98(0x726F7073776F6E73, 0xEA00000000007374) & 1) != 0)
                                                                                {

                                                                                  return 40;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v62 = v5 == 0x6C6C69686E776F64 && v1 == 0xEE00676E69696B73;
                                                                                  if (v62 || (sub_22C9ECA98(0x6C6C69686E776F64, 0xEE00676E69696B73) & 1) != 0)
                                                                                  {

                                                                                    return 61;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v63 = v5 == 0x726563636F73 && v1 == 0xE600000000000000;
                                                                                    if (v63 || (sub_22C9ECA78(0x726563636F73) & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v64 = sub_22C9ECAD4(0x74666F73u);
                                                                                      v65 = v4 && v1 == 0xE800000000000000;
                                                                                      if (v65 || (sub_22C9ECA98(v64, 0xE800000000000000) & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v66 = v5 == 0x687361757173 && v1 == 0xE600000000000000;
                                                                                        if (v66 || (sub_22C9ECA78(0x687361757173) & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v67 = v5 == 0x696C637269617473 && v1 == 0xED0000676E69626DLL;
                                                                                          if (v67 || (sub_22C9ECA98(0x696C637269617473, 0xED0000676E69626DLL) & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v68 = v5 == 0x73676E6966727573 && v1 == 0xED00007374726F70;
                                                                                            if (v68 || (sub_22C9ECA98(0x73676E6966727573, 0xED00007374726F70) & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v69 = v5 == 0x676E696D6D697773 && v1 == 0xE800000000000000;
                                                                                              if (v69 || (sub_22C9ECA98(0x676E696D6D697773, 0xE800000000000000) & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v70 = v5 == 0x6E6574656C626174 && v1 == 0xEB0000000073696ELL;
                                                                                                if (v70 || (sub_22C9ECA98(0x6E6574656C626174, 0xEB0000000073696ELL) & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v71 = v5 == 0x73696E6E6574 && v1 == 0xE600000000000000;
                                                                                                  if (v71 || (sub_22C9ECA78(0x73696E6E6574) & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v72 = v5 == 0x646E616B63617274 && v1 == 0xED0000646C656966;
                                                                                                    if (v72 || (sub_22C9ECA98(0x646E616B63617274, 0xED0000646C656966) & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      sub_22C9DE260();
                                                                                                      v74 = v5 == 0xD00000000000001BLL && v73 == v1;
                                                                                                      if (v74 || (sub_22C9ECA98(0xD00000000000001BLL, v73) & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v75 = v5 == 0x616279656C6C6F76 && v1 == 0xEA00000000006C6CLL;
                                                                                                        if (v75 || (sub_22C9ECA98(0x616279656C6C6F76, 0xEA00000000006C6CLL) & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v76 = sub_22C9ECA48(0x6B6C6177u);
                                                                                                          v77 = v4 && v1 == 0xE700000000000000;
                                                                                                          if (v77 || (sub_22C9ECA58(v76) & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v78 = v5 == 0x7469667265746177 && v1 == 0xEC0000007373656ELL;
                                                                                                            if (v78 || (sub_22C9ECA98(0x7469667265746177, 0xEC0000007373656ELL) & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v79 = v5 == 0x6C6F707265746177 && v1 == 0xE90000000000006FLL;
                                                                                                              if (v79 || (sub_22C9ECA98(0x6C6F707265746177, 0xE90000000000006FLL) & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v80 = v5 == 0x6F70737265746177 && v1 == 0xEB00000000737472;
                                                                                                                if (v80 || (sub_22C9ECA98(0x6F70737265746177, 0xEB00000000737472) & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v81 = v5 == 0x6E696C7473657277 && v1 == 0xE900000000000067;
                                                                                                                  if (v81 || (sub_22C9ECA98(0x6E696C7473657277, 0xE900000000000067) & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v82 = v5 == 1634168697 && v1 == 0xE400000000000000;
                                                                                                                    if (v82 || (sub_22C9ECA98(1634168697, 0xE400000000000000) & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v83 = v5 == 0x6572726162 && v1 == 0xE500000000000000;
                                                                                                                      if (v83 || (sub_22C9ECA98(0x6572726162, 0xE500000000000000) & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v84 = v5 == 0x6961727465726F63 && v1 == 0xEC000000676E696ELL;
                                                                                                                        if (v84 || (sub_22C9ECA98(0x6961727465726F63, 0xEC000000676E696ELL) & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          sub_22C9DE260();
                                                                                                                          v86 = v5 == 0xD000000000000012 && v85 == v1;
                                                                                                                          if (v86 || (sub_22C9ECA98(0xD000000000000012, v85) & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v87 = v5 == 0x6C69626978656C66 && v1 == 0xEB00000000797469;
                                                                                                                            if (v87 || (sub_22C9ECA98(0x6C69626978656C66, 0xEB00000000797469) & 1) != 0)
                                                                                                                            {

                                                                                                                              return 62;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              sub_22C9DE260();
                                                                                                                              v89 = v5 == 0xD00000000000001DLL && v88 == v1;
                                                                                                                              if (v89 || (sub_22C9ECA98(0xD00000000000001DLL, v88) & 1) != 0)
                                                                                                                              {

                                                                                                                                return 63;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v90 = v5 == 0x65706F72706D756ALL && v1 == 0xE800000000000000;
                                                                                                                                if (v90 || (sub_22C9ECA98(0x65706F72706D756ALL, 0xE800000000000000) & 1) != 0)
                                                                                                                                {

                                                                                                                                  return 64;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v91 = v5 == 0x69786F626B63696BLL && v1 == 0xEA0000000000676ELL;
                                                                                                                                  if (v91 || (sub_22C9ECA98(0x69786F626B63696BLL, 0xEA0000000000676ELL) & 1) != 0)
                                                                                                                                  {

                                                                                                                                    return 65;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v92 = v5 == 0x736574616C6970 && v1 == 0xE700000000000000;
                                                                                                                                    if (v92 || (sub_22C9ECA58(0x736574616C6970) & 1) != 0)
                                                                                                                                    {

                                                                                                                                      return 66;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v93 = v5 == 0x72616F62776F6E73 && v1 == 0xEC000000676E6964;
                                                                                                                                      if (v93 || (sub_22C9ECA98(0x72616F62776F6E73, 0xEC000000676E6964) & 1) != 0)
                                                                                                                                      {

                                                                                                                                        return 67;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v94 = v5 == 0x737269617473 && v1 == 0xE600000000000000;
                                                                                                                                        if (v94 || (sub_22C9ECA78(0x737269617473) & 1) != 0)
                                                                                                                                        {

                                                                                                                                          return 68;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v95 = v5 == 0x6961727470657473 && v1 == 0xEC000000676E696ELL;
                                                                                                                                          if (v95 || (sub_22C9ECA98(0x6961727470657473, 0xEC000000676E696ELL) & 1) != 0)
                                                                                                                                          {

                                                                                                                                            return 69;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            sub_22C9DE260();
                                                                                                                                            v97 = v5 == 0xD000000000000012 && v96 == v1;
                                                                                                                                            if (v97 || (sub_22C9ECA98(0xD000000000000012, v96) & 1) != 0)
                                                                                                                                            {

                                                                                                                                              return 70;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              sub_22C9DE260();
                                                                                                                                              v99 = v5 == 0xD000000000000011 && v98 == v1;
                                                                                                                                              if (v99 || (sub_22C9ECA98(0xD000000000000011, v98) & 1) != 0)
                                                                                                                                              {

                                                                                                                                                return 71;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v100 = v5 == 0x696863696174 && v1 == 0xE600000000000000;
                                                                                                                                                if (v100 || (sub_22C9ECA78(0x696863696174) & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  return 72;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v101 = v5 == 0x726163646578696DLL && v1 == 0xEB000000006F6964;
                                                                                                                                                  if (v101 || (sub_22C9ECA98(0x726163646578696DLL, 0xEB000000006F6964) & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    return 73;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v102 = v5 == 0x6C637963646E6168 && v1 == 0xEB00000000676E69;
                                                                                                                                                    if (v102 || (sub_22C9ECA98(0x6C637963646E6168, 0xEB00000000676E69) & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      return 74;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v103 = v5 == 0x726F707363736964 && v1 == 0xEA00000000007374;
                                                                                                                                                      if (v103 || (sub_22C9ECA98(0x726F707363736964, 0xEA00000000007374) & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        return 75;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v104 = v5 == 0x677373656E746966 && v1 == 0xED0000676E696D61;
                                                                                                                                                        if (v104 || (sub_22C9ECA98(0x677373656E746966, 0xED0000676E696D61) & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          return 76;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v105 = v5 == 0x61646F6964726163 && v1 == 0xEB0000000065636ELL;
                                                                                                                                                          if (v105 || (sub_22C9ECA98(0x61646F6964726163, 0xEB0000000065636ELL) & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            return 77;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v106 = v5 == 0x61646C6169636F73 && v1 == 0xEB0000000065636ELL;
                                                                                                                                                            if (v106 || (sub_22C9ECA98(0x61646C6169636F73, 0xEB0000000065636ELL) & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              return 78;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v107 = v5 == 0x6162656C6B636970 && v1 == 0xEA00000000006C6CLL;
                                                                                                                                                              if (v107 || (sub_22C9ECA98(0x6162656C6B636970, 0xEA00000000006C6CLL) & 1) != 0)
                                                                                                                                                              {

                                                                                                                                                                return 79;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v108 = v5 == 0x6E776F646C6F6F63 && v1 == 0xE800000000000000;
                                                                                                                                                                if (v108 || (sub_22C9ECA98(0x6E776F646C6F6F63, 0xE800000000000000) & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  return 80;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v109 = v5 == 0x656B69626D697773 && v1 == 0xEB000000006E7572;
                                                                                                                                                                  if (v109 || (sub_22C9ECA98(0x656B69626D697773, 0xEB000000006E7572) & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    return 81;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v110 = v5 == 0x697469736E617272 && v1 == 0xEA00000000006E6FLL;
                                                                                                                                                                    if (v110 || (sub_22C9ECA98(0x697469736E617272, 0xEA00000000006E6FLL) & 1) != 0)
                                                                                                                                                                    {

                                                                                                                                                                      return 82;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      sub_22C9DE260();
                                                                                                                                                                      v112 = v5 == 0xD000000000000010 && v111 == v1;
                                                                                                                                                                      if (v112 || (sub_22C9ECA98(0xD000000000000010, v111) & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        return 83;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v113 = v5 == 0x76697463616C6C61 && v1 == 0xED00007365697469;
                                                                                                                                                                        if (v113 || (sub_22C9ECA98(0x76697463616C6C61, 0xED00007365697469) & 1) != 0 || (v5 == 7958113 ? (v114 = v1 == 0xE300000000000000) : (v114 = 0), v114 || (sub_22C9ECA98(7958113, 0xE300000000000000) & 1) != 0))
                                                                                                                                                                        {

                                                                                                                                                                          return 84;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          if (v5 != 0x726568746FLL || v1 != 0xE500000000000000)
                                                                                                                                                                          {
                                                                                                                                                                            sub_22C9ECA98(0x726568746FLL, 0xE500000000000000);
                                                                                                                                                                          }

                                                                                                                                                                          return 3000;
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
}

uint64_t sub_22C9EC220()
{
  v1 = v0;
  v2 = sub_22CA20A50();
  sub_22C9DAE90();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_22CA20A30();
  v9 = sub_22CA20A40();
  (*(v4 + 8))(v7, v2);
  [v8 setLocale_];

  [v8 setDateStyle_];
  [v8 setTimeStyle_];
  v10 = sub_22CA209A0();
  v11 = [v8 stringFromDate_];

  v12 = sub_22CA20E20();
  v14 = v13;

  v15 = sub_22CA209A0();
  v16 = [v8 stringFromDate_];

  v17 = sub_22CA20E20();
  v19 = v18;

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_22CA211A0();
  sub_22C9DE260();
  MEMORY[0x2318BA9C0](0xD000000000000015);
  type metadata accessor for MSWorkoutItem(0);
  sub_22C9EA5A8(*(v1 + OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_workoutType));
  MEMORY[0x2318BA9C0]();

  MEMORY[0x2318BA9C0](0x3A7472617453202CLL, 0xE900000000000020);
  MEMORY[0x2318BA9C0](v12, v14);

  MEMORY[0x2318BA9C0](0x203A646E45202CLL, 0xE700000000000000);
  MEMORY[0x2318BA9C0](v17, v19);

  MEMORY[0x2318BA9C0](0x203A74616C202CLL, 0xE700000000000000);
  sub_22CA20FA0();
  MEMORY[0x2318BA9C0](0x203A6E6F6C202CLL, 0xE700000000000000);
  sub_22CA20FA0();
  MEMORY[0x2318BA9C0](10, 0xE100000000000000);

  return v21[0];
}

id MSWorkoutItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSWorkoutItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSWorkoutItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MSWorkoutActivityType.distance(to:)(int a1, int a2)
{
  v2 = __OFSUB__(a1, a2);
  result = (a1 - a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t MSWorkoutActivityType.advanced(by:)(int a1, int a2)
{
  v2 = __OFADD__(a2, a1);
  result = (a2 + a1);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C9EC6FC@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = MSWorkoutActivityType.distance(to:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22C9EC72C@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = MSWorkoutActivityType.advanced(by:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_22C9EC7BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MSWorkoutActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_DWORD *sub_22C9EC800(_DWORD *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  if (__OFADD__(a4, a6))
  {
    __break(1u);
  }

  else
  {
    *result = a4 + a6;
    return 0;
  }

  return result;
}

BOOL sub_22C9EC828(_BOOL8 result, int a2)
{
  if (!__OFSUB__(a2, result))
  {
    return a2 - result > 0;
  }

  __break(1u);
  return result;
}

BOOL sub_22C9EC84C(_BOOL8 result, int a2)
{
  if (!__OFSUB__(result, a2))
  {
    return result - a2 < 1;
  }

  __break(1u);
  return result;
}

BOOL sub_22C9EC870(_BOOL8 result, int a2)
{
  if (!__OFSUB__(a2, result))
  {
    return a2 - result < 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C9EC89C(uint64_t a1)
{
  result = sub_22CA209F0();
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

BOOL sub_22C9ECA30(_BOOL8 result, int a2)
{
  if (!__OFSUB__(result, a2))
  {
    return result - a2 > 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C9ECA58(uint64_t a1)
{

  return sub_22CA21360();
}

uint64_t sub_22C9ECA78(uint64_t a1)
{

  return sub_22CA21360();
}

uint64_t sub_22C9ECA98(uint64_t a1, uint64_t a2)
{

  return sub_22CA21360();
}

id sub_22C9ECAB4()
{

  return [v0 (v3 + 3842)];
}

uint64_t sub_22C9ECAE4()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9ECB0C()
{

  return sub_22CA20E10();
}

uint64_t sub_22C9ECB30()
{

  return sub_22CA20E10();
}

id sub_22C9ECB60()
{

  return [v0 (v2 + 2606)];
}

uint64_t sub_22C9ECB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_22C9ECBA0(uint64_t a1, uint64_t a2)
{

  return sub_22C9D0B98(a1, a2, 1, v2);
}

uint64_t sub_22C9ECBB8()
{
  sub_22CA20CA0();
  swift_allocObject();
  *(v0 + 16) = sub_22CA20C90();
  return v0;
}

uint64_t sub_22C9ECC64()
{
  sub_22C9D02E4(&qword_27D9E4EF0, &qword_22CA23CA0);
  swift_allocObject();
  return MEMORY[0x2318BA730]();
}

uint64_t sub_22C9ECCCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9ECC64();
  *a1 = result;
  return result;
}

uint64_t sub_22C9ECCF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for MSDropDuplicateSuggestions();
  v8 = sub_22C9ED078(&qword_27D9E4EF8, v7, type metadata accessor for MSDropDuplicateSuggestions, &unk_22CA23CA8);
  *v5 = v2;
  v5[1] = sub_22C9ECDEC;

  return MEMORY[0x28213B658](a1, a2, v6, v8);
}

uint64_t sub_22C9ECDEC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_22C9ED014()
{
  result = qword_27D9E4EE8;
  if (!qword_27D9E4EE8)
  {
    sub_22C9D0584(&qword_27D9E4EF0, &qword_22CA23CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9E4EE8);
  }

  return result;
}

uint64_t sub_22C9ED078(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id MSWorkoutMediaItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MSWorkoutMediaItem.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MSWorkoutMediaItem();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_22C9ED170@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MSWorkoutMediaItem();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  *a1 = result;
  return result;
}

id MSWorkoutMediaItem.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id MSWorkoutMediaItem.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MSWorkoutMediaItem();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_22C9ED2E0()
{
  sub_22C9D6F3C();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 32) = v3;
  *(v0 + 152) = v4;
  v5 = sub_22CA209F0();
  *(v0 + 56) = v5;
  *(v0 + 64) = *(v5 - 8);
  *(v0 + 72) = swift_task_alloc();
  *(v0 + 80) = swift_task_alloc();
  *(v0 + 88) = swift_task_alloc();
  *(v0 + 96) = swift_task_alloc();
  sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C9ED40C, 0, 0);
}

uint64_t sub_22C9ED40C()
{
  sub_22C9D6F3C();
  *(v0 + 120) = [objc_allocWithZone(type metadata accessor for MSWorkoutManager()) init];
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_22C9ED4C0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 152);

  return sub_22C9FB214(v4, v2, v3);
}

uint64_t sub_22C9ED4C0()
{
  sub_22C9D6F3C();
  v2 = *v1;
  *(v2 + 136) = v3;
  *(v2 + 144) = v0;

  if (v0)
  {
    v4 = sub_22C9EDB20;
  }

  else
  {
    v4 = sub_22C9ED5D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22C9ED5D0(uint64_t a1, uint64_t a2)
{
  v67 = v2;
  v3 = *(v2 + 17);
  if (!v3)
  {
    if (qword_27D9E4720 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  type metadata accessor for MSBiomeMediaReader();
  swift_initStackObject();
  v4 = sub_22C9E3CB8(v3);
  if (!v4)
  {
    v6 = MEMORY[0x277D84F98];
LABEL_21:
    v50 = *(v2 + 15);

    goto LABEL_24;
  }

  if (v4 < 1)
  {
    goto LABEL_28;
  }

  v5 = 0;
  v56 = (*(v2 + 8) + 16);
  v57 = *(v2 + 17) & 0xC000000000000001;
  v6 = MEMORY[0x277D84F98];
  v54 = v4;
  v55 = v3;
  v58 = v2;
  while (1)
  {
    if (v57)
    {
      v7 = MEMORY[0x2318BAD10](v5, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v10 = *(v2 + 13);
    v9 = *(v2 + 14);
    v11 = *(v2 + 12);
    v12 = *(v2 + 7);
    v63 = *(v2 + 5);
    v64 = *(v2 + 11);
    v61 = *(v2 + 4);
    v2 = *v56;
    (*v56)(v9, &v7[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_startDate], v12);
    sub_22C9D0B98(v9, 0, 1, v12);
    v60 = v8;
    v2(v10, &v8[OBJC_IVAR____TtC14MediaSuggester13MSWorkoutItem_endDate], v12);
    sub_22C9D0B98(v10, 0, 1, v12);
    sub_22C9EFAC4();
    v14 = v13;
    sub_22C9D6C44(v10, &unk_27D9E4F00, &unk_22CA232D0);
    sub_22C9D6C44(v9, &unk_27D9E4F00, &unk_22CA232D0);
    v2(v11, v61, v12);
    v2(v64, v63, v12);
    v15 = objc_allocWithZone(type metadata accessor for MSMediaContainer(0));
    v16 = MSMediaContainer.init(nowPlayingEvents:playMediaIntents:playMediaAppIntents:startDate:endDate:)(MEMORY[0x277D84F90], v14, MEMORY[0x277D84F90], v11, v64);
    v17 = v16;
    if ((v6 & 0xC000000000000001) == 0)
    {
      v21 = v16;
      goto LABEL_15;
    }

    v18 = v6 < 0 ? v6 : v6 & 0xFFFFFFFFFFFFFF8;
    v19 = v16;
    v20 = sub_22CA21290();
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v6 = sub_22C9EDD24(v18, v20 + 1);
LABEL_15:
    ++v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v6;
    sub_22C9EDF18(v17, v60, isUniquelyReferenced_nonNull_native);

    v3 = v55;
    v2 = v58;
    if (v54 == v5)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_22C9EE79C(&qword_27D9E4720);
LABEL_18:
  v23 = v2;
  v26 = v2 + 72;
  v25 = *(v2 + 9);
  v24 = *(v26 + 1);
  v27 = *(v23 + 7);
  v28 = *(v23 + 8);
  v30 = *(v23 + 4);
  v29 = *(v23 + 5);
  v31 = sub_22CA20B10();
  sub_22C9D0494(v31, &unk_27D9E8068);
  v32 = *(v28 + 16);
  v32(v24, v30, v27);
  v32(v25, v29, v27);
  v33 = sub_22CA20AF0();
  v34 = sub_22CA20FF0();
  v35 = os_log_type_enabled(v33, v34);
  v37 = *(v23 + 9);
  v36 = *(v23 + 10);
  v39 = *(v23 + 7);
  v38 = *(v23 + 8);
  v59 = v23;
  if (v35)
  {
    v65 = *(v23 + 15);
    v40 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v40 = 136315394;
    sub_22C9DDF28();
    v62 = v34;
    sub_22C9EE828();
    v41 = sub_22CA21340();
    v43 = v42;
    v44 = *(v38 + 8);
    v44(v36, v39);
    v45 = sub_22C9D60B0(v41, v43, &v66);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    sub_22C9EE828();
    v46 = sub_22CA21340();
    v48 = v47;
    v44(v37, v39);
    v49 = sub_22C9D60B0(v46, v48, &v66);

    *(v40 + 14) = v49;
    _os_log_impl(&dword_22C9CA000, v33, v62, "No workouts between %s to %s", v40, 0x16u);
    swift_arrayDestroy();
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  else
  {

    v51 = *(v38 + 8);
    v51(v37, v39);
    v51(v36, v39);
  }

  v6 = MEMORY[0x277D84F98];
  v2 = v59;
LABEL_24:

  v52 = *(v2 + 1);

  return v52(v6);
}

uint64_t sub_22C9EDB20(uint64_t a1, uint64_t a2)
{
  if (qword_27D9E4720 != -1)
  {
    sub_22C9EE79C(&qword_27D9E4720);
  }

  v3 = v2[18];
  v4 = sub_22CA20B10();
  sub_22C9D0494(v4, &unk_27D9E8068);
  v5 = v3;
  v6 = sub_22CA20AF0();
  v7 = sub_22CA21000();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v2[18];
  v10 = v2[15];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22C9CA000, v6, v7, "While accessing workout media, encountered error: %@", v11, 0xCu);
    sub_22C9D6C44(v12, &unk_27D9E5090, &qword_22CA22E00);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  else
  {
  }

  v15 = v2[1];
  v16 = MEMORY[0x277D84F98];

  return v15(v16);
}

id MSWorkoutMediaItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSWorkoutMediaItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22C9EDD24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22C9D02E4(&qword_27D9E4F30, &qword_22CA23D50);
    v2 = sub_22CA21300();
    v17 = v2;
    sub_22CA21280();
    while (1)
    {
      v3 = sub_22CA212B0();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      type metadata accessor for MSWorkoutItem(0);
      swift_dynamicCast();
      type metadata accessor for MSMediaContainer(0);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_22CA0237C(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_22CA210C0();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22C9EDF18(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22C9FC020(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  sub_22C9D02E4(&qword_27D9E4F38, &qword_22CA23D58);
  if ((sub_22CA21250() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_22C9FC020(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for MSWorkoutItem(0);
    sub_22CA213C0();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  v13 = *v4;
  if (v10)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v9);
    *(v14 + 8 * v9) = a1;
  }

  else
  {
    sub_22CA0286C(v9, a2, a1, v13);

    v16 = a2;
  }
}

uint64_t dispatch thunk of MSWorkoutMediaItem.workoutMedia(for:from:to:allowedBundleIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22C9EE23C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22C9EE23C()
{
  sub_22C9D6F3C();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

void sub_22C9EE334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C9EE7EC(a1, a2, a3);
  sub_22C9EE768();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = sub_22C9D02E4(&qword_27D9E4F10, &qword_22CA23D30);
  if ((sub_22C9EE77C(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_22C9EE81C();
  v14 = sub_22C9FBFA8(v13, v4);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_22CA213C0();
    __break(1u);
    return;
  }

  v10 = v14;
LABEL_5:
  v16 = *v6;
  if (v11)
  {
    v17 = (*(v16 + 56) + 48 * v10);
    v18 = v3[2];
    v17[1] = v3[1];
    v17[2] = v18;
    *v17 = *v3;
    sub_22C9EE834();
  }

  else
  {
    sub_22CA028B0(v10, v5, v4, v3, v16);
    sub_22C9EE834();
  }
}

void sub_22C9EE43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C9EE7BC(a1, a2, a3);
  sub_22C9EE768();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  v11 = sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
  if ((sub_22C9EE77C(v11) & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_22C9EE81C();
  v13 = sub_22C9FBFA8(v12, v3);
  if ((v10 & 1) != (v14 & 1))
  {
LABEL_11:
    sub_22CA213C0();
    __break(1u);
    return;
  }

  v9 = v13;
LABEL_5:
  if (v10)
  {
    *(*(*v5 + 56) + 8 * v9) = v4;
    sub_22C9EE834();
  }

  else
  {
    v15 = sub_22C9EE828();
    sub_22CA028F4(v15, v16, v3, v4, v17);
    sub_22C9EE834();
  }
}

void sub_22C9EE518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C9EE7EC(a1, a2, a3);
  sub_22C9EE768();
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v6;
  v10 = v7;
  v11 = sub_22C9D02E4(&qword_27D9E4F28, &qword_22CA23D48);
  if ((sub_22C9EE77C(v11) & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_22C9EE81C();
  v13 = sub_22C9FBFA8(v12, v4);
  if ((v10 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_22CA213C0();
    __break(1u);
    return;
  }

  v9 = v13;
LABEL_5:
  if (v10)
  {
    sub_22C9D04CC((*(*v5 + 56) + 32 * v9));
    sub_22C9EE834();

    sub_22C9E9818(v15, v16);
  }

  else
  {
    v18 = sub_22C9EE828();
    sub_22CA02924(v18, v19, v4, v3, v20, v21);
    sub_22C9EE834();
  }
}

void sub_22C9EE614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C9EE7BC(a1, a2, a3);
  sub_22C9EE768();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  v12 = sub_22C9D02E4(&qword_27D9E4F18, &unk_22CA23D38);
  if ((sub_22C9EE77C(v12) & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_22C9EE81C();
  v15 = sub_22C9FBFA8(v14, v3);
  if ((v11 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_22CA213C0();
    __break(1u);
    return;
  }

  v10 = v15;
LABEL_5:
  if (v11)
  {
    sub_22C9EE834();

    sub_22C9EE70C(v17, v18);
  }

  else
  {
    sub_22CA02968(v10, v5, v3, v4, *v6, v13);
    sub_22C9EE834();
  }
}

uint64_t sub_22C9EE77C(uint64_t a1)
{

  return sub_22CA21250();
}

uint64_t sub_22C9EE79C(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_22C9EE7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C9FBFA8(a2, a3);
}

unint64_t sub_22C9EE7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C9FBFA8(a2, a3);
}

uint64_t sub_22C9EE848()
{
  v10 = MEMORY[0x277D84F90];
  sub_22CA0CB14(0, 2, 0);
  v0 = 0;
  v1 = 0;
  do
  {
    v2 = v0;
    v3 = sub_22C9FD610(*(&unk_283FCCC50 + v1 + 32));
    v5 = v4;
    v7 = *(v10 + 16);
    v6 = *(v10 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_22CA0CB14(v6 > 1, v7 + 1, 1);
    }

    *(v10 + 16) = v7 + 1;
    v8 = v10 + 16 * v7;
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    v0 = 1;
    v1 = 1u;
  }

  while ((v2 & 1) == 0);

  return sub_22CA1CB94(v10);
}

uint64_t sub_22C9EE934()
{
  sub_22CA20D10();
  swift_allocObject();
  *(v0 + 16) = sub_22CA20D00();
  return v0;
}

uint64_t sub_22C9EEA00()
{
  v1 = *(v0 + 192);
  [v1 requestDate];
  v2 = sub_22C9FDC00();
  v3 = sub_22C9FDEC0([v1 workoutType]);
  v4 = v2;
  v5 = v3;
  v6 = [objc_opt_self() featureValueWithInt64_];
  sub_22C9D02E4(&qword_27D9E4E48, &unk_22CA243F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CA22F80;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000022CA25BF0;
  v8 = sub_22C9EED80();
  *(inited + 48) = v4;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x800000022CA25C30;
  *(inited + 96) = v5;
  *(inited + 120) = v8;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = v8;
  *(inited + 136) = 0x800000022CA25C60;
  *(inited + 144) = v6;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = sub_22CA20DD0();
  v13 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v14 = sub_22CA17474(v12);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_22C9EEC44(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22C9ECDEC;

  return sub_22C9EE9E0(v2);
}

uint64_t sub_22C9EED40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MSSuggestionContextFeatureProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C9EED80()
{
  result = qword_27D9E4E90;
  if (!qword_27D9E4E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9E4E90);
  }

  return result;
}

uint64_t sub_22C9EEDC4(uint64_t a1)
{
  MEMORY[0x2318BA9F0]();
  sub_22C9F9AB4(*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_22CA20F00();
}

void sub_22C9EEE1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = 0uLL;
  if (*(a3 + 16))
  {
    v7 = sub_22C9FBFA8(a1, a2);
    if (v8)
    {
      v9 = *(a3 + 56) + 48 * v7;
      v13 = *(v9 + 24);
      v14 = *(v9 + 8);
      v10 = *(v9 + 40);

      v12 = v13;
      v5 = v14;
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v12 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v12 = 0uLL;
  }

  *a4 = v11;
  *(a4 + 8) = v5;
  *(a4 + 24) = v12;
  *(a4 + 40) = v10;
}

uint64_t sub_22C9EEEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_22C9FBFA8(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C9EEF20()
{
  result = sub_22CA20DD0();
  qword_28143A4D8 = result;
  return result;
}

void sub_22C9EEF68()
{
  sub_22C9DAEF8();
  v48 = v1;
  v3 = v2;
  v45 = v4;
  v5 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v6 = sub_22C9D71B4(v5);
  MEMORY[0x28223BE20](v6);
  sub_22C9E05C0();
  sub_22C9FB048();
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  v10 = qword_28143A4B0;
  if (qword_27D9E4740 != -1)
  {
    swift_once();
  }

  v11 = sub_22CA20AE0();
  v12 = sub_22C9D0494(v11, &unk_27D9E8098);
  sub_22C9FB008(v12);
  v13 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  sub_22C9FAF8C();
  sub_22CA20AC0();
  sub_22C9D7260();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = [BiomeLibrary() Media];
  v47 = v10;
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = [v16 NowPlaying];
  v46 = v17;
  swift_unknownObjectRelease();
  v18 = sub_22CA209F0();
  sub_22C9E054C();
  v20 = *(v19 + 16);
  v20(v9, v3, v18);
  sub_22C9FB030();
  sub_22C9D0B98(v21, v22, v23, v18);
  v20(v0, v45, v18);
  sub_22C9FB030();
  sub_22C9D0B98(v24, v25, v26, v18);
  v27 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FAFB4();
  v33 = sub_22C9F97A0(v28, v29, v30, v31, v32);
  sub_22C9D7260();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_22CA20DD0();
  v35 = [v17 publisherWithOptions_];
  sub_22C9FB018();
  v36 = swift_allocObject();
  *(v36 + 16) = v48;
  *(v36 + 24) = v34;
  v53 = sub_22C9F98DC;
  v54 = v36;
  v49 = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22C9FAF44;
  v52 = &unk_283FCD670;
  v37 = _Block_copy(&v49);

  v38 = [v35 filterWithIsIncluded_];
  _Block_release(v37);

  v53 = sub_22C9EF744;
  v54 = 0;
  v49 = MEMORY[0x277D85DD0];
  sub_22C9FAFA0();
  v51 = v39;
  v52 = &unk_283FCD698;
  v40 = _Block_copy(&v49);
  sub_22C9FB018();
  v41 = swift_allocObject();
  *(v41 + 16) = v14;
  *(v41 + 24) = v34;
  v53 = sub_22C9F98FC;
  v54 = v41;
  v49 = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22C9FAF40;
  v52 = &unk_283FCD6E8;
  v42 = _Block_copy(&v49);

  v43 = [v38 sinkWithCompletion:v40 receiveInput:v42];
  _Block_release(v42);
  _Block_release(v40);

  sub_22CA21070();
  sub_22C9FAF74();
  sub_22CA20AC0();

  sub_22C9FAFE8();
  swift_beginAccess();

  sub_22C9DAF14();
}

uint64_t sub_22C9EF474(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0xEE0044494F4E2E65;
  v6 = 0x6C7070612E6D6F63;
  v7 = [a1 eventBody];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 bundleID];
    if (v9)
    {
      v10 = v9;
      v6 = sub_22CA20E20();
      v5 = v11;
    }
  }

  if (!*(a2 + 16) || (v26[0] = v6, v26[1] = v5, MEMORY[0x28223BE20](v7), v25[2] = v26, , v12 = sub_22C9F9E10(sub_22C9FAEC4, v25, a2), , v12))
  {
    swift_beginAccess();
    v13 = *(a3 + 16);
    if (*(v13 + 16) && (, v14 = sub_22C9FBFA8(v6, v5), v16 = v15, , (v16 & 1) != 0))
    {
      v17 = *(*(v13 + 56) + 8 * v14);
      swift_endAccess();
      if (v17 >= 100)
      {
        if (qword_28143A1B8 != -1)
        {
          swift_once();
        }

        v18 = sub_22CA20B10();
        sub_22C9D0494(v18, &unk_28143A450);
        v19 = sub_22CA20AF0();
        v20 = sub_22CA21000();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v26[0] = v22;
          *v21 = 136315394;

          v23 = sub_22C9D60B0(v6, v5, v26);

          *(v21 + 4) = v23;
          *(v21 + 12) = 2048;
          *(v21 + 14) = 100;
          _os_log_impl(&dword_22C9CA000, v19, v20, "Ignoring nowPlayEvent from bundleID %s, reached the max records to fetch: (%ld)", v21, 0x16u);
          sub_22C9D04CC(v22);
          MEMORY[0x2318BB680](v22, -1, -1);
          MEMORY[0x2318BB680](v21, -1, -1);
        }

        return 0;
      }
    }

    else
    {
      swift_endAccess();
    }

    return 1;
  }

  return 0;
}

void sub_22C9EF750(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    v8 = 0xEE0044494F4E2E65;
    v44 = 0x6C7070612E6D6F63;
    v9 = [a1 eventBody];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 bundleID];
      if (v11)
      {
        v12 = v11;
        v44 = sub_22CA20E20();
        v8 = v13;
      }
    }

    if (![v7 duration])
    {

      return;
    }

    v14 = v7;
    if ([v14 playbackState] != 1)
    {

LABEL_18:
      return;
    }

    v15 = sub_22C9DDEC8(v14, &selRef_title);
    v42 = v16;
    v43 = v15;
    v17 = sub_22C9DDEC8(v14, &selRef_artist);
    v40 = v18;
    v41 = v17;
    v19 = sub_22C9DDEC8(v14, &selRef_album);
    v21 = v20;
    v22 = sub_22C9DDEC8(v14, &selRef_iTunesStoreIdentifier);
    v24 = v23;

    [a1 timestamp];
    v26 = v25;

    sub_22C9E2CF4(v43, v42, v41, v40, v19, v21, v22, v24, __src, v26, 0, 0, v44, v8);
    swift_beginAccess();
    sub_22C9F9A58(sub_22CA11AF8);
    v27 = *(*a2 + 16);
    sub_22C9F9AE0(v27, sub_22CA11AF8);
    v28 = *a2;
    *(v28 + 16) = v27 + 1;
    memcpy((v28 + 112 * v27 + 32), __src, 0x70uLL);
    swift_endAccess();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v29 = *a3;
    v45 = *a3;
    *a3 = 0x8000000000000000;
    v30 = sub_22C9FBFA8(v44, v8);
    if (__OFADD__(*(v29 + 16), (v31 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v32 = v30;
      v33 = v31;
      sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
      if (sub_22CA21250())
      {
        v34 = sub_22C9FBFA8(v44, v8);
        if ((v33 & 1) != (v35 & 1))
        {
LABEL_22:
          sub_22CA213C0();
          __break(1u);
          return;
        }

        v32 = v34;
      }

      *a3 = v45;
      if ((v33 & 1) == 0)
      {
        sub_22CA028F4(v32, v44, v8, 0, v45);
      }

      v36 = *(v45 + 56);
      v37 = *(v36 + 8 * v32);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        *(v36 + 8 * v32) = v39;
        swift_endAccess();

        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_22;
  }
}

void sub_22C9EFAC4()
{
  sub_22C9DAEF8();
  v43 = v0;
  v39 = v2;
  v40 = v1;
  v3 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v4 = sub_22C9D71B4(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C9E05C0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  v11 = qword_28143A4B0;
  if (qword_27D9E4758 != -1)
  {
    sub_22C9FAFF4();
    swift_once();
  }

  v12 = sub_22CA20AE0();
  v13 = sub_22C9D0494(v12, &unk_27D9E80E0);
  sub_22C9FB008(v13);
  v14 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  sub_22C9FAF8C();
  sub_22C9FB024();
  sub_22CA20AC0();
  sub_22C9D7260();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v44 = sub_22C9D0434(0, &qword_28143A310, 0x277CD3EC0);
  sub_22C9D02E4(&qword_27D9E4F50, &qword_22CA23E58);
  v16 = sub_22CA20E30();
  v18 = v17;
  v19 = [BiomeLibrary() App];
  v42 = v11;
  v20 = v19;
  swift_unknownObjectRelease();
  v21 = [v20 Intent];
  v41 = v21;
  swift_unknownObjectRelease();
  sub_22C9F992C(v39, v10);
  sub_22C9F992C(v40, v7);
  v22 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FB0E8();
  sub_22C9FAFB4();
  v28 = sub_22C9F97A0(v23, v24, v25, v26, v27);
  sub_22C9D7260();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_22CA20DD0();
  v30 = [v21 publisherWithOptions_];
  sub_22C9FB100();
  v31 = swift_allocObject();
  v31[2] = v16;
  v31[3] = v18;
  v31[4] = v43;
  v31[5] = v29;
  sub_22C9FAFC4(v31);
  v45 = 1107296256;
  v46 = sub_22C9FAF44;
  v47 = &unk_283FCD760;
  v32 = _Block_copy(&v44);

  v33 = [v30 filterWithIsIncluded_];
  _Block_release(v32);

  v48 = sub_22C9F02B8;
  v49 = 0;
  v44 = MEMORY[0x277D85DD0];
  sub_22C9FAFA0();
  v46 = v34;
  v47 = &unk_283FCD788;
  v35 = _Block_copy(&v44);
  sub_22C9FB018();
  v36 = swift_allocObject();
  *(v36 + 16) = v15;
  *(v36 + 24) = v29;
  v48 = sub_22C9F99A8;
  v49 = v36;
  v44 = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_22C9FAF40;
  v47 = &unk_283FCD7D8;
  v37 = _Block_copy(&v44);

  v38 = [v33 sinkWithCompletion:v35 receiveInput:v37];
  _Block_release(v37);
  _Block_release(v35);

  sub_22CA21070();
  sub_22C9FAF74();
  sub_22C9FB024();
  sub_22CA20AC0();

  sub_22C9FAFE8();
  swift_beginAccess();

  sub_22C9DAF14();
}

uint64_t sub_22C9EFF90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a1 eventBody];
  if (result)
  {
    v10 = result;
    v11 = sub_22C9DDEC8(result, &selRef_intentClass);
    if (v12)
    {
      if (v11 == a2 && v12 == a3)
      {
      }

      else
      {
        v14 = sub_22CA21360();

        if ((v14 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v15 = sub_22C9DDEC8(v10, &selRef_bundleID);
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0x6C7070612E6D6F63;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xEE0044494F4E2E65;
      }

      if (*(a4 + 16))
      {
        v32[0] = v17;
        v32[1] = v18;
        MEMORY[0x28223BE20](v15);
        v31[2] = v32;

        v19 = sub_22C9F9E10(sub_22C9FAEC4, v31, a4);

        if (!v19)
        {

          return 0;
        }
      }

      swift_beginAccess();
      v20 = *(a5 + 16);
      if (*(v20 + 16) && (, v21 = sub_22C9FBFA8(v17, v18), v23 = v22, , (v23 & 1) != 0))
      {
        v24 = *(*(v20 + 56) + 8 * v21);
        swift_endAccess();
        if (v24 >= 100)
        {
          if (qword_28143A1B8 != -1)
          {
            swift_once();
          }

          v25 = sub_22CA20B10();
          sub_22C9D0494(v25, &unk_28143A450);
          v26 = sub_22CA20AF0();
          v27 = sub_22CA21000();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v32[0] = v29;
            *v28 = 136315394;

            v30 = sub_22C9D60B0(v17, v18, v32);

            *(v28 + 4) = v30;
            *(v28 + 12) = 2048;
            *(v28 + 14) = 100;
            _os_log_impl(&dword_22C9CA000, v26, v27, "Ignoring playMediaIntents from bundleID %s, reached max records to fetch: (%ld)", v28, 0x16u);
            sub_22C9D04CC(v29);
            MEMORY[0x2318BB680](v29, -1, -1);
            MEMORY[0x2318BB680](v28, -1, -1);
          }

          goto LABEL_26;
        }
      }

      else
      {
        swift_endAccess();
      }

      return 1;
    }

LABEL_26:

    return 0;
  }

  return result;
}

void sub_22C9F02C4(void *a1, const char *a2, ...)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_28143A1B8 != -1)
    {
      sub_22C9FAF60();
      swift_once();
    }

    v5 = sub_22CA20B10();
    sub_22C9D0494(v5, &unk_28143A450);
    v6 = v4;
    oslog = sub_22CA20AF0();
    v7 = sub_22CA21000();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = sub_22C9D7164();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v6;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_22C9CA000, oslog, v7, a2, v8, 0xCu);
      sub_22C9DF60C(v9, &unk_27D9E5090, &qword_22CA22E00);
      sub_22C9D70C0();
      sub_22C9D70C0();
      v6 = oslog;
      oslog = v10;
    }
  }
}

void sub_22C9F043C(void *a1, void *a2, uint64_t *a3)
{
  v7 = [a1 eventBody];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = sub_22C9FA314(v7);
  if (v10 >> 60 == 15)
  {
    if (qword_28143A1B8 != -1)
    {
      swift_once();
    }

    v11 = sub_22CA20B10();
    sub_22C9D0494(v11, &unk_28143A450);
    v12 = a1;
    v13 = sub_22CA20AF0();
    v14 = sub_22CA21000();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_22C9CA000, v13, v14, "InteractionData is empty: %@", v15, 0xCu);
      sub_22C9DF60C(v16, &unk_27D9E5090, &qword_22CA22E00);
      MEMORY[0x2318BB680](v16, -1, -1);
      MEMORY[0x2318BB680](v15, -1, -1);
    }

    goto LABEL_8;
  }

  v18 = v9;
  v19 = v10;
  sub_22C9D0434(0, &qword_28143A0A8, 0x277CCAAC8);
  sub_22C9D0434(0, &unk_28143A0B0, 0x277CD3D58);
  v20 = sub_22CA21060();
  if (!v3)
  {
    v29 = v20;
    if (v20)
    {
      v30 = [v20 intent];
      if (v30)
      {
        v31 = v30;
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v54 = v29;
          v57 = v32;
          v33 = sub_22C9DDEC8(v8, &selRef_bundleID);
          v35 = 0x6C7070612E6D6F63;
          if (v34)
          {
            v35 = v33;
          }

          v59 = v35;
          if (v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = 0xEE0044494F4E2E65;
          }

          v56 = v31;
          v58 = v36;

          [a1 timestamp];
          v38 = v37;
          v39 = objc_allocWithZone(type metadata accessor for MSPlayMediaIntent());
          v40 = MSPlayMediaIntent.init(intent:bundleID:date:suggestionSource:)(v57, v59, v36, 0, v38);
          swift_beginAccess();
          v41 = v40;
          MEMORY[0x2318BA9F0]();
          sub_22C9F9AB4(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
          v55 = v41;
          sub_22CA20F00();
          swift_endAccess();
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v42 = *a3;
          v60 = *a3;
          *a3 = 0x8000000000000000;
          v43 = sub_22C9FBFA8(v59, v58);
          if (__OFADD__(*(v42 + 16), (v44 & 1) == 0))
          {
            __break(1u);
          }

          else
          {
            v45 = v43;
            v46 = v44;
            sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
            if (sub_22CA21250())
            {
              v47 = v58;
              v48 = sub_22C9FBFA8(v59, v58);
              if ((v46 & 1) != (v49 & 1))
              {
LABEL_38:
                sub_22CA213C0();
                __break(1u);
                return;
              }

              v45 = v48;
            }

            else
            {
              v47 = v58;
            }

            *a3 = v60;
            if ((v46 & 1) == 0)
            {
              sub_22CA028F4(v45, v59, v47, 0, v60);
            }

            v50 = *(v60 + 56);
            v51 = *(v50 + 8 * v45);
            v52 = __OFADD__(v51, 1);
            v53 = v51 + 1;
            if (!v52)
            {
              *(v50 + 8 * v45) = v53;
              swift_endAccess();
              sub_22C9FAB40(v18, v19);

              goto LABEL_8;
            }
          }

          __break(1u);
          goto LABEL_38;
        }
      }

      sub_22C9FAB40(v18, v19);
    }

    else
    {
      sub_22C9FAB40(v18, v19);
    }

LABEL_8:

    return;
  }

  if (qword_28143A1B8 != -1)
  {
    swift_once();
  }

  v21 = sub_22CA20B10();
  sub_22C9D0494(v21, &unk_28143A450);
  v22 = v3;
  v23 = sub_22CA20AF0();
  v24 = sub_22CA21000();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v3;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_22C9CA000, v23, v24, "Error unarchiving interaction: %@", v25, 0xCu);
    sub_22C9DF60C(v26, &unk_27D9E5090, &qword_22CA22E00);
    MEMORY[0x2318BB680](v26, -1, -1);
    MEMORY[0x2318BB680](v25, -1, -1);
    sub_22C9FAB40(v18, v19);
  }

  else
  {
    sub_22C9FAB40(v18, v19);
  }
}

void *sub_22C9F0A1C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v8 = sub_22C9D71B4(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C9E05C0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v15 = qword_28143A4B0;
    if (qword_27D9E4758 != -1)
    {
      sub_22C9FAFF4();
      swift_once();
    }

    v16 = sub_22CA20AE0();
    sub_22C9D0494(v16, &unk_27D9E80E0);
    v17 = MEMORY[0x277D84F90];
    sub_22C9FAF8C();
    sub_22C9FB024();
    v73 = v18;
    sub_22CA20AC0();
    type metadata accessor for MSSuggestionPlaybackRewardFeatureStore();
    sub_22C9FB018();
    swift_allocObject();
    v82 = sub_22CA01FF0();
    sub_22C9D7260();
    v81 = swift_allocObject();
    *(v81 + 16) = MEMORY[0x277D84FA0];
    sub_22C9D7260();
    v19 = swift_allocObject();
    v71 = v15;
    v80 = v19;
    *(v19 + 16) = v17;
    v72 = (v19 + 16);
    sub_22C9D7260();
    v20 = swift_allocObject();
    v83 = v20;
    *(v20 + 16) = 0;
    v79 = (v20 + 16);
    v21 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    sub_22C9F992C(a3, v14);
    sub_22C9F992C(a4, v11);
    v22 = objc_allocWithZone(MEMORY[0x277CF1A50]);
    sub_22C9FB0DC();
    sub_22C9FAFE8();
    v27 = sub_22C9F97A0(v23, v24, v25, v26, 1);
    sub_22C9D7260();
    a3 = swift_allocObject();
    *(a3 + 16) = 0;
    v28 = [a1 maxSuggestions];
    aBlock = sub_22C9D0434(0, &qword_28143A310, 0x277CD3EC0);
    sub_22C9D02E4(&qword_27D9E4F50, &qword_22CA23E58);
    v29 = sub_22CA20E30();
    v31 = v30;
    sub_22C9D7260();
    v32 = swift_allocObject();
    v32[2] = sub_22CA20DD0();
    v33 = [v21 Intent];
    swift_unknownObjectRelease();
    v76 = v27;
    v34 = [v33 publisherWithOptions_];

    sub_22C9FB100();
    v35 = swift_allocObject();
    v35[2] = v29;
    v35[3] = v31;
    v35[4] = a1;
    v35[5] = v32;
    v89 = sub_22C9FAB00;
    v90 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_22C9FAF44;
    v88 = &unk_283FCDB98;
    v36 = _Block_copy(&aBlock);
    v37 = a1;

    v78 = [v34 filterWithIsIncluded_];
    _Block_release(v36);

    v89 = sub_22C9F1878;
    v90 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_22C9FAF40;
    v88 = &unk_283FCDBC0;
    v77 = _Block_copy(&aBlock);
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = a3;
    v70 = v28;
    v39 = v82;
    v40 = v83;
    v38[4] = v28;
    v38[5] = v39;
    v41 = v80;
    v42 = v81;
    v38[6] = v32;
    v38[7] = v42;
    v38[8] = v41;
    v38[9] = v40;
    v89 = sub_22C9FAB0C;
    v90 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_22C9FAF40;
    v88 = &unk_283FCDC10;
    v43 = _Block_copy(&aBlock);
    v44 = v37;
    v74 = v32;

    v75 = a3;

    v46 = v77;
    v45 = v78;
    v47 = [v78 sinkWithCompletion:v77 receiveInput:v43];
    v48 = sub_22C9FB0E8();
    _Block_release(v48);
    _Block_release(v46);

    v49 = v79;
    sub_22C9FAFE8();
    swift_beginAccess();
    v50 = *v49;
    if (v50)
    {
      break;
    }

    sub_22CA21070();
    v52 = MEMORY[0x277D84F90];
    sub_22C9FB024();
    sub_22CA20AC0();
    v53 = v72;
    sub_22C9FAFE8();
    swift_beginAccess();
    v14 = *v53;
    v84 = v52;
    a1 = sub_22C9E6DA0();
    a4 = v14 & 0xC000000000000001;

    v11 = 0;
    v54 = v70;
    while (1)
    {
      if (a1 == v11)
      {

        v58 = sub_22C9F220C(v54, v84, sub_22C9E6DA0, type metadata accessor for MSSuggestion);
        v32 = v59;
        v61 = v60;
        v63 = v62;
        v64 = v76;
        if ((v62 & 1) == 0)
        {
          goto LABEL_18;
        }

        sub_22CA21370();
        swift_unknownObjectRetain_n();
        v66 = swift_dynamicCastClass();
        if (!v66)
        {
          swift_unknownObjectRelease();
          v66 = MEMORY[0x277D84F90];
        }

        v67 = *(v66 + 16);

        if (__OFSUB__(v63 >> 1, v61))
        {
          __break(1u);
        }

        else if (v67 == (v63 >> 1) - v61)
        {
          if (swift_dynamicCastClass())
          {
            sub_22C9FB0DC();
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease_n();
            v32 = MEMORY[0x277D84F90];
          }

          goto LABEL_27;
        }

        swift_unknownObjectRelease();
LABEL_18:
        sub_22C9FA050(v58, v32, v61, v63);
        v32 = v65;

        swift_unknownObjectRelease();

LABEL_27:

        return v32;
      }

      if (a4)
      {
        v55 = MEMORY[0x2318BAD10](v11, v14);
      }

      else
      {
        if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v55 = *(v14 + 8 * v11 + 32);
      }

      v56 = v55;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_22C9DDEBC(v55);
      if (v57)
      {

        sub_22CA211F0();
        a3 = *(v84 + 16);
        sub_22CA21220();
        sub_22CA21230();
        sub_22CA21200();
      }

      else
      {
      }

      ++v11;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_22C9FAF4C();
    swift_once();
  }

  swift_willThrow();
  v51 = v50;

  return v32;
}

void sub_22C9F12B0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22C9DDEC8(v9, &selRef_intentClass);
    if (!v12)
    {
LABEL_33:

      return;
    }

    if (v11 == a2 && v12 == a3)
    {
    }

    else
    {
      v14 = sub_22CA21360();

      if ((v14 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v19 = [a4 allowedBundleIdentifiers];
    v20 = sub_22CA20EC0();

    if (!*(v20 + 16))
    {

LABEL_44:

      return;
    }

    v21 = sub_22C9DDEC8(v10, &selRef_bundleID);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0x6C7070612E6D6F63;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xEE0044494F4E2E65;
    }

    v49 = v23;
    v50 = v24;
    MEMORY[0x28223BE20](v21);
    v48[2] = &v49;
    if (sub_22C9F9E10(sub_22C9FAEC4, v48, v20))
    {

      if ([a4 suggestionSourceType] == 1)
      {

        return;
      }

      swift_beginAccess();
      v39 = *(a5 + 16);
      if (*(v39 + 16) && (v40 = sub_22C9FBFA8(v23, v24), (v41 & 1) != 0))
      {
        v42 = *(*(v39 + 56) + 8 * v40);
        swift_endAccess();
        if (v42 >= 100)
        {
          if (qword_28143A1B8 != -1)
          {
            swift_once();
          }

          v43 = sub_22CA20B10();
          sub_22C9D0494(v43, &unk_28143A450);

          v26 = sub_22CA20AF0();
          v44 = sub_22CA21000();

          if (!os_log_type_enabled(v26, v44))
          {

            goto LABEL_32;
          }

          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v49 = v46;
          *v45 = 136315394;
          v47 = sub_22C9D60B0(v23, v24, &v49);

          *(v45 + 4) = v47;
          *(v45 + 12) = 2048;
          *(v45 + 14) = 100;
          _os_log_impl(&dword_22C9CA000, v26, v44, "Ignoring playMediaIntents from bundleID %s, reached max records to fetch: (%ld)", v45, 0x16u);
          sub_22C9D04CC(v46);
          MEMORY[0x2318BB680](v46, -1, -1);
          v38 = v45;
LABEL_31:
          MEMORY[0x2318BB680](v38, -1, -1);
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        swift_endAccess();
      }

      goto LABEL_44;
    }

    if (qword_28143A320 != -1)
    {
      swift_once();
    }

    v25 = sub_22CA20B10();
    sub_22C9D0494(v25, &unk_28143A4E0);

    v10 = v10;
    v26 = sub_22CA20AF0();
    v27 = sub_22CA20FF0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v49 = v29;
      *v28 = 136315394;
      v30 = MEMORY[0x2318BAA20](v20, MEMORY[0x277D837D0]);
      v32 = v31;

      v33 = sub_22C9D60B0(v30, v32, &v49);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      v34 = sub_22C9DDEC8(v10, &selRef_bundleID);
      v36 = v35;

      if (v36)
      {
        v37 = sub_22C9D60B0(v34, v36, &v49);

        *(v28 + 14) = v37;
        _os_log_impl(&dword_22C9CA000, v26, v27, "Returning false since allowedBundles %s, bundleId: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318BB680](v29, -1, -1);
        v38 = v28;
        goto LABEL_31;
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    if (qword_28143A320 != -1)
    {
      swift_once();
    }

    v15 = sub_22CA20B10();
    sub_22C9D0494(v15, &unk_28143A4E0);
    v16 = sub_22CA20AF0();
    v17 = sub_22CA21010();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22C9CA000, v16, v17, "INPlayMediaIntent: Eventbody is missing", v18, 2u);
      MEMORY[0x2318BB680](v18, -1, -1);
    }
  }
}

void sub_22C9F1884(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = MEMORY[0x2318BB0B0]();
  sub_22C9F1938(a1, a2, (a3 + 16), a4, a5, (a6 + 16), (a7 + 16), (a8 + 16), (a9 + 16));

  objc_autoreleasePoolPop(v17);
}

void sub_22C9F1938(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void *a8, void **a9)
{
  v98 = a8;
  v16 = [a1 eventBody];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  if ([a2 suggestionSourceType] == 1)
  {
LABEL_12:

    return;
  }

  v18 = sub_22C9FA314(v17);
  if (v19 >> 60 == 15)
  {
    if (qword_28143A320 != -1)
    {
      swift_once();
    }

    v20 = sub_22CA20B10();
    sub_22C9D0494(v20, &unk_28143A4E0);
    v21 = a1;
    v22 = sub_22CA20AF0();
    v23 = sub_22CA21000();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_22C9CA000, v22, v23, "InteractionData is empty: %@", v24, 0xCu);
      sub_22C9DF60C(v25, &unk_27D9E5090, &qword_22CA22E00);
      MEMORY[0x2318BB680](v25, -1, -1);
      MEMORY[0x2318BB680](v24, -1, -1);
    }

    goto LABEL_12;
  }

  v27 = v19;
  v96 = v18;
  swift_beginAccess();
  if (*a3 > a4)
  {
    v28 = v96;
    v29 = v27;
LABEL_11:
    sub_22C9FAB40(v28, v29);
    goto LABEL_12;
  }

  sub_22C9D0434(0, &qword_28143A0A8, 0x277CCAAC8);
  sub_22C9D0434(0, &unk_28143A0B0, 0x277CD3D58);
  v30 = sub_22CA21060();
  if (!v9)
  {
    v42 = v30;
    if (!v30)
    {

      sub_22C9FAB40(v96, v27);
      return;
    }

    v43 = [v30 intent];
    if (v43)
    {
      v93 = v43;
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (v44)
      {
        v88 = v42;
        v91 = v27;
        v45 = v44;
        v46 = sub_22C9DDEC8(v17, &selRef_bundleID);
        if (v47)
        {
          v48 = v46;
        }

        else
        {
          v48 = 0;
        }

        v89 = v48;
        if (v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = 0xE000000000000000;
        }

        type metadata accessor for MSSuggesterUtils();
        v92 = v45;
        v50 = sub_22CA1651C(v45, v89, v49);

        if ((v50 & 1) == 0)
        {

LABEL_47:
          v28 = v96;
          v29 = v91;
          goto LABEL_11;
        }

        v51 = sub_22C9DDEC8(v17, &selRef_bundleID);
        if (v52)
        {
          v53 = v51;
        }

        else
        {
          v53 = 0x6C7070612E6D6F63;
        }

        v90 = v53;
        if (v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = 0xEE0044494F4E2E65;
        }

        v86 = objc_allocWithZone(MSUnifiedMediaIntent);
        v87 = v93;

        v55 = sub_22CA20E10();

        v94 = [v86 initWithIntent:v92 bundleID:v55];

        v56 = objc_allocWithZone(MSSuggestion);

        v85 = v94;
        v95 = v54;
        v57 = sub_22C9DDDC8(v85, v90, v54, 0);
        [a1 timestamp];
        [v57 setIntentDate_];
        [v57 setIntent_];
        sub_22C9DDEBC(v57);
        if (v58)
        {

          [a1 timestamp];
          sub_22CA00C9C(v57, 84, v59);
        }

        v84 = v57;
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v97 = *a6;
        v60 = v97;
        *a6 = 0x8000000000000000;
        v61 = sub_22C9FBFA8(v90, v95);
        if (__OFADD__(*(v60 + 16), (v62 & 1) == 0))
        {
          __break(1u);
        }

        else
        {
          v63 = v61;
          v64 = v62;
          sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
          v65 = v97;
          if (sub_22CA21250())
          {
            v66 = sub_22C9FBFA8(v90, v95);
            v68 = v91;
            if ((v64 & 1) != (v67 & 1))
            {
LABEL_63:
              sub_22CA213C0();
              __break(1u);
              return;
            }

            v63 = v66;
          }

          else
          {
            v68 = v91;
          }

          *a6 = v97;
          if ((v64 & 1) == 0)
          {
            sub_22CA028F4(v63, v90, v95, 0, v65);
          }

          v69 = *(v65 + 56);
          v70 = *(v69 + 8 * v63);
          v71 = __OFADD__(v70, 1);
          v72 = v70 + 1;
          if (!v71)
          {
            *(v69 + 8 * v63) = v72;
            swift_endAccess();

            v73 = [v92 mediaContainer];
            if (v73)
            {
              v74 = v73;
              v75 = sub_22C9D6670(v73);
              if (v76)
              {
                v77 = v75;
                v78 = v76;
                swift_beginAccess();
                v79 = *a7;

                v80 = sub_22CA148CC(v77, v78, v79);

                if (v80)
                {

                  goto LABEL_47;
                }

                swift_beginAccess();
                sub_22CA15904(&v97, v77, v78);
                swift_endAccess();

                v68 = v91;
              }

              else
              {
              }
            }

            v81 = v98;
            v82 = swift_beginAccess();
            MEMORY[0x2318BA9F0](v82);
            sub_22C9F9AB4(*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10));
            sub_22CA20F00();
            swift_endAccess();

            sub_22C9FAB40(v96, v68);
            swift_beginAccess();
            v83 = *a3 + 1;
            if (!__OFADD__(*a3, 1))
            {
              swift_beginAccess();
              *a3 = v83;
              return;
            }

            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    else
    {
    }

    sub_22C9FAB40(v96, v27);

    return;
  }

  if (qword_28143A320 != -1)
  {
    swift_once();
  }

  v31 = sub_22CA20B10();
  sub_22C9D0494(v31, &unk_28143A4E0);
  v32 = v9;
  v33 = sub_22CA20AF0();
  v34 = sub_22CA21000();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = v27;
    v37 = swift_slowAlloc();
    *v35 = 138412290;
    v38 = v9;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_22C9CA000, v33, v34, "Error unarchiving interaction: %@", v35, 0xCu);
    sub_22C9DF60C(v37, &unk_27D9E5090, &qword_22CA22E00);
    v40 = v37;
    v27 = v36;
    MEMORY[0x2318BB680](v40, -1, -1);
    MEMORY[0x2318BB680](v35, -1, -1);
  }

  sub_22C9FAB40(v96, v27);
  swift_beginAccess();
  v41 = *a9;
  *a9 = v9;
}

unint64_t sub_22C9F220C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v13 = sub_22CA212E0();

    return v13;
  }

  v7 = a3(a2);
  v8 = sub_22C9FA554(0, a1, v7);
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 < 0)
  {
    goto LABEL_16;
  }

  sub_22C9FA5A0(0, a2);
  sub_22C9FA5A0(v10, a2);
  if ((a2 & 0xC000000000000001) != 0 && v10)
  {
    a4(0);
    sub_22C9FB0F4();

    v11 = 0;
    do
    {
      v12 = v11 + 1;
      sub_22CA211B0();
      v11 = v12;
    }

    while (v10 != v12);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

void sub_22C9F234C()
{
  sub_22C9DAEF8();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v5 = sub_22C9D71B4(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C9E05C0();
  MEMORY[0x28223BE20](v6);
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  if (qword_27D9E4750 != -1)
  {
    swift_once();
  }

  v7 = sub_22CA20AE0();
  v8 = sub_22C9D0494(v7, &unk_27D9E80C8);
  sub_22C9FB008(v8);
  sub_22C9FAF8C();
  sub_22C9FB024();
  sub_22CA20AC0();
  type metadata accessor for MSSuggestionFeedbackRewardFeatureStore();
  sub_22C9FB03C();
  swift_allocObject();
  v9 = sub_22C9FFF6C();
  v10 = [BiomeLibrary() MediaSuggester];
  swift_unknownObjectRelease();
  v34 = [v10 SuggestionFeedback];
  swift_unknownObjectRelease();
  v11 = sub_22CA209F0();
  sub_22C9FB0D0();
  sub_22C9D0B98(v12, v13, v14, v11);
  sub_22C9FB0D0();
  sub_22C9D0B98(v15, v16, v17, v11);
  v18 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FAFB4();
  v24 = sub_22C9F97A0(v19, v20, v21, v22, v23);
  sub_22C9D7260();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_22CA20DD0();
  v26 = [v34 publisherWithOptions_];
  sub_22C9FB03C();
  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  *(v27 + 24) = v3;
  *(v27 + 32) = v25;
  v39 = sub_22C9FAAEC;
  v40 = v27;
  v35 = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_22C9FAF44;
  v38 = &unk_283FCDA30;
  v28 = _Block_copy(&v35);

  v29 = [v26 filterWithIsIncluded_];
  _Block_release(v28);

  v39 = sub_22C9F2AF8;
  v40 = 0;
  v37 = sub_22C9FAF40;
  v38 = &unk_283FCDA58;
  v30 = _Block_copy(&v35);
  sub_22C9FB018();
  v31 = swift_allocObject();
  *(v31 + 16) = v9;
  *(v31 + 24) = v25;
  v39 = sub_22C9FAAF8;
  v40 = v31;
  v35 = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_22C9FAF40;
  v38 = &unk_283FCDAA8;
  v32 = _Block_copy(&v35);

  v33 = [v29 sinkWithCompletion:v30 receiveInput:v32];
  _Block_release(v32);
  _Block_release(v30);

  sub_22CA21070();
  sub_22C9FAF74();
  sub_22C9FB024();
  sub_22CA20AC0();

  sub_22C9DAF14();
}

uint64_t sub_22C9F27F4(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 0xEE0044494F4E2E65;
  v8 = 0x6C7070612E6D6F63;
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22C9DDEC8(v9, &selRef_targetBundleID);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = [v10 isNowPlaying];

      if ((((a2 != 1) ^ v15) & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = v13;
      v7 = v14;
    }

    else
    {
    }
  }

  if (!*(a3 + 16) || (v30[0] = v8, v30[1] = v7, MEMORY[0x28223BE20](v9), v29[2] = v30, , v16 = sub_22C9F9E10(sub_22C9E9828, v29, a3), , v16))
  {
    swift_beginAccess();
    v17 = *(a4 + 16);
    if (*(v17 + 16) && (, v18 = sub_22C9FBFA8(v8, v7), v20 = v19, , (v20 & 1) != 0))
    {
      v21 = *(*(v17 + 56) + 8 * v18);
      swift_endAccess();
      if (v21 >= 100)
      {
        if (qword_28143A1B8 != -1)
        {
          swift_once();
        }

        v22 = sub_22CA20B10();
        sub_22C9D0494(v22, &unk_28143A450);
        v23 = sub_22CA20AF0();
        v24 = sub_22CA21000();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v30[0] = v26;
          *v25 = 136315394;

          v27 = sub_22C9D60B0(v8, v7, v30);

          *(v25 + 4) = v27;
          *(v25 + 12) = 2048;
          *(v25 + 14) = 100;
          _os_log_impl(&dword_22C9CA000, v23, v24, "Ignoring feedback from bundleID %s, reached max records to fetch: (%ld)", v25, 0x16u);
          sub_22C9D04CC(v26);
          MEMORY[0x2318BB680](v26, -1, -1);
          MEMORY[0x2318BB680](v25, -1, -1);
        }

        return 0;
      }
    }

    else
    {
      swift_endAccess();
    }

    return 1;
  }

LABEL_18:

  return 0;
}

void sub_22C9F2B04(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x2318BB0B0]();
  sub_22C9F2B6C(a1, a2, (a3 + 16));

  objc_autoreleasePoolPop(v6);
}

void sub_22C9F2B6C(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v6 = v5;
    v34 = a1;
    v7 = [v5 intent];
    if (v7)
    {
      v8 = v7;
      [v7 eventTimestamp];
      [v6 workoutType];
      sub_22C9FF7D0(v8);
    }

    v9 = [v6 suggestionsIntent];
    sub_22C9D0434(0, &qword_27D9E4970, 0x277CF1340);
    v10 = sub_22CA20EC0();

    v11 = sub_22C9E6DA0();
    if (v11)
    {
      v12 = v11;
      if (v11 < 1)
      {
        goto LABEL_26;
      }

      v13 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x2318BAD10](v13, v10);
        }

        else
        {
          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        ++v13;
        [v14 eventTimestamp];
        [v6 workoutType];
        sub_22C9FF998(v15);
      }

      while (v12 != v13);
    }

    v16 = 0xEE0044494F4E2E65;
    v17 = 0x6C7070612E6D6F63;

    v18 = [v34 eventBody];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 targetBundleID];
      if (v20)
      {
        v21 = v20;
        v17 = sub_22CA20E20();
        v16 = v22;
      }
    }

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *a3;
    v35 = *a3;
    *a3 = 0x8000000000000000;
    v24 = sub_22C9FBFA8(v17, v16);
    if (__OFADD__(*(v23 + 16), (v25 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v26 = v24;
      v27 = v25;
      sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
      if (sub_22CA21250())
      {
        v28 = sub_22C9FBFA8(v17, v16);
        if ((v27 & 1) != (v29 & 1))
        {
LABEL_27:
          sub_22CA213C0();
          __break(1u);
          return;
        }

        v26 = v28;
      }

      *a3 = v35;
      if ((v27 & 1) == 0)
      {
        sub_22CA028F4(v26, v17, v16, 0, v35);
      }

      v30 = *(v35 + 56);
      v31 = *(v30 + 8 * v26);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (!v32)
      {
        *(v30 + 8 * v26) = v33;
        swift_endAccess();

        return;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

void sub_22C9F2EA4()
{
  sub_22C9DAEF8();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v5 = sub_22C9D71B4(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C9E05C0();
  MEMORY[0x28223BE20](v6);
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    if (qword_27D9E4748 != -1)
    {
      swift_once();
    }

    v7 = sub_22CA20AE0();
    sub_22C9D0494(v7, &unk_27D9E80B0);
    v8 = MEMORY[0x277D84F90];
    sub_22C9FAF8C();
    sub_22C9FB024();
    sub_22CA20AC0();
    v122 = v8;
    v116 = v8;
    v9 = sub_22C9E6DA0();
    v10 = 0;
    v111 = v3 & 0xFFFFFFFFFFFFFF8;
    v112 = v3 & 0xC000000000000001;
    v107 = v3 + 32;
    v11 = 0x27872A000uLL;
    while (v9 != v10)
    {
      if (v112)
      {
        v12 = MEMORY[0x2318BAD10](v10, v3);
      }

      else
      {
        if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v12 = *(v3 + 8 * v10 + 32);
      }

      v13 = v12;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_78;
      }

      if ([v12 *(v11 + 3672)] == 1)
      {
        sub_22CA211F0();
        sub_22CA21220();
        sub_22CA21230();
        sub_22CA21200();
        v11 = 0x27872A000;
      }

      else
      {
      }

      ++v10;
    }

    v14 = v116;
    v15 = sub_22C9E6DA0();
    v16 = MEMORY[0x277D84F90];
    v106 = v3;
    v110 = v9;
    if (!v15)
    {
      goto LABEL_24;
    }

    v17 = v15;
    v116 = MEMORY[0x277D84F90];
    sub_22CA0CDC0(0, v15 & ~(v15 >> 63), 0);
    if (v17 < 0)
    {
      break;
    }

    v18 = 0;
    v16 = v116;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2318BAD10](v18, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = sub_22C9DDEBC(v19);
      v23 = v22;

      v116 = v16;
      v3 = v16[2];
      v24 = v16[3];
      if (v3 >= v24 >> 1)
      {
        v26 = sub_22C9FB058(v24);
        sub_22CA0CDC0(v26, v3 + 1, 1);
        v16 = v116;
      }

      ++v18;
      v16[2] = v3 + 1;
      v25 = &v16[2 * v3];
      v25[4] = v21;
      v25[5] = v23;
      v9 = v110;
    }

    while (v17 != v18);
LABEL_24:
    sub_22C9D7260();
    v27 = swift_allocObject();
    *(v27 + 16) = v16;
    v28 = [BiomeLibrary() App];
    sub_22C9FB0DC();
    swift_unknownObjectRelease();
    v29 = [v16 Intents];
    swift_unknownObjectRelease();
    v30 = [v29 Transcript];
    sub_22C9FB0F4();
    swift_unknownObjectRelease();
    v31 = sub_22CA209F0();
    sub_22C9FB0D0();
    sub_22C9D0B98(v32, v33, v34, v31);
    sub_22C9FB0D0();
    sub_22C9D0B98(v35, v36, v37, v31);
    v38 = objc_allocWithZone(MEMORY[0x277CF1A50]);
    sub_22C9FAFB4();
    v44 = sub_22C9F97A0(v39, v40, v41, v42, v43);
    sub_22C9D7260();
    v45 = swift_allocObject();
    *(v45 + 16) = MEMORY[0x277D84F90];
    v46 = (v45 + 16);
    v104 = v3;
    v103 = v44;
    v47 = [v3 publisherWithOptions_];
    v120 = sub_22C9F3A4C;
    v121 = 0;
    v116 = MEMORY[0x277D85DD0];
    v117 = 1107296256;
    v118 = sub_22C9FAF44;
    v119 = &unk_283FCD968;
    v48 = _Block_copy(&v116);
    v49 = [v47 filterWithIsIncluded_];
    _Block_release(v48);

    v120 = sub_22C9F3C00;
    v121 = 0;
    v116 = MEMORY[0x277D85DD0];
    v117 = 1107296256;
    v118 = sub_22C9FAF40;
    v119 = &unk_283FCD990;
    v50 = _Block_copy(&v116);
    sub_22C9FB03C();
    v51 = swift_allocObject();
    v51[2] = v45;
    v51[3] = v14;
    v51[4] = v27;
    v120 = sub_22C9FAAC0;
    v121 = v51;
    v116 = MEMORY[0x277D85DD0];
    v117 = 1107296256;
    v118 = sub_22C9FAF44;
    v119 = &unk_283FCD9E0;
    v52 = _Block_copy(&v116);

    v53 = [v49 sinkWithCompletion:v50 shouldContinue:v52];
    _Block_release(v52);
    _Block_release(v50);

    if (!v9)
    {
LABEL_75:
      sub_22CA21070();
      sub_22C9FAF74();
      sub_22C9FB024();
      sub_22CA20AC0();

      sub_22C9DAF14();
      return;
    }

    sub_22C9FAFE8();
    swift_beginAccess();
    v3 = 0;
    v54 = MEMORY[0x277D84F90];
    v55 = v106;
    v56 = 0x27872A000uLL;
    v105 = (v45 + 16);
    while (1)
    {
      if (v112)
      {
        v57 = MEMORY[0x2318BAD10](v3, v55);
      }

      else
      {
        if (v3 >= *(v111 + 16))
        {
          goto LABEL_81;
        }

        v57 = *(v107 + 8 * v3);
      }

      v58 = v57;
      if (__OFADD__(v3++, 1))
      {
        goto LABEL_80;
      }

      if (![v57 *(v56 + 3672)])
      {
        v71 = v58;
        MEMORY[0x2318BA9F0]();
        sub_22C9FB0A8();
        if (v73)
        {
          sub_22C9FB058(v72);
          sub_22CA20EE0();
        }

        sub_22CA20F00();

        v54 = v122;
        v56 = 0x27872A000;
        goto LABEL_74;
      }

      if ([v58 *(v56 + 3672)] == 1)
      {
        break;
      }

LABEL_74:
      if (v3 == v9)
      {
        goto LABEL_75;
      }
    }

    v108 = v54;
    v109 = v3;
    v60 = *v46;
    v61 = sub_22C9E6DA0();
    v3 = v60 & 0xFFFFFFFFFFFFFF8;

    for (i = 0; ; ++i)
    {
      if (v61 == i)
      {

        if (qword_28143A1B8 != -1)
        {
          sub_22C9FAF60();
          swift_once();
        }

        v74 = sub_22CA20B10();
        sub_22C9D0494(v74, &unk_28143A450);
        v75 = v58;
        v76 = sub_22CA20AF0();
        v77 = sub_22CA21000();

        v55 = v106;
        v3 = v109;
        if (os_log_type_enabled(v76, v77))
        {
          v78 = sub_22C9D7164();
          v79 = swift_slowAlloc();
          v113 = v79;
          *v78 = 136315138;
          v80 = sub_22C9DDEBC(v75);
          if (v81)
          {
            v82 = v81;
          }

          else
          {
            v80 = 7104846;
            v82 = 0xE300000000000000;
          }

          v83 = sub_22C9D60B0(v80, v82, &v113);

          *(v78 + 4) = v83;
          _os_log_impl(&dword_22C9CA000, v76, v77, "Failed finding: %s", v78, 0xCu);
          sub_22C9D04CC(v79);
          sub_22C9D70C0();
          sub_22C9D70C0();
        }

        else
        {
        }

        v9 = v110;
        goto LABEL_73;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x2318BAD10](i, v60);
      }

      else
      {
        if (i >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v63 = *(v60 + 8 * i + 32);
      }

      v64 = v63;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v65 = *&v63[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier];
      v66 = *&v63[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_identifier + 8];

      v67 = sub_22C9DDEBC(v58);
      if (v66)
      {
        if (v68)
        {
          if (v65 == v67 && v66 == v68)
          {

LABEL_68:

            v84 = sub_22CA1EC14();
            v55 = v106;
            if (!v84)
            {

              v3 = v109;
              v9 = v110;
LABEL_73:
              v56 = 0x27872A000;
              v46 = v105;
              v54 = v108;
              goto LABEL_74;
            }

            v85 = v84;
            v86 = &v64[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
            v87 = objc_allocWithZone(MSUnifiedMediaIntent);
            v88 = v85;

            v89 = sub_22CA20E10();

            v90 = [v87 initWithIntent:v88 bundleID:v89];

            v91 = *v86;
            v92 = v86[1];
            v93 = *&v64[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource];
            v94 = objc_allocWithZone(MSSuggestion);
            v95 = v90;

            v96 = sub_22C9DDDC8(v95, v91, v92, v93);
            v97 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
            sub_22C9DE248(&v96[OBJC_IVAR___MSSuggestion_mediaAppIntent], &v115);
            v98 = *&v96[v97];
            *&v96[v97] = v64;
            v99 = v64;

            [v96 setIntentDate_];
            v100 = OBJC_IVAR___MSSuggestion_suggestionsLatency;
            v101 = sub_22C9DE248(&v96[OBJC_IVAR___MSSuggestion_suggestionsLatency], &v114);
            *&v96[v100] = v1;
            MEMORY[0x2318BA9F0](v101);
            sub_22C9FB0A8();
            if (v73)
            {
              sub_22C9FB058(v102);
              sub_22CA20EE0();
            }

            sub_22CA20F00();
            v54 = v122;

            v3 = v109;
            v9 = v110;
            v56 = 0x27872A000;
            v46 = v105;
            goto LABEL_74;
          }

          v70 = sub_22CA21360();

          if (v70)
          {
            goto LABEL_68;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v68)
        {
          goto LABEL_68;
        }
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    sub_22C9FAF4C();
    swift_once();
  }

  __break(1u);
}

uint64_t sub_22C9F3A4C(void *a1)
{
  result = [a1 eventBody];
  if (result)
  {
    v2 = result;
    v3 = [result resolvedAction];
    if (v3)
    {
      v4 = v3;
      v5 = sub_22C9DDEC8(v3, &selRef_identifier);
      if (v6)
      {
        if (v5 == 0xD000000000000014 && v6 == 0x800000022CA27930)
        {

          return 1;
        }

        v8 = sub_22CA21360();

        if (v8)
        {
LABEL_21:

          return 1;
        }
      }

      v9 = sub_22C9DDEC8(v4, &selRef_identifier);
      if (v10)
      {
        if (v9 != 0x6964754179616C50 || v10 != 0xEF746E65746E496FLL)
        {
          v12 = sub_22CA21360();

          return (v12 & 1) != 0;
        }

        goto LABEL_21;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_22C9F3BA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_22C9F3C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x2318BB0B0]();
  sub_22C9F3C80(a1, (a2 + 16), a3, (a4 + 16), &v10);
  objc_autoreleasePoolPop(v8);
  return v10;
}

void sub_22C9F3C80(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v146 = a4;
  v9 = [a1 eventBody];
  if (!v9)
  {
    goto LABEL_55;
  }

  v144 = v9;
  v143 = a5;
  swift_beginAccess();
  v10 = sub_22C9E6DA0();
  if (v10 == sub_22C9E6DA0())
  {

    v11 = 0;
LABEL_4:
    a5 = v143;
LABEL_56:
    *a5 = v11;
    return;
  }

  a5 = v143;
  if ([v144 source] != 1 || (v12 = objc_msgSend(v144, sel_resolvedAction)) == 0 || (v13 = v12, v14 = sub_22CA21090(), v13, !v14))
  {

LABEL_55:
    v11 = 1;
    goto LABEL_56;
  }

  v127 = a1;
  v128 = a2;
  v15 = sub_22C9DDEC8(v144, &selRef_bundleID);
  v17 = 0x6C7070612E6D6F63;
  if (v16)
  {
    v17 = v15;
  }

  v138 = v17;
  v18 = 0xEE0044494F4E2E65;
  if (v16)
  {
    v18 = v16;
  }

  v140 = v18;
  v132 = v14;
  v19 = [v14 parameters];
  v20 = sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  v21 = sub_22CA20EC0();

  v142 = v21;
  v22 = sub_22C9E6DA0();
  v23 = 0x27872A000uLL;
  v147 = a3;
  if (!v22)
  {
    v145 = 0;
    v151 = 0;
LABEL_59:

    v57 = [v132 parameters];
    v58 = sub_22CA20EC0();

    v142 = sub_22C9E6DA0();
    if (!v142)
    {

LABEL_142:

      v11 = 1;
      goto LABEL_4;
    }

    v141 = (v58 & 0xC000000000000001);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v60 = 0;
    v135 = v58 & 0xFFFFFFFFFFFFFF8;
    v139 = v58;
    v134 = v58 + 32;
    v133 = 0x800000022CA25AB0;
    v62 = v138 == 0xD000000000000012 && 0x800000022CA25AB0 == v140;
    LODWORD(v136) = v62;
    v63 = 32;
    if (v151)
    {
      v63 = v145;
    }

    v130 = v63;
    v64 = 0xE100000000000000;
    if (v151)
    {
      v64 = v151;
    }

    v129 = v64;
    v149 = (a3 & 0xFFFFFFFFFFFFFF8);
    v150 = a3 & 0xC000000000000001;
    v59.n128_u64[0] = 136315394;
    v124 = v59;
LABEL_71:
    if (v141)
    {
      v65 = MEMORY[0x2318BAD10](v60, v139);
    }

    else
    {
      if (v60 >= *(v135 + 16))
      {
        goto LABEL_148;
      }

      v65 = *(v134 + 8 * v60);
    }

    v66 = v65;
    v28 = __OFADD__(v60++, 1);
    if (v28)
    {
      goto LABEL_146;
    }

    v67 = [v65 identifier];
    v68 = sub_22CA20E20();
    v70 = v69;

    if (v68 != 0x65646F73697065 || v70 != 0xE700000000000000)
    {
      v72 = sub_22CA21360();

      if (v72)
      {
        goto LABEL_88;
      }

      v73 = [v66 identifier];
      v74 = sub_22CA20E20();
      v76 = v75;

      if (v74 != 0x746E456F69647561 || v76 != 0xEB00000000797469)
      {
        v78 = sub_22CA21360();

        if ((v78 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_88:
        v79 = [v66 *(v23 + 3944)];
        if (!v79 || (v80 = v79, v81 = [v79 *(v23 + 3944)], v80, sub_22CA21130(), swift_unknownObjectRelease(), sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0), (swift_dynamicCast() & 1) == 0))
        {
LABEL_95:

          goto LABEL_96;
        }

        v137 = v152;
        v82 = [v152 identifier];
        v83 = [v82 instanceIdentifier];

        v84 = sub_22CA20E20();
        v86 = v85;

        if (v136 & 1) != 0 || (v87 = sub_22CA21360(), (v87))
        {
          v88 = *v146;
          v153 = v130;
          v154 = v129;
          MEMORY[0x28223BE20](v87);
          v123 = &v153;

          v89 = v148;
          v90 = sub_22C9F9EC0(sub_22C9FAEA8, v122, v88);
          v148 = v89;

          if (v90)
          {
            if (v136)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          }

          if (v136)
          {
            goto LABEL_100;
          }
        }

        v91 = sub_22CA21360();
        if (v91)
        {
LABEL_100:

          v23 = 0x27872A000;
          goto LABEL_96;
        }

        v92 = *v146;
        v153 = v84;
        v154 = v86;
        MEMORY[0x28223BE20](v91);
        v123 = &v153;

        v93 = v148;
        v94 = sub_22C9F9EC0(sub_22C9FAACC, v122, v92);
        v148 = v93;

        if (!v94)
        {

LABEL_139:

          goto LABEL_140;
        }

LABEL_102:
        if ((sub_22CA21360() & 1) == 0)
        {
LABEL_105:
          v96 = sub_22C9E6DA0();
          for (i = 0; ; ++i)
          {
            if (v96 == i)
            {
              v99 = 0;
              goto LABEL_122;
            }

            if (v150)
            {
              v98 = MEMORY[0x2318BAD10](i, a3);
            }

            else
            {
              if (i >= v149[2])
              {
                goto LABEL_144;
              }

              v98 = *(a3 + 8 * i + 32);
            }

            v99 = v98;
            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_144:
              __break(1u);
              goto LABEL_145;
            }

            v100 = sub_22C9DDEBC(v98);
            if (v101)
            {
              if (v100 == v84 && v101 == v86)
              {

LABEL_121:
                v104 = [v99 editorialTags];
                sub_22CA20FC0();

LABEL_122:
                v155 = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
                v153 = v132;
                v105 = v132;

                [v127 timestamp];
                type metadata accessor for MSSuggesterUtils();
                sub_22CA16750(1);
                objc_allocWithZone(type metadata accessor for MSPlayMediaAppIntent());
                swift_bridgeObjectRetain_n();
                v123 = 0;
                v106 = MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)();
                v107 = v128;
                swift_beginAccess();
                v108 = v106;
                MEMORY[0x2318BA9F0]();
                sub_22C9F9AB4(*((*v107 & 0xFFFFFFFFFFFFFF8) + 0x10));
                v131 = v108;
                sub_22CA20F00();
                swift_endAccess();
                if (qword_28143A1B8 != -1)
                {
                  swift_once();
                }

                v109 = sub_22CA20B10();
                sub_22C9D0494(v109, &unk_28143A450);

                v110 = sub_22CA20AF0();
                v111 = sub_22CA21010();

                if (os_log_type_enabled(v110, v111))
                {
                  v112 = swift_slowAlloc();
                  v126 = swift_slowAlloc();
                  v153 = v126;
                  *v112 = v124.n128_u32[0];
                  v113 = sub_22C9D60B0(v84, v86, &v153);

                  *(v112 + 4) = v113;
                  *(v112 + 12) = 2080;
                  v125 = v110;
                  v114 = v140;

                  v115 = sub_22C9D60B0(v138, v114, &v153);

                  *(v112 + 14) = v115;
                  v116 = v125;
                  _os_log_impl(&dword_22C9CA000, v125, v111, "Populated id: %s for %s", v112, 0x16u);
                  v117 = v126;
                  swift_arrayDestroy();
                  MEMORY[0x2318BB680](v117, -1, -1);
                  MEMORY[0x2318BB680](v112, -1, -1);
                }

                else
                {
                }

                a3 = v147;
                v118 = *(*v146 + 16);
                if (!v118)
                {
LABEL_136:

                  goto LABEL_139;
                }

                v119 = 0;
                v120 = (*v146 + 40);
                while (1)
                {
                  if (*v120)
                  {
                    v121 = *(v120 - 1) == v84 && *v120 == v86;
                    if (v121 || (sub_22CA21360() & 1) != 0)
                    {
                      break;
                    }
                  }

                  v120 += 2;
                  if (v118 == ++v119)
                  {
                    goto LABEL_136;
                  }
                }

                swift_beginAccess();
                sub_22C9F4DC0(v119);
                swift_endAccess();

LABEL_140:
                v23 = 0x27872A000;
LABEL_96:
                if (v60 == v142)
                {

                  goto LABEL_142;
                }

                goto LABEL_71;
              }

              v103 = sub_22CA21360();

              if (v103)
              {
                goto LABEL_121;
              }
            }

            a3 = v147;
          }
        }

LABEL_103:
        v95 = v151;
        if (v151)
        {

          v84 = v145;
          v86 = v95;
        }

        goto LABEL_105;
      }
    }

    goto LABEL_88;
  }

  v24 = v22;
  v145 = 0;
  v151 = 0;
  v25 = 0;
  v26 = v142 & 0xC000000000000001;
  v139 = v142 & 0xFFFFFFFFFFFFFF8;
  v137 = (v142 + 32);
  v135 = v20;
  v134 = v22;
  v136 = v142 & 0xC000000000000001;
  while (1)
  {
    if (v26)
    {
      v27 = MEMORY[0x2318BAD10](v25, v142);
    }

    else
    {
      if (v25 >= *(v139 + 16))
      {
        goto LABEL_147;
      }

      v27 = *(v137 + v25);
    }

    v28 = __OFADD__(v25++, 1);
    if (v28)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v149 = v27;
    v29 = [v27 identifier];
    v30 = sub_22CA20E20();
    v32 = v31;

    if (v30 == 0x746E456F69647561 && v32 == 0xEB00000000797469)
    {
      break;
    }

    v34 = sub_22CA21360();

    if (v34)
    {
      goto LABEL_26;
    }

LABEL_48:

LABEL_52:
    if (v25 == v24)
    {
      goto LABEL_59;
    }
  }

LABEL_26:
  v35 = [v149 *(v23 + 3944)];
  if (!v35)
  {
    goto LABEL_48;
  }

  v36 = v35;
  v37 = [v35 *(v23 + 3944)];

  sub_22CA21130();
  swift_unknownObjectRelease();
  v150 = sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  v141 = v156;
  v38 = [v156 properties];
  v39 = sub_22CA20EC0();

  if (!(v39 >> 62))
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  v40 = sub_22CA21290();
  if (!v40)
  {
LABEL_50:

LABEL_51:
    v26 = v136;
    goto LABEL_52;
  }

LABEL_30:
  if (v40 >= 1)
  {
    v41 = 0;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x2318BAD10](v41, v39);
      }

      else
      {
        v42 = *(v39 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = [v42 identifier];
      v45 = sub_22CA20E20();
      v47 = v46;

      if (v45 == 2003789939 && v47 == 0xE400000000000000)
      {

        v23 = 0x27872A000uLL;
      }

      else
      {
        v49 = sub_22CA21360();

        v23 = 0x27872A000;
        if ((v49 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v50 = [v43 *(v23 + 3944)];
      if (!v50 || (v51 = v50, v52 = [v50 *(v23 + 3944)], v51, sub_22CA21130(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) == 0))
      {
LABEL_45:

        goto LABEL_46;
      }

      v53 = [v156 identifier];
      v54 = [v53 instanceIdentifier];

      v145 = sub_22CA20E20();
      v56 = v55;

      v23 = 0x27872A000;

      v151 = v56;
LABEL_46:
      if (v40 == ++v41)
      {

        a3 = v147;
        v24 = v134;
        goto LABEL_51;
      }
    }
  }

LABEL_149:
  __break(1u);
}

void sub_22C9F4DC0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C9FA1E8(v3);
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_22CA11F70((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_22C9F4E64()
{
  sub_22C9DAEF8();
  v85 = v0;
  v79 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v7 = sub_22C9D71B4(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C9E05C0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v74 - v12;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  v14 = qword_28143A4B0;
  if (qword_28143A1D0 != -1)
  {
    swift_once();
  }

  v15 = sub_22CA20AE0();
  sub_22C9D0494(v15, &unk_28143A498);
  v16 = MEMORY[0x277D84F90];
  sub_22C9FAF8C();
  sub_22C9FB0BC();
  *(v18 - 256) = v17;
  sub_22CA20AC0();
  sub_22C9D7260();
  v19 = swift_allocObject();
  v81 = v19;
  *(v19 + 16) = v16;
  v80 = v19 + 16;
  sub_22C9D7260();
  v84 = swift_allocObject();
  *(v84 + 16) = v16;
  sub_22C9D7260();
  v20 = swift_allocObject();
  v82 = v20;
  *(v20 + 16) = v16;
  v78 = (v20 + 16);
  v21 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v22 = [v21 Intents];
  swift_unknownObjectRelease();
  v23 = [v22 Transcript];
  swift_unknownObjectRelease();
  sub_22C9F992C(v3, v13);
  sub_22C9F992C(v5, v10);
  v24 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FAFB4();
  v30 = sub_22C9F97A0(v25, v26, v27, v28, v29);
  sub_22C9D7260();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_22CA20DD0();
  v32 = v31 + 16;
  v33 = sub_22CA20EF0();
  *(v33 + 16) = 64;
  *(v33 + 32) = 0u;
  *(v33 + 48) = 0u;
  *(v33 + 64) = 0u;
  *(v33 + 80) = 0u;
  sub_22C9D7260();
  v34 = swift_allocObject();
  v83 = v34;
  *(v34 + 16) = v33;
  v35 = v34 + 16;
  v36 = *MEMORY[0x277CDC540];
  sub_22C9F99D8(0);
  v37 = SecRandomCopyBytes(v36, 0x40uLL, (*v35 + 32));
  if (v85)
  {
    v38 = v37;
    if (v37)
    {
      if (qword_28143A320 != -1)
      {
        swift_once();
      }

      v39 = sub_22CA20B10();
      sub_22C9D0494(v39, &unk_28143A4E0);
      v40 = sub_22CA20AF0();
      v41 = sub_22CA21000();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 67109120;
        *(v42 + 4) = v38;
        _os_log_impl(&dword_22C9CA000, v40, v41, "Generating bytes resulted in error: %d", v42, 8u);
        sub_22C9D70C0();
      }

      goto LABEL_40;
    }
  }

  v77 = v14;
  v76 = v23;
  v75 = v30;
  v43 = [v23 publisherWithOptions_];
  sub_22C9FB018();
  v44 = swift_allocObject();
  *(v44 + 16) = v79;
  *(v44 + 24) = v31;
  v90 = sub_22C9F9A3C;
  v91 = v44;
  v86 = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_22C9FAF44;
  v89 = &unk_283FCD8A0;
  v45 = _Block_copy(&v86);

  v79 = [v43 filterWithIsIncluded_];
  _Block_release(v45);

  v90 = sub_22C9FAEA4;
  v91 = 0;
  v86 = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_22C9FAF40;
  v89 = &unk_283FCD8C8;
  v46 = _Block_copy(&v86);
  v47 = swift_allocObject();
  v48 = v82;
  v49 = v83;
  *(v47 + 16) = v84;
  *(v47 + 24) = v85 & 1;
  *(v47 + 32) = v49;
  *(v47 + 40) = v48;
  *(v47 + 48) = v81;
  *(v47 + 56) = v31;
  v90 = sub_22C9F9A44;
  v91 = v47;
  v86 = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v88 = sub_22C9FAF40;
  v89 = &unk_283FCD918;
  v50 = _Block_copy(&v86);

  v51 = v79;
  v52 = [v79 sinkWithCompletion:v46 receiveInput:v50];
  _Block_release(v50);
  _Block_release(v46);

  swift_beginAccess();
  v53 = sub_22C9EEEB8(0xD000000000000013, 0x800000022CA25AD0, *(v31 + 16));
  v55 = v54;
  swift_endAccess();
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v56 = v53;
  }

  if (qword_28143A1F8 != -1)
  {
    swift_once();
  }

  v57 = sub_22C9EEEB8(0xD000000000000013, 0x800000022CA25AD0, qword_28143A4D8);
  if (v58)
  {
    if (v56 < 0)
    {
      v57 = 0;
      goto LABEL_21;
    }
  }

  else if (v56 < v57)
  {
LABEL_21:
    v59 = v57 - v56;
    if (__OFSUB__(v57, v56))
    {
      __break(1u);
    }

    else
    {
      v60 = v78;
      sub_22C9FAFE8();
      swift_beginAccess();
      if (sub_22C9E6DA0() < v59)
      {
        v59 = sub_22C9E6DA0();
      }

      v61 = *v60;

      v59 = sub_22C9F220C(v59, v61, sub_22C9E6DA0, type metadata accessor for MSPlayMediaAppIntent);
      v55 = v63;
      v48 = v64;
      v32 = v65;
      if ((v65 & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_22CA21370();
      swift_unknownObjectRetain_n();
      v68 = swift_dynamicCastClass();
      if (!v68)
      {
        swift_unknownObjectRelease();
        v68 = MEMORY[0x277D84F90];
      }

      v69 = *(v68 + 16);

      if (!__OFSUB__(v32 >> 1, v48))
      {
        if (v69 == (v32 >> 1) - v48)
        {
          v67 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v67)
          {
LABEL_33:
            swift_beginAccess();
            sub_22C9F7A84(v67, sub_22C9E6DA0, sub_22C9FA5F8);
            swift_endAccess();
            goto LABEL_34;
          }

          v67 = MEMORY[0x277D84F90];
LABEL_32:
          swift_unknownObjectRelease();
          goto LABEL_33;
        }

        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_43:
    swift_unknownObjectRelease();
LABEL_25:
    sub_22C9F9F74(v62, v59, v55, v48, v32);
    v67 = v66;
    goto LABEL_32;
  }

LABEL_34:
  sub_22CA21070();
  sub_22C9FAF74();
  sub_22C9FB0BC();
  sub_22CA20AC0();
  if (qword_28143A1B8 != -1)
  {
    sub_22C9FAF60();
    swift_once();
  }

  v70 = sub_22CA20B10();
  sub_22C9D0494(v70, &unk_28143A450);
  sub_22C9FB0E8();

  v71 = sub_22CA20AF0();
  v72 = sub_22CA21010();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = sub_22C9D7164();
    *v73 = 134217984;
    sub_22C9FAFE8();
    swift_beginAccess();
    *(v73 + 4) = sub_22C9E6DA0();

    _os_log_impl(&dword_22C9CA000, v71, v72, "Returning %ld App Intents", v73, 0xCu);
    sub_22C9D70C0();
  }

  else
  {
  }

  sub_22C9FAFE8();
  swift_beginAccess();

LABEL_40:

  sub_22C9DAF14();
}

uint64_t sub_22C9F58A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 eventBody];
  if (result)
  {
    v6 = result;
    v7 = [result resolvedAction];
    if (!v7)
    {
LABEL_39:

      return 0;
    }

    v8 = v7;
    v9 = sub_22C9DDEC8(v7, &selRef_identifier);
    if (v10)
    {
      if (v9 == 0xD000000000000014 && v10 == 0x800000022CA27930)
      {
        goto LABEL_16;
      }

      v12 = sub_22CA21360();

      if (v12)
      {
        goto LABEL_17;
      }
    }

    v13 = sub_22C9DDEC8(v8, &selRef_identifier);
    if (!v14)
    {
LABEL_38:

      goto LABEL_39;
    }

    if (v13 != 0x6964754179616C50 || v14 != 0xEF746E65746E496FLL)
    {
      v16 = sub_22CA21360();

      if ((v16 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_17:
      v17 = sub_22C9DDEC8(v6, &selRef_bundleID);
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0x6C7070612E6D6F63;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xEE0044494F4E2E65;
      }

      if (*(a2 + 16))
      {
        v39[0] = v19;
        v39[1] = v20;
        MEMORY[0x28223BE20](v17);
        v38[2] = v39;

        v21 = sub_22C9F9E10(sub_22C9FAEC4, v38, a2);

        if (!v21)
        {

          return 0;
        }
      }

      if (qword_28143A1F8 != -1)
      {
        swift_once();
      }

      v22 = qword_28143A4D8;

      v23 = sub_22C9EEEB8(v19, v20, v22);
      v25 = v24;

      if (v25)
      {
        v26 = 10;
      }

      else
      {
        v26 = v23;
      }

      swift_beginAccess();
      v27 = *(a3 + 16);
      if (*(v27 + 16) && (, v28 = sub_22C9FBFA8(v19, v20), v30 = v29, , (v30 & 1) != 0))
      {
        v31 = *(*(v27 + 56) + 8 * v28);
        swift_endAccess();
        if (v26 < v31)
        {
LABEL_33:
          if (qword_28143A1B8 != -1)
          {
            swift_once();
          }

          v32 = sub_22CA20B10();
          sub_22C9D0494(v32, &unk_28143A450);
          v33 = sub_22CA20AF0();
          v34 = sub_22CA21010();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v39[0] = v36;
            *v35 = 134218242;
            *(v35 + 4) = v26;
            *(v35 + 12) = 2080;

            v37 = sub_22C9D60B0(v19, v20, v39);

            *(v35 + 14) = v37;
            _os_log_impl(&dword_22C9CA000, v33, v34, "Skipping: Reached limit of %ld for bundleID %s", v35, 0x16u);
            sub_22C9D04CC(v36);
            MEMORY[0x2318BB680](v36, -1, -1);
            MEMORY[0x2318BB680](v35, -1, -1);
          }

          goto LABEL_38;
        }
      }

      else
      {
        swift_endAccess();
        if (v26 < 0)
        {
          goto LABEL_33;
        }
      }

      return 1;
    }

LABEL_16:

    goto LABEL_17;
  }

  return result;
}

void sub_22C9F5CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v14 = MEMORY[0x2318BB0B0]();
  sub_22C9F5D70(a1, a2, v11, (a4 + 16), a5 + 16, a6 + 16, (a7 + 16));

  objc_autoreleasePoolPop(v14);
}

void sub_22C9F5D70(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v231 = a6;
  v229 = a5;
  v230 = a4;
  v232 = a3;
  v233 = a1;
  v10 = [a1 eventBody];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v228 = a2;
  v226 = [v10 source];
  v12 = [v11 resolvedAction];
  if (!v12 || (v13 = v12, v223 = a7, v14 = sub_22CA21090(), v13, !v14))
  {

    return;
  }

  v225 = v7;
  v15 = v14;
  v16 = sub_22C9DDEC8(v11, &selRef_bundleID);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x6C7070612E6D6F63;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xEE0044494F4E2E65;
  }

  v259 = MEMORY[0x277D84FA0];
  v20 = 0x27872A000uLL;
  v227 = v15;
  v21 = [v15 parameters];
  v234 = sub_22C9D0434(0, &qword_28143A0C0, 0x277D238D8);
  v22 = sub_22CA20EC0();

  v23 = v22;
  v24 = 0x27872A000uLL;
  v25 = 0x27872A000uLL;
  v224 = v11;
  v247 = v19;
  v245 = v18;
  v240 = sub_22C9E6DA0();
  if (v240)
  {
    v242 = 0;
    v246 = 0;
    v241 = 0;
    v243 = 0;
    v26 = 0;
    v239 = v23 & 0xC000000000000001;
    v236 = v23 & 0xFFFFFFFFFFFFFF8;
    v235 = v23 + 32;
    v244 = 0x800000022CA25AB0;
    v28 = v18 == 0xD000000000000012 && 0x800000022CA25AB0 == v19;
    LODWORD(v250) = v28;
    v238 = v23;
    while (1)
    {
      if (v239)
      {
        v29 = MEMORY[0x2318BAD10](v26, v23);
      }

      else
      {
        if (v26 >= *(v236 + 16))
        {
          goto LABEL_225;
        }

        v29 = *(v235 + 8 * v26);
      }

      v30 = __OFADD__(v26++, 1);
      if (v30)
      {
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
        goto LABEL_228;
      }

      v31 = *(v24 + 3752);
      v248 = v29;
      v32 = [v29 v31];
      v33 = sub_22CA20E20();
      v35 = v34;

      if (v33 == 0x746E456F69647561 && v35 == 0xEB00000000797469)
      {
        break;
      }

      v37 = sub_22CA21360();

      if (v37)
      {
        goto LABEL_30;
      }

LABEL_81:

LABEL_84:
      v23 = v238;
      if (v26 == v240)
      {

        v20 = 0x27872A000;
        goto LABEL_88;
      }
    }

LABEL_30:
    v38 = [v248 *(v25 + 3944)];
    if (!v38)
    {
      goto LABEL_81;
    }

    v39 = v38;
    v40 = [v38 *(v25 + 3944)];

    sub_22CA21130();
    swift_unknownObjectRelease();
    v249 = sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_81;
    }

    v237 = v253;
    v41 = [v253 properties];
    v42 = sub_22CA20EC0();

    if (!(v42 >> 62))
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
        goto LABEL_34;
      }

      goto LABEL_83;
    }

    v43 = sub_22CA21290();
    if (!v43)
    {
LABEL_83:

      goto LABEL_84;
    }

LABEL_34:
    if (v43 >= 1)
    {
      v44 = 0;
      v251 = v42 & 0xC000000000000001;
      while (1)
      {
        if (v251)
        {
          v45 = MEMORY[0x2318BAD10](v44, v42);
        }

        else
        {
          v45 = *(v42 + 8 * v44 + 32);
        }

        v46 = v45;
        if ((v250 & 1) == 0 && (sub_22CA21360() & 1) == 0)
        {
          v58 = [v46 *(v24 + 3752)];
          v59 = sub_22CA20E20();
          v61 = v60;

          if (v59 == 0x656C746974 && v61 == 0xE500000000000000)
          {

            v24 = 0x27872A000;
LABEL_58:
            v64 = [v46 value];
            if (!v64)
            {
              goto LABEL_68;
            }

            v54 = v64;
            sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
            v65 = [v54 valueType];
            v66 = [objc_opt_self() stringValueType];
            v67 = sub_22CA210D0();

            if (v67)
            {
LABEL_60:

              v68 = [v54 value];
              sub_22CA21130();

              swift_unknownObjectRelease();
              v69 = swift_dynamicCast();
              v70 = v253;
              if (!v69)
              {
                v70 = 0;
              }

              v242 = v70;
              if (v69)
              {
                v71 = v254;
              }

              else
              {
                v71 = 0;
              }

              v246 = v71;
              goto LABEL_67;
            }

LABEL_66:

LABEL_67:
            v24 = 0x27872A000uLL;
            goto LABEL_68;
          }

          v63 = sub_22CA21360();

          v24 = 0x27872A000;
          if (v63)
          {
            goto LABEL_58;
          }
        }

        v47 = [v46 *(v24 + 3752)];
        v48 = sub_22CA20E20();
        v50 = v49;

        if (v48 == 0x656D614E776F6873 && v50 == 0xE800000000000000)
        {

LABEL_48:
          v53 = [v46 value];
          if (!v53)
          {
            goto LABEL_68;
          }

          v54 = v53;
          sub_22C9D0434(0, &qword_28143A098, 0x277D82BB8);
          v55 = [v54 valueType];
          v56 = [objc_opt_self() stringValueType];
          v57 = sub_22CA210D0();

          if (v57)
          {
            goto LABEL_60;
          }

          goto LABEL_66;
        }

        v52 = sub_22CA21360();

        if (v52)
        {
          goto LABEL_48;
        }

LABEL_68:
        v72 = [v46 *(v24 + 3752)];
        v73 = sub_22CA20E20();
        v75 = v74;

        if (v73 == 2003789939 && v75 == 0xE400000000000000)
        {
        }

        else
        {
          v77 = sub_22CA21360();

          if ((v77 & 1) == 0)
          {
            goto LABEL_78;
          }
        }

        v78 = [v46 value];
        if (!v78 || (v79 = v78, v80 = [v78 value], v79, sub_22CA21130(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) == 0))
        {
LABEL_78:

          goto LABEL_79;
        }

        v81 = [v253 *(v24 + 3752)];
        v82 = [v81 instanceIdentifier];

        v241 = sub_22CA20E20();
        v243 = v83;

LABEL_79:
        if (v43 == ++v44)
        {

          v25 = 0x27872A000;
          goto LABEL_84;
        }
      }
    }

LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v242 = 0;
  v246 = 0;
  v241 = 0;
  v243 = 0;
LABEL_88:
  v84 = [v227 *(v20 + 3896)];
  v85 = sub_22CA20EC0();

  v86 = sub_22C9E6DA0();
  if (!v86)
  {
LABEL_110:

    if (qword_28143A1B8 == -1)
    {
LABEL_111:
      v107 = sub_22CA20B10();
      sub_22C9D0494(v107, &unk_28143A450);
      v108 = sub_22CA20AF0();
      v109 = sub_22CA21010();
      v110 = v224;
      if (os_log_type_enabled(v108, v109))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_22C9CA000, v108, v109, "Skipping: Nil ID", v111, 2u);
        MEMORY[0x2318BB680](v111, -1, -1);
      }

      goto LABEL_195;
    }

LABEL_232:
    swift_once();
    goto LABEL_111;
  }

  v87 = v86;
  v88 = 0;
  v251 = v85 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v85 & 0xC000000000000001) != 0)
    {
      v89 = MEMORY[0x2318BAD10](v88, v85);
      v90 = 0x27872A000;
    }

    else
    {
      v90 = 0x27872A000uLL;
      if (v88 >= *(v251 + 16))
      {
        goto LABEL_226;
      }

      v89 = *(v85 + 8 * v88 + 32);
    }

    v91 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_224;
    }

    v92 = [v89 *(v90 + 3752)];
    v93 = sub_22CA20E20();
    v95 = v94;

    if (v93 == 0x65646F73697065 && v95 == 0xE700000000000000)
    {
      break;
    }

    v97 = sub_22CA21360();

    if (v97)
    {
      goto LABEL_107;
    }

    v98 = [v89 identifier];
    v99 = sub_22CA20E20();
    v101 = v100;

    if (v99 == 0x746E456F69647561 && v101 == 0xEB00000000797469)
    {
      break;
    }

    v103 = sub_22CA21360();

    if (v103)
    {
      goto LABEL_107;
    }

LABEL_109:

    ++v88;
    if (v91 == v87)
    {
      goto LABEL_110;
    }
  }

LABEL_107:
  v104 = [v89 value];
  if (!v104)
  {
    goto LABEL_109;
  }

  v105 = v104;
  v106 = [v104 value];

  sub_22CA21130();
  swift_unknownObjectRelease();
  sub_22C9D0434(0, &qword_28143A0A0, 0x277D237F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_109;
  }

  v112 = [v253 identifier];
  v113 = [v112 instanceIdentifier];

  v235 = sub_22CA20E20();
  v222 = v114;

  v221 = v253;
  v115 = [v253 properties];
  v116 = sub_22CA20EC0();

  v251 = sub_22C9E6DA0();
  v117 = 0;
  if (v251)
  {
    v118 = 0;
    v249 = 0x800000022CA279D0;
    v250 = v116 & 0xC000000000000001;
    v244 = v116 & 0xFFFFFFFFFFFFFF8;
    v239 = 0x800000022CA279F0;
    v248 = v116;
    while (2)
    {
      v119 = v118;
      while (1)
      {
        if (v250)
        {
          v120 = MEMORY[0x2318BAD10](v119, v116);
        }

        else
        {
          if (v119 >= *(v244 + 16))
          {
            goto LABEL_229;
          }

          v120 = *(v116 + 8 * v119 + 32);
        }

        v121 = v120;
        v118 = v119 + 1;
        if (__OFADD__(v119, 1))
        {
          goto LABEL_227;
        }

        v122 = [v120 identifier];
        v123 = sub_22CA20E20();
        v125 = v124;

        if (v123 == 0xD000000000000012 && v249 == v125)
        {
          break;
        }

        v127 = sub_22CA21360();

        if (v127)
        {
          goto LABEL_130;
        }

        ++v119;
        v116 = v248;
        if (v118 == v251)
        {
          goto LABEL_163;
        }
      }

LABEL_130:
      v128 = [v121 value];
      if (v128)
      {
        v129 = v128;
        v130 = [v128 value];

        sub_22CA21130();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v220 = v253;
          v131 = [v253 properties];
          v132 = sub_22CA20EC0();

          v238 = sub_22C9E6DA0();
          v133 = 0;
          v237 = (v132 & 0xC000000000000001);
          v240 = v132;
          v236 = v132 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v238 == v133)
            {

              goto LABEL_162;
            }

            if (v237)
            {
              v134 = MEMORY[0x2318BAD10](v133, v240);
            }

            else
            {
              if (v133 >= *(v236 + 16))
              {
                goto LABEL_231;
              }

              v134 = *(v240 + 8 * v133 + 32);
            }

            v135 = v134;
            if (__OFADD__(v133, 1))
            {
              goto LABEL_230;
            }

            v136 = [v134 identifier];
            v137 = sub_22CA20E20();
            v139 = v138;

            if (v137 == 0xD000000000000014 && v239 == v139)
            {
              break;
            }

            v141 = sub_22CA21360();

            if (v141)
            {
              goto LABEL_147;
            }

            ++v133;
          }

LABEL_147:

          v142 = [v135 value];
          if (v142)
          {
            v143 = v142;
            v144 = [v142 value];

            sub_22CA21130();
            swift_unknownObjectRelease();
            sub_22C9D02E4(&qword_27D9E4F80, &qword_22CA23EB0);
            if (swift_dynamicCast())
            {
              v240 = v253;
              v238 = sub_22C9E6DA0();
              if (v238)
              {
                if (v238 < 1)
                {
                  goto LABEL_235;
                }

                v145 = 0;
                do
                {
                  if ((v240 & 0xC000000000000001) != 0)
                  {
                    v146 = MEMORY[0x2318BAD10](v145, v240);
                  }

                  else
                  {
                    v146 = *(v240 + 8 * v145 + 32);
                  }

                  v147 = v146;
                  v148 = [v146 value];
                  sub_22CA21130();
                  swift_unknownObjectRelease();
                  if (swift_dynamicCast())
                  {
                    v149 = v253;
                    v150 = v254;
                  }

                  else
                  {
                    v150 = 0xE400000000000000;
                    v149 = 1701736270;
                  }

                  ++v145;
                  sub_22CA15904(&v256, v149, v150);
                }

                while (v238 != v145);
              }

LABEL_162:
              v117 = 1;
              v116 = v248;
              if (v118 != v251)
              {
                continue;
              }

              goto LABEL_163;
            }
          }
        }
      }

      break;
    }

    goto LABEL_162;
  }

LABEL_163:

  v151 = v245 == 0xD000000000000012 && 0x800000022CA25AB0 == v247;
  if (v151 || (sub_22CA21360() & 1) != 0)
  {
    v152 = v228;
    v153 = v243;
    v154 = v246;
    v155 = v222;
    if (!v243)
    {

      v241 = v235;
      v153 = v222;
    }
  }

  else
  {

    v155 = v222;

    v241 = v235;
    v153 = v222;
    v152 = v228;
    v154 = v246;
  }

  if (v154)
  {
    v156 = (v154 >> 56) & 0xF;
    if ((v154 & 0x2000000000000000) == 0)
    {
      v156 = v242 & 0xFFFFFFFFFFFFLL;
    }

    if (v156 != 0 && (v117 & 1) != 0 && v226 == 1)
    {
      v157 = swift_beginAccess();
      v158 = *(v152 + 16);
      v256 = v235;
      v257 = v155;
      MEMORY[0x28223BE20](v157);
      v219 = &v256;

      v159 = v225;
      v160 = sub_22C9F9E10(sub_22C9FAEC4, v218, v158);
      v225 = v159;

      if (!v160)
      {
        if (v232)
        {
          swift_beginAccess();

          v186 = sub_22C9F7920(v185);
          v258 = MEMORY[0x277CC9318];
          v256 = v186;
          v257 = v187;
          v188 = v247;

          [v233 timestamp];
          type metadata accessor for MSSuggesterUtils();
          sub_22CA16750(1);
          v189 = v259;
          objc_allocWithZone(type metadata accessor for MSPlayMediaAppIntent());

          v219 = v246;
        }

        else
        {

          v258 = sub_22C9D0434(0, &unk_27D9E5300, 0x277D23720);
          v191 = v227;
          v256 = v227;
          v188 = v247;

          v192 = v191;
          [v233 timestamp];
          type metadata accessor for MSSuggesterUtils();
          sub_22CA16750(1);
          v189 = v259;
          objc_allocWithZone(type metadata accessor for MSPlayMediaAppIntent());

          v219 = 0;
        }

        v190 = v245;
        v193 = MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)();
        v194 = v224;
        v195 = v228;
        swift_beginAccess();
        sub_22C9F9A58(sub_22CA11CC8);
        v196 = *(*(v195 + 16) + 16);
        sub_22C9F9AE0(v196, sub_22CA11CC8);
        v197 = *(v195 + 16);
        *(v197 + 16) = v196 + 1;
        v198 = v197 + 16 * v196;
        v199 = v222;
        *(v198 + 32) = v235;
        *(v198 + 40) = v199;
        *(v195 + 16) = v197;
        swift_endAccess();
        if (v190 == 0xD000000000000013 && 0x800000022CA25AD0 == v188)
        {

          v202 = v223;
        }

        else
        {
          v201 = sub_22CA21360();

          v202 = v223;
          if ((v201 & 1) == 0)
          {
            v203 = v245 == 0x6C7070612E6D6F63 && v247 == 0xEF636973754D2E65;
            if (!v203 && (sub_22CA21360() & 1) == 0)
            {
              goto LABEL_213;
            }
          }
        }

        if (!*(v189 + 16))
        {
          swift_beginAccess();
          sub_22C9EEDC4(v193);
          swift_endAccess();

          v217 = 0;
          goto LABEL_222;
        }

LABEL_213:
        swift_beginAccess();
        v204 = v193;
        sub_22C9EEDC4(v204);
        swift_endAccess();
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v255 = *v202;
        v205 = v255;
        *v202 = 0x8000000000000000;
        v206 = sub_22C9FBFA8(v245, v247);
        if (__OFADD__(*(v205 + 16), (v207 & 1) == 0))
        {
          __break(1u);
        }

        else
        {
          v208 = v206;
          v209 = v207;
          sub_22C9D02E4(&qword_27D9E4F20, &qword_22CA23AF0);
          v210 = sub_22CA21250();
          v211 = v255;
          if (v210)
          {
            v212 = sub_22C9FBFA8(v245, v247);
            if ((v209 & 1) != (v213 & 1))
            {
LABEL_236:
              sub_22CA213C0();
              __break(1u);
              return;
            }

            v208 = v212;
          }

          *v223 = v211;
          if ((v209 & 1) == 0)
          {
            sub_22CA028F4(v208, v245, v247, 0, v211);
          }

          v214 = *(v211 + 56);
          v215 = *(v214 + 8 * v208);
          v30 = __OFADD__(v215, 1);
          v216 = v215 + 1;
          if (!v30)
          {
            *(v214 + 8 * v208) = v216;
            swift_endAccess();

            v217 = sub_22C9E8E30;
LABEL_222:
            sub_22C9E97C0(v217, 0);
            return;
          }
        }

        __break(1u);
LABEL_235:
        __break(1u);
        goto LABEL_236;
      }
    }
  }

  if (qword_28143A1B8 != -1)
  {
    swift_once();
  }

  v161 = sub_22CA20B10();
  sub_22C9D0494(v161, &unk_28143A450);
  v162 = v246;

  v163 = v228;

  v164 = v153;

  v165 = v163;
  v166 = sub_22CA20AF0();
  v167 = sub_22CA21010();

  if (os_log_type_enabled(v166, v167))
  {
    v168 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v255 = v251;
    *v168 = 136316162;
    v169 = v165;
    v170 = sub_22C9D60B0(v241, v164, &v255);

    *(v168 + 4) = v170;
    LODWORD(v250) = v167;
    *(v168 + 12) = 2080;
    if (v162)
    {
      v171 = v242;
    }

    else
    {
      v171 = 1701736270;
    }

    if (v162)
    {
      v172 = v162;
    }

    else
    {
      v172 = 0xE400000000000000;
    }

    v173 = sub_22C9D60B0(v171, v172, &v255);

    *(v168 + 14) = v173;
    *(v168 + 22) = 1024;
    *(v168 + 24) = v117 & 1;
    *(v168 + 28) = 2080;
    type metadata accessor for MSSuggesterUtils();
    v174 = sub_22CA16774(v226);
    v176 = sub_22C9D60B0(v174, v175, &v255);

    *(v168 + 30) = v176;
    *(v168 + 38) = 2080;
    v177 = swift_beginAccess();
    v178 = *(v169 + 16);
    v252[0] = v235;
    v252[1] = v155;
    MEMORY[0x28223BE20](v177);
    v219 = v252;

    v179 = v225;
    v180 = sub_22C9F9E10(sub_22C9FAEC4, v218, v178);
    v225 = v179;

    if (v180)
    {
      v181 = 7562585;
    }

    else
    {
      v181 = 28494;
    }

    if (v180)
    {
      v182 = 0xE300000000000000;
    }

    else
    {
      v182 = 0xE200000000000000;
    }

    v183 = sub_22C9D60B0(v181, v182, &v255);

    *(v168 + 40) = v183;
    _os_log_impl(&dword_22C9CA000, v166, v250, "Skipping: Id: %s, Title: %s, CMD: %{BOOL}d, IS: %s, Seen: %s", v168, 0x30u);
    v184 = v251;
    swift_arrayDestroy();
    MEMORY[0x2318BB680](v184, -1, -1);
    MEMORY[0x2318BB680](v168, -1, -1);
  }

  else
  {
  }

LABEL_195:
}

uint64_t sub_22C9F7920(uint64_t a1)
{
  v7 = sub_22C9D02E4(&qword_27D9E4F88, &qword_22CA23EB8);
  v8 = sub_22C9FADFC(&qword_28143A0C8, &qword_27D9E4F88, &qword_22CA23EB8, MEMORY[0x277CC9C28]);
  v6[0] = a1;
  v2 = sub_22C9D05CC(v6, v7);
  sub_22C9FA29C(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_22C9D04CC(v6);
  return v3;
}

void sub_22C9F79F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22C9F7A84(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_22C9FA1FC(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22C9F7B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v5 = sub_22C9D71B4(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C9E05C0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v13 = sub_22CA209F0();
  sub_22C9E054C();
  v15 = *(v14 + 16);
  v15(v11, a1, v13);
  sub_22C9FB030();
  sub_22C9D0B98(v16, v17, v18, v13);
  v15(v8, a2, v13);
  sub_22C9FB030();
  sub_22C9D0B98(v19, v20, v21, v13);
  sub_22C9F4E64();
  v23 = v22;
  sub_22C9DF60C(v8, &unk_27D9E4F00, &unk_22CA232D0);
  sub_22C9DF60C(v11, &unk_27D9E4F00, &unk_22CA232D0);
  result = sub_22C9E6DA0();
  if (!result)
  {
LABEL_13:

    return v12;
  }

  v25 = result;
  if (result >= 1)
  {
    v26 = 0;
    v47 = v23 & 0xC000000000000001;
    do
    {
      if (v47)
      {
        v27 = MEMORY[0x2318BAD10](v26, v23);
      }

      else
      {
        v27 = *(v23 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = sub_22CA1EC14();
      if (v29)
      {
        v30 = v29;
        v31 = &v28[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
        v32 = objc_allocWithZone(MSUnifiedMediaIntent);
        v33 = v30;

        v34 = sub_22CA20E10();

        v35 = [v32 initWithIntent:v33 bundleID:v34];

        v36 = *v31;
        v37 = v31[1];
        v38 = *&v28[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource];
        objc_allocWithZone(MSSuggestion);
        v39 = v35;

        v40 = sub_22C9DDDC8(v39, v36, v37, v38);
        v41 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
        sub_22C9DE248(&v40[OBJC_IVAR___MSSuggestion_mediaAppIntent], v48);
        v42 = *&v40[v41];
        *&v40[v41] = v28;
        v43 = v28;

        [v40 setIntentDate_];
        v44 = v40;
        MEMORY[0x2318BA9F0]();
        v45 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v45 >> 1)
        {
          sub_22C9FB058(v45);
          sub_22CA20EE0();
        }

        sub_22CA20F00();

        v12 = v49;
      }

      else
      {
      }

      ++v26;
    }

    while (v25 != v26);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C9F7EA0(void *a1)
{
  v1 = a1;
  v37 = MEMORY[0x277D84F90];
  v2 = [a1 allowedBundleIdentifiers];
  sub_22CA20EC0();

  sub_22C9F4E64();
  v4 = v3;

  result = sub_22C9E6DA0();
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  v6 = result;
  if (result >= 1)
  {
    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v9 = MEMORY[0x277D84F90];
    v10 = 0x27872A000uLL;
    v34 = result;
    v35 = v1;
    v33 = v4 & 0xC000000000000001;
    do
    {
      if (v8)
      {
        v11 = MEMORY[0x2318BAD10](v7, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v7 + 32);
      }

      v12 = v11;
      if (([v1 *(v10 + 4008)] == 2 || (v13 = *&v12[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource], v13 == objc_msgSend(v1, *(v10 + 4008)))) && (v14 = sub_22CA1EC14()) != 0)
      {
        v15 = v14;
        v16 = v4;
        v17 = &v12[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_bundleID];
        v18 = objc_allocWithZone(MSUnifiedMediaIntent);
        v19 = v15;

        v20 = sub_22CA20E10();

        v21 = [v18 initWithIntent:v19 bundleID:v20];

        v22 = *v17;
        v23 = v17[1];
        v24 = *&v12[OBJC_IVAR____TtC14MediaSuggester20MSPlayMediaAppIntent_suggestionSource];
        v25 = objc_allocWithZone(MSSuggestion);
        v26 = v21;

        v27 = sub_22C9DDDC8(v26, v22, v23, v24);
        v28 = OBJC_IVAR___MSSuggestion_mediaAppIntent;
        sub_22C9DE248(&v27[OBJC_IVAR___MSSuggestion_mediaAppIntent], v36);
        v29 = *&v27[v28];
        *&v27[v28] = v12;
        v30 = v12;

        [v27 setIntentDate_];
        v31 = v27;
        MEMORY[0x2318BA9F0]();
        v32 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v32 >> 1)
        {
          sub_22C9FB058(v32);
          sub_22CA20EE0();
        }

        sub_22CA20F00();

        v9 = v37;
        v4 = v16;
        v6 = v34;
        v1 = v35;
        v8 = v33;
        v10 = 0x27872A000;
      }

      else
      {
      }

      ++v7;
    }

    while (v6 != v7);

    return v9;
  }

  __break(1u);
  return result;
}

void sub_22C9F81A4()
{
  sub_22C9DAEF8();
  v55[0] = v1;
  v57 = v2;
  v3 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v4 = sub_22C9D71B4(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C9E05C0();
  sub_22C9FB048();
  MEMORY[0x28223BE20](v5);
  v7 = v55 - v6;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  v8 = qword_28143A4B0;
  if (qword_28143A1C8 != -1)
  {
    swift_once();
  }

  v9 = sub_22CA20AE0();
  v56 = sub_22C9D0494(v9, &unk_28143A480);
  v10 = MEMORY[0x277D84F90];
  sub_22C9FAF8C();
  sub_22CA20AC0();
  sub_22C9D7260();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v58 = v11 + 16;
  sub_22C9D7260();
  v12 = swift_allocObject();
  v55[1] = v8;
  v13 = v12;
  *(v12 + 16) = MEMORY[0x277D84FA0];
  v59 = sub_22C9D0434(0, &qword_28143A310, 0x277CD3EC0);
  sub_22C9D02E4(&qword_27D9E4F50, &qword_22CA23E58);
  v14 = sub_22CA20E30();
  v16 = v15;
  v17 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v18 = [v17 Intent];
  swift_unknownObjectRelease();
  v19 = sub_22CA209F0();
  sub_22C9E054C();
  v21 = *(v20 + 16);
  v21(v7, v55[0], v19);
  sub_22C9FB030();
  sub_22C9D0B98(v22, v23, v24, v19);
  v21(v0, v57, v19);
  sub_22C9FB030();
  sub_22C9D0B98(v25, v26, v27, v19);
  v28 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FAFB4();
  v34 = sub_22C9F97A0(v29, v30, v31, v32, v33);
  v57 = v18;
  v35 = [v18 publisherWithOptions_];
  sub_22C9FB03C();
  v36 = swift_allocObject();
  v36[2] = v14;
  v36[3] = v16;
  v36[4] = v13;
  sub_22C9FAFC4(v36);
  v60 = 1107296256;
  v61 = sub_22C9FAF44;
  v62 = &unk_283FCDD00;
  v37 = _Block_copy(&v59);
  v38 = v64;

  v39 = [v35 filterWithIsIncluded_];
  v40 = sub_22C9FB0E8();
  _Block_release(v40);

  v63 = sub_22C9F8944;
  v64 = 0;
  v59 = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_22C9FAF40;
  v62 = &unk_283FCDD28;
  v41 = _Block_copy(&v59);
  sub_22C9FB018();
  v42 = swift_allocObject();
  *(v42 + 16) = v13;
  *(v42 + 24) = v11;
  v63 = sub_22C9FADCC;
  v64 = v42;
  v59 = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_22C9FAF40;
  v62 = &unk_283FCDD78;
  v43 = _Block_copy(&v59);

  v44 = [v38 sinkWithCompletion:v41 receiveInput:v43];
  _Block_release(v43);
  _Block_release(v41);

  sub_22CA21070();
  sub_22C9FAF74();
  sub_22CA20AC0();
  if (qword_28143A1B8 != -1)
  {
    sub_22C9FAF60();
    swift_once();
  }

  v45 = sub_22CA20B10();
  sub_22C9D0494(v45, &unk_28143A450);
  sub_22C9FB0DC();

  v46 = sub_22CA20AF0();
  v47 = sub_22CA21010();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = sub_22C9D7164();
    v49 = swift_slowAlloc();
    v59 = v49;
    *v48 = 136315138;
    sub_22C9FAFE8();
    swift_beginAccess();

    v51 = MEMORY[0x2318BAA20](v50, MEMORY[0x277D837D0]);
    v56 = v34;
    v53 = v52;

    v54 = sub_22C9D60B0(v51, v53, &v59);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_22C9CA000, v46, v47, "allBundleIDsForINPlayMediaIntents -> %s", v48, 0xCu);
    sub_22C9D04CC(v49);
    sub_22C9D70C0();
    sub_22C9D70C0();
  }

  else
  {
  }

  sub_22C9FAFE8();
  swift_beginAccess();

  sub_22C9DAF14();
}

uint64_t sub_22C9F8820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 eventBody];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = sub_22C9DDEC8(v7, &selRef_intentClass);
  if (!v10)
  {
    goto LABEL_12;
  }

  if (v9 == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = sub_22CA21360();

    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v13 = sub_22C9DDEC8(v8, &selRef_bundleID);
  if (!v14)
  {
LABEL_12:

LABEL_13:
    v18 = 0;
    return v18 & 1;
  }

  v15 = v13;
  v16 = v14;
  swift_beginAccess();
  v17 = *(a4 + 16);

  LOBYTE(v15) = sub_22CA148CC(v15, v16, v17);

  v18 = v15 ^ 1;
  return v18 & 1;
}

void sub_22C9F8950(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = [a1 eventBody];
  if (v7)
  {
    v8 = v7;
    v9 = sub_22C9FA314(v7);
    if (v10 >> 60 == 15)
    {
      if (qword_28143A1B8 != -1)
      {
        swift_once();
      }

      v11 = sub_22CA20B10();
      sub_22C9D0494(v11, &unk_28143A450);
      v12 = a1;
      v13 = sub_22CA20AF0();
      v14 = sub_22CA21000();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v12;
        *v16 = v12;
        v17 = v12;
        _os_log_impl(&dword_22C9CA000, v13, v14, "InteractionData is empty: %@", v15, 0xCu);
        sub_22C9DF60C(v16, &unk_27D9E5090, &qword_22CA22E00);
        MEMORY[0x2318BB680](v16, -1, -1);
        MEMORY[0x2318BB680](v15, -1, -1);
      }

      goto LABEL_8;
    }

    v18 = v9;
    v19 = v10;
    sub_22C9D0434(0, &qword_28143A0A8, 0x277CCAAC8);
    sub_22C9D0434(0, &unk_28143A0B0, 0x277CD3D58);
    v20 = sub_22CA21060();
    if (!v3)
    {
      v29 = v20;
      if (v20)
      {
        v30 = [v20 intent];
        if (v30)
        {
          v31 = v30;
          objc_opt_self();
          v32 = swift_dynamicCastObjCClass();
          if (v32)
          {
            v43 = v32;
            v44 = v31;
            v33 = sub_22C9DDEC8(v8, &selRef_bundleID);
            v35 = 0x6C7070612E6D6F63;
            if (v34)
            {
              v35 = v33;
            }

            v47 = v35;
            if (v34)
            {
              v36 = v34;
            }

            else
            {
              v36 = 0xEE0044494F4E2E65;
            }

            swift_beginAccess();
            v37 = *a2;

            v45 = v36;
            v38 = sub_22CA148CC(v47, v36, v37);

            if (!v38)
            {
              type metadata accessor for MSSuggesterUtils();
              if (sub_22CA1651C(v43, v47, v45))
              {
                swift_beginAccess();

                sub_22C9F9A58(sub_22CA11CC8);
                v39 = *(*a3 + 16);
                sub_22C9F9AE0(v39, sub_22CA11CC8);
                v40 = *a3;
                *(v40 + 16) = v39 + 1;
                v41 = v40 + 16 * v39;
                v42 = v47;
                *(v41 + 32) = v47;
                *(v41 + 40) = v45;
                swift_endAccess();
                swift_beginAccess();
                sub_22CA15904(v46, v42, v45);
                swift_endAccess();
                sub_22C9FAB40(v18, v19);

                return;
              }
            }

            sub_22C9FAB40(v18, v19);

            goto LABEL_8;
          }
        }

        sub_22C9FAB40(v18, v19);
      }

      else
      {
        sub_22C9FAB40(v18, v19);
      }

LABEL_8:

      return;
    }

    if (qword_28143A1B8 != -1)
    {
      swift_once();
    }

    v21 = sub_22CA20B10();
    sub_22C9D0494(v21, &unk_28143A450);
    v22 = v3;
    v23 = sub_22CA20AF0();
    v24 = sub_22CA21000();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v3;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_22C9CA000, v23, v24, "MSBiomeMediaReader: Error unarchiving interaction: %@", v25, 0xCu);
      sub_22C9DF60C(v26, &unk_27D9E5090, &qword_22CA22E00);
      MEMORY[0x2318BB680](v26, -1, -1);
      MEMORY[0x2318BB680](v25, -1, -1);
      sub_22C9FAB40(v18, v19);
    }

    else
    {
      sub_22C9FAB40(v18, v19);
    }
  }
}

void sub_22C9F8EBC()
{
  sub_22C9DAEF8();
  v2 = v1;
  v46 = v3;
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  v5 = sub_22C9D71B4(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C9E05C0();
  sub_22C9FB048();
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  sub_22CA21080();
  if (qword_28143A1D8 != -1)
  {
    sub_22C9FAF4C();
    swift_once();
  }

  v9 = qword_28143A4B0;
  if (qword_28143A1C0 != -1)
  {
    swift_once();
  }

  v10 = sub_22CA20AE0();
  v11 = sub_22C9D0494(v10, &unk_28143A468);
  sub_22C9FB008(v11);
  v47 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  sub_22C9FAF8C();
  sub_22CA20AC0();
  sub_22C9D7260();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  sub_22C9D7260();
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84FA0];
  v15 = [BiomeLibrary() App];
  v47 = v9;
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = [v16 Intents];
  sub_22C9FB0F4();
  swift_unknownObjectRelease();
  v18 = [v12 Transcript];
  v45 = v18;
  swift_unknownObjectRelease();
  v19 = sub_22CA209F0();
  sub_22C9E054C();
  v21 = *(v20 + 16);
  v21(v8, v2, v19);
  sub_22C9FB030();
  sub_22C9D0B98(v22, v23, v24, v19);
  v21(v0, v46, v19);
  sub_22C9FB030();
  sub_22C9D0B98(v25, v26, v27, v19);
  v28 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_22C9FAFB4();
  v34 = sub_22C9F97A0(v29, v30, v31, v32, v33);
  v35 = [v18 publisherWithOptions_];
  v52 = sub_22C9FAD08;
  v53 = v14;
  v48 = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_22C9FAF44;
  v51 = &unk_283FCDC38;
  v36 = _Block_copy(&v48);

  v37 = [v35 filterWithIsIncluded_];
  _Block_release(v36);

  v52 = sub_22C9FAEA4;
  v53 = 0;
  v48 = MEMORY[0x277D85DD0];
  sub_22C9FAFA0();
  v50 = v38;
  v51 = &unk_283FCDC60;
  v39 = _Block_copy(&v48);
  sub_22C9FB018();
  v40 = swift_allocObject();
  *(v40 + 16) = v14;
  *(v40 + 24) = v13;
  v52 = sub_22C9FAD10;
  v53 = v40;
  v48 = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_22C9FAF40;
  v51 = &unk_283FCDCB0;
  v41 = _Block_copy(&v48);
  v42 = v53;

  v43 = [v37 sinkWithCompletion:v39 receiveInput:v41];
  v44 = sub_22C9FB0F4();
  _Block_release(v44);
  _Block_release(v39);

  sub_22CA21070();
  sub_22C9FAF74();
  sub_22CA20AC0();

  sub_22C9FAFE8();
  swift_beginAccess();

  sub_22C9DAF14();
}

uint64_t sub_22C9F93A8(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = v3;
  v5 = [v3 resolvedAction];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  if (![v4 source])
  {
LABEL_21:

    goto LABEL_22;
  }

  v7 = sub_22C9DDEC8(v6, &selRef_identifier);
  if (v8)
  {
    if (v7 == 0xD000000000000014 && v8 == 0x800000022CA27930)
    {
LABEL_18:

      goto LABEL_19;
    }

    v10 = sub_22CA21360();

    if (v10)
    {
      goto LABEL_19;
    }
  }

  v11 = sub_22C9DDEC8(v6, &selRef_identifier);
  if (!v12)
  {
LABEL_16:

LABEL_17:
LABEL_22:
    v20 = 0;
    return v20 & 1;
  }

  if (v11 == 0x6964754179616C50 && v12 == 0xEF746E65746E496FLL)
  {
    goto LABEL_18;
  }

  v14 = sub_22CA21360();

  if ((v14 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v15 = sub_22C9DDEC8(v4, &selRef_bundleID);
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v15;
  v18 = v16;
  swift_beginAccess();
  v19 = *(a2 + 16);

  LOBYTE(v17) = sub_22CA148CC(v17, v18, v19);

  v20 = v17 ^ 1;
  return v20 & 1;
}

void sub_22C9F9580(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = MEMORY[0x2318BB0B0]();
  a4(a1, a2 + 16, a3 + 16);

  objc_autoreleasePoolPop(v8);
}

id sub_22C9F95F8(void *a1, uint64_t *a2, uint64_t *a3)
{
  result = [a1 eventBody];
  if (result)
  {
    v6 = result;
    v7 = sub_22C9DDEC8(result, &selRef_bundleID);
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x6C7070612E6D6F63;
    }

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0xEE0044494F4E2E65;
    }

    swift_beginAccess();
    v11 = *a2;

    v12 = sub_22CA148CC(v9, v10, v11);

    if (v12)
    {
    }

    else
    {
      swift_beginAccess();

      sub_22C9F9A58(sub_22CA11CC8);
      v13 = *(*a3 + 16);
      sub_22C9F9AE0(v13, sub_22CA11CC8);
      v14 = *a3;
      *(v14 + 16) = v13 + 1;
      v15 = v14 + 16 * v13;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      swift_endAccess();
      swift_beginAccess();
      sub_22CA15904(&v16, v9, v10);
      swift_endAccess();
    }
  }

  return result;
}

id sub_22C9F97A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_22CA209F0();
  v13 = 0;
  if (sub_22C9D68B0(a1, 1, v12) != 1)
  {
    v13 = sub_22CA209A0();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (sub_22C9D68B0(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_22CA209A0();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

uint64_t sub_22C9F98E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22C9F992C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9D02E4(&unk_27D9E4F00, &unk_22CA232D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C9F99D8(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_22CA11A28();
    v3 = v4;
  }

  *v1 = v3;
}

uint64_t sub_22C9F9A58(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_22C9F9AB4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_22CA20EE0();
  }

  return result;
}