uint64_t sub_29D5F42E4(uint64_t a1, unint64_t a2)
{
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v4 = sub_29D5F3E08(a1, a2);
  if (v4 != 4)
  {
    return sub_29D5F3928(v4);
  }

  if (qword_2A17AC050 != -1)
  {
    swift_once();
  }

  v5 = sub_29D65F314();
  sub_29D5DE6EC(v5, qword_2A17AD6F0);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v6 = sub_29D65F2F4();
  v7 = sub_29D6601F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_29D64A1D0(0xD000000000000022, 0x800000029D6622F0, &v11);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_29D64A1D0(a1, a2, &v11);
    _os_log_impl(&dword_29D5D7000, v6, v7, "[%{public}s] Article identifier %{public}s could not be found", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v9, -1, -1);
    MEMORY[0x29ED63350](v8, -1, -1);
  }

  return 0;
}

void *sub_29D5F4494()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HearingAppPlugin27HearingAppPluginAppDelegate____lazy_storage___articleIdentifiersByUrl);
  if (v1)
  {
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    return v1;
  }

  v26 = OBJC_IVAR____TtC16HearingAppPlugin27HearingAppPluginAppDelegate____lazy_storage___articleIdentifiersByUrl;
  v1 = sub_29D5E2204(MEMORY[0x29EDCA190]);
  v2 = 0;
  while (1)
  {
    v4 = byte_2A2431260[v2++ + 32];
    v5 = 0xD000000000000022;
    if (v4 == 2)
    {
      v5 = 0xD000000000000016;
    }

    v6 = "oreThanYourHearing";
    if (v4 != 2)
    {
      v6 = "nAppDelegate.swift";
    }

    v7 = 0xD000000000000018;
    if (!v4)
    {
      v7 = 0xD000000000000017;
    }

    v8 = "UnderstandingHearingLoss";
    if (v4)
    {
      v8 = "SafeHeadphoneListening";
    }

    v9 = v4 <= 1 ? v7 : v5;
    v10 = v4 <= 1 ? v8 : v6;
    v11 = v10 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_29D5E1AF8(v9, v11);
    v15 = v1[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v1[3] >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v24 = v13;
      sub_29D62BAAC();
      v13 = v24;
      if (v19)
      {
        goto LABEL_4;
      }

LABEL_25:
      v1[(v13 >> 6) + 8] |= 1 << v13;
      v21 = (v1[6] + 16 * v13);
      *v21 = v9;
      v21[1] = v11;
      *(v1[7] + v13) = v4;
      v22 = v1[2];
      v17 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v17)
      {
        goto LABEL_33;
      }

      v1[2] = v23;
      if (v2 == 4)
      {
LABEL_30:
        *(v0 + v26) = v1;

        return v1;
      }
    }

    else
    {
      sub_29D62B4FC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_29D5E1AF8(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_34;
      }

LABEL_24:
      if ((v19 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_4:
      v3 = v13;

      *(v1[7] + v3) = v4;
      if (v2 == 4)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_29D6606C4();
  __break(1u);
  return result;
}

void sub_29D5F47B8(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  ObjectType = swift_getObjectType();
  sub_29D5F6418(0, &qword_2A17AC4C8, MEMORY[0x29EDB9940]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v52 - v6;
  v8 = sub_29D65D9E4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D65DAF4();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v14 + 16);
  v58 = a1;
  v19(v18, a1, v13, v16);
  v56 = v2;
  v20 = sub_29D65F2F4();
  v21 = sub_29D660214();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v53 = v12;
    v23 = v22;
    v24 = swift_slowAlloc();
    v54 = v8;
    v25 = v24;
    v59 = v24;
    *v23 = 136446466;
    v26 = sub_29D6607A4();
    v28 = sub_29D64A1D0(v26, v27, &v59);
    ObjectType = v9;
    v29 = v28;

    *(v23 + 4) = v29;
    *(v23 + 12) = 2082;
    sub_29D5F6548(&qword_2A17AC298, MEMORY[0x29EDB9B18], MEMORY[0x29EDB9B40]);
    v30 = sub_29D660674();
    v32 = v31;
    (*(v14 + 8))(v18, v13);
    v33 = sub_29D64A1D0(v30, v32, &v59);
    v9 = ObjectType;

    *(v23 + 14) = v33;
    _os_log_impl(&dword_29D5D7000, v20, v21, "[%{public}s] Received request to open URL: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    v34 = v25;
    v8 = v54;
    MEMORY[0x29ED63350](v34, -1, -1);
    v35 = v23;
    v12 = v53;
    MEMORY[0x29ED63350](v35, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v18, v13);
  }

  sub_29D65D9C4();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_29D5F64EC(v7, &qword_2A17AC4C8, MEMORY[0x29EDB9940]);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_29D65D9D4();
    v36 = sub_29D65FF24();

    v37 = [v36 pathComponents];

    v38 = v12;
    v39 = sub_29D660034();

    v40 = v56;
    v41 = sub_29D5F4D84(v39);
    if (v41 == 4)
    {
      v42 = *MEMORY[0x29EDBA6E0];
      v43 = sub_29D65EA04();
      v44 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v42 healthStore:v43 currentCountryCode:0];

      v45 = v44;
      LOBYTE(v43) = sub_29D5F5CA0(v39, v45, v40);

      if (v43)
      {
        v46 = sub_29D65EA14();
        sub_29D65DD04();
        v47 = v9;
        v48 = sub_29D65EA04();
        sub_29D65DD34();
        v49 = sub_29D65DD24();
        v50 = sub_29D65DCF4();

        [v46 presentViewController:v50 animated:1 completion:0];
        (*(v47 + 8))(v38, v8);
      }

      else
      {
        (*(v9 + 8))(v38, v8);
      }
    }

    else
    {
      v51 = v41;

      sub_29D5F4F9C(v51);
      (*(v9 + 8))(v38, v8);
    }
  }
}

uint64_t sub_29D5F4D84(void *a1)
{
  swift_getObjectType();
  if (a1[2] == 2)
  {
    v2 = a1[4] == 47 && a1[5] == 0xE100000000000000;
    if (v2 || (sub_29D660694() & 1) != 0)
    {
      v4 = a1[6];
      v3 = a1[7];
      _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
      v5 = sub_29D5F4494();
      if (v5[2])
      {
        v6 = sub_29D5E1AF8(v4, v3);
        v8 = v7;

        if (v8)
        {
          v9 = *(v5[7] + v6);

          return v9;
        }
      }

      else
      {
      }
    }
  }

  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v11 = sub_29D65F2F4();
  v12 = sub_29D6601F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446466;
    v15 = sub_29D6607A4();
    v17 = sub_29D64A1D0(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = MEMORY[0x29ED623E0](a1, MEMORY[0x29EDC99B0]);
    v20 = sub_29D64A1D0(v18, v19, &v21);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_29D5D7000, v11, v12, "[[%{public}s] Received request for invalid article: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v14, -1, -1);
    MEMORY[0x29ED63350](v13, -1, -1);
  }

  return 4;
}

void sub_29D5F4F9C(unsigned __int8 a1)
{
  v2 = sub_29D65EC74();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v7 = &type metadata for HeadphoneListeningArticleDataProvider;
      v35 = &type metadata for HeadphoneListeningArticleDataProvider;
      v36 = sub_29D5F4080();
      v8 = sub_29D5F40D4();
    }

    else
    {
      v7 = &type metadata for HearingAidsArticleDataProvider;
      v35 = &type metadata for HearingAidsArticleDataProvider;
      v36 = sub_29D5F3E54();
      v8 = sub_29D5F3EA8();
    }
  }

  else if (a1)
  {
    v7 = &type metadata for AudiogramArticleDataProvider;
    v35 = &type metadata for AudiogramArticleDataProvider;
    v36 = sub_29D5F4128();
    v8 = sub_29D5F417C();
  }

  else
  {
    v7 = &type metadata for HearingHealthArticleDataProvider;
    v35 = &type metadata for HearingHealthArticleDataProvider;
    v36 = sub_29D5F41D0();
    v8 = sub_29D5F4224();
  }

  v37 = v8;
  sub_29D5E32A8(v34, v7);
  sub_29D65E024();
  sub_29D5DF1C4(v34);
  sub_29D5F3928(a1);
  v9 = objc_allocWithZone(sub_29D65E004());
  v10 = sub_29D65DFF4();
  v11 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  v12 = sub_29D65EA14();
  v13 = [v12 navigationController];

  if (!v13)
  {
    v13 = sub_29D65EA14();
    [v13 presentViewController:v11 animated:0 completion:0];
LABEL_25:

    return;
  }

  v32 = v13;
  if (a1 == 2)
  {
  }

  else
  {
    v14 = sub_29D660694();

    v13 = v32;
    if ((v14 & 1) == 0)
    {
LABEL_24:
      [v13 presentViewController:v11 animated:0 completion:0];
      goto LABEL_25;
    }
  }

  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  v15 = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  sub_29D65E9F4();
  v29 = v15;
  v16 = sub_29D5E26B0(v15, v6);
  (*(v3 + 8))(v6, v2);
  v17 = [v13 viewControllers];
  v18 = sub_29D5DF448(0, &qword_2A17AC4B8, 0x29EDC7DA8);
  v19 = sub_29D660034();

  if (v19 >> 62)
  {
    v20 = sub_29D6604B4();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v11;
  v31 = v10;
  v28[1] = v18;
  if (!v20)
  {

    v22 = 0;
LABEL_22:
    v33[4] = v22;
    v33[5] = v16;
    v34[0] = MEMORY[0x29EDCA190];
    v28[0] = v16;
    v23 = 0;
    do
    {
      while (1)
      {
        v26 = v33[v23 + 4];
        sub_29D6600C4();
        v27 = v26;
        sub_29D6600B4();
        sub_29D6600A4();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        ++v23;
        if (v26)
        {
          break;
        }

        if (v23 == 2)
        {
          goto LABEL_23;
        }
      }

      MEMORY[0x29ED623B0](v25);
      if (*((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();
    }

    while (v23 != 2);
LABEL_23:
    sub_29D5F6484(0);
    swift_arrayDestroy();
    v24 = sub_29D660024();

    v13 = v32;
    [v32 setViewControllers:v24 animated:0];

    v11 = v30;
    v10 = v31;
    goto LABEL_24;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x29ED62900](0, v19);
    goto LABEL_20;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);
LABEL_20:
    v22 = v21;

    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_29D5F5530(void *a1, uint64_t a2)
{
  sub_29D5F6418(0, &qword_2A17AC4A8, MEMORY[0x29EDC2B18]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v33 = v32 - v6;
  v7 = sub_29D65EC74();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D65EC84();
  v34 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65EBC4();
  sub_29D65EB34();
  v16 = *(v8 + 16);
  v32[1] = a2;
  v16(v11, a2, v7);
  v17 = objc_allocWithZone(sub_29D65F0C4());
  v18 = a1;
  v19 = sub_29D65F0B4();
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v22 = v34;
    v23 = v12;
    v24 = v18;
    v25 = sub_29D5F58CC(v21, &v35);
    if (v36)
    {
      sub_29D5F646C(&v35, v37);
      v26 = v19;
      v27 = [v24 identifier];
      sub_29D65FF64();

      v28 = sub_29D65EC54();
      v29 = v33;
      sub_29D65F084();

      v19 = v26;
      v30 = sub_29D65F094();
      (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      sub_29D65F0A4();

      sub_29D5DF1C4(v37);
      (*(v22 + 8))(v15, v23);
    }

    else
    {
      (*(v22 + 8))(v15, v12, v25);

      sub_29D5F64EC(&v35, &qword_2A17AC4B0, sub_29D5F3EFC);
    }
  }

  else
  {
    (*(v34 + 8))(v15, v12);
  }

  return v19;
}

double sub_29D5F58CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  if (!v3)
  {
    sub_29D65FF64();
    v3 = sub_29D65FF24();
  }

  v4 = sub_29D65FF64();
  v6 = v5;
  if (v4 == sub_29D65FF64() && v6 == v7)
  {

    goto LABEL_10;
  }

  v9 = sub_29D660694();
  v10 = v3;

  if (v9)
  {

LABEL_10:
    *(a2 + 24) = &type metadata for HearingHealthArticleDataProvider;
    *(a2 + 32) = sub_29D5F41D0();
    v11 = sub_29D5F4224();
LABEL_11:
    *(a2 + 40) = v11;
    return result;
  }

  v13 = sub_29D65FF64();
  v15 = v14;
  v16 = sub_29D65FF64();
  v18 = v17;

  if (v13 == v16 && v15 == v18)
  {

    goto LABEL_19;
  }

  v20 = sub_29D660694();

  if (v20)
  {
LABEL_19:
    *(a2 + 24) = &type metadata for HeadphoneListeningArticleDataProvider;
    *(a2 + 32) = sub_29D5F4080();
    v11 = sub_29D5F40D4();
    goto LABEL_11;
  }

  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

id sub_29D5F5A80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingAppPluginAppDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HearingAppPluginAppDelegate(uint64_t a1)
{
  result = qword_2A17AC490;
  if (!qword_2A17AC490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5F5B88(uint64_t a1)
{
  result = sub_29D65F314();
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

id sub_29D5F5C68()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_29D5F5CA0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v4 = sub_29D65F314();
  MEMORY[0x2A1C7C4A8](v4, v5);
  v6 = sub_29D65F254();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[2] == 2 && (a1[4] == 47 && a1[5] == 0xE100000000000000 || (sub_29D660694() & 1) != 0) && (a1[6] == 0x54676E6972616548 && a1[7] == 0xEB00000000747365 || (sub_29D660694() & 1) != 0))
  {
    sub_29D5DF448(0, &qword_2A17AC690, 0x29EDBABB0);
    sub_29D65F274();
    v21 = sub_29D65F264();
    v22 = [v21 areAllRequirementsSatisfied];

    (*(v7 + 8))(v10, v6);
    return v22;
  }

  else
  {
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v11 = sub_29D65F2F4();
    v12 = sub_29D6601F4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136446466;
      v15 = sub_29D6607A4();
      v17 = sub_29D64A1D0(v15, v16, &v25);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = MEMORY[0x29ED623E0](a1, MEMORY[0x29EDC99B0]);
      v20 = sub_29D64A1D0(v18, v19, &v25);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_29D5D7000, v11, v12, "[[%{public}s] Cannot open hearing test with path components: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v14, -1, -1);
      MEMORY[0x29ED63350](v13, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_29D5F6170(void *a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  v2 = sub_29D65EC74();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65EC84();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(type metadata accessor for HeadphoneNotificationsDataDetailConfigurationProvider(0)) init];
  sub_29D65EC24();
  sub_29D65EC14();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_29D65EF74();

  sub_29D5F64EC(v20, &qword_2A17AC0D8, sub_29D5F63B4);
  v13 = v18;
  sub_29D65EB34();
  (*(v3 + 16))(v6, v13, v2);
  v14 = objc_allocWithZone(sub_29D65ED04());
  v15 = v19;
  v16 = sub_29D65ECE4();
  (*(v8 + 8))(v11, v7);
  return v16;
}

unint64_t sub_29D5F63B4()
{
  result = qword_2A17AC0E0;
  if (!qword_2A17AC0E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC0E0);
  }

  return result;
}

void sub_29D5F6418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660434();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_OWORD *sub_29D5F646C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_29D5F6484(uint64_t a1)
{
  if (!qword_2A17AC4C0)
  {
    sub_29D5DF448(255, &qword_2A17AC4B8, 0x29EDC7DA8);
    v1 = sub_29D660434();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC4C0);
    }
  }
}

uint64_t sub_29D5F64EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D5F6418(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5F6548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D5F6608()
{
  sub_29D660724();
  MEMORY[0x29ED62AD0](0);
  return sub_29D660744();
}

uint64_t sub_29D5F6674(uint64_t a1)
{
  sub_29D660724();
  MEMORY[0x29ED62AD0](0);
  return sub_29D660744();
}

uint64_t sub_29D5F66D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000029D6667A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29D660694();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29D5F677C(uint64_t a1)
{
  v2 = sub_29D5F8210();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D5F67B8(uint64_t a1)
{
  v2 = sub_29D5F8210();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D5F67F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_29D65E0E4();
  v22 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v5);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5F8264(0, &qword_2A17AC528, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  MEMORY[0x2A1C7C4A8](v12 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5E32A8(a1, a1[3]);
  sub_29D5F8210();
  sub_29D660764();
  if (!v2)
  {
    v16 = v21;
    v17 = v22;
    sub_29D5F7F04(&qword_2A17AC530, MEMORY[0x29EDC1770], MEMORY[0x29EDC1788]);
    sub_29D660644();
    (*(v16 + 8))(v11, v8);
    (*(v17 + 32))(v15, v23, v4);
    sub_29D5F7FFC(v15, v20);
  }

  return sub_29D5DF1C4(a1);
}

uint64_t sub_29D5F6AB8(void *a1)
{
  sub_29D5F8264(0, &qword_2A17AC518, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D5E32A8(a1, a1[3]);
  sub_29D5F8210();
  sub_29D660774();
  sub_29D65E0E4();
  sub_29D5F7F04(&qword_2A1A1E540, MEMORY[0x29EDC1770], MEMORY[0x29EDC1778]);
  sub_29D660654();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_29D5F6C40()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29D65E0D4();
  v139 = *(v1 - 8);
  v140 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v138 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5F7F50(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v136 = &v132 - v6;
  v7 = sub_29D65E314();
  v146 = *(v7 - 8);
  v147 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v143 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v156 = &v132 - v12;
  v152 = sub_29D65E0E4();
  v157 = *(v152 - 8);
  MEMORY[0x2A1C7C4A8](v152, v13);
  v135 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v148 = &v132 - v17;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v149 = &v132 - v20;
  MEMORY[0x2A1C7C4A8](v21, v22);
  v142 = &v132 - v23;
  v24 = sub_29D65F314();
  v154 = *(v24 - 8);
  v155 = v24;
  MEMORY[0x2A1C7C4A8](v24, v25);
  v144 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v27, v28);
  v137 = &v132 - v29;
  MEMORY[0x2A1C7C4A8](v30, v31);
  v153 = &v132 - v32;
  v33 = sub_29D65EDC4();
  v34 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v35);
  v37 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5F7F50(0, &qword_2A17AC4F0, type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData);
  MEMORY[0x2A1C7C4A8](v38 - 8, v39);
  v41 = &v132 - v40;
  v42 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  v43 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42, v44);
  v46 = &v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v47, v48);
  v50 = &v132 - v49;
  v151 = v0;
  sub_29D65EF44();
  sub_29D5F7F04(&qword_2A17AC4F8, type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData, &unk_29D6624E4);
  sub_29D5F7F04(&qword_2A17AC500, type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData, &unk_29D66250C);
  sub_29D65EDB4();
  v53 = *(v34 + 8);
  v52 = v34 + 8;
  v51 = v53;
  v145 = v33;
  (v53)(v37, v33);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_29D5F8120(v41, &qword_2A17AC4F0, type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData);
    v54 = v144;
    sub_29D65F2D4();
    v55 = sub_29D65F2F4();
    v56 = sub_29D660204();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v158[0] = v58;
      *v57 = 136315138;
      v59 = sub_29D6607A4();
      v61 = sub_29D64A1D0(v59, v60, v158);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_29D5D7000, v55, v56, "%s Could not access action handler user data!", v57, 0xCu);
      sub_29D5DF1C4(v58);
      MEMORY[0x29ED63350](v58, -1, -1);
      MEMORY[0x29ED63350](v57, -1, -1);
    }

    return (*(v154 + 8))(v54, v155);
  }

  v134 = v52;
  v144 = v51;
  sub_29D5F7FFC(v41, v50);
  sub_29D65F2E4();
  sub_29D5F8060(v50, v46);
  v63 = sub_29D65F2F4();
  v64 = sub_29D660214();
  v65 = os_log_type_enabled(v63, v64);
  v141 = v50;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v158[0] = v67;
    *v66 = 136315394;
    v68 = sub_29D6607A4();
    v70 = sub_29D64A1D0(v68, v69, v158);

    *(v66 + 4) = v70;
    *(v66 + 12) = 2080;
    v132 = *(v157 + 16);
    v71 = v152;
    v132(v142, v46, v152);
    v72 = sub_29D65FF84();
    v74 = v73;
    sub_29D5F80C4(v46);
    v75 = sub_29D64A1D0(v72, v74, v158);
    v76 = v141;

    *(v66 + 14) = v75;
    _os_log_impl(&dword_29D5D7000, v63, v64, "%s Did select cell with feature status %s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v67, -1, -1);
    v77 = v66;
    v78 = v132;
    MEMORY[0x29ED63350](v77, -1, -1);

    v133 = *(v154 + 8);
    v133(v153, v155);
  }

  else
  {
    v76 = v50;

    sub_29D5F80C4(v46);
    v133 = *(v154 + 8);
    v133(v153, v155);
    v78 = *(v157 + 16);
    v71 = v152;
  }

  v79 = v149;
  v78(v149, v76, v71);
  v80 = v151;
  sub_29D65EF44();
  v153 = sub_29D65EDA4();
  v81 = v78;
  v83 = v144;
  v82 = v145;
  (v144)(v37, v145);
  sub_29D65EF44();
  sub_29D65E184();
  v84 = v82;
  v85 = v81;
  v83(v37, v84);
  v86 = v148;
  v81(v148, v79, v71);
  v87 = (*(v157 + 88))(v86, v71);
  if (v87 == *MEMORY[0x29EDC1760])
  {
    v88 = *(v80 + qword_2A17AC4D0);
    v89 = v146;
    v90 = v147;
    v91 = v143;
    v92 = v156;
    (*(v146 + 16))(v143, v156, v147);
    v93 = objc_allocWithZone(type metadata accessor for NoiseNotificationsSettingsViewController(0));
    v94 = v88;
    v95 = sub_29D61A8C8(v94, v91, 0);

    v96 = v153;
    v97 = [v153 navigationController];
    if (v97)
    {
      v98 = v97;
      [v97 pushViewController:v95 animated:1];
    }

    else
    {
    }

    (*(v89 + 8))(v92, v90);
    (*(v157 + 8))(v79, v152);
    return sub_29D5F80C4(v141);
  }

  v99 = v156;
  v100 = v147;
  if (v87 == *MEMORY[0x29EDC1768])
  {
    v101 = *(v151 + qword_2A17AC4D0);
    v102 = v156;
    v103 = v146;
    v104 = v71;
    v105 = v143;
    (*(v146 + 16))(v143, v156, v147);
    v106 = objc_allocWithZone(type metadata accessor for NoiseNotificationsSettingsViewController(0));
    v107 = v101;
    v108 = sub_29D61A8C8(v107, v105, 1u);

    sub_29D65ED74();
    [v107 setOnboardingCompleted_];
    [v107 setNoiseEnabled_];
    [v107 setNotificationsEnabled_];
    [v107 setNotificationThreshold_];
    v109 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    v110 = v153;
    [v153 presentViewController:v109 animated:1 completion:0];

    (*(v103 + 8))(v102, v100);
    (*(v157 + 8))(v79, v104);
    return sub_29D5F80C4(v141);
  }

  if (v87 == *MEMORY[0x29EDC1758])
  {
    v111 = v138;
    v112 = v139;
    v113 = v140;
    (*(v139 + 104))(v138, *MEMORY[0x29EDC1720], v140);
    sub_29D65E0C4();

    (*(v112 + 8))(v111, v113);
    (*(v146 + 8))(v99, v100);
    (*(v157 + 8))(v79, v71);
    return sub_29D5F80C4(v141);
  }

  v114 = v157;
  if (v87 == *MEMORY[0x29EDC1750])
  {
    v115 = v136;
    sub_29D6004D0(v136);
    v116 = sub_29D65DAF4();
    v117 = *(v116 - 8);
    if ((*(v117 + 48))(v115, 1, v116) == 1)
    {

      (*(v146 + 8))(v156, v100);
      (*(v114 + 8))(v79, v71);
      sub_29D5F80C4(v141);
      return sub_29D5F8120(v115, &qword_2A1A1E558, MEMORY[0x29EDB9B18]);
    }

    else
    {
      sub_29D65DAB4();

      (*(v146 + 8))(v156, v100);
      (*(v114 + 8))(v79, v71);
      sub_29D5F80C4(v141);
      return (*(v117 + 8))(v115, v116);
    }
  }

  else
  {
    v118 = v137;
    sub_29D65F2E4();
    v119 = v71;
    v120 = v135;
    v81(v135, v79, v119);
    v121 = sub_29D65F2F4();
    LODWORD(v151) = sub_29D6601F4();
    if (os_log_type_enabled(v121, v151))
    {
      v122 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v158[0] = v145;
      *v122 = 136315650;
      v123 = sub_29D6607A4();
      v125 = sub_29D64A1D0(v123, v124, v158);

      *(v122 + 4) = v125;
      *(v122 + 12) = 2080;
      *(v122 + 14) = sub_29D64A1D0(0x63656C6553646964, 0xEB00000000292874, v158);
      *(v122 + 22) = 2080;
      v85(v142, v120, v119);
      v126 = sub_29D65FF84();
      v128 = v127;
      v129 = *(v114 + 8);
      v129(v120, v119);
      v130 = sub_29D64A1D0(v126, v128, v158);

      *(v122 + 24) = v130;
      _os_log_impl(&dword_29D5D7000, v121, v151, "%s.%s Unhandled feature status %s", v122, 0x20u);
      v131 = v145;
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v131, -1, -1);
      MEMORY[0x29ED63350](v122, -1, -1);

      v133(v137, v155);
      (*(v146 + 8))(v156, v147);
    }

    else
    {

      v129 = *(v114 + 8);
      v129(v120, v119);
      v133(v118, v155);
      (*(v146 + 8))(v99, v100);
    }

    v129(v149, v119);
    sub_29D5F80C4(v141);
    return (v129)(v148, v119);
  }
}

uint64_t sub_29D5F7CBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29D65EDC4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v2);
  v10 = qword_2A17AC4D0;
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A20BF8;
  *&v9[v10] = qword_2A1A20BF8;
  (*(v5 + 16))(v8, a1, v4);
  v12 = v11;
  v13 = sub_29D65EF54();
  (*(v5 + 8))(a1, v4);
  return v13;
}

