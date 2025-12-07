void sub_29D836F14(void *a1, uint64_t a2, void *a3, void **a4)
{
  v76 = a3;
  v6 = sub_29D937898();
  v7 = *(v6 - 8);
  v77 = v6;
  v78 = v7;
  v9 = MEMORY[0x2A1C7C4A8](v6, v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = &v74 - v14;
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = &v74 - v18;
  v21 = MEMORY[0x2A1C7C4A8](v17, v20);
  v23 = &v74 - v22;
  MEMORY[0x2A1C7C4A8](v21, v24);
  v26 = &v74 - v25;
  sub_29D693E2C(a1, a1[3]);
  v27 = sub_29D933EC8();
  sub_29D934528();
  v34 = sub_29D93A5A8();
  v35 = v26;
  v74 = v19;
  v75 = v15;

  if (v34 >> 62)
  {
    if (sub_29D93A928())
    {
LABEL_8:
      if ((v34 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x29ED6AE30](0, v34);
      }

      else
      {
        if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_43;
        }

        v36 = *(v34 + 32);
      }

      v37 = v36;
      v38 = [v36 userData];
      if (v38)
      {
        v39 = v38;
        v40 = sub_29D933738();
        v42 = v41;

        v43 = sub_29D933718();
        sub_29D6AA284(v40, v42);
      }

      else
      {
        v43 = 0;
      }

      v44 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

      if (!v44)
      {

        sub_29D937858();
        v59 = sub_29D937878();
        v60 = sub_29D93A298();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_29D677000, v59, v60, "Unable to decode chart feed item data", v61, 2u);
          MEMORY[0x29ED6BE30](v61, -1, -1);
        }

        goto LABEL_27;
      }

      v45 = [v44 chartModel];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 hasSixMonthData];

        if (v47)
        {
          v48 = [v44 chartModel];
          if (v48)
          {
            v49 = v48;

            v50 = [v49 sixMonthData];

            if (v50)
            {
              v51 = [v50 queryDataObject];
              if (v51)
              {
                v52 = v51;
                v53 = sub_29D933738();
                v54 = v37;
                v56 = v55;

                v57 = sub_29D933718();
                v58 = v56;
                v37 = v54;
                sub_29D6AA284(v53, v58);
              }

              else
              {
                v57 = 0;
              }

              v68 = [objc_allocWithZone(MEMORY[0x29EDC44B8]) initWithData_];

              if (v68)
              {

                v69 = *a4;
                *a4 = v68;
              }

              else
              {
                v70 = v74;
                sub_29D937858();
                v71 = sub_29D937878();
                v72 = sub_29D93A298();
                if (os_log_type_enabled(v71, v72))
                {
                  v73 = swift_slowAlloc();
                  *v73 = 0;
                  _os_log_impl(&dword_29D677000, v71, v72, "Unable to decode query data from charting model", v73, 2u);
                  MEMORY[0x29ED6BE30](v73, -1, -1);
                }

                (*(v78 + 8))(v70, v77);
              }
            }

            else
            {
              sub_29D937858();
              v65 = sub_29D937878();
              v66 = sub_29D93A298();
              if (os_log_type_enabled(v65, v66))
              {
                v67 = swift_slowAlloc();
                *v67 = 0;
                _os_log_impl(&dword_29D677000, v65, v66, "Unable to decode sharable charting model", v67, 2u);
                MEMORY[0x29ED6BE30](v67, -1, -1);
              }

              (*(v78 + 8))(v23, v77);
            }

            return;
          }

LABEL_44:
          __break(1u);
          return;
        }

        v35 = v75;
        sub_29D937858();
        v62 = sub_29D937878();
        v63 = sub_29D93A298();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_29D677000, v62, v63, "Missing data charting model", v64, 2u);
          MEMORY[0x29ED6BE30](v64, -1, -1);
        }

LABEL_27:
        (*(v78 + 8))(v35, v77);
        return;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  sub_29D937858();
  v28 = v76;
  v29 = sub_29D937878();
  v30 = sub_29D93A298();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_29D677000, v29, v30, "Missing feed item when trying to decode Summaries data for %@", v31, 0xCu);
    sub_29D6ACA3C(v32);
    MEMORY[0x29ED6BE30](v32, -1, -1);
    MEMORY[0x29ED6BE30](v31, -1, -1);
  }

  (*(v78 + 8))(v11, v77);
}

id sub_29D837680(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_29D83774C()
{
  result = qword_2A17B6010;
  if (!qword_2A17B6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6010);
  }

  return result;
}

uint64_t sub_29D8377A0(uint64_t a1, void *a2)
{
  sub_29D837D18(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &aBlock[-2] - v5;
  sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
  v7 = [swift_getObjCClassFromMetadata() electrocardiogramType];
  sub_29D934528();
  sub_29D837D18(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v8 = sub_29D933F58();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v27 = xmmword_29D93DDB0;
  *(v11 + 16) = xmmword_29D93DDB0;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x29EDC3710], v8);
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29D940030;
  *(v12 + 32) = v7;
  v13 = sub_29D9331D8();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_29D6AA3B4(0, &qword_2A17B50A8, MEMORY[0x29EDC37E0]);
  v14 = swift_allocObject();
  *(v14 + 16) = v27;
  v15 = v7;
  *(v14 + 32) = sub_29D93A208();
  v16 = MEMORY[0x29ED648C0](v11, v12, v6, v14);

  sub_29D837D7C(v6);
  v17 = v16;
  v18 = sub_29D9344F8();

  v30 = 0;
  sub_29D693E2C(a2, a2[3]);
  v19 = sub_29D933EC8();
  sub_29D6945AC(a2, v29);
  v20 = swift_allocObject();
  sub_29D6959E8(v29, (v20 + 2));
  v20[7] = v18;
  v20[8] = v15;
  v20[9] = &v30;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_29D837E08;
  *(v21 + 24) = v20;
  aBlock[4] = sub_29D79B1A4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D837610;
  aBlock[3] = &unk_2A2448218;
  v22 = _Block_copy(aBlock);
  v23 = v15;
  v24 = v18;

  [v19 performBlockAndWait_];

  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v26 = v30;

    return v26;
  }

  return result;
}

id sub_29D837C18(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_resultsHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_healthStore] = a1;
  sub_29D6945AC(a2, &v4[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_healthExperienceStore]);
  *v9 = a3;
  *(v9 + 1) = a4;
  v10 = a1;
  sub_29D695554(a3, a4);
  v11 = sub_29D8377A0(v10, a2);
  v12 = v11;
  *&v4[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_queryData] = v11;
  if (v11)
  {
    v11 = [v11 activeAlgorithmVersionRawValue];
  }

  v13 = &v4[OBJC_IVAR____TtC5Heart37SummariesElectrocardiogramDataFetcher_activeAlgorithmVersion];
  *v13 = v11;
  v13[8] = v12 == 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SummariesElectrocardiogramDataFetcher();
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_29D69417C(a2);
  return v14;
}

void sub_29D837D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D837D7C(uint64_t a1)
{
  sub_29D837D18(0, &qword_2A17B3A18, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D837E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D837E44()
{
  result = qword_2A17B6030;
  if (!qword_2A17B6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6030);
  }

  return result;
}

uint64_t sub_29D837E98()
{
  v0 = [objc_opt_self() systemPinkColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [v1 configurationWithPointSize:4 weight:36.0];
  v4 = [v2 configurationByApplyingConfiguration_];

  return sub_29D934778();
}

void sub_29D837F94()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:51.0];
  v2 = [objc_opt_self() systemPinkColor];
  v4 = [v0 configurationWithHierarchicalColor_];

  v3 = [v1 configurationByApplyingConfiguration_];
  sub_29D934778();
}

id sub_29D8380A0()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  return v6;
}

id sub_29D8381D8()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  return v6;
}

id sub_29D838310()
{
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize:4 weight:-1 scale:82.0];
  v2 = [objc_opt_self() systemPinkColor];
  v3 = [v0 configurationWithHierarchicalColor_];

  v4 = [v1 configurationByApplyingConfiguration_];
  v5 = sub_29D939D28();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  return v6;
}

uint64_t type metadata accessor for HypertensionNotificationsRoomViewController(uint64_t a1)
{
  result = qword_2A17B6068;
  if (!qword_2A17B6068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D838518(unint64_t a1)
{
  v6 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
LABEL_15:
    sub_29D93A928();
    sub_29D93AAD8();
    v2 = sub_29D93A928();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_29D93AAD8();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x29ED6AE30](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            sub_29D936978();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_29D93AAB8();
        sub_29D93AAE8();
        sub_29D93AAF8();
        sub_29D93AAC8();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_29D83868C(unint64_t a1, void *a2)
{
  v9 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_29D93AAD8();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29D93A928())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x29ED6AE30](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_29D93AAB8();
      sub_29D93AAE8();
      sub_29D93AAF8();
      sub_29D93AAC8();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_29D93A928();
    sub_29D93AAD8();
  }

  return v9;
}

id sub_29D8387F4(void *a1)
{
  v2 = sub_29D936378();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_29D9364A8();
  v8 = sub_29D936338();

  (*(v3 + 8))(v6, v2);

  return v8;
}

char *sub_29D8388F0(char *a1)
{
  v2 = v1;
  v4 = sub_29D936378();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v33 - v11;
  v34 = v9;
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v13 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v13 = MEMORY[0x29EDCA1A0];
  }

  *(v2 + qword_2A17B6040) = v13;
  *(v2 + qword_2A17B6048) = 0;
  v14 = sub_29D936338();
  v15 = [objc_allocWithZone(MEMORY[0x29EDBAE60]) initWithHealthStore_];

  *(v2 + qword_2A17B6050) = v15;
  v16 = sub_29D936338();
  type metadata accessor for HypertensionEventMetadataViewControllerProvider();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 3;
  *(v2 + qword_2A17B6058) = v17;
  v18 = *(v5 + 16);
  v18(v12, a1, v4);
  type metadata accessor for HypertensionNotificationsDataTypeDetailDataSourceProvider(0);
  v19 = swift_allocObject();

  v20 = sub_29D83B36C(v12, v17, v19);
  *(v2 + qword_2A17B6060) = v20;

  v21 = sub_29D936368();
  v22 = *(v20 + 10);
  if (v21 == 1)
  {
    sub_29D75765C(a1, v22);
  }

  else
  {
    sub_29D757EA8(a1, v22);
  }

  sub_29D935F88();
  swift_allocObject();
  sub_29D935F98();

  v18(v34, a1, v4);
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  result = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (result)
  {

    v24 = sub_29D936E48();
    sub_29D9364A8();
    v25 = sub_29D936338();
    v26 = *(v5 + 8);
    v26(v12, v4);
    v27 = [v25 profileIdentifier];

    v28 = [v27 type];
    if (v28 == 1)
    {
      v29 = *MEMORY[0x29EDBA6F0];
      sub_29D9364A8();
      v30 = sub_29D936338();
      v26(v12, v4);
      v31 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v29 healthStore:v30 countryCodeSource:1];

      v32 = *&v24[qword_2A17B6048];
      *&v24[qword_2A17B6048] = v31;

      sub_29D839AA0();

      v26(a1, v4);
    }

    else
    {
      v26(a1, v4);
    }

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29D838D18(uint64_t a1)
{
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v2 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v2 = MEMORY[0x29EDCA1A0];
  }

  *(a1 + qword_2A17B6040) = v2;
  *(a1 + qword_2A17B6048) = 0;
  sub_29D93AB28();
  __break(1u);
}

uint64_t sub_29D838DCC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29D936378();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x2A1C7C4A8](v2, v3);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29D83BC14(0, &unk_2A17B5578, MEMORY[0x29EDC2B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v45 - v8;
  sub_29D83BC14(0, &qword_2A17B6150, MEMORY[0x29EDC2B20], v5);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = &v45 - v12;
  sub_29D83BC14(0, &unk_2A17B55A8, MEMORY[0x29EDB9C08], v5);
  MEMORY[0x2A1C7C4A8](v14 - 8, v15);
  v17 = &v45 - v16;
  v18 = sub_29D933A58();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v18, v21);
  v23 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v26 = &v45 - v25;
  sub_29D936E28();
  v27 = sub_29D936E08();
  if ((*(*(v27 - 8) + 48))(v13, 1, v27))
  {
    sub_29D83BC80(v13, &qword_2A17B6150, MEMORY[0x29EDC2B20]);
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  else
  {
    v47 = v26;
    v48 = v9;
    sub_29D936DF8();
    sub_29D83BC80(v13, &qword_2A17B6150, MEMORY[0x29EDC2B20]);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v46 = *(v19 + 32);
      v37 = v47;
      v46(v47, v17, v18);
      v38 = v49;
      sub_29D9364A8();
      v39 = sub_29D936338();
      (*(v50 + 8))(v38, v51);
      (*(v19 + 16))(v23, v37, v18);
      v40 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v41 = (v20 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      v46((v42 + v40), v23, v18);
      *(v42 + v41) = v39;
      v43 = v48;
      sub_29D936DD8();
      v44 = sub_29D936DE8();
      (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
      sub_29D936E18();
      (*(v19 + 8))(v37, v18);
      goto LABEL_5;
    }
  }

  sub_29D83BC80(v17, &unk_2A17B55A8, MEMORY[0x29EDB9C08]);
LABEL_5:
  v28 = type metadata accessor for HypertensionNotificationsRoomViewController(0);
  v54.receiver = v1;
  v54.super_class = v28;
  objc_msgSendSuper2(&v54, sel_viewDidLoad);
  v29 = sub_29D9364B8();
  sub_29D693DDC(v30, *(v30 + 24));
  sub_29D936478();
  v29(aBlock, 0);
  type metadata accessor for HypertensionNotificationRoomInteractionEvent();
  v31 = swift_allocObject();
  *(v31 + 16) = 1536;
  *(v31 + 18) = 2;
  v32 = *(*&v1[qword_2A17B6060] + 72);
  v33 = swift_allocObject();
  *(v33 + 16) = ObjectType;
  aBlock[4] = sub_29D83BC78;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D8E44F0;
  aBlock[3] = &unk_2A24483E8;
  v34 = _Block_copy(aBlock);
  v35 = v32;

  [v35 submitEvent:v31 completion:v34];
  _Block_release(v34);
}

void sub_29D839440(int a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2C008);
    v6 = a2;
    v7 = sub_29D937878();
    v8 = sub_29D93A288();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v9 = 136446466;
      v12 = sub_29D93AF08();
      v14 = sub_29D6C2364(v12, v13, &v17);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2112;
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v16;
      *v10 = v16;
      _os_log_impl(&dword_29D677000, v7, v8, "[[%{public}s] Error when submitting analytics event: %@", v9, 0x16u);
      sub_29D6ACA3C(v10);
      MEMORY[0x29ED6BE30](v10, -1, -1);
      sub_29D69417C(v11);
      MEMORY[0x29ED6BE30](v11, -1, -1);
      MEMORY[0x29ED6BE30](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D839634(void *a1)
{
  v1 = a1;
  sub_29D838DCC();
}

uint64_t sub_29D83967C(char a1)
{
  swift_getObjectType();
  sub_29D83BC14(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for HypertensionNotificationsRoomViewController(0);
  v16.receiver = v1;
  v16.super_class = v7;
  objc_msgSendSuper2(&v16, sel_viewWillAppear_, a1 & 1);
  v8 = *&v1[qword_2A17B6060];
  v9 = *&v1[qword_2A17B6048];
  if (v9)
  {
    sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);

    v10 = v9;
    sub_29D937278();

    v12 = sub_29D9371A8();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {
    v11 = sub_29D9371A8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  v13 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_featureStatus;
  swift_beginAccess();
  sub_29D70D908(v6, v8 + v13);
  swift_endAccess();
  sub_29D756EE0();

  return sub_29D83BC80(v6, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
}

void sub_29D839A4C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29D83967C(a3);
}

uint64_t sub_29D839AA0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29D83BC14(0, &unk_2A1A248F0, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v22 - v5;
  sub_29D710880(0);
  v8 = v7;
  result = MEMORY[0x2A1C7C4A8](v7, v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + qword_2A17B6048);
  if (v14)
  {
    v23 = v11;
    sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
    v22 = ObjectType;
    v15 = v14;
    v16 = sub_29D937288();

    v24 = v16;
    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v17 = sub_29D93A468();
    v25 = v17;
    v18 = sub_29D93A448();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    sub_29D6B7D8C(0);
    sub_29D83BA4C(&qword_2A1A22420, sub_29D6B7D8C, MEMORY[0x29EDB8A00]);
    sub_29D706380();
    sub_29D938538();
    sub_29D83BC80(v6, &unk_2A1A248F0, MEMORY[0x29EDCA298]);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v21 = v22;
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    sub_29D83BA4C(&qword_2A17B2C70, sub_29D710880, MEMORY[0x29EDB89E8]);
    sub_29D938588();

    (*(v23 + 8))(v13, v8);
    swift_beginAccess();
    sub_29D938258();
    swift_endAccess();
  }

  return result;
}

char *sub_29D839E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D83BC14(0, &unk_2A1A24700, MEMORY[0x29EDC2D78], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = v22 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v10 = sub_29D937898();
    sub_29D69C6C0(v10, qword_2A1A2C008);
    v11 = sub_29D937878();
    v12 = sub_29D93A2A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22[0] = v14;
      *v13 = 136446210;
      v15 = sub_29D93AF08();
      v17 = sub_29D6C2364(v15, v16, v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s]: Feature status did update", v13, 0xCu);
      sub_29D69417C(v14);
      MEMORY[0x29ED6BE30](v14, -1, -1);
      MEMORY[0x29ED6BE30](v13, -1, -1);
    }

    v18 = *&v9[qword_2A17B6060];
    v19 = sub_29D9371A8();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v7, a1, v19);
    (*(v20 + 56))(v7, 0, 1, v19);
    v21 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_featureStatus;
    swift_beginAccess();

    sub_29D70D908(v7, v18 + v21);
    swift_endAccess();
    sub_29D756EE0();

    return sub_29D83BC80(v7, &unk_2A1A24700, MEMORY[0x29EDC2D78]);
  }

  return result;
}

void sub_29D83A138(void *a1)
{
  v2 = sub_29D936378();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_29D9364A8();
  v8 = sub_29D936338();
  (*(v3 + 8))(v6, v2);
  v9 = [v8 displayTypeController];

  if (v9)
  {

    v10 = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D83A2CC()
{
}

id sub_29D83A33C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HypertensionNotificationsRoomViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D83A374(uint64_t a1)
{
}

void sub_29D83A3F8(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for HypertensionNotificationsRoomViewController(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_self();
    v8 = a1;
    v9 = sub_29D933A28();
    v10 = [v7 predicateForObjectWithUUID_];

    sub_29D69567C(0, &qword_2A1A24930, 0x29EDBAD78);
    v11 = [swift_getObjCClassFromMetadata() hypertensionEventType];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:v11 predicate:v10];

      sub_29D6A0C58();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_29D940030;
      *(v14 + 32) = v13;
      v15 = swift_allocObject();
      v15[2] = v6;
      v15[3] = v8;
      v15[4] = a3;
      v16 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
      sub_29D69567C(0, &qword_2A17B6140, 0x29EDBAD40);
      v17 = v8;
      v18 = v13;
      v19 = a3;
      v20 = sub_29D939F18();

      aBlock[4] = sub_29D83BB9C;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29D733900;
      aBlock[3] = &unk_2A2448320;
      v21 = _Block_copy(aBlock);
      v22 = [v16 initWithQueryDescriptors:v20 limit:1 resultsHandler:v21];

      _Block_release(v21);

      [v19 executeQuery_];

      return;
    }

    __break(1u);
  }

  sub_29D93AB28();
  __break(1u);
}

void sub_29D83A6B4(uint64_t a1, unint64_t a2, NSObject *a3, void *a4, void *a5, void *a6)
{
  v11 = sub_29D939968();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D939998();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v16, v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = a3;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v23 = sub_29D937898();
    sub_29D69C6C0(v23, qword_2A1A2C008);
    v24 = a3;
    v25 = sub_29D937878();
    v26 = sub_29D93A288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v74 = v28;
      *v27 = 136643331;
      aBlock = sub_29D936DE8();
      sub_29D83BBC0();
      v29 = sub_29D939DA8();
      v31 = sub_29D6C2364(v29, v30, &v74);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      aBlock = 0xD000000000000012;
      v69 = 0x800000029D967690;
      v32 = sub_29D939DE8();
      v34 = sub_29D6C2364(v32, v33, &v74);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2082;
      aBlock = a3;
      v35 = a3;
      sub_29D6A0CD0();
      v36 = sub_29D939DA8();
      v38 = sub_29D6C2364(v36, v37, &v74);

      *(v27 + 24) = v38;
      _os_log_impl(&dword_29D677000, v25, v26, "[%{sensitive}s]: Could not load %s sample with error: %{public}s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v28, -1, -1);
      MEMORY[0x29ED6BE30](v27, -1, -1);

      return;
    }

    v50 = a3;

    goto LABEL_16;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v67 = v19;
  v39 = sub_29D83868C(a2, 0x29EDBAA60);
  if (!v39)
  {
    goto LABEL_19;
  }

  v40 = v39 & 0xFFFFFFFFFFFFFF8;
  if (v39 >> 62)
  {
    v51 = v39;
    v52 = sub_29D93A928();
    v39 = v51;
    if (v52)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

LABEL_19:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v53 = sub_29D937898();
    sub_29D69C6C0(v53, qword_2A1A2C008);
    v67 = sub_29D937878();
    v54 = sub_29D93A288();
    if (!os_log_type_enabled(v67, v54))
    {
      v50 = v67;

LABEL_16:

      return;
    }

    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v74 = v56;
    *v55 = 136643075;
    aBlock = sub_29D936DE8();
    sub_29D83BBC0();
    v57 = sub_29D939DA8();
    v59 = sub_29D6C2364(v57, v58, &v74);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    aBlock = 0xD000000000000012;
    v69 = 0x800000029D967690;
    v60 = sub_29D939DE8();
    v62 = sub_29D6C2364(v60, v61, &v74);

    *(v55 + 14) = v62;
    _os_log_impl(&dword_29D677000, v67, v54, "[%{sensitive}s]: No %s samples were found", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v56, -1, -1);
    MEMORY[0x29ED6BE30](v55, -1, -1);

    return;
  }

LABEL_10:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x29ED6AE30](0);
    goto LABEL_13;
  }

  if (*(v40 + 16))
  {
    v41 = *(v39 + 32);
LABEL_13:
    v65 = v41;

    sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
    v66 = sub_29D93A468();
    v42 = swift_allocObject();
    v43 = v65;
    v42[2] = a4;
    v42[3] = v43;
    v42[4] = a5;
    v42[5] = a6;
    v72 = sub_29D83BC08;
    v73 = v42;
    aBlock = MEMORY[0x29EDCA5F8];
    v69 = 1107296256;
    v70 = sub_29D6C1F10;
    v71 = &unk_2A2448370;
    v64 = _Block_copy(&aBlock);
    v44 = a4;
    v45 = v43;
    v46 = a5;
    v47 = a6;

    sub_29D939988();
    aBlock = MEMORY[0x29EDCA190];
    sub_29D83BA4C(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
    sub_29D83BC14(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    sub_29D6FC864();
    sub_29D93A888();
    v48 = v64;
    v49 = v66;
    MEMORY[0x29ED6A880](0, v21, v15, v64);
    _Block_release(v48);

    (*(v12 + 8))(v15, v11);
    (*(v17 + 8))(v21, v67);
    return;
  }

  __break(1u);
}

void sub_29D83AE44(uint64_t a1, void *a2, void *a3, uint64_t a4)
{

  v7 = sub_29D801028(a2);

  if (v7)
  {
    [a3 _hk_showAdaptively_sender_animated_];
    v8 = HKLogHeartRateCategory();
    v9 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v8 healthDataSource:a4];

    type metadata accessor for HypertensionNotificationRoomInteractionEvent();
    v10 = swift_allocObject();
    *(v10 + 16) = 769;
    *(v10 + 18) = 2;
    v27 = sub_29D83B184;
    v28 = 0;
    aBlock = MEMORY[0x29EDCA5F8];
    v24 = 1107296256;
    v25 = sub_29D8E44F0;
    v26 = &unk_2A2448398;
    v11 = _Block_copy(&aBlock);

    [v9 submitEvent:v10 completion:v11];
    _Block_release(v11);
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v12 = sub_29D937898();
    sub_29D69C6C0(v12, qword_2A1A2C008);
    oslog = sub_29D937878();
    v13 = sub_29D93A288();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136643075;
      sub_29D936DE8();
      sub_29D83BBC0();
      v16 = sub_29D939DA8();
      v18 = sub_29D6C2364(v16, v17, &v29);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      aBlock = 0xD000000000000012;
      v24 = 0x800000029D967690;
      v19 = sub_29D939DE8();
      v21 = sub_29D6C2364(v19, v20, &v29);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_29D677000, oslog, v13, "[%{sensitive}s]: Could not create a metadata provider for %s  samples", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v15, -1, -1);
      MEMORY[0x29ED6BE30](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_29D83B184(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = a2;
    oslog = sub_29D937878();
    v5 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v6 = 136643075;
      *(v6 + 4) = sub_29D6C2364(0x634164616F4C6E4FLL, 0xEC0000006E6F6974, &v13);
      *(v6 + 12) = 2112;
      if (a2)
      {
        v9 = a2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        v11 = v10;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      *(v6 + 14) = v10;
      *v7 = v11;
      _os_log_impl(&dword_29D677000, oslog, v5, "[%{sensitive}s] Failed to submit analytics with error: %@", v6, 0x16u);
      sub_29D6ACA3C(v7);
      MEMORY[0x29ED6BE30](v7, -1, -1);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    else
    {
    }
  }
}

char *sub_29D83B36C(uint64_t a1, uint64_t a2, char *a3)
{
  sub_29D83BB00(0, &qword_2A17B60E0, MEMORY[0x29EDC2008]);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v47 = &v39 - v8;
  v9 = MEMORY[0x29EDC2008];
  sub_29D83BA94(0, &unk_2A17B6110, type metadata accessor for HypertensionNotificationsEducationSectionDataSource, MEMORY[0x29EDC1E78], MEMORY[0x29EDC2008]);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x2A1C7C4A8](v10, v11);
  v44 = &v39 - v12;
  sub_29D83BA94(0, &qword_2A17B3C58, type metadata accessor for HypertensionNotificationsStatusSectionDataSource, MEMORY[0x29EDC2280], v9);
  v41 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v39 - v16;
  v18 = sub_29D936228();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = type metadata accessor for HypertensionEventMetadataViewControllerProvider();
  v49[4] = sub_29D83BA4C(&unk_2A17B6120, type metadata accessor for HypertensionEventMetadataViewControllerProvider, &unk_29D94B480);
  v49[0] = a2;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  result = [swift_getObjCClassFromMetadata() hypertensionEventType];
  if (result)
  {
    v24 = result;
    *(a3 + 10) = result;
    v25 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_featureStatus;
    v26 = sub_29D9371A8();
    (*(*(v26 - 8) + 56))(&a3[v25], 1, 1, v26);
    v27 = OBJC_IVAR____TtC5Heart57HypertensionNotificationsDataTypeDetailDataSourceProvider_context;
    v40 = sub_29D936378();
    v28 = *(v40 - 8);
    (*(v28 + 16))(&a3[v27], a1, v40);
    sub_29D6945AC(v49, (a3 + 88));
    sub_29D6945AC(v49, v48);
    v29 = v24;
    sub_29D936218();
    v39 = sub_29D936208();
    (*(v19 + 8))(v22, v18);
    sub_29D934C28();
    v30 = swift_dynamicCastClassUnconditional();
    v31 = sub_29D936338();
    type metadata accessor for HypertensionNotificationsStatusSectionDataSource(0);
    swift_allocObject();
    v32 = sub_29D713E24(v31);

    *(a3 + 4) = v32;
    v33 = *MEMORY[0x29EDC2000];
    (*(v14 + 104))(v17, v33, v41);
    v34 = MEMORY[0x29EDC2020];
    sub_29D83BA94(0, &qword_2A17B3C10, type metadata accessor for HypertensionNotificationsStatusSectionDataSource, MEMORY[0x29EDC2280], MEMORY[0x29EDC2020]);
    swift_allocObject();

    *(a3 + 5) = sub_29D935538();
    type metadata accessor for HypertensionNotificationsEducationSectionDataSource(0);
    swift_allocObject();
    *(a3 + 2) = sub_29D810484();
    (*(v42 + 104))(v44, v33, v43);
    sub_29D83BA94(0, &unk_2A17B6130, type metadata accessor for HypertensionNotificationsEducationSectionDataSource, MEMORY[0x29EDC1E78], v34);
    swift_allocObject();

    *(a3 + 3) = sub_29D935538();
    *(a3 + 6) = sub_29D75A8D4();
    (*(v45 + 104))(v47, v33, v46);
    sub_29D83BB00(0, &qword_2A17B3BE8, MEMORY[0x29EDC2020]);
    swift_allocObject();

    *(a3 + 7) = sub_29D935538();

    v35 = sub_29D936338();
    type metadata accessor for HypertensionNotificationsSampleListHideableDataSource(0);
    swift_allocObject();
    *(a3 + 8) = sub_29D730990(v30, v35);
    v36 = HKLogHeartRateCategory();
    v37 = sub_29D936338();
    v38 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v36 healthDataSource:v37];
    sub_29D936978();

    (*(v28 + 8))(a1, v40);
    sub_29D69417C(v49);
    *(a3 + 9) = v38;
    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D83BA4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D83BA94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29D83BB00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D75A38C(255);
    v7 = v6;
    v8 = sub_29D83BA4C(&qword_2A17B3C00, sub_29D75A38C, MEMORY[0x29EDC2110]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D83BBA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D83BBC0()
{
  result = qword_2A17B6148;
  if (!qword_2A17B6148)
  {
    sub_29D936DE8();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B6148);
  }

  return result;
}

void sub_29D83BC14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D83BC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D83BC14(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D83BD40(uint64_t a1)
{
  if ((sub_29D936368() & 0xFE) == 2)
  {
    sub_29D935248();
    swift_allocObject();
    sub_29D935238();
    sub_29D935438();

    sub_29D9353F8();

    type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource(0);
    sub_29D83C06C(&qword_2A17B6158, type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource, MEMORY[0x29EDC2988]);

    sub_29D935408();
  }

  else
  {
    v1 = sub_29D936338();
    sub_29D936318();
    v2 = objc_allocWithZone(type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource(0));
    v3 = sub_29D8EFC0C(v10);

    sub_29D83C06C(&qword_2A17B6158, type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource, MEMORY[0x29EDC2988]);
    v4 = sub_29D935438();

    v5 = v4;
    v6 = sub_29D9353F8();

    sub_29D935248();
    v7 = v6;
    sub_29D935418();
  }

  sub_29D83BFB0(0);
  sub_29D83C06C(&qword_2A17B6168, sub_29D83BFB0, MEMORY[0x29EDC22A8]);

  v8 = sub_29D9353F8();

  return v8;
}

void sub_29D83BFB0(uint64_t a1)
{
  if (!qword_2A17B6160)
  {
    sub_29D935248();
    type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource(255);
    sub_29D83C06C(&qword_2A17B6158, type metadata accessor for AFibBurdenLifeFactorsPlatterDataSource, MEMORY[0x29EDC2988]);
    v1 = sub_29D935C38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6160);
    }
  }
}

uint64_t sub_29D83C06C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D83C0B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_29D83C220(void *a1)
{
  v3 = v1;
  sub_29D840E28(0, &unk_2A17B6298, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v14[-v9];
  sub_29D693E2C(a1, a1[3]);
  sub_29D840DD4();
  sub_29D93AED8();
  v17 = 0;
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  sub_29D840E8C(&unk_2A17B4BA0, MEMORY[0x29EDBA220]);
  sub_29D93AD18();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for BloodPressureJournalAnchor(0) + 20));
    v12 = *v11;
    LOBYTE(v11) = *(v11 + 8);
    v15 = v12;
    v16 = v11;
    v14[15] = 1;
    type metadata accessor for HKBloodPressureClassificationGuidelines(0);
    sub_29D8414EC(&qword_2A17B62A8, 255, type metadata accessor for HKBloodPressureClassificationGuidelines, &protocol conformance descriptor for HKBloodPressureClassificationGuidelines);
    sub_29D93ACD8();
    v14[14] = 2;
    sub_29D93ACF8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_29D83C490@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v25 - v6;
  sub_29D840E28(0, &qword_2A17B6278, MEMORY[0x29EDC9E80]);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for BloodPressureJournalAnchor(0);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(a1, a1[3]);
  sub_29D840DD4();
  sub_29D93AEC8();
  if (v2)
  {
    return sub_29D69417C(a1);
  }

  v25 = v12;
  v16 = v15;
  v17 = v27;
  v35 = 0;
  sub_29D840E8C(&qword_2A17B4B98, MEMORY[0x29EDBA228]);
  v18 = v28;
  v19 = v30;
  sub_29D93AC88();
  (*(v17 + 32))(v16, v7, v18);
  type metadata accessor for HKBloodPressureClassificationGuidelines(0);
  v34 = 1;
  sub_29D8414EC(&qword_2A17B6290, 255, type metadata accessor for HKBloodPressureClassificationGuidelines, &protocol conformance descriptor for HKBloodPressureClassificationGuidelines);
  sub_29D93AC48();
  v20 = v16 + *(v25 + 20);
  v21 = v32;
  *v20 = v31;
  *(v20 + 8) = v21;
  v33 = 2;
  v22 = sub_29D93AC68();
  (*(v29 + 8))(v11, v19);
  v23 = v26;
  *(v16 + *(v25 + 24)) = v22 & 1;
  sub_29D840B28(v16, v23);
  sub_29D69417C(a1);
  return sub_29D840B8C(v16);
}

unint64_t sub_29D83C894()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 0x456C616E72756F6ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F4A657669746361;
  }
}

