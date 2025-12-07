void sub_1BA24A584(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v11[1] = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    v8 = (a3 + 32);
    while (1)
    {
      v9 = *v8++;
      v10 = v9;
      a1(v11, &v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1BA24A670(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v11[1] = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    for (i = (a3 + 40); ; i += 2)
    {
      v9 = *i;
      v10[0] = *(i - 1);
      v10[1] = v9;

      (a1)(v11, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1BA24A778(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1BA066DC0(0, v5, 0);
    v8 = v15;
    for (i = (a3 + 32); ; ++i)
    {
      v13 = *i;

      a1(&v14, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v14;
      v15 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1BA066DC0((v11 > 1), v12 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1BA24A8A4(void (*a1)(uint64_t *__return_ptr, __int128 *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v11[1] = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    for (i = (a3 + 32); ; ++i)
    {
      v10 = *i;
      v9 = v10;

      (a1)(v11, &v10);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1BA24A9C8(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1BA066F50(0, v4, 0);
    v7 = v15;
    v8 = (a3 + 32);
    while (1)
    {
      v9 = *v8++;
      v13 = v9;
      a1(&v14, &v13);
      if (v3)
      {
        break;
      }

      v10 = v14;
      v15 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1BA066F50((v11 > 1), v12 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v10;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1BA24AAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[0] = a1;
  v23[1] = a2;
  v5 = *(a3 + 16);
  if (v5)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1BA066BEC(0, v5, 0);
    v7 = v41;
    v8 = (a3 + 32);
    for (i = v5 - 1; ; --i)
    {
      v10 = v8[1];
      v11 = v8[3];
      v38 = v8[2];
      v39 = v11;
      v12 = v8[3];
      v40 = v8[4];
      v13 = v8[1];
      v37[0] = *v8;
      v37[1] = v13;
      v31 = v38;
      v32 = v12;
      v33 = v8[4];
      v29 = v37[0];
      v30 = v10;
      sub_1B9FF3650(v37, &v24);
      (v23[0])(v34, &v29);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v26 = v31;
      v27 = v32;
      v28 = v33;
      v24 = v29;
      v25 = v30;
      sub_1B9FF3768(&v24);
      v41 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1BA066BEC((v14 > 1), v15 + 1, 1);
      }

      v16 = v35;
      v17 = v36;
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v19 = MEMORY[0x1EEE9AC00](v18, v18);
      v21 = v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21, v19);
      sub_1BA1F2854(v15, v21, &v41, v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v7 = v41;
      if (!i)
      {
        return;
      }

      v8 += 5;
    }

    v26 = v31;
    v27 = v32;
    v28 = v33;
    v24 = v29;
    v25 = v30;
    sub_1B9FF3768(&v24);

    __break(1u);
  }
}

void sub_1BA24AD10(void (*a1)(void *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B9F39554(0, v5, 0);
    v8 = v18;
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v16[0] = *(i - 1);
      v16[1] = v10;

      (a1)(v17, v16);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v12 = v17[0];
      v11 = v17[1];
      v18 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1B9F39554((v13 > 1), v14 + 1, 1);
      }

      ObjectType = swift_getObjectType();
      sub_1B9F38934(v14, v12, &v18, ObjectType, v11);
      v8 = v18;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t OnboardingConfirmDetailsDataSource.init(sections:detailsFormatter:detailsProvider:)(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1BA24D9CC(a1, v12, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

uint64_t OnboardingConfirmDetailsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BA24EB64(v0 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate);

  return v0;
}

uint64_t sub_1BA24B0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  return sub_1BA24EBC0(v3 + v4, a1, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
}

double sub_1BA24B12C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();

  sub_1BA24EC2C(a1, v3 + v4, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  swift_endAccess();

  return result;
}

void (*sub_1BA24B1C8(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1BA24F0CC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model;
  v5[11] = v8;
  v5[12] = v10;
  v11 = *(v1 + v10);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA24EBC0(v11 + v12, v9, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  return sub_1BA24B308;
}

void sub_1BA24B308(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 11);
  v4 = *(*a1 + 12);
  v6 = *(*a1 + 9);
  v5 = *(*a1 + 10);
  if (a2)
  {
    sub_1BA24EBC0(*(*a1 + 11), v5, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    v7 = *(v6 + v4);
    v8 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
    swift_beginAccess();

    sub_1BA24EC2C(v5, v7 + v8, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    swift_endAccess();

    sub_1BA24EB64(v3, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  }

  else
  {
    v9 = *(v6 + v4);
    v10 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
    swift_beginAccess();

    sub_1BA24EC2C(v3, v9 + v10, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    swift_endAccess();
  }

  free(v3);
  free(v5);

  free(v2);
}

double sub_1BA24B468()
{
  swift_beginAccess();

  return result;
}

double sub_1BA24B4C0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  *(v3 + v4) = a1;

  return result;
}

void (*sub_1BA24B538(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1BA24B5E4;
}

void sub_1BA24B5E4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*(*a1 + 80) + *(*a1 + 88));
  v5 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  if (a2)
  {
    swift_beginAccess();
    *(v4 + v5) = v3;
  }

  else
  {
    swift_beginAccess();
    *(v4 + v5) = v3;
  }

  free(v2);
}

uint64_t sub_1BA24B698@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  return sub_1BA24EBC0(v1 + v3, a1, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
}

uint64_t sub_1BA24B70C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  sub_1BA24EC2C(a1, v1 + v3, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  return swift_endAccess();
}

uint64_t sub_1BA24B838(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA24B8A4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

void sub_1BA24B944(uint64_t a1)
{
  v2 = v1;
  sub_1BA24F0CC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v40 - v6;
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_confirmDetailsSections) = a1;

  v8 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model;

  sub_1BA119B74(a1);

  v9 = *(v2 + v8);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA24EBC0(v9 + v10, v7, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
  swift_beginAccess();
  v12 = *(v9 + v11);
  v49 = v9;
  v50 = v7;

  sub_1BA24A778(sub_1BA0AF230, v48, v12);
  v14 = v13;

  sub_1BA24EB64(v7, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  v15 = *(v14 + 16);
  if (v15)
  {
    v40 = v2;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v15, 0);
    v16 = 0;
    v45 = *(v14 + 16);
    v42 = v14 + 32;
    v17 = v57;
    v41 = 0x80000001BA4E8490;
    v18 = MEMORY[0x1E69A3310];
    v44 = v14;
    v43 = v15;
    while (v16 != v45)
    {
      if (v16 >= *(v14 + 16))
      {
        goto LABEL_19;
      }

      v47 = v17;
      v19 = *(v42 + 8 * v16);
      v20 = *(v19 + 16);
      if (v20)
      {
        v56 = MEMORY[0x1E69E7CC0];

        sub_1BA066B80(0, v20, 0);
        v21 = v56;
        v46 = v19;
        v22 = v19 + 32;
        do
        {
          sub_1B9F0A534(v22, v51);
          sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
          sub_1B9F0D950(0, &qword_1EDC6AD50, v18);
          swift_dynamicCast();
          v56 = v21;
          v24 = *(v21 + 16);
          v23 = *(v21 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1BA066B80((v23 > 1), v24 + 1, 1);
          }

          v25 = v54;
          v26 = v55;
          v27 = __swift_mutable_project_boxed_opaque_existential_1(&v52, v54);
          v28 = MEMORY[0x1EEE9AC00](v27, v27);
          v30 = &v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v31 + 16))(v30, v28);
          sub_1BA1F2854(v24, v30, &v56, v25, v26);
          __swift_destroy_boxed_opaque_existential_1(&v52);
          v21 = v56;
          v22 += 40;
          --v20;
        }

        while (v20);
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v52 = 0xD000000000000018;
      v53 = v41;
      v51[0] = v16;
      v32 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v32);

      v34 = v52;
      v33 = v53;

      v36 = Array<A>.identifierToIndexDict()(v35);

      v17 = v47;
      v57 = v47;
      v38 = *(v47 + 16);
      v37 = *(v47 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B9F277B0((v37 > 1), v38 + 1, 1);
        v17 = v57;
      }

      ++v16;
      *(v17 + 16) = v38 + 1;
      v39 = (v17 + 48 * v38);
      v39[4] = 0;
      v39[5] = 0;
      v39[6] = v21;
      v39[7] = v36;
      v39[8] = v34;
      v39[9] = v33;
      v14 = v44;
      if (v16 == v43)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_17:
    sub_1BA0E7F10(v17, 1);
  }
}

double sub_1BA24BE98(uint64_t a1, void *a2)
{
  sub_1BA24F0CC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  sub_1BA24EBC0(a1, &v11 - v6, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  v8 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();

  sub_1BA24EC2C(v7, v8 + v9, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  swift_endAccess();

  return result;
}

double sub_1BA24BFA8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

uint64_t sub_1BA24C040(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E6969C28];
  sub_1BA24F0CC(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - v7;
  sub_1BA24EBC0(a1, &v12 - v7, &qword_1EDC6AE28, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  sub_1BA24EC2C(v8, v9 + v10, &qword_1EDC6AE28, v4);
  return swift_endAccess();
}

uint64_t OnboardingConfirmDetailsDataSource.__allocating_init(sections:detailsFormatter:detailsProvider:)(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x1EEE9AC00](v9, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1BA24D9CC(a1, v12, a3, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

double sub_1BA24C284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315138;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Health details changed, updating model", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    v17 = v12;
    a1 = v19;
    MEMORY[0x1BFAF43A0](v17, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1BA11993C(a1);
  }

  return result;
}

double sub_1BA24C48C()
{

  sub_1BA24EB64(v0 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate);

  return result;
}

uint64_t OnboardingConfirmDetailsDataSource.__deallocating_deinit()
{
  OnboardingConfirmDetailsDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA24C580(void (*a1)(void *a1), void *a2)
{
  v3 = v2;
  v43 = *v2;
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1BA4A3EA8();
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3DD8();
  sub_1B9F0A534(a2, v46);
  (*(v7 + 16))(v10, a1, v6);
  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = v11;
    v18 = v17;
    v41 = swift_slowAlloc();
    v45 = v41;
    *v18 = 136315906;
    v19 = sub_1BA4A85D8();
    v40 = v16;
    v21 = sub_1B9F0B82C(v19, v20, &v45);
    v43 = a1;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1B9F0B82C(0xD000000000000017, 0x80000001BA4F6BF0, &v45);
    *(v18 + 22) = 2080;
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    v23 = sub_1BA4A2D58();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v26 = sub_1B9F0B82C(v23, v25, &v45);

    *(v18 + 24) = v26;
    *(v18 + 32) = 2080;
    sub_1BA24F120(&unk_1EBBED850, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
    v27 = sub_1BA4A82D8();
    v29 = v28;
    (*(v7 + 8))(v10, v6);
    v30 = sub_1B9F0B82C(v27, v29, &v45);
    a1 = v43;

    *(v18 + 34) = v30;
    _os_log_impl(&dword_1B9F07000, v15, v40, "[%s.%s] Reloading item %s at indexPath %s", v18, 0x2Au);
    v31 = v41;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v31, -1, -1);
    MEMORY[0x1BFAF43A0](v18, -1, -1);

    (*(v44 + 8))(v14, v42);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    (*(v44 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v32 = a2[3];
  v33 = a2[4];
  v34 = __swift_project_boxed_opaque_existential_1(a2, v32);
  sub_1BA0F8740(a1, v34, v3, v32, *(v33 + 8));
  v35 = v3 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = *(v35 + 8);
    ObjectType = swift_getObjectType();
    (*(v37 + 8))(v3, ObjectType, v37);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA24CA08(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42[0] = v10;
    *v9 = 136315394;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, v42);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1B9F0B82C(0xD000000000000019, 0x80000001BA4F6BD0, v42);
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%s.%s] Updating all items", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = v36;
  v38 = *(a1 + 16);
  if (v38)
  {
    v15 = 0;
    v37 = a1 + 32;
    v16 = MEMORY[0x1E69A3348];
    v17 = MEMORY[0x1E69A3310];
    do
    {
      v19 = *(v37 + 8 * v15);
      v20 = *(v19 + 16);
      if (v20)
      {
        v40 = v15;
        v45 = MEMORY[0x1E69E7CC0];

        sub_1BA066B80(0, v20, 0);
        v21 = v45;
        v39 = v19;
        v22 = v19 + 32;
        do
        {
          sub_1B9F0A534(v22, v41);
          sub_1B9F0D950(0, &qword_1EDC6E1B0, v16);
          sub_1B9F0D950(0, &qword_1EDC6AD50, v17);
          swift_dynamicCast();
          v45 = v21;
          v24 = *(v21 + 16);
          v23 = *(v21 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1BA066B80((v23 > 1), v24 + 1, 1);
          }

          v25 = v43;
          v26 = v44;
          v27 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
          v28 = MEMORY[0x1EEE9AC00](v27, v27);
          v30 = &v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v31 + 16))(v30, v28);
          sub_1BA1F2854(v24, v30, &v45, v25, v26);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v21 = v45;
          v22 += 40;
          --v20;
        }

        while (v20);

        v14 = v36;
        v15 = v40;
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      v18 = v15 + 1;
      sub_1BA0EB668(v15, v21, 1);

      v15 = v18;
    }

    while (v18 != v38);
  }

  v32 = v14 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    (*(v34 + 8))(v14, ObjectType, v34);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA24CE8C(uint64_t a1)
{
  v2 = v1;
  v33 = *v1;
  v4 = sub_1BA4A1998();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  (*(v5 + 16))(v8, a1, v4);
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v9;
    v16 = v15;
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v16 = 136315650;
    v17 = sub_1BA4A85D8();
    v19 = sub_1B9F0B82C(v17, v18, v35);
    v33 = a1;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1B9F0B82C(0x692865766F6D6572, 0xEF293A74416D6574, v35);
    *(v16 + 22) = 2080;
    sub_1BA24F120(&unk_1EBBED850, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
    v21 = sub_1BA4A82D8();
    v23 = v22;
    (*(v5 + 8))(v8, v4);
    v24 = sub_1B9F0B82C(v21, v23, v35);
    a1 = v33;

    *(v16 + 24) = v24;
    _os_log_impl(&dword_1B9F07000, v13, v14, "[%s.%s] Removing item at indexPath %s", v16, 0x20u);
    v25 = v31;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v25, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v34 + 8))(v12, v32);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v34 + 8))(v12, v9);
  }

  sub_1BA0EE51C(a1);
  v26 = v2 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 1);
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(v2, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BA24D278(void *a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v37 = *v2;
  v5 = sub_1BA4A1998();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1BA4A3EA8();
  v10 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  (*(v6 + 16))(v9, a2, v5);
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = a2;
    v17 = v16;
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v17 = 136315650;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, v40);
    v37 = v2;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1B9F0B82C(0xD000000000000019, 0x80000001BA4F6BB0, v40);
    *(v17 + 22) = 2080;
    sub_1BA24F120(&unk_1EBBED850, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
    v22 = sub_1BA4A82D8();
    v24 = v23;
    (*(v6 + 8))(v9, v5);
    v25 = sub_1B9F0B82C(v22, v24, v40);
    v3 = v37;

    *(v17 + 24) = v25;
    _os_log_impl(&dword_1B9F07000, v14, v15, "[%s.%s] Inserting item at indexPath %s", v17, 0x20u);
    v26 = v35;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    v27 = v17;
    a2 = v36;
    MEMORY[0x1BFAF43A0](v27, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  (*(v10 + 8))(v13, v38);
  v29 = v39[3];
  v28 = v39[4];
  v30 = __swift_project_boxed_opaque_existential_1(v39, v29);
  sub_1BA0F91A8(v30, a2, v3, v29, *(v28 + 8));
  v31 = &v3[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = *(v31 + 1);
    ObjectType = swift_getObjectType();
    (*(v33 + 8))(v3, ObjectType, v33);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall OnboardingConfirmDetailsDataSource.registerCells(for:)(UITableView *a1)
{
  sub_1B9FCCA54();
  sub_1B9FCCBF4();
  sub_1B9FCCC28();
  sub_1B9FCCC5C();
  sub_1B9FCCC90();
}

void sub_1BA24D6AC()
{
  sub_1B9FCCA54();
  sub_1B9FCCBF4();
  sub_1B9FCCC28();
  sub_1B9FCCC5C();
  sub_1B9FCCC90();
}

double OnboardingConfirmDetailsDataSource.indexPathSelected(_:)(char *a1)
{
  v3 = MEMORY[0x1E6969C28];
  sub_1BA24F0CC(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_1BA4A1998();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  sub_1BA24EC2C(v7, v1 + v10, &qword_1EDC6AE28, v3);
  swift_endAccess();

  sub_1BA11A1D0(a1);

  return result;
}

double sub_1BA24D854(char *a1)
{
  v3 = MEMORY[0x1E6969C28];
  sub_1BA24F0CC(0, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = sub_1BA4A1998();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a1, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  swift_beginAccess();
  sub_1BA24EC2C(v7, v8 + v11, &qword_1EDC6AE28, v3);
  swift_endAccess();

  sub_1BA11A1D0(a1);

  return result;
}

uint64_t sub_1BA24D9CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v137 = a1;
  v127 = *a4;
  sub_1BA24F0CC(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v123 = &v113 - v13;
  v119 = sub_1BA4A6488();
  v118 = *(v119 - 8);
  v15 = MEMORY[0x1EEE9AC00](v119, v14);
  v117 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0AEF30(0, v15);
  v122 = v17;
  v121 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v120 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA0AF03C(0, v19);
  v126 = v21;
  v125 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v124 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1BA4A1798();
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v24);
  v128 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA24F0CC(0, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v113 - v28;
  sub_1BA24F0CC(0, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v113 - v36;
  v144[3] = a5;
  v144[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v144);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v39 = OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_selectedIndexPath;
  v40 = sub_1BA4A1998();
  (*(*(v40 - 8) + 56))(v8 + v39, 1, 1, v40);
  *(v8 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_32;
  }

LABEL_2:
  for (i = MEMORY[0x1E69E7CD0]; ; i = sub_1B9FF611C(MEMORY[0x1E69E7CC0]))
  {
    *(v8 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_subscriptions) = i;
    *(v8 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_confirmDetailsSections) = v137;
    *(v8 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_detailsProvider) = a3;
    if (a3)
    {
      v42 = type metadata accessor for ConfirmDetailsProvider.Details(0);
      (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
    }

    else
    {
      v43 = sub_1BA4A1148();
      v44 = *(*(v43 - 8) + 56);
      v44(v29, 1, 1, v43);
      v45 = type metadata accessor for ConfirmDetailsProvider.Details(0);
      v46 = v8;
      v47 = v45[5];
      v44(&v37[v47], 1, 1, v43);
      v48 = v45[6];
      v49 = v45[7];
      *v37 = 0;
      v37[8] = 1;

      v50 = &v37[v47];
      v8 = v46;
      sub_1BA24EC2C(v29, v50, &qword_1EBBEA478, MEMORY[0x1E6968278]);
      *&v37[v48] = 0;
      *&v37[v49] = 0;
      v37[v45[8]] = 0;
      v37[v45[9]] = 0;
      (*(*(v45 - 1) + 56))(v37, 0, 1, v45);
    }

    sub_1B9F0A534(v144, v141);
    sub_1BA24EBC0(v37, v33, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    if (a3)
    {
      swift_beginAccess();
      v51 = *(a3 + 88) ? 35 : *(a3 + 80);
    }

    else
    {
      v51 = 35;
    }

    type metadata accessor for ConfirmDetailsModel(0);
    v52 = swift_allocObject();
    v53 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
    v54 = type metadata accessor for ConfirmDetailsProvider.Details(0);
    v55 = *(*(v54 - 8) + 56);
    v116 = v54;
    v55(v52 + v53, 1, 1);
    v56 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_correlatedItemsMapping;

    v57 = MEMORY[0x1E69E7CC0];
    *(v52 + v56) = sub_1B9FDB8F0(MEMORY[0x1E69E7CC0]);
    *(v52 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v58 = [objc_opt_self() hk_gregorianCalendar];
    v59 = v57;
    sub_1BA4A1828();

    v60 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel____lazy_storage___defaultDateOfBirth;
    sub_1BA24F0CC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    (*(*(v61 - 8) + 56))(v52 + v60, 1, 1, v61);
    sub_1B9F0A534(v141, v52 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_valueFormatter);
    *(v52 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows) = v57;
    swift_beginAccess();
    sub_1BA0AF19C(v33, v52 + v53);
    swift_endAccess();
    *(v52 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues) = MEMORY[0x1E69E7CC8];
    *(v52 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_defaultAge) = v51;
    sub_1BA119B74(v137);

    sub_1BA24EB64(v33, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    __swift_destroy_boxed_opaque_existential_1(v141);
    *(v8 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model) = v52;
    v62 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
    v63 = swift_beginAccess();
    v64 = *(v52 + v62);
    MEMORY[0x1EEE9AC00](v63, v65);
    *(&v113 - 2) = v52;
    *(&v113 - 1) = v37;

    sub_1BA24A778(sub_1BA24F168, (&v113 - 4), v64);
    v29 = v66;

    v67 = *(v29 + 2);
    if (!v67)
    {
      break;
    }

    v113 = v8;
    v114 = v37;
    v115 = a3;
    v140 = v59;
    sub_1B9F277B0(0, v67, 0);
    a3 = 0;
    v135 = *(v29 + 2);
    v132 = v29 + 32;
    v68 = v140;
    v131 = 0x80000001BA4E8490;
    v37 = MEMORY[0x1E69A3310];
    v8 = &qword_1EDC6AD50;
    v69 = v59;
    v134 = v29;
    v133 = v67;
    while (a3 != v135)
    {
      if (a3 >= *(v29 + 2))
      {
        goto LABEL_31;
      }

      v137 = v68;
      v70 = *&v132[8 * a3];
      v71 = *(v70 + 16);
      if (v71)
      {
        v139 = v69;

        sub_1BA066B80(0, v71, 0);
        v72 = v139;
        v136 = v70;
        v73 = v70 + 32;
        do
        {
          sub_1B9F0A534(v73, v138);
          sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
          sub_1B9F0D950(0, &qword_1EDC6AD50, v37);
          swift_dynamicCast();
          v139 = v72;
          v75 = *(v72 + 16);
          v74 = *(v72 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_1BA066B80((v74 > 1), v75 + 1, 1);
          }

          v76 = v142;
          v77 = v143;
          v78 = __swift_mutable_project_boxed_opaque_existential_1(v141, v142);
          v79 = MEMORY[0x1EEE9AC00](v78, v78);
          v81 = &v113 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v82 + 16))(v81, v79);
          sub_1BA1F2854(v75, v81, &v139, v76, v77);
          __swift_destroy_boxed_opaque_existential_1(v141);
          v72 = v139;
          v73 += 40;
          --v71;
        }

        while (v71);
        v69 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v72 = v69;
      }

      v141[0] = 0;
      v141[1] = 0xE000000000000000;
      sub_1BA4A7DF8();

      v141[0] = 0xD000000000000018;
      v141[1] = v131;
      v138[0] = a3;
      v83 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v83);

      v84 = v141[0];
      v33 = v141[1];

      v86 = Array<A>.identifierToIndexDict()(v85);

      v68 = v137;
      v140 = v137;
      v88 = *(v137 + 16);
      v87 = *(v137 + 24);
      if (v88 >= v87 >> 1)
      {
        v137 = v84;
        sub_1B9F277B0((v87 > 1), v88 + 1, 1);
        v84 = v137;
        v68 = v140;
      }

      ++a3;
      *(v68 + 16) = v88 + 1;
      v89 = (v68 + 48 * v88);
      v89[4] = 0;
      v89[5] = 0;
      v89[6] = v72;
      v89[7] = v86;
      v89[8] = v84;
      v89[9] = v33;
      v29 = v134;
      if (a3 == v133)
      {
        v90 = v68;

        a3 = v115;
        v37 = v114;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_2;
    }
  }

  v90 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v141[0] = 0;
  v141[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(v141, "MutableArray<");
  HIWORD(v141[1]) = -4864;
  v91 = v128;
  sub_1BA4A1788();
  v92 = sub_1BA4A1748();
  v94 = v93;
  (*(v129 + 8))(v91, v130);
  MEMORY[0x1BFAF1350](v92, v94);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v95 = MutableArrayDataSource.init(arrangedSections:identifier:)(v90, v141[0], v141[1]);
  *(*(v95 + OBJC_IVAR____TtC18HealthExperienceUI34OnboardingConfirmDetailsDataSource_model) + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate + 8) = &off_1F3811050;
  swift_unknownObjectWeakAssign();
  if (a3)
  {
    v96 = *(*a3 + 184);

    v98 = v96(v97);

    v141[0] = v98;
    sub_1BA24F048(0);
    sub_1BA24F120(&qword_1EBBEB4E0, sub_1BA24F048, MEMORY[0x1E695BED8]);
    v99 = v120;
    sub_1BA4A4FA8();

    sub_1B9F38BF4();
    v100 = v118;
    v101 = v117;
    v102 = v119;
    (*(v118 + 104))(v117, *MEMORY[0x1E69E7F90], v119);
    v103 = sub_1BA4A7338();
    (*(v100 + 8))(v101, v102);
    v141[0] = v103;
    v104 = sub_1BA4A72A8();
    v105 = v123;
    (*(*(v104 - 8) + 56))(v123, 1, 1, v104);
    sub_1BA24F120(&qword_1EBBEB4F0, sub_1BA0AEF30, MEMORY[0x1E695BC80]);
    sub_1BA24F120(&qword_1EDC6B5B0, sub_1B9F38BF4, MEMORY[0x1E69E8028]);
    v106 = v124;
    v107 = v122;
    sub_1BA4A50A8();
    sub_1BA24EB64(v105, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
    (*(v121 + 8))(v99, v107);

    v108 = swift_allocObject();
    swift_weakInit();
    v109 = swift_allocObject();
    v110 = v127;
    *(v109 + 16) = v108;
    *(v109 + 24) = v110;
    sub_1BA24F120(&qword_1EBBEB4F8, sub_1BA0AF03C, MEMORY[0x1E695BE98]);
    v111 = v126;
    sub_1BA4A5148();

    (*(v125 + 8))(v106, v111);
    swift_beginAccess();
    sub_1BA4A4D28();
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v144);
  sub_1BA24EB64(v37, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
  return v95;
}

uint64_t sub_1BA24EB64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA24F0CC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA24EBC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA24F0CC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA24EC2C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA24F0CC(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for OnboardingConfirmDetailsDataSource(uint64_t a1)
{
  result = qword_1EBBEF1F0;
  if (!qword_1EBBEF1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA24ED00(uint64_t a1)
{
  sub_1BA24F0CC(319, &qword_1EDC6AE28, MEMORY[0x1E6969C28]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BA24F048(uint64_t a1)
{
  if (!qword_1EBBEB4D8)
  {
    sub_1BA24F0CC(255, &qword_1EBBEA480, type metadata accessor for ConfirmDetailsProvider.Details);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB4D8);
    }
  }
}

void sub_1BA24F0CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA24F120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1BA24F1A8()
{
  swift_beginAccess();

  return result;
}

double sub_1BA24F1F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_colors;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1BA24F2A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_topCategories);
  v10 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_17:
    v2 = sub_1BA4A7CC8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFAF2860](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = [v5 color];

    ++v3;
    if (v8)
    {
      MEMORY[0x1BFAF1510]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v4 = v10;
      v3 = v7;
    }
  }

  return v4;
}

void sub_1BA24F418()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CategoryMetadata(0);
  v76 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v78 = (&v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v72 - v13;
  sub_1BA4A3DD8();
  v15 = v1;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FC8();

  v18 = os_log_type_enabled(v16, v17);
  v19 = &OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore;
  v79 = v10;
  v80 = v15;
  v75 = ObjectType;
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v83[0] = v21;
    *v20 = 136315394;
    v22 = sub_1BA4A85D8();
    v24 = sub_1B9F0B82C(v22, v23, v83);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    swift_beginAccess();

    v26 = MEMORY[0x1BFAF1560](v25, v3);
    v28 = v27;

    v29 = sub_1B9F0B82C(v26, v28, v83);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_1B9F07000, v16, v17, "[%s] Updating top categories from categoriesMetadata: %s", v20, 0x16u);
    swift_arrayDestroy();
    v30 = v21;
    v19 = &OBJC_IVAR____TtC18HealthExperienceUI47OBKSummarySharingInvitationTopicsViewController_healthExperienceStore;
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    v31 = v20;
    v15 = v80;
    MEMORY[0x1BFAF43A0](v31, -1, -1);
  }

  v32 = v7;
  v77 = *(v7 + 8);
  v77(v14, v6);
  v33 = v19[66];
  swift_beginAccess();
  v34 = *&v15[v33];
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  v37 = v78;
  if (v35)
  {
    v38 = v76;
    v39 = v34 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v82[0] = MEMORY[0x1E69E7CC0];

    sub_1BA4A7F08();
    v40 = *(v38 + 72);
    sub_1BA2511FC(v39, v37, type metadata accessor for CategoryMetadata);
    v41 = v37->isa;
    sub_1BA251154(v37, type metadata accessor for CategoryMetadata);
    sub_1BA4A7ED8();
    sub_1BA4A7F18();
    sub_1BA4A7F28();
    sub_1BA4A7EE8();
    if (v35 != 1)
    {
      sub_1BA2511FC(v39 + v40, v37, type metadata accessor for CategoryMetadata);
      v42 = v37->isa;
      sub_1BA251154(v37, type metadata accessor for CategoryMetadata);
      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
      if (v35 != 2)
      {
        sub_1BA2511FC(v39 + 2 * v40, v37, type metadata accessor for CategoryMetadata);
        v43 = v37->isa;
        sub_1BA251154(v37, type metadata accessor for CategoryMetadata);
        sub_1BA4A7ED8();
        sub_1BA4A7F18();
        sub_1BA4A7F28();
        sub_1BA4A7EE8();
        if (v35 != 3)
        {
          sub_1BA2511FC(v39 + 3 * v40, v37, type metadata accessor for CategoryMetadata);
          v44 = v37->isa;
          sub_1BA251154(v37, type metadata accessor for CategoryMetadata);
          sub_1BA4A7ED8();
          sub_1BA4A7F18();
          sub_1BA4A7F28();
          sub_1BA4A7EE8();
        }
      }
    }

    v36 = v82[0];
    v15 = v80;
  }

  v45 = v79;
  sub_1BA4A3DD8();

  v46 = sub_1BA4A3E88();
  v47 = sub_1BA4A6FC8();

  if (!os_log_type_enabled(v46, v47))
  {

    v77(v45, v6);
LABEL_24:
    *&v15[OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_topCategories] = v36;

    swift_beginAccess();

    v81 = sub_1BA24F2A8();
    sub_1BA4A4DA8();

    return;
  }

  v74 = v47;
  v78 = v46;
  v48 = swift_slowAlloc();
  v73 = swift_slowAlloc();
  v82[0] = v73;
  *v48 = 136315394;
  v49 = sub_1BA4A85D8();
  v51 = sub_1B9F0B82C(v49, v50, v82);

  *(v48 + 4) = v51;
  v76 = v48;
  *(v48 + 12) = 2080;
  if (v36 >> 62)
  {
    v52 = sub_1BA4A7CC8();
  }

  else
  {
    v52 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = MEMORY[0x1E69E7CC0];
  if (!v52)
  {
LABEL_23:
    sub_1BA251264(0);
    v65 = MEMORY[0x1BFAF1560](v53, v64);
    v67 = v66;

    v68 = sub_1B9F0B82C(v65, v67, v82);

    v69 = v76;
    *(v76 + 14) = v68;
    v70 = v78;
    _os_log_impl(&dword_1B9F07000, v78, v74, "[%s] Selected top categories: %s", v69, 0x16u);
    v71 = v73;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v71, -1, -1);
    MEMORY[0x1BFAF43A0](v69, -1, -1);

    v77(v45, v6);
    v15 = v80;
    goto LABEL_24;
  }

  v81 = MEMORY[0x1E69E7CC0];
  sub_1BA066D14(0, v52 & ~(v52 >> 63), 0);
  if ((v52 & 0x8000000000000000) == 0)
  {
    v72 = v32;
    v75 = v6;
    v54 = 0;
    v53 = v81;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x1BFAF2860](v54, v36);
      }

      else
      {
        v55 = *(v36 + 8 * v54 + 32);
      }

      v56 = v55;
      v57 = [v55 displayName];
      v58 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v60 = v59;

      v81 = v53;
      v62 = *(v53 + 16);
      v61 = *(v53 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1BA066D14((v61 > 1), v62 + 1, 1);
        v53 = v81;
      }

      ++v54;
      *(v53 + 16) = v62 + 1;
      v63 = (v53 + 24 * v62);
      v63[4] = v58;
      v63[5] = v60;
      v63[6] = v56;
    }

    while (v52 != v54);
    v6 = v75;
    v45 = v79;
    goto LABEL_23;
  }

  __break(1u);
}

double sub_1BA24FC84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_colors;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

id ProfileGradientsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProfileGradientsProvider.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_topCategories] = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_colors;
  v5 = v1;
  sub_1B9F10B50(0);
  swift_allocObject();
  *&v0[v2] = sub_1BA4A4DF8();
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI24ProfileGradientsProvider_categoriesMetadata] = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ProfileGradientsProvider();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ProfileGradientsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileGradientsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA24FF04@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ProfileGradientsProvider();
  result = sub_1BA4A4D78();
  *a2 = result;
  return result;
}

double sub_1BA24FF40()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for CategoryMetadata(uint64_t a1)
{
  result = qword_1EDC68E80;
  if (!qword_1EDC68E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA25011C(uint64_t a1)
{
  sub_1B9F0ADF8(319, &qword_1EDC6B5C0, 0x1E69A4368);
  if (v1 <= 0x3F)
  {
    sub_1B9F7B6A0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_1BA2501C0(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v12 = sub_1BA4A1728();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  v21 = *(a2 + 8);
  v22 = *(a1 + 8);
  if (v21 == v22)
  {
    v23 = type metadata accessor for CategoryMetadata(0);
    sub_1BA2511FC(a2 + *(v23 + 24), v11, sub_1B9F7B6A0);
    v24 = v13[6];
    if (v24(v11, 1, v12) == 1)
    {
      v25 = v11;
    }

    else
    {
      v32 = a1;
      v27 = v11;
      v28 = v13[4];
      v28(v20, v27, v12);
      sub_1BA2511FC(v32 + *(v23 + 24), v7, sub_1B9F7B6A0);
      if (v24(v7, 1, v12) != 1)
      {
        v28(v16, v7, v12);
        v26 = sub_1BA4A16D8();
        v29 = v13[1];
        v29(v16, v12);
        v29(v20, v12);
        return (v26 & 1) == 0;
      }

      (v13[1])(v20, v12);
      v25 = v7;
    }

    sub_1BA251154(v25, sub_1B9F7B6A0);
    v26 = 0;
  }

  else
  {
    v26 = v21 < v22;
  }

  return (v26 & 1) == 0;
}

BOOL sub_1BA2504A0(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v12 = sub_1BA4A1728();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  v21 = *(a1 + 8);
  v22 = *(a2 + 8);
  if (v21 == v22)
  {
    v23 = type metadata accessor for CategoryMetadata(0);
    sub_1BA2511FC(a1 + *(v23 + 24), v11, sub_1B9F7B6A0);
    v24 = v13[6];
    if (v24(v11, 1, v12) == 1)
    {
      v25 = v11;
    }

    else
    {
      v32 = a2;
      v27 = v11;
      v28 = v13[4];
      v28(v20, v27, v12);
      sub_1BA2511FC(v32 + *(v23 + 24), v7, sub_1B9F7B6A0);
      if (v24(v7, 1, v12) != 1)
      {
        v28(v16, v7, v12);
        v26 = sub_1BA4A16D8();
        v29 = v13[1];
        v29(v16, v12);
        v29(v20, v12);
        return (v26 & 1) == 0;
      }

      (v13[1])(v20, v12);
      v25 = v7;
    }

    sub_1BA251154(v25, sub_1B9F7B6A0);
    v26 = 0;
  }

  else
  {
    v26 = v21 < v22;
  }

  return (v26 & 1) == 0;
}

uint64_t sub_1BA250780(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v12 = sub_1BA4A1728();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  v21 = *(a2 + 8);
  v22 = *(a1 + 8);
  if (v21 == v22)
  {
    v23 = type metadata accessor for CategoryMetadata(0);
    sub_1BA2511FC(a2 + *(v23 + 24), v11, sub_1B9F7B6A0);
    v24 = v13[6];
    if (v24(v11, 1, v12) == 1)
    {
      v25 = v11;
    }

    else
    {
      v32 = a1;
      v27 = v11;
      v28 = v13[4];
      v28(v20, v27, v12);
      sub_1BA2511FC(v32 + *(v23 + 24), v7, sub_1B9F7B6A0);
      if (v24(v7, 1, v12) != 1)
      {
        v28(v16, v7, v12);
        v26 = sub_1BA4A16D8();
        v29 = v13[1];
        v29(v16, v12);
        v29(v20, v12);
        return v26 & 1;
      }

      (v13[1])(v20, v12);
      v25 = v7;
    }

    sub_1BA251154(v25, sub_1B9F7B6A0);
    v26 = 0;
  }

  else
  {
    v26 = v21 < v22;
  }

  return v26 & 1;
}

BOOL sub_1BA250AA4(void *a1, void *a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2510F0(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
  if ((sub_1BA4A7798() & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v18 = *(type metadata accessor for CategoryMetadata(0) + 24);
  v19 = *(v14 + 48);
  sub_1BA2511FC(a1 + v18, v17, sub_1B9F7B6A0);
  sub_1BA2511FC(a2 + v18, &v17[v19], sub_1B9F7B6A0);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1BA251154(v17, sub_1B9F7B6A0);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1BA2511FC(v17, v12, sub_1B9F7B6A0);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1BA251154(v17, sub_1BA2510F0);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1BA2511B4(&qword_1EBBEF228, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v22 = sub_1BA4A6728();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1BA251154(v17, sub_1B9F7B6A0);
  return (v22 & 1) != 0;
}

uint64_t sub_1BA250E18(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v12 = sub_1BA4A1728();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  v21 = *(a1 + 8);
  v22 = *(a2 + 8);
  if (v21 == v22)
  {
    v23 = type metadata accessor for CategoryMetadata(0);
    sub_1BA2511FC(a1 + *(v23 + 24), v11, sub_1B9F7B6A0);
    v24 = v13[6];
    if (v24(v11, 1, v12) == 1)
    {
      v25 = v11;
    }

    else
    {
      v32 = a2;
      v27 = v11;
      v28 = v13[4];
      v28(v20, v27, v12);
      sub_1BA2511FC(v32 + *(v23 + 24), v7, sub_1B9F7B6A0);
      if (v24(v7, 1, v12) != 1)
      {
        v28(v16, v7, v12);
        v26 = sub_1BA4A16D8();
        v29 = v13[1];
        v29(v16, v12);
        v29(v20, v12);
        return v26 & 1;
      }

      (v13[1])(v20, v12);
      v25 = v7;
    }

    sub_1BA251154(v25, sub_1B9F7B6A0);
    v26 = 0;
  }

  else
  {
    v26 = v21 < v22;
  }

  return v26 & 1;
}

void sub_1BA2510F0(uint64_t a1)
{
  if (!qword_1EBBEF220)
  {
    sub_1B9F7B6A0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEF220);
    }
  }
}

uint64_t sub_1BA251154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA2511B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA2511FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BA251264(uint64_t a1)
{
  if (!qword_1EDC5E718)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B5C0, 0x1E69A4368);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E718);
    }
  }
}

uint64_t EnvironmentValues.baseAutomationIdentifier.getter()
{
  sub_1B9F5B440();
  sub_1BA4A5728();
  return v1;
}

uint64_t static HKTraitBaseAutomationIdentifier.defaultValue.getter()
{
  if (qword_1EDC631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EDC631B0;

  return v0;
}

double static HKTraitBaseAutomationIdentifier.defaultValue.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC631B0 = a1;
  qword_1EDC631B8 = a2;

  return result;
}

uint64_t (*static HKTraitBaseAutomationIdentifier.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDC631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1BA2514EC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1EDC631A8;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDC631B0 = v2;
  qword_1EDC631B8 = v1;

  return result;
}

uint64_t static HKTraitBaseAutomationIdentifier.identifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBEF230;

  return v0;
}

double static HKTraitBaseAutomationIdentifier.identifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBEF230 = a1;
  off_1EBBEF238 = a2;

  return result;
}

double sub_1BA25168C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBEF230 = v2;
  off_1EBBEF238 = v1;

  return result;
}

uint64_t UIMutableTraits.baseAutomationIdentifier.getter(uint64_t a1, uint64_t a2)
{
  sub_1B9F5B584();
  sub_1BA4A3FF8();
  return v3;
}

void (*UIMutableTraits.baseAutomationIdentifier.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[5] = a3;
  v7[6] = v3;
  v7[4] = a2;
  v7[2] = UIMutableTraits.baseAutomationIdentifier.getter(a2, a3);
  v8[3] = v9;
  return sub_1BA25183C;
}

void sub_1BA25183C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  if (a2)
  {

    *v2 = v3;
    v2[1] = v5;
    sub_1B9F5B584();
    sub_1BA4A4008();
  }

  else
  {
    *v2 = v3;
    v2[1] = v4;
    sub_1B9F5B584();
    sub_1BA4A4008();
  }

  free(v2);
}

uint64_t UITraitCollection.baseAutomationIdentifier.getter()
{
  sub_1B9F5B584();
  sub_1BA4A7358();
  return v1;
}

double sub_1BA251930()
{
  if (qword_1EDC631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBBEF240 = qword_1EDC631B0;
  *algn_1EBBEF248 = qword_1EDC631B8;

  return result;
}

uint64_t static HKTraitBaseAutomationIdentifierKey.defaultValue.getter()
{
  if (qword_1EBBE8580 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBEF240;

  return v0;
}

double sub_1BA251A1C@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE8580 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EBBEF248;
  *a1 = qword_1EBBEF240;
  a1[1] = v2;

  return result;
}

void (*EnvironmentValues.baseAutomationIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1B9F5B440();
  sub_1BA4A5728();
  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_1BA251B34;
}

void sub_1BA251B34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_1BA4A5738();
  }

  else
  {
    sub_1BA4A5738();
  }

  free(v2);
}

uint64_t static HKTraitBaseAutomationIdentifierKey.read(from:)()
{
  sub_1B9F5B584();
  sub_1BA4A7358();
  return v1;
}

uint64_t static HKTraitBaseAutomationIdentifierKey.write(to:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

  sub_1B9F5B584();
  return sub_1BA4A4008();
}

uint64_t sub_1BA251C90(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v4);

  return UIMutableTraits.baseAutomationIdentifier.setter(v2, v3, v4, v5);
}

uint64_t SummarySharingSelectableDataTypeItem.init(feedItemIdentifier:pluginViewModelContent:isSelectable:isSelected:reuseIdentifier:selectedDataTypesDelegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10)
{
  v30 = a4;
  v31 = a5;
  v32 = a3;
  v29 = a10;
  v15 = sub_1BA4A1798();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a9 + 40) = 0;
  swift_unknownObjectWeakInit();
  v20 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v21 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  *a9 = a6;
  *(a9 + 8) = a7;
  v33 = 0xD000000000000025;
  v34 = 0x80000001BA4E3640;
  sub_1BA4A1788();
  v22 = sub_1BA4A1748();
  v24 = v23;
  (*(v16 + 8))(v19, v15);
  MEMORY[0x1BFAF1350](v22, v24);

  v25 = v34;
  *(a9 + 16) = v33;
  *(a9 + 24) = v25;
  *(a9 + 56) = a1;
  *(a9 + 64) = a2;
  v26 = v31;
  *(a9 + 48) = v30;
  *(a9 + 49) = v26;
  *(a9 + 40) = v29;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return sub_1BA00B474(v32, a9 + v20);
}

uint64_t SummarySharingSelectableDataTypeItem.init(feedItem:pluginViewModelContent:selectedDataTypesDelegate:isSelectable:isSelected:reuseIdentifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 40) = 0;
  swift_unknownObjectWeakInit();
  v13 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v14 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a9 + v13, 1, 1, v14);
  *a9 = a7;
  *(a9 + 8) = a8;
  v16 = [a1 uniqueIdentifier];
  v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v19 = v18;

  MEMORY[0x1BFAF1350](v17, v19);

  *(a9 + 16) = 0xD000000000000025;
  *(a9 + 24) = 0x80000001BA4E3640;
  v20 = [a1 uniqueIdentifier];
  v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v23 = v22;

  *(a9 + 56) = v21;
  *(a9 + 64) = v23;
  sub_1BA253CFC(a9 + v13, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  sub_1BA253D6C(a2, a9 + v13, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v15(a9 + v13, 0, 1, v14);
  *(a9 + 49) = a6;
  *(a9 + 40) = a4;
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a9 + 48) = a5;
  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.authorizationIdentifiers.getter()
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v0 + *(v5 + 40), v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1BA253CFC(v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = *&v4[*(v6 + 44)];

    sub_1BA258C74(v4, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v7;
}

void *SummarySharingSelectableDataTypeItem.image.getter()
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v0 + *(v5 + 40), v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1BA253CFC(v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  else
  {
    v7 = *(v4 + 6);
    v8 = v7;
    sub_1BA258C74(v4, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v7;
}

void *SummarySharingSelectableDataTypeItem.category.getter()
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v0 + *(v5 + 40), v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1BA253CFC(v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  else
  {
    v7 = *(v4 + 7);
    v8 = v7;
    sub_1BA258C74(v4, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v7;
}

uint64_t SummarySharingSelectableDataTypeItem.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = sub_1BA4A1C68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v1 + *(v12 + 40), v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v13 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v13 - 8) + 48))(v6, 1, v13) == 1)
  {
    sub_1BA253CFC(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return (*(v8 + 104))(a1, *MEMORY[0x1E69A3B68], v7);
  }

  else
  {
    (*(v8 + 16))(v11, &v6[*(v13 + 40)], v7);
    sub_1BA258C74(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return (*(v8 + 32))(a1, v11, v7);
  }
}

void SummarySharingSelectableDataTypeItem.image.setter(void *a1)
{
  v2 = v1 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v3 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = a1;
  }

  else
  {
    v4 = *(v2 + 48);
    *(v2 + 48) = a1;
  }
}

uint64_t SummarySharingSelectableDataTypeItem.name.getter()
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v0 + *(v5 + 40), v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1BA253CFC(v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  else
  {
    v7 = *(v4 + 2);

    sub_1BA258C74(v4, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v7;
}

double SummarySharingSelectableDataTypeItem.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  return result;
}

id sub_1BA252A30()
{
  sub_1BA252C6C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16[-1] - v7;
  sub_1BA31D5B4();
  sub_1BA4A4158();
  v9 = sub_1BA4A4168();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = MEMORY[0x1BFAF1F10](v8);
  MEMORY[0x1BFAF1F00](v11);
  if ((*(v10 + 48))(v4, 1, v9))
  {
    v12 = MEMORY[0x1E69DC0D8];
    sub_1BA253C7C(v4, v8, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v8);
    sub_1BA253CFC(v4, &qword_1EDC6B770, v12);
  }

  else
  {
    v13 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v4);
  }

  v16[3] = sub_1BA4A4428();
  v16[4] = MEMORY[0x1E69DC110];
  __swift_allocate_boxed_opaque_existential_1(v16);
  MEMORY[0x1BFAF2040]();
  MEMORY[0x1BFAF1EF0](v16);
  return [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch) addTarget:v0 action:sel_switchUpdated forControlEvents:4096];
}

void sub_1BA252C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA252CD0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1BA252C6C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v87 = &v75 - v5;
  v82 = sub_1BA4A3FD8();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v6);
  v84 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1BA4A3F98();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v8);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, v2);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v75 - v16);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v75 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v75 - v24;
  v89 = sub_1BA4A4428();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v26);
  v90 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA252C6C(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, v2);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v75 - v30;
  v32 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA253C7C(v1 + v37, v91, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v92)
  {
    sub_1BA253CFC(v91, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v33 + 56))(v31, 1, 1, v32);
    return sub_1BA253CFC(v31, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
  }

  sub_1B9FCD918();
  v38 = swift_dynamicCast();
  (*(v33 + 56))(v31, v38 ^ 1u, 1, v32);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    return sub_1BA253CFC(v31, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
  }

  v39 = sub_1BA253D6C(v31, v36, type metadata accessor for SummarySharingSelectableDataTypeItem);
  MEMORY[0x1BFAF2040](v39);
  v80 = *(v32 + 40);
  sub_1BA253C7C(&v36[v80], v25, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v40 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v41 = *(v40 - 8);
  v79 = *(v41 + 48);
  v78 = v41 + 48;
  if (v79(v25, 1, v40) == 1)
  {
    sub_1BA253CFC(v25, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  else
  {

    sub_1BA258C74(v25, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  sub_1BA4A43B8();
  v77 = v1;
  v43 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_font);
  v44 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v44(v91, 0);
  sub_1BA253C7C(&v36[v80], v21, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v79(v21, 1, v40) == 1)
  {
    sub_1BA253CFC(v21, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v45 = v77;
    v46 = v89;
    v47 = v88;
  }

  else
  {
    v48 = *(v21 + 6);
    v49 = v48;
    sub_1BA258C74(v21, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v45 = v77;
    v46 = v89;
    v47 = v88;
    if (v48)
    {
      v76 = v49;
      sub_1BA4A43D8();
      v50 = sub_1BA4A42D8();
      sub_1BA4A4268();
      v50(v91, 0);
      v51 = sub_1BA4A42D8();
      sub_1BA4A42A8();
      v51(v91, 0);
      sub_1BA253C7C(&v36[v80], v17, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v79(v17, 1, v40) == 1)
      {
        sub_1BA253CFC(v17, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v52 = 0;
      }

      else
      {
        v52 = v17[7];
        sub_1BA258C74(v17, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      }

      v53 = [v52 color];

      v54 = sub_1BA4A42D8();
      sub_1BA4A42B8();
      v54(v91, 0);

      v45 = v77;
      goto LABEL_16;
    }
  }

  sub_1BA4A43D8();
LABEL_16:
  sub_1BA253C7C(&v36[v80], v13, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v79(v13, 1, v40) == 1)
  {
    sub_1BA253CFC(v13, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  else
  {
    v55 = *(v13 + 5);

    sub_1BA258C74(v13, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v55)
    {
      sub_1BA252C6C(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5480;
      v57 = *MEMORY[0x1E69DB650];
      *(inited + 32) = *MEMORY[0x1E69DB650];
      v58 = objc_opt_self();
      v59 = v57;
      v45 = v77;
      v60 = [v58 secondaryLabelColor];
      *(inited + 64) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
      *(inited + 40) = v60;
      sub_1B9FDB1C4(inited);
      swift_setDeallocating();
      sub_1BA258C74(inited + 32, sub_1B9FE9628);
      v61 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v62 = sub_1BA4A6758();

      type metadata accessor for Key(0);
      sub_1BA258CF8(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
      v63 = sub_1BA4A6618();

      [v61 initWithString:v62 attributes:v63];
    }
  }

  v64 = v90;
  sub_1BA4A4308();
  v92 = v46;
  v93 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
  (*(v47 + 16))(boxed_opaque_existential_1, v64, v46);
  MEMORY[0x1BFAF1EF0](v91);
  if (v36[48] == 1)
  {
    sub_1BA252C6C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    *(swift_allocObject() + 16) = xmmword_1BA4B5480;
    v66 = *(v45 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch);
    sub_1B9FD7EE0(0);
    v68 = v84;
    v69 = &v84[*(v67 + 48)];
    v70 = *MEMORY[0x1E69DBF28];
    v71 = sub_1BA4A3F18();
    (*(*(v71 - 8) + 104))(v68, v70, v71);
    *v69 = sub_1B9FF87F0;
    v69[1] = 0;
    (*(v81 + 104))(v68, *MEMORY[0x1E69DBF60], v82);
    v72 = sub_1BA4A3F48();
    (*(*(v72 - 8) + 56))(v87, 1, 1, v72);
    v73 = v66;
    v74 = v83;
    sub_1BA4A3F88();
    sub_1BA4A3EE8();
    (*(v85 + 8))(v74, v86);
    sub_1BA4A75F8();
    [v73 setOn_];
  }

  else
  {
    sub_1BA4A75F8();
  }

  sub_1BA253DD4(v36);
  (*(v47 + 8))(v90, v46);
  return sub_1BA258C74(v36, type metadata accessor for SummarySharingSelectableDataTypeItem);
}

uint64_t SummarySharingSelectableDataTypeItem.subtitle.getter()
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(v0 + *(v5 + 40), v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1BA253CFC(v4, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  else
  {
    v7 = *(v4 + 4);

    sub_1BA258C74(v4, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v7;
}

uint64_t sub_1BA253C7C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA252C6C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA253CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA252C6C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA253D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BA253DD4(uint64_t a1)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v8 + 40), v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v9 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_1BA253CFC(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
LABEL_4:

    goto LABEL_5;
  }

  v10 = *(v6 + 3);

  sub_1BA258C74(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (!v10)
  {
    goto LABEL_4;
  }

LABEL_5:
  v11 = sub_1BA4A6758();

  [v7 setAccessibilityIdentifier_];
}

uint64_t sub_1BA253F88()
{
  sub_1BA252C6C(0, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v15[-v3];
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA253C7C(v0 + v10, v16, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (!v17)
  {
    sub_1BA253CFC(v16, &qword_1EDC6E1A0, sub_1B9FCD918);
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_1BA253CFC(v4, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
  }

  sub_1B9FCD918();
  v11 = swift_dynamicCast();
  (*(v6 + 56))(v4, v11 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1BA253CFC(v4, &qword_1EBBEA0B0, type metadata accessor for SummarySharingSelectableDataTypeItem);
  }

  sub_1BA253D6C(v4, v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
  v9[49] = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch) isOn];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v9 + 5);
    ObjectType = swift_getObjectType();
    (*(v12 + 40))(v9, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem);
}

id SummarySharingSelectableDataTypeCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SummarySharingSelectableDataTypeCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_font;
  *&v4[v10] = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SummarySharingSelectableDataTypeCell();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id SummarySharingSelectableDataTypeCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SummarySharingSelectableDataTypeCell.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_selectionSwitch;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) initWithFrame_];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_font;
  *&v1[v4] = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SummarySharingSelectableDataTypeCell();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1BA254614()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI36SummarySharingSelectableDataTypeCell_font);
}

id SummarySharingSelectableDataTypeCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingSelectableDataTypeCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *SummarySharingSelectableDataTypeItem.PluginViewModelContent.hkType.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void SummarySharingSelectableDataTypeItem.PluginViewModelContent.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void SummarySharingSelectableDataTypeItem.PluginViewModelContent.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *SummarySharingSelectableDataTypeItem.PluginViewModelContent.image.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *SummarySharingSelectableDataTypeItem.PluginViewModelContent.category.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0) + 40);
  v4 = sub_1BA4A1C68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.contentKind.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0) + 40);
  v4 = sub_1BA4A1C68();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double SummarySharingSelectableDataTypeItem.PluginViewModelContent.authorizationIdentifiers.getter()
{
  type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);

  return result;
}

void SummarySharingSelectableDataTypeItem.PluginViewModelContent.authorizationIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0) + 44);

  *(v1 + v3) = a1;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.init(pluginBundle:hkType:name:subtitle:image:category:contentKind:authorizationIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  v12 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v13 = *(v12 + 40);
  v14 = sub_1BA4A1C68();
  result = (*(*(v14 - 8) + 32))(&a9[v13], a10, v14);
  *&a9[*(v12 + 44)] = a11;
  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BA4A3A28();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (*v1)
  {
    sub_1BA4A84A8();
    v9 = v8;
    sub_1BA4A77A8();

    v10 = v2[1];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1BA4A84A8();
    v10 = v1[1];
    if (v10)
    {
LABEL_3:
      sub_1BA4A84A8();
      v11 = v10;
      sub_1BA4A77A8();

      if (v2[3])
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  sub_1BA4A84A8();
  if (v2[3])
  {
LABEL_4:
    sub_1BA4A84A8();
    sub_1BA4A68C8();
    if (v2[5])
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  sub_1BA4A84A8();
  if (v2[5])
  {
LABEL_5:
    sub_1BA4A84A8();
    sub_1BA4A68C8();
    v12 = v2[6];
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1BA4A84A8();
    v14 = v2[7];
    if (v14)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  sub_1BA4A84A8();
  v12 = v2[6];
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_1BA4A84A8();
  v13 = v12;
  sub_1BA4A77A8();

  v14 = v2[7];
  if (v14)
  {
LABEL_7:
    sub_1BA4A84A8();
    v15 = v14;
    sub_1BA4A77A8();

    goto LABEL_14;
  }

LABEL_13:
  sub_1BA4A84A8();
LABEL_14:
  v16 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  sub_1BA4A1C68();
  sub_1BA258CF8(&qword_1EDC6E240, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C10]);
  sub_1BA4A66A8();
  v17 = *(v2 + *(v16 + 44));
  result = MEMORY[0x1BFAF2ED0](*(v17 + 16));
  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = v4 + 16;
    v21 = *(v4 + 16);
    v22 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v23 = *(v4 + 72);
    v24 = (v4 + 8);
    do
    {
      v25 = v20;
      v21(v7, v22, v3);
      sub_1BA258CF8(&qword_1EBBEA610, MEMORY[0x1E69A3910], MEMORY[0x1E69A3918]);
      sub_1BA4A66A8();
      result = (*v24)(v7, v3);
      v20 = v25;
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t SummarySharingSelectableDataTypeItem.PluginViewModelContent.hashValue.getter()
{
  sub_1BA4A8488();
  SummarySharingSelectableDataTypeItem.PluginViewModelContent.hash(into:)(v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA254F70()
{
  sub_1BA4A8488();
  SummarySharingSelectableDataTypeItem.PluginViewModelContent.hash(into:)(v1);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA254FB4(uint64_t a1)
{
  sub_1BA4A8488();
  SummarySharingSelectableDataTypeItem.PluginViewModelContent.hash(into:)(v2);
  return sub_1BA4A84D8();
}

uint64_t SummarySharingSelectableDataTypeItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void SummarySharingSelectableDataTypeItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SummarySharingSelectableDataTypeItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void SummarySharingSelectableDataTypeItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SummarySharingSelectableDataTypeItem.feedItemIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void SummarySharingSelectableDataTypeItem.feedItemIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_1BA2551E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v8 + 40), v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v9 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    result = sub_1BA253CFC(v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = *(v7 + 2);
    v12 = *(v7 + 3);

    result = sub_1BA258C74(v7, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *a2 = v11;
  a2[1] = v12;
  return result;
}

double sub_1BA255358(uint64_t *a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v6 = a1[1];
    *(v3 + 16) = *a1;
    *(v3 + 24) = v6;
  }

  return result;
}

void (*SummarySharingSelectableDataTypeItem.name.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 24) = v8;
  v10 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 56) = v10;
  sub_1BA253C7C(v1 + v10, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  *(v5 + 32) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  *(v5 + 40) = v13;
  *(v5 + 48) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v11) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *(v9 + 16);
    v15 = *(v9 + 24);

    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *v5 = v14;
  *(v5 + 8) = v15;
  return sub_1BA2555C4;
}

void sub_1BA2555C4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 16);
  if (a2)
  {
    v7 = v6 + v5;
    if (!v3(v6 + v5, 1, v4))
    {
      v8 = v2[1];
      *(v7 + 16) = *v2;
      *(v7 + 24) = v8;
    }
  }

  else
  {
    v9 = v6 + v5;
    v10 = v2[1];
    if (!v3(v6 + v5, 1, v4))
    {
      *(v9 + 16) = *v2;
      *(v9 + 24) = v10;
    }
  }

  v11 = v2[3];

  free(v11);

  free(v2);
}

uint64_t sub_1BA255684@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v8 + 40), v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v9 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    result = sub_1BA253CFC(v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = *(v7 + 4);
    v12 = *(v7 + 5);

    result = sub_1BA258C74(v7, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *a2 = v11;
  a2[1] = v12;
  return result;
}

double sub_1BA2557F4(uint64_t *a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v6 = a1[1];
    *(v3 + 32) = *a1;
    *(v3 + 40) = v6;
  }

  return result;
}

double SummarySharingSelectableDataTypeItem.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }

  return result;
}

void (*SummarySharingSelectableDataTypeItem.subtitle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 24) = v8;
  v10 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 56) = v10;
  sub_1BA253C7C(v1 + v10, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  *(v5 + 32) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  *(v5 + 40) = v13;
  *(v5 + 48) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v11) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *(v9 + 32);
    v15 = *(v9 + 40);

    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *v5 = v14;
  *(v5 + 8) = v15;
  return sub_1BA255AFC;
}

void sub_1BA255AFC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 16);
  if (a2)
  {
    v7 = v6 + v5;
    if (!v3(v6 + v5, 1, v4))
    {
      v8 = v2[1];
      *(v7 + 32) = *v2;
      *(v7 + 40) = v8;
    }
  }

  else
  {
    v9 = v6 + v5;
    v10 = v2[1];
    if (!v3(v6 + v5, 1, v4))
    {
      *(v9 + 32) = *v2;
      *(v9 + 40) = v10;
    }
  }

  v11 = v2[3];

  free(v11);

  free(v2);
}

uint64_t sub_1BA255BBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v8 + 40), v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v9 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    result = sub_1BA253CFC(v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v11 = 0;
  }

  else
  {
    v11 = *(v7 + 7);
    v12 = v11;
    result = sub_1BA258C74(v7, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *a2 = v11;
  return result;
}

void sub_1BA255D24(void **a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *a1;
    v7 = *(v3 + 56);
    *(v3 + 56) = *a1;
    v6 = v5;
  }
}

void SummarySharingSelectableDataTypeItem.category.setter(void *a1)
{
  v2 = v1 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v3 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = a1;
  }

  else
  {
    v4 = *(v2 + 56);
    *(v2 + 56) = a1;
  }
}

void (*SummarySharingSelectableDataTypeItem.category.modify(uint64_t *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 16) = v8;
  v10 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 48) = v10;
  sub_1BA253C7C(v1 + v10, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  *(v5 + 24) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  *(v5 + 32) = v13;
  *(v5 + 40) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v11) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = 0;
  }

  else
  {
    v14 = *(v9 + 56);
    v15 = v14;
    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *v5 = v14;
  return sub_1BA25602C;
}

void sub_1BA25602C(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[3];
  v5 = (*a1)[1] + *(*a1 + 12);
  if (a2)
  {
    if (!v3((*a1)[1] + *(*a1 + 12), 1, v4))
    {
      v6 = *v2;
      v7 = *(v5 + 7);
      *(v5 + 7) = *v2;
      v8 = v6;
    }

    v9 = *v2;
  }

  else
  {
    v9 = *v2;
    if (!v3((*a1)[1] + *(*a1 + 12), 1, v4))
    {
      v10 = *(v5 + 7);
      *(v5 + 7) = v9;
      v9 = v10;
    }
  }

  v11 = v2[2];

  free(v11);

  free(v2);
}

uint64_t sub_1BA2560DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v8 + 40), v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v9 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    result = sub_1BA253CFC(v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v11 = 0;
  }

  else
  {
    v11 = *(v7 + 6);
    v12 = v11;
    result = sub_1BA258C74(v7, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *a2 = v11;
  return result;
}

void sub_1BA256244(void **a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = *a1;
    v7 = *(v3 + 48);
    *(v3 + 48) = *a1;
    v6 = v5;
  }
}

void (*SummarySharingSelectableDataTypeItem.image.modify(uint64_t *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 16) = v8;
  v10 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 48) = v10;
  sub_1BA253C7C(v1 + v10, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  *(v5 + 24) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  *(v5 + 32) = v13;
  *(v5 + 40) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v11) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = 0;
  }

  else
  {
    v14 = *(v9 + 48);
    v15 = v14;
    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *v5 = v14;
  return sub_1BA2564B0;
}

void sub_1BA2564B0(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[3];
  v5 = (*a1)[1] + *(*a1 + 12);
  if (a2)
  {
    if (!v3((*a1)[1] + *(*a1 + 12), 1, v4))
    {
      v6 = *v2;
      v7 = *(v5 + 6);
      *(v5 + 6) = *v2;
      v8 = v6;
    }

    v9 = *v2;
  }

  else
  {
    v9 = *v2;
    if (!v3((*a1)[1] + *(*a1 + 12), 1, v4))
    {
      v10 = *(v5 + 6);
      *(v5 + 6) = v9;
      v9 = v10;
    }
  }

  v11 = v2[2];

  free(v11);

  free(v2);
}

uint64_t sub_1BA256560(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1C68();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    return (*(v5 + 40))(v10 + *(v11 + 40), v9, v4);
  }
}

uint64_t SummarySharingSelectableDataTypeItem.contentKind.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_1BA4A1C68();
    v6 = *(*(v5 - 8) + 8);

    return v6(a1, v5);
  }

  else
  {
    v8 = *(v4 + 40);
    v9 = sub_1BA4A1C68();
    v10 = *(*(v9 - 8) + 40);

    return v10(v3 + v8, a1, v9);
  }
}

void (*SummarySharingSelectableDataTypeItem.contentKind.modify(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1BA4A1C68();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
    v5[5] = v14;
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
    v5[5] = v14;
    v15 = malloc(v13);
  }

  v16 = v15;
  v5[6] = v15;
  v17 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 20) = v17;
  sub_1BA253C7C(v1 + v17, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v18 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v5[7] = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v5[8] = v20;
  v5[9] = (v19 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v20(v9, 1, v18) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v12[13](v16, *MEMORY[0x1E69A3B68], v10);
  }

  else
  {
    v12[2](v14, v9 + *(v18 + 40), v10);
    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v12[4](v16, v14, v10);
  }

  return sub_1BA256AB4;
}

void sub_1BA256AB4(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 7);
  v5 = *(*a1 + 20);
  if (a2)
  {
    v6 = *v2;
    (*(v2[3] + 16))(v2[4], v2[6], v2[2]);
    if (v3(v6 + v5, 1, v4))
    {
      v7 = *(v2[3] + 8);
      v7(v2[4], v2[2]);
    }

    else
    {
      v11 = v2[3];
      (*(v11 + 40))(*v2 + *(v2 + 20) + *(v2[7] + 40), v2[4], v2[2]);
      v7 = *(v11 + 8);
    }

    v13 = v2[5];
    v12 = v2[6];
    v14 = v2[4];
    v15 = v2[1];
    v7(v12, v2[2]);
  }

  else
  {
    v8 = *v2 + v5;
    v9 = v3(v8, 1, v4);
    v10 = v2[3];
    if (v9)
    {
      (*(v10 + 8))(v2[6], v2[2]);
    }

    else
    {
      (*(v10 + 40))(v8 + *(v4 + 40), v2[6], v2[2]);
    }

    v13 = v2[5];
    v12 = v2[6];
    v14 = v2[4];
    v15 = v2[1];
  }

  free(v12);
  free(v13);
  free(v14);
  free(v15);

  free(v2);
}

uint64_t SummarySharingSelectableDataTypeItem.pluginViewModelContent.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);

  return sub_1BA00B474(a1, v3);
}

uint64_t sub_1BA256D20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  sub_1BA253C7C(a1 + *(v8 + 40), v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v9 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    result = sub_1BA253CFC(v7, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = *&v7[*(v9 + 44)];

    result = sub_1BA258C74(v7, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *a2 = v11;
  return result;
}

double sub_1BA256E98(uint64_t *a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    *(v3 + *(v4 + 44)) = *a1;
  }

  return result;
}

double SummarySharingSelectableDataTypeItem.authorizationIdentifiers.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    *(v3 + *(v4 + 44)) = a1;
  }

  return result;
}

void (*SummarySharingSelectableDataTypeItem.authorizationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 16) = v8;
  v10 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  *(v5 + 48) = v10;
  sub_1BA253C7C(v1 + v10, v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v11 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  *(v5 + 24) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  *(v5 + 32) = v13;
  *(v5 + 40) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v11) == 1)
  {
    sub_1BA253CFC(v9, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = *(v9 + *(v11 + 44));

    sub_1BA258C74(v9, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  *v5 = v14;
  return sub_1BA2571B8;
}

void sub_1BA2571B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[3];
  v5 = (*a1)[1] + *(*a1 + 12);
  if (a2)
  {
    if (!v3((*a1)[1] + *(*a1 + 12), 1, v4))
    {
      *(v5 + *(v4 + 44)) = *v2;
    }
  }

  else
  {
    v6 = *v2;
    if (!v3((*a1)[1] + *(*a1 + 12), 1, v4))
    {
      *(v5 + *(v4 + 44)) = v6;
    }
  }

  v7 = v2[2];

  free(v7);

  free(v2);
}

void *sub_1BA257280(uint64_t a1)
{
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  sub_1BA253C7C(v1 + *(a1 + 40), &v11 - v5, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v7 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1BA253CFC(v6, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    return 0;
  }

  else
  {
    v8 = *(v6 + 7);
    v9 = v8;
    sub_1BA258C74(v6, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  return v8;
}

void sub_1BA2573DC(void *a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 40);
  v4 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = a1;
  }

  else
  {
    v5 = *(v3 + 56);
    *(v3 + 56) = a1;
  }
}

void (*sub_1BA257470(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = SummarySharingSelectableDataTypeItem.category.modify(v2);
  return sub_1B9FCDD98;
}

uint64_t sub_1BA2574E0(uint64_t a1)
{
  v2 = sub_1BA258CF8(&qword_1EBBEF2A0, type metadata accessor for SummarySharingSelectableDataTypeItem, &protocol conformance descriptor for SummarySharingSelectableDataTypeItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t SummarySharingSelectableDataTypeItem.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 64))
  {
    return sub_1BA4A84A8();
  }

  sub_1BA4A84A8();

  return sub_1BA4A68C8();
}

uint64_t SummarySharingSelectableDataTypeItem.hashValue.getter()
{
  sub_1BA4A8488();
  if (*(v0 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA257654()
{
  sub_1BA4A8488();
  if (*(v0 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA2576CC(uint64_t a1)
{
  if (!*(v1 + 64))
  {
    return sub_1BA4A84A8();
  }

  sub_1BA4A84A8();

  return sub_1BA4A68C8();
}

uint64_t sub_1BA257744(uint64_t a1)
{
  sub_1BA4A8488();
  if (*(v1 + 64))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  return sub_1BA4A84D8();
}

uint64_t static SummarySharingSelectableDataTypeItem.withTitleAndCategory(title:category:subtitle:contentKind:hkType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a5;
  v46 = a1;
  v47 = a4;
  v13 = sub_1BA4A1798();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v48 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v52 = &v45 - v18;
  v19 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v20 = *(v19 - 8);
  *&v22 = MEMORY[0x1EEE9AC00](v19, v21).n128_u64[0];
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a3 largeListIcon];
  if (!v25)
  {
    v25 = [a3 listIcon];
  }

  v26 = *(v19 + 40);
  v27 = sub_1BA4A1C68();
  (*(*(v27 - 8) + 16))(&v24[v26], a6, v27);
  *v24 = 0;
  *(v24 + 1) = a7;
  v28 = v47;
  *(v24 + 2) = v46;
  *(v24 + 3) = a2;
  v29 = a7;
  v30 = v49;
  *(v24 + 4) = v28;
  *(v24 + 5) = v30;
  *(v24 + 6) = v25;
  *(v24 + 7) = a3;
  *&v24[*(v19 + 44)] = MEMORY[0x1E69E7CC0];
  v31 = v52;
  sub_1BA0FB13C(v24, v52);
  v32 = *(v20 + 56);
  v32(v31, 0, 1, v19);
  v53 = type metadata accessor for SummarySharingSelectableDataTypeCell();
  sub_1BA091918();
  v33 = a3;
  v34 = v29;

  v35 = sub_1BA4A6808();
  v37 = v36;
  *(a8 + 40) = 0;
  swift_unknownObjectWeakInit();
  v38 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) + 40);
  v32(a8 + v38, 1, 1, v19);
  *a8 = v35;
  *(a8 + 8) = v37;
  v53 = 0xD000000000000025;
  v54 = 0x80000001BA4E3640;
  v39 = v48;
  sub_1BA4A1788();
  v40 = sub_1BA4A1748();
  v42 = v41;
  (*(v50 + 8))(v39, v51);
  MEMORY[0x1BFAF1350](v40, v42);

  v43 = v54;
  *(a8 + 16) = v53;
  *(a8 + 24) = v43;
  *(a8 + 48) = 0;
  *(a8 + 40) = 0;
  *(a8 + 56) = 0;
  *(a8 + 64) = 0;
  swift_unknownObjectWeakAssign();
  sub_1BA00B474(v52, a8 + v38);
  return sub_1BA258C74(v24, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
}

uint64_t _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1C68();
  v100 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v99 = &v92 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v94 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v98 = &v92 - v15;
  v16 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v106 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v105 = &v92 - v22;
  sub_1BA252C6C(0, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v97 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v96 = &v92 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v101 = &v92 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v92 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v92 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v92 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v92 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v92 - v54;
  v56 = *(a1 + 64);
  v107 = a2;
  v103 = v57;
  v104 = v58;
  if (v56 && (v59 = *(a2 + 64)) != 0 && (*(a1 + 56) != *(a2 + 56) || v56 != v59))
  {
    v109 = sub_1BA4A8338();
  }

  else
  {
    v109 = 1;
  }

  v108 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v110 = *(v108 + 40);
  sub_1BA253C7C(a1 + v110, v55, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v60 = *(v17 + 48);
  if (v60(v55, 1, v16) == 1)
  {
    sub_1BA253CFC(v55, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    goto LABEL_21;
  }

  v102 = v4;
  v61 = *(v55 + 3);
  v93 = *(v55 + 2);

  sub_1BA258C74(v55, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v61)
  {
    sub_1BA253C7C(v107 + *(v108 + 40), v51, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v60(v51, 1, v16) != 1)
    {
      v62 = *(v51 + 3);
      v92 = *(v51 + 2);

      sub_1BA258C74(v51, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v62)
      {
        if ((v109 & 1) == 0)
        {

          v109 = 0;
          goto LABEL_20;
        }

        if (v93 == v92 && v61 == v62)
        {

          v109 = 1;
          goto LABEL_20;
        }

        v109 = sub_1BA4A8338();
      }

      goto LABEL_20;
    }

    sub_1BA253CFC(v51, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

LABEL_20:
  v4 = v102;
LABEL_21:
  sub_1BA253C7C(a1 + v110, v47, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v60(v47, 1, v16) == 1)
  {
    sub_1BA253CFC(v47, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  else
  {
    v63 = *(v47 + 7);
    v64 = v63;
    sub_1BA258C74(v47, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v63)
    {
      v65 = v107;
      sub_1BA253C7C(v107 + *(v108 + 40), v43, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v60(v43, 1, v16) == 1)
      {

        sub_1BA253CFC(v43, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        v66 = v106;
        goto LABEL_31;
      }

      v67 = *(v43 + 7);
      v68 = v67;
      sub_1BA258C74(v43, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v67)
      {
        v66 = v106;
        if (v109)
        {
          sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
          v109 = sub_1BA4A7798();
        }

        else
        {

          v109 = 0;
        }

        v65 = v107;
        goto LABEL_31;
      }
    }
  }

  v66 = v106;
  v65 = v107;
LABEL_31:
  sub_1BA253C7C(a1 + v110, v39, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v60(v39, 1, v16) == 1)
  {
    sub_1BA253CFC(v39, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v69 = v105;
  }

  else
  {
    v70 = *(v39 + 6);
    v71 = v70;
    sub_1BA258C74(v39, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v70)
    {
      v72 = v101;
      sub_1BA253C7C(v65 + *(v108 + 40), v101, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      v73 = v60(v72, 1, v16);
      v69 = v105;
      if (v73 == 1)
      {

        sub_1BA253CFC(v72, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      }

      else
      {
        v102 = v4;
        v74 = *(v72 + 48);
        v75 = v74;
        sub_1BA258C74(v72, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v74)
        {
          if (v109)
          {
            sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
            v109 = sub_1BA4A7798();
          }

          else
          {

            v109 = 0;
          }
        }

        else
        {
        }

        v66 = v106;
        v4 = v102;
      }
    }

    else
    {
      v69 = v105;
    }
  }

  v76 = v104;
  sub_1BA253C7C(a1 + v110, v104, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v60(v76, 1, v16) != 1)
  {
    sub_1BA253D6C(v76, v69, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v76 = v103;
    sub_1BA253C7C(v65 + *(v108 + 40), v103, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    if (v60(v76, 1, v16) != 1)
    {
      sub_1BA253D6C(v76, v66, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      if (v109)
      {
        v83 = _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV22PluginViewModelContentV2eeoiySbAE_AEtFZ_0(v69, v66);
        sub_1BA258C74(v66, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        sub_1BA258C74(v69, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        if (v83)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_1BA258C74(v66, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
        sub_1BA258C74(v69, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
      }

LABEL_57:
      v84 = 0;
      return v84 & 1;
    }

    sub_1BA258C74(v69, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  }

  sub_1BA253CFC(v76, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if ((v109 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_49:
  if (*(a1 + 49) != *(v65 + 49) || *(a1 + 48) != *(v65 + 48))
  {
    goto LABEL_57;
  }

  v77 = v65;
  v78 = v96;
  sub_1BA253C7C(a1 + v110, v96, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  v79 = v60(v78, 1, v16);
  v80 = MEMORY[0x1E69A3B68];
  if (v79 == 1)
  {
    sub_1BA253CFC(v78, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v81 = v100;
    v82 = v98;
    (*(v100 + 104))(v98, *v80, v4);
  }

  else
  {
    v81 = v100;
    v86 = v94;
    (*(v100 + 16))(v94, v78 + *(v16 + 40), v4);
    sub_1BA258C74(v78, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v82 = v98;
    (*(v81 + 32))(v98, v86, v4);
  }

  v87 = v77 + *(v108 + 40);
  v88 = v97;
  sub_1BA253C7C(v87, v97, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
  if (v60(v88, 1, v16) == 1)
  {
    sub_1BA253CFC(v88, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v89 = v99;
    (*(v81 + 104))(v99, *v80, v4);
  }

  else
  {
    v90 = v95;
    (*(v81 + 16))(v95, v88 + *(v16 + 40), v4);
    sub_1BA258C74(v88, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v89 = v99;
    (*(v81 + 32))(v99, v90, v4);
  }

  sub_1BA258CF8(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C20]);
  sub_1BA4A6A58();
  sub_1BA4A6A58();
  if (v113 == v111 && v114 == v112)
  {
    v84 = 1;
  }

  else
  {
    v84 = sub_1BA4A8338();
  }

  v91 = *(v81 + 8);
  v91(v89, v4);
  v91(v82, v4);

  return v84 & 1;
}

uint64_t _s18HealthExperienceUI36SummarySharingSelectableDataTypeItemV22PluginViewModelContentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      goto LABEL_40;
    }

    sub_1B9F0ADF8(0, &unk_1EBBEE680, 0x1E696AAE8);
    v6 = v5;
    v7 = v4;
    v8 = sub_1BA4A7798();

    if ((v8 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v5)
  {
    goto LABEL_40;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_40;
    }

    sub_1B9F0ADF8(0, &qword_1EDC6E920, 0x1E696C2E0);
    v11 = v10;
    v12 = v9;
    v13 = sub_1BA4A7798();

    if ((v13 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v10)
  {
    goto LABEL_40;
  }

  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  if (v14)
  {
    if (!v15 || (*(a1 + 16) != *(a2 + 16) || v14 != v15) && (sub_1BA4A8338() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v15)
  {
    goto LABEL_40;
  }

  v16 = *(a1 + 40);
  v17 = *(a2 + 40);
  if (v16)
  {
    if (!v17 || (*(a1 + 32) != *(a2 + 32) || v16 != v17) && (sub_1BA4A8338() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v17)
  {
    goto LABEL_40;
  }

  v18 = *(a1 + 48);
  v19 = *(a2 + 48);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_40;
    }

    sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
    v20 = v19;
    v21 = v18;
    v22 = sub_1BA4A7798();

    if ((v22 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v19)
  {
    goto LABEL_40;
  }

  v23 = *(a1 + 56);
  v24 = *(a2 + 56);
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_40;
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B5C0, 0x1E69A4368);
    v25 = v24;
    v26 = v23;
    v27 = sub_1BA4A7798();

    if ((v27 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v24)
  {
    goto LABEL_40;
  }

  v28 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  sub_1BA4A1C68();
  sub_1BA258CF8(&qword_1EBBEF0B8, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C20]);
  sub_1BA4A6A58();
  sub_1BA4A6A58();
  if (v34 != v32 || v35 != v33)
  {
    v29 = sub_1BA4A8338();

    if (v29)
    {
      goto LABEL_39;
    }

LABEL_40:
    v30 = 0;
    return v30 & 1;
  }

LABEL_39:
  v30 = sub_1B9FF0F74(*(a1 + *(v28 + 44)), *(a2 + *(v28 + 44)));
  return v30 & 1;
}

uint64_t sub_1BA258C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA258CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA258E94(uint64_t a1)
{
  sub_1B9F2F388();
  if (v1 <= 0x3F)
  {
    sub_1BA252C6C(319, &qword_1EBBE9CB0, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA258FA0(uint64_t a1)
{
  sub_1B9F6A804(319, &qword_1EBBEF290, &unk_1EBBEE680, 0x1E696AAE8);
  if (v1 <= 0x3F)
  {
    sub_1B9F6A804(319, &qword_1EDC5E588, &qword_1EDC6E920, 0x1E696C2E0);
    if (v2 <= 0x3F)
    {
      sub_1B9F2F388();
      if (v3 <= 0x3F)
      {
        sub_1B9F6A804(319, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8);
        if (v4 <= 0x3F)
        {
          sub_1B9F6A804(319, &qword_1EBBEF298, &qword_1EDC6B5C0, 0x1E69A4368);
          if (v5 <= 0x3F)
          {
            sub_1BA4A1C68();
            if (v6 <= 0x3F)
            {
              sub_1BA252C6C(319, &qword_1EBBEA900, MEMORY[0x1E69A3910], MEMORY[0x1E69E62F8]);
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

uint64_t sub_1BA259130()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF2A8 = result;
  unk_1EBBEF2B0 = v1;
  return result;
}

uint64_t static UIActivityItemProvider.defaultHealthAppShareSheetSummary.getter()
{
  if (qword_1EBBE8588 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBEF2A8;

  return v0;
}

id sub_1BA259230()
{
  sub_1BA2594E0(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B9A80;
  v1 = *MEMORY[0x1E69CDAC0];
  v2 = *MEMORY[0x1E69CDAC8];
  *(v0 + 32) = *MEMORY[0x1E69CDAC0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69CDAD0];
  v4 = *MEMORY[0x1E69CDAD8];
  *(v0 + 48) = *MEMORY[0x1E69CDAD0];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E69CDAE0];
  v13 = *MEMORY[0x1E69CDAE8];
  v6 = *MEMORY[0x1E69CDAE8];
  *(v0 + 64) = *MEMORY[0x1E69CDAE0];
  *(v0 + 72) = v6;
  qword_1EBC097F8 = v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;

  return v13;
}

id _sSo22UIActivityItemProviderC18HealthExperienceUIE07defaultD5ImageSo7UIImageCvgZ_0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC84A30;
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

  return [v4 init];
}

uint64_t sub_1BA2593F4()
{
  sub_1BA2594E0(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4C9870;
  v1 = *MEMORY[0x1E69CDA70];
  v2 = *MEMORY[0x1E69CDA80];
  *(v0 + 32) = *MEMORY[0x1E69CDA70];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69CDAB8];
  v4 = *MEMORY[0x1E69CDAF0];
  *(v0 + 48) = *MEMORY[0x1E69CDAB8];
  *(v0 + 56) = v4;
  v5 = qword_1EBBE8590;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_1B9FE22C0(v10);
  return v0;
}

void sub_1BA2594E0(uint64_t a1)
{
  if (!qword_1EBBEE848)
  {
    type metadata accessor for ActivityType(255);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEE848);
    }
  }
}

Swift::Void __swiftcall ProfileNavigationBarViewPresenting.configureProfileNavigationItem()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = [v2 navigationItem];
  [v6 setLargeTitleDisplayMode_];

  v7 = (*(v4 + 40))(v5, v4);
  v8 = [v3 presentingViewController];
  v9 = v8;
  if (v8)
  {
  }

  v10 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v11 = sub_1BA25A190(v7, v9 != 0);
  v12 = *(v4 + 24);
  v14 = v11;
  v12(v11, v5, v4);
  v13 = [v3 navigationItem];
  [v13 setTitleView_];

  [*&v14[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  NavigationBarScrollAnimationCustomizing<>.configureNavigationItemForCustomScrollAnimation()(v5, *(v4 + 8));
}

Swift::Void __swiftcall ProfileNavigationBarViewPresenting.updateNavigationBarAndTitleViewForManualScrollAppearance(animated:)(Swift::Bool animated)
{
  v3 = v2;
  v4 = v1;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    NavigationBarScrollAnimationCustomizing<>.updateNavigationBarForManualScrollAppearance(animated:)(animated, v4, *(v3 + 8));
  }

  ProfileNavigationBarViewPresenting.updateNavigationBarTitleViewForManualScrollAppearance(animated:)(animated);
}

id ProfileNavigationBarViewPresenting.retrieveDisplayedProfileInfoCell()()
{
  v1 = v0;
  v2 = sub_1BA4A1998();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    MEMORY[0x1BFAEC380](1, 0);
    v10 = sub_1BA4A18F8();
    (*(v3 + 8))(v7, v2);
    v11 = [v9 cellForItemAtIndexPath_];

    result = 0;
    if (v11)
    {
      type metadata accessor for ProfileNameCell();
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ProfileNavigationBarViewPresenting.navigationBarAnimationThresholdY.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a2 + 48))(a1, a2, v7);
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView);

    v13 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v14 bounds];
    [v14 convertRect:0 toView:?];
    [*&v12[v13] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6F88();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%s)]: No profile info cell found, defaulting to placeholder value", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }
}

Swift::Void __swiftcall ProfileNavigationBarViewPresenting.updateNavigationBarTitleViewForManualScrollAppearance(animated:)(Swift::Bool animated)
{
  v3 = v2;
  v4 = v1;
  v6 = (*(v2 + 16))();
  if (v6)
  {
    v10 = v6;
    type metadata accessor for ProfileNavigationBarView();
    if (swift_dynamicCastClass())
    {
      v7 = *(v3 + 8);
      ShouldBe = NavigationBarScrollAnimationCustomizing.navigationBarShouldBeVisible.getter(v4, v7);
      if (animated)
      {
        v9 = (*(v7 + 16))(v4, v7);
      }

      else
      {
        v9 = 0;
      }

      sub_1BA25A440(ShouldBe, v9, !animated);
    }

    else
    {
    }
  }
}

id sub_1BA259C90()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView);
  }

  else
  {
    v49 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setTextAlignment_];
    [v10 setAdjustsFontForContentSizeCategory_];
    v11 = *MEMORY[0x1E69DDD08];
    v12 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v13 = objc_opt_self();
    v14 = [v13 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:v12];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
    }

    else
    {
      v48 = v0;
      sub_1BA4A3DD8();
      v17 = v11;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v47 = v12;
        v21 = v20;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v52 = v45;
        *v21 = 136315906;
        v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v24 = sub_1B9F0B82C(v22, v23, &v52);
        v46 = v17;
        v25 = v24;

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        v50 = 0;
        v51 = 1;
        sub_1BA25B65C(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, &v52);

        *(v21 + 14) = v28;
        *(v21 + 22) = 2080;
        LODWORD(v50) = 0;
        type metadata accessor for SymbolicTraits(0);
        v29 = sub_1BA4A6808();
        v31 = sub_1B9F0B82C(v29, v30, &v52);
        v17 = v46;

        *(v21 + 24) = v31;
        *(v21 + 32) = 2112;
        v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v21 + 34) = v32;
        v33 = v44;
        *v44 = v32;
        _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v21, 0x2Au);
        sub_1B9F8C6C8(v33);
        MEMORY[0x1BFAF43A0](v33, -1, -1);
        v34 = v45;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v34, -1, -1);
        v35 = v21;
        v12 = v47;
        MEMORY[0x1BFAF43A0](v35, -1, -1);
      }

      (*(v2 + 8))(v6, v49);
      v0 = v48;
      v36 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];
    }

    [v10 setFont_];

    v37 = [objc_opt_self() labelColor];
    [v10 setTextColor_];

    LODWORD(v38) = 1148846080;
    [v10 setContentCompressionResistancePriority:1 forAxis:v38];
    LODWORD(v39) = 1148846080;
    [v10 setContentHuggingPriority:1 forAxis:v39];
    v40 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v41 = v8;
  return v9;
}

char *sub_1BA25A190(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v4] = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_imageView;
  v7 = [objc_allocWithZone(type metadata accessor for PublisherImageView()) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setContentMode_];

  *&v2[v6] = v7;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView] = 0;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_profileInformationSink] = 0;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ProfileNavigationBarView();
  v8 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA25A5F4(v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BA1430C4(0);
  sub_1BA25B8C8(&qword_1EBBEC7A8, sub_1BA1430C4, MEMORY[0x1E695BED8]);
  v9 = sub_1BA4A5148();

  *&v8[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_profileInformationSink] = v9;

  [v8 setHideStandardTitle_];
  [v8 setHeightShouldBeIncreasedByTabBarHeight_];

  return v8;
}

void sub_1BA25A3BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BA25B3B4(a1);
  }
}

void sub_1BA25A440(char a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView];
  [v7 alpha];
  if (v6 != v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v6;
    if (a3)
    {
      v10 = v3;
      [v7 setAlpha_];
    }

    else
    {
      v11 = *&a2;
      v12 = objc_opt_self();
      v15[4] = sub_1BA25BA38;
      v15[5] = v9;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1B9F0B040;
      v15[3] = &block_descriptor_63;
      v13 = _Block_copy(v15);
      v14 = v3;

      [v12 animateWithDuration:v13 animations:v11];

      _Block_release(v13);
    }
  }
}

void sub_1BA25A5F4(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView];
  [v1 addSubview_];
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_imageView];
  [v3 addSubview_];
  v5 = sub_1BA259C90();
  [v3 addSubview_];

  if (a1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 5.0;
  }

  if (a1)
  {
    v7 = 2.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (a1)
  {
    v8 = 40.5;
  }

  else
  {
    v8 = 50.0;
  }

  v46 = objc_opt_self();
  sub_1B9F109F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4C9890;
  v10 = [v3 topAnchor];
  v11 = [v1 safeAreaLayoutGuide];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintGreaterThanOrEqualToAnchor:v12 constant:v7];
  *(v9 + 32) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [v3 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:v7];

  *(v9 + 40) = v16;
  v17 = [v3 leadingAnchor];
  v18 = [v1 &selRef__totalDistance + 1];
  v19 = [v17 constraintEqualToAnchor_];

  *(v9 + 48) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v9 + 56) = v22;
  v23 = [v4 widthAnchor];
  v24 = [v23 constraintEqualToConstant_];

  *(v9 + 64) = v24;
  v25 = [v4 heightAnchor];
  v26 = [v25 constraintEqualToConstant_];

  *(v9 + 72) = v26;
  v27 = [v4 topAnchor];
  v28 = [v3 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:3.0];

  *(v9 + 80) = v29;
  v30 = [v4 centerXAnchor];
  v31 = [v3 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v9 + 88) = v32;
  v33 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView;
  v34 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView] leadingAnchor];
  v35 = [v3 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v9 + 96) = v36;
  v37 = [*&v1[v33] trailingAnchor];
  v38 = [v3 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v9 + 104) = v39;
  v40 = [*&v1[v33] topAnchor];
  v41 = [v4 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:3.0];

  *(v9 + 112) = v42;
  v43 = [v3 bottomAnchor];
  v44 = [*&v1[v33] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v6];

  *(v9 + 120) = v45;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v47 = sub_1BA4A6AE8();

  [v46 activateConstraints_];
}

void sub_1BA25ABC4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1BA25B65C(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v49 = &v45 - v6;
  sub_1BA25B6B0(0);
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA25B734(0);
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA25B65C(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v45 - v16;
  v18 = sub_1BA4A2888();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_imageView];
  (*((*MEMORY[0x1E69E7D40] & *v24) + 0x80))(v21);
  sub_1BA071040(a1, v54);
  if (!v55)
  {
    sub_1BA25B86C(v54, &qword_1EDC6E1E0, sub_1BA0B43BC);
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_8;
  }

  sub_1BA0B43BC();
  v25 = swift_dynamicCast();
  (*(v19 + 56))(v17, v25 ^ 1u, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_8:
    sub_1BA25B86C(v17, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    goto LABEL_9;
  }

  (*(v19 + 32))(v23, v17, v18);
  v26 = sub_1BA4A2838();
  v27 = [v26 type];

  if (v27 == 1)
  {
    v46 = sub_1BA4A27F8();
    v28 = objc_opt_self();
    v29 = [v28 mainScreen];
    [v29 scale];
    v31 = v30;

    v32 = [v2 effectiveUserInterfaceLayoutDirection];
    v33 = [v28 mainScreen];
    [v33 scale];
    v35 = v34;

    if (qword_1EDC63680 != -1)
    {
      swift_once();
    }

    v54[0] = 0x4049000000000000;
    v54[1] = v35;
    v54[2] = qword_1EDC63688;
    v36 = swift_allocObject();
    *(v36 + 16) = v46;
    *(v36 + 24) = v31;
    *(v36 + 32) = v32 == 1;
    *(v36 + 40) = ObjectType;
    sub_1B9F6A804(0, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8);
    sub_1B9F3DB14();

    sub_1BA4A4FE8();

    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    ObjectType = sub_1BA4A7308();
    v54[0] = ObjectType;
    v37 = sub_1BA4A72A8();
    v38 = v49;
    (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
    sub_1BA25B8C8(&qword_1EBBEF2E8, sub_1BA25B6B0, MEMORY[0x1E695BD60]);
    sub_1B9F3DC80();
    v39 = v47;
    v40 = v51;
    sub_1BA4A50A8();
    sub_1BA25B86C(v38, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);

    (*(v50 + 8))(v10, v40);
    v41 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x70);
    v42 = sub_1BA25B8C8(&qword_1EBBEF2F0, sub_1BA25B734, MEMORY[0x1E695BE98]);
    v43 = v53;
    v41(v39, v53, v42);

    (*(v52 + 8))(v39, v43);
    (*(v19 + 8))(v23, v18);
    return;
  }

  (*(v19 + 8))(v23, v18);
LABEL_9:
  sub_1BA071040(a1, v54);
  if (v55)
  {
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v44 = sub_1BA4A2AC8();
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    sub_1BA25B86C(v54, &qword_1EDC6E1E0, sub_1BA0B43BC);
    v44 = 0;
  }

  [v24 setImage_];
}

id sub_1BA25B3B4(uint64_t a1)
{
  v2 = v1;
  sub_1BA25ABC4(a1);
  v4 = sub_1BA259C90();
  sub_1BA071040(a1, v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_1BA4A2AB8();
    __swift_destroy_boxed_opaque_existential_1(v8);
    v5 = sub_1BA4A6758();
  }

  else
  {
    sub_1BA25B86C(v8, &qword_1EDC6E1E0, sub_1BA0B43BC);
    v5 = 0;
  }

  [v4 setText_];

  [v2 systemLayoutSizeFittingSize_];
  return [v2 setHeight_];
}

id sub_1BA25B500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileNavigationBarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA25B65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BA25B6B0(uint64_t a1)
{
  if (!qword_1EBBEF2D8)
  {
    sub_1B9F6A804(255, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8);
    sub_1B9F3DB14();
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF2D8);
    }
  }
}

void sub_1BA25B734(uint64_t a1)
{
  if (!qword_1EBBEF2E0)
  {
    sub_1BA25B6B0(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA25B8C8(&qword_1EBBEF2E8, sub_1BA25B6B0, MEMORY[0x1E695BD60]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF2E0);
    }
  }
}

id sub_1BA25B800@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = v3;
  if (!v3)
  {
    v4 = sub_1BA4A2DF8();
    v3 = 0;
  }

  *a2 = v4;

  return v3;
}

uint64_t sub_1BA25B86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA25B65C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA25B8C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA25B910()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_imageView;
  v4 = [objc_allocWithZone(type metadata accessor for PublisherImageView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setContentMode_];

  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView____lazy_storage___titleView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_profileInformationSink) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA25BA64(void *a1)
{
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v30 - v4;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v6 = sub_1BA4A1C68();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5460;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x1E69A3B70], v6);
  v12(v11 + v8, *MEMORY[0x1E69A3C00], v6);
  sub_1BA4A1FB8();
  v13 = sub_1BA4A0FA8();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  *(v14 + 32) = sub_1BA4A1D78();
  v15 = sub_1BA4A25F8();

  sub_1B9F1C1B0(v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B8B60;
  v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v19 = sub_1BA4A6758();
  v20 = [v18 initWithKey:v19 ascending:1];

  *(v17 + 32) = v20;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithKey:v22 ascending:0];

  *(v17 + 40) = v23;
  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = sub_1BA4A6758();
  v26 = [v24 initWithKey:v25 ascending:1 selector:sel_localizedStandardCompare_];

  *(v17 + 48) = v26;
  v27 = v15;
  v28 = sub_1BA4A7558();

  return v28;
}

id sub_1BA25BEB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvidersYouAreSharingWithDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProvidersYouAreSharingWithDataSource(uint64_t a1)
{
  result = qword_1EDC60EA0;
  if (!qword_1EDC60EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BA25BF3C(uint64_t *a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v26 = a1[2];
  v27 = v11;
  sub_1BA4A3E28();
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1B9F07000, v13, v14, "Layout section providing layout function called", v15, 2u);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_1EDC6CB90);
  sub_1B9F37E38(v16, v5);
  *(v5 + 88) = xmmword_1BA4C9900;
  *(v5 + 13) = 0;
  *(v5 + 14) = 0;
  v5[120] = 0;
  v17 = swift_allocObject();
  v18 = v26;
  v17[2] = v27;
  v17[3] = v12;
  v19 = v28;
  v17[4] = v18;
  v17[5] = v19;
  v20 = *(v5 + 16);
  v21 = *(v5 + 17);
  swift_unknownObjectRetain();
  v22 = v19;
  sub_1B9F0E310(v20, v21);
  *(v5 + 16) = sub_1BA25C664;
  *(v5 + 17) = v17;
  v23 = ListLayoutConfiguration.layout(for:)(v12);
  sub_1BA047354(v5);
  return v23;
}

void sub_1BA25C1BC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = sub_1BA4A1C68();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v43 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v40 = &v39 - v13;
  sub_1B9F12538();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1BA4A1998();
  v20 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BA4A4638();
  v25 = *(*(v24 - 8) + 16);
  v39 = a4;
  v25(a4, a1, v24);
  v26 = sub_1BA4A1938();
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1BFAEC360](v28, a2);
    v29 = qword_1EDC84AC8;
    swift_beginAccess();
    (*(v16 + 16))(v19, a3 + v29, v15);
    v30 = sub_1BA4A4548();
    (*(v16 + 8))(v19, v15);
    if (v30 > a2)
    {
      v31 = sub_1BA4A1938();
      if (v31 < sub_1BA1B91E0(a2))
      {
        sub_1BA079F5C(v23, v47);
        sub_1B9F32244();
        sub_1BA4A27B8();
        if (swift_dynamicCast())
        {
          v32 = v45;
          v33 = v40;
          sub_1BA4A26B8();
          v35 = v41;
          v34 = v42;
          (*(v41 + 104))(v43, *MEMORY[0x1E69A3C00], v42);
          sub_1BA25C670();
          sub_1BA4A6A58();
          sub_1BA4A6A58();
          if (v47[0] == v45 && v47[1] == v46)
          {
            v36 = *(v35 + 8);
            v36(v43, v34);
            v36(v33, v34);
          }

          else
          {
            v37 = sub_1BA4A8338();
            v38 = *(v35 + 8);
            v38(v43, v34);
            v38(v33, v34);

            if ((v37 & 1) == 0)
            {
              (*(v20 + 8))(v23, v44);

              return;
            }
          }

          sub_1BA4A4618();
        }
      }
    }

    (*(v20 + 8))(v23, v44);
  }
}

unint64_t sub_1BA25C670()
{
  result = qword_1EBBEF0B8;
  if (!qword_1EBBEF0B8)
  {
    sub_1BA4A1C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF0B8);
  }

  return result;
}

void *OnboardingViewControllerWithNextButton.init(title:detailText:icon:contentLayout:isLastPage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
  v12 = sub_1BA4A6758();

  if (a4)
  {
    v13 = sub_1BA4A6758();
  }

  else
  {
    v13 = 0;
  }

  v19.receiver = v7;
  v19.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v14 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, a5, a6);

  v15 = v14;
  v16 = [v15 headerView];
  LODWORD(v17) = 1036831949;
  [v16 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v15) + 0xB8))(a7 & 1);
  return v15;
}

void sub_1BA25C84C(char a1)
{
  if (a1)
  {
    v2 = &OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton;
    v3 = &selRef_hxui_addDoneButtonWithAccessibilityIdentifier_;
  }

  else
  {
    v4 = [v1 hxui_addCancelButton];
    v5 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton];
    *&v1[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = v4;

    v2 = &OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton;
    v3 = &selRef_hxui_addNextButtonWithAccessibilityIdentifier_;
  }

  v6 = sub_1BA4A6758();
  v7 = [v1 *v3];

  v8 = *&v1[*v2];
  *&v1[*v2] = v7;
}

void sub_1BA25C934(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BA4A6758();
    [v4 setTitle:v5 forState:0];
  }
}

void sub_1BA25C9D4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BA4A6758();
    [v4 setAccessibilityIdentifier_];
  }
}

void sub_1BA25CA70()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 buttonTray];
    [v3 removeButton_];
  }

  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 buttonTray];
    [v6 removeButton_];
  }

  v7 = [v0 buttonTray];
  [v7 setHidden_];
}