id sub_29D5F7E24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoiseNotificationsFeatureStatusActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D5F7F04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D5F7F50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660434();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D5F7FC4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5F7FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5F8060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5F80C4(uint64_t a1)
{
  v2 = type metadata accessor for NoiseNotificationsFeatureStatusActionHandlerData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5F8120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D5F7F50(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D5F81A4(uint64_t a1)
{
  result = sub_29D65E0E4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D5F8210()
{
  result = qword_2A17AC520;
  if (!qword_2A17AC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC520);
  }

  return result;
}

void sub_29D5F8264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D5F8210();
    v7 = a3(a1, &type metadata for NoiseNotificationsFeatureStatusActionHandlerData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NoiseNotificationsFeatureStatusActionHandlerData.CodingKeys(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NoiseNotificationsFeatureStatusActionHandlerData.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_29D5F83B4()
{
  result = qword_2A17AC538;
  if (!qword_2A17AC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC538);
  }

  return result;
}

unint64_t sub_29D5F840C()
{
  result = qword_2A17AC540;
  if (!qword_2A17AC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC540);
  }

  return result;
}

unint64_t sub_29D5F8464()
{
  result = qword_2A17AC548;
  if (!qword_2A17AC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC548);
  }

  return result;
}

uint64_t PDFHStackWithEqualWidth.render(context:document:)(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v9 = sub_29D65E344();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v10 = a3;
  if (v9)
  {
    v10 = sub_29D5F8758(a3);
  }

  PDFHStackWithEqualWidth.maximumColumnWidth(in:)(a2, a3, a4, a5);
  PDFHStackWithEqualWidth.boundingRectForContent(in:)(a2, a3, a4, a5);
  result = sub_29D65E3D4();
  v12 = 0;
  v13 = v10[2];
  v14 = 0.0;
  while (1)
  {
    v15 = 0uLL;
    v16 = v13;
    v17 = 0uLL;
    v18 = 0uLL;
    if (v12 == v13)
    {
      goto LABEL_7;
    }

    if (v12 >= v10[2])
    {
      break;
    }

    v16 = v12 + 1;
    *&v20 = v12;
    sub_29D5E8E70(&v10[5 * v12 + 4], &v20 + 8);
    v15 = v20;
    v17 = v21;
    v18 = v22;
LABEL_7:
    v23[0] = v15;
    v23[1] = v17;
    v23[2] = v18;
    if (!v18)
    {

      return sub_29D65E3C4();
    }

    sub_29D5DBB48((v23 + 8), &v20);
    sub_29D65E3E4();
    sub_29D65E354();
    CGRectGetMinX(v24);
    sub_29D65E354();
    CGRectGetMinY(v25);
    sub_29D65E354();
    CGRectGetHeight(v26);
    sub_29D65E364();
    sub_29D5E32A8(&v20, *(&v21 + 1));
    sub_29D65E5B4();
    sub_29D5E32A8(&v20, *(&v21 + 1));
    sub_29D65E5A4();
    Height = CGRectGetHeight(v27);

    if (v14 < Height)
    {
      v14 = Height;
    }

    result = sub_29D5DF1C4(&v20);
    v12 = v16;
  }

  __break(1u);
  return result;
}

void *sub_29D5F8758(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_29D5E8E70(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_29D5E8E70(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_29D5F9760(v1);
    }

    sub_29D5DF1C4(&v1[i]);
    result = sub_29D5DBB48(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    sub_29D5DF1C4((v1 + v6));
    result = sub_29D5DBB48(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

double PDFHStackWithEqualWidth.maximumColumnWidth(in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_29D65E354();
  Width = CGRectGetWidth(v26);
  v8 = *(a2 + 16);
  v9 = (Width - (v8 + -1.0) * a3) / v8;
  if (v8)
  {
    v25 = MEMORY[0x29EDCA190];
    sub_29D5F8ED8(0, v8, 0);
    v10 = v25;
    v11 = a2 + 32;
    do
    {
      sub_29D5E8E70(v11, v24);
      sub_29D5E32A8(v24, v24[3]);
      sub_29D65E5A4();
      v13 = v12;
      sub_29D5DF1C4(v24);
      v25 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_29D5F8ED8((v14 > 1), v15 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v16;
      *(v10 + 8 * v15 + 32) = v13;
      v11 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
    v16 = *(MEMORY[0x29EDCA190] + 16);
    if (!v16)
    {

      return v9;
    }
  }

  v17 = *(v10 + 32);
  v18 = v16 - 1;
  if (v16 != 1)
  {
    v19 = (v10 + 40);
    do
    {
      v20 = *v19++;
      v21 = v20;
      if (v17 < v20)
      {
        v17 = v21;
      }

      --v18;
    }

    while (v18);
  }

  if (v17 > a4)
  {
    v22 = v17;
  }

  else
  {
    v22 = a4;
  }

  if (v22 < v9)
  {
    return v22;
  }

  return v9;
}

void PDFHStackWithEqualWidth.boundingRectForContent(in:)(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_29D65E344();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v9 = a2;
  if (v8)
  {
    v9 = sub_29D5F8758(a2);
  }

  PDFHStackWithEqualWidth.maximumColumnWidth(in:)(a1, a2, a3, a4);
  v10 = 0;
  v11 = v9[2];
  v12 = 0.0;
  while (1)
  {
    v13 = 0uLL;
    v14 = v11;
    v15 = 0uLL;
    v16 = 0uLL;
    if (v10 == v11)
    {
      goto LABEL_7;
    }

    if (v10 >= v9[2])
    {
      break;
    }

    v14 = v10 + 1;
    *&v18 = v10;
    sub_29D5E8E70(&v9[5 * v10 + 4], &v18 + 8);
    v13 = v18;
    v15 = v19;
    v16 = v20;
LABEL_7:
    v21[0] = v13;
    v21[1] = v15;
    v21[2] = v16;
    if (!v16)
    {

      sub_29D65E354();
      return;
    }

    sub_29D5DBB48((v21 + 8), &v18);
    sub_29D65E3E4();
    sub_29D65E354();
    CGRectGetMinX(v22);
    sub_29D65E354();
    CGRectGetMinY(v23);
    sub_29D65E354();
    CGRectGetHeight(v24);
    sub_29D65E364();
    sub_29D5E32A8(&v18, *(&v19 + 1));
    sub_29D65E594();
    Height = CGRectGetHeight(v25);

    if (v12 < Height)
    {
      v12 = Height;
    }

    sub_29D5DF1C4(&v18);
    v10 = v14;
  }

  __break(1u);
}

uint64_t PDFHStackWithEqualWidth.documentForColumn(_:columnWidth:in:)(uint64_t a1, double a2, double a3)
{
  v3 = sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetMinX(v5);
  sub_29D65E354();
  CGRectGetMinY(v6);
  sub_29D65E354();
  CGRectGetHeight(v7);
  sub_29D65E364();
  return v3;
}

uint64_t sub_29D5F8CCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D5F95B8();
  *v3 = v1;
  v3[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29D5F8D78(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void *sub_29D5F8E78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D5F932C(a1, a2, a3, *v3, &qword_2A17AC558, type metadata accessor for AudiogramLongitudinalPDFChartData, type metadata accessor for AudiogramLongitudinalPDFChartData);
  *v3 = result;
  return result;
}

char *sub_29D5F8EB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D5F9110(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29D5F8ED8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D5F9224(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_29D5F8EFC()
{
  result = qword_2A17AC550;
  if (!qword_2A17AC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC550);
  }

  return result;
}

__n128 sub_29D5F8F50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29D5F8F64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D5F8FAC(uint64_t result, int a2, int a3)
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

__n128 initializeBufferWithCopyOfBuffer for PDFHStackWithEqualWidth.Config(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PDFHStackWithEqualWidth.Config(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PDFHStackWithEqualWidth.Config(uint64_t result, int a2, int a3)
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

void *sub_29D5F9060(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D5F932C(a1, a2, a3, *v3, &qword_2A17AC560, type metadata accessor for AudiogramPDFAudiogramChart.Model, type metadata accessor for AudiogramPDFAudiogramChart.Model);
  *v3 = result;
  return result;
}

void *sub_29D5F90A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D5F960C(a1, a2, a3, *v3, &qword_2A17AC330, &qword_2A17AC338, MEMORY[0x29EDC1DD8]);
  *v3 = result;
  return result;
}

void *sub_29D5F90D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29D5F960C(a1, a2, a3, *v3, &qword_2A17AC570, &qword_2A17AC578, MEMORY[0x29EDC18F8]);
  *v3 = result;
  return result;
}

char *sub_29D5F9110(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D5F068C(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29D5F9224(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D5F068C(0, &qword_2A17AC580, MEMORY[0x29EDCA210]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29D5F932C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29D5F9564(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void sub_29D5F950C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D5DF210(255, a3, a4);
    v5 = sub_29D660684();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D5F9564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D660684();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D5F95B8()
{
  result = qword_2A17AC568;
  if (!qword_2A17AC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC568);
  }

  return result;
}

void *sub_29D5F960C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_29D5F950C(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x29EDCA190];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29D5DF210(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

uint64_t type metadata accessor for AudiogramLongitudinalPDFChartData(uint64_t a1)
{
  result = qword_2A17AC588;
  if (!qword_2A17AC588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D5F97EC(uint64_t a1)
{
  sub_29D5F9870();
  if (v1 <= 0x3F)
  {
    sub_29D65DBC4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D5F9870()
{
  if (!qword_2A17AC598)
  {
    v0 = sub_29D660434();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC598);
    }
  }
}

uint64_t type metadata accessor for HearingTestPromptFeedItemProvider(uint64_t a1)
{
  result = qword_2A1A1E4F8;
  if (!qword_2A1A1E4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D5F9964(uint64_t a1)
{
  sub_29D5F99F8(319);
  if (v1 <= 0x3F)
  {
    sub_29D65DD54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D5F99F8(uint64_t a1)
{
  if (!qword_2A1A1DDD8)
  {
    sub_29D5F0640();
    sub_29D5F9DC4(&qword_2A1A1E708, sub_29D5F0640, MEMORY[0x29EDCA2F0]);
    v1 = sub_29D660124();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A1DDD8);
    }
  }
}

uint64_t sub_29D5F9A8C()
{
  v1 = *v0;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

uint64_t sub_29D5F9AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_29D65DD54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_29D5F9B38(uint64_t a1, uint64_t a2)
{
  sub_29D5F9D2C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5F2A28(0);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v20 - v15;
  v17 = sub_29D65DEF4();
  sub_29D5EE344(a2, v16);

  sub_29D5F2D70(v16, v12);
  sub_29D65F864();
  sub_29D5F9DC4(&qword_2A1A1DDE8, sub_29D5F9D2C, MEMORY[0x29EDB8AB8]);
  v18 = sub_29D65F934();
  (*(v5 + 8))(v8, v4);
  sub_29D5F9E0C(v16);
  return v18;
}

uint64_t sub_29D5F9CFC()
{
  v1 = *(v0 + 24);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

void sub_29D5F9D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D5F9DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D5F9E0C(uint64_t a1)
{
  sub_29D5F2A28(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D5F9E74(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29D5F9ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_29D5F9F4C()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65F074();
  sub_29D660254();
}

uint64_t sub_29D5FA000(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D65E9A4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D65E984();
  v7 = sub_29D65E994();
  (*(v3 + 8))(v6, v2);

  return v7;
}

uint64_t sub_29D5FA170()
{
  sub_29D5FA834(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D65DC14();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65EC64();
  v11 = sub_29D65E6A4();
  v13 = v12;
  if (v11 == sub_29D65E6A4() && v13 == v14)
  {
  }

  else
  {
    v15 = sub_29D660694();

    if ((v15 & 1) == 0)
    {
      sub_29D65E5F4();
      swift_allocObject();
      sub_29D65E5E4();
      sub_29D65E674();

      sub_29D65E644();

      sub_29D5FA89C(0);
      sub_29D5FAB68(&qword_2A17AC5C8, sub_29D5FA89C, MEMORY[0x29EDC2110]);

      sub_29D65E664();
      goto LABEL_7;
    }
  }

  v16 = sub_29D65EC54();
  sub_29D65F074();
  v17 = sub_29D65E564();
  v31 = v5;
  v32 = v1;
  v19 = v18;
  v30 = v6;
  v20 = MEMORY[0x29EDC9E90];
  sub_29D5FAA4C(0, &qword_2A17AC5E0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D65E904();
  v21 = swift_allocObject();
  v29 = xmmword_29D661D90;
  *(v21 + 16) = xmmword_29D661D90;
  sub_29D5FAA4C(0, &qword_2A17AC570, sub_29D5FAAB0, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v29;
  *(v22 + 56) = &type metadata for AudiogramPDFItem;
  *(v22 + 64) = sub_29D5FAB14();
  v23 = swift_allocObject();
  *(v22 + 32) = v23;
  v23[2] = v17;
  v23[3] = v19;
  v33 = v19;
  v23[4] = 0xD000000000000010;
  v23[5] = 0x800000029D6667C0;
  v23[6] = v16;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v24 = v16;
  sub_29D65DC04();
  sub_29D65DBD4();
  (*(v7 + 8))(v10, v30);
  sub_29D65E8F4();
  v34 = v21;
  sub_29D5FA868(0);
  v25 = v31;
  sub_29D65F864();
  sub_29D5FAB68(&unk_2A17AC5F0, sub_29D5FA834, MEMORY[0x29EDB8AB8]);
  v26 = v32;
  sub_29D65F924();
  (*(v2 + 8))(v25, v26);
  sub_29D65ECB4();
  sub_29D65E6B4();

  sub_29D5FA930(0);
  sub_29D5FAB68(&qword_2A17AC5C0, sub_29D5FA930, MEMORY[0x29EDC1E90]);
  sub_29D65E6C4();

  sub_29D5FA89C(0);
  sub_29D5FAB68(&qword_2A17AC5C8, sub_29D5FA89C, MEMORY[0x29EDC2110]);
  sub_29D65E674();

  sub_29D65E644();

  sub_29D65E5F4();

  sub_29D65E654();

LABEL_7:

  sub_29D5FA990(0);
  sub_29D5FAB68(&qword_2A17AC5D8, sub_29D5FA990, MEMORY[0x29EDC22A8]);

  v27 = sub_29D65E644();

  return v27;
}

void sub_29D5FA89C(uint64_t a1)
{
  if (!qword_2A17AC5B0)
  {
    sub_29D5FA930(255);
    sub_29D5FAB68(&qword_2A17AC5C0, sub_29D5FA930, MEMORY[0x29EDC1E90]);
    v1 = sub_29D65E7F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC5B0);
    }
  }
}

void sub_29D5FA930(uint64_t a1)
{
  if (!qword_2A17AC5B8)
  {
    sub_29D65ECB4();
    v1 = sub_29D65E5D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC5B8);
    }
  }
}

void sub_29D5FA990(uint64_t a1)
{
  if (!qword_2A17AC5D0)
  {
    sub_29D5FA89C(255);
    sub_29D65E5F4();
    sub_29D5FAB68(&qword_2A17AC5C8, sub_29D5FA89C, MEMORY[0x29EDC2110]);
    v1 = sub_29D65E964();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC5D0);
    }
  }
}

void sub_29D5FAA4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D5FAAB0()
{
  result = qword_2A17AC578;
  if (!qword_2A17AC578)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC578);
  }

  return result;
}

unint64_t sub_29D5FAB14()
{
  result = qword_2A17AC5E8;
  if (!qword_2A17AC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC5E8);
  }

  return result;
}

uint64_t sub_29D5FAB68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AudiogramDataTypeDetailViewController(uint64_t a1)
{
  result = qword_2A17AC620;
  if (!qword_2A17AC620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5FAC60(uint64_t a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + qword_2A17AC618);
  *v2 = 0;
  v2[1] = 0;
  result = sub_29D660594();
  __break(1u);
  return result;
}

uint64_t sub_29D5FAD30(void *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3.receiver = a1;
  v3.super_class = type metadata accessor for AudiogramDataTypeDetailViewController(0);
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
}

void sub_29D5FADDC(char a1)
{
  if (sub_29D5FAF2C())
  {
    sub_29D65DD04();
    sub_29D65DD34();
    v3 = sub_29D65DD14();
    type metadata accessor for HearingTestArticleProvider();
    swift_allocObject();
    v4 = sub_29D65DCF4();
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBFAF0]) initWithDelegate_];
    [v4 setAnalyticsClient_];
    [v4 setHealthStore:*&v1[qword_2A17AC600] unitPreferenceController:*&v1[qword_2A17AC608] initialDate:0];
  }

  [v1 presentViewController:v4 animated:a1 & 1 completion:0];
}

id sub_29D5FAF2C()
{
  swift_getObjectType();
  v0 = sub_29D65F314();
  MEMORY[0x2A1C7C4A8](v0, v1);
  v2 = sub_29D65F254();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5DF448(0, &qword_2A17AC690, 0x29EDBABB0);
  sub_29D65F274();
  v7 = sub_29D65F264();
  (*(v3 + 8))(v6, v2);
  v8 = [v7 areAllRequirementsSatisfied];

  return v8;
}

uint64_t sub_29D5FB2C8()
{
  v1 = *(v0 + qword_2A17AC618);
  v2 = *(v0 + qword_2A17AC618 + 8);

  return sub_29D5FB9C0(v1, v2);
}

id sub_29D5FB32C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramDataTypeDetailViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D5FB364(uint64_t a1)
{
  v2 = *(a1 + qword_2A17AC618);
  v3 = *(a1 + qword_2A17AC618 + 8);

  return sub_29D5FB9C0(v2, v3);
}

void sub_29D5FB3DC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + qword_2A17AC618);
  v6 = *(v3 + qword_2A17AC618);
  v7 = *(v3 + qword_2A17AC618 + 8);
  *v5 = a2;
  v5[1] = a3;

  sub_29D5FB9C0(v6, v7);
  v8 = [objc_allocWithZone(MEMORY[0x29EDBFAF0]) initWithDelegate_];
  [v8 setAnalyticsClient_];
  [v8 setHealthStore:*(v3 + qword_2A17AC600) unitPreferenceController:*(v3 + qword_2A17AC608) initialDate:0];
  [a1 presentViewController:v8 animated:1 completion:0];
}

uint64_t sub_29D5FB4C0(void *a1, uint64_t a2, void *a3, const void *a4)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = a1;
  sub_29D5FB3DC(v9, sub_29D5FB9D0, v8);
}

void sub_29D5FB5D0(char *a1, uint64_t a2, void *a3)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = &a1[qword_2A17AC618];
  v5 = *&a1[qword_2A17AC618];
  if (v5)
  {
    v6 = v4[1];
    v7 = a1;
    v8 = a3;
    sub_29D5FB9B0(v5, v6);
    v5(v8);

    sub_29D5FB9C0(v5, v6);
    v9 = *v4;
  }

  else
  {
    v10 = a1;
    v9 = 0;
  }

  v11 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_29D5FB9C0(v9, v11);
}

uint64_t sub_29D5FB6F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_29D65EC74();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v25[-1] - v13;
  v15 = (v3 + qword_2A17AC618);
  *v15 = 0;
  v15[1] = 0;
  *(v3 + qword_2A17AC600) = sub_29D65EC54();
  *(v3 + qword_2A17AC608) = a3;
  v16 = *MEMORY[0x29EDBA6E0];
  v17 = a3;
  v18 = sub_29D65EC54();
  v19 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v16 healthStore:v18];

  *(v3 + qword_2A17AC610) = v19;
  v20 = *(v7 + 16);
  v20(v14, a2, v6);
  v20(v10, a2, v6);
  v21 = [objc_opt_self() audiogramSampleType];
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v25[3] = sub_29D65ECD4();
  v25[4] = MEMORY[0x29EDC2780];
  sub_29D5E3C20(v25);
  sub_29D65ECC4();
  v22 = sub_29D65ECF4();
  (*(v7 + 8))(a2, v6);
  return v22;
}

uint64_t sub_29D5FB9B0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29D5FB9C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29D5FBA08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HearingAdvertisableFeatureSourceProvider();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_29D5FBA40()
{
  v1 = sub_29D65E2E4();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v1, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC16HearingAppPlugin36AdvertisableFeatureNoiseAvailability_activeDeviceSource, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x29EDC1AB0])
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 devices];

    v10 = &selRef_paired;
  }

  else
  {
    if (v7 != *MEMORY[0x29EDC1AB8])
    {
      (*(v2 + 8))(v6, v1);
      return 0;
    }

    v9 = [objc_opt_self() sharedInstance];
    v10 = &selRef_devices;
  }

  v11 = [v9 *v10];

  v12 = [v11 active];
  v13 = [v12 final];

  if (v13)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_29D5FBC4C()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin36AdvertisableFeatureNoiseAvailability_activeDeviceSource;
  v2 = sub_29D65E2E4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_29D5FBCB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertisableFeatureNoiseAvailability(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AdvertisableFeatureNoiseAvailability(uint64_t a1)
{
  result = qword_2A17AC698;
  if (!qword_2A17AC698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5FBDAC(uint64_t a1)
{
  result = sub_29D65E2E4();
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

uint64_t sub_29D5FBE3C()
{
  v0 = sub_29D65E2E4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FBFD0(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D661D90;
  sub_29D65E2D4();
  v6 = objc_allocWithZone(type metadata accessor for AdvertisableFeatureNoiseAvailability(0));
  (*(v1 + 16))(&v6[OBJC_IVAR____TtC16HearingAppPlugin36AdvertisableFeatureNoiseAvailability_activeDeviceSource], v4, v0);
  v7 = sub_29D5E98A4(1);
  (*(v1 + 8))(v4, v0);
  v8 = sub_29D65E2F4();
  type metadata accessor for HearingEnvironmentNotificationAdvertisableFeatureSource();
  v9 = swift_allocObject();
  v9[8] = 0;
  v9[5] = 0;
  v9[6] = 0;
  swift_unknownObjectWeakInit();
  v9[2] = v7;
  v9[3] = &off_2A2432218;
  v9[4] = v8;
  v10 = sub_29D5FC03C();
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  return v5;
}

void sub_29D5FBFD0(uint64_t a1)
{
  if (!qword_2A17AC6A8)
  {
    sub_29D5FC094(255, &qword_2A17AC6B0, MEMORY[0x29EDC1940], 0);
    v1 = sub_29D660684();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC6A8);
    }
  }
}

unint64_t sub_29D5FC03C()
{
  result = qword_2A17AC6B8;
  if (!qword_2A17AC6B8)
  {
    type metadata accessor for HearingEnvironmentNotificationAdvertisableFeatureSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6B8);
  }

  return result;
}

uint64_t sub_29D5FC094(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D5FC0FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_29D65DEB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E6A8, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v8 = sub_29D65DD54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D661D20;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x29EDC36F0], v8);
  v14(v13 + v10, *MEMORY[0x29EDC3790], v8);
  sub_29D63CBA4(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_29D5FEB6C(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA450]);
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  sub_29D63CB80(inited);
  v17 = v16;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D5F08A0(v17);

  (*(v4 + 104))(v7, *MEMORY[0x29EDC3898], v3);
  v18 = a1;
  return sub_29D65DEC4();
}

uint64_t sub_29D5FC420@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_29D65DEB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E6A8, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29D65DD54();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D661D90;
  (*(v11 + 104))(v13 + v12, *a2, v10);
  sub_29D63CBA4(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  sub_29D5FEB6C(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA450]);
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8F8]);
  sub_29D63CB80(inited);
  v16 = v15;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D5F08A0(v16);

  (*(v6 + 104))(v9, *MEMORY[0x29EDC3898], v5);
  v17 = a1;
  return sub_29D65DEC4();
}

uint64_t sub_29D5FC728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29D5FE828(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FE918(0, &qword_2A1A1E680, sub_29D5FE718, MEMORY[0x29EDC9E90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D661D20;
  *(v12 + 32) = sub_29D5FC968(a1, a2);
  *(v12 + 40) = sub_29D5FCDAC(a1, a2);
  v15[1] = v12;
  sub_29D5FE718(0);
  sub_29D5FE8E4(0);
  sub_29D5FE7E0(&qword_2A1A1E7F0, sub_29D5FE718, MEMORY[0x29EDB8A00]);
  sub_29D5FE7E0(&qword_2A1A1E718, sub_29D5FE8E4, MEMORY[0x29EDC9A70]);
  sub_29D65F7F4();
  sub_29D5FE7E0(&qword_2A1A1E800, sub_29D5FE828, MEMORY[0x29EDB89D8]);
  v13 = sub_29D65F934();
  result = (*(v8 + 8))(v11, v7);
  *a3 = v13;
  return result;
}

uint64_t sub_29D5FC968(uint64_t a1, uint64_t a2)
{
  v31 = sub_29D65DF04();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v31, v6);
  v7 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBBC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBF0(0);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  swift_beginAccess();
  sub_29D5FE918(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  sub_29D65F8C4();
  swift_endAccess();
  sub_29D5FE7E0(&qword_2A1A1E778, sub_29D5FEBBC, MEMORY[0x29EDB8AF8]);
  v19 = sub_29D65F904();
  (*(v10 + 8))(v13, v9);
  v35 = v19;
  v20 = a1;
  v21 = v31;
  (*(v4 + 16))(v7, v20, v31);
  v22 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v23 = (v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v32;
  (*(v4 + 32))(v24 + v22, v7, v21);
  *(v24 + v23) = v30;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_29D5FED54;
  *(v26 + 24) = v24;
  sub_29D5FECD0(0);
  sub_29D5F310C();
  sub_29D5FE7E0(&qword_2A1A1E7E0, sub_29D5FECD0, MEMORY[0x29EDB8A00]);

  sub_29D65F944();

  sub_29D5FE7E0(qword_2A1A1E820, sub_29D5FEBF0, MEMORY[0x29EDB88A0]);
  v27 = v33;
  v28 = sub_29D65F934();
  (*(v34 + 8))(v18, v27);
  return v28;
}

uint64_t sub_29D5FCDAC(uint64_t a1, uint64_t a2)
{
  v27 = sub_29D65DF04();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v27, v5);
  sub_29D5FEB6C(0, &qword_2A1A1E758, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AF0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v26 - v10;
  sub_29D5FE97C(0);
  v13 = *(v12 - 8);
  v29 = v12;
  v30 = v13;
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D5FEB6C(0, &qword_2A1A1E740, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8B00]);
  sub_29D65F8C4();
  swift_endAccess();
  sub_29D5FEA18();
  v17 = sub_29D65F904();
  (*(v8 + 8))(v11, v7);
  v31 = v17;
  v18 = a1;
  v19 = v27;
  (*(v3 + 16))(&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v27);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  (*(v3 + 32))(v21 + v20, &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  *(v21 + ((v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_29D5FEA94;
  *(v22 + 24) = v21;
  sub_29D5FE9B8();
  sub_29D5F310C();
  sub_29D5FE7E0(&qword_2A1A1E7C0, sub_29D5FE9B8, MEMORY[0x29EDB8A00]);
  sub_29D65F944();

  sub_29D5FE7E0(&qword_2A1A1E810, sub_29D5FE97C, MEMORY[0x29EDB88A0]);
  v23 = v29;
  v24 = sub_29D65F934();
  (*(v30 + 8))(v16, v23);
  return v24;
}

uint64_t sub_29D5FD1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v43 = a5;
  v46 = a6;
  sub_29D5EA87C(0);
  v44 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v15);
  v17 = v41 - v16;
  v45 = sub_29D65F314();
  v18 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45, v19);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65F2E4();
  sub_29D5EA900(a1, v17);
  v22 = sub_29D65F2F4();
  v23 = sub_29D660214();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = a4;
    v25 = v24;
    v41[0] = swift_slowAlloc();
    v41[1] = a2;
    v47 = v41[0];
    *v25 = 136315395;
    v26 = sub_29D6607A4();
    v28 = sub_29D64A1D0(v26, v27, &v47);
    v43 = a3;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2081;
    sub_29D5EA900(v17, v13);
    v30 = sub_29D65FF84();
    v32 = v31;
    sub_29D5EA964(v17);
    v33 = sub_29D64A1D0(v30, v32, &v47);
    a3 = v43;

    *(v25 + 14) = v33;
    _os_log_impl(&dword_29D5D7000, v22, v23, "%s Received featureStatus %{private}s", v25, 0x16u);
    v34 = v41[0];
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v34, -1, -1);
    v35 = v25;
    a4 = v42;
    MEMORY[0x29ED63350](v35, -1, -1);
  }

  else
  {

    sub_29D5EA964(v17);
  }

  (*(v18 + 8))(v21, v45);
  v36 = sub_29D65DF24();
  v37 = MEMORY[0x29EDC38C8];
  v38 = v46;
  v46[3] = v36;
  v38[4] = v37;
  v39 = sub_29D5E3C20(v38);
  return sub_29D5FD4AC(a3, a1, a4, v39);
}

uint64_t sub_29D5FD4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v46 = a2;
  v54 = a4;
  sub_29D5EA87C(0);
  v51 = *(v5 - 8);
  v50 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65DED4();
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  v12 = sub_29D65DF04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v19 = &v39 - v18;
  v49 = &v39 - v18;
  v20 = sub_29D5E5EC8();
  v39 = v21;
  v40 = v20;
  v22 = *(v13 + 16);
  v22(v19, a1, v12);
  v23 = sub_29D65DEF4();
  sub_29D5FC420(v23, MEMORY[0x29EDC36F0], v11);

  v24 = sub_29D65DF34();
  v44 = v25;
  v45 = v24;
  v43 = v26;
  v42 = v27;
  v28 = v48;
  sub_29D5EA900(v46, v48);
  v29 = v41;
  v22(v41, a1, v12);
  v30 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v31 = (v50 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v13 + 80) + v31 + 16) & ~*(v13 + 80);
  v33 = (v14 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_29D5FEE38(v28, v34 + v30);
  v35 = (v34 + v31);
  v36 = v39;
  *v35 = v40;
  v35[1] = v36;
  (*(v13 + 32))(v34 + v32, v29, v12);
  v37 = v53;
  *(v34 + v33) = v52;
  *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;

  return sub_29D65DF14();
}

uint64_t sub_29D5FD7F4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *, uint64_t), char *a6)
{
  v67 = a3;
  v68 = a6;
  v65 = a4;
  v66 = a5;
  v64 = a2;
  v7 = sub_29D65F314();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v12);
  v14 = &v64 - v13;
  v15 = sub_29D65DE74();
  v69 = *(v15 - 8);
  v70 = v15;
  MEMORY[0x2A1C7C4A8](v15, v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5EA87C(0);
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D65E0E4();
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v31 = &v64 - v30;
  MEMORY[0x2A1C7C4A8](v32, v33);
  v35 = &v64 - v34;
  sub_29D5EA900(a1, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_29D5EA964(v22);
    sub_29D65F2E4();
    v36 = v67;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v37 = sub_29D65F2F4();
    v38 = sub_29D660214();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v73 = v40;
      *v39 = 136315394;
      v41 = sub_29D6607A4();
      v43 = sub_29D64A1D0(v41, v42, &v73);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_29D64A1D0(v64, v36, &v73);
      _os_log_impl(&dword_29D5D7000, v37, v38, "%s Creating no feed items with identifier %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v40, -1, -1);
      MEMORY[0x29ED63350](v39, -1, -1);
    }

    (*(v71 + 8))(v10, v72);
    return MEMORY[0x29EDCA190];
  }

  else
  {
    (*(v24 + 32))(v35, v22, v23);
    sub_29D5E3E9C(v65, v35, v18);
    sub_29D65F2E4();
    v66 = *(v24 + 16);
    v66(v31, v35, v23);
    v45 = sub_29D65F2F4();
    LODWORD(v67) = sub_29D660214();
    v46 = v18;
    if (os_log_type_enabled(v45, v67))
    {
      v47 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v73 = v65;
      *v47 = 136315395;
      v48 = sub_29D6607A4();
      v68 = v46;
      v50 = sub_29D64A1D0(v48, v49, &v73);
      v64 = v45;
      v51 = v50;

      *(v47 + 4) = v51;
      *(v47 + 12) = 2081;
      v66(v27, v31, v23);
      v52 = sub_29D65FF84();
      v54 = v53;
      v55 = v31;
      v56 = *(v24 + 8);
      v56(v55, v23);
      v57 = sub_29D64A1D0(v52, v54, &v73);
      v46 = v68;

      *(v47 + 14) = v57;
      v58 = v64;
      _os_log_impl(&dword_29D5D7000, v64, v67, "%s Creating feed item generator for featureStatus %{private}s", v47, 0x16u);
      v59 = v65;
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v59, -1, -1);
      MEMORY[0x29ED63350](v47, -1, -1);
    }

    else
    {

      v60 = v31;
      v56 = *(v24 + 8);
      v56(v60, v23);
    }

    (*(v71 + 8))(v14, v72);
    sub_29D5FE918(0, &qword_2A1A1E6A0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v61 = v69;
    v62 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_29D661D90;
    (*(v61 + 32))(v63 + v62, v46, v70);
    v56(v35, v23);
    return v63;
  }
}