uint64_t sub_29D83C90C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D840718(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D83C934(uint64_t a1)
{
  v2 = sub_29D840DD4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D83C970(uint64_t a1)
{
  v2 = sub_29D840DD4();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29D83C9E4(void *a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_classificationManager];
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v9[4] = sub_29D840B20;
  v9[5] = v5;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1107296256;
  v9[2] = sub_29D83C0B4;
  v9[3] = &unk_2A24485F8;
  v6 = _Block_copy(v9);
  v7 = a1;
  v8 = a2;

  [v4 currentClassificationGuidelinesWithCompletionHandler_];
  _Block_release(v6);
}

uint64_t sub_29D83CAD8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for BloodPressureJournalAnchor(0);
  v7 = v6 - 8;
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_cachedAnchor);
  v12 = v11 + *(*v11 + *MEMORY[0x29EDC9DE8] + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v11 + v13));
  v14 = v12 + *(v7 + 28);
  *v14 = a1;
  *(v14 + 8) = 0;
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  v15 = a3;
  sub_29D939AF8();
  sub_29D840B28(v12, v10);
  os_unfair_lock_unlock((v11 + v13));
  sub_29D83CC88(v10);
  [*(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_bpjControl) registerObserver:a2 queue:*(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_queue)];
  [*(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_classificationManager) startObserving_];
  return sub_29D840B8C(v10);
}

uint64_t sub_29D83CC88(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_29D840048(0, &qword_2A17B4BE0, type metadata accessor for BloodPressureJournalAnchor, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v65 = &v56 - v6;
  v7 = sub_29D9374B8();
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B05AC(0);
  v11 = v10;
  v67 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v66 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for BloodPressureJournalAnchor(0);
  v14 = *(v63 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v63, v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v22 = &v56 - v21;
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v56 - v24;
  v26 = sub_29D937898();
  v61 = *(v26 - 8);
  v62 = v26;
  MEMORY[0x2A1C7C4A8](v26, v27);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  sub_29D840B28(a1, v25);
  sub_29D840B28(a1, v22);
  sub_29D840B28(a1, v18);
  v30 = sub_29D937878();
  v60 = sub_29D93A2A8();
  if (os_log_type_enabled(v30, v60))
  {
    v31 = swift_slowAlloc();
    v59 = v11;
    v32 = v31;
    v58 = swift_slowAlloc();
    v71 = v58;
    *v32 = 136447234;
    v33 = sub_29D93AF08();
    v57 = v30;
    v35 = sub_29D6C2364(v33, v34, &v71);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_29D6C2364(0xD000000000000010, 0x800000029D967850, &v71);
    *(v32 + 22) = 2080;
    sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
    v69 = sub_29D939AE8();
    sub_29D840AAC(0, &unk_2A1A221C0, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDC9C68]);
    v36 = sub_29D939DA8();
    v38 = v37;
    sub_29D840B8C(v25);
    v39 = sub_29D6C2364(v36, v38, &v71);

    *(v32 + 24) = v39;
    *(v32 + 32) = 2080;
    v40 = v63;
    v41 = &v22[*(v63 + 20)];
    v42 = *v41;
    LOBYTE(v41) = v41[8];
    v69 = v42;
    v70 = v41;
    sub_29D840048(0, &unk_2A17B6230, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDC9C68]);
    v43 = sub_29D939DA8();
    v45 = v44;
    sub_29D840B8C(v22);
    v46 = sub_29D6C2364(v43, v45, &v71);

    *(v32 + 34) = v46;
    *(v32 + 42) = 1024;
    LODWORD(v46) = v18[*(v40 + 24)];
    sub_29D840B8C(v18);
    *(v32 + 44) = v46;
    v47 = v57;
    _os_log_impl(&dword_29D677000, v57, v60, "[%{public}s.%{public}s]: Updating anchor with: active journal: %s, classification guidelines: %s, journal expired: %{BOOL}d", v32, 0x30u);
    v48 = v58;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v48, -1, -1);
    v49 = v32;
    v11 = v59;
    MEMORY[0x29ED6BE30](v49, -1, -1);

    (*(v61 + 8))(v29, v62);
    v50 = v40;
  }

  else
  {
    sub_29D840B8C(v18);

    sub_29D840B8C(v22);
    sub_29D840B8C(v25);
    (*(v61 + 8))(v29, v62);
    v50 = v63;
  }

  sub_29D9374A8();
  v51 = v65;
  sub_29D840B28(a1, v65);
  (*(v14 + 56))(v51, 0, 1, v50);
  sub_29D8414EC(&unk_2A17B6250, 255, type metadata accessor for BloodPressureJournalAnchor, &unk_29D94D37C);
  sub_29D8414EC(&unk_2A17B4C00, 255, type metadata accessor for BloodPressureJournalAnchor, &unk_29D94D354);
  sub_29D8414EC(&qword_2A17B6260, 255, type metadata accessor for BloodPressureJournalAnchor, &unk_29D94D32C);
  v52 = v66;
  sub_29D937408();
  swift_getObjectType();
  v69 = v2;
  sub_29D8414EC(&qword_2A1A23DB0, v53, type metadata accessor for BloodPressureJournalInputSignal, &unk_29D94D3A4);
  sub_29D9373F8();
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  v54 = sub_29D939AE8();
  sub_29D83DFBC(v54);

  return (*(v67 + 8))(v52, v11);
}

void sub_29D83D444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_29D937898();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v12 = sub_29D937878();
  v13 = sub_29D93A2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    v17 = sub_29D93AF08();
    v28 = v7;
    v29 = v3;
    v19 = v8;
    v20 = a1;
    v21 = sub_29D6C2364(v17, v18, aBlock);
    v3 = v29;

    *(v15 + 4) = v21;
    a1 = v20;
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s]: Fetching active journal.", v15, 0xCu);
    sub_29D69417C(v16);
    MEMORY[0x29ED6BE30](v16, -1, -1);
    v22 = v15;
    a2 = v30;
    MEMORY[0x29ED6BE30](v22, -1, -1);

    (*(v19 + 8))(v11, v28);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v23 = *&v3[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_bpjControl];
  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = a1;
  v24[4] = a2;
  v24[5] = ObjectType;
  aBlock[4] = sub_29D840A88;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F54;
  aBlock[3] = &unk_2A2448558;
  v25 = _Block_copy(aBlock);
  v26 = v3;

  [v23 fetchActiveJournalWithCompletion_];
  _Block_release(v25);
}

uint64_t sub_29D83D704@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X8>)
{
  v33 = sub_29D937898();
  v8 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v34 = a2;
  v12 = a2;
  v13 = sub_29D937878();
  v14 = sub_29D93A2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32 = v4;
    v18 = v17;
    v36 = v17;
    *v16 = 136446722;
    v19 = sub_29D93AF08();
    v21 = sub_29D6C2364(v19, v20, &v36);
    v31 = a4;
    v22 = v21;

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_29D6C2364(0xD00000000000001BLL, 0x800000029D967960, &v36);
    *(v16 + 22) = 2080;
    v35 = v34;
    sub_29D840AAC(0, &unk_2A1A221C0, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDC9C68]);
    v23 = v12;
    v24 = sub_29D939DA8();
    v26 = sub_29D6C2364(v24, v25, &v36);

    *(v16 + 24) = v26;
    a4 = v31;
    _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s.%{public}s]: Updating cached anchor with active journal: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v18, -1, -1);
    v27 = v16;
    a1 = v30;
    MEMORY[0x29ED6BE30](v27, -1, -1);
  }

  (*(v8 + 8))(v11, v33);
  sub_29D840AAC(0, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  v28 = v12;
  sub_29D939AF8();
  return sub_29D840B28(a1, a4);
}

uint64_t sub_29D83D9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v31 = sub_29D937898();
  v8 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v12 = sub_29D937878();
  v13 = sub_29D93A2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29[1] = v4;
    v17 = v16;
    v32 = v16;
    *v15 = 136446722;
    v18 = sub_29D93AF08();
    v20 = sub_29D6C2364(v18, v19, &v32);
    v29[0] = a1;
    v21 = a4;
    v22 = v20;

    *(v15 + 4) = v22;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_29D6C2364(0xD00000000000001ELL, 0x800000029D967910, &v32);
    *(v15 + 22) = 2080;
    v23 = sub_29D93A628();
    v25 = sub_29D6C2364(v23, v24, &v32);

    *(v15 + 24) = v25;
    a4 = v21;
    a1 = v29[0];
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s.%{public}s]: Updating cached anchor with classification guidelines: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v17, -1, -1);
    v26 = v15;
    a2 = v30;
    MEMORY[0x29ED6BE30](v26, -1, -1);
  }

  (*(v8 + 8))(v11, v31);
  v27 = a1 + *(type metadata accessor for BloodPressureJournalAnchor(0) + 20);
  *v27 = a2;
  *(v27 + 8) = 0;
  return sub_29D840B28(a1, a4);
}

uint64_t sub_29D83DC58(uint64_t a1)
{
  v2 = a1;
  swift_getObjectType();
  v3 = type metadata accessor for BloodPressureJournalAnchor(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_cachedAnchor);
  v8 = *(*v7 + *MEMORY[0x29EDC9DE8] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_29D83DD70(v7 + v8, v2, v6);
  os_unfair_lock_unlock((v7 + v9));
  sub_29D83CC88(v6);
  return sub_29D840B8C(v6);
}

uint64_t sub_29D83DD70@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a4@<X8>)
{
  LODWORD(v5) = a2;
  v25 = sub_29D937898();
  v8 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v12 = sub_29D937878();
  v13 = sub_29D93A2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v5;
    v5 = v14;
    v23[0] = swift_slowAlloc();
    v23[1] = v4;
    v26 = v23[0];
    *v5 = 136446722;
    v15 = sub_29D93AF08();
    v17 = a1;
    v18 = a4;
    v19 = sub_29D6C2364(v15, v16, &v26);

    *(v5 + 4) = v19;
    a4 = v18;
    a1 = v17;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0xD000000000000022, 0x800000029D967980, &v26);
    *(v5 + 22) = 1024;
    *(v5 + 24) = v24 & 1;
    _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s.%{public}s]: Updating cached anchor with journalExpired: %{BOOL}d", v5, 0x1Cu);
    v20 = v23[0];
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v20, -1, -1);
    v21 = v5;
    LOBYTE(v5) = v24;
    MEMORY[0x29ED6BE30](v21, -1, -1);
  }

  (*(v8 + 8))(v11, v25);
  *(a1 + *(type metadata accessor for BloodPressureJournalAnchor(0) + 24)) = v5 & 1;
  return sub_29D840B28(a1, a4);
}