id sub_1BA25CB70(id result)
{
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton))
  {
    return [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton) setEnabled_];
  }

  return result;
}

void sub_1BA25CB98()
{
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];
}

void *OnboardingViewControllerWithNextButton.__allocating_init(title:detailText:icon:contentLayout:isLastPage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  v8 = v7;
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v13[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
  v14 = sub_1BA4A6758();

  if (a4)
  {
    v15 = sub_1BA4A6758();
  }

  else
  {
    v15 = 0;
  }

  v21.receiver = v13;
  v21.super_class = v8;
  v16 = objc_msgSendSuper2(&v21, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, a5, a6);

  v17 = v16;
  v18 = [v17 headerView];
  LODWORD(v19) = 1036831949;
  [v18 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v17) + 0xB8))(a7 & 1);
  return v17;
}

uint64_t sub_1BA25CD78()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton))
  {
    Button = type metadata accessor for OnboardingViewControllerWithNextButton();
    v4[0] = v0;
    v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC8);
  }

  else
  {
    Button = type metadata accessor for OnboardingViewControllerWithNextButton();
    v4[0] = v0;
    v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  }

  v2 = v0;
  v1(v4);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

id OnboardingViewControllerWithNextButton.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id OnboardingViewControllerWithNextButton.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id OnboardingViewControllerWithNextButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1BA25D4A0()
{
  if (sub_1BA25D998(&OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item))
  {
    v1 = sub_1BA4A2DE8();
    v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView);
    if (v1)
    {
      v3 = [objc_opt_self() mainScreen];
      [v3 scale];

      [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
      v4 = sub_1BA4A2DF8();
      [v2 setImage_];

      sub_1BA25EF94();
    }

    else
    {
      v7 = sub_1BA4A2E28();
      [v2 setImage_];
    }
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView);

    [v5 setImage_];
  }

  return result;
}