uint64_t sub_29D5FDE64@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v38 = a3;
  v7 = sub_29D65DF04();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D65F314();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65F2E4();
  v17 = sub_29D65F2F4();
  v37 = sub_29D660214();
  v39 = v17;
  if (os_log_type_enabled(v17, v37))
  {
    v18 = swift_slowAlloc();
    v36 = v13;
    v19 = v18;
    v35 = swift_slowAlloc();
    v40 = v35;
    *v19 = 136315394;
    v20 = sub_29D6607A4();
    v22 = sub_29D64A1D0(v20, v21, &v40);
    v38 = v12;
    v23 = v8;
    v24 = v7;
    v25 = v11;
    v26 = a2;
    v27 = a1;
    v28 = a4;
    v29 = v22;

    *(v19 + 4) = v29;
    a4 = v28;
    a1 = v27;
    a2 = v26;
    v11 = v25;
    v7 = v24;
    v8 = v23;
    *(v19 + 12) = 1024;
    *(v19 + 14) = a1 & 1;
    v30 = v39;
    _os_log_impl(&dword_29D5D7000, v39, v37, "%s Creating feed item generator for promotion isPromotionVisible: %{BOOL}d", v19, 0x12u);
    v31 = v35;
    sub_29D5DF1C4(v35);
    MEMORY[0x29ED63350](v31, -1, -1);
    MEMORY[0x29ED63350](v19, -1, -1);

    (*(v36 + 8))(v16, v38);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  (*(v8 + 16))(v11, a2, v7);
  v32 = type metadata accessor for HeadphoneNotificationsPromotionGenerator(0);
  swift_allocObject();
  v33 = sub_29D5F0DA4(v11, a1 & 1);
  a4[3] = v32;
  result = sub_29D5FE7E0(qword_2A1A1E910, type metadata accessor for HeadphoneNotificationsPromotionGenerator, &unk_29D6621EC);
  a4[4] = result;
  *a4 = v33;
  return result;
}

uint64_t sub_29D5FE1C4()
{
  v1 = OBJC_IVAR____TtC16HearingAppPlugin39HeadphoneNotificationsGeneratorPipeline_domain;
  v2 = sub_29D65DED4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadphoneNotificationsGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A1E9C0;
  if (!qword_2A1A1E9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D5FE2D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16HearingAppPlugin39HeadphoneNotificationsGeneratorPipeline_domain;
  v5 = sub_29D65DED4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_29D5FE354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = *v2;
  v31 = a2;
  v29 = sub_29D65DF04();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v29, v7);
  sub_29D5FE6F8(0);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D65DED4();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v18 = sub_29D65DEF4();
  sub_29D5FC0FC(v18, v17);

  (*(v14 + 32))(v3 + OBJC_IVAR____TtC16HearingAppPlugin39HeadphoneNotificationsGeneratorPipeline_domain, v17, v13);
  v19 = a1;
  v20 = v29;
  (*(v5 + 16))(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v29);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = (v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v21, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v24 = v30;
  *(v23 + v22) = v31;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  sub_29D5FE718(0);
  sub_29D5FE7E0(&qword_2A1A1E7F0, sub_29D5FE718, MEMORY[0x29EDB8A00]);

  sub_29D65F894();
  sub_29D5FE7E0(&qword_2A1A1E798, sub_29D5FE6F8, MEMORY[0x29EDB8AE8]);
  v25 = v32;
  v26 = sub_29D65F934();
  (*(v5 + 8))(v28, v20);
  (*(v33 + 8))(v12, v25);
  *(v3 + OBJC_IVAR____TtC16HearingAppPlugin39HeadphoneNotificationsGeneratorPipeline_publisher) = v26;
  return v3;
}

uint64_t sub_29D5FE738@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D65DF04() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5FC728(v1 + v4, v5, a1);
}

uint64_t sub_29D5FE7E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D5FE848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D5FE718(255);
    v7 = v6;
    v8 = sub_29D5FE7E0(&qword_2A1A1E7F0, sub_29D5FE718, MEMORY[0x29EDB8A00]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D5FE918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D5FE9B8()
{
  if (!qword_2A1A1E7B8)
  {
    v0 = sub_29D65F814();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E7B8);
    }
  }
}

unint64_t sub_29D5FEA18()
{
  result = qword_2A1A1E760;
  if (!qword_2A1A1E760)
  {
    sub_29D5FEB6C(255, &qword_2A1A1E758, MEMORY[0x29EDC9A98], MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E760);
  }

  return result;
}

uint64_t sub_29D5FEA94@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v5 = *(sub_29D65DF04() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5FDE64(a1, v2 + v6, v7, a2);
}

void sub_29D5FEB6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D5FEC2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D5F310C();
    sub_29D5FE7E0(a4, a5, MEMORY[0x29EDB8A00]);
    v8 = sub_29D65F754();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D5FECF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D65F814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D5FED54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D65DF04() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5FD1B0(a1, v8, v2 + v6, v9, v10, a2);
}