void sub_29D83DFBC(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_29D840048(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v9 = &v19[-v8];
  if (a1)
  {
    v10 = a1;
    if ([v10 journalType] == 1)
    {
      v11 = [v10 endDate];
      if (!v11)
      {
        v15 = sub_29D9339F8();
        (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
        v16 = sub_29D6A0D34(v9);
        v17 = *(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observingDateChanges);
        MEMORY[0x2A1C7C4A8](v16, v18);
        *&v19[-16] = v1;
        *&v19[-8] = ObjectType;
        os_unfair_lock_lock((v17 + 20));
        sub_29D840C04((v17 + 16));
        os_unfair_lock_unlock((v17 + 20));

        return;
      }

      v12 = v11;
      sub_29D933998();

      v13 = sub_29D9339F8();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
      v6 = sub_29D6A0D34(v9);
    }

    else
    {
    }
  }

  v14 = *(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observingDateChanges);
  MEMORY[0x2A1C7C4A8](v6, v7);
  *&v19[-16] = v1;
  *&v19[-8] = ObjectType;
  os_unfair_lock_lock((v14 + 20));
  sub_29D840BE8((v14 + 16));
  os_unfair_lock_unlock((v14 + 20));
}

void sub_29D83E20C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D937898();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    v25 = a2;
    sub_29D937838();
    v11 = sub_29D937878();
    v12 = sub_29D93A2A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      v24 = v3;
      v16 = v15;
      v26 = v15;
      *v14 = 136446466;
      v17 = sub_29D93AF08();
      v19 = sub_29D6C2364(v17, v18, &v26);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D967870, &v26);
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s.%{public}s]: Adding NotificationCenter observer", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v16, -1, -1);
      v20 = v14;
      a1 = v23;
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v21 = [objc_opt_self() defaultCenter];
    [v21 addObserver:v25 selector:sel_dayChanged name:*MEMORY[0x29EDB8CA8] object:0];

    *a1 = 1;
  }
}

void sub_29D83E474(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D937898();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v25 = a2;
    sub_29D937838();
    v11 = sub_29D937878();
    v12 = sub_29D93A2A8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      v24 = v3;
      v16 = v15;
      v26 = v15;
      *v14 = 136446466;
      v17 = sub_29D93AF08();
      v19 = sub_29D6C2364(v17, v18, &v26);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_29D6C2364(0xD000000000000018, 0x800000029D967870, &v26);
      _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s.%{public}s]: Removing NotificationCenter observer", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v16, -1, -1);
      v20 = v14;
      a1 = v23;
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v21 = [objc_opt_self() defaultCenter];
    [v21 removeObserver:v25 name:*MEMORY[0x29EDB8CA8] object:0];

    *a1 = 0;
  }
}

void sub_29D83E6D4(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a5;
  v91 = a3;
  v92 = a2;
  v7 = sub_29D937898();
  v94 = *(v7 - 8);
  v95 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v93 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_29D933CC8();
  v10 = *(v89 - 8);
  MEMORY[0x2A1C7C4A8](v89, v11);
  v88 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D840048(0, &qword_2A1A25780, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8, v14);
  v90 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v97 = &v78 - v18;
  v19 = sub_29D933CE8();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29D9339F8();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v29 = MEMORY[0x2A1C7C4A8](v27, v28);
  v31 = MEMORY[0x2A1C7C4A8](v29, v30);
  v33 = &v78 - v32;
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v37 = &v78 - v36;
  MEMORY[0x2A1C7C4A8](v35, v38);
  if (a1)
  {
    v83 = v41;
    v85 = v40;
    v87 = &v78 - v39;
    v96 = a1;
    if ([v96 journalType] == 1)
    {
      v84 = a4;
      sub_29D933C88();
      v42 = [v96 startDate];
      sub_29D933998();

      sub_29D933AD8();
      v81 = v24;
      v82 = v25;
      v43 = (v25 + 8);
      v80 = *(v25 + 8);
      v80(v37, v24);
      v79 = *(v20 + 8);
      v44 = v19;
      v79(v23, v19);
      sub_29D933C88();
      v46 = v88;
      v45 = v89;
      (*(v10 + 104))(v88, *MEMORY[0x29EDB9CB8], v89);
      sub_29D933C38();
      v47 = v46;
      v48 = v33;
      (*(v10 + 8))(v47, v45);
      v49 = v79;
      v79(v23, v44);
      v50 = sub_29D933C88();
      v92(v50);
      sub_29D933AD8();
      v51 = v37;
      v53 = v80;
      v52 = v81;
      v80(v51, v81);
      v49(v23, v44);
      v54 = v82;
      v55 = v52;
      v56 = v90;
      sub_29D6A0A20(v97, v90);
      if ((*(v54 + 48))(v56, 1, v55) == 1)
      {
        sub_29D6A0D34(v56);
        LODWORD(v57) = 0;
      }

      else
      {
        v57 = v48;
        v59 = v83;
        (*(v54 + 32))(v83, v56, v55);
        sub_29D8414EC(&qword_2A17B4730, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
        v60 = sub_29D939CB8();
        v61 = v59;
        v48 = v57;
        (v53)(v61, v55);
        LODWORD(v57) = v60 ^ 1;
      }

      v62 = v93;
      sub_29D937838();
      v63 = *(v54 + 16);
      v64 = v85;
      v93 = v48;
      v63(v85, v48, v55);
      v65 = sub_29D937878();
      v66 = sub_29D93A2A8();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v92 = v43;
        v68 = v67;
        v69 = swift_slowAlloc();
        v98[0] = v69;
        *v68 = 136446978;
        v70 = sub_29D93AF08();
        v72 = sub_29D6C2364(v70, v71, v98);
        LODWORD(v91) = v57;
        v57 = v53;
        v73 = v72;

        *(v68 + 4) = v73;
        *(v68 + 12) = 2082;
        *(v68 + 14) = sub_29D6C2364(0x676E616843796164, 0xEC00000029286465, v98);
        *(v68 + 22) = 2080;
        sub_29D8414EC(&qword_2A17B7B10, 255, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
        v74 = sub_29D93AD38();
        v76 = v75;
        (v57)(v64, v55);
        v77 = sub_29D6C2364(v74, v76, v98);
        v53 = v57;
        LOBYTE(v57) = v91;

        *(v68 + 24) = v77;
        *(v68 + 32) = 1024;
        *(v68 + 34) = v57 & 1;
        _os_log_impl(&dword_29D677000, v65, v66, "[%{public}s.%{public}s]: Date changed to %s, journal expired: %{BOOL}d", v68, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v69, -1, -1);
        MEMORY[0x29ED6BE30](v68, -1, -1);
      }

      else
      {

        (v53)(v64, v55);
      }

      (*(v94 + 8))(v62, v95);
      sub_29D83DC58(v57 & 1);

      (v53)(v93, v55);
      sub_29D6A0D34(v97);
      (v53)(v87, v55);
    }

    else
    {
      v58 = v96;
    }
  }
}

void sub_29D83F004()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446466;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD000000000000011, 0x800000029D967800, &v17);
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Stop Observation", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = [objc_opt_self() defaultCenter];
  [v14 removeObserver:v1 name:*MEMORY[0x29EDB8CA8] object:0];

  [*(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_bpjControl) unregisterObserver_];
  [*(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_classificationManager) stopObserving_];
  v15 = *(v1 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observingDateChanges);
  os_unfair_lock_lock((v15 + 20));
  *(v15 + 16) = 0;
  os_unfair_lock_unlock((v15 + 20));
}

void sub_29D83F294(void (**a1)(char *, uint64_t), void *a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v68 = a4;
  v69 = a5;
  v10 = sub_29D937898();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v19 = &v65 - v18;
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v65 - v21;
  if (a2)
  {
    v23 = a2;
    v24 = sub_29D933588();
    v25 = [v24 hk_isDatabaseAccessibilityError];

    if (v25)
    {
      sub_29D937838();
      v26 = sub_29D937878();
      v27 = sub_29D93A2A8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v66 = a3;
        v67 = v11;
        v30 = v29;
        v70 = v29;
        *v28 = 136446210;
        v31 = a6;
        v32 = sub_29D93AF08();
        v34 = sub_29D6C2364(v32, v33, &v70);

        *(v28 + 4) = v34;
        a6 = v31;
        _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s]: Failed to fetch active journal because database is inaccessible, retrying when unlocked.", v28, 0xCu);
        sub_29D69417C(v30);
        MEMORY[0x29ED6BE30](v30, -1, -1);
        MEMORY[0x29ED6BE30](v28, -1, -1);

        v67[1](v22, v10);
      }

      else
      {

        v11[1](v22, v10);
      }

      sub_29D934448();
      sub_29D934438();
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      v63 = v68;
      v64 = v69;
      v62[2] = v61;
      v62[3] = v63;
      v62[4] = v64;
      v62[5] = a6;

      sub_29D934428();
    }

    else
    {
      sub_29D937838();
      v49 = a2;
      v50 = sub_29D937878();
      v51 = sub_29D93A288();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v67 = v11;
        v53 = v52;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v70 = v55;
        *v53 = 136446466;
        v56 = sub_29D93AF08();
        v58 = sub_29D6C2364(v56, v57, &v70);

        *(v53 + 4) = v58;
        *(v53 + 12) = 2112;
        v59 = a2;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 14) = v60;
        *v54 = v60;
        _os_log_impl(&dword_29D677000, v50, v51, "[%{public}s]: Failed to fetch active journal due to unknown error: %@.", v53, 0x16u);
        sub_29D6ACA3C(v54);
        MEMORY[0x29ED6BE30](v54, -1, -1);
        sub_29D69417C(v55);
        MEMORY[0x29ED6BE30](v55, -1, -1);
        MEMORY[0x29ED6BE30](v53, -1, -1);

        v67[1](v19, v10);
      }

      else
      {

        v11[1](v19, v10);
      }

      v68(0);
    }
  }

  else
  {
    sub_29D937838();
    v35 = a1;
    v36 = sub_29D937878();
    v37 = sub_29D93A2A8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67 = a1;
      v40 = v39;
      v66 = swift_slowAlloc();
      v70 = v66;
      *v38 = 136446466;
      v41 = sub_29D93AF08();
      v42 = v11;
      v44 = v10;
      v45 = sub_29D6C2364(v41, v43, &v70);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2112;
      *(v38 + 14) = v35;
      *v40 = v67;
      v46 = v35;
      _os_log_impl(&dword_29D677000, v36, v37, "[%{public}s]: Successfully fetched the active journal: %@.", v38, 0x16u);
      sub_29D6ACA3C(v40);
      v47 = v40;
      a1 = v67;
      MEMORY[0x29ED6BE30](v47, -1, -1);
      v48 = v66;
      sub_29D69417C(v66);
      MEMORY[0x29ED6BE30](v48, -1, -1);
      MEMORY[0x29ED6BE30](v38, -1, -1);

      v42[1](v15, v44);
    }

    else
    {

      v11[1](v15, v10);
    }

    v68(a1);
  }
}

void sub_29D83F8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_29D937898();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v11 = sub_29D937878();
  v12 = sub_29D93A2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27[0] = v15;
    *v14 = 136446210;
    v16 = sub_29D93AF08();
    v18 = sub_29D6C2364(v16, v17, v27);
    v25 = v6;
    v19 = a2;
    v20 = a3;
    v21 = v18;

    *(v14 + 4) = v21;
    a3 = v20;
    a2 = v19;
    _os_log_impl(&dword_29D677000, v11, v12, "[%{public}s]: Retrying fetching active journal now that device is unlocked.", v14, 0xCu);
    sub_29D69417C(v15);
    MEMORY[0x29ED6BE30](v15, -1, -1);
    MEMORY[0x29ED6BE30](v14, -1, -1);

    (*(v26 + 8))(v10, v25);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_29D83D444(a2, a3);
  }
}

uint64_t sub_29D83FAC8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for BloodPressureJournalAnchor(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_cachedAnchor);
  v14 = a1;
  v15 = ObjectType;
  v10 = *(*v9 + *MEMORY[0x29EDC9DE8] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v9 + v11));
  sub_29D8414C4(v9 + v10, v8);
  os_unfair_lock_unlock((v9 + v11));
  sub_29D83CC88(v8);
  return sub_29D840B8C(v8);
}

uint64_t sub_29D83FC6C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for BloodPressureJournalAnchor(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_cachedAnchor);
  v9 = *(*v8 + *MEMORY[0x29EDC9DE8] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_29D83D9F0(v8 + v9, a1, v7);
  os_unfair_lock_unlock((v8 + v10));
  sub_29D83CC88(v7);
  return sub_29D840B8C(v7);
}

uint64_t type metadata accessor for BloodPressureJournalAnchor(uint64_t a1)
{
  result = qword_2A17B6220;
  if (!qword_2A17B6220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D83FF60(uint64_t a1)
{
  sub_29D840AAC(319, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
  if (v1 <= 0x3F)
  {
    sub_29D840048(319, &unk_2A17B6230, type metadata accessor for HKBloodPressureClassificationGuidelines, MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D840048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29D8401E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, objc_class *a8, uint64_t a9, uint64_t a10)
{
  v49 = a6;
  v50 = a7;
  v51 = a5;
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v46 = a2;
  v43 = a8;
  v44 = a10;
  v11 = type metadata accessor for BloodPressureJournalAnchor(0);
  v12 = v11 - 8;
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29D93A458();
  v16 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42, v17);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D93A438();
  MEMORY[0x2A1C7C4A8](v20, v21);
  v22 = sub_29D939998();
  MEMORY[0x2A1C7C4A8](v22 - 8, v23);
  v24 = objc_allocWithZone(a8);
  v41 = OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_queue;
  v25 = sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v40[0] = "observeDateChanges(for:)";
  v40[1] = v25;
  sub_29D939988();
  v53 = MEMORY[0x29EDCA190];
  sub_29D8414EC(&unk_2A1A24900, 255, MEMORY[0x29EDCA288], MEMORY[0x29EDCA290]);
  sub_29D840048(0, &unk_2A1A24970, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29D840C20();
  sub_29D93A888();
  (*(v16 + 104))(v19, *MEMORY[0x29EDCA2A8], v42);
  *&v24[v41] = sub_29D93A498();
  v26 = OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observingDateChanges;
  sub_29D840CA8(0);
  v27 = swift_allocObject();
  *(v27 + 20) = 0;
  *(v27 + 16) = 0;
  *&v24[v26] = v27;
  v28 = OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_cachedAnchor;
  sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
  sub_29D939B18();
  v29 = &v15[*(v12 + 28)];
  *v29 = 0;
  v29[8] = 1;
  v15[*(v12 + 32)] = 0;
  sub_29D840D08(0);
  v30 = swift_allocObject();
  *(v30 + ((*(*v30 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_29D840D70(v15, v30 + *(*v30 + *MEMORY[0x29EDC9DE8] + 16));
  *&v24[v28] = v30;
  v31 = &v24[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_context];
  v32 = v44;
  *v31 = v45;
  v31[1] = v32;
  v33 = &v24[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_observer];
  v34 = v47;
  *v33 = v46;
  v33[1] = v34;
  v35 = v49;
  *&v24[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_bpjControl] = v48;
  v36 = &v24[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_todayProvider];
  v38 = v50;
  v37 = v51;
  *v36 = v35;
  v36[1] = v38;
  *&v24[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_classificationManager] = v37;
  v52.receiver = v24;
  v52.super_class = v43;
  return objc_msgSendSuper2(&v52, sel_init);
}

uint64_t sub_29D840658(uint64_t a1, uint64_t a2)
{
  sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
  sub_29D840EFC();
  if ((sub_29D939B08() & 1) == 0)
  {
LABEL_8:
    LOBYTE(v9) = 0;
    return v9 & 1;
  }

  v4 = type metadata accessor for BloodPressureJournalAnchor(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if ((v7 & 1) == 0)
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v9)
  {
LABEL_9:
    LOBYTE(v9) = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_29D840718(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4A657669746361 && a2 == 0xED00006C616E7275;
  if (v4 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000029D9679B0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x456C616E72756F6ALL && a2 == 0xEE00646572697078)
  {

    return 2;
  }

  else
  {
    v6 = sub_29D93AD78();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29D840848()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446466;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD000000000000026, 0x800000029D967820, &v18);
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Beginning Observation", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = v1;
  sub_29D83D444(sub_29D840A80, v14);
}

uint64_t sub_29D840A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D840AAC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D840B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureJournalAnchor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D840B8C(uint64_t a1)
{
  v2 = type metadata accessor for BloodPressureJournalAnchor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D840C20()
{
  result = qword_2A1A24960;
  if (!qword_2A1A24960)
  {
    sub_29D840048(255, &unk_2A1A24970, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24960);
  }

  return result;
}

void sub_29D840CA8(uint64_t a1)
{
  if (!qword_2A17B6268)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_29D93AA88();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6268);
    }
  }
}

void sub_29D840D08(uint64_t a1)
{
  if (!qword_2A17B6270)
  {
    type metadata accessor for BloodPressureJournalAnchor(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_29D93AA88();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B6270);
    }
  }
}

uint64_t sub_29D840D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureJournalAnchor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_29D840DD4()
{
  result = qword_2A17B6280;
  if (!qword_2A17B6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6280);
  }

  return result;
}

void sub_29D840E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D840DD4();
    v7 = a3(a1, &type metadata for BloodPressureJournalAnchor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D840E8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29D840AAC(255, &unk_2A17B4B88, &qword_2A1A221D0, 0x29EDC51F0, MEMORY[0x29EDBA218]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D840EFC()
{
  result = qword_2A17B62B0;
  if (!qword_2A17B62B0)
  {
    sub_29D69567C(255, &qword_2A1A221D0, 0x29EDC51F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B62B0);
  }

  return result;
}

uint64_t sub_29D840F64(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_29D937898();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  sub_29D935E88();
  v9 = sub_29D937878();
  v10 = sub_29D93A2A8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136446722;
    v14 = sub_29D93AF08();
    v16 = sub_29D6C2364(v14, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29D6C2364(0xD000000000000021, 0x800000029D967930, &v25);
    *(v12 + 22) = 2080;
    v17 = sub_29D69567C(0, &qword_2A1A221D0, 0x29EDC51F0);
    v18 = MEMORY[0x29ED6A340](a1, v17);
    v20 = sub_29D6C2364(v18, v19, &v25);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s.%{public}s]: Received HKHRBloodPressureJournal update with journal: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);

    (*(v5 + 8))(v8, v24);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  v22 = v2;
  sub_29D83D444(sub_29D8414BC, v21);
}

void sub_29D841210()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937838();
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136446466;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, aBlock);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD00000000000001FLL, 0x800000029D9678F0, aBlock);
    _os_log_impl(&dword_29D677000, v7, v8, "[%{public}s.%{public}s]: Classification guidelines updated", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = *&v1[OBJC_IVAR____TtC5Heart31BloodPressureJournalInputSignal_classificationManager];
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_29D8414B4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D83C0B4;
  aBlock[3] = &unk_2A2448648;
  v16 = _Block_copy(aBlock);
  v17 = v1;

  [v14 currentClassificationGuidelinesWithCompletionHandler_];
  _Block_release(v16);
}

uint64_t sub_29D8414EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_29D841548()
{
  result = qword_2A17B62C0;
  if (!qword_2A17B62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B62C0);
  }

  return result;
}

unint64_t sub_29D8415A0()
{
  result = qword_2A17B62C8;
  if (!qword_2A17B62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B62C8);
  }

  return result;
}

unint64_t sub_29D8415F8()
{
  result = qword_2A17B62D0;
  if (!qword_2A17B62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B62D0);
  }

  return result;
}

id sub_29D84167C()
{
  result = [objc_opt_self() separatorColor];
  qword_2A17D0C58 = result;
  return result;
}

id sub_29D8416B8()
{
  v1 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel);
  }

  else
  {
    v4 = sub_29D841718();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D841718()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v1 = sub_29D939D28();

  [v0 setText_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  [v0 setFont_];

  return v0;
}

id sub_29D84188C()
{
  v1 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    if (qword_2A17B0C80 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29D84195C()
{
  v1 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView;
  v2 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView);
  }

  else
  {
    v4 = sub_29D8419C0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_29D8419C0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_cacheObject);
  v3 = *(a1 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_healthStore);
  v4 = type metadata accessor for AFibBurdenLifeFactorsView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView____lazy_storage___lifeFactorsViews] = 0;
  *&v5[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_cacheObject] = v2;
  *&v5[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_healthStore] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  sub_29D935E88();
  v6 = v3;
  v7 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D784540();
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = a1 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_contentViewDelegate;
  swift_unknownObjectWeakLoadStrong();
  *&v7[OBJC_IVAR____TtC5Heart25AFibBurdenLifeFactorsView_delegate + 8] = *(v8 + 8);
  swift_unknownObjectWeakAssign();
  sub_29D936978();
  return v7;
}

void sub_29D841B18()
{
  v1 = sub_29D8416B8();
  LODWORD(v2) = 1148846080;
  [v1 setContentHuggingPriority:1 forAxis:v2];

  v3 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel;
  LODWORD(v4) = 1148846080;
  [*&v0[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel] setContentCompressionResistancePriority:1 forAxis:v4];
  v42 = objc_opt_self();
  sub_29D6A0C58();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29D94D530;
  v6 = [*&v0[v3] topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [*&v0[v3] leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:16.0];

  *(v5 + 40) = v11;
  v12 = [*&v0[v3] trailingAnchor];
  v13 = [v0 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-16.0];

  *(v5 + 48) = v14;
  v15 = sub_29D84188C();
  v16 = [v15 topAnchor];

  v17 = [*&v0[v3] bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:10.0];

  *(v5 + 56) = v18;
  v19 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule;
  v20 = [*&v0[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule] heightAnchor];
  if (qword_2A17B0C78 != -1)
  {
    swift_once();
  }

  v21 = [v20 constraintEqualToConstant_];

  *(v5 + 64) = v21;
  v22 = [*&v0[v19] leadingAnchor];
  v23 = [*&v0[v3] leadingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v5 + 72) = v24;
  v25 = [*&v0[v19] trailingAnchor];
  v26 = [*&v0[v3] trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v5 + 80) = v27;
  v28 = sub_29D84195C();
  v29 = [v28 topAnchor];

  v30 = [*&v0[v19] bottomAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v5 + 88) = v31;
  v32 = OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView;
  v33 = [*&v0[OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView] bottomAnchor];
  v34 = [v0 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v5 + 96) = v35;
  v36 = [*&v0[v32] leadingAnchor];
  v37 = [v0 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v5 + 104) = v38;
  v39 = [*&v0[v32] trailingAnchor];
  v40 = [v0 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v5 + 112) = v41;
  sub_29D6D37A4();
  v44 = sub_29D939F18();

  [v43 activateConstraints_];
}

void sub_29D84205C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_29D939D28();
    [v2 setAccessibilityIdentifier_];

    v4 = sub_29D8416B8();
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x706972637365442ELL, 0xEC0000006E6F6974);
    v5 = sub_29D939D28();

    [v4 setAccessibilityIdentifier_];
  }
}

id sub_29D84217C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenLifeFactorsTileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D842298()
{
  *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___textLabel) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___horizontalRule) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_contentViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC5Heart29AFibBurdenLifeFactorsTileView_baseIdentifier);
  v3 = sub_29D6C3970(261);
  v4 = v2;
  MEMORY[0x29ED6A240](0x656C69542ELL, 0xE500000000000000);
  *v1 = v3;
  v1[1] = v4;
  sub_29D93AB28();
  __break(1u);
}