void sub_1BA25D608()
{
  v1 = v0;
  sub_1BA25F1A4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BA25D998(&OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_item))
  {
    v8 = sub_1BA4A2DE8();
    v9 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
    if (v8)
    {
      swift_beginAccess();
      v10 = *(v0 + v9);
      v11 = objc_opt_self();
      v12 = v10;
      v13 = [v11 mainScreen];
      [v13 scale];

      [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
      v14 = sub_1BA4A2DF8();
      [v12 setImage_];

      v15 = [v11 mainScreen];
      [v15 scale];
      v17 = v16;

      if (qword_1EDC63680 != -1)
      {
        swift_once();
      }

      v25[0] = 0x405D000000000000;
      v25[1] = v17;
      v25[2] = qword_1EDC63688;
      sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
      sub_1B9F3DB14();

      sub_1BA4A4FA8();

      v18 = *(v1 + v9);
      v19 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x78);
      v20 = sub_1BA25F220();
      v21 = v18;
      v19(v7, v3, v20);

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      swift_beginAccess();
      v23 = *(v0 + v9);
      v24 = sub_1BA4A2E28();
      [v23 setImage_];
    }
  }

  else
  {
    v22 = OBJC_IVAR____TtC18HealthExperienceUI24SummaryHeaderProfileCell_avatarImageView;
    swift_beginAccess();
    [*(v0 + v22) setImage_];
  }
}