uint64_t sub_29D5FEE38(uint64_t a1, uint64_t a2)
{
  sub_29D5EA87C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D5FEE9C()
{
  sub_29D5EA87C(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_29D65DF04() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = *(v0 + v6);
  v10 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D5FD7F4(v0 + v2, v7, v8, v0 + v5, v9, v10);
}

uint64_t sub_29D5FEFB4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_29D5FF010();
    *(v0 + 16) = v1;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  }

  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

uint64_t sub_29D5FF010()
{
  sub_29D6001FC(0, &qword_2A1A1EA60, sub_29D5F3EFC, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D661ED0;
  *(v0 + 56) = &type metadata for HearingHealthArticleDataProvider;
  *(v0 + 64) = sub_29D5F41D0();
  *(v0 + 72) = sub_29D5F4224();
  *(v0 + 104) = &type metadata for AudiogramArticleDataProvider;
  *(v0 + 112) = sub_29D5F4128();
  *(v0 + 120) = sub_29D5F417C();
  *(v0 + 152) = &type metadata for HeadphoneListeningArticleDataProvider;
  *(v0 + 160) = sub_29D5F4080();
  *(v0 + 168) = sub_29D5F40D4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D90;
  *(inited + 56) = &type metadata for HearingAidsArticleDataProvider;
  *(inited + 64) = sub_29D5F3E54();
  *(inited + 72) = sub_29D5F3EA8();
  sub_29D65A54C(inited);
  return v0;
}

void *sub_29D5FF134(uint64_t a1)
{
  v3 = sub_29D65DF04();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v40 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v7, v8);
  v11 = v37 - v10;
  v38 = *(v4 + 16);
  v39 = v4 + 16;
  v38(v37 - v10, a1, v3, v9);
  v12 = sub_29D65F2F4();
  v13 = sub_29D660214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37[1] = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v37[0] = a1;
    v17 = v16;
    v41 = v16;
    *v15 = 136446466;
    v18 = sub_29D6607A4();
    v20 = sub_29D64A1D0(v18, v19, &v41);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v21 = sub_29D65DEF4();
    v22 = sub_29D65DD84();
    v24 = v23;

    (*(v4 + 8))(v11, v3);
    v25 = sub_29D64A1D0(v22, v24, &v41);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_29D5D7000, v12, v13, "[%{public}s] Creating generator pipelines for %{public}s profile", v15, 0x16u);
    swift_arrayDestroy();
    v26 = v17;
    a1 = v37[0];
    MEMORY[0x29ED63350](v26, -1, -1);
    MEMORY[0x29ED63350](v15, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v11, v3);
  }

  v27 = sub_29D65DEF4();
  if (v27)
  {
    v28 = v27;
    v29 = sub_29D65DDA4();
    v30 = sub_29D65DD94();

    if (v30)
    {
      return sub_29D5FF514(a1);
    }

    else
    {
      return MEMORY[0x29EDCA190];
    }
  }

  else
  {
    sub_29D6001FC(0, &qword_2A1A1E690, sub_29D600260, MEMORY[0x29EDC9E90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_29D661D90;
    (v38)(v40, a1, v3);
    sub_29D5FEFB4();
    sub_29D6003D8(0);
    v34 = v33;
    swift_allocObject();
    v35 = sub_29D65F284();
    *(v32 + 56) = v34;
    v36 = sub_29D600488(&qword_2A1A1DE18, sub_29D6003D8, MEMORY[0x29EDC1580]);
    result = v32;
    *(v32 + 64) = v36;
    *(v32 + 32) = v35;
  }

  return result;
}

void *sub_29D5FF514(uint64_t a1)
{
  v48 = *MEMORY[0x29EDCA608];
  v2 = sub_29D65DF04();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D65DEF4();
  v8 = sub_29D65DDA4();
  v9 = sub_29D65DD94();

  if ((v9 & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29D6001FC(0, &qword_2A1A1DDA0, sub_29D6001C8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661D20;
  v11 = *(v3 + 16);
  v11(v6, a1, v2);
  v12 = objc_allocWithZone(type metadata accessor for NoiseAvailability(0));
  v13 = sub_29D5E98A4(0);
  v14 = type metadata accessor for NoiseNotificationsGeneratorPipeline(0);
  swift_allocObject();
  v15 = sub_29D64D75C(v6, v13);

  *(inited + 56) = v14;
  *(inited + 64) = sub_29D600488(&qword_2A1A1E180, type metadata accessor for NoiseNotificationsGeneratorPipeline, &unk_29D665054);
  *(inited + 32) = v15;
  v11(v6, a1, v2);
  type metadata accessor for HeadphoneNotificationsAvailability(0);
  swift_allocObject();
  v16 = sub_29D6232A0();
  v17 = type metadata accessor for HeadphoneNotificationsGeneratorPipeline(0);
  swift_allocObject();
  v18 = sub_29D5FE354(v6, v16);

  *(inited + 96) = v17;
  *(inited + 104) = sub_29D600488(&qword_2A1A1E9D0, type metadata accessor for HeadphoneNotificationsGeneratorPipeline, &unk_29D6629E8);
  *(inited + 72) = v18;
  v11(v6, a1, v2);
  v19 = qword_2A1A1E518;
  v20 = *MEMORY[0x29EDBA6E0];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_2A1A20B80;
  v43 = &type metadata for HearingTestPromotionFeedItemProvider;
  v22 = sub_29D6002C4();
  *&v41 = v21;
  *(&v41 + 1) = 0xD00000000000001ELL;
  v44 = v22;
  v42 = 0x800000029D665CE0;
  *(&v46 + 1) = sub_29D65DFA4();
  v47 = MEMORY[0x29EDC3C28];
  sub_29D5E3C20(&v45);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65DF94();
  v23 = sub_29D65B940(1, 3, 1, inited);
  v23[2] = 3;
  v24 = v46;
  *(v23 + 7) = v45;
  *(v23 + 8) = v24;
  v23[18] = v47;
  sub_29D5FFA90(a1, &v45);
  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_29D65B940((v25 > 1), v26 + 1, 1, v23);
  }

  v23[2] = v26 + 1;
  v27 = &v23[5 * v26];
  *(v27 + 2) = v45;
  *(v27 + 3) = v46;
  v27[8] = v47;
  sub_29D5FFCDC(a1, &v45);
  v29 = v23[2];
  v28 = v23[3];
  v30 = v29 + 1;
  if (v29 >= v28 >> 1)
  {
    v23 = sub_29D65B940((v28 > 1), v29 + 1, 1, v23);
  }

  v23[2] = v30;
  v31 = (v23 + 4);
  v32 = &v23[5 * v29 + 4];
  v33 = v45;
  v34 = v46;
  *(v32 + 32) = v47;
  *v32 = v33;
  *(v32 + 16) = v34;
  v35 = MEMORY[0x29EDCA190];
  do
  {
    sub_29D600318(v31, &v45);
    v39[1] = v46;
    v39[0] = v45;
    v40 = v47;
    if (*(&v46 + 1))
    {
      sub_29D5DBB48(v39, &v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_29D65B7BC(0, v35[2] + 1, 1, v35);
      }

      v37 = v35[2];
      v36 = v35[3];
      if (v37 >= v36 >> 1)
      {
        v35 = sub_29D65B7BC((v36 > 1), v37 + 1, 1, v35);
      }

      v35[2] = v37 + 1;
      sub_29D5DBB48(&v41, &v35[5 * v37 + 4]);
    }

    else
    {
      sub_29D60037C(v39);
    }

    v31 += 40;
    --v30;
  }

  while (v30);

  return v35;
}

uint64_t sub_29D5FFA90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D65DF04();
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  (*(v8 + 16))(&v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = *MEMORY[0x29EDBA6E0];
  v10 = type metadata accessor for HearingTestPromptFeedItemProvider(0);
  v22[3] = v10;
  v22[4] = sub_29D600488(&qword_2A1A1E508, type metadata accessor for HearingTestPromptFeedItemProvider, &unk_29D6627B4);
  v11 = sub_29D5E3C20(v22);
  *v11 = 0xD00000000000001BLL;
  v11[1] = 0x800000029D666380;
  v12 = qword_2A1A1E518;
  v13 = v9;
  if (v12 != -1)
  {
    swift_once();
  }

  v11[2] = qword_2A1A20B80;
  v11[3] = 0xD00000000000001BLL;
  v11[4] = 0x800000029D666380;
  v14 = *(v10 + 28);
  v15 = qword_2A1A1E510;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_29D65DD54();
  v17 = sub_29D5DE6EC(v16, qword_2A1A20B68);
  (*(*(v16 - 8) + 16))(v11 + v14, v17, v16);
  v18 = sub_29D65DFA4();
  v19 = MEMORY[0x29EDC3C28];
  a2[3] = v18;
  a2[4] = v19;
  sub_29D5E3C20(a2);
  return sub_29D65DF94();
}

uint64_t sub_29D5FFCDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29D65DF04();
  v6 = MEMORY[0x2A1C7C4A8](v4, v5);
  (*(v8 + 16))(&v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v9 = *MEMORY[0x29EDBA6E0];
  v10 = type metadata accessor for HearingTestRescindedFeedItemProvider(0);
  v22[3] = v10;
  v22[4] = sub_29D600488(&qword_2A1A1E440, type metadata accessor for HearingTestRescindedFeedItemProvider, &unk_29D663A18);
  v11 = sub_29D5E3C20(v22);
  *v11 = 0xD00000000000001ELL;
  v11[1] = 0x800000029D666C30;
  v12 = qword_2A1A1E460;
  v13 = v9;
  if (v12 != -1)
  {
    swift_once();
  }

  v11[2] = qword_2A1A20B48;
  v11[3] = 0xD000000000000014;
  v11[4] = 0x800000029D666C50;
  v14 = *(v10 + 28);
  v15 = qword_2A1A1E468;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_29D65DD54();
  v17 = sub_29D5DE6EC(v16, qword_2A1A20B50);
  (*(*(v16 - 8) + 16))(v11 + v14, v17, v16);
  v18 = sub_29D65DFA4();
  v19 = MEMORY[0x29EDC3C28];
  a2[3] = v18;
  a2[4] = v19;
  sub_29D5E3C20(a2);
  return sub_29D65DF94();
}

uint64_t sub_29D5FFF40()
{

  v1 = OBJC_IVAR____TtC16HearingAppPlugin24HearingAppPluginDelegate_logger;
  v2 = sub_29D65F314();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HearingAppPluginDelegate(uint64_t a1)
{
  result = qword_2A1A1E560;
  if (!qword_2A1A1E560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D600038(uint64_t a1)
{
  result = sub_29D65F314();
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

uint64_t sub_29D6000D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HearingAppPluginDelegate(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC16HearingAppPlugin24HearingAppPluginDelegate_logger;
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v4 = sub_29D65F314();
  v5 = sub_29D5DE6EC(v4, qword_2A1A20C00);
  result = (*(*(v4 - 8) + 16))(v2 + v3, v5, v4);
  *a1 = v2;
  return result;
}

void sub_29D6001FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D600260()
{
  result = qword_2A1A1EA48;
  if (!qword_2A1A1EA48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A1EA48);
  }

  return result;
}

unint64_t sub_29D6002C4()
{
  result = qword_2A1A1E450;
  if (!qword_2A1A1E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E450);
  }

  return result;
}

uint64_t sub_29D600318(uint64_t a1, uint64_t a2)
{
  sub_29D6001C8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D60037C(uint64_t a1)
{
  sub_29D6001C8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6003D8(uint64_t a1)
{
  if (!qword_2A1A1DE10)
  {
    sub_29D600434();
    v1 = sub_29D65F294();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A1DE10);
    }
  }
}

unint64_t sub_29D600434()
{
  result = qword_2A1A1E368;
  if (!qword_2A1A1E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A1E368);
  }

  return result;
}

uint64_t sub_29D600488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D6004D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v2 = [qword_2A1A20BF8 noiseThresholdFooterLinkURL];
  sub_29D65DAD4();

  v3 = sub_29D65DAF4();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_29D600598()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  return sub_29D65DA74();
}

uint64_t sub_29D600670(uint64_t a1)
{
  v2 = sub_29D65E0E4();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x29EDC1760])
  {
    if (qword_2A1A1EA20 != -1)
    {
      swift_once();
    }

    v9 = qword_2A1A20BF8;
    v10 = [qword_2A1A20BF8 localizedNoiseThresholdValue_];
    v11 = sub_29D65FF64();
    v13 = v12;

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    sub_29D600DF8(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29D661D90;
    *(v14 + 56) = MEMORY[0x29EDC99B0];
    v15 = sub_29D5E3BCC();
    *(v14 + 64) = v15;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v16 = sub_29D65FF34();
    *&v45 = v17;

    v18 = [v9 noiseThresholdMinutesThreshold];
    sub_29D65DA74();
    v19 = swift_allocObject();
    v44 = xmmword_29D661D20;
    *(v19 + 16) = xmmword_29D661D20;
    *(v19 + 56) = MEMORY[0x29EDC99B0];
    *(v19 + 64) = v15;
    v20 = MEMORY[0x29EDC9BA8];
    *(v19 + 32) = v11;
    *(v19 + 40) = v13;
    v21 = MEMORY[0x29EDC9C10];
    *(v19 + 96) = v20;
    *(v19 + 104) = v21;
    *(v19 + 72) = v18;
    v22 = sub_29D65FF34();
    v24 = v23;

    sub_29D600DA8();
    result = swift_allocObject();
    *(result + 16) = v44;
    v26 = v45;
    *(result + 32) = v16;
    *(result + 40) = v26;
    *(result + 48) = v22;
    *(result + 56) = v24;
    return result;
  }

  if (v8 == *MEMORY[0x29EDC1768])
  {
    sub_29D600DA8();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_29D661D20;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    *(v27 + 32) = sub_29D65DA74();
    *(v27 + 40) = v28;
    v29 = sub_29D65DA74();
    result = v27;
    *(v27 + 48) = v29;
    *(v27 + 56) = v30;
    return result;
  }

  if (v8 != *MEMORY[0x29EDC1758])
  {
    if (v8 != *MEMORY[0x29EDC1750])
    {
      (*(v3 + 8))(v7, v2);
      return MEMORY[0x29EDCA190];
    }

    v39 = sub_29D65E1B4();
    sub_29D600DA8();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_29D661D90;
    if (v39)
    {
      v41 = v40;
      if (qword_2A1A1EAA0 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v41 = v40;
      if (qword_2A1A1EAA0 == -1)
      {
LABEL_21:
        v42 = sub_29D65DA74();
        result = v41;
        *(v41 + 32) = v42;
        *(v41 + 40) = v43;
        return result;
      }
    }

    swift_once();
    goto LABEL_21;
  }

  v31 = sub_29D65E1E4();
  v33 = v32;
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D600DA8();
  v34 = swift_allocObject();
  v45 = xmmword_29D661D90;
  *(v34 + 16) = xmmword_29D661D90;
  sub_29D600DF8(0);
  v35 = swift_allocObject();
  *(v35 + 16) = v45;
  *(v35 + 56) = MEMORY[0x29EDC99B0];
  *(v35 + 64) = sub_29D5E3BCC();
  *(v35 + 32) = v31;
  *(v35 + 40) = v33;
  v36 = sub_29D65FF34();
  v38 = v37;

  result = v34;
  *(v34 + 32) = v36;
  *(v34 + 40) = v38;
  return result;
}

void sub_29D600DA8()
{
  if (!qword_2A1A1E678)
  {
    v0 = sub_29D660684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A1E678);
    }
  }
}

void sub_29D600DF8(uint64_t a1)
{
  if (!qword_2A1A1E668)
  {
    sub_29D5E618C();
    v1 = sub_29D660684();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A1E668);
    }
  }
}

void sub_29D600E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v17 = sub_29D65F314();
  v4 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = a3 + 32;
    v10 = 0.0;
    v11 = *(a3 + 16);
    do
    {
      sub_29D5E8E70(v9, v19);
      sub_29D5E32A8(v19, v19[3]);
      sub_29D65E594();
      v10 = v10 + CGRectGetHeight(v20);
      sub_29D5DF1C4(v19);
      v9 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {
    v10 = 0.0;
  }

  sub_29D65E3F4();
  if (CGRectGetHeight(v21) - v10 >= 0.0)
  {
    if (v8)
    {
      v15 = (a3 + 32);
      do
      {
        sub_29D5E32A8(v15, v15[3]);
        sub_29D65E594();
        CGRectGetHeight(v22);
        sub_29D5E32A8(v15, v15[3]);
        sub_29D65E5B4();
        sub_29D65E3C4();
        v15 += 5;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    sub_29D65F2E4();
    v12 = sub_29D65F2F4();
    v13 = sub_29D660204();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_29D5D7000, v12, v13, "PDF page is too small to render all elements. Elements will be clipped.", v14, 2u);
      MEMORY[0x29ED63350](v14, -1, -1);
    }

    (*(v4 + 8))(v7, v17);
  }
}

double sub_29D6010C0(uint64_t a1, uint64_t a2)
{
  sub_29D65E3F4();
  v4 = v3;
  sub_29D65E3F4();
  CGRectGetWidth(v10);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 32;
    v7 = 0.0;
    do
    {
      sub_29D5E8E70(v6, v9);
      sub_29D5E32A8(v9, v9[3]);
      sub_29D65E594();
      v7 = v7 + CGRectGetHeight(v11);
      sub_29D5DF1C4(v9);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return v4;
}

uint64_t sub_29D6011D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D6012D8();
  *v3 = v1;
  v3[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v4);
}

unint64_t sub_29D601284()
{
  result = qword_2A17AC6C0;
  if (!qword_2A17AC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6C0);
  }

  return result;
}

unint64_t sub_29D6012D8()
{
  result = qword_2A17AC6C8;
  if (!qword_2A17AC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6C8);
  }

  return result;
}

uint64_t sub_29D60132C(char a1)
{
  if (a1)
  {
    if (qword_2A1A1EAA0 == -1)
    {
      return sub_29D65DA74();
    }

    goto LABEL_6;
  }

  if (qword_2A1A1EAA0 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_29D65DA74();
}

uint64_t sub_29D601478@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_29D6014E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29D6020B4();

  return MEMORY[0x2A1C61440](a1, a2, a3, v8, a4);
}

uint64_t sub_29D60157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_29D6020B4();

  return a4(a1, a2, v7, a3);
}