uint64_t type metadata accessor for BloodPressureJournalOnboardingEmptyViewController(uint64_t a1)
{
  result = qword_2A17B6318;
  if (!qword_2A17B6318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D842454(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for BloodPressureJournalOnboardingEmptyViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id sub_29D842574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalOnboardingEmptyViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AFibBurdenOnboardingStartViewController(uint64_t a1)
{
  result = qword_2A17B6338;
  if (!qword_2A17B6338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D842654()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AFibBurdenOnboardingStartViewController(0);
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  if (*(v0 + qword_2A17B6330) == 1)
  {

    v2 = [v0 navigationItem];
    [v2 setBackButtonDisplayMode_];

    sub_29D842944();
    if (qword_2A17B0D48 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    v3 = sub_29D939D28();

    sub_29D88BBC8(&unk_2A243E8F8);
    v4 = sub_29D939F18();

    v5 = HKUIJoinStringsForAutomationIdentifier();

    if (v5)
    {
      sub_29D6AA360(aContinuebutton_3);

      v6 = [v1 buttonTray];
      sub_29D9334A8();
      v7 = sub_29D939D28();

      [v6 setCaptionText_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = [v0 navigationItem];
    [v8 setBackButtonDisplayMode_];

    sub_29D842944();
  }
}

void sub_29D8428FC(void *a1)
{
  v1 = a1;
  sub_29D842654();
}

void sub_29D842944()
{
  v1 = v0;
  v2 = v0[qword_2A17B6330];
  v3 = [v1 headerView];
  if (v2 != 1)
  {
    if (qword_2A17B0BD8 != -1)
    {
      swift_once();
    }

    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D959550);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D957120);
    v11 = sub_29D939D28();

    [v3 setAccessibilityIdentifier_];

    v12 = [v1 headerView];
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D959550);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0x656C746954, 0xE500000000000000);
    v13 = sub_29D939D28();

    [v12 setTitleAccessibilityIdentifier_];

    v9 = [v1 headerView];
    sub_29D935E88();
    MEMORY[0x29ED6A240](0x697461637564452ELL, 0xEB000000002E6E6FLL);
    MEMORY[0x29ED6A240](0xD000000000000019, 0x800000029D959550);
    MEMORY[0x29ED6A240](46, 0xE100000000000000);
    MEMORY[0x29ED6A240](0x7470697263736544, 0xEB000000006E6F69);
    v14 = sub_29D939D28();

    goto LABEL_9;
  }

  sub_29D88BBC8(&unk_2A243E7A8);
  v4 = sub_29D939F18();

  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_29D6AA360(&unk_2A243E7C8);
  [v3 setAccessibilityIdentifier_];

  v6 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243E818);
  v7 = sub_29D939F18();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_29D6AA360(aTitle_12);
  [v6 setTitleAccessibilityIdentifier_];

  v9 = [v1 headerView];
  sub_29D88BBC8(&unk_2A243E888);
  v10 = sub_29D939F18();

  v14 = HKUIJoinStringsForAutomationIdentifier();

  if (!v14)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_29D6AA360(aDescription_1);
LABEL_9:
  [v9 setDetailTextAccessibilityIdentifier_];
}

void sub_29D842DE0(char *a1)
{
  v2 = &a1[qword_2A17B6328];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

void sub_29D842EA0(char *a1)
{
  v2 = &a1[qword_2A17B6328];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 16);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

void sub_29D842F60(char *a1)
{
  v2 = &a1[qword_2A17B6328];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 24);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

id sub_29D843060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenOnboardingStartViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D8430E4(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B6328 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D843130()
{
  v1 = [v0 navigationItem];
  sub_29D69567C(0, &qword_2A17B2B08, 0x29EDC7940);
  sub_29D69567C(0, &qword_2A17B3678, 0x29EDC7908);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D93A738();
  v3 = sub_29D93A2E8();
  [v1 setRightBarButtonItem_];
}

void sub_29D843264(void *a1)
{
  v1 = a1;
  sub_29D843130();
}

void sub_29D8432AC(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

void sub_29D843318(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + qword_2A17B6328 + 8) = 0;
  v7 = swift_unknownObjectWeakInit();
  *(v4 + qword_2A17B6330) = a1;
  *(v7 + 8) = a3;
  swift_unknownObjectWeakAssign();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A2C038;
  v9 = sub_29D939D28();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:{v8, 0xE000000000000000}];

  if (!v10)
  {
    [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  sub_29D9334A8();
  sub_29D88BBC8(&unk_2A243D510);
  v11 = sub_29D939F18();

  v12 = HKUIJoinStringsForAutomationIdentifier();

  if (v12)
  {
    sub_29D6AA360(&unk_2A243D530);
    sub_29D939D68();

    sub_29D936CD8();
  }

  else
  {
    __break(1u);
  }
}

_BYTE *sub_29D8435F4@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (result[8] == 1)
  {
    result = v3;
    v4 = 1;
  }

  else if (v3)
  {
    result = v3;
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

char *sub_29D843650(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject;
  v20 = 0;
  LOBYTE(v21) = 0;
  sub_29D6BE5E8(0);
  swift_allocObject();
  v6 = sub_29D9382D8();
  sub_29D844014(0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  *&v2[v5] = v7;
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDB93D0]) init];
  }

  *&v2[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_manager] = v8;
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v26, sel_init);
  v11 = OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_manager;
  v12 = *&v10[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_manager];
  v13 = v10;
  [v12 setDelegate_];
  [*&v10[v11] startRetrocomputeStatusUpdates];
  v14 = *&v10[v11];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = ObjectType;
  v24 = sub_29D84407C;
  v25 = v16;
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 1107296256;
  v22 = sub_29D6C1F54;
  v23 = &unk_2A2448808;
  v17 = _Block_copy(&v20);
  v18 = v14;

  [v18 retrocomputeStateWithHandler_];
  _Block_release(v17);

  return v13;
}

void sub_29D843854(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = qword_2A1A25718;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_29D937898();
    sub_29D69C6C0(v7, qword_2A1A2C008);
    v8 = v6;
    v9 = sub_29D937878();
    v10 = sub_29D93A2A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v40[0] = v13;
      *v11 = 136446722;
      v14 = sub_29D93AF08();
      v16 = sub_29D6C2364(v14, v15, v40);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2050;
      v17 = [v8 status];

      *(v11 + 14) = v17;
      *(v11 + 22) = 2112;
      *(v11 + 24) = v8;
      *v12 = a1;
      v18 = v8;
      _os_log_impl(&dword_29D677000, v9, v10, "[%{public}s] Received initial state with status %{public}ld: %@", v11, 0x20u);
      sub_29D6ACA3C(v12);
      MEMORY[0x29ED6BE30](v12, -1, -1);
      sub_29D69417C(v13);
      MEMORY[0x29ED6BE30](v13, -1, -1);
      MEMORY[0x29ED6BE30](v11, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = *(Strong + OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject);
      v38 = Strong;

      os_unfair_lock_lock(v37 + 6);

      os_unfair_lock_unlock(v37 + 6);

      v39 = v8;
      sub_29D9382B8();

      return;
    }
  }

  else
  {
    v8 = a2;
    if (!a2)
    {
      return;
    }

    v19 = a2;
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v20 = sub_29D937898();
    sub_29D69C6C0(v20, qword_2A1A2C008);
    v21 = v8;
    v22 = sub_29D937878();
    v23 = sub_29D93A288();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40[0] = v26;
      *v24 = 136446466;
      v27 = sub_29D93AF08();
      v29 = sub_29D6C2364(v27, v28, v40);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      v30 = v8;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v31;
      *v25 = v31;
      _os_log_impl(&dword_29D677000, v22, v23, "[%{public}s] Failed to get initial retrocompute state: %@", v24, 0x16u);
      sub_29D6ACA3C(v25);
      MEMORY[0x29ED6BE30](v25, -1, -1);
      sub_29D69417C(v26);
      MEMORY[0x29ED6BE30](v26, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }

    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v33 = *(v32 + OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject);
      v34 = v32;

      os_unfair_lock_lock(v33 + 6);

      os_unfair_lock_unlock(v33 + 6);

      v35 = v8;
      sub_29D9382B8();
    }
  }
}

id sub_29D843CE4()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_manager] stopRetrocomputeStatusUpdates];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29D843F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_29D843F8C(uint64_t a1)
{
  if (!qword_2A1A21EC0)
  {
    sub_29D6F9FC4(255, &qword_2A1A221A8, &unk_2A1A221B0, 0x29EDB93D8);
    sub_29D6A0CD0();
    v1 = sub_29D93AEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21EC0);
    }
  }
}

void sub_29D844014(uint64_t a1)
{
  if (!qword_2A1A21FB0)
  {
    sub_29D6BE5E8(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_29D93AA88();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21FB0);
    }
  }
}

uint64_t sub_29D844084(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29D84409C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = a1;
  v6 = sub_29D937878();
  v7 = sub_29D93A2A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136446722;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2050;
    v14 = [v5 status];

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    *(v8 + 24) = v5;
    *v9 = v5;
    v15 = v5;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Received new state with status %{public}ld: %@", v8, 0x20u);
    sub_29D6ACA3C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  else
  {
  }

  v16 = *(v2 + OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject);
  os_unfair_lock_lock(v16 + 6);

  os_unfair_lock_unlock(v16 + 6);
  v19 = v5;
  v20 = 0;
  v17 = v5;
  sub_29D9382B8();
}

void sub_29D8442D4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v4 = sub_29D937898();
  sub_29D69C6C0(v4, qword_2A1A2C008);
  v5 = a1;
  v6 = sub_29D937878();
  v7 = sub_29D93A288();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136446466;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Failed to get retrocompute state: %@", v8, 0x16u);
    sub_29D6ACA3C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR____TtC5HeartP33_1983BB941A89CE37AE5E37B88EF7D39A34CMVO2MaxRetrocomputeStatePublisher_subject);
  os_unfair_lock_lock(v16 + 6);

  os_unfair_lock_unlock(v16 + 6);
  v18 = a1;
  v19 = 1;
  v17 = a1;
  sub_29D9382B8();
}