uint64_t sub_1BA25D998(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  sub_1B9F68124(v1 + v2, v5);
  if (v6)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBEE370, MEMORY[0x1E69A3450]);
    if (swift_dynamicCast())
    {
      if (*(&v8 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
        v3 = sub_1BA4A3418();
        __swift_destroy_boxed_opaque_existential_1(&v7);
        return v3;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v5, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
  }

  sub_1B9F43A50(&v7, &qword_1EBBEE368, &qword_1EBBEE370, MEMORY[0x1E69A3450]);
  return 0;
}

uint64_t sub_1BA25DAF8()
{
  v1 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0x656C69666F72502ELL, 0xEF7261746176412ELL);

  return v1;
}

uint64_t sub_1BA25DB70(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA25DBF8();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

double sub_1BA25DBF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))();
  v4 = sub_1BA25D4A0();
  v5 = (*(ObjectType + 120))(v4);
  v7 = v6;
  v8 = sub_1BA4A6758();
  [v1 setAccessibilityIdentifier_];

  MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
  v9 = sub_1BA4A6758();

  [v3 setAccessibilityIdentifier_];

  return result;
}

uint64_t sub_1BA25DD2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA25DD84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA25DBF8();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

double (*sub_1BA25DE08(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA25DE6C;
}

double sub_1BA25DE6C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA25DBF8();
  }

  return result;
}