uint64_t sub_29D6015E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D602108();
  *v3 = v1;
  v3[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29D601690(char a1, int a2, char a3)
{
  v6 = sub_29D65FD94();
  MEMORY[0x2A1C7C4A8](v6, v7);
  v8 = sub_29D65FDA4();
  v32 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v28[-v14];
  v16 = objc_opt_self();
  v17 = 1;
  if (a3)
  {
    v17 = 2;
  }

  v31 = v17;
  v18 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  if ((a3 & 1) == 0)
  {
    v18 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v19 = [v16 *v18];
  sub_29D65FBD4();
  sub_29D5ED468();
  v20 = sub_29D660344();
  v21 = MEMORY[0x29EDCA190];
  v34 = MEMORY[0x29EDCA190];
  if (a1)
  {
    v29 = a2;
    v30 = v8;
    sub_29D601F78(0, &qword_2A17AC6D0, MEMORY[0x29EDC9E90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_29D661D20;
    v23 = v20;
    sub_29D65FD74();
    sub_29D65FD64();
    v33 = v22;
    sub_29D601F30(&qword_2A17AC6D8, MEMORY[0x29EDC4360], MEMORY[0x29EDC4368]);
    sub_29D601F78(0, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
    sub_29D601FD8();
    sub_29D660484();
    sub_29D65FD54();
    sub_29D65FD24();
    MEMORY[0x29ED623B0]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D660064();
    }

    sub_29D660074();
    v8 = v30;
    (*(v32 + 8))(v15, v30);
    v21 = v34;
    LOBYTE(a2) = v29;
  }

  if (a2)
  {
    sub_29D601F78(0, &qword_2A17AC6D0, MEMORY[0x29EDC9E90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_29D661D90;
    v25 = v20;
    sub_29D65FD64();
    v33 = v24;
    sub_29D601F30(&qword_2A17AC6D8, MEMORY[0x29EDC4360], MEMORY[0x29EDC4368]);
    sub_29D601F78(0, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
    sub_29D601FD8();
    sub_29D660484();
    sub_29D65FD54();
    sub_29D65FD24();
    MEMORY[0x29ED623B0]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D660064();
    }

    sub_29D660074();
    (*(v32 + 8))(v11, v8);
    v21 = v34;
  }

  v26 = MEMORY[0x29ED620D0](v21);

  return v26;
}

id sub_29D601BA0(uint64_t a1, __int16 a2, uint64_t a3, unsigned int a4, char a5)
{
  v8 = [objc_allocWithZone(MEMORY[0x29EDBA038]) init];
  v9 = MEMORY[0x29ED608A0]();
  v10 = objc_opt_self();
  v11 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  if ((a5 & 1) == 0)
  {
    v11 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v12 = [v10 *v11];
  v13 = sub_29D65FBD4();
  sub_29D5ED3CC(v13, v9);

  v14 = &off_29F353000;
  v15 = a5 & 1;
  if ((a2 & 0xFF00) != 0x200)
  {
    v16 = sub_29D601690(BYTE1(a4) & 1, HIWORD(a4) & 1, v15);
    v17 = [objc_opt_self() textAttachmentWithImage_];
    v18 = sub_29D65E4E4();
    [v18 capHeight];
    [v16 size];
    [v16 size];
    [v16 size];
    [v17 setBounds_];
    v19 = [objc_opt_self() attributedStringWithAttachment_];
    [v8 appendAttributedString_];

    v20 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v21 = sub_29D65FF24();
    type metadata accessor for Key(0);
    sub_29D601F30(&qword_2A17AC188, type metadata accessor for Key, &unk_29D661830);
    v22 = sub_29D65FEA4();
    v23 = [v20 initWithString:v21 attributes:v22];

    [v8 appendAttributedString_];
    v14 = &off_29F353000;
  }

  sub_29D60132C(v15);
  v24 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v25 = sub_29D65FF24();

  type metadata accessor for Key(0);
  sub_29D601F30(&qword_2A17AC188, type metadata accessor for Key, &unk_29D661830);
  v26 = sub_29D65FEA4();

  v27 = [v24 v14[351]];

  [v8 appendAttributedString_];
  return v8;
}

uint64_t sub_29D601F30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D601F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D65FD94();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D601FD8()
{
  result = qword_2A17AC6E8;
  if (!qword_2A17AC6E8)
  {
    sub_29D601F78(255, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6E8);
  }

  return result;
}

unint64_t sub_29D602060()
{
  result = qword_2A17AC6F0;
  if (!qword_2A17AC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6F0);
  }

  return result;
}

unint64_t sub_29D6020B4()
{
  result = qword_2A17AC6F8;
  if (!qword_2A17AC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6F8);
  }

  return result;
}

unint64_t sub_29D602108()
{
  result = qword_2A17AC700;
  if (!qword_2A17AC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC700);
  }

  return result;
}

uint64_t type metadata accessor for AudiogramPDFJapanDisclaimerPageNumberedPage(uint64_t a1)
{
  result = qword_2A17AC708;
  if (!qword_2A17AC708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6021E8()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  result = sub_29D65DA74();
  qword_2A17AD688 = result;
  unk_2A17AD690 = v1;
  return result;
}

uint64_t sub_29D602294()
{
  result = MEMORY[0x29ED60890]();
  qword_2A17AD698 = result;
  return result;
}

id sub_29D6022B4()
{
  if (qword_2A17AC030 != -1)
  {
    swift_once();
  }

  if (qword_2A17AC038 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v1 = sub_29D65FF24();
  type metadata accessor for Key(0);
  sub_29D602584(&qword_2A17AC188, type metadata accessor for Key, &unk_29D661830);
  v2 = sub_29D65FEA4();
  v3 = [v0 initWithString:v1 attributes:v2];

  return v3;
}

id sub_29D6023F4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for AudiogramPDFJapanDisclaimerPageNumberedPage(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_29D602438(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for ImageInitializationOption(0);
  sub_29D602584(&qword_2A17AC178, type metadata accessor for ImageInitializationOption, &unk_29D6617EC);
  sub_29D65FEB4();
  v6 = a3;
  v7 = sub_29D65FEA4();

  v10.receiver = a1;
  v10.super_class = type metadata accessor for AudiogramPDFJapanDisclaimerPageNumberedPage(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithImage_options_, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_29D602544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiogramPDFJapanDisclaimerPageNumberedPage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D602584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PDFVStackWithMinimumWidth.render(context:document:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return;
  }

  v7 = 0;
  v8 = a3 + 32;
  while (1)
  {
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    v12 = 0uLL;
    if (v7 == v5)
    {
      goto LABEL_8;
    }

    if (v7 >= v5)
    {
      break;
    }

    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_17;
    }

    *&v14 = v7;
    sub_29D5E8E70(v8 + 40 * v7, &v14 + 8);
    v9 = v14;
    v11 = v15;
    v12 = v16;
LABEL_8:
    v17[0] = v9;
    v17[1] = v11;
    v17[2] = v12;
    if (!v12)
    {
      return;
    }

    v13 = v9;
    sub_29D5DBB48((v17 + 8), &v14);
    if (a4)
    {
      sub_29D5E32A8(&v14, *(&v15 + 1));
      sub_29D65E5A4();
      if (sub_29D65E394() & 1) == 0 && (sub_29D65E384())
      {
        sub_29D65E3B4();
      }
    }

    sub_29D5E32A8(&v14, *(&v15 + 1));
    sub_29D65E5B4();
    if (v13 < (v5 - 1))
    {
      sub_29D65E3C4();
    }

    sub_29D5DF1C4(&v14);
    v7 = v10;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_29D6027BC(uint64_t a1, void *a2, char a3, double a4)
{
  if (a3)
  {
    if (a2[2])
    {
      sub_29D65E3E4();
      sub_29D5E32A8(a2 + 4, a2[7]);
      sub_29D65E5A4();
      sub_29D65E354();
    }

    else
    {
      sub_29D65E354();
    }
  }

  else
  {
    PDFVStackWithMinimumWidth.minimumBoundingRectForAllContent(in:)(a4, a1, a2);
  }
}

void PDFVStackWithMinimumWidth.minimumBoundingRectForAllContent(in:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D65E3E4();
    v6 = *(a3 + 16);
    if (v6 >= 2)
    {
      v7 = a3 + 32;
      v8 = v6 - 1;
      v9 = 0.0;
      v10 = 0.0;
      do
      {
        sub_29D5E8E70(v7, v25);
        sub_29D5E32A8(v25, v25[3]);
        sub_29D65E5A4();
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        sub_29D5DF1C4(v25);
        v26.origin.x = v12;
        v26.origin.y = v14;
        v26.size.width = v16;
        v26.size.height = v18;
        v19 = v10 + CGRectGetHeight(v26);
        v27.origin.x = v12;
        v27.origin.y = v14;
        v27.size.width = v16;
        v27.size.height = v18;
        CGRectGetHeight(v27);
        sub_29D65E3C4();
        sub_29D65E3C4();
        v10 = v19 + a1;
        v28.origin.x = v12;
        v28.origin.y = v14;
        v28.size.width = v16;
        v28.size.height = v18;
        Width = CGRectGetWidth(v28);
        if (v9 <= Width)
        {
          v9 = Width;
        }

        v7 += 40;
        --v8;
      }

      while (v8);
      sub_29D65EE94();
    }

    else
    {
      sub_29D65EE94();
    }

    sub_29D5E32A8((a3 + 40 * v3 - 8), *(a3 + 40 * v3 + 16));
    sub_29D65E5A4();
    x = v29.origin.x;
    y = v29.origin.y;
    v23 = v29.size.width;
    height = v29.size.height;
    CGRectGetHeight(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = v23;
    v30.size.height = height;
    CGRectGetWidth(v30);
    sub_29D65E354();
    CGRectGetWidth(v31);
    sub_29D65E354();
  }

  else
  {
    sub_29D65E354();
  }
}

unint64_t sub_29D602AB8()
{
  result = qword_2A17AC718;
  if (!qword_2A17AC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC718);
  }

  return result;
}

void sub_29D602B2C(uint64_t a1, double a2)
{
  v3 = *v2;
  if (*(v2 + 16) == 1)
  {
    if (v3[2])
    {
      sub_29D65E3E4();
      sub_29D5E32A8(v3 + 4, v3[7]);
      sub_29D65E5A4();
      sub_29D65E354();
    }

    else
    {
      sub_29D65E354();
    }
  }

  else
  {
    PDFVStackWithMinimumWidth.minimumBoundingRectForAllContent(in:)(*(v2 + 8), a1, *v2);
  }
}

uint64_t sub_29D602C0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D602D64();
  *v3 = v1;
  v3[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v4);
}

__n128 sub_29D602CB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_29D602CCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D602D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D602D64()
{
  result = qword_2A17AC720;
  if (!qword_2A17AC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC720);
  }

  return result;
}

uint64_t sub_29D602DBC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v15[0] = a2;
  v4 = sub_29D65FD94();
  MEMORY[0x2A1C7C4A8](v4, v5);
  v6 = sub_29D65FDA4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_29D660694();

    v11 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  }

  else
  {

    v11 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  v12 = [objc_opt_self() *v11];
  sub_29D65FBD4();
  sub_29D5ED468();
  sub_29D660344();
  v13 = [objc_opt_self() whiteColor];
  v15[1] = MEMORY[0x29EDCA190];
  sub_29D60359C();
  sub_29D6035F4(0, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
  sub_29D601FD8();
  sub_29D660484();
  sub_29D65FD54();
  sub_29D65FD44();
  sub_29D65DA64();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D603048(char a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v28 = sub_29D65FDA4();
  v9 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D65FD94();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v21 = &v27 - v20;
  if (a2)
  {
    sub_29D660694();

    v22 = &selRef_hk_hearingHealthAudiogramRightEarLineColor;
  }

  else
  {

    v22 = &selRef_hk_hearingHealthAudiogramLeftEarLineColor;
  }

  sub_29D603324(a1 & 1);
  v23 = [objc_opt_self() *v22];
  sub_29D65FBD4();
  sub_29D5ED468();
  sub_29D660344();
  v24 = [objc_opt_self() whiteColor];
  (*(v14 + 16))(v17, v21, v13);
  sub_29D65FD54();
  v25 = sub_29D65FD24();
  (*(v9 + 8))(v12, v28);
  (*(v14 + 8))(v21, v13);
  return v25;
}

uint64_t sub_29D603324(char a1)
{
  v2 = sub_29D65FD94();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_29D6035F4(0, &qword_2A17AC6D0, MEMORY[0x29EDC9E90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_29D661D90;
    sub_29D65FD74();
    v12 = v7;
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  sub_29D60359C();
  sub_29D6035F4(0, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
  sub_29D601FD8();
  sub_29D660484();
  sub_29D6035F4(0, &qword_2A17AC6D0, MEMORY[0x29EDC9E90]);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D661ED0;
  (*(v3 + 16))(v9 + v8, v6, v2);
  sub_29D65FD64();
  sub_29D65FD84();
  v12 = v9;
  sub_29D60359C();
  sub_29D6035F4(0, &qword_2A17AC6E0, MEMORY[0x29EDC9A40]);
  sub_29D601FD8();
  sub_29D660484();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_29D60359C()
{
  result = qword_2A17AC6D8;
  if (!qword_2A17AC6D8)
  {
    sub_29D65FD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC6D8);
  }

  return result;
}

void sub_29D6035F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D65FD94();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t PDFVStackWithReducedWidth.render(context:document:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_29D65F1F4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetWidth(v21);
  sub_29D65E3A4();
  swift_bridgeObjectRetain_n();
  sub_29D65F1D4();
  sub_29D65F1C4();
  v10 = *(v6 + 8);
  v10(v9, v5);
  sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetWidth(v22);
  sub_29D65E3A4();
  sub_29D65F1D4();
  sub_29D65F1B4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v10(v9, v5);
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  CGRectGetHeight(v23);
  sub_29D65E3C4();
}

double sub_29D6038E0(double a1, double a2, uint64_t a3, uint64_t a4, double (*a5)(uint64_t))
{
  v6 = sub_29D65F1F4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetWidth(v15);
  sub_29D65E3A4();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65F1D4();
  v12 = a5(v11);

  (*(v7 + 8))(v10, v6);
  return v12;
}

unint64_t sub_29D603A58()
{
  result = qword_2A17AC728;
  if (!qword_2A17AC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC728);
  }

  return result;
}

double sub_29D603AE8(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(uint64_t))
{
  v5 = sub_29D65F1F4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D65E3E4();
  sub_29D65E354();
  CGRectGetWidth(v14);
  sub_29D65E3A4();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65F1D4();
  v11 = a4(v10);

  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_29D603C5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D5E8FC4();
  *v3 = v1;
  v3[1] = sub_29D5F8D78;

  return MEMORY[0x2A1C61D30](a1, v4);
}

id sub_29D603D8C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NoiseNotificationsDataTypeDetailConfigurationProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D603E2C()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20BF8;
  [qword_2A1A20BF8 setNoiseEnabled_];
  [v0 setNotificationsEnabled_];
  [v0 setOnboardingCompleted_];
}

void sub_29D603F34(void *a1)
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v2 = sub_29D65FF24();
    v3 = sub_29D65FF24();
    v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

    v5 = sub_29D65FF24();
    v6 = objc_opt_self();
    v7 = [v6 actionWithTitle:v5 style:1 handler:0];

    [v4 addAction_];
    v8 = sub_29D65FF24();
    [v4 setMessage_];

    if (sub_29D65E194())
    {
      if (qword_2A1A1EA08 != -1)
      {
        swift_once();
      }

      sub_29D5EAD50(&unk_2A1A20BA8, v16);
      v9 = v17;
      if (v17)
      {
        v10 = v18;
        sub_29D5E32A8(v16, v17);
        v11 = (*(v10 + 1))(v9, v10);
        sub_29D5DF1C4(v16);
        if (v11)
        {
          v12 = sub_29D65FF24();
          [v4 setMessage_];

          v13 = sub_29D65FF24();
          v18 = sub_29D603E2C;
          v19 = 0;
          v16[0] = MEMORY[0x29EDCA5F8];
          v16[1] = 1107296256;
          v16[2] = sub_29D5DD0A4;
          v17 = &unk_2A24321C8;
          v14 = _Block_copy(v16);

          v15 = [v6 actionWithTitle:v13 style:2 handler:v14];
          _Block_release(v14);

          [v4 addAction_];
        }
      }

      else
      {
        sub_29D5EADE0(v16);
      }
    }

    [a1 presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_29D604258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D604270()
{
  result = qword_2A1A1E6F0;
  if (!qword_2A1A1E6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A1E6F0);
  }

  return result;
}

uint64_t sub_29D6042BC()
{
  sub_29D604480();
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v2 = qword_2A1A20C18;
    v1 = 0;
  }

  v3 = v1;
  v4 = sub_29D65DA74();
  v6 = v5;

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 40);
  }

  else
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v8 = qword_2A1A20C18;
    v7 = 0;
  }

  v9 = v7;
  v10 = sub_29D65DA74();
  v12 = v11;

  v13 = sub_29D605190();

  return MEMORY[0x2A1C60BA0](v4, v6, v10, v12, v13);
}

void sub_29D604480()
{
  sub_29D605988(0);
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBBC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605A20(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605AB8(0);
  MEMORY[0x2A1C7C4A8](v17, v18);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 48))
  {
    v34 = v13;
    v35 = v19;
    v23 = *(v0 + 24);
    v36 = v20;
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 16);
    v33 = v0;
    v25(ObjectType, v23);
    sub_29D605C60(&qword_2A1A1E778, 255, sub_29D5FEBBC, MEMORY[0x29EDB8AF8]);
    sub_29D65F994();
    (*(v7 + 8))(v10, v6);
    v26 = v33;
    v37 = *(v33 + 32);
    v27 = v37;
    v28 = sub_29D6602A4();
    (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
    sub_29D605BAC();
    sub_29D605C60(&unk_2A17AC900, 255, sub_29D605A20, MEMORY[0x29EDB8918]);
    sub_29D605C60(&qword_2A17AC768, 255, sub_29D605BAC, MEMORY[0x29EDCA280]);
    v29 = v27;
    sub_29D65F984();
    sub_29D605BF8(v4, sub_29D605988);

    (*(v34 + 8))(v16, v12);
    swift_allocObject();
    swift_weakInit();
    sub_29D605C60(&qword_2A17AC770, 255, sub_29D605AB8, MEMORY[0x29EDB89E8]);
    v30 = v35;
    v31 = sub_29D65F9B4();

    (*(v36 + 8))(v22, v30);
    *(v26 + 48) = v31;
  }
}

uint64_t sub_29D604908(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_29D605C60(&qword_2A17AC6B8, v3, type metadata accessor for HearingEnvironmentNotificationAdvertisableFeatureSource, &unk_29D662F38);
      sub_29D604A00();
      sub_29D65E2C4();
      sub_29D65EE94();
    }
  }

  return result;
}

uint64_t sub_29D604A00()
{
  v59 = *v0;
  v1 = sub_29D65F314();
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v64 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D65E0E4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v56 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605924(0);
  v9 = v8 - 8;
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5EA87C(0);
  v58 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v57 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v63 = &v56 - v18;
  MEMORY[0x2A1C7C4A8](v19, v20);
  v22 = &v56 - v21;
  MEMORY[0x2A1C7C4A8](v23, v24);
  v26 = &v56 - v25;
  MEMORY[0x2A1C7C4A8](v27, v28);
  v30 = &v56 - v29;
  v31 = v0[3];
  ObjectType = swift_getObjectType();
  (*(v31 + 8))(ObjectType, v31);
  v62 = (*(v31 + 24))(ObjectType, v31);
  (*(v5 + 104))(v26, *MEMORY[0x29EDC1768], v4);
  (*(v5 + 56))(v26, 0, 1, v4);
  v33 = *(v9 + 56);
  sub_29D5EA900(v30, v12);
  sub_29D5EA900(v26, &v12[v33]);
  v34 = *(v5 + 48);
  if (v34(v12, 1, v4) == 1)
  {
    sub_29D605BF8(v26, sub_29D5EA87C);
    if (v34(&v12[v33], 1, v4) == 1)
    {
      sub_29D605BF8(v12, sub_29D5EA87C);
      v36 = v63;
      v35 = v64;
      if (v62)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

LABEL_7:
    sub_29D605BF8(v12, sub_29D605924);
    v36 = v63;
    v35 = v64;
    goto LABEL_8;
  }

  sub_29D5EA900(v12, v22);
  if (v34(&v12[v33], 1, v4) == 1)
  {
    sub_29D605BF8(v26, sub_29D5EA87C);
    (*(v5 + 8))(v22, v4);
    goto LABEL_7;
  }

  v53 = v56;
  (*(v5 + 32))(v56, &v12[v33], v4);
  sub_29D605C60(&qword_2A17AC758, 255, MEMORY[0x29EDC1770], MEMORY[0x29EDC1780]);
  v54 = sub_29D65FF14();
  v55 = *(v5 + 8);
  v55(v53, v4);
  sub_29D605BF8(v26, sub_29D5EA87C);
  v55(v22, v4);
  sub_29D605BF8(v12, sub_29D5EA87C);
  v36 = v63;
  v35 = v64;
  if (v54 & v62)
  {
LABEL_19:
    sub_29D605BF8(v30, sub_29D5EA87C);
    return 1;
  }

LABEL_8:
  sub_29D65F2C4();
  sub_29D5EA900(v30, v36);
  v37 = sub_29D65F2F4();
  v38 = sub_29D660214();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v65 = v40;
    *v39 = 136315906;
    v41 = sub_29D6607A4();
    v43 = sub_29D64A1D0(v41, v42, &v65);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_29D64A1D0(0xD000000000000011, 0x800000029D667120, &v65);
    *(v39 + 22) = 2080;
    sub_29D5EA900(v36, v57);
    v44 = sub_29D65FF84();
    v46 = v45;
    sub_29D605BF8(v36, sub_29D5EA87C);
    v47 = sub_29D64A1D0(v44, v46, &v65);

    *(v39 + 24) = v47;
    *(v39 + 32) = 2080;
    if (v62)
    {
      v48 = 1702195828;
    }

    else
    {
      v48 = 0x65736C6166;
    }

    if (v62)
    {
      v49 = 0xE400000000000000;
    }

    else
    {
      v49 = 0xE500000000000000;
    }

    v50 = sub_29D64A1D0(v48, v49, &v65);

    *(v39 + 34) = v50;
    _os_log_impl(&dword_29D5D7000, v37, v38, "[%s] %s -> false: featureStatus (%s), promotion visiblity (%s)", v39, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v40, -1, -1);
    MEMORY[0x29ED63350](v39, -1, -1);

    (*(v60 + 8))(v35, v61);
    v51 = v30;
  }

  else
  {

    sub_29D605BF8(v36, sub_29D5EA87C);
    (*(v60 + 8))(v35, v61);
    v51 = v30;
  }

  sub_29D605BF8(v51, sub_29D5EA87C);
  return 0;
}

id sub_29D605190()
{
  v1 = sub_29D65E154();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v7 = qword_2A1A20C18;
    v6 = 0;
  }

  v8 = v7;
  v9 = v6;
  sub_29D65E144();
  v10 = sub_29D65E114();
  if (!v10)
  {
    v10 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  v11 = v10;

  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t sub_29D605300()
{
  sub_29D65EE94();

  sub_29D5DBB60(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_29D60537C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC17B0];
  v3 = sub_29D65E0F4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D60542C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D65EE94();
}

void (*sub_29D60548C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_29D605520;
}

void sub_29D605520(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    sub_29D65EE94();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_29D65EE94();
  }

  free(v3);
}

uint64_t sub_29D6055A8(void (*a1)(char *))
{
  sub_29D605870(0);
  MEMORY[0x2A1C7C4A8](v2, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D604480();
  *v5 = sub_29D604A00() & 1;
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_29D605BF8(v5, sub_29D605870);
}

uint64_t sub_29D605678(void (*a1)(char *))
{
  sub_29D605858(0);
  MEMORY[0x2A1C7C4A8](v2, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_29D605BF8(v4, sub_29D605858);
}

uint64_t sub_29D605728(uint64_t a1, void (*a2)(char *))
{
  sub_29D605858(0);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D604480();
  v9 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  (*(v9 + 88))(ObjectType, v9);
  (*(v9 + 48))(a1, ObjectType, v9);
  swift_storeEnumTagMultiPayload();
  a2(v8);
  return sub_29D605BF8(v8, sub_29D605858);
}

void sub_29D605884(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_29D65E244();
    sub_29D605C60(&qword_2A17AC740, 255, MEMORY[0x29EDC1918], MEMORY[0x29EDC1920]);
    v4 = sub_29D660754();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D605924(uint64_t a1)
{
  if (!qword_2A17AC750)
  {
    sub_29D5EA87C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AC750);
    }
  }
}

void sub_29D6059BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D605A20(uint64_t a1)
{
  if (!qword_2A17AC8E0)
  {
    sub_29D5FEBBC(255);
    sub_29D605C60(&qword_2A1A1E778, 255, sub_29D5FEBBC, MEMORY[0x29EDB8AF8]);
    v1 = sub_29D65F7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC8E0);
    }
  }
}

void sub_29D605AB8(uint64_t a1)
{
  if (!qword_2A17AC8F0)
  {
    sub_29D605A20(255);
    sub_29D605BAC();
    sub_29D605C60(&unk_2A17AC900, 255, sub_29D605A20, MEMORY[0x29EDB8918]);
    sub_29D605C60(&qword_2A17AC768, 255, sub_29D605BAC, MEMORY[0x29EDCA280]);
    v1 = sub_29D65F804();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC8F0);
    }
  }
}

unint64_t sub_29D605BAC()
{
  result = qword_2A17AC0E8;
  if (!qword_2A17AC0E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17AC0E8);
  }

  return result;
}

uint64_t sub_29D605BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D605C60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_29D605CA8()
{
  swift_beginAccess();
  sub_29D605E70(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);
  sub_29D65F8C4();
  return swift_endAccess();
}

id sub_29D605D40(char a1)
{
  if (qword_2A1A1EA20 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = a1 & 1;
  v2 = qword_2A1A20BF8;

  return [v2 setNoiseEnabled_];
}

id sub_29D605DC0()
{
  if (qword_2A1A1EA20 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20BF8;
  [qword_2A1A20BF8 setOnboardingCompleted_];
  [v0 setNoiseEnabled_];
  [v0 setNotificationsEnabled_];

  return [v0 setNotificationThreshold_];
}

void sub_29D605E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D605ED4()
{
  v1 = sub_29D65E154();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A20C18;
  sub_29D65E144();
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  sub_29D65DA74();

  v7 = [v5 bundleForClass_];
  sub_29D65DA74();

  v8 = [v5 bundleForClass_];
  sub_29D65DA74();

  return sub_29D65E294();
}

void sub_29D606194(uint64_t a1)
{
  v2 = sub_29D65E314();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v51 = (&ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_29D65E554();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v13 = &ObjectType - v12;
  v14 = sub_29D65EDC4();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v45 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v19);
  v21 = &ObjectType - v20;
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
    v44 = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_29D65EF44();
    sub_29D65EE94();
    sub_29D65ED94();
    v22 = *(v15 + 8);
    v47 = v15 + 8;
    v48 = v14;
    v46 = v22;
    v22(v21, v14);
    sub_29D5E32A8(v52, v52[3]);
    sub_29D65ED54();
    (*(v6 + 104))(v9, *MEMORY[0x29EDC1D60], v5);
    sub_29D606CB4();
    v23 = sub_29D65FF14();
    v24 = *(v6 + 8);
    v24(v9, v5);
    v25 = v13;
    v26 = v44;
    v24(v25, v5);
    sub_29D5DF1C4(v52);
    if ((v23 & 1) == 0)
    {
      v27 = sub_29D65EED4();
      if (v27)
      {
        v28 = v27;
        swift_unknownObjectRetain();
        v29 = v45;
        sub_29D65EF44();
        sub_29D65EE94();
        v30 = sub_29D65EDA4();
        v46(v29, v48);
        v31 = [v30 navigationController];

        if (v31)
        {
          [v31 pushViewController:v28 animated:1];
        }
      }
    }

    if (qword_2A1A1EA20 != -1)
    {
      swift_once();
    }

    v32 = qword_2A1A20BF8;
    [qword_2A1A20BF8 setOnboardingCompleted_];
    [v32 setNoiseEnabled_];
    [v32 setNotificationsEnabled_];
    [v32 setNotificationThreshold_];
    v33 = v51;
    (*(v49 + 104))(v51, *MEMORY[0x29EDC1C08], v50);
    v34 = objc_allocWithZone(type metadata accessor for NoiseNotificationsSettingsViewController(0));
    v35 = v32;
    v36 = sub_29D61A8C8(v35, v33, 1u);

    sub_29D65ED74();
    v37 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    swift_unknownObjectRetain();
    sub_29D65EF44();
    sub_29D65EE94();
    v38 = sub_29D65EDA4();
    v46(v21, v48);
    [v38 presentViewController:v37 animated:1 completion:0];

    sub_29D65EE94();
  }

  else
  {
    sub_29D65EE94();
    v51 = sub_29D65F2F4();
    v39 = sub_29D6601F4();
    if (os_log_type_enabled(v51, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v52[0] = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_29D64A1D0(0xD000000000000032, 0x800000029D662FA0, v52);
      _os_log_impl(&dword_29D5D7000, v51, v39, "[%{public}s] Could not perform onboarding action; invalid sender", v40, 0xCu);
      sub_29D5DF1C4(v41);
      MEMORY[0x29ED63350](v41, -1, -1);
      MEMORY[0x29ED63350](v40, -1, -1);
    }

    else
    {
      v42 = v51;
    }
  }
}

uint64_t sub_29D606814(uint64_t a1)
{
  sub_29D5E6830(a1, v11, &qword_2A1A1E188, qword_2A1A1E190, &protocol descriptor for NoiseMonitoringCapabilityProviding);
  v2 = v12;
  if (v12)
  {
    v3 = v13;
    sub_29D5E32A8(v11, v12);
    LODWORD(v2) = (*(v3 + 8))(v2, v3);
    sub_29D5DF1C4(v11);
  }

  else
  {
    sub_29D5E677C(v11, &qword_2A1A1E188, qword_2A1A1E190, &protocol descriptor for NoiseMonitoringCapabilityProviding);
  }

  sub_29D5E6830(a1 + 40, v11, &qword_2A1A1E370, &qword_2A1A1E378, &protocol descriptor for NoiseMonitoringSettingsProviding);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    sub_29D5E32A8(v11, v12);
    LODWORD(v4) = (*(v5 + 8))(v4, v5);
    sub_29D5DF1C4(v11);
  }

  else
  {
    sub_29D5E677C(v11, &qword_2A1A1E370, &qword_2A1A1E378, &protocol descriptor for NoiseMonitoringSettingsProviding);
  }

  v6 = sub_29D65F2F4();
  v7 = sub_29D6601D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136446978;
    *(v8 + 4) = sub_29D64A1D0(0xD000000000000032, 0x800000029D662FA0, v11);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_29D64A1D0(0xD00000000000004BLL, 0x800000029D665920, v11);
    *(v8 + 22) = 1026;
    *(v8 + 24) = v2 & 1;
    *(v8 + 28) = 1026;
    *(v8 + 30) = v4 & 1;
    _os_log_impl(&dword_29D5D7000, v6, v7, "[%{public}s] %s: Feature supported: %{BOOL,public}d. Feature onboarded: %{BOOL,public}d.", v8, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x29ED63350](v9, -1, -1);
    MEMORY[0x29ED63350](v8, -1, -1);
  }

  return v2 & ~v4 & 1;
}