uint64_t type metadata accessor for BloodPressureJournalOnboardingBPCuffAccessViewController(uint64_t a1)
{
  result = qword_2A17B6468;
  if (!qword_2A17B6468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D8445A0()
{
  v1 = v0;
  swift_getObjectType();
  sub_29D6D22BC(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v6 = sub_29D937898();
  sub_29D69C6C0(v6, qword_2A1A2C008);
  v7 = sub_29D937878();
  v8 = sub_29D93A2A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = sub_29D93AF08();
    v13 = sub_29D6C2364(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_29D6C2364(0xD000000000000017, 0x800000029D968040, &v22);
    _os_log_impl(&dword_29D677000, v7, v8, "[%s.%{public}s]: Learn more tapped", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v9, -1, -1);
  }

  v14 = *(v1 + qword_2A17B6458);
  v15 = *(v14 + 32);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;
  LOBYTE(v14) = *(v14 + 40);
  v17 = v15;
  sub_29D8B530C(2, 12, v14, 0, 2);

  sub_29D9336E8();
  v18 = sub_29D9336F8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v5, 1, v18) == 1)
  {
    return sub_29D6D96C0(v5);
  }

  sub_29D9336A8();
  return (*(v19 + 8))(v5, v18);
}

void sub_29D844884(void *a1)
{
  v1 = a1;
  sub_29D8445A0();
}

id sub_29D8448CC()
{
  v1 = qword_2A17B6460;
  v2 = *&v0[qword_2A17B6460];
  if (v2)
  {
    v3 = *&v0[qword_2A17B6460];
  }

  else
  {
    sub_29D844930(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29D844930(void *a1)
{
  v2 = [objc_opt_self() accessoryButton];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemBlueColor];
  [v4 setTintColor_];

  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v6 = sub_29D939D28();

  [v4 setTitle:v6 forState:{0, 0xE000000000000000}];

  [v4 addTarget:a1 action:sel_learnMoreButtonTapped forControlEvents:64];
  sub_29D88BBC8(&unk_2A243E968);
  v7 = sub_29D939F18();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (v8)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v9 = sub_29D939D28();

    [a1 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D844B54()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for BloodPressureJournalOnboardingBPCuffAccessViewController(0);
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v2 = sub_29D939D28();

  sub_29D88BBC8(&unk_2A243E9A8);
  v3 = sub_29D939F18();
  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v5 = sub_29D939D28();

  sub_29D9334A8();
  v6 = sub_29D939D28();

  sub_29D88BBC8(&unk_2A243E9E8);
  v7 = sub_29D939F18();
  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_29D939D68();

  swift_arrayDestroy();
  v9 = sub_29D939D28();

  v10 = [v1 headerView];
  v11 = sub_29D8448CC();
  [v10 addAccessoryButton_];

  v12 = [v1 navigationItem];
  v13 = [v12 rightBarButtonItem];

  if (!v13)
  {
    goto LABEL_8;
  }

  sub_29D88BBC8(&unk_2A243EA28);
  v14 = sub_29D939F18();
  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    sub_29D939D68();

    swift_arrayDestroy();
    v16 = sub_29D939D28();

    [v13 setAccessibilityIdentifier_];

LABEL_8:
    v17 = [v1 scrollView];
    sub_29D88BBC8(&unk_2A243EA68);
    v18 = sub_29D939F18();
    v19 = HKUIJoinStringsForAutomationIdentifier();

    if (v19)
    {
      sub_29D939D68();

      swift_arrayDestroy();
      v20 = sub_29D939D28();

      [v17 setAccessibilityIdentifier_];

      v21 = [v1 headerView];
      sub_29D88BBC8(&unk_2A243EAA8);
      v22 = sub_29D939F18();
      v23 = HKUIJoinStringsForAutomationIdentifier();

      if (v23)
      {
        sub_29D939D68();

        swift_arrayDestroy();
        v24 = sub_29D939D28();

        [v21 setTitleAccessibilityIdentifier_];

        v25 = [v1 headerView];
        sub_29D88BBC8(&unk_2A243EAE8);
        v26 = sub_29D939F18();
        v27 = HKUIJoinStringsForAutomationIdentifier();

        if (v27)
        {
          sub_29D939D68();

          swift_arrayDestroy();
          v28 = sub_29D939D28();

          [v25 setDetailTextAccessibilityIdentifier_];

          return;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

void sub_29D8451B0(void *a1)
{
  v1 = a1;
  sub_29D844B54();
}

void sub_29D8451F8(void *a1)
{
  v1 = a1;
  sub_29D845248(0, 9);
}

uint64_t sub_29D845248(char a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2;
  v2[qword_2A17B6448] = a1;
  v5 = *&v2[qword_2A17B6458];
  v6 = *(v5 + 32);
  type metadata accessor for BloodPressureJournalOnboardingAnalyticsUtilities();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  LOBYTE(v5) = *(v5 + 40);
  v8 = v6;
  sub_29D8B530C(2, v3, v5, 0, 2);

  v10 = *&v2[qword_2A17B6450];
  if (v10)
  {
    swift_unknownObjectRetain();
    sub_29D8A47B4(v4, v10);

    return sub_29D936978();
  }

  return result;
}

void sub_29D845328(void *a1)
{
  v1 = a1;
  sub_29D845248(1, 8);
}

void sub_29D8453A8()
{
  sub_29D936978();

  v1 = *(v0 + qword_2A17B6460);
}

id sub_29D8453F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalOnboardingBPCuffAccessViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D845430(uint64_t a1)
{
  sub_29D936978();

  v2 = *(a1 + qword_2A17B6460);
}

uint64_t sub_29D845494(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B6450);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D8454B0(uint64_t a1)
{
  *(v1 + qword_2A17B6448) = 0;
  v2 = (v1 + qword_2A17B6450);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_2A17B6460) = 0;
  *(v1 + qword_2A17B6458) = a1;
  objc_allocWithZone(type metadata accessor for BloodPressureJournalOnboardingEmptyViewController(0));
  sub_29D935F88();
  swift_allocObject();

  sub_29D935F98();
  sub_29D936D88();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D74059C();

  return sub_29D936A98();
}

void sub_29D845690(uint64_t a1)
{
  sub_29D84A440(319, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

unint64_t sub_29D845758(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD00000000000001BLL;
    if (a1 == 2)
    {
      v4 = 0xD00000000000001ALL;
    }

    v5 = 0xD000000000000011;
    if (a1)
    {
      v5 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x6E6F697463416F6ELL;
    if (a1 == 7)
    {
      v1 = 0xD000000000000023;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000022;
    }

    v2 = 0xD00000000000001FLL;
    if (a1 == 4)
    {
      v2 = 0xD00000000000001DLL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_29D84588C(void *a1)
{
  v2 = MEMORY[0x29EDC9E88];
  sub_29D84B3A4(0, &qword_2A17B6590, sub_29D84B05C, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO18NoActionCodingKeysON, MEMORY[0x29EDC9E88]);
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v88 = &v70 - v5;
  sub_29D84B3A4(0, &qword_2A17B6598, sub_29D84B0B0, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO45OpenSeedExpiredKnowledgeBaseArticleCodingKeysON, v2);
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x2A1C7C4A8](v6, v7);
  v85 = &v70 - v8;
  sub_29D84B3A4(0, &qword_2A17B65A0, sub_29D84B104, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO44OpenRegionGateKnowledgeBaseArticleCodingKeysON, v2);
  v84 = v9;
  v83 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v82 = &v70 - v11;
  sub_29D84B3A4(0, &qword_2A17B65A8, sub_29D84B158, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO41OpenGeneralKnowledgeBaseArticleCodingKeysON, v2);
  v81 = v12;
  v80 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v13);
  v79 = &v70 - v14;
  sub_29D84B3A4(0, &qword_2A17B65B0, sub_29D84B1AC, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO39DeepLinkToWristDetectSettingsCodingKeysON, v2);
  v78 = v15;
  v77 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v76 = &v70 - v17;
  sub_29D84B3A4(0, &qword_2A17B65B8, sub_29D84B200, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO37DeepLinkToHeartRateSettingsCodingKeysON, v2);
  v98 = *(v18 - 8);
  v99 = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v97 = &v70 - v20;
  sub_29D84B3A4(0, &qword_2A17B65C0, sub_29D84B254, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO36PushEnabledFeatureSettingsCodingKeysON, v2);
  v75 = v21;
  v72 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v96 = &v70 - v23;
  sub_29D84B3A4(0, &qword_2A17B65C8, sub_29D84B2A8, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO32PresentFeatureSettingsCodingKeysON, v2);
  v74 = v24;
  v71 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v25);
  v95 = &v70 - v26;
  v91 = _s14descr2A243C641C15SettingsContentVMa(0);
  v28 = MEMORY[0x2A1C7C4A8](v91, v27);
  v94 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v93 = &v70 - v31;
  sub_29D84B3A4(0, &qword_2A17B65D0, sub_29D84B2FC, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO27PresentOnboardingCodingKeysON, v2);
  v73 = v32;
  v92 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32, v33);
  v35 = &v70 - v34;
  v36 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  MEMORY[0x2A1C7C4A8](v36, v37);
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D84B3A4(0, &qword_2A17B65D8, sub_29D84B350, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO10CodingKeysON, v2);
  v41 = v40;
  v102 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v42);
  v44 = &v70 - v43;
  sub_29D693E2C(a1, a1[3]);
  sub_29D84B350();
  v101 = v44;
  sub_29D93AED8();
  sub_29D84AD5C(v100, v39, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v107 = 4;
        sub_29D84B1AC();
        v61 = v76;
        v46 = v101;
        sub_29D93ACA8();
        v62 = *(v77 + 8);
        v63 = v61;
        v64 = &v112;
      }

      else
      {
        v108 = 5;
        sub_29D84B158();
        v69 = v79;
        v46 = v101;
        sub_29D93ACA8();
        v62 = *(v80 + 8);
        v63 = v69;
        v64 = &v113;
      }

      v62(v63, *(v64 - 32));
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v109 = 6;
      sub_29D84B104();
      v65 = v82;
      v46 = v101;
      sub_29D93ACA8();
      (*(v83 + 8))(v65, v84);
    }

    else
    {
      v46 = v101;
      if (EnumCaseMultiPayload == 7)
      {
        v110 = 7;
        sub_29D84B0B0();
        v47 = v85;
        sub_29D93ACA8();
        v49 = v86;
        v48 = v87;
      }

      else
      {
        v111 = 8;
        sub_29D84B05C();
        v47 = v88;
        sub_29D93ACA8();
        v49 = v89;
        v48 = v90;
      }

      (*(v49 + 8))(v47, v48);
    }

    return (*(v102 + 8))(v46, v41);
  }

  v50 = v92;
  v51 = v95;
  v52 = v97;
  v53 = v98;
  v54 = v96;
  v55 = v99;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v103 = 0;
      sub_29D84B2FC();
      v46 = v101;
      sub_29D93ACA8();
      (*(v50 + 8))(v35, v73);
    }

    else
    {
      v106 = 3;
      sub_29D84B200();
      v68 = v52;
      v46 = v101;
      sub_29D93ACA8();
      (*(v53 + 8))(v68, v55);
    }

    return (*(v102 + 8))(v46, v41);
  }

  v56 = v41;
  if (EnumCaseMultiPayload)
  {
    v57 = v94;
    sub_29D84A5A4(v39, v94, _s14descr2A243C641C15SettingsContentVMa);
    v105 = 2;
    sub_29D84B254();
    v59 = v101;
    sub_29D93ACA8();
    sub_29D84A3D8(&qword_2A17B65E0, _s14descr2A243C641C15SettingsContentVMa, &unk_29D950354);
    v66 = v75;
    sub_29D93AD18();
    (*(v72 + 8))(v54, v66);
  }

  else
  {
    v57 = v93;
    sub_29D84A5A4(v39, v93, _s14descr2A243C641C15SettingsContentVMa);
    v104 = 1;
    sub_29D84B2A8();
    v58 = v51;
    v59 = v101;
    sub_29D93ACA8();
    sub_29D84A3D8(&qword_2A17B65E0, _s14descr2A243C641C15SettingsContentVMa, &unk_29D950354);
    v60 = v74;
    sub_29D93AD18();
    (*(v71 + 8))(v58, v60);
  }

  sub_29D84B470(v57, _s14descr2A243C641C15SettingsContentVMa);
  return (*(v102 + 8))(v59, v56);
}

uint64_t sub_29D8464F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = MEMORY[0x29EDC9E80];
  sub_29D84B3A4(0, &qword_2A17B64E8, sub_29D84B05C, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO18NoActionCodingKeysON, MEMORY[0x29EDC9E80]);
  v110 = *(v4 - 8);
  v111 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v121 = &v90 - v6;
  sub_29D84B3A4(0, &qword_2A17B64F8, sub_29D84B0B0, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO45OpenSeedExpiredKnowledgeBaseArticleCodingKeysON, v3);
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v117 = &v90 - v9;
  sub_29D84B3A4(0, &qword_2A17B6508, sub_29D84B104, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO44OpenRegionGateKnowledgeBaseArticleCodingKeysON, v3);
  v107 = v10;
  v106 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v11);
  v116 = &v90 - v12;
  sub_29D84B3A4(0, &qword_2A17B6518, sub_29D84B158, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO41OpenGeneralKnowledgeBaseArticleCodingKeysON, v3);
  v105 = v13;
  v104 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v14);
  v120 = &v90 - v15;
  sub_29D84B3A4(0, &qword_2A17B6528, sub_29D84B1AC, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO39DeepLinkToWristDetectSettingsCodingKeysON, v3);
  v103 = v16;
  v102 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16, v17);
  v115 = &v90 - v18;
  sub_29D84B3A4(0, &qword_2A17B6538, sub_29D84B200, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO37DeepLinkToHeartRateSettingsCodingKeysON, v3);
  v99 = v19;
  v98 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v20);
  v113 = &v90 - v21;
  sub_29D84B3A4(0, &qword_2A17B6548, sub_29D84B254, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO36PushEnabledFeatureSettingsCodingKeysON, v3);
  v101 = v22;
  v100 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22, v23);
  v114 = &v90 - v24;
  sub_29D84B3A4(0, &qword_2A17B6558, sub_29D84B2A8, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO32PresentFeatureSettingsCodingKeysON, v3);
  v97 = v25;
  v96 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v119 = &v90 - v27;
  sub_29D84B3A4(0, &qword_2A17B6568, sub_29D84B2FC, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO27PresentOnboardingCodingKeysON, v3);
  v95 = v28;
  v94 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v29);
  v112 = &v90 - v30;
  sub_29D84B3A4(0, &qword_2A17B6578, sub_29D84B350, &_s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO10CodingKeysON, v3);
  v32 = v31;
  v118 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v35 = &v90 - v34;
  v36 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v38 = MEMORY[0x2A1C7C4A8](v36, v37);
  v40 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x2A1C7C4A8](v38, v41);
  v44 = &v90 - v43;
  MEMORY[0x2A1C7C4A8](v42, v45);
  v47 = &v90 - v46;
  v48 = a1[3];
  v123 = a1;
  sub_29D693E2C(a1, v48);
  sub_29D84B350();
  v49 = v124;
  sub_29D93AEC8();
  if (v49)
  {
    return sub_29D69417C(v123);
  }

  v91 = v44;
  v92 = v40;
  v51 = v119;
  v50 = v120;
  v124 = 0;
  v52 = v121;
  v53 = v36;
  v93 = v47;
  v54 = v118;
  v55 = v122;
  v56 = sub_29D93AC98();
  v57 = (2 * *(v56 + 16)) | 1;
  v125 = v56;
  v126 = v56 + 32;
  v127 = 0;
  v128 = v57;
  v58 = sub_29D872890();
  v59 = v32;
  v60 = v35;
  if (v58 == 9 || v127 != v128 >> 1)
  {
    v67 = sub_29D93AA78();
    swift_allocError();
    v69 = v68;
    sub_29D6CA748(0);
    *v69 = v53;
    v70 = v59;
    sub_29D93AC18();
    sub_29D93AA58();
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x29EDC9DB8], v67);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v58 > 3u)
  {
    if (v58 <= 5u)
    {
      v61 = v55;
      if (v58 == 4)
      {
        v129 = 4;
        sub_29D84B1AC();
        v79 = v115;
        v64 = v59;
        v80 = v124;
        sub_29D93AC08();
        if (!v80)
        {
          (*(v102 + 8))(v79, v103);
          (*(v54 + 8))(v60, v59);
          sub_29D936978();
          v66 = v93;
          swift_storeEnumTagMultiPayload();
          goto LABEL_38;
        }
      }

      else
      {
        v129 = 5;
        sub_29D84B158();
        v87 = v50;
        v64 = v59;
        v88 = v124;
        sub_29D93AC08();
        if (!v88)
        {
          (*(v104 + 8))(v87, v105);
          (*(v54 + 8))(v60, v59);
          sub_29D936978();
          v66 = v93;
          swift_storeEnumTagMultiPayload();
          goto LABEL_38;
        }
      }
    }

    else
    {
      v61 = v55;
      v62 = v54;
      if (v58 != 6)
      {
        if (v58 == 7)
        {
          v129 = 7;
          sub_29D84B0B0();
          v63 = v117;
          v64 = v59;
          v65 = v124;
          sub_29D93AC08();
          if (!v65)
          {
            (*(v108 + 8))(v63, v109);
            (*(v54 + 8))(v60, v59);
            sub_29D936978();
            v66 = v93;
            swift_storeEnumTagMultiPayload();
LABEL_38:
            v89 = v123;
            goto LABEL_39;
          }

          goto LABEL_25;
        }

        v129 = 8;
        sub_29D84B05C();
        v76 = v59;
        v86 = v124;
        sub_29D93AC08();
        if (!v86)
        {
          (*(v110 + 8))(v52, v111);
          (*(v62 + 8))(v60, v59);
          sub_29D936978();
          v66 = v93;
          swift_storeEnumTagMultiPayload();
          goto LABEL_38;
        }

LABEL_31:
        (*(v62 + 8))(v60, v76);
        goto LABEL_12;
      }

      v129 = 6;
      sub_29D84B104();
      v81 = v116;
      v64 = v59;
      v82 = v124;
      sub_29D93AC08();
      if (!v82)
      {
        (*(v106 + 8))(v81, v107);
        (*(v54 + 8))(v60, v59);
        sub_29D936978();
        v66 = v93;
        swift_storeEnumTagMultiPayload();
        goto LABEL_38;
      }
    }

LABEL_25:
    (*(v54 + 8))(v60, v64);
    goto LABEL_12;
  }

  if (v58 <= 1u)
  {
    v61 = v55;
    v72 = v124;
    if (!v58)
    {
      v129 = 0;
      sub_29D84B2FC();
      v73 = v112;
      v64 = v59;
      sub_29D93AC08();
      if (!v72)
      {
        (*(v94 + 8))(v73, v95);
        (*(v54 + 8))(v60, v59);
        sub_29D936978();
        v66 = v93;
        swift_storeEnumTagMultiPayload();
        goto LABEL_38;
      }

      goto LABEL_25;
    }

    v121 = v53;
    v129 = 1;
    sub_29D84B2A8();
    v70 = v59;
    sub_29D93AC08();
    if (!v72)
    {
      v124 = v59;
      _s14descr2A243C641C15SettingsContentVMa(0);
      sub_29D84A3D8(&qword_2A17B6588, _s14descr2A243C641C15SettingsContentVMa, &unk_29D95037C);
      v83 = v91;
      v84 = v97;
      sub_29D93AC88();
      (*(v96 + 8))(v51, v84);
      (*(v54 + 8))(v60, v124);
      sub_29D936978();
      swift_storeEnumTagMultiPayload();
      v66 = v93;
      sub_29D84A5A4(v83, v93, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      goto LABEL_38;
    }

LABEL_11:
    (*(v54 + 8))(v60, v70);
LABEL_12:
    sub_29D936978();
    return sub_29D69417C(v123);
  }

  v62 = v54;
  v74 = v124;
  if (v58 == 2)
  {
    v129 = 2;
    sub_29D84B254();
    v75 = v114;
    v76 = v59;
    sub_29D93AC08();
    if (v74)
    {
      goto LABEL_31;
    }

    v124 = v59;
    _s14descr2A243C641C15SettingsContentVMa(0);
    sub_29D84A3D8(&qword_2A17B6588, _s14descr2A243C641C15SettingsContentVMa, &unk_29D95037C);
    v77 = v92;
    v78 = v101;
    sub_29D93AC88();
    (*(v100 + 8))(v75, v78);
    (*(v62 + 8))(v60, v124);
    sub_29D936978();
    swift_storeEnumTagMultiPayload();
    v66 = v93;
    sub_29D84A5A4(v77, v93, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  }

  else
  {
    v129 = 3;
    sub_29D84B200();
    v85 = v113;
    v76 = v59;
    sub_29D93AC08();
    if (v74)
    {
      goto LABEL_31;
    }

    (*(v98 + 8))(v85, v99);
    (*(v62 + 8))(v60, v59);
    sub_29D936978();
    v66 = v93;
    swift_storeEnumTagMultiPayload();
  }

  v89 = v123;
  v61 = v55;
LABEL_39:
  sub_29D84A5A4(v66, v61, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  return sub_29D69417C(v89);
}

uint64_t sub_29D84761C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D84B3A4(0, &qword_2A17B64D8, sub_29D84B008, &_s14descr2A243C641C13ActionHandlerC8UserDataV10CodingKeysON, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v19 - v9;
  v11 = _s14descr2A243C641C13ActionHandlerC8UserDataVMa(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D693E2C(a1, a1[3]);
  sub_29D84B008();
  v15 = v23;
  sub_29D93AEC8();
  if (!v15)
  {
    v16 = v21;
    sub_29D84A3D8(&qword_2A17B64E0, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa, &unk_29D94D91C);
    v17 = v22;
    sub_29D93AC88();
    (*(v16 + 8))(v10, v7);
    sub_29D84A5A4(v17, v14, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    sub_29D84A5A4(v14, v20, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  }

  return sub_29D69417C(a1);
}

uint64_t sub_29D8478DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D84AA7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D847910(uint64_t a1)
{
  v2 = sub_29D84B350();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D84794C(uint64_t a1)
{
  v2 = sub_29D84B350();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847988(uint64_t a1)
{
  v2 = sub_29D84B200();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D8479C4(uint64_t a1)
{
  v2 = sub_29D84B200();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847A00(uint64_t a1)
{
  v2 = sub_29D84B1AC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847A3C(uint64_t a1)
{
  v2 = sub_29D84B1AC();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847A78(uint64_t a1)
{
  v2 = sub_29D84B05C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847AB4(uint64_t a1)
{
  v2 = sub_29D84B05C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847AF0(uint64_t a1)
{
  v2 = sub_29D84B158();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847B2C(uint64_t a1)
{
  v2 = sub_29D84B158();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847B68(uint64_t a1)
{
  v2 = sub_29D84B104();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847BA4(uint64_t a1)
{
  v2 = sub_29D84B104();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847BE0(uint64_t a1)
{
  v2 = sub_29D84B0B0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847C1C(uint64_t a1)
{
  v2 = sub_29D84B0B0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847C58(uint64_t a1)
{
  v2 = sub_29D84B2A8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847C94(uint64_t a1)
{
  v2 = sub_29D84B2A8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847CD0(uint64_t a1)
{
  v2 = sub_29D84B2FC();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847D0C(uint64_t a1)
{
  v2 = sub_29D84B2FC();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29D847D48(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x800000029D968260 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_29D847DDC(uint64_t a1)
{
  v2 = sub_29D84B254();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847E18(uint64_t a1)
{
  v2 = sub_29D84B254();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847E88(uint64_t a1)
{
  v2 = sub_29D84B008();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D847EC4(uint64_t a1)
{
  v2 = sub_29D84B008();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D847F18(void *a1)
{
  sub_29D84B3A4(0, &qword_2A17B64C0, sub_29D84B008, &_s14descr2A243C641C13ActionHandlerC8UserDataV10CodingKeysON, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v9 - v6;
  sub_29D693E2C(a1, a1[3]);
  sub_29D84B008();
  sub_29D93AED8();
  _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  sub_29D84A3D8(&qword_2A17B64D0, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa, &unk_29D94D8F4);
  sub_29D93AD18();
  return (*(v4 + 8))(v7, v3);
}

id sub_29D8480C4()
{
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_2A17B6478;
  if (*(v0 + qword_2A17B6478))
  {
    v7 = *(v0 + qword_2A17B6478);
  }

  else
  {
    v8 = *MEMORY[0x29EDBA6B0];
    v9 = v0;
    sub_29D936B88();
    sub_29D936608();
    (*(v2 + 8))(v5, v1);
    sub_29D693E2C(v14, v14[3]);
    v10 = sub_29D936588();
    v11 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:v8 healthStore:v10];

    sub_29D69417C(v14);
    *(v9 + v6) = v11;
    v7 = v11;
    sub_29D936978();
  }

  swift_unknownObjectRetain();
  return v7;
}

uint64_t sub_29D848244@<X0>(void *a1@<X8>)
{
  v3 = qword_2A17B6480;
  swift_beginAccess();
  sub_29D7C0420(v1 + v3, &v5);
  if (v6)
  {
    return sub_29D679D3C(&v5, a1);
  }

  sub_29D7C0518(&v5);
  sub_29D8482FC(a1);
  sub_29D6945AC(a1, &v5);
  swift_beginAccess();
  sub_29D772BC0(&v5, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_29D8482FC@<X0>(void *a1@<X8>)
{
  v2 = sub_29D936638();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  (*(v3 + 8))(v6, v2);
  sub_29D693E2C(v14, v14[3]);
  v7 = sub_29D936588();
  v8 = [v7 profileIdentifier];
  v9 = [v8 type];

  if (v9 == 1)
  {
    v10 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v7];

    sub_29D69417C(v14);
    if (v10)
    {
      result = sub_29D6B8230();
      v12 = MEMORY[0x29EDC2EA8];
      a1[3] = result;
      a1[4] = v12;
      *a1 = v10;
      return result;
    }
  }

  else
  {

    sub_29D69417C(v14);
  }

  result = sub_29D93AB28();
  __break(1u);
  return result;
}

uint64_t sub_29D8484EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29D84A440(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v20[-v14];
  v16 = qword_2A17B6488;
  swift_beginAccess();
  sub_29D84ADCC(v1 + v16, v15);
  v17 = sub_29D934C58();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    return (*(v18 + 32))(a1, v15, v17);
  }

  sub_29D84A4B4(v15, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  sub_29D936B88();
  sub_29D9347B8();
  (*(v4 + 8))(v7, v3);
  (*(v18 + 16))(v12, a1, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  swift_beginAccess();
  sub_29D84AE4C(v12, v1 + v16);
  return swift_endAccess();
}

uint64_t sub_29D848788()
{
  ObjectType = swift_getObjectType();
  v159 = sub_29D9346B8();
  v157 = *(v159 - 8);
  MEMORY[0x2A1C7C4A8](v159, v1);
  v156 = &v150 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69C75C();
  v154 = *(v3 - 8);
  v155 = v3;
  MEMORY[0x2A1C7C4A8](v3, v4);
  v153 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D934C58();
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v161 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s14descr2A243C641C15SettingsContentVMa(0);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  v160 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v158 = &v150 - v15;
  MEMORY[0x2A1C7C4A8](v14, v16);
  v165 = (&v150 - v17);
  v152 = type metadata accessor for AFibBurdenOnboardingPresentationContext(0);
  v19 = MEMORY[0x2A1C7C4A8](v152, v18);
  v162 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v163 = &v150 - v22;
  v171 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  MEMORY[0x2A1C7C4A8](v171, v23);
  v172 = (&v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_29D936638();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x2A1C7C4A8](v25, v27);
  v151 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = &v150 - v31;
  sub_29D84A440(0, &qword_2A17B64A0, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  MEMORY[0x2A1C7C4A8](v33 - 8, v34);
  v36 = &v150 - v35;
  v37 = _s14descr2A243C641C13ActionHandlerC8UserDataVMa(0);
  v173 = *(v37 - 8);
  v38 = v173[8];
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v170 = (&v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v40, v41);
  v43 = &v150 - v42;
  v167 = v0;
  sub_29D936B88();
  sub_29D84A3D8(&qword_2A17B64A8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D944);
  sub_29D84A3D8(&qword_2A17B18F8, _s14descr2A243C641C13ActionHandlerC8UserDataVMa, &unk_29D94D96C);
  sub_29D936628();
  v44 = *(v26 + 8);
  v166 = v32;
  v168 = v26 + 8;
  v169 = v25;
  v45 = v25;
  v46 = v173;
  v44(v32, v45);
  if (v46[6](v36, 1, v37) != 1)
  {
    v49 = v44;
    sub_29D84A5A4(v36, v43, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v50, qword_2A1A2BF58);
    v51 = v170;
    sub_29D84AD5C(v43, v170, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    v52 = *(v46 + 80);
    v164 = v43;
    v53 = (v52 + 16) & ~v52;
    v54 = (v38 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v56 = v55 + v53;
    v57 = v164;
    sub_29D84A5A4(v51, v56, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
    *(v55 + v54) = ObjectType;
    v186[0] = 0;
    sub_29D9371C8();

    v58 = v172;
    sub_29D84AD5C(v57, v172, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v60 = [objc_opt_self() remoteDisabledLinkURL];
          goto LABEL_27;
        }

        if (EnumCaseMultiPayload == 7)
        {
          v60 = [objc_opt_self() seedExpiredLinkURL];
LABEL_27:
          v149 = v60;
          sub_29D939D68();

          sub_29D939DF8();
        }

LABEL_28:
        v127 = v57;
        return sub_29D84B470(v127, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
      }

      if (EnumCaseMultiPayload != 4)
      {
        v60 = [objc_opt_self() aFibBurdenDefaultLinkURL];
        goto LABEL_27;
      }

      v128 = MEMORY[0x29EDC1728];
LABEL_25:
      v146 = v156;
      v147 = v157;
      v148 = v159;
      (*(v157 + 104))(v156, *v128, v159);
      sub_29D9346A8();
      (*(v147 + 8))(v146, v148);
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v128 = MEMORY[0x29EDC1720];
        goto LABEL_25;
      }

      v79 = v166;
      sub_29D936B88();
      sub_29D936608();
      v80 = v169;
      v49(v79);
      sub_29D693E2C(v186, v187);
      ObjectType = sub_29D936588();
      sub_29D69417C(v186);
      sub_29D936B88();
      v81 = sub_29D936618();
      (v49)(v79, v80);
      sub_29D93A388();

      sub_29D936B88();
      sub_29D936608();
      (v49)(v79, v80);
      v150 = v49;
      sub_29D693E2C(v184, v185);
      sub_29D9365A8();
      v82 = v151;
      sub_29D936B88();
      sub_29D936608();
      (v49)(v82, v80);
      sub_29D693E2C(v182, v182[3]);
      sub_29D936598();
      swift_storeEnumTagMultiPayload();
      v83 = type metadata accessor for AFibBurdenOnboardingController();
      v84 = objc_allocWithZone(v83);
      *&v84[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = 0;
      v84[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_navigateToDetailRoomUponOnboardingCompletion] = 0;
      v181.receiver = v84;
      v181.super_class = v83;
      v173 = objc_msgSendSuper2(&v181, sel_initWithNibName_bundle_, 0, 0);
      [v173 setModalPresentationStyle_];
      v85 = *MEMORY[0x29EDBA6B0];
      v86 = objc_allocWithZone(MEMORY[0x29EDBAB98]);
      v87 = ObjectType;
      v88 = [v86 initWithFeatureIdentifier:v85 healthStore:ObjectType];
      v89 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6F8] healthStore:v87];
      v90 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v91 = v88;
      v171 = v91;
      v92 = [v90 initWithFeatureIdentifier:v85 healthStore:v87];
      sub_29D6945AC(v183, &v178);
      v172 = v89;
      v93 = sub_29D71B714(v91, v92, v172, &v178);
      v170 = v93;

      sub_29D6945AC(v186, &v178);
      sub_29D6945AC(v183, &v175);
      type metadata accessor for AFibBurdenOnboardingViewControllerFactory();
      v94 = swift_allocObject();
      sub_29D679D3C(&v178, v94 + 16);
      sub_29D679D3C(&v175, v94 + 64);
      *(v94 + 56) = 2;
      v95 = sub_29D933F18();

      v96 = sub_29D933F08();
      v97 = type metadata accessor for AFibBurdenOnboardingFlowManager();
      v179 = v97;
      v180 = &off_2A244DAB0;
      *&v178 = v93;
      v176 = v95;
      v177 = &off_2A24417F8;
      *&v175 = v96;
      v98 = type metadata accessor for AFibBurdenOnboardingModel();
      v99 = swift_allocObject();
      v100 = sub_29D693DDC(&v178, v97);
      v165 = &v150;
      MEMORY[0x2A1C7C4A8](v100, v100);
      v102 = (&v150 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v103 + 16))(v102);
      v104 = sub_29D693DDC(&v175, v176);
      MEMORY[0x2A1C7C4A8](v104, v104);
      v106 = (&v150 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v107 + 16))(v106);
      v108 = *v102;
      v109 = *v106;
      v99[5] = v97;
      v99[6] = &off_2A244DAB0;
      v99[2] = v108;
      v99[10] = v95;
      v99[11] = &off_2A24417F8;
      v99[7] = v109;
      sub_29D69417C(&v175);
      sub_29D69417C(&v178);
      sub_29D84AD5C(v163, v162, type metadata accessor for AFibBurdenOnboardingPresentationContext);

      v110 = HKHRAFibBurdenLogForCategory();
      v111 = objc_allocWithZone(MEMORY[0x29EDBAA00]);
      v112 = ObjectType;
      v113 = [v111 initWithLoggingCategory:v110 healthDataSource:ObjectType];

      v179 = v98;
      v180 = &off_2A2441928;
      *&v178 = v99;
      type metadata accessor for AFibBurdenOnboardingCoordinator(0);
      v114 = swift_allocObject();
      v115 = sub_29D693DDC(&v178, v98);
      v165 = &v150;
      MEMORY[0x2A1C7C4A8](v115, v115);
      v117 = (&v150 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v118 + 16))(v117);
      v119 = *v117;
      v176 = v98;
      v177 = &off_2A2441928;
      *&v175 = v119;
      *(v114 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_completeOnboardingSubscriber) = 0;
      v120 = v114 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController;
      *(v114 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_navigationController + 8) = 0;
      swift_unknownObjectWeakInit();
      sub_29D6945AC(&v175, v114 + 16);
      v121 = v162;
      sub_29D84AD5C(v162, v114 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_presentationContext, type metadata accessor for AFibBurdenOnboardingPresentationContext);
      *(v120 + 8) = &off_2A24497D8;
      v122 = v173;
      swift_unknownObjectWeakAssign();

      *(v114 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_viewFactory) = v94;
      *(v114 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_healthStore) = v112;
      *(v114 + OBJC_IVAR____TtC5Heart31AFibBurdenOnboardingCoordinator_analyticsEventSubmissionManager) = v113;

      v123 = v112;
      v124 = v113;
      sub_29D862C98();

      sub_29D84B470(v121, type metadata accessor for AFibBurdenOnboardingPresentationContext);
      sub_29D69417C(&v175);
      sub_29D69417C(&v178);

      sub_29D84B470(v163, type metadata accessor for AFibBurdenOnboardingPresentationContext);
      sub_29D69417C(v183);
      sub_29D69417C(v186);
      *&v122[OBJC_IVAR____TtC5Heart30AFibBurdenOnboardingController_coordinator] = v114;

      sub_29D69417C(v182);
      sub_29D69417C(v184);
      v125 = v166;
      sub_29D936B88();
      v126 = sub_29D936618();
      v150(v125, v169);
      [v126 presentViewController:v122 animated:1 completion:0];
    }

    else
    {
      v150 = v49;
      if (EnumCaseMultiPayload)
      {
        v129 = v58;
        v130 = v160;
        sub_29D84A5A4(v129, v160, _s14descr2A243C641C15SettingsContentVMa);
        ObjectType = type metadata accessor for AFibBurdenSettingsViewController(0);
        sub_29D84AD5C(v130, v165, _s14descr2A243C641C15SettingsContentVMa);
        v131 = sub_29D8480C4();
        sub_29D848244(v186);
        v132 = v166;
        sub_29D936B88();
        sub_29D936608();
        (v49)(v132, v169);
        sub_29D693E2C(v184, v185);
        v133 = sub_29D936588();
        sub_29D69417C(v184);
        v134 = v161;
        sub_29D8484EC(v161);
        v135 = swift_getObjectType();
        v136 = v187;
        v137 = v188;
        v138 = sub_29D693DDC(v186, v187);
        v173 = &v150;
        MEMORY[0x2A1C7C4A8](v138, v138);
        v140 = &v150 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v141 + 16))(v140);
        v142 = sub_29D8CE524(257, v165, v131, v140, v133, v134, 0, ObjectType, v135, v136, v137);

        sub_29D69417C(v186);
        sub_29D936B88();
        v143 = sub_29D936618();
        v150(v132, v169);
        v144 = [v143 navigationController];

        if (v144)
        {
          [v144 pushViewController:v142 animated:1];

          v142 = v144;
        }

        v145 = v164;

        sub_29D84B470(v160, _s14descr2A243C641C15SettingsContentVMa);
        v127 = v145;
        return sub_29D84B470(v127, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
      }

      v61 = v58;
      v62 = v165;
      sub_29D84A5A4(v61, v165, _s14descr2A243C641C15SettingsContentVMa);
      v173 = type metadata accessor for AFibBurdenSettingsViewController(0);
      sub_29D84AD5C(v62, v158, _s14descr2A243C641C15SettingsContentVMa);
      v63 = sub_29D8480C4();
      sub_29D848244(v186);
      v64 = v166;
      sub_29D936B88();
      sub_29D936608();
      (v49)(v64, v169);
      sub_29D693E2C(v184, v185);
      v65 = sub_29D936588();
      sub_29D69417C(v184);
      v66 = v161;
      sub_29D8484EC(v161);
      v67 = v63;
      v68 = swift_getObjectType();
      v69 = v187;
      v70 = v188;
      v71 = sub_29D693DDC(v186, v187);
      v172 = &v150;
      MEMORY[0x2A1C7C4A8](v71, v71);
      v73 = &v150 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v74 + 16))(v73);
      v75 = sub_29D8CE524(257, v158, v67, v73, v65, v66, 1, v173, v68, v69, v70);

      sub_29D69417C(v186);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v76 = v153;
      sub_29D93A408();
      *(swift_allocObject() + 16) = ObjectType;
      sub_29D93A608();
      sub_29D936978();

      (*(v154 + 8))(v76, v155);
      v77 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
      sub_29D936B88();
      v78 = sub_29D936618();
      v150(v64, v169);
      [v78 presentViewController:v77 animated:1 completion:0];

      sub_29D84B470(v165, _s14descr2A243C641C15SettingsContentVMa);
    }

    v127 = v164;
    return sub_29D84B470(v127, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  }

  sub_29D84A4B4(v36, &qword_2A17B64A0, _s14descr2A243C641C13ActionHandlerC8UserDataVMa);
  if (qword_2A1A24678 != -1)
  {
    swift_once();
  }

  sub_29D6A9ED4(0);
  sub_29D69C6C0(v47, qword_2A1A2BF58);
  *(swift_allocObject() + 16) = ObjectType;
  v186[0] = 0;
  sub_29D9371F8();
}

uint64_t sub_29D849D80(uint64_t a1)
{
  sub_29D93AA18();

  v1 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v1);

  MEMORY[0x29ED6A240](0xD00000000000002CLL, 0x800000029D9681A0);
  return 91;
}

uint64_t sub_29D849E14(uint64_t a1, uint64_t a2)
{
  v3 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_29D93AA18();

  v10 = 91;
  v11 = 0xE100000000000000;
  v7 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v7);

  MEMORY[0x29ED6A240](0xD000000000000022, 0x800000029D968170);
  sub_29D84AD5C(a1, v6, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  v8 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v8);

  return v10;
}

uint64_t sub_29D849F3C(uint64_t result, void *a2, uint64_t a3)
{
  if ((result & 1) == 0)
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4(0);
    sub_29D69C6C0(v5, qword_2A1A2BF58);
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v7 = a2;
    sub_29D9371E8();
  }

  return result;
}

uint64_t sub_29D84A024(void *a1, uint64_t a2)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v3 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v3);

  MEMORY[0x29ED6A240](0xD00000000000003DLL, 0x800000029D968130);
  v4 = a1;
  sub_29D6B7318(0, &qword_2A17B7AF0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
  v5 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v5);

  return 0;
}

uint64_t sub_29D84A114(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  *&v8[qword_2A17B6478] = 0;
  v9 = &v8[qword_2A17B6480];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = qword_2A17B6488;
  v11 = sub_29D934C58();
  (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
  (*(v4 + 16))(v7, a1, v3);
  v12 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v12;
}

uint64_t sub_29D84A280()
{
  sub_29D936978();
  sub_29D7C0518(v0 + qword_2A17B6480);
  return sub_29D84A4B4(v0 + qword_2A17B6488, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
}

id sub_29D84A2E0()
{
  v2.receiver = v0;
  v2.super_class = _s14descr2A243C641C13ActionHandlerCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D84A318(uint64_t a1)
{
  sub_29D936978();
  sub_29D7C0518(a1 + qword_2A17B6480);
  return sub_29D84A4B4(a1 + qword_2A17B6488, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
}

uint64_t sub_29D84A3D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D84A440(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D84A4B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D84A440(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D84A518()
{
  v1 = *(_s14descr2A243C641C13ActionHandlerC8UserDataVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D849E14(v0 + v2, v3);
}

uint64_t sub_29D84A5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_29D84A60C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2A243C641C15SettingsContentVMa(0);
  v6 = MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v38 - v10;
  v12 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(0);
  v14 = MEMORY[0x2A1C7C4A8](v12, v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v38 - v18;
  sub_29D84B40C(0);
  v22 = MEMORY[0x2A1C7C4A8](v20 - 8, v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v22 + 56);
  sub_29D84AD5C(a1, v24, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  sub_29D84AD5C(a2, &v24[v25], _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v29 = swift_getEnumCaseMultiPayload();
        v28 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
        if (v29 != 2)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v34 = swift_getEnumCaseMultiPayload();
      v28 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
      if (v34 == 3)
      {
        goto LABEL_23;
      }

LABEL_25:
      v32 = 0;
      v28 = sub_29D84B40C;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload)
    {
      sub_29D84AD5C(v24, v16, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_21;
      }

      sub_29D84A5A4(&v24[v25], v8, _s14descr2A243C641C15SettingsContentVMa);
      v32 = sub_29D87CE34(v16, v8);
      sub_29D84B470(v8, _s14descr2A243C641C15SettingsContentVMa);
      v33 = v16;
    }

    else
    {
      sub_29D84AD5C(v24, v19, _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa);
      if (swift_getEnumCaseMultiPayload())
      {
        v16 = v19;
LABEL_21:
        sub_29D84B470(v16, _s14descr2A243C641C15SettingsContentVMa);
        goto LABEL_25;
      }

      sub_29D84A5A4(&v24[v25], v11, _s14descr2A243C641C15SettingsContentVMa);
      v32 = sub_29D87CE34(v19, v11);
      sub_29D84B470(v11, _s14descr2A243C641C15SettingsContentVMa);
      v33 = v19;
    }

    sub_29D84B470(v33, _s14descr2A243C641C15SettingsContentVMa);
    v28 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v30 = swift_getEnumCaseMultiPayload();
      v28 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
      if (v30 != 4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v37 = swift_getEnumCaseMultiPayload();
      v28 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
      if (v37 != 5)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v31 = swift_getEnumCaseMultiPayload();
    v28 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
    if (v31 != 6)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v35 = swift_getEnumCaseMultiPayload();
    v28 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
    if (v35 == 8)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  v27 = swift_getEnumCaseMultiPayload();
  v28 = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa;
  if (v27 != 7)
  {
    goto LABEL_25;
  }

LABEL_23:
  v32 = 1;
LABEL_26:
  sub_29D84B470(v24, v28);
  return v32;
}

uint64_t sub_29D84AA7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000029D9597F0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000029D961DD0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000029D961DF0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000029D961E10 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000029D968280 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000029D9682A0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000022 && 0x800000029D9682C0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000023 && 0x800000029D9682F0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F697463416F6ELL && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_29D93AD78();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_29D84AD5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D84ADCC(uint64_t a1, uint64_t a2)
{
  sub_29D84A440(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D84AE4C(uint64_t a1, uint64_t a2)
{
  sub_29D84A440(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D84AEF4(uint64_t a1)
{
  result = _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29D84AF60(uint64_t a1)
{
  sub_29D84AFC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_29D84AFC0()
{
  if (!qword_2A1A241F0[0])
  {
    v0 = _s14descr2A243C641C15SettingsContentVMa(0);
    if (!v1)
    {
      atomic_store(v0, qword_2A1A241F0);
    }
  }
}

unint64_t sub_29D84B008()
{
  result = qword_2A17B64C8;
  if (!qword_2A17B64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B64C8);
  }

  return result;
}

unint64_t sub_29D84B05C()
{
  result = qword_2A17B64F0;
  if (!qword_2A17B64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B64F0);
  }

  return result;
}

unint64_t sub_29D84B0B0()
{
  result = qword_2A17B6500;
  if (!qword_2A17B6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6500);
  }

  return result;
}

unint64_t sub_29D84B104()
{
  result = qword_2A17B6510;
  if (!qword_2A17B6510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6510);
  }

  return result;
}

unint64_t sub_29D84B158()
{
  result = qword_2A17B6520;
  if (!qword_2A17B6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6520);
  }

  return result;
}

unint64_t sub_29D84B1AC()
{
  result = qword_2A17B6530;
  if (!qword_2A17B6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6530);
  }

  return result;
}

unint64_t sub_29D84B200()
{
  result = qword_2A17B6540;
  if (!qword_2A17B6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6540);
  }

  return result;
}

unint64_t sub_29D84B254()
{
  result = qword_2A17B6550;
  if (!qword_2A17B6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6550);
  }

  return result;
}

unint64_t sub_29D84B2A8()
{
  result = qword_2A17B6560;
  if (!qword_2A17B6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6560);
  }

  return result;
}

unint64_t sub_29D84B2FC()
{
  result = qword_2A17B6570;
  if (!qword_2A17B6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6570);
  }

  return result;
}

unint64_t sub_29D84B350()
{
  result = qword_2A17B6580;
  if (!qword_2A17B6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6580);
  }

  return result;
}

void sub_29D84B3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_29D84B40C(uint64_t a1)
{
  if (!qword_2A17B65E8)
  {
    _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionOMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B65E8);
    }
  }
}

uint64_t sub_29D84B470(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2A243C641C13ActionHandlerC8UserDataV9TapActionO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29D84B6C4()
{
  result = qword_2A17B65F0;
  if (!qword_2A17B65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B65F0);
  }

  return result;
}

unint64_t sub_29D84B71C()
{
  result = qword_2A17B65F8;
  if (!qword_2A17B65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B65F8);
  }

  return result;
}

unint64_t sub_29D84B774()
{
  result = qword_2A17B6600;
  if (!qword_2A17B6600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6600);
  }

  return result;
}

unint64_t sub_29D84B7CC()
{
  result = qword_2A17B6608;
  if (!qword_2A17B6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6608);
  }

  return result;
}

unint64_t sub_29D84B824()
{
  result = qword_2A17B6610;
  if (!qword_2A17B6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6610);
  }

  return result;
}

unint64_t sub_29D84B87C()
{
  result = qword_2A17B6618;
  if (!qword_2A17B6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6618);
  }

  return result;
}

unint64_t sub_29D84B8D4()
{
  result = qword_2A17B6620;
  if (!qword_2A17B6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6620);
  }

  return result;
}

unint64_t sub_29D84B92C()
{
  result = qword_2A17B6628;
  if (!qword_2A17B6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6628);
  }

  return result;
}

unint64_t sub_29D84B984()
{
  result = qword_2A17B6630;
  if (!qword_2A17B6630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6630);
  }

  return result;
}

unint64_t sub_29D84B9DC()
{
  result = qword_2A17B6638;
  if (!qword_2A17B6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6638);
  }

  return result;
}

unint64_t sub_29D84BA34()
{
  result = qword_2A17B6640;
  if (!qword_2A17B6640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6640);
  }

  return result;
}

unint64_t sub_29D84BA8C()
{
  result = qword_2A17B6648;
  if (!qword_2A17B6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6648);
  }

  return result;
}

unint64_t sub_29D84BAE4()
{
  result = qword_2A17B6650;
  if (!qword_2A17B6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6650);
  }

  return result;
}

unint64_t sub_29D84BB3C()
{
  result = qword_2A17B6658;
  if (!qword_2A17B6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6658);
  }

  return result;
}

unint64_t sub_29D84BB94()
{
  result = qword_2A17B6660;
  if (!qword_2A17B6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6660);
  }

  return result;
}

unint64_t sub_29D84BBEC()
{
  result = qword_2A17B6668;
  if (!qword_2A17B6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6668);
  }

  return result;
}

unint64_t sub_29D84BC44()
{
  result = qword_2A17B6670;
  if (!qword_2A17B6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6670);
  }

  return result;
}

unint64_t sub_29D84BC9C()
{
  result = qword_2A17B6678;
  if (!qword_2A17B6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6678);
  }

  return result;
}

unint64_t sub_29D84BCF4()
{
  result = qword_2A17B6680;
  if (!qword_2A17B6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6680);
  }

  return result;
}

unint64_t sub_29D84BD4C()
{
  result = qword_2A17B6688;
  if (!qword_2A17B6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6688);
  }

  return result;
}

unint64_t sub_29D84BDA4()
{
  result = qword_2A17B6690;
  if (!qword_2A17B6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6690);
  }

  return result;
}

unint64_t sub_29D84BDFC()
{
  result = qword_2A17B6698;
  if (!qword_2A17B6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B6698);
  }

  return result;
}

unint64_t sub_29D84BE54()
{
  result = qword_2A17B66A0;
  if (!qword_2A17B66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B66A0);
  }

  return result;
}

unint64_t sub_29D84BEAC()
{
  result = qword_2A17B66A8;
  if (!qword_2A17B66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B66A8);
  }

  return result;
}