void *ProfileAvatarImageCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView] = sub_1BA112B14();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ProfileAvatarImageCell();
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0xC8);
  v12 = v10;
  v11();

  return v12;
}

id ProfileAvatarImageCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *ProfileAvatarImageCell.init(coder:)(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint] = 0;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView] = sub_1BA112B14();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ProfileAvatarImageCell();
  v4 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xC8);
    v7 = v4;
    v6();
  }

  return v5;
}

void sub_1BA25E24C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v1 contentView];
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView];
  [v3 addSubview_];

  v5 = [v4 bottomAnchor];
  v6 = [v1 contentView];
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  v9 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint] = v8;
  v10 = v8;

  if (v10)
  {
    [v10 setActive_];
  }

  v11 = [v4 topAnchor];
  v12 = [v1 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint] = v14;
  v16 = v14;

  if (v16)
  {
    [v16 setActive_];
  }

  v17 = objc_opt_self();
  sub_1B9F109F8();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5880;
  v19 = [v4 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintGreaterThanOrEqualToAnchor_];
  *(v18 + 32) = v22;
  v23 = [v1 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v4 trailingAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor_];

  *(v18 + 40) = v26;
  v27 = [v4 centerXAnchor];
  v28 = [v1 contentView];
  v29 = [v28 centerXAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v18 + 48) = v30;
  v31 = [v4 widthAnchor];
  v32 = (*(ObjectType + 112))();
  v33 = [v31 constraintEqualToConstant_];

  *(v18 + 56) = v33;
  v34 = [v4 heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v18 + 64) = v35;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v36 = sub_1BA4A6AE8();

  [v17 activateConstraints_];
}