uint64_t sub_29D606AB4()
{
  sub_29D5ED310();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D661DA0;
  sub_29D5DF448(0, &qword_2A1A1E6E0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED625D0](*MEMORY[0x29EDBA8E0]);
  sub_29D5DF448(0, &qword_2A1A1E6F0, 0x29EDBAA68);
  *(inited + 40) = MEMORY[0x29ED625C0](*MEMORY[0x29EDBA440]);
  sub_29D63CEB8(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t type metadata accessor for EnvironmentAudioNotificationOnboardingDataProvider(uint64_t a1)
{
  result = qword_2A1A1DF38;
  if (!qword_2A1A1DF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D606C48(uint64_t a1)
{
  result = sub_29D65F314();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D606CB4()
{
  result = qword_2A17AC3D8;
  if (!qword_2A17AC3D8)
  {
    sub_29D65E554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC3D8);
  }

  return result;
}

uint64_t sub_29D606D0C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_29D606D20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D606D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D606DD4()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29D60700C(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29D661D90;
  v1 = sub_29D65EC54();
  sub_29D6161F0(v1, v7);
  *(v0 + 56) = &type metadata for HearingTestAboutItem;
  *(v0 + 64) = sub_29D607148();
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  v3 = v7[1];
  *(v2 + 16) = v7[0];
  *(v2 + 32) = v3;
  *(v2 + 48) = v7[2];
  *(v2 + 64) = v8;
  v4 = sub_29D65F074();
  v5 = MEMORY[0x29EDC2B10];
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;

  return v0;
}

uint64_t sub_29D606F00(uint64_t a1)
{
  v2 = sub_29D65EB64();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_29D65EB44();
  v8 = sub_29D65EB54();
  (*(v3 + 8))(v6, v2);
  return v8;
}

void sub_29D60700C(uint64_t a1)
{
  if (!qword_2A17AC778)
  {
    sub_29D607064(255);
    v1 = sub_29D660684();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17AC778);
    }
  }
}

void sub_29D607064(uint64_t a1)
{
  if (!qword_2A17AC780)
  {
    sub_29D5FC094(255, &qword_2A17AC788, MEMORY[0x29EDC1910], 1);
    sub_29D6070EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17AC780);
    }
  }
}

unint64_t sub_29D6070EC()
{
  result = qword_2A17AC790;
  if (!qword_2A17AC790)
  {
    sub_29D5FC094(255, &qword_2A17AC798, MEMORY[0x29EDC1DA8], 0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17AC790);
  }

  return result;
}

unint64_t sub_29D607148()
{
  result = qword_2A17AC7A0;
  if (!qword_2A17AC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC7A0);
  }

  return result;
}

id sub_29D607240(uint64_t a1)
{
  swift_getObjectType();
  sub_29D60C140(0, &unk_2A17AC838, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = (v1 + qword_2A17AC7B0);
  *v7 = 0xD000000000000014;
  v7[1] = 0x800000029D667510;
  v8 = (v1 + qword_2A17AC7B8);
  *v8 = 0xD000000000000015;
  v8[1] = 0x800000029D667530;
  v9 = (v1 + qword_2A17AC7C0);
  *v9 = 0xD000000000000013;
  v9[1] = 0x800000029D667550;
  v10 = (v1 + qword_2A17AC7C8);
  *v10 = 0xD000000000000014;
  v10[1] = 0x800000029D667570;
  v11 = (v1 + qword_2A17AC7D0);
  *v11 = 0xD000000000000016;
  v11[1] = 0x800000029D667590;
  *(v1 + qword_2A17AC7D8) = MEMORY[0x29EDCA190];
  *(v1 + qword_2A17AC7E0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_2A17AC7E8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = qword_2A17AC7F0;
  type metadata accessor for HeadphoneNotificationsAvailability(0);
  swift_allocObject();
  *(v1 + v12) = sub_29D6232A0();
  *(v1 + qword_2A17AC7F8) = 0;
  sub_29D656FA8();
  v13 = sub_29D65E314();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6, a1, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  v15 = sub_29D65E304();
  sub_29D60A320();

  (*(v14 + 8))(a1, v13);
  return v15;
}

uint64_t sub_29D607504@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() isHeadphoneExposureNotificationsEnabled];
  v3 = MEMORY[0x29EDC1760];
  if ((v2 & 1) == 0 && (sub_29D60B614(v2) & 1) == 0)
  {
    v3 = MEMORY[0x29EDC1768];
  }

  v4 = *v3;
  v5 = sub_29D65E0E4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_29D6075A8@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29D65E0E4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D65E154();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D656FC4();
  v13 = sub_29D65E114();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v24 = a1;
    v14 = objc_opt_self();
    v15 = [v14 isHeadphoneExposureNotificationsEnabled];
    v16 = [v14 isHeadphoneExposureNotificationsSupportedOnActiveWatch];
    v17 = sub_29D60B614(v16);
    v18 = [v14 isHeadphoneExposureNotificationsEnabled];
    if (v18 & 1) != 0 || (sub_29D60B614(v18))
    {
      v19 = MEMORY[0x29EDC1760];
    }

    else
    {
      v19 = MEMORY[0x29EDC1768];
    }

    a1 = v24;
    (*(v4 + 104))(v7, *v19, v3);
    sub_29D65662C(v7, v15, v16, v17 & 1, ObjectType, &off_2A2432388);
    (*(v4 + 8))(v7, v3);
    MEMORY[0x29ED60500](1, v15, v16, v17 & 1);
    sub_29D65EE34();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_29D65EE44();
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

unint64_t sub_29D607874()
{
  v9 = MEMORY[0x29EDCA190];
  sub_29D6079B0();
  sub_29D65A648(v1);
  if ([objc_opt_self() isHeadphoneExposureNotificationsSupportedOnActiveWatch])
  {
    *(v0 + qword_2A17AC7D8) = sub_29D608808();

    v2 = _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D65A648(v2);
  }

  v3 = v9;
  if (v9 >> 62)
  {
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    v8 = sub_29D6605B4();
    swift_bridgeObjectRelease_n();
    return v8;
  }

  else
  {
    v4 = v9 & 0xFFFFFFFFFFFFFF8;
    _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
    sub_29D6606A4();
    if (swift_dynamicCastMetatype() || (v6 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_5:
    }

    else
    {
      v7 = (v4 + 32);
      while (*v7)
      {
        ++v7;
        if (!--v6)
        {
          goto LABEL_5;
        }
      }

      return v4 | 1;
    }

    return v3;
  }
}

void sub_29D6079B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29D65F314();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x29EDCA190];
  v8 = [objc_opt_self() currentDeviceDisplayName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_29D65FF64();

    v11 = objc_opt_self();
    v12 = [v11 areHeadphoneExposureNotificationsMandatory];
    LODWORD(v84) = [v11 isHeadphoneExposureNotificationsEnabled];
    v13 = [v11 isHeadphoneExposureMeasureLevelsEnabled];
    v85 = sub_29D657BD4(v12, v13 ^ 1, ObjectType, &off_2A2432388);
    v14 = sub_29D657D28(v13 ^ 1);
    v86 = v15;
    v16 = &selRef_openDevicePrivacySettings;
    if (v13)
    {
      v16 = &selRef_openLearnMoreLink;
    }

    v17 = *v16;
    if (v12)
    {
      v18 = objc_opt_self();
      v19 = sub_29D65FF24();
      v82 = v18;
      v20 = [v18 groupSpecifierWithID_];

      if (v20)
      {
        v83 = v17;
        v21 = sub_29D65FF24();
        [v20 setName_];

        sub_29D5DF448(0, &unk_2A17AC910, 0x29EDC6268);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v23 = NSStringFromClass(ObjCClassFromMetadata);
        if (!v23)
        {
          sub_29D65FF64();
          v23 = sub_29D65FF24();
        }

        [v20 setProperty:v23 forKey:*MEMORY[0x29EDC62D0]];

        v24 = sub_29D65FF24();
        [v20 setProperty:v24 forKey:*MEMORY[0x29EDC62F0]];

        v25 = sub_29D65FF24();
        [v20 setName_];

        v26 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
        v27 = sub_29D65FF24();
        v28 = [v26 initWithString_];

        v29 = sub_29D65FF24();
        v30 = [v28 localizedStandardRangeOfString_];
        v32 = v31;

        sub_29D65DCE4();
        v89.location = v30;
        v89.length = v32;
        v33 = NSStringFromRange(v89);
        if (!v33)
        {
          sub_29D65FF64();
          v33 = sub_29D65FF24();
        }

        [v20 setProperty:v33 forKey:*MEMORY[0x29EDC62E0]];

        v34 = [objc_opt_self() valueWithNonretainedObject_];
        [v20 setProperty:v34 forKey:*MEMORY[0x29EDC62E8]];
        v35 = sub_29D65FF24();

        [v20 setProperty:v35 forKey:*MEMORY[0x29EDC62D8]];

        v36 = v20;
        MEMORY[0x29ED623B0]();
        if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_29D660064();
        }

        sub_29D660074();
      }

      else
      {
      }

      if (qword_2A1A1EAA0 != -1)
      {
        swift_once();
      }

      sub_29D65DA74();
      v54 = &selRef_headphoneNotificationsIsHeadphoneNotificationsMandatoryDisabledValueText;
      if (v84)
      {
        v54 = &selRef_headphoneNotificationsIsHeadphoneNotificationsMandatoryEnabledValueText;
      }

      v55 = *v54;
      v56 = sub_29D65FF24();

      v57 = [v82 preferenceSpecifierNamed:v56 target:v1 set:0 get:v55 detail:0 cell:4 edit:0];

      if (!v57)
      {
        return;
      }

LABEL_45:
      v77 = sub_29D65FF24();
      [v57 setIdentifier_];

      v78 = sub_29D660094();
      [v57 setProperty:v78 forKey:*MEMORY[0x29EDC62C8]];

      v79 = sub_29D660094();
      [v57 setProperty:v79 forKey:*MEMORY[0x29EDC62A0]];

      v80 = v57;
      MEMORY[0x29ED623B0]();
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();

      return;
    }

    v81[2] = v10;
    v44 = objc_opt_self();
    v45 = sub_29D65FF24();
    v46 = [v44 modelSpecificLocalizedStringKeyForKey_];

    if (!v46)
    {
      __break(1u);
      return;
    }

    v81[1] = v14;
    v83 = v17;
    sub_29D65FF64();

    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    v82 = qword_2A1A20C18;
    sub_29D65DA74();

    v47 = objc_opt_self();
    v48 = sub_29D65FF24();
    v84 = v47;
    v49 = [v47 groupSpecifierWithID_];

    if (v49)
    {
      v50 = sub_29D65FF24();
      [v49 setName_];

      v51 = sub_29D65FF24();

      [v49 setProperty:v51 forKey:*MEMORY[0x29EDC62F8]];

      v52 = v49;
      MEMORY[0x29ED623B0]();
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();

      v53 = &off_29F353000;
    }

    else
    {

      v53 = &off_29F353000;
    }

    v58 = sub_29D6092A8(*(v1 + qword_2A17AC7D0), *(v1 + qword_2A17AC7D0 + 8), sel_isHeadphoneMeasureAudioLevelEnabled, sel_setHeadphoneMeasureAudioLevelsEnabledWithValue_);
    if (v58)
    {
      v59 = v58;
      MEMORY[0x29ED623B0]();
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();
    }

    v60 = sub_29D65FF24();
    v61 = [v84 groupSpecifierWithID_];

    if (v61)
    {
      v86 = "HAEN_FEATURE_TITLE";
      sub_29D5DF448(0, &unk_2A17AC910, 0x29EDC6268);
      v62 = swift_getObjCClassFromMetadata();
      v63 = NSStringFromClass(v62);
      if (!v63)
      {
        sub_29D65FF64();
        v63 = sub_29D65FF24();
      }

      [v61 setProperty:v63 forKey:*MEMORY[0x29EDC62D0]];

      v64 = sub_29D65FF24();
      [v61 setProperty:v64 forKey:*MEMORY[0x29EDC62F0]];

      [v61 v53[390]];
      v65 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
      v66 = sub_29D65FF24();
      v67 = [v65 initWithString_];

      v68 = sub_29D65FF24();
      v69 = [v67 localizedStandardRangeOfString_];
      v71 = v70;

      sub_29D65DCE4();
      v90.location = v69;
      v90.length = v71;
      v72 = NSStringFromRange(v90);
      if (!v72)
      {
        sub_29D65FF64();
        v72 = sub_29D65FF24();
      }

      [v61 setProperty:v72 forKey:*MEMORY[0x29EDC62E0]];

      v73 = [objc_opt_self() valueWithNonretainedObject_];
      [v61 setProperty:v73 forKey:*MEMORY[0x29EDC62E8]];
      v74 = sub_29D65FF24();

      [v61 setProperty:v74 forKey:*MEMORY[0x29EDC62D8]];

      v75 = v61;
      MEMORY[0x29ED623B0]();
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();
    }

    else
    {
    }

    sub_29D65DA74();
    v76 = sub_29D65FF24();

    v57 = [v84 preferenceSpecifierNamed:v76 target:v1 set:sel_setHeadphoneNotificationsDeviceEnabledWithValue_ get:sel_headphoneNotificationsDeviceEnabled detail:0 cell:6 edit:0];

    if (v57)
    {
      goto LABEL_45;
    }
  }

  else
  {
    sub_29D65F2E4();
    v37 = sub_29D65F2F4();
    v38 = sub_29D6601F4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v87 = v40;
      *v39 = 136446210;
      v41 = sub_29D6607A4();
      v43 = sub_29D64A1D0(v41, v42, &v87);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_29D5D7000, v37, v38, "[%{public}s] Could not get device display name", v39, 0xCu);
      sub_29D5DF1C4(v40);
      MEMORY[0x29ED63350](v40, -1, -1);
      MEMORY[0x29ED63350](v39, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_29D608808()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29D65F314();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x29EDCA190];
  sub_29D657DE4();
  if (v8)
  {
    v9 = sub_29D608FFC(&selRef_areHeadphoneExposureNotificationsMandatoryOnActiveWatchWithError_, "[%{public}s] Could not access areHeadphoneExposureNotificationsMandatoryOnActiveWatch. Error: %{public}s");
    v10 = v9;
    v53 = sub_29D60B614(v9);
    v11 = sub_29D608FFC(&selRef_isHeadphoneExposureMeasureLevelsEnabledOnActiveWatchWithError_, "[%{public}s] Could not access isHeadphoneExposureMeasureLevelsEnabledOnActiveWatch. Error: %{public}s");
    v58 = v10;
    v54 = sub_29D657F28(v10 & 1, (v11 & 1) == 0, ObjectType, &off_2A2432388);
    v55 = sub_29D657D28((v11 & 1) == 0);
    v12 = &selRef_openWatchPrivacySettings;
    v56 = v11;
    if (v11)
    {
      v12 = &selRef_openLearnMoreLink;
    }

    v13 = *v12;
    v14 = objc_opt_self();
    v15 = sub_29D65FF24();
    v57 = v14;
    v16 = [v14 groupSpecifierWithID_];

    if (v16)
    {
      v52[1] = v13;
      v17 = sub_29D65FF24();
      [v16 setName_];

      sub_29D5DF448(0, &unk_2A17AC910, 0x29EDC6268);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = NSStringFromClass(ObjCClassFromMetadata);
      if (!v19)
      {
        sub_29D65FF64();
        v19 = sub_29D65FF24();
      }

      [v16 setProperty:v19 forKey:*MEMORY[0x29EDC62D0]];

      v20 = sub_29D65FF24();
      [v16 setProperty:v20 forKey:*MEMORY[0x29EDC62F0]];

      v21 = sub_29D65FF24();
      [v16 setName_];

      v22 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
      v23 = sub_29D65FF24();
      v24 = [v22 initWithString_];

      v25 = sub_29D65FF24();
      v26 = [v24 localizedStandardRangeOfString_];
      v28 = v27;

      sub_29D65DCE4();
      v61.location = v26;
      v61.length = v28;
      v29 = NSStringFromRange(v61);
      if (!v29)
      {
        sub_29D65FF64();
        v29 = sub_29D65FF24();
      }

      [v16 setProperty:v29 forKey:*MEMORY[0x29EDC62E0]];

      v30 = [objc_opt_self() valueWithNonretainedObject_];
      [v16 setProperty:v30 forKey:*MEMORY[0x29EDC62E8]];
      v31 = sub_29D65FF24();

      [v16 setProperty:v31 forKey:*MEMORY[0x29EDC62D8]];

      v32 = v16;
      MEMORY[0x29ED623B0]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();

      v33 = v60;
    }

    else
    {

      v33 = MEMORY[0x29EDCA190];
    }

    v41 = sel_headphoneNotificationsWatchEnabled;
    v42 = sel_setHeadphoneNotificationsWatchEnabledWithValue_;
    if (qword_2A1A1EAA0 != -1)
    {
      swift_once();
    }

    sub_29D65DA74();
    if (v58)
    {
      v42 = 0;
      v43 = &selRef_headphoneNotificationsIsHeadphoneNotificationsMandatoryDisabledValueText;
      if (v53)
      {
        v43 = &selRef_headphoneNotificationsIsHeadphoneNotificationsMandatoryEnabledValueText;
      }

      v41 = *v43;
      v44 = 4;
    }

    else
    {
      v44 = 6;
    }

    v45 = sub_29D65FF24();

    v46 = [v57 preferenceSpecifierNamed:v45 target:v1 set:v42 get:v41 detail:0 cell:v44 edit:0];

    if (v46)
    {
      v47 = sub_29D65FF24();
      [v46 setIdentifier_];

      v48 = sub_29D660094();
      [v46 setProperty:v48 forKey:*MEMORY[0x29EDC62C8]];

      v49 = sub_29D660094();
      [v46 setProperty:v49 forKey:*MEMORY[0x29EDC62A0]];

      v50 = v46;
      MEMORY[0x29ED623B0]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D660064();
      }

      sub_29D660074();

      return v60;
    }
  }

  else
  {
    sub_29D65F2E4();
    v34 = sub_29D65F2F4();
    v35 = sub_29D6601F4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v59 = v37;
      *v36 = 136446210;
      v38 = sub_29D6607A4();
      v40 = sub_29D64A1D0(v38, v39, &v59);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_29D5D7000, v34, v35, "[%{public}s] Could not get watch display name", v36, 0xCu);
      sub_29D5DF1C4(v37);
      MEMORY[0x29ED63350](v37, -1, -1);
      MEMORY[0x29ED63350](v36, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return MEMORY[0x29EDCA190];
  }

  return v33;
}

id sub_29D608FFC(SEL *a1, const char *a2, ...)
{
  v25[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v4 = sub_29D65F314();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  if ((sub_29D65E194() & 1) == 0)
  {
    return 0;
  }

  v9 = objc_opt_self();
  result = [v9 isHeadphoneExposureNotificationsSupportedOnActiveWatch];
  if (result)
  {
    v25[0] = 0;
    result = [v9 *a1];
    v11 = v25[0];
    if (v25[0])
    {
      swift_willThrow();
      v12 = v11;
      sub_29D65F2E4();
      v13 = v12;
      v14 = sub_29D65F2F4();
      v15 = sub_29D660204();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25[0] = v24;
        *v16 = 136446466;
        v17 = sub_29D6607A4();
        v19 = sub_29D64A1D0(v17, v18, v25);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2082;
        swift_getErrorValue();
        v20 = sub_29D6606D4();
        v22 = sub_29D64A1D0(v20, v21, v25);

        *(v16 + 14) = v22;
        _os_log_impl(&dword_29D5D7000, v14, v15, a2, v16, 0x16u);
        v23 = v24;
        swift_arrayDestroy();
        MEMORY[0x29ED63350](v23, -1, -1);
        MEMORY[0x29ED63350](v16, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
      return 0;
    }
  }

  return result;
}

id sub_29D6092A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v7 = objc_opt_self();
  v8 = sub_29D65FF24();

  v9 = [v7 preferenceSpecifierNamed:v8 target:v4 set:a4 get:a3 detail:0 cell:6 edit:0];

  if (v9)
  {
    v10 = sub_29D65FF24();
    [v9 setIdentifier_];

    v11 = sub_29D660094();
    [v9 setProperty:v11 forKey:*MEMORY[0x29EDC62C8]];

    v12 = sub_29D660094();
    [v9 setProperty:v12 forKey:*MEMORY[0x29EDC62A0]];
  }

  return v9;
}

id sub_29D609474()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v0 = sub_29D65FF24();

  return v0;
}

id sub_29D609544()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v0 = sub_29D65FF24();

  return v0;
}

void sub_29D609614()
{
  sub_29D5ED310();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29D661DA0;
  *(v1 + 32) = sub_29D60B728();
  *(v1 + 40) = sub_29D60B244();
  v2 = objc_allocWithZone(MEMORY[0x29EDC46F8]);
  sub_29D60BF74();
  v3 = sub_29D660024();

  v4 = [v2 initWithItems_];

  v5 = qword_2A1A1EAA0;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v7 = sub_29D65FF24();

  [v6 setTitle_];

  v8 = *&v0[qword_2A17AC818];
  *&v0[qword_2A17AC818] = v6;
  v9 = v6;

  v10 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  [v0 presentViewController:v10 animated:1 completion:0];
}

void sub_29D6097EC(char *a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29D609614();
  }

  else
  {
  }
}