unint64_t sub_29D84BF04()
{
  result = qword_2A17B66B0;
  if (!qword_2A17B66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B66B0);
  }

  return result;
}

unint64_t sub_29D84BF5C()
{
  result = qword_2A17B66B8;
  if (!qword_2A17B66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B66B8);
  }

  return result;
}

uint64_t sub_29D84C058()
{
  v0 = sub_29D9376E8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A2C038;
  sub_29D9376B8();
  return sub_29D93A6A8();
}

uint64_t sub_29D84C148()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA460]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D84C218()
{
  v0 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v151 = &v126 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_29D939D18();
  v152 = *(v138 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v138, v3);
  v141 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v126 - v7;
  v9 = sub_29D9376E8();
  MEMORY[0x2A1C7C4A8](v9 - 8, v10);
  sub_29D84D4FC(0, &qword_2A17B1100, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v142 = sub_29D934548();
  v11 = *(v142 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v143 = *(v11 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29D94E3B0;
  v129 = v13;
  v14 = v13 + v12;
  sub_29D69567C(0, &qword_2A17B2CA8, 0x29EDC7AC8);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v15 = qword_2A1A2C038;
  sub_29D9376B8();
  *v14 = sub_29D93A6A8();
  *(v14 + 8) = 0;
  v16 = *MEMORY[0x29EDC1608];
  v17 = *(v11 + 104);
  v147 = v11 + 104;
  v148 = v17;
  (v17)(v14, v16, v142);
  sub_29D939D08();
  v18 = v14;
  if (qword_2A17B0DA0 != -1)
  {
    swift_once();
  }

  v19 = (v14 + v143);
  v21 = qword_2A17D0FA0;
  v20 = *algn_2A17D0FA8;
  v22 = qword_2A17D0FB0;
  v23 = v152;
  v144 = *(v152 + 16);
  v145 = qword_2A17D0FA0;
  v146 = v152 + 16;
  v24 = v138;
  v144(v141, v8, v138);
  v150 = v22;
  sub_29D935E88();
  v137 = v21;
  sub_29D933A98();
  v139 = v20;
  v25 = sub_29D939D98();
  v26 = v23;
  v28 = v27;
  v29 = *(v26 + 8);
  v152 = v26 + 8;
  v149 = v29;
  v29(v8, v24);
  *v19 = v25;
  v19[1] = v28;
  (v148)(v19, *MEMORY[0x29EDC1610], v142);
  v135 = (2 * v143);
  v140 = v18;
  v30 = (v18 + 2 * v143);
  sub_29D939D08();
  v31 = v144;
  v144(v141, v8, v24);
  sub_29D935E88();
  v137 = v137;
  sub_29D933A98();
  v32 = sub_29D939D98();
  v34 = v33;
  v149(v8, v24);
  *v30 = v32;
  v30[1] = v34;
  v30[2] = 0;
  v136 = *MEMORY[0x29EDC15D0];
  v148(v30);
  v35 = v143;
  v36 = &v135[v143 + v18];
  sub_29D939D08();
  v31(v141, v8, v24);
  sub_29D935E88();
  v135 = v137;
  sub_29D933A98();
  v37 = sub_29D939D98();
  v39 = v38;
  v40 = v24;
  v149(v8, v24);
  *v36 = v37;
  *(v36 + 1) = v39;
  v36[16] = 0;
  LODWORD(v137) = *MEMORY[0x29EDC1630];
  v41 = v142;
  v42 = v148;
  v148(v36);
  v134 = (4 * v35);
  v43 = v140;
  v44 = (v140 + 4 * v35);
  sub_29D939D08();
  v144(v141, v8, v40);
  sub_29D935E88();
  v135 = v135;
  sub_29D933A98();
  v45 = sub_29D939D98();
  v47 = v46;
  v48 = v138;
  v49 = v149;
  v149(v8, v138);
  *v44 = v45;
  v44[1] = v47;
  v44[2] = 0;
  v42(v44, v136, v41);
  v50 = v143;
  v51 = &v134[v143 + v43];
  sub_29D939D08();
  v144(v141, v8, v48);
  sub_29D935E88();
  v135 = v135;
  sub_29D933A98();
  v52 = sub_29D939D98();
  v54 = v53;
  v49(v8, v48);
  *v51 = v52;
  *(v51 + 1) = v54;
  v51[16] = 0;
  v55 = v137;
  v56 = v142;
  (v148)(v51, v137, v142);
  v57 = v140 + 6 * v50;
  sub_29D939D08();
  v144(v141, v8, v48);
  sub_29D935E88();
  v135 = v135;
  sub_29D933A98();
  v58 = sub_29D939D98();
  v60 = v59;
  v61 = v149;
  v149(v8, v48);
  *v57 = v58;
  *(v57 + 8) = v60;
  *(v57 + 16) = 0;
  (v148)(v57, v55, v56);
  v134 = (8 * v143);
  v62 = v140;
  v63 = v140 + 7 * v143;
  sub_29D939D08();
  v64 = v144;
  v144(v141, v8, v48);
  sub_29D935E88();
  v133 = v135;
  sub_29D933A98();
  v65 = sub_29D939D98();
  v67 = v66;
  v68 = v138;
  v61(v8, v138);
  *v63 = v65;
  *(v63 + 8) = v67;
  *(v63 + 16) = 0;
  (v148)(v63, v137, v142);
  v69 = &v134[v62];
  sub_29D84D460(0);
  v135 = v70;
  v130 = v70[12];
  sub_29D939D08();
  v71 = v141;
  v64(v141, v8, v68);
  sub_29D935E88();
  v128 = v133;
  sub_29D933A98();
  v72 = sub_29D939D98();
  v74 = v73;
  v149(v8, v68);
  *v69 = v72;
  v69[1] = v74;
  v132 = sub_29D9333D8();
  v75 = *(v132 - 8);
  v131 = *(v75 + 56);
  v133 = (v75 + 56);
  v131(v69 + v130, 1, 1, v132);
  LODWORD(v130) = *MEMORY[0x29EDC15F8];
  v76 = v148;
  v148(v69);
  v77 = v143;
  v78 = v140;
  v79 = &v134[v143 + v140];
  v127 = *(v135 + 12);
  sub_29D939D08();
  v144(v71, v8, v68);
  sub_29D935E88();
  v134 = v128;
  sub_29D933A98();
  v80 = sub_29D939D98();
  v82 = v81;
  v149(v8, v68);
  *v79 = v80;
  v79[1] = v82;
  v131(v79 + v127, 1, 1, v132);
  v76(v79, v130, v142);
  v83 = (v78 + 10 * v77);
  v128 = *(v135 + 12);
  sub_29D939D08();
  v84 = v8;
  v85 = v8;
  v86 = v138;
  v144(v141, v84, v138);
  sub_29D935E88();
  v135 = v134;
  sub_29D933A98();
  v87 = sub_29D939D98();
  v89 = v88;
  v90 = v86;
  v149(v85, v86);
  *v83 = v87;
  v83[1] = v89;
  v131(v128 + v83, 1, 1, v132);
  v91 = v142;
  v92 = v148;
  (v148)(v83, v130, v142);
  v93 = v143;
  v94 = (v140 + 11 * v143);
  v95 = v85;
  sub_29D939D08();
  v96 = v141;
  v144(v141, v95, v90);
  sub_29D935E88();
  v135 = v135;
  sub_29D933A98();
  v97 = sub_29D939D98();
  v99 = v98;
  v100 = v138;
  v149(v95, v138);
  *v94 = v97;
  v94[1] = v99;
  v94[2] = 0;
  v92(v94, v136, v91);
  v101 = v140 + 12 * v93;
  sub_29D939D08();
  v102 = v100;
  v103 = v100;
  v104 = v144;
  v144(v96, v95, v102);
  sub_29D935E88();
  v135 = v135;
  sub_29D933A98();
  v105 = sub_29D939D98();
  v107 = v106;
  v149(v95, v103);
  *v101 = v105;
  *(v101 + 8) = v107;
  *(v101 + 16) = 0;
  v108 = v137;
  v109 = v142;
  (v148)(v101, v137, v142);
  v110 = v140 + 13 * v143;
  sub_29D939D08();
  v104(v96, v95, v103);
  sub_29D935E88();
  v135 = v135;
  sub_29D933A98();
  v111 = sub_29D939D98();
  v113 = v112;
  v149(v95, v103);
  *v110 = v111;
  *(v110 + 8) = v113;
  *(v110 + 16) = 0;
  (v148)(v110, v108, v109);
  v114 = (v140 + 14 * v143);
  sub_29D939D08();
  v144(v96, v95, v103);
  sub_29D935E88();
  v135 = v135;
  sub_29D933A98();
  v115 = sub_29D939D98();
  v117 = v116;
  v149(v95, v103);
  *v114 = v115;
  v114[1] = v117;
  v114[2] = 0;
  v118 = v142;
  v119 = v148;
  (v148)(v114, v136, v142);
  v120 = v140 - v143 + 16 * v143;
  sub_29D939D08();
  v144(v96, v95, v103);
  sub_29D935E88();
  v121 = v135;
  sub_29D933A98();
  v122 = sub_29D939D98();
  v124 = v123;
  v149(v95, v103);
  *v120 = v122;
  *(v120 + 8) = v124;
  *(v120 + 16) = 0;
  v119(v120, v137, v118);
  return v129;
}

void sub_29D84D460(uint64_t a1)
{
  if (!qword_2A17B66C0)
  {
    sub_29D84D4FC(255, &qword_2A17B66C8, MEMORY[0x29EDB9A18], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B66C0);
    }
  }
}

void sub_29D84D4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D84D560(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D939D18();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v17[-v11];
  sub_29D939D08();
  if (qword_2A17B0DA0 != -1)
  {
    swift_once();
  }

  v13 = qword_2A17D0FA0;
  (*(v5 + 16))(v9, v12, v4);
  sub_29D935E88();
  v14 = v13;
  sub_29D933A98();
  v15 = sub_29D939D98();
  (*(v5 + 8))(v12, v4);
  return v15;
}

uint64_t sub_29D84D750()
{
  v0 = sub_29D933AA8();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D939D18();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v15[-v9];
  sub_29D939D08();
  if (qword_2A17B0DA0 != -1)
  {
    swift_once();
  }

  v11 = qword_2A17D0FA0;
  (*(v3 + 16))(v7, v10, v2);
  sub_29D935E88();
  v12 = v11;
  sub_29D933A98();
  v13 = sub_29D939D98();
  (*(v3 + 8))(v10, v2);
  return v13;
}

void sub_29D84D948(void *a1, uint64_t a2)
{
  v62 = a2;
  ObjectType = swift_getObjectType();
  v3 = sub_29D937898();
  v60 = *(v3 - 8);
  v61 = v3;
  v5 = MEMORY[0x2A1C7C4A8](v3, v4);
  MEMORY[0x2A1C7C4A8](v5, v6);
  v57 = &v54 - v7;
  v8 = sub_29D936388();
  v56 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D936378();
  v59 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12, v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v54 - v18;
  v20 = [a1 identifier];
  v21 = sub_29D939D68();
  v23 = v22;

  if (v21 == 0xD00000000000002ALL && 0x800000029D968430 == v23 || (sub_29D93AD78() & 1) != 0 || v21 == 0xD000000000000029 && 0x800000029D968460 == v23 || (sub_29D93AD78() & 1) != 0 || v21 == 0xD00000000000002DLL && 0x800000029D968490 == v23 || (sub_29D93AD78() & 1) != 0)
  {

    sub_29D7EACF0(a1, v62);
    return;
  }

  if (v21 == 0xD000000000000031 && 0x800000029D9684C0 == v23 || (sub_29D93AD78() & 1) != 0)
  {

    v24 = sub_29D936338();
    v25 = [v24 viewControllerFactory];

    sub_29D936348();
    v26 = sub_29D936368();
    v27 = objc_allocWithZone(type metadata accessor for AtrialFibrillationDataTypeDetailViewController());
    v28 = v66;
    v29 = v67;
    v30 = sub_29D693DDC(v65, v66);
    MEMORY[0x2A1C7C4A8](v30, v30);
    v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v32);
    sub_29D782818(v25, v32, v26, v27, v28, v29);
    sub_29D69417C(v65);
    sub_29D936318();
    sub_29D77F4EC(v65);
    return;
  }

  if (v21 == 0xD000000000000028 && 0x800000029D968500 == v23 || (sub_29D93AD78() & 1) != 0)
  {

    sub_29D7EB100(a1, v62);
    return;
  }

  if (v21 == 0xD000000000000025 && 0x800000029D968530 == v23 || (sub_29D93AD78() & 1) != 0)
  {

    v34 = sub_29D936338();
    v35 = [v34 viewControllerFactory];

    sub_29D936348();
    LOBYTE(v34) = sub_29D936368();
    v36 = objc_allocWithZone(type metadata accessor for ElectrocardiogramDataTypeDetailViewController());
    sub_29D7069A0(v35, v65, v34);
    v38 = v37;
    sub_29D936318();
    v39 = OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_consumedHealthExperienceStore;
    swift_beginAccess();
    sub_29D84E59C(v65, v38 + v39);
    swift_endAccess();
    return;
  }

  if (v21 == 0xD000000000000030 && 0x800000029D966A50 == v23 || (v55 = 0xD000000000000030, (sub_29D93AD78() & 1) != 0))
  {

    v40 = v62;
    sub_29D7DFE9C(v62, a1, ObjectType);
    v41 = v59;
    v42 = *(v59 + 16);
    v42(v19, v40, v12);
    objc_allocWithZone(type metadata accessor for AFibBurdenDataTypeDetailViewController(0));
    v42(v16, v19, v12);
    v43 = a1;
    sub_29D936488();
    (*(v41 + 8))(v19, v12);
    return;
  }

  if (v21 == 0xD000000000000021 && 0x800000029D968560 == v23 || (sub_29D93AD78() & 1) != 0)
  {

    sub_29D7EA3CC(a1, v62);
    return;
  }

  if (v21 == v55 && 0x800000029D968590 == v23 || (sub_29D93AD78() & 1) != 0)
  {

    sub_29D7EA420(v62);
    return;
  }

  if (v21 == 0xD00000000000001ELL && 0x800000029D966A90 == v23 || (sub_29D93AD78() & 1) != 0)
  {

    sub_29D7EA730(a1, v62);
    return;
  }

  if (v21 == 0xD000000000000029 && 0x800000029D9685D0 == v23)
  {

LABEL_44:
    sub_29D7EAB68(v62);
    return;
  }

  v44 = sub_29D93AD78();

  if (v44)
  {
    goto LABEL_44;
  }

  v69 = 0;
  memset(v68, 0, sizeof(v68));
  sub_29D84E4AC(v68, &v63);
  if (v64)
  {
    sub_29D679D3C(&v63, v65);
    sub_29D693E2C(v65, v66);
    sub_29D936B58();
    v51 = v62;
    sub_29D936028();
    (*(v59 + 16))(v19, v51, v12);
    v52 = objc_allocWithZone(sub_29D9364C8());
    v53 = a1;
    sub_29D936488();
    (*(v56 + 8))(v11, v8);
    sub_29D84E528(v68);
    sub_29D69417C(v65);
  }

  else
  {
    sub_29D84E528(&v63);
    sub_29D937868();
    v45 = a1;
    v46 = sub_29D937878();
    v47 = sub_29D93A288();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      _os_log_impl(&dword_29D677000, v46, v47, "[HeartAppDelegate] No custom detail view controller or configuration provided for %@", v48, 0xCu);
      sub_29D6ACA3C(v49);
      MEMORY[0x29ED6BE30](v49, -1, -1);
      MEMORY[0x29ED6BE30](v48, -1, -1);
    }

    (*(v60 + 8))(v57, v61);
    sub_29D84E528(v68);
  }
}