void sub_1BA25E6BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v4 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView];

    MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
    v6 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v5 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView];

    [v5 setAccessibilityIdentifier_];
  }
}

void sub_1BA25E898()
{
  v0 = sub_1BA4A6AE8();
  v1 = HKUIJoinStringsForAutomationIdentifier();

  if (v1)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA25E90C()
{
  sub_1BA25E24C();
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_bottomAnchorConstraint];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = [v0 contentView];
  v4 = [v3 bottomAnchor];

  v5 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView] bottomAnchor];
  v6 = [v4 constraintGreaterThanOrEqualToAnchor_];

  v7 = *&v0[v1];
  *&v0[v1] = v6;
  v8 = v6;

  if (v8)
  {
    [v8 setActive_];
  }

  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_topAnchorConstraint];
  if (v9)
  {
    [v9 setConstant_];
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_showProfileViewController];
  [v0 addGestureRecognizer_];
}

void sub_1BA25EA84()
{
  v1 = [v0 viewController];
  if (v1)
  {
    v13 = v1;
    v2 = UIViewController.resolvedHealthStore.getter();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 profileIdentifier];
      v5 = [v4 type];

      if (v5 == 1)
      {
        sub_1BA4A22B8();
        v6 = v3;
        v7 = sub_1BA4A22A8();
        v8 = objc_allocWithZone(type metadata accessor for ProfileViewController());
        v9 = v6;

        v10 = sub_1BA249DB8(v9, v7, v8);

        v3 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
        [v13 presentViewController:v3 animated:1 completion:0];

        v11 = v10;
      }

      else
      {
        v11 = v13;
      }

      v12 = v3;
    }

    else
    {
      v12 = v13;
    }
  }
}

id SummaryHeaderProfileAvatarImageCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SummaryHeaderProfileAvatarImageCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id SummaryHeaderProfileAvatarImageCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SummaryHeaderProfileAvatarImageCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1BA25EE34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA25EF94()
{
  v1 = v0;
  sub_1BA25F1A4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  if (qword_1EDC63680 != -1)
  {
    swift_once();
  }

  v14[1] = 0x4054000000000000;
  v14[2] = v10;
  v14[3] = qword_1EDC63688;
  sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
  sub_1B9F3DB14();

  sub_1BA4A4FA8();

  v11 = *((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC18HealthExperienceUI22ProfileAvatarImageCell_avatarImageView)) + 0x78);
  v12 = sub_1BA25F220();
  v11(v7, v3, v12);
  return (*(v4 + 8))(v7, v3);
}

void sub_1BA25F1A4(uint64_t a1)
{
  if (!qword_1EBBEF330)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E370, 0x1E69DCAB8);
    sub_1B9F3DB14();
    v1 = sub_1BA4A4AC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF330);
    }
  }
}

unint64_t sub_1BA25F220()
{
  result = qword_1EBBEF338;
  if (!qword_1EBBEF338)
  {
    sub_1BA25F1A4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF338);
  }

  return result;
}

double sub_1BA25F280(char a1)
{
  v36 = sub_1BA4A1798();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_areNotificationsDisabled;
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_areNotificationsDisabled) = a1;
  v7 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationSettingsDataSources);
  if (v7 >> 62)
  {
LABEL_19:
    v8 = sub_1BA4A7CC8();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v38 = v7 & 0xFFFFFFFFFFFFFF8;
    v30 = (v3 + 1);
    v3 = &OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_areNotificationsDisabled;
    v37 = xmmword_1BA4B5480;
    v33 = v7;
    v34 = v6;
    v31 = v7 & 0xC000000000000001;
    v32 = v8;
    do
    {
      if (v10)
      {
        v20 = MEMORY[0x1BFAF2860](v9, v7);
        v21 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v9 >= *(v38 + 16))
        {
          __break(1u);
          goto LABEL_19;
        }

        v20 = *(v7 + 8 * v9 + 32);

        v21 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_16;
        }
      }

      v22 = *(v1 + v6);
      v23 = *(v20 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_areNotificationsDisabled);
      *(v20 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_areNotificationsDisabled) = v22;
      if (v22 == v23)
      {
      }

      else
      {
        v24 = v1;
        v25 = OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_item;
        v26 = *(v20 + OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_item);
        v27 = v26[97];
        v26[97] = v22;
        if (v22 != v27)
        {
          v39[0] = v26[81];

          v26[96] = (v22 ^ 1) & sub_1BA3E529C(v39);
        }

        sub_1B9FF6758();
        inited = swift_initStackObject();
        *(inited + 16) = v37;
        sub_1B9F3D66C(0, &qword_1EDC5DCA0, sub_1B9F32244, MEMORY[0x1E69E6F90]);
        v12 = swift_allocObject();
        *(v12 + 16) = v37;
        v13 = *(v20 + v25);
        *(v12 + 56) = type metadata accessor for ProfileSharingWithYouNotificationSettingsItem();
        *(v12 + 64) = sub_1BA26014C(&qword_1EBBEADF8, type metadata accessor for ProfileSharingWithYouNotificationSettingsItem, &protocol conformance descriptor for SwitchCollectionViewItem);
        *(v12 + 32) = v13;

        v14 = v35;
        sub_1BA4A1788();
        v15 = sub_1BA4A1748();
        v17 = v16;
        (*v30)(v14, v36);
        v18 = MEMORY[0x1E69E7CC0];
        *(inited + 48) = MEMORY[0x1E69E7CC0];
        *(inited + 56) = sub_1B9F1C5F0(v18);
        *(inited + 40) = 0;
        *(inited + 32) = 0;

        *(inited + 48) = v12;
        v19 = Array<A>.identifierToIndexDict()(v12);

        *(inited + 56) = v19;
        *(inited + 64) = v15;
        *(inited + 72) = v17;
        sub_1BA0E7F10(inited, 1);

        swift_setDeallocating();
        sub_1B9FF7224(inited + 32);
        v1 = v24;
        v7 = v33;
        v6 = v34;
        v10 = v31;
        v8 = v32;
        v3 = &OBJC_IVAR____TtC18HealthExperienceUI51ProfileSharingWithYouNotificationSettingsDataSource_areNotificationsDisabled;
      }

      ++v9;
    }

    while (v21 != v8);
  }

  return result;
}

double sub_1BA25F638()
{
  v1 = v0;
  sub_1B9F3D66C(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v16 - v4;
  sub_1BA260000(0);
  v17 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A1B98();
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v11 = sub_1BA4A7308();
  v18 = v11;
  v12 = sub_1BA4A72A8();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_1BA2600CC(0);
  sub_1BA26014C(qword_1EBBEC458, sub_1BA2600CC, MEMORY[0x1E695C038]);
  sub_1B9F3DC80();
  sub_1BA4A50A8();
  sub_1B9F3E2C4(v5);

  swift_allocObject();
  swift_weakInit();
  sub_1BA26014C(&qword_1EBBEF3C0, sub_1BA260000, MEMORY[0x1E695BE98]);
  v13 = v17;
  v14 = sub_1BA4A5148();

  (*(v7 + 8))(v10, v13);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38ProfileSharingWithYouOptionsDataSource_notificationCancellable) = v14;

  return result;
}

double sub_1BA25F928(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BA25F280([v2 authorizationStatus] == 1);
  }

  return result;
}

double sub_1BA25FA08()
{

  return result;
}

uint64_t sub_1BA25FA58()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA25FB38()
{
  sub_1BA25FA58();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProfileSharingWithYouOptionsDataSource(uint64_t a1)
{
  result = qword_1EBBEF3A8;
  if (!qword_1EBBEF3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA25FC4C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF340 = result;
  *algn_1EBBEF348 = v1;
  return result;
}

uint64_t sub_1BA25FD0C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF350 = result;
  *algn_1EBBEF358 = v1;
  return result;
}

uint64_t sub_1BA25FDCC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF360 = result;
  *algn_1EBBEF368 = v1;
  return result;
}

uint64_t sub_1BA25FE8C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF370 = result;
  *algn_1EBBEF378 = v1;
  return result;
}

uint64_t sub_1BA25FF4C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF380 = result;
  *algn_1EBBEF388 = v1;
  return result;
}

void sub_1BA260000(uint64_t a1)
{
  if (!qword_1EBBEF3B8)
  {
    sub_1BA2600CC(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA26014C(qword_1EBBEC458, sub_1BA2600CC, MEMORY[0x1E695C038]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF3B8);
    }
  }
}

void sub_1BA2600CC(uint64_t a1)
{
  if (!qword_1EBBEC448)
  {
    sub_1B9F0ADF8(255, &qword_1EBBEC450, 0x1E69832B0);
    v1 = sub_1BA4A4E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC448);
    }
  }
}

uint64_t sub_1BA26014C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HKSharedSummaryCloudSyncManager.fetchProfileInformation()()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = ObjectType;
  sub_1BA263510(0, &qword_1EBBEC770, type metadata accessor for CloudProfileInformation, MEMORY[0x1E695C028]);
  swift_allocObject();
  v3 = v0;
  return sub_1BA4A4EA8();
}

void *sub_1BA2603BC(uint64_t a1)
{
  v2 = sub_1BA4A1798();
  v94 = *(v2 - 8);
  v95 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v93 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x1E69E8050];
  sub_1B9F3D6D0(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v92 = &v85 - v7;
  sub_1BA1DAE18(0);
  v86 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1DAD48(0);
  v14 = *(v13 - 8);
  v87 = v13;
  v88 = v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1DAC5C(0);
  v19 = *(v18 - 1);
  v90 = v18;
  v91 = v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v85 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA26368C(0);
  v99 = *(v22 - 8);
  v100 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  *&v89 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v85 - v27);
  v97 = [objc_allocWithZone(MEMORY[0x1E696C408]) initWithHealthStore_];
  v96 = HKSharedSummaryCloudSyncManager.fetchProfileInformation()();
  *&v109[0] = v96;
  *&v108[0] = sub_1BA4A6F68();
  sub_1BA263510(0, &qword_1EBBEC770, type metadata accessor for CloudProfileInformation, MEMORY[0x1E695C028]);
  sub_1BA263510(0, &qword_1EBBEDDD0, sub_1BA26359C, MEMORY[0x1E695BED0]);
  sub_1BA142E28();
  sub_1BA263604();
  sub_1BA4A4FC8();

  sub_1B9F63FF8(0, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
  sub_1B9F2AAA4(&qword_1EBBEDE00, sub_1BA1DAE18, MEMORY[0x1E695BC68]);
  v29 = v86;
  sub_1BA4A4FE8();
  (*(v9 + 8))(v12, v29);
  sub_1BA1DB098(0);
  sub_1B9F2AAA4(&qword_1EBBEDE10, sub_1BA1DAD48, MEMORY[0x1E695BD60]);
  sub_1B9F2AAA4(&qword_1EBBEDE18, sub_1BA1DB098, MEMORY[0x1E695C008]);
  v30 = v85;
  v31 = v87;
  sub_1BA4A5018();
  (*(v88 + 8))(v17, v31);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v32 = sub_1BA4A7308();
  *&v109[0] = v32;
  v33 = sub_1BA4A72A8();
  v34 = v92;
  (*(*(v33 - 8) + 56))(v92, 1, 1, v33);
  sub_1B9F2AAA4(&qword_1EBBEDE20, sub_1BA1DAC5C, MEMORY[0x1E695BDA0]);
  sub_1B9F3DC80();
  v35 = v90;
  sub_1BA4A50A8();
  sub_1BA263758(v34, &qword_1EDC6B5B8, v98);

  (v91[1])(v30, v35);
  v36 = *(v99 + 16);
  v37 = v89;
  v98 = v28;
  v36(v89, v28, v100);
  type metadata accessor for SectionsPublisherDataSource(0);
  swift_allocObject();
  v38 = sub_1BA1D6F20(v37);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v108[0] = xmmword_1EDC6D388;
  v108[1] = xmmword_1EDC6D398;
  v108[2] = xmmword_1EDC6D3A8;
  v108[3] = xmmword_1EDC6D3B8;
  v108[4] = xmmword_1EDC6D3C8;
  v108[5] = unk_1EDC6D3D8;
  v108[6] = xmmword_1EDC6D3E8;
  v108[7] = unk_1EDC6D3F8;
  v39 = xmmword_1EDC6D388;
  v40 = xmmword_1EDC6D398;
  v42 = xmmword_1EDC6D3A8;
  v41 = xmmword_1EDC6D3B8;
  v107 = qword_1EDC6D3E0;
  v105 = *(&xmmword_1EDC6D3B8 + 8);
  v106 = *(&xmmword_1EDC6D3C8 + 8);
  sub_1B9F1D9A4(v108, v109);
  sub_1B9F1DA18(*(&v40 + 1), v42, *(&v42 + 1), v41);
  v92 = objc_opt_self();
  v43 = [v92 estimatedDimension_];

  v44 = *(MEMORY[0x1E69DC5C0] + 8);
  v46 = *(MEMORY[0x1E69DC5C0] + 16);
  v45 = *(MEMORY[0x1E69DC5C0] + 24);
  v47 = *MEMORY[0x1E69DC5C0] + 20.0;
  v48 = swift_allocObject();
  *(v48 + 16) = v39;
  *(v48 + 24) = v43;
  *(v48 + 32) = v40;
  v49 = v106;
  *(v48 + 72) = v105;
  *(v48 + 40) = 0u;
  *(v48 + 56) = 0u;
  *(v48 + 88) = v49;
  *(v48 + 104) = v107;
  *(v48 + 112) = v47;
  *(v48 + 120) = v44;
  *(v48 + 128) = v46;
  *(v48 + 136) = v45;
  v90 = type metadata accessor for DataSourceWithLayout;
  sub_1BA263920(0, &qword_1EBBEE330, type metadata accessor for SectionsPublisherDataSource, &protocol witness table for SectionsPublisherDataSource, type metadata accessor for DataSourceWithLayout);
  v50 = swift_allocObject();
  *(v50 + 16) = v38;
  v51 = *(v38 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier);
  v52 = *(v38 + OBJC_IVAR____TtC18HealthExperienceUI27SectionsPublisherDataSource_identifier + 8);
  v91 = v50;
  *(v50 + 24) = v51;
  *(v50 + 32) = v52;
  *(v50 + 40) = 0;
  *(v50 + 48) = sub_1BA2637B4;
  *(v50 + 56) = v48;
  sub_1B9F63FF8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v53 = swift_allocObject();
  v89 = xmmword_1BA4B5480;
  *(v53 + 16) = xmmword_1BA4B5480;
  sub_1B9F40D10(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v54 = swift_allocObject();
  *(v54 + 16) = v89;
  v55 = sub_1BA4A2E48();

  v56 = sub_1BA4A2E18();
  v57 = MEMORY[0x1E69A3330];
  *(v54 + 56) = v55;
  *(v54 + 64) = v57;
  *(v54 + 32) = v56;
  v58 = v93;
  sub_1BA4A1788();
  *&v89 = sub_1BA4A1748();
  v60 = v59;
  v61 = v95;
  v62 = *(v94 + 8);
  v62(v58, v95);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v64 = Array<A>.identifierToIndexDict()(v63);

  *(v53 + 32) = 0;
  *(v53 + 40) = 0;
  *(v53 + 48) = v54;
  *(v53 + 56) = v64;
  *(v53 + 64) = v89;
  *(v53 + 72) = v60;
  *&v109[0] = 0x3C53447961727241;
  *(&v109[0] + 1) = 0xE800000000000000;
  sub_1BA4A1788();
  v65 = sub_1BA4A1748();
  v67 = v66;
  v62(v58, v61);
  MEMORY[0x1BFAF1350](v65, v67);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v68 = v109[0];
  type metadata accessor for ArrayDataSource(0);
  swift_allocObject();
  v69 = sub_1B9F348D8(v53, v68, *(&v68 + 1));

  v109[0] = xmmword_1EDC6D388;
  v109[1] = xmmword_1EDC6D398;
  v109[2] = xmmword_1EDC6D3A8;
  v109[3] = xmmword_1EDC6D3B8;
  v109[4] = xmmword_1EDC6D3C8;
  v109[5] = unk_1EDC6D3D8;
  v109[6] = xmmword_1EDC6D3E8;
  v109[7] = unk_1EDC6D3F8;
  v70 = xmmword_1EDC6D388;
  v71 = xmmword_1EDC6D398;
  v72 = xmmword_1EDC6D3A8;
  v73 = xmmword_1EDC6D3B8;
  v102 = *(&xmmword_1EDC6D3B8 + 8);
  v103 = *(&xmmword_1EDC6D3C8 + 8);
  v104 = qword_1EDC6D3E0;
  sub_1B9F1D9A4(v109, &v101);
  sub_1B9F1DA18(*(&v71 + 1), v72, *(&v72 + 1), v73);
  v74 = [v92 estimatedDimension_];

  v75 = swift_allocObject();
  *(v75 + 16) = v70;
  *(v75 + 24) = v74;
  *(v75 + 32) = v71;
  *(v75 + 40) = 0u;
  *(v75 + 56) = 0u;
  v76 = v103;
  *(v75 + 72) = v102;
  *(v75 + 88) = v76;
  *(v75 + 104) = v104;
  *(v75 + 112) = v47;
  *(v75 + 120) = v44;
  *(v75 + 128) = v46 + 16.0;
  *(v75 + 136) = v45;
  sub_1BA263920(0, &qword_1EBBEAB10, type metadata accessor for ArrayDataSource, &protocol witness table for ArrayDataSource, v90);
  v77 = swift_allocObject();
  *(v77 + 16) = v69;
  v78 = v69[5];
  v79 = v69[6];
  *(v77 + 24) = v78;
  *(v77 + 32) = v79;
  *(v77 + 40) = 0;
  *(v77 + 48) = sub_1BA263C70;
  *(v77 + 56) = v75;
  sub_1BA263838(0);
  swift_allocObject();

  v80 = sub_1BA063A28(v91, v77);

  (*(v99 + 8))(v98, v100);
  sub_1BA263920(0, &qword_1EBBEF3F8, sub_1BA263838, &protocol witness table for PrimarySecondaryDataSource<A, B>, type metadata accessor for CellRegistering);
  v81 = swift_allocObject();
  v82 = v80[4];
  v81[2] = v80[3];
  v81[3] = v82;
  v81[4] = v80;
  v83 = swift_allocObject();
  v83[2] = v80;
  v83[3] = sub_1BA261740;
  v83[4] = 0;
  v81[5] = sub_1BA26398C;
  v81[6] = v83;

  return v81;
}

uint64_t sub_1BA2610BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1798();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for CloudProfileInformation(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA263A08(a1, v14);
  if (a2)
  {
    sub_1BA4A7658();
  }

  else
  {
    v15 = sub_1BA4A1728();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  sub_1B9F7B4F4(v10, &v14[*(v11 + 28)]);
  sub_1B9F63FF8(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5480;
  sub_1B9F40D10(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5460;
  v18 = sub_1BA4A2E48();
  swift_allocObject();

  v19 = sub_1BA4A2E38();
  v20 = MEMORY[0x1E69A3330];
  *(v17 + 56) = v18;
  *(v17 + 64) = v20;
  *(v17 + 32) = v19;
  *(v17 + 96) = v11;
  *(v17 + 104) = sub_1B9F2AAA4(&qword_1EBBEF3C8, type metadata accessor for CloudProfileInformation, &protocol conformance descriptor for CloudProfileInformation);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 72));
  sub_1BA263A08(v14, boxed_opaque_existential_1);
  v22 = v29;
  sub_1BA4A1788();
  v23 = sub_1BA4A1748();
  v25 = v24;
  (*(v30 + 8))(v22, v31);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = v17;
  v26 = Array<A>.identifierToIndexDict()(v17);

  *(v16 + 56) = v26;
  *(v16 + 64) = v23;
  *(v16 + 72) = v25;
  sub_1BA263A6C(v14, type metadata accessor for CloudProfileInformation);
  return v16;
}

uint64_t CloudProfileInformation.withImage()()
{
  sub_1BA4A2E48();
  swift_allocObject();

  return sub_1BA4A2E38();
}

uint64_t sub_1BA2614D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA263998(0);
  result = sub_1BA2610BC(a1, *(a1 + *(v4 + 48)));
  *a2 = result;
  return result;
}

uint64_t sub_1BA261518(void **a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_1BA4A3D88();
  v8 = v7;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v7;
    v19 = v12;
    *v11 = 136446210;
    v13 = v7;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v14 = sub_1BA4A6808();
    v16 = sub_1B9F0B82C(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1B9F07000, v9, v10, "Failed to fetch profileInfo: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v19 = MEMORY[0x1E69E7CC0];
  sub_1B9F63FF8(0, &qword_1EDC5E6D0, &type metadata for ArrayDataSourceSection, MEMORY[0x1E69E62F8]);
  return sub_1BA4A4E78();
}

uint64_t CloudProfileInformation.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void CloudProfileInformation.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CloudProfileInformation.reuseIdentifier.getter()
{
  type metadata accessor for ProfileNameCell();
  sub_1BA262F74();
  return sub_1BA4A6808();
}

uint64_t CloudProfileInformation.firstName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void CloudProfileInformation.firstName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t CloudProfileInformation.lastName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void CloudProfileInformation.lastName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t CloudProfileInformation.dateUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CloudProfileInformation(0) + 28);

  return sub_1BA246A0C(v3, a1);
}