uint64_t sub_29D6098F0(void *a1)
{
  v24[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v2 = sub_29D65F314();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v7 = objc_opt_self();
  if (([v7 isHeadphoneExposureMeasureLevelsEnabled] & 1) == 0 && objc_msgSend(a1, sel_BOOLValue))
  {
    sub_29D609D18(a1);
  }

  v8 = [a1 BOOLValue];
  v24[0] = 0;
  if ([v7 _setHeadphoneExposureNotificationsEnabled_error_])
  {

    return MEMORY[0x2A1C710E0]();
  }

  else
  {
    v23 = v24[0];
    v9 = v24[0];
    v10 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v11 = v10;
    v12 = sub_29D65F2F4();
    v13 = sub_29D660204();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136446466;
      v16 = sub_29D6607A4();
      v18 = sub_29D64A1D0(v16, v17, v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      swift_getErrorValue();
      v19 = sub_29D6606D4();
      v21 = sub_29D64A1D0(v19, v20, v24);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_29D5D7000, v12, v13, "[%{public}s] Could not set device headphone notifications. %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v15, -1, -1);
      MEMORY[0x29ED63350](v14, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }
}

void sub_29D609C28(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D6098F0(v4);
}

id sub_29D609CB4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];

  return v3;
}

uint64_t sub_29D609D18(void *a1)
{

  return sub_29D609EA4(a1, &selRef__setHeadphoneExposureMeasureLevelsEnabled_error_);
}

void sub_29D609D78(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D609D18(v4);
}

id sub_29D609DE0(void *a1)
{
  v1 = a1;
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];

  return v2;
}

uint64_t sub_29D609E44(void *a1)
{

  return sub_29D609EA4(a1, &selRef__setHeadphoneExposureNotificationsEnabledOnActiveWatch_error_);
}

uint64_t sub_29D609EA4(void *a1, SEL *a2)
{
  v26[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v4 = sub_29D65F314();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v9 = objc_opt_self();
  v10 = [a1 BOOLValue];
  v26[0] = 0;
  if ([v9 *a2])
  {

    return MEMORY[0x2A1C710E0]();
  }

  else
  {
    v25 = v26[0];
    v11 = v26[0];
    v12 = sub_29D65DAA4();

    swift_willThrow();
    sub_29D65F2E4();
    v13 = v12;
    v14 = sub_29D65F2F4();
    v15 = sub_29D660204();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136446466;
      v18 = sub_29D6607A4();
      v20 = sub_29D64A1D0(v18, v19, v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      swift_getErrorValue();
      v21 = sub_29D6606D4();
      v23 = sub_29D64A1D0(v21, v22, v26);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_29D5D7000, v14, v15, "[%{public}s] Could not set watch headphone notifications. %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED63350](v17, -1, -1);
      MEMORY[0x29ED63350](v16, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_29D60A1B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D609E44(v4);
}

uint64_t sub_29D60A234(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _UNKNOWN **))
{
  ObjectType = swift_getObjectType();
  v5 = sub_29D65DAF4();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (a3)(ObjectType, &off_2A2432388, v8);
  sub_29D65DAB4();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_29D60A320()
{
  sub_29D605988(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D5FEBBC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605A20(0);
  v28 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605AB8(0);
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D60C140(0, &qword_2A1A1E750, sub_29D5EA87C, MEMORY[0x29EDB8B00]);

  sub_29D65F8C4();
  swift_endAccess();

  sub_29D60C20C(&qword_2A1A1E778, sub_29D5FEBBC, MEMORY[0x29EDB8AF8]);
  sub_29D65F994();
  (*(v6 + 8))(v9, v5);
  sub_29D5DF448(0, &qword_2A17AC0E8, 0x29EDCA548);
  v20 = sub_29D6602B4();
  v31 = v20;
  v21 = sub_29D6602A4();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  sub_29D60C20C(&unk_2A17AC900, sub_29D605A20, MEMORY[0x29EDB8918]);
  sub_29D60C0D8();
  v22 = v28;
  sub_29D65F984();
  sub_29D60C1A4(v3, sub_29D605988);

  (*(v11 + 8))(v14, v22);
  swift_allocObject();
  v23 = v27[1];
  swift_unknownObjectWeakInit();
  sub_29D60C20C(&qword_2A17AC770, sub_29D605AB8, MEMORY[0x29EDB89E8]);
  v24 = v29;
  v25 = sub_29D65F9B4();

  (*(v30 + 8))(v19, v24);
  *(v23 + qword_2A17AC7F8) = v25;
}

void sub_29D60A7C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      swift_getObjectType();
      sub_29D65EE14();
      sub_29D65EE94();
    }
  }
}

uint64_t sub_29D60A89C()
{

  sub_29D5DBB60(v0 + qword_2A17AC7E0);
  sub_29D5DBB60(v0 + qword_2A17AC7E8);
}

uint64_t sub_29D60A988(uint64_t a1)
{

  sub_29D5DBB60(a1 + qword_2A17AC7E0);
  sub_29D5DBB60(a1 + qword_2A17AC7E8);
}

uint64_t sub_29D60AB38(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_2A17AC7E0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D65EE94();
}

void (*sub_29D60ABA4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17AC7E0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D60AC44;
}

void sub_29D60AC44(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    sub_29D65EE94();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_29D65EE94();
  }

  free(v3);
}

uint64_t (*sub_29D60ACD4(uint64_t *a1))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29D65EE74();
  return sub_29D60AD5C;
}

void sub_29D60AD5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_29D60ADA8()
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_29D607874();

  return v0;
}

char *sub_29D60AE44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = sub_29D65E314();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v5, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_2A17AC818) = 0;
  (*(v6 + 16))(v10, a1, v5, v8);
  v11 = objc_allocWithZone(type metadata accessor for HeadphoneNotificationsSpecifierDataSource(0));
  v12 = sub_29D607240(v10);
  *(v3 + qword_2A17AC810) = v12;
  sub_29D60C20C(&qword_2A17AC830, type metadata accessor for HeadphoneNotificationsSpecifierDataSource, &unk_29D6631F0);
  v13 = v12;
  v14 = sub_29D65ED84();
  *(*&v14[qword_2A17AC810] + qword_2A17AC7E8 + 8) = &off_2A2432370;
  swift_unknownObjectWeakAssign();
  v15 = v14;
  sub_29D656F08();
  v16 = sub_29D65FF24();

  [v15 setTitle_];

  (*(v6 + 8))(a1, v5);
  return v15;
}

uint64_t sub_29D60B05C(uint64_t a1)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + qword_2A17AC818) = 0;
  result = sub_29D660594();
  __break(1u);
  return result;
}

void sub_29D60B158()
{
  v1 = *(v0 + qword_2A17AC818);
}

id sub_29D60B1B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D60B1F0(uint64_t a1)
{
  v2 = *(a1 + qword_2A17AC818);
}

id sub_29D60B244()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  v0 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v1 = sub_29D65FF24();

  v2 = [v0 initWithString_];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(MEMORY[0x29EDC46E8]);
  aBlock[4] = sub_29D60BFD8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D60B5D0;
  aBlock[3] = &unk_2A24323B8;
  v5 = _Block_copy(aBlock);

  v6 = [v4 initWithDescription:v2 didTapLinkedText:v5];

  _Block_release(v5);

  return v6;
}

void sub_29D60B428(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_29D60B47C();
  }
}

uint64_t sub_29D60B47C()
{
  v1 = v0;
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_29D65DA74();

  sub_29D5F3928(2u);
  v4 = objc_allocWithZone(sub_29D65E004());
  v5 = sub_29D65DFF4();
  v6 = *(v1 + qword_2A17AC818);
  if (v6)
  {
    v10 = v5;
    v7 = [v6 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 pushViewController:v10 animated:1];
    }
  }

  return MEMORY[0x2A1C71048]();
}

uint64_t sub_29D60B5D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_29D60B614(uint64_t a1)
{
  v7[1] = *MEMORY[0x29EDCA608];
  if ((sub_29D65E194() & 1) == 0)
  {
    return 0;
  }

  v1 = objc_opt_self();
  result = [v1 isHeadphoneExposureNotificationsSupportedOnActiveWatch];
  if (result)
  {
    v7[0] = 0;
    result = [v1 isHeadphoneExposureNotificationsEnabledOnActiveWatchWithError_];
    v3 = v7[0];
    if (v7[0])
    {
      swift_willThrow();
      type metadata accessor for HeadphoneNotificationsAvailability(0);
      v4 = qword_2A17AC050;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_29D65F314();
      sub_29D5DE6EC(v6, qword_2A17AD6F0);
      sub_29D622DF0(v5);

      return 0;
    }
  }

  return result;
}

id sub_29D60B728()
{
  sub_29D60BFF8(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v4 = sub_29D65DA74();
  v6 = v5;
  v7 = sub_29D65DA74();
  v9 = v8;
  sub_29D65DA74();
  sub_29D60C140(0, &qword_2A1A1E668, sub_29D5E618C, MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_29D661D20;
  v11 = MEMORY[0x29EDC99B0];
  *(v10 + 56) = MEMORY[0x29EDC99B0];
  v12 = sub_29D5E3BCC();
  *(v10 + 32) = v4;
  *(v10 + 40) = v6;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = v7;
  v75 = v7;
  *(v10 + 80) = v9;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  v76 = v9;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  sub_29D65FF34();

  v13 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v14 = sub_29D65FF24();

  v15 = [v13 initWithString_];

  v16 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v17 = v15;
  v18 = [v16 initWithAttributedString_];
  v19 = [v18 string];
  v20 = sub_29D65FF64();
  v22 = v21;

  v79 = v20;
  v80 = v22;
  v77 = v4;
  v78 = v6;
  v23 = sub_29D65DC24();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v73 = v24 + 56;
  v74 = v25;
  v25(v3, 1, 1, v23);
  sub_29D60C02C();
  v26 = sub_29D660454();
  v28 = v27;
  LOBYTE(v4) = v29;
  sub_29D60C1A4(v3, sub_29D60BFF8);

  v30 = v18;
  if ((v4 & 1) == 0)
  {
    v31 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v32 = [v31 fontDescriptorWithSymbolicTraits_];

    v30 = v18;
    if (v32)
    {
      v79 = v26;
      v80 = v28;
      v33 = [v18 string];

      v34 = sub_29D65FF64();
      v36 = v35;

      v77 = v34;
      v78 = v36;
      sub_29D60C080();
      sub_29D60C20C(&unk_2A17AC8D0, sub_29D60C080, MEMORY[0x29EDC9C40]);
      v37 = sub_29D660424();
      v39 = v38;
      v40 = *MEMORY[0x29EDC7638];
      v30 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
      [v18 addAttribute:v40 value:v30 range:{v37, v39}];
    }
  }

  v41 = objc_allocWithZone(MEMORY[0x29EDBA038]);
  v42 = v18;
  v43 = [v41 initWithAttributedString_];
  v44 = [v43 string];
  v45 = sub_29D65FF64();
  v47 = v46;

  v79 = v45;
  v80 = v47;
  v77 = v75;
  v78 = v76;
  v74(v3, 1, 1, v23);
  v48 = sub_29D660454();
  v50 = v49;
  v52 = v51;
  sub_29D60C1A4(v3, sub_29D60BFF8);

  if ((v52 & 1) == 0)
  {
    v53 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v54 = [v53 fontDescriptorWithSymbolicTraits_];

    if (v54)
    {
      v79 = v48;
      v80 = v50;
      v55 = [v43 &off_29F353178];
      v56 = sub_29D65FF64();
      v58 = v57;

      v77 = v56;
      v78 = v58;
      sub_29D60C080();
      sub_29D60C20C(&unk_2A17AC8D0, sub_29D60C080, MEMORY[0x29EDC9C40]);
      v59 = sub_29D660424();
      v61 = v60;
      v62 = *MEMORY[0x29EDC7638];
      v63 = [objc_opt_self() fontWithDescriptor:v54 size:0.0];
      [v43 addAttribute:v62 value:v63 range:{v59, v61}];
    }
  }

  v64 = objc_allocWithZone(MEMORY[0x29EDC7688]);
  v65 = v43;
  v66 = [v64 init];
  LODWORD(v67) = 1008981770;
  [v66 setHyphenationFactor_];
  v68 = [v65 length];
  v69 = *MEMORY[0x29EDC7650];
  v70 = v66;
  [v65 addAttribute:v69 value:v70 range:{0, v68}];

  v71 = [objc_allocWithZone(MEMORY[0x29EDC46F0]) initWithDescription_];
  return v71;
}

unint64_t sub_29D60BF74()
{
  result = qword_2A17AC848;
  if (!qword_2A17AC848)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17AC848);
  }

  return result;
}

uint64_t sub_29D60BFE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D60C02C()
{
  result = qword_2A17AC8C0;
  if (!qword_2A17AC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC8C0);
  }

  return result;
}

void sub_29D60C080()
{
  if (!qword_2A17AC8C8)
  {
    v0 = sub_29D660144();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17AC8C8);
    }
  }
}

unint64_t sub_29D60C0D8()
{
  result = qword_2A17AC768;
  if (!qword_2A17AC768)
  {
    sub_29D5DF448(255, &qword_2A17AC0E8, 0x29EDCA548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC768);
  }

  return result;
}

void sub_29D60C140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D60C1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D60C20C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D60C254@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_29D60E234(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v36 - v6;
  if (a1)
  {
    type metadata accessor for HearingAppPluginDelegate(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    v11 = sub_29D65DA74();
    v13 = v12;

    *a2 = v11;
    a2[1] = v13;
    v14 = [v9 bundleForClass_];
    v15 = sub_29D65DA74();
    v17 = v16;

    a2[2] = v15;
    a2[3] = v17;
    a2[4] = 0;
    a2[5] = 0;
    sub_29D65DAE4();
    v18 = sub_29D65DAF4();
    v19 = *(v18 - 8);
    result = (*(v19 + 48))(v7, 1, v18);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_29D60E298(0, v21);
      v23 = *(v22 + 80);
      (*(v19 + 32))(a2 + v23, v7, v18);
      v24 = *MEMORY[0x29EDC15C0];
      v25 = sub_29D65DFD4();
      (*(*(v25 - 8) + 104))(a2 + v23, v24, v25);
      v26 = *MEMORY[0x29EDC15E8];
      v27 = sub_29D65DFE4();
      return (*(*(v27 - 8) + 104))(a2, v26, v27);
    }
  }

  else
  {
    type metadata accessor for HearingAppPluginDelegate(0);
    v28 = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    v30 = sub_29D65DA74();
    v32 = v31;

    *a2 = v30;
    a2[1] = v32;
    *(a2 + 16) = 0;
    v33 = *MEMORY[0x29EDC1630];
    v34 = sub_29D65DFE4();
    v35 = *(*(v34 - 8) + 104);

    return v35(a2, v33, v34);
  }

  return result;
}

uint64_t sub_29D60C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_29D65DA74();

  return v6;
}

uint64_t sub_29D60C800()
{
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_29D65DA74();

  return v2;
}

uint64_t sub_29D60C8CC()
{
  sub_29D60E3EC(0, &qword_2A1A1DD90, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D662030;
  *(inited + 32) = [objc_opt_self() audiogramSampleType];
  sub_29D63CEB8(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D60C99C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_29D5E32A8(a1, v1);

  return sub_29D60C9EC(v3, v1, v2);
}

uint64_t sub_29D60C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v179 = a2;
  v180 = v5;
  v6 = MEMORY[0x2A1C7C4A8](a1, a2);
  v9 = *(v8 + 16);
  v178 = v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v6);
  v170 = (*(a3 + 8))(a2, a3);
  v192 = MEMORY[0x29EDCA190];
  sub_29D60E234(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v176 = v10;
  v11 = sub_29D65DFE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 72);
  v15 = (v13 + 32) & ~v13;
  v174 = v15;
  v175 = v13;
  v16 = swift_allocObject();
  v173 = v16;
  *(v16 + 16) = xmmword_29D663250;
  v17 = v16 + v15;
  *v17 = sub_29D60DBAC();
  *(v17 + 8) = 0;
  v169 = *MEMORY[0x29EDC1608];
  v191 = *(v12 + 104);
  v18 = v17;
  v189 = v11;
  v191(v17);
  v19 = (v17 + v14);
  v20 = v14;
  v188 = v14;
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v187 = objc_opt_self();
  v182 = ObjCClassFromMetadata;
  v22 = [v187 bundleForClass_];
  v186 = "SECTION2_CHART5_VALUE";
  v23 = sub_29D65DA74();
  v25 = v24;

  *v19 = v23;
  v19[1] = v25;
  v26 = v11;
  v27 = v191;
  (v191)(v19, *MEMORY[0x29EDC1610], v26);
  v190 = v12 + 104;
  v28 = v18 + 2 * v20;
  v172 = 2 * v20;
  v29 = [v187 bundleForClass_];
  v183 = 0xD000000000000013;
  v30 = sub_29D65DA74();
  v32 = v31;

  *v28 = v30;
  *(v28 + 8) = v32;
  *(v28 + 16) = 0;
  v181 = *MEMORY[0x29EDC1630];
  v27(v28);
  v33 = v188;
  v177 = 2 * v20 + v188;
  v34 = (v18 + v177);
  v185 = v18;
  v35 = v187;
  v36 = v182;
  v37 = [v187 bundleForClass_];
  v168[1] = 0xD00000000000001ALL;
  v38 = sub_29D65DA74();
  v40 = v39;

  *v34 = v38;
  v34[1] = v40;
  v34[2] = 0;
  v184 = *MEMORY[0x29EDC15D0];
  v191(v34);
  v41 = v18 + 4 * v33;
  v171 = 4 * v33;
  v42 = [v35 bundleForClass_];
  v43 = sub_29D65DA74();
  v45 = v44;

  *v41 = v43;
  *(v41 + 8) = v45;
  *(v41 + 16) = 0;
  v46 = v181;
  v47 = v191;
  (v191)(v41, v181, v189);
  v48 = v185 + 4 * v33 + v188;
  v49 = [v35 bundleForClass_];
  v50 = sub_29D65DA74();
  v52 = v51;

  *v48 = v50;
  *(v48 + 8) = v52;
  *(v48 + 16) = 0;
  v53 = v189;
  v47(v48, v46, v189);
  v54 = v188;
  v55 = v185;
  sub_29D60C254(v170 & 1, (v185 + 6 * v188));
  v56 = 8 * v54;
  v57 = v55 + 7 * v54;
  *v57 = sub_29D60DC9C();
  *(v57 + 8) = 1;
  v47(v57, v169, v53);
  v58 = v47;
  v59 = (v55 + v56);
  v60 = v187;
  v61 = v182;
  v62 = [v187 bundleForClass_];
  v63 = sub_29D65DA74();
  v65 = v64;

  *v59 = v63;
  v59[1] = v65;
  v59[2] = 0;
  v58(v59, v184, v53);
  v66 = v185;
  v67 = v185 + v56 + v188;
  v68 = [v60 bundleForClass_];
  v69 = sub_29D65DA74();
  v71 = v70;

  *v67 = v69;
  *(v67 + 8) = v71;
  *(v67 + 16) = 0;
  v72 = v181;
  (v191)(v67, v181, v189);
  v73 = v66 + 10 * v188;
  v74 = [v60 bundleForClass_];
  v75 = sub_29D65DA74();
  v77 = v76;

  *v73 = v75;
  *(v73 + 8) = v77;
  *(v73 + 16) = 0;
  v78 = v72;
  v79 = v189;
  v80 = v191;
  (v191)(v73, v78, v189);
  v81 = v188;
  v82 = (v185 + 11 * v188);
  v83 = [v60 bundleForClass_];
  v84 = sub_29D65DA74();
  v86 = v85;

  *v82 = v84;
  v82[1] = v86;
  v82[2] = 0;
  (v80)(v82, v184, v79);
  v87 = v81;
  v88 = v185;
  v89 = v185 + 12 * v87;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_29D60C660;
  *(v90 + 24) = 0;
  *v89 = sub_29D60E3E4;
  *(v89 + 8) = v90;
  *(v89 + 16) = 1;
  v91 = *MEMORY[0x29EDC15A8];
  (v80)(v88 + 12 * v87, v91, v79);
  v92 = v88 + 13 * v87;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_29D60C670;
  *(v93 + 24) = 0;
  *v92 = sub_29D60E43C;
  *(v92 + 8) = v93;
  *(v92 + 16) = 1;
  (v80)(v92, v91, v79);
  v94 = v88 + 14 * v87;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_29D60C688;
  *(v95 + 24) = 0;
  *v94 = sub_29D60E43C;
  *(v94 + 8) = v95;
  *(v94 + 16) = 1;
  (v80)(v94, v91, v79);
  v96 = v88 + 15 * v87;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_29D60C6A8;
  *(v97 + 24) = 0;
  *v96 = sub_29D60E43C;
  *(v96 + 8) = v97;
  *(v96 + 16) = 1;
  (v80)(v96, v91, v79);
  v98 = v88 + 16 * v87;
  v99 = swift_allocObject();
  *(v99 + 16) = sub_29D60C6C8;
  *(v99 + 24) = 0;
  *v98 = sub_29D60E43C;
  *(v98 + 8) = v99;
  *(v98 + 16) = 1;
  (v80)(v98, v91, v79);
  v100 = (v88 + 17 * v87);
  v101 = v187;
  v102 = [v187 bundleForClass_];
  v103 = sub_29D65DA74();
  v105 = v104;

  *v100 = v103;
  v100[1] = v105;
  v106 = v189;
  (v80)(v100, *MEMORY[0x29EDC1620], v189);
  v107 = v80;
  sub_29D65A3F0(v173);
  v108 = sub_29D60DD8C();
  sub_29D65A3F0(v108);
  v109 = v174;
  v110 = swift_allocObject();
  v185 = v110;
  *(v110 + 16) = xmmword_29D663260;
  v111 = (v110 + v109);
  v112 = [v101 bundleForClass_];
  v113 = sub_29D65DA74();
  v115 = v114;

  *v111 = v113;
  v111[1] = v115;
  v111[2] = 0;
  v116 = v106;
  (v107)(v111, v184, v106);
  v117 = v111 + v188;
  v176 = v111;
  v118 = v101;
  v119 = v182;
  v120 = [v118 bundleForClass_];
  v121 = sub_29D65DA74();
  v123 = v122;

  *v117 = v121;
  *(v117 + 1) = v123;
  v117[16] = 0;
  v124 = v191;
  (v191)(v117, v181, v116);
  v125 = (v111 + v172);
  v126 = [v187 bundleForClass_];
  v127 = sub_29D65DA74();
  v129 = v128;

  *v125 = v127;
  v125[1] = v129;
  v125[2] = 0;
  (v124)(v125, v184, v116);
  sub_29D60E3EC(0, &qword_2A1A1E678, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_29D663270;
  v131 = v187;
  v132 = [v187 bundleForClass_];
  v133 = sub_29D65DA74();
  v135 = v134;

  *(v130 + 32) = v133;
  *(v130 + 40) = v135;
  v136 = [v131 bundleForClass_];
  v137 = sub_29D65DA74();
  v139 = v138;

  *(v130 + 48) = v137;
  *(v130 + 56) = v139;
  v140 = [v131 bundleForClass_];
  v141 = sub_29D65DA74();
  v143 = v142;

  *(v130 + 64) = v141;
  *(v130 + 72) = v143;
  v144 = [v131 bundleForClass_];
  v145 = sub_29D65DA74();
  v147 = v146;

  *(v130 + 80) = v145;
  *(v130 + 88) = v147;
  v148 = [v131 bundleForClass_];
  v149 = sub_29D65DA74();
  v151 = v150;

  *(v130 + 96) = v149;
  *(v130 + 104) = v151;
  v152 = [v131 bundleForClass_];
  v153 = sub_29D65DA74();
  v155 = v154;

  *(v130 + 112) = v153;
  *(v130 + 120) = v155;
  v156 = [v131 bundleForClass_];
  v157 = sub_29D65DA74();
  v159 = v158;

  *(v130 + 128) = v157;
  *(v130 + 136) = v159;
  v160 = [v131 bundleForClass_];
  v161 = sub_29D65DA74();
  v163 = v162;

  *(v130 + 144) = v161;
  *(v130 + 152) = v163;
  v165 = v176;
  v164 = v177;
  *(v176 + v177) = v130;
  (v191)(v165 + v164, *MEMORY[0x29EDC15D8], v189);
  sub_29D65A3F0(v185);
  v166 = v192;
  (*(v180 + 8))(v178, v179);
  return v166;
}

id sub_29D60DBAC()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

id sub_29D60DC9C()
{
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A20C18;
  v1 = sub_29D65FF24();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29D60DD8C()
{
  v0 = HKCurrentLocaleCountryCodeIfUnknown();
  v1 = sub_29D65FF64();
  v3 = v2;
  if (v1 == sub_29D65FF64() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_29D660694();

    if ((v6 & 1) == 0)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  sub_29D60E234(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v8 = sub_29D65DFE4();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29D661D90;
  v11 = (v7 + v10);
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  *v11 = sub_29D65DA74();
  v11[1] = v12;
  (*(v9 + 104))(v11, *MEMORY[0x29EDC1620], v8);
  return v7;
}

uint64_t sub_29D60DFCC(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 2)
  {
    if (a1 == 1 || a1 == 2)
    {
      goto LABEL_8;
    }
  }

  else if (a1 == 3 || a1 == 4 || a1 == 5)
  {
LABEL_8:
    type metadata accessor for HearingAppPluginDelegate(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v1 = sub_29D65DA74();
  }

  return v1;
}

char *sub_29D60E0FC(uint64_t a1, float a2, float a3)
{
  v6 = HKLocalizedStringForHearingLevelClassification();
  if (v6)
  {
    v7 = v6;
    v8 = sub_29D65FF64();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = sub_29D60DFCC(a1);
  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 hk_hearingHealthKeyColor];
  v16 = [v14 secondarySystemBackgroundColor];
  v17 = 0.0;
  if (a2 > 0.0)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0.0;
  }

  if (v18 > 1.0)
  {
    v18 = 1.0;
  }

  if (a3 > 0.0)
  {
    v17 = a3;
  }

  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  v21[0] = v8;
  v21[1] = v10;
  v21[2] = v11;
  v21[3] = v13;
  v21[4] = 0;
  v21[5] = 0;
  v22 = 1;
  if ((1.0 - v18) < v17)
  {
    v17 = 1.0 - v18;
  }

  v23 = v18;
  v24 = v17;
  v25 = v15;
  v26 = v16;
  v27 = 0x4010000000000000;
  v19 = objc_allocWithZone(type metadata accessor for SoundLevelView());
  return SoundLevelView.init(model:)(v21);
}

void sub_29D60E234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D60E298(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17AC928)
  {
    MEMORY[0x2A1C7C4A8](a1, a2);
    sub_29D60E3EC(255, &qword_2A17AC930, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29D65DFD4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17AC928);
    }
  }
}

void sub_29D60E3EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29D60E440@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29D65F414();
  v3 = MEMORY[0x29EDC7800];
  a1[3] = v2;
  a1[4] = v3;
  sub_29D5E3C20(a1);
  sub_29D65F3E4();
  if (qword_2A1A1EAA0 != -1)
  {
    swift_once();
  }

  sub_29D65DA74();
  sub_29D65F3F4();
  v4 = [objc_opt_self() hk_appTintColor];
  v5 = sub_29D65F3D4();
  sub_29D65F3C4();
  return v5(v7, 0);
}