uint64_t sub_29D84E4AC(uint64_t a1, uint64_t a2)
{
  sub_29D6B7318(0, &qword_2A17B66D0, &qword_2A17B66D8, MEMORY[0x29EDC29B0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D84E528(uint64_t a1)
{
  sub_29D6B7318(0, &qword_2A17B66D0, &qword_2A17B66D8, MEMORY[0x29EDC29B0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D84E59C(uint64_t a1, uint64_t a2)
{
  sub_29D6B7318(0, &qword_2A17B2B10, &qword_2A17B50D0, MEMORY[0x29EDC3660]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AFibBurdenDataTypeDetailViewController(uint64_t a1)
{
  result = qword_2A17B66E0;
  if (!qword_2A17B66E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D84E6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D936378();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v3);
  (*(v6 + 16))(v9, a2, v5);
  v11 = sub_29D936488();
  (*(v6 + 8))(a2, v5);
  return v11;
}

void sub_29D84E7BC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AFibBurdenAddDataView(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_29D936468();
  sub_29D74774C(v8, v7);
  sub_29D84EA60(0);
  v10 = objc_allocWithZone(v9);
  v11 = sub_29D938CF8();
  [v2 presentViewController:v11 animated:a1 & 1 completion:0];
}

uint64_t sub_29D84E878(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_29D936378();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = objc_allocWithZone(v3);
  (*(v7 + 16))(v10, a2, v6);
  sub_29D6945AC(a3, v15);
  v12 = sub_29D936498();
  sub_29D69417C(a3);
  (*(v7 + 8))(a2, v6);
  return v12;
}

id sub_29D84E9A8(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AFibBurdenDataTypeDetailViewController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D84EA20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenDataTypeDetailViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D84EA60(uint64_t a1)
{
  if (!qword_2A17B66F0)
  {
    type metadata accessor for AFibBurdenAddDataView(255);
    sub_29D84EAC4();
    v1 = sub_29D938D28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B66F0);
    }
  }
}

unint64_t sub_29D84EAC4()
{
  result = qword_2A17B66F8;
  if (!qword_2A17B66F8)
  {
    type metadata accessor for AFibBurdenAddDataView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B66F8);
  }

  return result;
}

uint64_t sub_29D84EB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29D851770(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22[0] = a1;
  sub_29D6AD548();
  sub_29D851A88(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
  sub_29D938498();
  v16 = *a4;
  v24 = *(a4 + 8);
  v23 = *(a4 + 16);
  sub_29D6945AC(a5, v22);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(a4 + 16);
  *(v17 + 32) = *a4;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a4 + 32);
  sub_29D679D3C(v22, v17 + 72);

  v19 = v16;
  sub_29D753C5C(&v24, v22);
  sub_29D738808(&v23, v22);
  sub_29D6B7370(0, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
  sub_29D85182C();
  sub_29D938468();

  return (*(v12 + 8))(v15, v11);
}

uint64_t *sub_29D84ED30@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v8 = *a4;
  if (*a1 == 1)
  {
    v45 = a5;
    v48 = *(a4 + 8);
    v9 = *(a4 + 16);
    v10 = *(a4 + 24);
    v11 = v8;
    sub_29D753C5C(&v48, &v47);
    sub_29D935E88();
    v12 = sub_29D937878();
    v13 = sub_29D93A278();

    sub_29D7545A4(&v48);

    if (os_log_type_enabled(v12, v13))
    {
      v14 = a2;
      v15 = swift_slowAlloc();
      v43 = v11;
      v16 = swift_slowAlloc();
      v47 = v16;
      *v15 = 136446466;
      sub_29D8519C4();
      v17 = sub_29D939DA8();
      v19 = sub_29D6C2364(v17, v18, &v47);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_29D6C2364(v9, v10, &v47);
      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s(%{public}s)] Background requirements check passed, sending normal generator", v15, 0x16u);
      swift_arrayDestroy();
      v20 = v16;
      v11 = v43;
      MEMORY[0x29ED6BE30](v20, -1, -1);
      v21 = v15;
      a2 = v14;
      MEMORY[0x29ED6BE30](v21, -1, -1);
    }

    v22 = type metadata accessor for RelatedSampleTypesGenerator(0);
    swift_allocObject();
    v23 = v11;
    sub_29D753C5C(&v48, &v47);
    sub_29D935E88();

    v24 = sub_29D753950(a4, a2);

    sub_29D7545A4(&v48);

    a5 = v45;
    v45[3] = v22;
    v25 = &unk_2A17B6700;
    v26 = type metadata accessor for RelatedSampleTypesGenerator;
    v27 = &unk_29D945C98;
  }

  else
  {
    v48 = *(a4 + 8);
    v28 = *(a4 + 16);
    v29 = *(a4 + 24);
    v30 = v8;
    sub_29D753C5C(&v48, &v47);
    sub_29D935E88();
    v31 = sub_29D937878();
    v32 = sub_29D93A278();

    sub_29D7545A4(&v48);

    if (os_log_type_enabled(v31, v32))
    {
      v44 = a2;
      v33 = swift_slowAlloc();
      v46 = v30;
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 136446466;
      sub_29D8519C4();
      v35 = sub_29D939DA8();
      v37 = sub_29D6C2364(v35, v36, &v47);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_29D6C2364(v28, v29, &v47);
      _os_log_impl(&dword_29D677000, v31, v32, "[%{public}s(%{public}s)] Background requirements check failed, sending empty generator", v33, 0x16u);
      swift_arrayDestroy();
      v38 = v34;
      v30 = v46;
      MEMORY[0x29ED6BE30](v38, -1, -1);
      v39 = v33;
      a2 = v44;
      MEMORY[0x29ED6BE30](v39, -1, -1);
    }

    v40 = type metadata accessor for EmptyRelatedSampleTypesGenerator(0);
    swift_allocObject();

    v41 = v30;
    sub_29D753C5C(&v48, &v47);
    sub_29D935E88();
    v24 = sub_29D8345E0(a4, a2);
    a5[3] = v40;
    v25 = &unk_2A1A23D78;
    v26 = type metadata accessor for EmptyRelatedSampleTypesGenerator;
    v27 = &unk_29D94CFF4;
  }

  result = sub_29D851A88(v25, v26, v27);
  a5[4] = result;
  *a5 = v24;
  return result;
}

uint64_t sub_29D84F164@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_29D851B38(0, &qword_2A17B6708, MEMORY[0x29EDB8AC0]);
  v9 = v8;
  v35 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v33 - v11;
  v13 = *a1;
  v14 = *a3;
  v38 = *(a3 + 8);
  v15 = *(a3 + 24);
  v34 = *(a3 + 16);
  v16 = v14;
  sub_29D753C5C(&v38, &v37);
  sub_29D935E88();
  v17 = v13;
  v18 = sub_29D937878();
  v19 = sub_29D93A288();

  sub_29D7545A4(&v38);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = a2;
    v37 = v33;
    *v20 = 136446722;
    sub_29D8519C4();
    v21 = sub_29D939DA8();
    v23 = v9;
    v24 = a4;
    v25 = sub_29D6C2364(v21, v22, &v37);

    *(v20 + 4) = v25;
    a4 = v24;
    v9 = v23;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_29D6C2364(v34, v15, &v37);
    *(v20 + 22) = 2082;
    v36 = v13;
    v26 = v13;
    sub_29D6B7370(0, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    v27 = sub_29D939DA8();
    v29 = sub_29D6C2364(v27, v28, &v37);

    *(v20 + 24) = v29;
    _os_log_impl(&dword_29D677000, v18, v19, "[%{public}s(%{public}s)] Error when handling database changes: %{public}s", v20, 0x20u);
    v30 = v33;
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v30, -1, -1);
    MEMORY[0x29ED6BE30](v20, -1, -1);
  }

  sub_29D8513C4(0);
  sub_29D938348();
  sub_29D851478(&qword_2A17B6710, &qword_2A17B6708, MEMORY[0x29EDB8AC0], MEMORY[0x29EDB8AC8]);
  v31 = sub_29D938418();
  result = (*(v35 + 8))(v12, v9);
  *a4 = v31;
  return result;
}

uint64_t *sub_29D84F4A8@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t **a5@<X8>)
{
  v8 = *a4;
  if (a1)
  {
    v45 = a5;
    v48 = *(a4 + 8);
    v9 = *(a4 + 16);
    v10 = *(a4 + 24);
    v11 = v8;
    sub_29D753C5C(&v48, &v47);
    sub_29D935E88();
    v12 = sub_29D937878();
    v13 = sub_29D93A278();

    sub_29D7545A4(&v48);

    if (os_log_type_enabled(v12, v13))
    {
      v14 = a2;
      v15 = swift_slowAlloc();
      v43 = v11;
      v16 = swift_slowAlloc();
      v47 = v16;
      *v15 = 136446466;
      sub_29D8519C4();
      v17 = sub_29D939DA8();
      v19 = sub_29D6C2364(v17, v18, &v47);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_29D6C2364(v9, v10, &v47);
      _os_log_impl(&dword_29D677000, v12, v13, "[%{public}s(%{public}s)] Foreground requirements check passed, sending normal generator", v15, 0x16u);
      swift_arrayDestroy();
      v20 = v16;
      v11 = v43;
      MEMORY[0x29ED6BE30](v20, -1, -1);
      v21 = v15;
      a2 = v14;
      MEMORY[0x29ED6BE30](v21, -1, -1);
    }

    v22 = type metadata accessor for RelatedSampleTypesGenerator(0);
    swift_allocObject();
    v23 = v11;
    sub_29D753C5C(&v48, &v47);
    sub_29D935E88();

    v24 = sub_29D753950(a4, a2);

    sub_29D7545A4(&v48);

    a5 = v45;
    v45[3] = v22;
    v25 = &unk_2A17B6700;
    v26 = type metadata accessor for RelatedSampleTypesGenerator;
    v27 = &unk_29D945C98;
  }

  else
  {
    v48 = *(a4 + 8);
    v28 = *(a4 + 16);
    v29 = *(a4 + 24);
    v30 = v8;
    sub_29D753C5C(&v48, &v47);
    sub_29D935E88();
    v31 = sub_29D937878();
    v32 = sub_29D93A278();

    sub_29D7545A4(&v48);

    if (os_log_type_enabled(v31, v32))
    {
      v44 = a2;
      v33 = swift_slowAlloc();
      v46 = v30;
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 136446466;
      sub_29D8519C4();
      v35 = sub_29D939DA8();
      v37 = sub_29D6C2364(v35, v36, &v47);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      *(v33 + 14) = sub_29D6C2364(v28, v29, &v47);
      _os_log_impl(&dword_29D677000, v31, v32, "[%{public}s(%{public}s)] Foreground requirements check failed, sending empty generator", v33, 0x16u);
      swift_arrayDestroy();
      v38 = v34;
      v30 = v46;
      MEMORY[0x29ED6BE30](v38, -1, -1);
      v39 = v33;
      a2 = v44;
      MEMORY[0x29ED6BE30](v39, -1, -1);
    }

    v40 = type metadata accessor for EmptyRelatedSampleTypesGenerator(0);
    swift_allocObject();

    v41 = v30;
    sub_29D753C5C(&v48, &v47);
    sub_29D935E88();
    v24 = sub_29D8345E0(a4, a2);
    a5[3] = v40;
    v25 = &unk_2A1A23D78;
    v26 = type metadata accessor for EmptyRelatedSampleTypesGenerator;
    v27 = &unk_29D94CFF4;
  }

  result = sub_29D851A88(v25, v26, v27);
  a5[4] = result;
  *a5 = v24;
  return result;
}

uint64_t sub_29D84F8D4()
{
  v1 = OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RelatedSampleTypesGeneratorPipeline(uint64_t a1)
{
  result = qword_2A1A23960;
  if (!qword_2A1A23960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D84F9E4(uint64_t a1)
{
  result = sub_29D934178();
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

uint64_t sub_29D84FAA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_29D84FB20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_29D69567C(0, &qword_2A17B4380, 0x29EDC7D10);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_29D84FC1C(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_29D93A928();
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v3 = sub_29D7042EC();
    sub_29D935E88();
    v1 = sub_29D7AEF54(&v5, (v3 + 32), v2, v1);
    sub_29D7AF2E8(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

void sub_29D84FCCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_29D6AA3B4(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0]);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_29D84FDA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v121 = a5;
  sub_29D85137C(0);
  v118 = v9;
  v116 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v10);
  v112 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8516D8(0, &qword_2A1A22558, sub_29D85137C, sub_29D8514BC);
  v13 = v12;
  v117 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v114 = &v97 - v15;
  sub_29D6BE124(0);
  v115 = v16;
  v113 = *(v16 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v16, v17);
  v110 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v111 = &v97 - v21;
  v105 = sub_29D93A248();
  v108 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105, v22);
  v107 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D8514F0(0, &qword_2A1A224F0, MEMORY[0x29EDC2E88], sub_29D8515E0, MEMORY[0x29EDB8920]);
  v25 = v24;
  v106 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v104 = &v97 - v27;
  sub_29D851614(0);
  v29 = v28;
  v109 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28, v30);
  v32 = (&v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = &type metadata for RelatedSampleTypesGeneratorFactory;
  v128 = &off_2A2448D58;
  v33 = sub_29D806C20(a3);
  v34 = v33;
  v35 = *a1;
  v120 = a2;
  if (a4)
  {
    v102 = v25;
    v103 = v13;
    v119 = v33;
    v36 = *(a1 + 8);
    v37 = *(a1 + 16);
    v38 = *(a1 + 24);
    v39 = v35;
    sub_29D935E88();
    sub_29D935E88();
    v40 = sub_29D937878();
    v41 = sub_29D93A268();
    v42 = v38;

    v109 = v36;

    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v123[0] = v101;
      *v43 = 136446466;
      *&v122[0] = v121;
      sub_29D8519C4();
      v44 = sub_29D939DA8();
      v46 = v39;
      v47 = a2;
      v48 = sub_29D6C2364(v44, v45, v123);

      *(v43 + 4) = v48;
      a2 = v47;
      v39 = v46;
      *(v43 + 12) = 2082;
      *(v43 + 14) = sub_29D6C2364(v37, v42, v123);
      _os_log_impl(&dword_29D677000, v40, v41, "[%{public}s(%{public}s)] Started in foreground, sending initial publisher as well as database changes publisher", v43, 0x16u);
      v49 = v101;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v49, -1, -1);
      MEMORY[0x29ED6BE30](v43, -1, -1);

      v50 = v127;
    }

    else
    {

      v50 = &type metadata for RelatedSampleTypesGeneratorFactory;
    }

    sub_29D693E2C(&v126, v50);
    v124 = &type metadata for RelatedSampleTypesGeneratorFactory;
    v125 = &off_2A2448D58;
    sub_29D84FC1C(v109);
    v67 = v107;
    sub_29D93A258();

    v68 = swift_allocObject();
    v69 = v121;
    *(v68 + 16) = a2;
    *(v68 + 24) = v69;
    v70 = *(a1 + 16);
    *(v68 + 32) = *a1;
    *(v68 + 48) = v70;
    *(v68 + 64) = *(a1 + 32);
    v71 = MEMORY[0x29EDB89F8];
    sub_29D851B38(0, &qword_2A1A223A8, MEMORY[0x29EDB89F8]);
    sub_29D8515E0();
    v100 = a1;
    v98 = MEMORY[0x29EDB8A00];
    sub_29D851478(&qword_2A1A223B0, &qword_2A1A223A8, v71, MEMORY[0x29EDB8A00]);
    v101 = v39;
    sub_29D935E88();
    v99 = v42;
    sub_29D935E88();

    v72 = v104;
    v73 = v105;
    sub_29D938488();

    (*(v108 + 8))(v67, v73);
    sub_29D8518BC();
    v74 = v102;
    v75 = sub_29D938418();
    (*(v106 + 8))(v72, v74);
    *&v122[0] = v119;
    sub_29D6AD548();
    sub_29D851A88(&qword_2A1A223E0, sub_29D6AD548, v98);
    v76 = v111;
    sub_29D938558();
    v77 = v113;
    v78 = v115;
    (*(v113 + 16))(v110, v76, v115);
    *&v122[0] = v75;
    sub_29D851444();

    v79 = v112;
    sub_29D938068();
    sub_29D6945AC(v123, v122);
    v80 = swift_allocObject();
    v81 = v121;
    *(v80 + 16) = v120;
    *(v80 + 24) = v81;
    v82 = v100;
    v83 = v100[1];
    *(v80 + 32) = *v100;
    *(v80 + 48) = v83;
    *(v80 + 64) = *(v82 + 4);
    sub_29D679D3C(v122, v80 + 72);
    v84 = swift_allocObject();
    *(v84 + 16) = sub_29D851958;
    *(v84 + 24) = v80;
    sub_29D6B7370(0, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
    sub_29D8514BC();
    v85 = v101;
    sub_29D935E88();
    sub_29D935E88();

    v86 = v114;
    v87 = v118;
    sub_29D938468();

    (*(v116 + 8))(v79, v87);
    sub_29D851860(&qword_2A1A22560, &qword_2A1A22558, sub_29D85137C, sub_29D8514BC);
    v88 = v103;
    v89 = sub_29D938418();

    v117[1](v86, v88);
    (*(v77 + 8))(v76, v78);
  }

  else
  {
    v117 = v32;
    v118 = v29;
    v51 = *(a1 + 16);
    v129 = *(a1 + 8);
    v52 = *(a1 + 24);
    v53 = v35;
    sub_29D753C5C(&v129, v123);
    sub_29D935E88();
    v54 = sub_29D937878();
    v55 = sub_29D93A268();

    sub_29D7545A4(&v129);

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v119 = v34;
      v58 = v57;
      v123[0] = v57;
      *v56 = 136446466;
      v116 = v52;
      v59 = v53;
      v60 = v121;
      *&v122[0] = v121;
      sub_29D8519C4();
      v61 = sub_29D939DA8();
      v63 = sub_29D6C2364(v61, v62, v123);

      *(v56 + 4) = v63;
      v64 = v60;
      v53 = v59;
      v65 = v116;
      *(v56 + 12) = 2082;
      *(v56 + 14) = sub_29D6C2364(v51, v65, v123);
      _os_log_impl(&dword_29D677000, v54, v55, "[%{public}s(%{public}s)] Started in background, only sending one generator", v56, 0x16u);
      swift_arrayDestroy();
      v66 = v58;
      v34 = v119;
      MEMORY[0x29ED6BE30](v66, -1, -1);
      MEMORY[0x29ED6BE30](v56, -1, -1);
    }

    else
    {

      v64 = v121;
    }

    sub_29D693E2C(&v126, v127);
    v124 = &type metadata for RelatedSampleTypesGeneratorFactory;
    v125 = &off_2A2448D58;
    sub_29D6945AC(v123, v122);
    v90 = swift_allocObject();
    v91 = v120;
    *(v90 + 16) = v34;
    *(v90 + 24) = v91;
    *(v90 + 32) = v64;
    v92 = *(a1 + 16);
    *(v90 + 40) = *a1;
    *(v90 + 56) = v92;
    *(v90 + 72) = *(a1 + 32);
    sub_29D679D3C(v122, v90 + 80);
    v93 = v53;
    sub_29D753C5C(&v129, v122);
    sub_29D8516D8(0, &qword_2A1A22520, sub_29D851770, sub_29D85182C);
    sub_29D851860(&qword_2A1A22528, &qword_2A1A22520, sub_29D851770, sub_29D85182C);
    sub_29D935E88();

    v94 = v117;
    sub_29D938378();
    sub_29D851A88(&qword_2A1A22308, sub_29D851614, MEMORY[0x29EDB8AE8]);
    v95 = v118;
    v89 = sub_29D938418();

    (v109[1])(v94, v95);
  }

  sub_29D69417C(v123);
  sub_29D69417C(&v126);
  return v89;
}

uint64_t *sub_29D850B18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = sub_29D934178();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v15 = &v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &type metadata for RelatedSampleTypesGeneratorFactory;
  v21 = &off_2A2448D58;
  sub_29D751814(v15);
  (*(v12 + 32))(a5 + OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_domain, v15, v11);
  *(a5 + OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_feedItemRequirements) = a3;
  sub_29D693E2C(v19, v20);
  sub_29D935E88();
  v16 = sub_29D84FDA8(a1, a2, a3, a4 & 1, v10);
  sub_29D69417C(v19);
  *(a5 + OBJC_IVAR____TtC5Heart35RelatedSampleTypesGeneratorPipeline_publisher) = v16;
  return a5;
}

uint64_t *sub_29D850CA4(uint64_t a1)
{
  v2 = sub_29D937898();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v6 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6AA3B4(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940A10;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4D0]);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA930]);
  *(inited + 48) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA848]);
  *(inited + 56) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA4A8]);
  *(inited + 64) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA898]);
  sub_29D6E3724(inited);
  v9 = v8;
  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = type metadata accessor for AFibBurdenLifeFactorsTileViewController();
  v34 = v6;
  v42[0] = v6;
  v42[1] = v9;
  v32 = v9;
  v42[2] = 0xD00000000000001CLL;
  v42[3] = 0x800000029D9603B0;
  v42[4] = v10;
  sub_29D934188();
  sub_29D693E2C(v40, v41);
  v30 = sub_29D934118();
  v33 = a1;
  sub_29D934188();
  if (qword_2A1A24660 != -1)
  {
    swift_once();
  }

  v11 = sub_29D69C6C0(v2, qword_2A1A2BF28);
  v12 = v31;
  (*(v3 + 16))(v31, v11, v2);
  v38[3] = &type metadata for FeedItemContextPreviousFeedItemFetcherBox;
  v38[4] = &off_2A2443EF8;
  v38[0] = swift_allocObject();
  sub_29D851264(v39, v38[0] + 16);
  type metadata accessor for RelatedSampleTypesGenerator.Environment(0);
  v13 = swift_allocObject();
  v14 = sub_29D693DDC(v38, &type metadata for FeedItemContextPreviousFeedItemFetcherBox);
  MEMORY[0x2A1C7C4A8](v14, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v36 = &type metadata for FeedItemContextPreviousFeedItemFetcherBox;
  v37 = &off_2A2443EF8;
  v18 = swift_allocObject();
  *&v35 = v18;
  v19 = *(v16 + 1);
  *(v18 + 16) = *v16;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v16 + 4);
  sub_29D8512C0(v39);
  *(v13 + 16) = v30;
  sub_29D679D3C(&v35, v13 + 24);
  (*(v3 + 32))(v13 + OBJC_IVAR____TtCC5Heart27RelatedSampleTypesGenerator11Environment_logger, v12, v2);
  sub_29D69417C(v38);
  sub_29D69417C(v40);
  sub_29D851314(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29D93DDB0;
  v21 = *MEMORY[0x29EDC5118];
  v22 = *MEMORY[0x29EDBA6B0];
  v23 = v21;
  sub_29D934188();
  sub_29D693E2C(v40, v41);
  v24 = sub_29D934118();
  v25 = type metadata accessor for FeatureStatusFeedItemRequirement();
  v26 = swift_allocObject();
  v26[2] = v22;
  v26[3] = v21;
  v26[4] = v24;
  v26[5] = 0;
  sub_29D69417C(v40);
  *(v20 + 56) = v25;
  *(v20 + 64) = &off_2A2440BF0;
  *(v20 + 32) = v26;
  sub_29D934188();
  sub_29D693E2C(v40, v41);
  LOBYTE(v24) = sub_29D934108();
  v39[3] = &type metadata for RelatedSampleTypesGeneratorFactory;
  v39[4] = &off_2A2448D58;
  type metadata accessor for RelatedSampleTypesGeneratorPipeline(0);
  v27 = swift_allocObject();
  sub_29D693DDC(v39, &type metadata for RelatedSampleTypesGeneratorFactory);
  v28 = sub_29D850B18(v42, v13, v20, v24 & 1, v27);

  sub_29D69417C(v39);
  sub_29D69417C(v40);
  return v28;
}