uint64_t CloudProfileInformation.dateUpdated.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudProfileInformation(0) + 28);

  return sub_1B9F7B4F4(a1, v3);
}

uint64_t CloudProfileInformation.init(firstName:lastName:dateUpdated:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v12 = sub_1BA4A1798();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for CloudProfileInformation(0) + 28);
  v18 = sub_1BA4A1728();
  (*(*(v18 - 8) + 56))(a6 + v17, 1, 1, v18);
  a6[2] = a1;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = a4;

  sub_1BA120C08(a5, a6 + v17);
  v24 = 0xD000000000000018;
  v25 = 0x80000001BA4F7280;
  MEMORY[0x1BFAF1350](a1, a2);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  if (a4)
  {
    v19 = a3;
  }

  else
  {
    v19 = 7104878;
  }

  if (!a4)
  {
    a4 = 0xE300000000000000;
  }

  MEMORY[0x1BFAF1350](v19, a4);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  sub_1B9F2AAA4(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v20 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v20);

  (*(v13 + 8))(v16, v12);
  v21 = v24;
  v22 = v25;
  result = sub_1BA263758(a5, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  *a6 = v21;
  a6[1] = v22;
  return result;
}

uint64_t CloudProfileInformation.hash(into:)(uint64_t a1)
{
  v2 = sub_1BA4A1728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v13 - v9;
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  if (*(v1 + 40))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  v11 = type metadata accessor for CloudProfileInformation(0);
  sub_1BA246A0C(v1 + *(v11 + 28), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_1BA4A84A8();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1BA4A84A8();
  sub_1B9F2AAA4(&qword_1EDC6AE78, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BA4A66A8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t CloudProfileInformation.hashValue.getter()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12 - v8;
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  if (*(v0 + 40))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  v10 = type metadata accessor for CloudProfileInformation(0);
  sub_1BA246A0C(v0 + *(v10 + 28), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1BA4A84A8();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1BA4A84A8();
    sub_1B9F2AAA4(&qword_1EDC6AE78, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1BA4A66A8();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA262104()
{
  type metadata accessor for ProfileNameCell();
  sub_1BA262F74();
  return sub_1BA4A6808();
}

uint64_t sub_1BA26214C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v14 - v11;
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  if (*(v2 + 40))
  {
    sub_1BA4A84A8();
    sub_1BA4A68C8();
  }

  else
  {
    sub_1BA4A84A8();
  }

  sub_1BA246A0C(v2 + *(a2 + 28), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1BA4A84A8();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1BA4A84A8();
    sub_1B9F2AAA4(&qword_1EDC6AE78, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1BA4A66A8();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1BA4A84D8();
}

uint64_t sub_1BA2623B4(uint64_t a1)
{
  v2 = sub_1B9F2AAA4(&qword_1EBBEF3E8, type metadata accessor for CloudProfileInformation, &protocol conformance descriptor for CloudProfileInformation);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA262434(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a4;
  v10[4] = sub_1BA263ACC;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BA0A2650;
  v10[3] = &block_descriptor_64;
  v9 = _Block_copy(v10);

  [a3 fetchAccountInfoWithCompletion_];
  _Block_release(v9);
}

uint64_t type metadata accessor for CloudProfileInformation(uint64_t a1)
{
  result = qword_1EBBEF3D8;
  if (!qword_1EBBEF3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA262574(void *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v96 = a5;
  v107 = a4;
  v8 = sub_1BA4A3EA8();
  v102 = *(v8 - 8);
  v103 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v105 = (&v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v95 = &v93 - v13;
  sub_1BA263510(0, &qword_1EBBEF408, type metadata accessor for CloudProfileInformation, MEMORY[0x1E69E75F0]);
  v106 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v104 = (&v93 - v20);
  v21 = sub_1BA4A1798();
  v100 = *(v21 - 8);
  v101 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v98 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v97 = &v93 - v26;
  v27 = type metadata accessor for CloudProfileInformation(0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = (&v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31, v32);
  v99 = &v93 - v33;
  v34 = sub_1BA4A13E8();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v93 - v41;
  if (!a1)
  {
    sub_1BA4A3D88();
    v67 = a2;
    v68 = sub_1BA4A3E88();
    v69 = sub_1BA4A6FA8();

    v70 = a2;
    if (os_log_type_enabled(v68, v69))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v108 = v72;
      *v71 = 136446466;
      v73 = sub_1BA4A85D8();
      v75 = sub_1B9F0B82C(v73, v74, &v108);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2082;
      v110 = v70;
      v76 = v70;
      sub_1B9F40D10(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v77 = sub_1BA4A6828();
      v79 = sub_1B9F0B82C(v77, v78, &v108);

      *(v71 + 14) = v79;
      _os_log_impl(&dword_1B9F07000, v68, v69, "[%{public}s]: Error fetching iCloud account info: %{public}s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v72, -1, -1);
      MEMORY[0x1BFAF43A0](v71, -1, -1);
    }

    (*(v102 + 8))(v105, v103);
    v80 = v70;
    if (!v70)
    {
      sub_1BA263AD8();
      v80 = swift_allocError();
    }

    *v17 = v80;
    swift_storeEnumTagMultiPayload();
    v81 = v70;
    a3(v17);
    v82 = v17;
    return sub_1BA263B2C(v82);
  }

  v94 = v27;
  v105 = a3;
  v43 = a1;
  v44 = [v43 fullName];
  sub_1BA4A13C8();

  v45 = sub_1BA4A1378();
  v47 = v46;
  v48 = *(v35 + 8);
  v48(v42, v34);
  if (!v47)
  {
    v83 = v95;
    sub_1BA4A3D88();
    v84 = sub_1BA4A3E88();
    v85 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v108 = v87;
      *v86 = 136446210;
      v88 = sub_1BA4A85D8();
      v90 = sub_1B9F0B82C(v88, v89, &v108);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_1B9F07000, v84, v85, "[%{public}s]: Missing first name in iCloud account info", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x1BFAF43A0](v87, -1, -1);
      MEMORY[0x1BFAF43A0](v86, -1, -1);
    }

    (*(v102 + 8))(v83, v103);
    sub_1BA263BB8();
    v91 = swift_allocError();
    v92 = v104;
    *v104 = v91;
    swift_storeEnumTagMultiPayload();
    v105(v92);

    v82 = v92;
    return sub_1BA263B2C(v82);
  }

  v93 = v43;
  v49 = [v43 fullName];
  sub_1BA4A13C8();

  v103 = v45;
  v50 = sub_1BA4A1398();
  v52 = v51;
  v48(v38, v34);
  v53 = sub_1BA4A1728();
  v54 = *(*(v53 - 8) + 56);
  v55 = v97;
  v54(v97, 1, 1, v53);
  v56 = *(v94 + 28);
  v54(v30 + v56, 1, 1, v53);
  v57 = v103;
  v30[2] = v103;
  v30[3] = v47;
  v30[4] = v50;
  v30[5] = v52;

  sub_1BA120C08(v55, v30 + v56);
  v108 = 0xD000000000000018;
  v109 = 0x80000001BA4F7280;
  MEMORY[0x1BFAF1350](v57, v47);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  if (v52)
  {
    v58 = v50;
  }

  else
  {
    v58 = 7104878;
  }

  if (!v52)
  {
    v52 = 0xE300000000000000;
  }

  MEMORY[0x1BFAF1350](v58, v52);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v59 = v98;
  sub_1BA4A1788();
  sub_1B9F2AAA4(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v60 = v101;
  v61 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v61);

  (*(v100 + 8))(v59, v60);
  v62 = v108;
  v63 = v109;
  sub_1BA263758(v55, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  *v30 = v62;
  v30[1] = v63;
  v64 = v99;
  sub_1BA263C0C(v30, v99);
  v65 = v104;
  sub_1BA263A08(v64, v104);
  swift_storeEnumTagMultiPayload();
  v105(v65);

  sub_1BA263B2C(v65);
  return sub_1BA263A6C(v64, type metadata accessor for CloudProfileInformation);
}

uint64_t sub_1BA262EEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for CloudProfileInformation(0);
  a2[4] = sub_1B9F2AAA4(&qword_1EBBEF420, type metadata accessor for CloudProfileInformation, &protocol conformance descriptor for CloudProfileInformation);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_1BA263A08(a1, boxed_opaque_existential_1);
}

unint64_t sub_1BA262F74()
{
  result = qword_1EDC6DAC8[0];
  if (!qword_1EDC6DAC8[0])
  {
    type metadata accessor for ProfileNameCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_1EDC6DAC8);
  }

  return result;
}

BOOL _s18HealthExperienceUI23CloudProfileInformationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1BA4A1728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D6D0(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - v11;
  sub_1BA2510F0(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_1BA4A8338() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[5];
  v19 = a2[5];
  if (v18)
  {
    if (!v19 || (a1[4] != a2[4] || v18 != v19) && (sub_1BA4A8338() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = *(type metadata accessor for CloudProfileInformation(0) + 28);
  v21 = *(v14 + 48);
  sub_1BA246A0C(a1 + v20, v17);
  sub_1BA246A0C(a2 + v20, &v17[v21]);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) != 1)
  {
    sub_1BA246A0C(v17, v12);
    if (v22(&v17[v21], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_18;
    }

    (*(v5 + 32))(v8, &v17[v21], v4);
    sub_1B9F2AAA4(&qword_1EBBEF228, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v24 = sub_1BA4A6728();
    v25 = *(v5 + 8);
    v25(v8, v4);
    v25(v12, v4);
    sub_1BA263758(v17, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    return (v24 & 1) != 0;
  }

  if (v22(&v17[v21], 1, v4) != 1)
  {
LABEL_18:
    sub_1BA263A6C(v17, sub_1BA2510F0);
    return 0;
  }

  sub_1BA263758(v17, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  return 1;
}

void sub_1BA263424(uint64_t a1)
{
  sub_1B9F63FF8(319, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9F3D6D0(319, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BA263510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BA26359C(uint64_t a1)
{
  if (!qword_1EBBEDDD8)
  {
    sub_1B9F0ADF8(255, &unk_1EBBEDDE0, 0x1E696C418);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDDD8);
    }
  }
}

unint64_t sub_1BA263604()
{
  result = qword_1EBBEDDF0;
  if (!qword_1EBBEDDF0)
  {
    sub_1BA263510(255, &qword_1EBBEDDD0, sub_1BA26359C, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEDDF0);
  }

  return result;
}

void sub_1BA26368C(uint64_t a1)
{
  if (!qword_1EBBEDDA8)
  {
    sub_1BA1DAC5C(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1B9F2AAA4(&qword_1EBBEDE20, sub_1BA1DAC5C, MEMORY[0x1E695BDA0]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEDDA8);
    }
  }
}

uint64_t sub_1BA263758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F3D6D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = *(v0 + 56);
  if (v1)
  {
  }

  v2 = *(v0 + 88);
  if (v2)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

void sub_1BA263838(uint64_t a1)
{
  if (!qword_1EBBEF3F0)
  {
    sub_1BA263920(255, &qword_1EBBEE330, type metadata accessor for SectionsPublisherDataSource, &protocol witness table for SectionsPublisherDataSource, type metadata accessor for DataSourceWithLayout);
    v3 = v2;
    sub_1BA263920(255, &qword_1EBBEAB10, type metadata accessor for ArrayDataSource, &protocol witness table for ArrayDataSource, type metadata accessor for DataSourceWithLayout);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = &protocol witness table for DataSourceWithLayout<A>;
    v7[3] = &protocol witness table for DataSourceWithLayout<A>;
    v5 = type metadata accessor for PrimarySecondaryDataSource(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1EBBEF3F0);
    }
  }
}

void sub_1BA263920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1BA263998(uint64_t a1)
{
  if (!qword_1EBBEF400)
  {
    type metadata accessor for CloudProfileInformation(255);
    sub_1BA26359C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEF400);
    }
  }
}

uint64_t sub_1BA263A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudProfileInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA263A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BA263AD8()
{
  result = qword_1EBBEF410;
  if (!qword_1EBBEF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF410);
  }

  return result;
}

uint64_t sub_1BA263B2C(uint64_t a1)
{
  sub_1BA263510(0, &qword_1EBBEF408, type metadata accessor for CloudProfileInformation, MEMORY[0x1E69E75F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BA263BB8()
{
  result = qword_1EBBEF418;
  if (!qword_1EBBEF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF418);
  }

  return result;
}

uint64_t sub_1BA263C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudProfileInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA263CD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  v5 = sub_1BA4A12C8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA263D60(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BA4A12C8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  (*(v5 + 40))(v10 + v11, v9, v4);
  return swift_endAccess();
}

uint64_t sub_1BA263E78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  v4 = sub_1BA4A12C8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA263F00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  v4 = sub_1BA4A12C8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA263FF0(uint64_t a1, uint64_t *a2)
{
  sub_1B9F51474(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5CCC4(a1, v7, sub_1B9F51474);
  v8 = *a2;
  v9 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  sub_1B9F426D0(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1BA2640BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  return sub_1B9F5CCC4(v1 + v3, a1, sub_1B9F51474);
}

uint64_t sub_1BA264128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  sub_1B9F426D0(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1BA2641E8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v4;

  return result;
}

double sub_1BA264254(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  return result;
}

double sub_1BA2642D8@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;

  return result;
}

double sub_1BA264340(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  swift_beginAccess();
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  return result;
}

uint64_t AudioExposureCurrentValueView.ViewModel.__allocating_init(classification:supratitleString:primaryString:animationConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v16 = *a4;
  v9 = *(a4 + 2);
  v10 = *(a4 + 24);
  v11 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  v12 = sub_1BA4A12C8();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v8 + v11, 1, 1, v12);
  v14 = v8 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = 0;
  *(v14 + 24) = 0;
  *(v8 + 16) = a1;
  (*(v13 + 32))(v8 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString, a3, v12);
  swift_beginAccess();
  sub_1B9F426D0(a2, v8 + v11);
  swift_endAccess();
  swift_beginAccess();
  *v14 = v16;
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;

  return v8;
}

uint64_t AudioExposureCurrentValueView.ViewModel.init(classification:supratitleString:primaryString:animationConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v15 = *a4;
  v8 = *(a4 + 2);
  v9 = *(a4 + 24);
  v10 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  v11 = sub_1BA4A12C8();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v4 + v10, 1, 1, v11);
  v13 = v4 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *v13 = 0;
  *(v4 + 16) = a1;
  (*(v12 + 32))(v4 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString, a3, v11);
  swift_beginAccess();
  sub_1B9F426D0(a2, v4 + v10);
  swift_endAccess();
  swift_beginAccess();
  *v13 = v15;
  *(v13 + 16) = v8;
  *(v13 + 24) = v9;

  return v4;
}

uint64_t AudioExposureCurrentValueView.ViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  AudioExposureCurrentValueView.ViewModel.init(from:)(a1);
  return v2;
}

uint64_t AudioExposureCurrentValueView.ViewModel.init(from:)(void *a1)
{
  sub_1B9F51474(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v65 = &v58 - v8;
  v68 = sub_1BA4A1278();
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v9);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A12C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v71 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v58 - v17;
  sub_1BA265728(0, &qword_1EBBEF428, MEMORY[0x1E69E6F48]);
  v20 = *(v19 - 8);
  v72 = v19;
  v73 = v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v58 - v23;
  v69 = v12;
  v27 = *(v12 + 56);
  v25 = v12 + 56;
  v26 = v27;
  v75 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  (v27)(v1 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString, 1, 1, v11, v22);
  v82 = v1;
  v28 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v74 = v28;
  *v28 = 0;
  v29 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1BA264F20();
  v30 = v76;
  sub_1BA4A8528();
  if (v30)
  {
    v34 = v82;
    sub_1BA267CCC(v82 + v75, sub_1B9F51474);

    type metadata accessor for AudioExposureCurrentValueView.ViewModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v71;
    *&v76 = v18;
    v63 = v26;
    v64 = v25;
    type metadata accessor for HKAudioExposureClassification(0);
    v78 = 0;
    sub_1B9F893A8(&qword_1EBBEF430, type metadata accessor for HKAudioExposureClassification, &protocol conformance descriptor for HKAudioExposureClassification);
    v32 = v72;
    sub_1BA4A81C8();
    v34 = v82;
    *(v82 + 16) = v79;
    LOBYTE(v79) = 1;
    v35 = v31;
    v36 = v11;
    v62 = sub_1B9F893A8(&qword_1EDC6AEA8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
    sub_1BA4A81C8();
    v37 = v69;
    v38 = *(v69 + 16);
    v39 = v35;
    v40 = v76;
    v60 = v69 + 16;
    v59 = v38;
    v38(v76, v39, v11);
    v41 = v67;
    sub_1BA4A1288();
    sub_1B9F4D364(v41, v40);
    v42 = v24;
    v61 = 0;
    v43 = v70 + 8;
    v58 = *(v70 + 8);
    v58(v41, v68);
    v44 = v37 + 8;
    v71 = *(v37 + 8);
    (v71)(v39, v36);
    (*(v37 + 32))(v34 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString, v40, v36);
    LOBYTE(v79) = 2;
    v45 = v66;
    v46 = v61;
    sub_1BA4A8178();
    if (v46)
    {

      (*(v73 + 8))(v42, v32);
    }

    else
    {
      v62 = v44;
      v47 = v58;
      v48 = v59;
      v70 = v43;
      v49 = v45;
      *&v76 = v42;
      if ((*(v69 + 48))(v45, 1, v36) == 1)
      {
        sub_1BA267CCC(v45, sub_1B9F51474);
        v50 = 1;
        v51 = v65;
      }

      else
      {
        v51 = v65;
        v48(v65, v49, v36);
        v52 = v67;
        sub_1BA4A1288();
        sub_1B9F4D364(v52, v51);
        v47(v52, v68);
        (v71)(v49, v36);
        v50 = 0;
      }

      v63(v51, v50, 1, v36);
      v34 = v82;
      v53 = v75;
      swift_beginAccess();
      sub_1B9F426D0(v51, v34 + v53);
      swift_endAccess();
      v78 = 3;
      sub_1B9F73860();
      v54 = v76;
      sub_1BA4A8178();
      (*(v73 + 8))(v54, v32);
      v76 = v79;
      v55 = v80;
      v56 = v81;
      v57 = v74;
      swift_beginAccess();
      *v57 = v76;
      *(v57 + 16) = v55;
      *(v57 + 24) = v56;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v77);
  return v34;
}

unint64_t sub_1BA264F20()
{
  result = qword_1EDC64170;
  if (!qword_1EDC64170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64170);
  }

  return result;
}

uint64_t type metadata accessor for AudioExposureCurrentValueView.ViewModel(uint64_t a1)
{
  result = qword_1EDC64150;
  if (!qword_1EDC64150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA264FC0()
{
  v1 = 0x6966697373616C63;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x537972616D697270;
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

uint64_t sub_1BA265058@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA267B4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA265080(uint64_t a1)
{
  v2 = sub_1BA264F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2650BC(uint64_t a1)
{
  v2 = sub_1BA264F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioExposureCurrentValueView.ViewModel.deinit()
{
  v1 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  v2 = sub_1BA4A12C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA267CCC(v0 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString, sub_1B9F51474);

  return v0;
}

uint64_t AudioExposureCurrentValueView.ViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  v2 = sub_1BA4A12C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BA267CCC(v0 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString, sub_1B9F51474);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA265264(void *a1)
{
  v2 = v1;
  sub_1B9F51474(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A12C8();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA265728(0, &qword_1EDC5DD48, MEMORY[0x1E69E6F58]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v26 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA264F20();
  sub_1BA4A8548();
  swift_beginAccess();
  v30 = *(v2 + 16);
  v33 = 0;
  type metadata accessor for HKAudioExposureClassification(0);
  sub_1B9F893A8(&qword_1EDC5E278, type metadata accessor for HKAudioExposureClassification, &protocol conformance descriptor for HKAudioExposureClassification);
  v18 = v29;
  sub_1BA4A8288();
  if (v18)
  {
    return (*(v14 + 8))(v17, v13);
  }

  v29 = v7;
  v20 = v14;
  v21 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  (*(v27 + 16))(v11, v2 + v21, v28);
  LOBYTE(v30) = 1;
  sub_1B9F893A8(&qword_1EDC6AEB8, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
  sub_1BA4A8288();
  (*(v27 + 8))(v11, v28);
  v22 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  v23 = v29;
  sub_1B9F5CCC4(v2 + v22, v29, sub_1B9F51474);
  LOBYTE(v30) = 2;
  sub_1BA4A8238();
  sub_1BA267CCC(v23, sub_1B9F51474);
  v24 = (v2 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration);
  swift_beginAccess();
  v25 = *(v24 + 24);
  v30 = *v24;
  v31 = *(v24 + 1);
  v32 = v25;
  v34 = 3;
  sub_1BA102B04();

  sub_1BA4A8238();

  return (*(v20 + 8))(v17, 0);
}

void sub_1BA265728(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA264F20();
    v7 = a3(a1, &type metadata for AudioExposureCurrentValueView.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA26578C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AudioExposureCurrentValueView.ViewModel(0);
  result = sub_1BA4A4D78();
  *a2 = result;
  return result;
}

uint64_t sub_1BA2657CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AudioExposureCurrentValueView.ViewModel(0);
  v5 = swift_allocObject();
  result = AudioExposureCurrentValueView.ViewModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void AudioExposureCurrentValueView.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  type metadata accessor for AudioExposureCurrentValueView.ViewModel(0);
  sub_1B9F893A8(&qword_1EBBEF438, type metadata accessor for AudioExposureCurrentValueView.ViewModel, &protocol conformance descriptor for AudioExposureCurrentValueView.ViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v4;

  *(a2 + 16) = v3;
}

void AudioExposureCurrentValueView.body.getter(uint64_t a7@<X8>)
{
  v9 = v7[1];
  v15 = *v7;
  v16[0] = v9;
  *(v16 + 9) = *(v7 + 25);
  *a7 = sub_1BA4A5878();
  *(a7 + 8) = 0;
  *(a7 + 16) = 1;
  sub_1BA267F1C(0, &qword_1EBBEF440, sub_1BA266114, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1BA2659F4(&v15, a7 + *(v10 + 44));
  v11 = sub_1BA4A60A8();
  v12 = sub_1BA4A5B78();
  sub_1BA2663C0(0, &qword_1EBBEF488, sub_1BA266434, sub_1B9F53864);
  v14 = a7 + *(v13 + 36);
  *v14 = v11;
  *(v14 + 8) = v12;
}

uint64_t sub_1BA2659F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_1BA26619C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v68 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v55[-v8];
  v10 = sub_1BA4A5718();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v60 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F89310(0, &qword_1EDC5F1D0, MEMORY[0x1E697CBE8], MEMORY[0x1E6981148]);
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v63 = &v55[-v15];
  sub_1B9F51474(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1BA4A12C8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v55[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v55[-v27];
  sub_1B9F52ED4(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v64 = &v55[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v55[-v34];
  v36 = *(a1 + 8);
  v37 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_supratitleString;
  swift_beginAccess();
  sub_1B9F5CCC4(v36 + v37, v19, sub_1B9F51474);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1BA267CCC(v19, sub_1B9F51474);
    v38 = 1;
    v39 = a1;
  }

  else
  {
    (*(v21 + 32))(v28, v19, v20);
    v40 = *(v21 + 16);
    v59 = v28;
    v40(v24, v28, v20);
    v58 = sub_1BA4A5E08();
    v71 = v58;
    v72 = v41;
    v57 = v41;
    v56 = v42;
    v73 = v42 & 1;
    v74 = v43;
    *&v75 = 0;
    *(&v75 + 1) = 0xE000000000000000;
    sub_1BA4A7DF8();
    v75 = *(a1 + 24);
    v76 = *(a1 + 40);
    v44 = v75;
    v39 = a1;
    if (v76 == 1)
    {
      v45 = *(&v75 + 1);
    }

    else
    {

      sub_1BA4A6FB8();
      v46 = sub_1BA4A5B28();
      v39 = a1;
      sub_1BA4A3CA8();

      v47 = v60;
      sub_1BA4A5708();
      swift_getAtKeyPath();
      sub_1BA0D5CF0(&v75);
      (*(v61 + 8))(v47, v62);

      v44 = v69;
      v45 = v70;
    }

    v69 = v44;
    v70 = v45;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v48 = v63;
    sub_1BA4A5F18();

    sub_1BA102AF4(v58, v57, v56 & 1);

    (*(v21 + 8))(v59, v20);
    sub_1BA267FD8(v48, v35);
    v38 = 0;
  }

  (*(v65 + 56))(v35, v38, 1, v66);
  *v9 = sub_1BA4A5798();
  *(v9 + 1) = 0x4008000000000000;
  v9[16] = 0;
  sub_1BA267F1C(0, &qword_1EBBEF4D8, sub_1BA266230, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1BA2664C8(v39, &v9[*(v49 + 44)]);
  v50 = v64;
  sub_1B9F5CCC4(v35, v64, sub_1B9F52ED4);
  v51 = v68;
  sub_1B9F5CCC4(v9, v68, sub_1BA26619C);
  v52 = v67;
  sub_1B9F5CCC4(v50, v67, sub_1B9F52ED4);
  sub_1BA2662B8(0, &qword_1EBBEF450, sub_1B9F52ED4, sub_1BA26619C);
  sub_1B9F5CCC4(v51, v52 + *(v53 + 48), sub_1BA26619C);
  sub_1BA267CCC(v9, sub_1BA26619C);
  sub_1BA267CCC(v35, sub_1B9F52ED4);
  sub_1BA267CCC(v51, sub_1BA26619C);
  return sub_1BA267CCC(v50, sub_1B9F52ED4);
}

void sub_1BA266114(uint64_t a1)
{
  if (!qword_1EBBEF448)
  {
    sub_1BA2662B8(255, &qword_1EBBEF450, sub_1B9F52ED4, sub_1BA26619C);
    v1 = sub_1BA4A6428();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF448);
    }
  }
}

void sub_1BA26619C(uint64_t a1)
{
  if (!qword_1EBBEF458)
  {
    sub_1BA266230(255);
    sub_1B9F893A8(&qword_1EBBEF480, sub_1BA266230, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF458);
    }
  }
}

void sub_1BA266230(uint64_t a1)
{
  if (!qword_1EBBEF460)
  {
    sub_1BA2662B8(255, &qword_1EBBEF468, sub_1BA266334, sub_1B9F530BC);
    v1 = sub_1BA4A6428();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF460);
    }
  }
}

void sub_1BA2662B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1BA266334(uint64_t a1)
{
  if (!qword_1EBBEF470)
  {
    sub_1BA267F88(255, &qword_1EBBEF478, &type metadata for AudioExposureCurrentValueView.PaletteSymbolView, MEMORY[0x1E69E6720]);
    sub_1BA4A5B18();
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF470);
    }
  }
}

void sub_1BA2663C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1BA266434(uint64_t a1)
{
  if (!qword_1EBBEF490)
  {
    sub_1BA266114(255);
    sub_1B9F893A8(&qword_1EBBEF498, sub_1BA266114, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF490);
    }
  }
}

uint64_t sub_1BA2664C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = sub_1BA4A12C8();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v4);
  v100 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  MEMORY[0x1EEE9AC00](v88, v6);
  v8 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F532BC(0);
  v89 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v91 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5323C(0);
  v94 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F530BC(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v81 - v22;
  v24 = sub_1BA4A5718();
  v92 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v90 = v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA266334(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v103 = v81 - v33;
  v34 = objc_opt_self();
  v87 = a1;
  v35 = *(a1 + 8);
  swift_beginAccess();
  v36 = [v34 hk:*(v35 + 16) hearingHealthAudioExposureColorForClassification:?];
  v99 = a2;
  v98 = v19;
  v97 = v23;
  v96 = v30;
  v95 = v15;
  v93 = v8;
  if (v36)
  {
    v37 = 0xD000000000000015;
    v38 = *(v35 + 16);
    if (v38 == 2)
    {
      v39 = "ure header in section ";
      v37 = 0xD00000000000001DLL;
      goto LABEL_6;
    }

    if (v38 == 1)
    {
      v39 = "name configuration ";
LABEL_6:
      v40 = v39 | 0x8000000000000000;
      sub_1B9F6B774(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DB958], 0, 0, 1, 0, 1);
      v41 = sub_1BA4A5D78();
      v42 = [v34 hk_hearingHealthAudioExposureBackground];
      v43 = sub_1BA4A6048();
      v44 = sub_1BA4A6048();
      goto LABEL_9;
    }
  }

  v37 = 0;
  v40 = 0;
  v41 = 0;
  v43 = 0;
  v44 = 0;
LABEL_9:
  v108 = v37;
  v109 = v40;
  v84 = v40;
  v110 = v41;
  v111 = v43;
  v112 = v44;
  v45 = v87;
  v113 = *(v87 + 24);
  v114 = *(v87 + 40);
  v46 = v113;
  v85 = v114;
  v82 = v24;
  v81[1] = *(&v113 + 1);
  v86 = v113;
  if (v114 == 1)
  {
  }

  else
  {

    sub_1BA4A6FB8();
    v47 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v48 = v90;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v113);
    (*(v92 + 8))(v48, v24);
    v46 = v106;
    v49 = v107;
  }

  v106 = v46;
  v107 = v49;
  MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
  sub_1BA267F88(0, &qword_1EBBEF478, &type metadata for AudioExposureCurrentValueView.PaletteSymbolView, MEMORY[0x1E69E6720]);
  sub_1BA268060();
  sub_1BA4A5F18();

  sub_1BA268150(v37, v84, v41, v43, v44);
  v50 = OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_primaryString;
  swift_beginAccess();
  (*(v101 + 16))(v100, v35 + v50, v102);
  v51 = v35 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v52 = *(v51 + 8);
  v84 = *v51;
  v83 = *(v51 + 16);
  v53 = *(v51 + 24);
  v54 = *(v45 + 16);
  if (v54)
  {
    v55 = (v54 + OBJC_IVAR____TtCV18HealthExperienceUI29AudioExposureCurrentValueView9ViewModel_animationConfiguration);
    swift_beginAccess();
    v57 = *v55;
    v56 = v55[1];
    v58 = v55[2];
    v59 = *(v55 + 24);
  }

  else
  {
    v57 = 0;
    v56 = 0;
    v58 = 0;
    v59 = 0;
  }

  v60 = v88;
  v61 = v93;
  v62 = &v93[*(v88 + 20)];
  *v62 = 0;
  *(v62 + 1) = 0;
  v62[24] = 0;
  *(v62 + 2) = 0;
  v63 = v61 + *(v60 + 24);
  *v63 = 0;
  *(v63 + 8) = 0;
  *(v63 + 24) = 0;
  *(v63 + 16) = 0;
  (*(v101 + 32))(v61, v100, v102);

  *v62 = v84;
  *(v62 + 1) = v52;
  *(v62 + 2) = v83;
  v62[24] = v53;

  *v63 = v57;
  *(v63 + 8) = v56;
  *(v63 + 16) = v58;
  *(v63 + 24) = v59;
  KeyPath = swift_getKeyPath();
  v65 = v91;
  sub_1B9F5CCC4(v61, v91, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v66 = v65 + *(v89 + 36);
  *v66 = KeyPath;
  *(v66 + 8) = 0;
  sub_1BA267CCC(v61, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v67 = swift_getKeyPath();
  v68 = v95;
  sub_1BA2681B4(v65, v95);
  v69 = v68 + *(v94 + 36);
  *v69 = v67;
  *(v69 + 8) = 0;
  *(v69 + 16) = 1;
  if (v85)
  {

    v71 = v98;
    v72 = v97;
    v73 = v96;
    v74 = v86;
  }

  else
  {

    sub_1BA4A6FB8();
    v75 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v76 = v90;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA0D5CF0(&v113);
    (*(v92 + 8))(v76, v82);
    v74 = v104;
    v70 = v105;
    v71 = v98;
    v72 = v97;
    v73 = v96;
  }

  v104 = v74;
  v105 = v70;
  MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
  sub_1B9F5D988();
  sub_1BA4A5F18();

  sub_1BA267CCC(v68, sub_1B9F5323C);
  v77 = v103;
  sub_1B9F5CCC4(v103, v73, sub_1BA266334);
  sub_1B9F5CCC4(v72, v71, sub_1B9F530BC);
  v78 = v99;
  sub_1B9F5CCC4(v73, v99, sub_1BA266334);
  sub_1BA2662B8(0, &qword_1EBBEF468, sub_1BA266334, sub_1B9F530BC);
  sub_1B9F5CCC4(v71, v78 + *(v79 + 48), sub_1B9F530BC);
  sub_1BA267CCC(v72, sub_1B9F530BC);
  sub_1BA267CCC(v77, sub_1BA266334);
  sub_1BA267CCC(v71, sub_1B9F530BC);
  return sub_1BA267CCC(v73, sub_1BA266334);
}

double sub_1BA266F34@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1B9F89168(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));

  v9 = sub_1BA4A6128();
  sub_1B9F89310(0, &qword_1EDC5F140, sub_1B9F89374, MEMORY[0x1E6981748]);
  v11 = (v8 + *(v10 + 36));
  sub_1B9F89374(0);
  v13 = *(v12 + 28);
  v14 = *MEMORY[0x1E69816C8];
  v15 = sub_1BA4A6188();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  *v11 = swift_getKeyPath();
  *v8 = v9;
  v16 = v2[2];
  KeyPath = swift_getKeyPath();
  v18 = (v8 + *(v5 + 36));
  *v18 = KeyPath;
  v18[1] = v16;

  sub_1BA4A5CA8();
  sub_1B9F8920C();
  sub_1BA4A5E98();
  sub_1BA267CCC(v8, sub_1B9F89168);
  sub_1BA267D2C(0);
  v20 = (a1 + *(v19 + 36));
  sub_1BA267DE4(0);
  v22 = *(v21 + 28);
  sub_1BA4A58A8();
  v23 = sub_1BA4A58B8();
  (*(*(v23 - 8) + 56))(v20 + v22, 0, 1, v23);
  *v20 = swift_getKeyPath();
  v24 = v2[3];
  v25 = v2[4];
  sub_1BA2663C0(0, &qword_1EBBEF4C8, sub_1BA267D2C, sub_1BA267EB0);
  v27 = (a1 + *(v26 + 36));
  *v27 = v24;
  v27[1] = v25;

  return result;
}

void sub_1BA2671B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  type metadata accessor for AudioExposureCurrentValueView.ViewModel(0);
  sub_1B9F893A8(&qword_1EBBEF438, type metadata accessor for AudioExposureCurrentValueView.ViewModel, &protocol conformance descriptor for AudioExposureCurrentValueView.ViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v4;

  *(a2 + 16) = v3;
}

unint64_t sub_1BA26726C(uint64_t a1)
{
  result = sub_1BA267294();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA267294()
{
  result = qword_1EDC64020;
  if (!qword_1EDC64020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64020);
  }

  return result;
}

void sub_1BA267304(uint64_t a7@<X8>)
{
  v9 = v7[1];
  v15 = *v7;
  v16[0] = v9;
  *(v16 + 9) = *(v7 + 25);
  *a7 = sub_1BA4A5878();
  *(a7 + 8) = 0;
  *(a7 + 16) = 1;
  sub_1BA267F1C(0, &qword_1EBBEF440, sub_1BA266114, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1BA2659F4(&v15, a7 + *(v10 + 44));
  v11 = sub_1BA4A60A8();
  v12 = sub_1BA4A5B78();
  sub_1BA2663C0(0, &qword_1EBBEF488, sub_1BA266434, sub_1B9F53864);
  v14 = a7 + *(v13 + 36);
  *v14 = v11;
  *(v14 + 8) = v12;
}

void sub_1BA267518(uint64_t a1)
{
  sub_1BA4A12C8();
  if (v1 <= 0x3F)
  {
    sub_1B9F51474(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1BA267838()
{
  result = qword_1EBBEF4A0;
  if (!qword_1EBBEF4A0)
  {
    sub_1BA2663C0(255, &qword_1EBBEF488, sub_1BA266434, sub_1B9F53864);
    sub_1B9F893A8(&qword_1EBBEF4A8, sub_1BA266434, MEMORY[0x1E6981870]);
    sub_1B9F893A8(&qword_1EDC5ECD8, sub_1B9F53864, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4A0);
  }

  return result;
}

unint64_t sub_1BA26796C()
{
  result = qword_1EBBEF4B0;
  if (!qword_1EBBEF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF4B0);
  }

  return result;
}

unint64_t sub_1BA2679E0()
{
  result = qword_1EDC64160;
  if (!qword_1EDC64160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64160);
  }

  return result;
}

unint64_t sub_1BA267A38()
{
  result = qword_1EDC64168;
  if (!qword_1EDC64168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC64168);
  }

  return result;
}

uint64_t sub_1BA267AB0(uint64_t a1)
{
  sub_1BA267E18(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1B9F5CCC4(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1BA267E18);
  return sub_1BA4A5658();
}

uint64_t sub_1BA267B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x537972616D697270 && a2 == 0xED0000676E697274 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BA4EAEC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA4EAEF0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

uint64_t sub_1BA267CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA267D60(uint64_t a1)
{
  if (!qword_1EBBEF4C0)
  {
    sub_1B9F89168(255);
    sub_1B9F8920C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEF4C0);
    }
  }
}

void sub_1BA267E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA267EB0()
{
  if (!qword_1EBBEF4D0)
  {
    v0 = sub_1BA4A5A28();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF4D0);
    }
  }
}

void sub_1BA267F1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1BA4A52C8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}