uint64_t sub_29D60E590()
{
  v1 = *(v0 + 16);
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  return v1;
}

uint64_t sub_29D60E5C0(uint64_t a1)
{
  v2 = sub_29D60EB70();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29D60E60C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_29D660694();
  }
}

uint64_t sub_29D60E63C()
{
  sub_29D660724();
  sub_29D65FFA4();
  return sub_29D660744();
}

uint64_t sub_29D60E690(uint64_t a1)
{
  sub_29D660724();
  sub_29D65FFA4();
  return sub_29D660744();
}

uint64_t sub_29D60E6D8()
{
  v0 = sub_29D660024();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (!v1)
  {
    return 0;
  }

  v2 = sub_29D65FF64();

  return v2;
}

double (*sub_29D60E75C(uint64_t *a1))(uint64_t a1)
{
  v2 = sub_29D660024();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    v4 = sub_29D65FF64();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
  return sub_29D60E7F4;
}

id sub_29D60E7FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v10 = v2[4];
  a2[3] = a1;
  a2[4] = sub_29D60EC20();
  v8 = swift_allocObject();
  *a2 = v8;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v7;
  v8[5] = v6;
  v8[6] = v10;
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();
  _s16HearingAppPlugin23PDFHStackWithEqualWidthV7contentSay18HealthExperienceUI13PDFRenderable_pGvg_0();

  return v10;
}

void sub_29D60E89C(uint64_t a1, void *a2)
{
  sub_29D6600C4();
  sub_29D6600B4();
  sub_29D6600A4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 32);
  type metadata accessor for AudiogramPDFAsyncConfigurationDataSource();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 40) = 0x3FF8000000000000;
  *(v5 + 48) = 0;
  type metadata accessor for AudiogramPDFProvider();
  v6 = swift_allocObject();
  v6[2] = v4;
  v7 = sub_29D65EAA4();
  v8 = v4;
  v9 = sub_29D65EA94();
  v10 = MEMORY[0x29EDC24D0];
  v6[6] = v7;
  v6[7] = v10;
  v6[3] = v9;
  *(v5 + 24) = v6;
  *(v5 + 32) = v8;
  sub_29D60F004(&qword_2A17AC950, type metadata accessor for AudiogramPDFAsyncConfigurationDataSource, &protocol conformance descriptor for AudiogramPDFAsyncConfigurationDataSource);
  v11 = objc_allocWithZone(sub_29D65EF34());

  v12 = sub_29D65EF24();
  v13 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  [v13 setModalPresentationStyle_];
  [a2 presentViewController:v13 animated:1 completion:0];
}

uint64_t sub_29D60EAF0@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x29EDC22C0];
  v3 = sub_29D65E974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_29D60EB70()
{
  result = qword_2A17AC938;
  if (!qword_2A17AC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC938);
  }

  return result;
}

unint64_t sub_29D60EBCC()
{
  result = qword_2A17AC940;
  if (!qword_2A17AC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC940);
  }

  return result;
}

unint64_t sub_29D60EC20()
{
  result = qword_2A17AC948;
  if (!qword_2A17AC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17AC948);
  }

  return result;
}

uint64_t sub_29D60EC78(void *a1)
{
  v2 = v1;
  v4 = sub_29D65FCA4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D65FCC4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D605BAC();
  v14 = sub_29D6602B4();
  v15 = *v1;
  v25 = v1[1];
  v26 = v15;
  v16 = *(v1 + 4);
  v17 = swift_allocObject();
  v18 = v2[1];
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v2 + 4);
  *(v17 + 56) = a1;
  aBlock[4] = sub_29D60EF84;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D60B5D0;
  aBlock[3] = &unk_2A2432560;
  v19 = _Block_copy(aBlock);
  sub_29D60EFA8(&v26, v23);
  sub_29D60EFA8(&v25, v23);
  v20 = v16;
  v21 = a1;
  sub_29D65FCB4();
  v23[0] = MEMORY[0x29EDCA190];
  sub_29D60F004(&qword_2A17AC0F0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D5DF124(0);
  sub_29D60F004(&qword_2A17AC100, sub_29D5DF124, MEMORY[0x29EDC9A70]);
  sub_29D660484();
  MEMORY[0x29ED62660](0, v13, v8, v19);
  _Block_release(v19);

  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_29D60EF90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D60F004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_29D60F04C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29D60F060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29D60F0A8(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for HearingTestPromptTileActionHandler(uint64_t a1)
{
  result = qword_2A17AC958;
  if (!qword_2A17AC958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D60F190()
{
  v0 = sub_29D65EEC4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A1EA68 != -1)
  {
    swift_once();
  }

  v5 = sub_29D65F314();
  sub_29D5DE6EC(v5, qword_2A1A20C00);
  v6 = sub_29D65F2F4();
  v7 = sub_29D6601E4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446210;
    v10 = sub_29D6607A4();
    v12 = sub_29D64A1D0(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29D5D7000, v6, v7, "[%{public}s] Presenting Hearing Test.", v8, 0xCu);
    sub_29D5DF1C4(v9);
    MEMORY[0x29ED63350](v9, -1, -1);
    MEMORY[0x29ED63350](v8, -1, -1);
  }

  sub_29D65DD04();
  sub_29D65ED14();
  sub_29D65EEA4();
  v13 = *(v1 + 8);
  v13(v4, v0);
  v14 = sub_29D65E7D4();

  sub_29D65DD34();
  v15 = sub_29D65DD24();
  type metadata accessor for HearingTestArticleProvider();
  swift_allocObject();
  v16 = sub_29D65DCF4();

  sub_29D65ED14();
  v17 = sub_29D65EEB4();
  v13(v4, v0);
  [v17 presentViewController:v16 animated:1 completion:0];
}

uint64_t sub_29D60F480(uint64_t a1)
{
  v2 = sub_29D65EEC4();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v6, a1, v2);
  v7 = sub_29D65ED24();
  (*(v3 + 8))(a1, v2);
  return v7;
}

uint64_t sub_29D60F5FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HearingTestPromptTileActionHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D60F644(uint64_t a1)
{
  sub_29D6123E8(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v2 = sub_29D65DFE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29D663690;
  v6 = (v43 + v5);
  sub_29D660554();

  v7 = sub_29D660674();
  MEMORY[0x29ED62350](v7);

  MEMORY[0x29ED62350](0x5245444145485FLL, 0xE700000000000000);
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = objc_opt_self();
  v8 = [v41 bundleForClass_];
  v9 = sub_29D65DA74();
  v11 = v10;

  *v6 = v9;
  v6[1] = v11;
  v6[2] = 0;
  v12 = *(v3 + 104);
  v12(v6, *MEMORY[0x29EDC15D0], v2);
  v13 = v6 + v4;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *v13 = sub_29D612524;
  *(v13 + 1) = v14;
  v13[16] = 1;
  v15 = *MEMORY[0x29EDC15A8];
  v12((v6 + v4), v15, v2);
  v16 = v6 + 2 * v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *v16 = sub_29D612540;
  *(v16 + 1) = v17;
  v16[16] = 1;
  v12(v16, v15, v2);
  v18 = v6 + 3 * v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *v18 = sub_29D61255C;
  *(v18 + 1) = v19;
  v18[16] = 1;
  v12(v18, v15, v2);
  v20 = v6 + 4 * v4;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *v20 = sub_29D612580;
  *(v20 + 1) = v21;
  v20[16] = 1;
  v12(v20, v15, v2);
  v22 = v6 + 5 * v4;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *v22 = sub_29D6125A4;
  *(v22 + 1) = v23;
  v22[16] = 1;
  v12(v22, v15, v2);
  v24 = v6 + 6 * v4;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *v24 = sub_29D6125C8;
  *(v24 + 1) = v25;
  v24[16] = 1;
  v12(v24, v15, v2);
  v26 = v6 + 7 * v4;
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *v26 = sub_29D6125E4;
  *(v26 + 1) = v27;
  v26[16] = 1;
  v12(v26, v15, v2);
  v28 = &v6[v4];
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *v28 = sub_29D612608;
  v28[1] = v29;
  *(v28 + 16) = 1;
  v12(v28, v15, v2);
  v30 = v6 + 9 * v4;
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *v30 = sub_29D61262C;
  *(v30 + 1) = v31;
  v30[16] = 1;
  v12(v30, v15, v2);
  v32 = v6 + 10 * v4;
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *v32 = sub_29D612650;
  *(v32 + 1) = v33;
  v32[16] = 1;
  v12(v32, v15, v2);
  v34 = (v6 + 11 * v4);
  sub_29D660554();

  v35 = sub_29D660674();
  MEMORY[0x29ED62350](v35);

  MEMORY[0x29ED62350](0x435F54524148435FLL, 0xEE004E4F49545041);
  v36 = [v41 bundleForClass_];
  v37 = sub_29D65DA74();
  v39 = v38;

  *v34 = v37;
  v34[1] = v39;
  v12(v34, *MEMORY[0x29EDC1620], v2);
  return v43;
}

uint64_t sub_29D60FCDC(uint64_t a1)
{
  sub_29D6123E8(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v2 = sub_29D65DFE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_29D663690;
  v6 = (v43 + v5);
  sub_29D660554();

  v7 = sub_29D660674();
  MEMORY[0x29ED62350](v7);

  MEMORY[0x29ED62350](0x5245444145485FLL, 0xE700000000000000);
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = objc_opt_self();
  v8 = [v41 bundleForClass_];
  v9 = sub_29D65DA74();
  v11 = v10;

  *v6 = v9;
  v6[1] = v11;
  v6[2] = 0;
  v12 = *(v3 + 104);
  v12(v6, *MEMORY[0x29EDC15D0], v2);
  v13 = v6 + v4;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *v13 = sub_29D611778;
  *(v13 + 1) = v14;
  v13[16] = 1;
  v15 = *MEMORY[0x29EDC15A8];
  v12((v6 + v4), v15, v2);
  v16 = v6 + 2 * v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *v16 = sub_29D611794;
  *(v16 + 1) = v17;
  v16[16] = 1;
  v12(v16, v15, v2);
  v18 = v6 + 3 * v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *v18 = sub_29D6117B0;
  *(v18 + 1) = v19;
  v18[16] = 1;
  v12(v18, v15, v2);
  v20 = v6 + 4 * v4;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *v20 = sub_29D6117D4;
  *(v20 + 1) = v21;
  v20[16] = 1;
  v12(v20, v15, v2);
  v22 = v6 + 5 * v4;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *v22 = sub_29D6117F8;
  *(v22 + 1) = v23;
  v22[16] = 1;
  v12(v22, v15, v2);
  v24 = v6 + 6 * v4;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *v24 = sub_29D61181C;
  *(v24 + 1) = v25;
  v24[16] = 1;
  v12(v24, v15, v2);
  v26 = v6 + 7 * v4;
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *v26 = sub_29D611838;
  *(v26 + 1) = v27;
  v26[16] = 1;
  v12(v26, v15, v2);
  v28 = &v6[v4];
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *v28 = sub_29D61185C;
  v28[1] = v29;
  *(v28 + 16) = 1;
  v12(v28, v15, v2);
  v30 = v6 + 9 * v4;
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *v30 = sub_29D611880;
  *(v30 + 1) = v31;
  v30[16] = 1;
  v12(v30, v15, v2);
  v32 = v6 + 10 * v4;
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *v32 = sub_29D6118A4;
  *(v32 + 1) = v33;
  v32[16] = 1;
  v12(v32, v15, v2);
  v34 = (v6 + 11 * v4);
  sub_29D660554();

  v35 = sub_29D660674();
  MEMORY[0x29ED62350](v35);

  MEMORY[0x29ED62350](0x435F54524148435FLL, 0xEE004E4F49545041);
  v36 = [v41 bundleForClass_];
  v37 = sub_29D65DA74();
  v39 = v38;

  *v34 = v37;
  v34[1] = v39;
  v12(v34, *MEMORY[0x29EDC1620], v2);
  return v43;
}

uint64_t sub_29D610374()
{
  sub_29D6123E8(0, &qword_2A1A1E558, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v127 = &v116 - v2;
  sub_29D6123E8(0, &qword_2A17AC920, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v126 = v3;
  v4 = sub_29D65DFE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  v8 = (v7 + 32) & ~v7;
  v124 = v8;
  v125 = v7;
  v122 = 8 * v6;
  v9 = v6;
  v130 = v6;
  v10 = swift_allocObject();
  v123 = v10;
  *(v10 + 16) = xmmword_29D663270;
  v11 = v10 + v8;
  *v11 = sub_29D611688();
  *(v11 + 8) = 0;
  v12 = *MEMORY[0x29EDC1608];
  v13 = *(v5 + 104);
  v135 = v11;
  v136 = v13;
  v137 = v4;
  (v13)(v11, v12, v4);
  v138 = v5 + 104;
  v14 = (v11 + v9);
  v134 = "HAEN_SETTINGS_LEARN_MORE_TEXT";
  type metadata accessor for HearingAppPluginDelegate(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  v18 = sub_29D65DA74();
  v20 = v19;

  *v14 = v18;
  v14[1] = v20;
  v21 = v4;
  v22 = v136;
  (v136)(v11 + v9, *MEMORY[0x29EDC1610], v21);
  v23 = v130;
  v24 = 2 * v130;
  v25 = v135 + 2 * v130;
  v26 = v16;
  v132 = v16;
  v27 = [v16 bundleForClass_];
  v131 = 0xD000000000000013;
  v28 = sub_29D65DA74();
  v30 = v29;

  *v25 = v28;
  *(v25 + 8) = v30;
  *(v25 + 16) = 0;
  v129 = *MEMORY[0x29EDC1630];
  v22(v25);
  v119 = v24;
  v121 = 3 * v23;
  v31 = v135;
  v32 = (v135 + 3 * v23);
  v33 = [v26 bundleForClass_];
  v34 = sub_29D65DA74();
  v36 = v35;

  *v32 = v34;
  v32[1] = v36;
  v32[2] = 0;
  LODWORD(v128) = *MEMORY[0x29EDC15D0];
  v37 = v136;
  v136(v32);
  v38 = v23;
  v120 = 4 * v23;
  v39 = v31 + 4 * v23;
  v40 = v132;
  v41 = ObjCClassFromMetadata;
  v133 = ObjCClassFromMetadata;
  v42 = [v132 bundleForClass_];
  v43 = sub_29D65DA74();
  v45 = v44;

  *v39 = v43;
  *(v39 + 8) = v45;
  *(v39 + 16) = 0;
  v46 = v137;
  (v37)(v39, v129, v137);
  v47 = v135;
  v48 = (v135 + v120 + v38);
  v49 = [v40 bundleForClass_];
  v50 = sub_29D65DA74();
  v52 = v51;

  *v48 = v50;
  v48[1] = v52;
  v48[2] = 0;
  v53 = v136;
  (v136)(v48, v128, v46);
  v54 = v130;
  v55 = v47 + 6 * v130;
  v56 = [v132 bundleForClass_];
  v57 = sub_29D65DA74();
  v59 = v58;

  *v55 = v57;
  *(v55 + 8) = v59;
  *(v55 + 16) = 0;
  (v53)(v55, v129, v137);
  v60 = (v135 + v122 - v54);
  sub_29D60E298(0, v61);
  v122 = v62;
  v63 = (v60 + *(v62 + 80));
  v64 = v132;
  v65 = v133;
  v66 = [v132 bundleForClass_];
  v67 = sub_29D65DA74();
  v69 = v68;

  *v60 = v67;
  v60[1] = v69;
  v70 = [v64 bundleForClass_];
  v135 = 0xD00000000000001ELL;
  v71 = sub_29D65DA74();
  v73 = v72;

  v60[2] = v71;
  v60[3] = v73;
  v60[4] = 0;
  v60[5] = 0;
  *v63 = sub_29D610F50;
  v63[1] = 0;
  v74 = *MEMORY[0x29EDC15B8];
  v75 = sub_29D65DFD4();
  v76 = *(v75 - 8);
  v77 = *(v76 + 104);
  v120 = v75;
  v118 = v77;
  v117 = v76 + 104;
  (v77)(v63, v74);
  HIDWORD(v116) = *MEMORY[0x29EDC15E8];
  v78 = v137;
  v79 = v136;
  v136(v60);
  v80 = sub_29D60FCDC(4);
  v139 = v123;
  sub_29D65A3F0(v80);
  v123 = v139;
  v81 = v124;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_29D661ED0;
  v126 = v82;
  v83 = (v82 + v81);
  v84 = v64;
  v85 = v64;
  v86 = v133;
  v87 = [v85 bundleForClass_];
  v88 = sub_29D65DA74();
  v90 = v89;

  *v83 = v88;
  v83[1] = v90;
  v83[2] = 0;
  (v79)(v83, v128, v78);
  v91 = v127;
  v128 = v83;
  v92 = (v83 + v130);
  v93 = [v84 bundleForClass_];
  v94 = sub_29D65DA74();
  v96 = v95;

  *v92 = v94;
  v92[1] = v96;
  v97 = [v84 bundleForClass_];
  v98 = sub_29D65DA74();
  v100 = v99;

  v92[2] = v98;
  v92[3] = v100;
  v92[4] = 0;
  v92[5] = 0;
  v139 = 0;
  v140 = 0xE000000000000000;
  sub_29D660554();
  v101 = [objc_opt_self() internalSoundsSettingsURLString];
  v102 = sub_29D65FF64();
  v104 = v103;

  v139 = v102;
  v140 = v104;
  MEMORY[0x29ED62350](v135, 0x800000029D667DA0);
  sub_29D65DAE4();

  v105 = sub_29D65DAF4();
  v106 = *(v105 - 8);
  result = (*(v106 + 48))(v91, 1, v105);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v108 = *(v122 + 80);
    (*(v106 + 32))(v92 + v108, v91, v105);
    v118(v92 + v108, *MEMORY[0x29EDC15C0], v120);
    v110 = v136;
    v109 = v137;
    (v136)(v92, HIDWORD(v116), v137);
    v111 = v128 + v119;
    v112 = [v132 bundleForClass_];
    v113 = sub_29D65DA74();
    v115 = v114;

    *v111 = v113;
    *(v111 + 1) = v115;
    v111[16] = 0;
    (v110)(v111, v129, v109);
    v139 = v123;
    sub_29D65A3F0(v126);
    return v139;
  }

  return result;
}