void sub_29D851314(uint64_t a1)
{
  if (!qword_2A1A21F20)
  {
    sub_29D6B7370(255, &qword_2A1A242A0, &protocol descriptor for FeedItemRequirement);
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21F20);
    }
  }
}

void sub_29D8513C4(uint64_t a1)
{
  if (!qword_2A1A21EC8)
  {
    sub_29D93A238();
    sub_29D6B7370(255, &qword_2A1A24850, MEMORY[0x29EDC9F18]);
    v1 = sub_29D93AEB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A21EC8);
    }
  }
}

uint64_t sub_29D851478(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D851B38(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D8514F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = MEMORY[0x29EDB89F8];
    sub_29D851B38(255, &qword_2A1A223A8, MEMORY[0x29EDB89F8]);
    v14[0] = v9;
    v14[1] = v11;
    v14[2] = a4();
    v14[3] = sub_29D851478(&qword_2A1A223B0, &qword_2A1A223A8, v10, MEMORY[0x29EDB8A00]);
    v12 = a5(a1, v14);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_29D851614(uint64_t a1)
{
  if (!qword_2A1A22300)
  {
    sub_29D8516D8(255, &qword_2A1A22520, sub_29D851770, sub_29D85182C);
    sub_29D851860(&qword_2A1A22528, &qword_2A1A22520, sub_29D851770, sub_29D85182C);
    v1 = sub_29D938388();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22300);
    }
  }
}

void sub_29D8516D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6B7370(255, &qword_2A1A25740, MEMORY[0x29EDC3C90]);
    a4();
    v6 = sub_29D9380F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D851790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D6AD548();
    v7 = v6;
    v8 = sub_29D851A88(&qword_2A1A223E0, sub_29D6AD548, MEMORY[0x29EDB8A00]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D851860(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_29D8516D8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D8518BC()
{
  result = qword_2A1A224F8;
  if (!qword_2A1A224F8)
  {
    sub_29D8514F0(255, &qword_2A1A224F0, MEMORY[0x29EDC2E88], sub_29D8515E0, MEMORY[0x29EDB8920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A224F8);
  }

  return result;
}

uint64_t sub_29D851968(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_29D851AD0(0);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_29D8519C4()
{
  result = qword_2A1A238A8[0];
  if (!qword_2A1A238A8[0])
  {
    type metadata accessor for RelatedSampleTypesGeneratorPipeline(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A238A8);
  }

  return result;
}

uint64_t sub_29D851A20()
{

  sub_29D69417C((v0 + 72));

  return MEMORY[0x2A1C733A0](v0, 112, 7);
}

uint64_t sub_29D851A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D851AD0(uint64_t a1)
{
  if (!qword_2A1A22258)
  {
    sub_29D8513C4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A22258);
    }
  }
}

void sub_29D851B38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_29D8513C4(255);
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

double sub_29D851BB8(uint64_t a1, double a2, double a3)
{
  v6 = sub_29D93AD58();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 * a3;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x29EDC9EB8])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x29EDC9EB0])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x29EDC9EC0])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x29EDC9EC8])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x29EDC9EA0])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x29EDC9EA8])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_29D93A068();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 / a2;
}

uint64_t type metadata accessor for HypertensionNotificationsThingsToKnowViewController(uint64_t a1)
{
  result = qword_2A17B6728;
  if (!qword_2A17B6728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_29D851E40(int a1)
{
  v40 = sub_29D935398();
  v48 = *(v40 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v40, v3);
  v47 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v46 = v39 - v8;
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v45 = v39 - v11;
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = v39 - v14;
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v39 - v17;
  *(v1 + qword_2A17B6718 + 8) = 0;
  swift_unknownObjectWeakInit();
  v44 = v1;
  v41 = a1;
  *(v1 + qword_2A17B6720) = a1;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v20 = qword_2A17D0F10;
  v19 = *algn_2A17D0F18;
  v21 = qword_2A17D0F20;
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D935388();
  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D935388();
  sub_29D9334A8();
  v22 = v45;
  sub_29D935388();
  sub_29D9334A8();
  v39[0] = v21;
  v39[1] = v19;
  v39[2] = v20;
  sub_29D9334A8();
  v23 = v46;
  sub_29D935388();
  sub_29D9334A8();
  sub_29D935388();
  sub_29D77C524(0);
  v24 = v15;
  v25 = v22;
  v26 = v48;
  v27 = *(v48 + 72);
  v28 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v29 = 4 * v27;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29D944EA0;
  v31 = v30 + v28;
  v32 = *(v26 + 16);
  v42 = v18;
  v33 = v40;
  v32(v31, v18, v40);
  v43 = v24;
  v32(v31 + v27, v24, v33);
  v32(v31 + 2 * v27, v25, v33);
  v34 = 3 * v27;
  v35 = v47;
  v32(v31 + v34, v23, v33);
  v32(v31 + v29, v35, v33);
  sub_29D9334A8();
  if (v41)
  {
    v36 = sub_29D936B68();
  }

  else
  {
    v36 = sub_29D936B68();
    [v36 setAdditionalSafeAreaInsets_];
  }

  v37 = *(v48 + 8);
  v37(v35, v33);
  v37(v46, v33);
  v37(v45, v33);
  v37(v43, v33);
  v37(v42, v33);
  return v36;
}

void sub_29D852510()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243EB28);
    swift_arrayDestroy();
    v3 = sub_29D939D28();

    [v2 setAccessibilityIdentifier_];

    v4 = [v0 headerView];
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243EB68);
    swift_arrayDestroy();
    v5 = sub_29D939D28();

    [v4 setTitleAccessibilityIdentifier_];

    if (*(v0 + qword_2A17B6720) == 1)
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_29D852690(void *a1)
{
  v1 = a1;
  sub_29D852510();
}

uint64_t sub_29D8526D8(uint64_t result)
{
  if (*(v1 + qword_2A17B6720) == 1)
  {
    v2 = result;
    sub_29D936B78();
    v3 = sub_29D936C88();

    return v3(v2 & 1);
  }

  return result;
}

void *sub_29D852754()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_29D8FDA2C(v0, result);

    return sub_29D936978();
  }

  return result;
}

void sub_29D8527B4(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29D8528E8(v3, 2);
    sub_29D936978();
  }
}

uint64_t sub_29D85288C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B6718 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

uint64_t sub_29D8528E8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_getObjectType();
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2C008);
  v4 = sub_29D937878();
  v5 = sub_29D93A2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446466;
    nullsub_1();
    v8 = sub_29D93AF08();
    v10 = sub_29D6C2364(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    *(v6 + 14) = sub_29D6C2364(0xD00000000000002ELL, 0x800000029D960A80, &v12);
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s.%{public}s]: User pressed cancel button", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  sub_29D8E5640(1, 0, 0, 0);
  return sub_29D8E5270(v2, 2, 5);
}

void sub_29D852AAC()
{
  v1 = v0;
  v2 = sub_29D934A68();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x29EDC1AB0])
  {
    v8 = objc_opt_self();
    v9 = [v8 sharedInstance];
    if (!v9)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = v9;
    v11 = [v8 activePairedDeviceSelectorBlock];
    if (v11)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v13 = swift_allocObject();
      v11 = sub_29D852FBC;
      *(v13 + 16) = sub_29D852FBC;
      *(v13 + 24) = v12;
      v28 = sub_29D852FE4;
      v29 = v13;
      aBlock = MEMORY[0x29EDCA5F8];
      v25 = 1107296256;
      v26 = sub_29D853010;
      v27 = &unk_2A2448DE8;
      v14 = _Block_copy(&aBlock);
    }

    else
    {
      v14 = 0;
      v12 = 0;
    }

    v21 = [v10 getAllDevicesWithArchivedDevicesMatching_];
    sub_29D694784(v11, v12);
    _Block_release(v14);

    if (!v21)
    {
      goto LABEL_32;
    }

    sub_29D852F70();
    v17 = sub_29D939F38();

    if (v17 >> 62)
    {
      if (!sub_29D93A928())
      {
        goto LABEL_24;
      }
    }

    else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
LABEL_27:
      MEMORY[0x29ED6AE30](0, v17);
      goto LABEL_24;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_23:
      v23 = *(v17 + 32);
LABEL_24:

      return;
    }

    __break(1u);
  }

  else
  {
    if (v7 != *MEMORY[0x29EDC1AB8])
    {
      (*(v3 + 8))(v6, v2);
      return;
    }

    v15 = objc_opt_self();
    v16 = [v15 sharedInstance];
    if (!v16)
    {
      goto LABEL_33;
    }

    v17 = v16;
    v11 = [v15 activeDeviceSelectorBlock];
    if (v11)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v11;
      v19 = swift_allocObject();
      v11 = sub_29D853078;
      *(v19 + 16) = sub_29D853078;
      *(v19 + 24) = v18;
      v28 = sub_29D853080;
      v29 = v19;
      aBlock = MEMORY[0x29EDCA5F8];
      v25 = 1107296256;
      v26 = sub_29D853010;
      v27 = &unk_2A2448E60;
      v20 = _Block_copy(&aBlock);

      goto LABEL_18;
    }
  }

  v20 = 0;
  v18 = 0;
LABEL_18:
  v22 = [v17 getAllDevicesWithArchivedDevicesMatching_];
  sub_29D694784(v11, v18);
  _Block_release(v20);

  if (v22)
  {
    sub_29D852F70();
    v17 = sub_29D939F38();

    if (v17 >> 62)
    {
      if (!sub_29D93A928())
      {
        goto LABEL_24;
      }
    }

    else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if ((v17 & 0xC000000000000001) == 0)
    {
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_27;
  }

LABEL_34:
  __break(1u);
}

unint64_t sub_29D852F70()
{
  result = qword_2A17B6738;
  if (!qword_2A17B6738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B6738);
  }

  return result;
}

uint64_t sub_29D853010(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  v4 = a2;
  LOBYTE(v2) = v3(v2);

  return v2 & 1;
}

uint64_t sub_29D85305C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for BloodPressureJournalOnboardingAnalyticsActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloodPressureJournalOnboardingAnalyticsActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_29D853214(uint64_t a1, unsigned __int8 a2)
{
  sub_29D939E18();

  return result;
}

double sub_29D853380(uint64_t a1, unsigned __int8 a2)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D8534D8(uint64_t a1, unsigned __int8 a2)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D853644(uint64_t a1, unsigned __int8 a2)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D853754(uint64_t a1, unsigned __int8 a2)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D8538D4(uint64_t a1, unsigned __int8 a2)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D853A1C(uint64_t a1, unsigned __int8 a2)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

uint64_t sub_29D853B20(char a1)
{
  result = 1954047342;
  switch(a1)
  {
    case 1:
      result = 0x6C65636E6163;
      break;
    case 2:
      result = 1701736292;
      break;
    case 3:
      result = 0x64616F4C77656976;
      break;
    case 4:
      result = 0x7055746573;
      break;
    case 5:
      result = 0x7472617453746567;
      break;
    case 6:
      result = 0x4A50427472617473;
      break;
    case 7:
      result = 0x77654E7472617473;
      break;
    case 8:
      result = 7562617;
      break;
    case 9:
      result = 28526;
      break;
    case 10:
      result = 0x5042676F6CLL;
      break;
    case 11:
      result = 0x776F4E746F6ELL;
      break;
    case 12:
      result = 0x726F4D6E7261656CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_29D853C88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D8549CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D853CB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x74756F62414A5042;
  v5 = 0xED00007365636974;
  v6 = 0x6361725074736562;
  if (v2 != 6)
  {
    v6 = 0x756F4A6E69676562;
    v5 = 0xEC0000006C616E72;
  }

  v7 = 0xEB00000000657079;
  v8 = 0x546C616E72756F6ALL;
  if (v2 != 4)
  {
    v8 = 0x7265646E696D6572;
    v7 = 0xEC00000065707954;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000066667543;
  v10 = 0x6F54737365636361;
  if (v2 != 2)
  {
    v10 = 0x48756F5965636E6FLL;
    v9 = 0xEF66667543657661;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000029D957200;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_29D853DF4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_29D853B20(*a1);
  v5 = v4;
  if (v3 == sub_29D853B20(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();
  }

  return v8 & 1;
}

uint64_t sub_29D853E7C()
{
  v1 = *v0;
  sub_29D93AE58();
  sub_29D853B20(v1);
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D853EE0(uint64_t a1)
{
  sub_29D853B20(*v1);
  sub_29D939E18();

  return result;
}

uint64_t sub_29D853F34(uint64_t a1)
{
  v2 = *v1;
  sub_29D93AE58();
  sub_29D853B20(v2);
  sub_29D939E18();

  return sub_29D93AE98();
}

unint64_t sub_29D853F94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D854A18(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_29D853FC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29D853B20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_29D853FF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E72756F4A77656ELL;
  }

  else
  {
    v3 = 0x696472616F626E6FLL;
  }

  if (v2)
  {
    v4 = 0xEA0000000000676ELL;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x6E72756F4A77656ELL;
  }

  else
  {
    v5 = 0x696472616F626E6FLL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v6 = 0xEA0000000000676ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();
  }

  return v8 & 1;
}

uint64_t sub_29D85409C()
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

double sub_29D854124(uint64_t a1)
{
  sub_29D939E18();

  return result;
}

uint64_t sub_29D854198(uint64_t a1)
{
  sub_29D93AE58();
  sub_29D939E18();

  return sub_29D93AE98();
}

void sub_29D854228(uint64_t *a1@<X8>)
{
  v2 = 0x696472616F626E6FLL;
  if (*v1)
  {
    v2 = 0x6E72756F4A77656ELL;
  }

  v3 = 0xEA0000000000676ELL;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_29D85426C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x68746E6F6DLL;
  }

  else
  {
    v3 = 1801807223;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x68746E6F6DLL;
  }

  else
  {
    v5 = 1801807223;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29D93AD78();
  }

  return v8 & 1;
}