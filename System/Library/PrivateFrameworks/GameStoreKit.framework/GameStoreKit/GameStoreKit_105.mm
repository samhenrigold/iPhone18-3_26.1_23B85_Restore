uint64_t sub_24F0C3928(char *a1, char *a2)
{
  if (*&aBlack_1[8 * *a1] == *&aBlack_1[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_24F0C3990()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C39EC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0C3A2C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F0C3A84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F0C407C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24F0C3ADC()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F202FBC(v3, v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F0C3B2C()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F202FBC(v3, v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F0C3B70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F0C40C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24F0C3BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F0C3654(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24F0C3BCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24F0C37AC(*a1);
  v5 = v4;
  if (v3 == sub_24F0C37AC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F0C3C54()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F0C37AC(v1);
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C3CB8(uint64_t a1)
{
  sub_24F0C37AC(*v1);
  sub_24F92B218();
}

uint64_t sub_24F0C3D0C()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F0C37AC(v1);
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F0C3D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F0C4114(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24F0C3D9C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24F0C37AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24F0C3DC8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        if (qword_27F210438 != -1)
        {
          swift_once();
        }

        v1 = &qword_27F22BEB8;
      }

      else
      {
        if (qword_27F210440 != -1)
        {
          swift_once();
        }

        v1 = &qword_27F22BEC0;
      }
    }

    else if (a1 == 7)
    {
      if (qword_27F210448 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F22BEC8;
    }

    else if (a1 == 8)
    {
      if (qword_27F210450 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F22BED0;
    }

    else
    {
      if (qword_27F210458 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F22BED8;
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_27F210410 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F22BE90;
    }

    else
    {
      if (qword_27F210408 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F22BE88;
    }
  }

  else if (a1 == 2)
  {
    if (qword_27F210418 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F22BE98;
  }

  else if (a1 == 3)
  {
    if (qword_27F210420 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F22BEA0;
  }

  else
  {
    if (qword_27F210428 != -1)
    {
      swift_once();
    }

    v1 = &qword_27F22BEA8;
  }

  return *v1;
}

unint64_t sub_24F0C407C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F0C40C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F0C4114(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F0C4160(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F0C41AC()
{
  result = qword_27F238FF8;
  if (!qword_27F238FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238FF8);
  }

  return result;
}

unint64_t sub_24F0C4200()
{
  result = qword_27F239000;
  if (!qword_27F239000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239000);
  }

  return result;
}

unint64_t sub_24F0C4254()
{
  result = qword_27F239008;
  if (!qword_27F239008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239008);
  }

  return result;
}

unint64_t sub_24F0C42DC()
{
  result = qword_27F239010;
  if (!qword_27F239010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239010);
  }

  return result;
}

unint64_t sub_24F0C4334()
{
  result = qword_27F239018;
  if (!qword_27F239018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239018);
  }

  return result;
}

unint64_t sub_24F0C438C()
{
  result = qword_27F239020;
  if (!qword_27F239020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239020);
  }

  return result;
}

uint64_t ArcadeOfferLabelPresenter.offerLabelText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

double sub_24F0C442C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[7] = a1;
  v2[8] = a2;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = v2[10];
    ObjectType = swift_getObjectType();
    v8 = v2[7];
    v9 = v2[8];
    v10 = *(v6 + 8);

    v10(v8, v9, ObjectType, v6);

    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ArcadeOfferLabelPresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1[10];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = v1[7];
    v5 = v1[8];
    v6 = *(v2 + 8);

    v6(v4, v5, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

double ArcadeOfferLabelPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[10] = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = v2[10];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v6 = v2[7];
    v7 = v2[8];
    v8 = *(v4 + 8);

    v8(v6, v7, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

void (*ArcadeOfferLabelPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v6 = *(v1 + 80);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F0C4784;
}

void sub_24F0C4784(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 80) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = v4[10];
      ObjectType = swift_getObjectType();
      swift_beginAccess();
      v7 = v4[7];
      v8 = v4[8];
      v9 = *(v5 + 8);

      v9(v7, v8, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t ArcadeOfferLabelPresenter.__allocating_init(subscribedText:nonsubscribedText:subscriptionManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = swift_allocObject();
  ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)(a1, a2, a3, a4, a5);
  return v10;
}

void *ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v5[7] = 0;
  v5[10] = 0;
  v5[8] = 0;
  swift_unknownObjectWeakInit();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *&a5[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];
  v13 = a5;

  [v12 lock];
  sub_24F213714(v5, sub_24F0C4BE8, v11, v13);
  [v12 unlock];

  v14 = &v13[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[8];
  sub_24EB6CE50(v15, v16);

  sub_24EB6CE70(v15, v16);
  v17 = 4;
  if ((v16 & 0xC0) == 0x80)
  {
    v17 = 2;
  }

  v18 = 5;
  if ((v16 & 0xC0) == 0x80)
  {
    v18 = 3;
  }

  v19 = v5[v18];
  v20 = v5[v17];
  swift_beginAccess();
  v5[7] = v20;
  v5[8] = v19;

  return v5;
}

uint64_t sub_24F0C4ADC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_24F0C4B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = 32;
      if ((v2 & 0xC0) == 0x80)
      {
        v5 = 16;
      }

      v6 = 40;
      if ((v2 & 0xC0) == 0x80)
      {
        v6 = 24;
      }

      v7 = *(Strong + v5);
      v8 = *(Strong + v6);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    sub_24F0C442C(v7, v8);
  }

  return result;
}

uint64_t ArcadeOfferLabelPresenter.deinit()
{
  v1 = *(v0 + 48);
  v2 = *&v1[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];
  v3 = v1;
  [v2 lock];
  swift_beginAccess();
  sub_24E98A534(0, v0);
  swift_endAccess();
  [v2 unlock];

  sub_24E883630(v0 + 72);
  return v0;
}

uint64_t ArcadeOfferLabelPresenter.__deallocating_deinit()
{
  ArcadeOfferLabelPresenter.deinit();

  return swift_deallocClassInstance();
}

double sub_24F0C4CF0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;

  return result;
}

double sub_24F0C4D3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F0C442C(v1, v2);
}

uint64_t sub_24F0C4D7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 80);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_24F0C4DCC(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return ArcadeOfferLabelPresenter.view.setter(v2, v1);
}

UIFont __swiftcall FontSource.font(withDesign:compatibleWith:)(UIFontDescriptorSystemDesign withDesign, UITraitCollection compatibleWith)
{
  v3 = v2;
  v6 = sub_24F922378();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F922118();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, v3, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x277D22620])
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    v17 = objc_opt_self();
    v18 = [v17 preferredFontForTextStyle:v16 compatibleWithTraitCollection:compatibleWith.super.isa];
    v19 = [v18 fontDescriptor];
    v20 = [v19 fontDescriptorWithDesign_];

    if (v20)
    {
      v21 = [v17 fontWithDescriptor:v20 size:0.0];

      return v21;
    }
  }

  else
  {
    if (v15 != *MEMORY[0x277D22618])
    {
      v26 = [objc_opt_self() preferredFontForTextStyle_];
      (*(v11 + 8))(v14, v10);
      return v26;
    }

    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v23 = sub_24F922368();
    v24 = [v23 fontDescriptorWithDesign_];

    if (v24)
    {
      v25 = [objc_opt_self() fontWithDescriptor:v24 size:0.0];

      (*(v7 + 8))(v9, v6);
      return v25;
    }

    sub_24E6C065C();
    v18 = MEMORY[0x253051BF0](v9, compatibleWith.super.isa);
    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

Swift::Void __swiftcall AppStateController.clearWaiting(for:)(GameStoreKit::AdamId a1)
{
  v2 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v3[0] = *a1.underlyingAdamID._countAndFlagsBits;
  v3[1] = v2;
  (*(v1 + 72))(v3, 1, a1.underlyingAdamID._object);
}

Swift::Bool __swiftcall AppStateController.isLocalApplication(for:)(GameStoreKit::AdamId a1)
{
  v2 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v4[0] = *a1.underlyingAdamID._countAndFlagsBits;
  v4[1] = v2;
  return (*(v1 + 88))(v4, 0, a1.underlyingAdamID._object) & 1;
}

uint64_t dispatch thunk of AppStateController.refreshUpdateRegistry(for:externalVersionId:buyParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24E614970;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AppStateController.fetchBetaAppBundleVersion(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24EF44694;

  return v9(a1, a2, a3);
}

double sub_24F0C56A8@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B830, &qword_24F98C900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v5 = inited;
  *(inited + 32) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B838, &qword_24F98C908);
  v6 = type metadata accessor for CardLeaderboardView.LayoutMetrics.ChartStyle.BarMark(0);
  v7 = *(*(v6 - 1) + 72);
  v8 = *(*(v6 - 1) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24F93A400;
  v50 = (v8 + 32) & ~v8;
  v44 = v9;
  v10 = v9 + v50;
  if (qword_27F210DA8 != -1)
  {
    swift_once();
  }

  v11 = qword_27F39D340;

  v47 = a2;
  v12 = sub_24EFED180(a2 & 1);
  if (qword_27F210DB0 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9234D8();
  v14 = __swift_project_value_buffer(v13, qword_27F39D348);
  *v10 = 0x4050000000000000;
  *(v10 + 8) = v11;
  *(v10 + 16) = xmmword_24F9B4960;
  *(v10 + 32) = v12;
  v43 = v14;
  v15 = *(*(v13 - 8) + 16);
  v15(v10 + v6[9]);
  *(v10 + v6[10]) = 0x404A000000000000;
  v16 = (v10 + v6[11]);
  __asm { FMOV            V1.2D, #6.0 }

  v42 = _Q1;
  *v16 = xmmword_24F9B4930;
  v16[1] = _Q1;
  v22 = qword_27F210DB8;
  v46 = v11;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_27F39D360;
  v24 = qword_27F210DC0;
  swift_retain_n();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27F39D368;
  v26 = qword_27F210DC8;
  swift_retain_n();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v10 + v7;
  v41 = __swift_project_value_buffer(v13, qword_27F39D370);
  *v27 = 0x404C000000000000;
  *(v27 + 8) = v23;
  *(v27 + 16) = xmmword_24F9C7670;
  *(v27 + 32) = v25;
  v28 = v23;
  v29 = v15;
  (v15)(v27 + v6[9], v41, v13);
  *(v27 + v6[10]) = 0x4046000000000000;
  v30 = (v27 + v6[11]);
  *v30 = xmmword_24F9B4930;
  v30[1] = v42;
  *(v5 + 40) = v44;
  *(v5 + 48) = xmmword_24F9C7680;
  *(v5 + 64) = 0x4024000000000000;
  *(v5 + 72) = 3;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_24F9479A0;
  v31 = v45 + v50;

  v32 = sub_24EFED180(v47 & 1);
  *v31 = 0x4048000000000000;
  *(v31 + 8) = v46;
  *(v31 + 16) = xmmword_24F9B4940;
  *(v31 + 32) = v32;
  (v15)(v45 + v50 + v6[9], v43, v13);
  *(v31 + v6[10]) = 0x4044000000000000;
  v33 = (v45 + v50 + v6[11]);
  __asm { FMOV            V1.2D, #4.0 }

  v51 = _Q1;
  *v33 = xmmword_24F98C8C0;
  v33[1] = _Q1;
  v35 = v31 + v7;
  *v35 = 0x4045000000000000;
  *(v35 + 8) = v28;
  *(v35 + 16) = xmmword_24F9C7670;
  *(v35 + 32) = v25;
  v29(v31 + v7 + v6[9], v41, v13);
  *(v35 + v6[10]) = 0x4041000000000000;
  v36 = (v31 + v7 + v6[11]);
  *v36 = xmmword_24F98C8C0;
  v36[1] = v51;
  v37 = v31 + 2 * v7;
  *v37 = 0x4045000000000000;
  *(v37 + 8) = v28;
  *(v37 + 16) = xmmword_24F9C7670;
  *(v37 + 32) = v25;
  v29(v37 + v6[9], v41, v13);
  *(v37 + v6[10]) = 0x4041000000000000;
  v38 = (v37 + v6[11]);
  *v38 = xmmword_24F98C8C0;
  v38[1] = v51;
  *(v5 + 80) = v45;
  *(v5 + 88) = xmmword_24F9C7690;
  *(v5 + 104) = 0x4024000000000000;
  v39 = sub_24E60E620(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B840, &unk_24F98C910);
  swift_arrayDestroy();
  *a3 = v39;
  *(a3 + 8) = 3;
  *(a3 + 16) = 1;
  *(a3 + 17) = a1 & 1;
  *(a3 + 18) = v52;
  *(a3 + 22) = v53;
  *(a3 + 24) = xmmword_24F98C8E0;
  result = 0.05;
  *(a3 + 40) = xmmword_24F98C8F0;
  *(a3 + 56) = 1;
  return result;
}

double PersonalizableModel.makeMSOPersonalizedModel(with:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24F0C5C5C(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_14:
    v2 = sub_24F92C738();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x253052270](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v7 = v10;
            goto LABEL_16;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v4 = *(a1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_11;
          }
        }

        v6 = *(v4 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles);

        sub_24EA0B130(v6);
        ++v3;
        if (v5 == v2)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_16:
  v8 = sub_24F45DB90(v7);

  return v8;
}

uint64_t PersonalizableModel.needsClientPersonalization.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v5, a1);
  if (v5)
  {
    v2 = sub_24F92CE08();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t PersonalizableModel.unpersonalized.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(a2 + 24))(&v10);
  if (v11)
  {
    return sub_24E612C80(&v10, a3);
  }

  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v9 = *(*(a1 - 8) + 16);

  return v9(boxed_opaque_existential_1, v3, a1);
}

uint64_t PersonalizableModel.personalized(with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  (*(a3 + 16))(&v23, a2, a3);
  if (v23 == 1)
  {
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v12 = *(a3 + 32);
    sub_24EBDFD34(v8, v9);
    v12(&v21, &v17, a2, a3);
    sub_24EBDFDB8(v17, v18, v19, v20);
    if (v22)
    {
      return sub_24E612C80(&v21, a4);
    }
  }

  v14 = *(a3 + 8);
  a4[3] = a2;
  a4[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v16 = *(*(a2 - 8) + 16);

  return v16(boxed_opaque_existential_1, v4, a2);
}

GameStoreKit::PersonalizationStyle_optional __swiftcall PersonalizationStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t PersonalizationStyle.rawValue.getter()
{
  if (*v0)
  {
    return 7304045;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_24F0C60BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7304045;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7304045;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
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
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F0C6154()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C61C8(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0C6228()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0C6298@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24F0C62F8(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 7304045;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24F0C632C()
{
  result = qword_27F239028;
  if (!qword_27F239028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239028);
  }

  return result;
}

uint64_t sub_24F0C63E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B28, &qword_24F93B730);
  v1 = sub_24F92A878();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93FC20;
  v6 = (v5 + v4);
  v17 = v0[1];
  *v6 = 7041889;
  v6[1] = 0xE300000000000000;
  v6[2] = v17;
  v7 = *(v2 + 104);
  (v7)(v6, *MEMORY[0x277D22448], v1);
  v8 = (v6 + v3);
  v16 = v0[2];
  *v8 = 0xD000000000000013;
  v8[1] = 0x800000024FA6B370;
  v8[2] = v16;
  v7();
  v9 = (v6 + 2 * v3);
  v10 = v0[3];
  *v9 = 0x6B6F54616964656DLL;
  v9[1] = 0xEA00000000006E65;
  v9[2] = v10;
  v7();
  sub_24E615E00((v0 + 4), v6 + 3 * v3);
  (v7)(v6 + 3 * v3, *MEMORY[0x277D22460], v1);
  v11 = v17;
  v12 = v16;
  v13 = v10;

  sub_24EA0B7B0(v14);
  return v5;
}

uint64_t sub_24F0C65E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24F0C662C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double Annotation.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 112, v5, qword_27F22B2E0, &qword_24F98B0E0);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t Annotation.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Annotation.summary.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Annotation.leadingText.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Annotation.init(id:title:summary:items:items_V3:shouldAlwaysPresentExpanded:linkAction:expandAction:leadingArtwork:leadingText:prefersSmallLeadingArtwork:expandedArtwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16)
{
  v21 = a16;
  v22 = a15;
  v48 = a5;
  v49 = a14;
  v46 = a4;
  v47 = a13;
  v44 = a3;
  v45 = a12;
  v42 = a2;
  v43 = a11;
  v41 = a10;
  v23 = sub_24F91F6B8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v52, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v53 + 1))
  {
    v27 = v53;
    *(a9 + 112) = v52;
    *(a9 + 128) = v27;
    *(a9 + 144) = v54;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v40 = a15;
    v29 = a8;
    v30 = v28;
    v39 = a6;
    v32 = v31;
    (*(v24 + 8))(v26, v23);
    v50 = v30;
    v51 = v32;
    a8 = v29;
    v22 = v40;
    v21 = a16;
    a6 = v39;
    sub_24F92C7F8();
    sub_24E601704(&v52, &qword_27F235830, &qword_24F93B8C0);
  }

  result = sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v34 = v44;
  *a9 = v42;
  *(a9 + 8) = v34;
  v35 = v48;
  *(a9 + 16) = v46;
  *(a9 + 24) = v35;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  v36 = v43;
  *(a9 + 56) = v41;
  *(a9 + 64) = v36;
  v37 = v47;
  *(a9 + 72) = v45;
  *(a9 + 80) = v37;
  *(a9 + 88) = v49;
  *(a9 + 96) = v22 & 1;
  *(a9 + 104) = v21;
  return result;
}

uint64_t Annotation.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v75 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v71 - v5;
  v99 = sub_24F9285B8();
  v82 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v74 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v71 - v14;
  MEMORY[0x28223BE20](v15);
  v71 = &v71 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v71 - v24;
  v81 = a1;
  sub_24F928398();
  v26 = sub_24F928348();
  if (v27)
  {
    v84 = v26;
    v85 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v30 = v29;
    (*(v78 + 8))(v9, v7);
    v84 = v28;
    v85 = v30;
  }

  sub_24F92C7F8();
  v31 = *(v11 + 8);
  v32 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v25, v10);
  v33 = v31;
  v97[0] = v86;
  v97[1] = v87;
  v98 = v88;
  v34 = v81;
  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v33(v22, v10);
  v38 = v83;
  if (v37)
  {
    v89[0] = v35;
    v89[1] = v37;
    sub_24F928398();
    v39 = sub_24F928348();
    v41 = v40;
    v33(v19, v10);
    v89[2] = v39;
    v89[3] = v41;
    sub_24F928398();
    v42 = *(v82 + 16);
    v43 = v38;
    v78 = v82 + 16;
    v77 = v42;
    v42(v79, v38, v99);
    type metadata accessor for AnnotationItem();
    sub_24F0C830C(&qword_27F239030, type metadata accessor for AnnotationItem, &protocol conformance descriptor for AnnotationItem);
    v89[4] = sub_24F92B698();
    v44 = v71;
    sub_24F928398();
    v45 = v73;
    sub_24F9282B8();
    v46 = v45;
    v33(v44, v10);
    v47 = sub_24F92AC28();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 48))(v46, 1, v47);
    if (v49 == 1)
    {
      sub_24E601704(v46, &qword_27F2213B0, &qword_24F965EC0);
      v50 = MEMORY[0x277D84F90];
    }

    else
    {
      MEMORY[0x28223BE20](v49);
      v71 = v10;
      v54 = v46;
      *(&v71 - 2) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239038, &qword_24F9C77E8);
      v55 = v80;
      v50 = sub_24F92ABB8();
      v80 = v55;
      v34 = v81;
      v56 = v54;
      v10 = v71;
      (*(v48 + 8))(v56, v47);
    }

    v89[5] = v50;
    v57 = v72;
    sub_24F928398();
    v58 = sub_24F928278();
    v33(v57, v10);
    v90 = v58 & 1;
    type metadata accessor for Action(0);
    sub_24F928398();
    v59 = static Action.tryToMakeInstance(byDeserializing:using:)(v19, v43);
    v33(v19, v10);
    v91 = v59;
    sub_24F928398();
    v60 = static Action.tryToMakeInstance(byDeserializing:using:)(v19, v43);
    v33(v19, v10);
    v92 = v60;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v76 = v32;
    v73 = v33;
    v61 = v79;
    v62 = v10;
    v77(v79, v43, v99);
    v81 = sub_24F0C830C(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    sub_24F928398();
    v63 = sub_24F928348();
    v64 = v34;
    v66 = v65;
    v67 = v73;
    (v73)(v19, v10);
    v93 = v63;
    v94 = v66;
    v68 = v74;
    sub_24F928398();
    LOBYTE(v63) = sub_24F928278();
    v67(v68, v10);
    v95 = v63 & 1;
    sub_24F928398();
    v69 = v83;
    v70 = v99;
    v77(v61, v83, v99);
    sub_24F929548();
    v67(v64, v62);
    v96 = v86;
    sub_24EA4AD18(v89, v75);
    (*(v82 + 8))(v69, v70);
    return sub_24EA4AD74(v89);
  }

  else
  {
    v51 = sub_24F92AC38();
    sub_24F0C830C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v52 = 0x656C746974;
    v52[1] = 0xE500000000000000;
    v52[2] = &type metadata for Annotation;
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D22530], v51);
    swift_willThrow();
    v33(v34, v10);
    (*(v82 + 8))(v38, v99);
    return sub_24E601704(v97, qword_27F22B2E0, &qword_24F98B0E0);
  }
}

uint64_t sub_24F0C74E8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  boxed_opaque_existential_1 = a2;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  v120 = v5;
  v121 = v6;
  MEMORY[0x28223BE20](v5);
  v103 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v104 = &v102 - v9;
  MEMORY[0x28223BE20](v10);
  v107 = &v102 - v11;
  MEMORY[0x28223BE20](v12);
  v111 = &v102 - v13;
  MEMORY[0x28223BE20](v14);
  v112 = &v102 - v15;
  MEMORY[0x28223BE20](v16);
  v114 = &v102 - v17;
  MEMORY[0x28223BE20](v18);
  v115 = &v102 - v19;
  v20 = sub_24F928388();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v102 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v105 = &v102 - v24;
  MEMORY[0x28223BE20](v25);
  v106 = &v102 - v26;
  MEMORY[0x28223BE20](v27);
  v109 = &v102 - v28;
  MEMORY[0x28223BE20](v29);
  v108 = &v102 - v30;
  MEMORY[0x28223BE20](v31);
  v110 = &v102 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v102 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v102 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = (&v102 - v40);
  MEMORY[0x28223BE20](v42);
  v44 = &v102 - v43;
  v119 = a1;
  sub_24F928398();
  v45 = sub_24F928348();
  v47 = v46;
  v118 = v21;
  v49 = v21[1];
  v48 = (v21 + 1);
  v50 = v44;
  v51 = v20;
  v116 = v49;
  result = (v49)(v50, v20);
  if (!v47)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v113 = a3;
  if (v45 == 0x656C62616B6E696CLL && v47 == 0xEC00000074786554 || (sub_24F92CE08() & 1) != 0)
  {
    v112 = v48;

    (v118[2])(v41, v119, v20);
    v53 = v120;
    v54 = v121;
    v119 = v51;
    v55 = *(v121 + 16);
    v56 = v115;
    v55(v115, boxed_opaque_existential_1, v120);
    v57 = type metadata accessor for LinkableTextAnnotationItem(0);
    v58 = v113;
    v111 = v57;
    *(v113 + 24) = v57;
    *(v58 + 32) = sub_24F0C830C(&qword_27F239070, type metadata accessor for LinkableTextAnnotationItem, &protocol conformance descriptor for LinkableTextAnnotationItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
    sub_24F91F6A8();
    v118 = v41;
    sub_24F928398();
    v59 = v114;
    v55(v114, v56, v53);
    type metadata accessor for LinkableText();
    swift_allocObject();
    v60 = v122;
    v61 = LinkableText.init(deserializing:using:)(v38, v59);
    if (v60)
    {
      (*(v54 + 8))(v56, v53);
      v116(v118, v119);
      v62 = sub_24F91F6B8();
      (*(*(v62 - 8) + 8))(boxed_opaque_existential_1, v62);
      v63 = v60;
LABEL_7:

      result = __swift_deallocate_boxed_opaque_existential_2(v58);
      *(v58 + 32) = 0;
      *v58 = 0u;
      *(v58 + 16) = 0u;
      return result;
    }

    v64 = v61;
    (*(v54 + 8))(v56, v53);
    result = (v116)(v118, v119);
    *(boxed_opaque_existential_1 + *(v111 + 5)) = v64;
    return result;
  }

  v65 = v121;
  if (v45 == 0x6E6F74747562 && v47 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    (v118[2])(v35, v119, v20);
    v66 = v112;
    (*(v65 + 16))(v112, boxed_opaque_existential_1, v120);
    v67 = type metadata accessor for ButtonAnnotationItem(0);
    v68 = v113;
    *(v113 + 24) = v67;
    *(v68 + 32) = sub_24F0C830C(&qword_27F239068, type metadata accessor for ButtonAnnotationItem, &protocol conformance descriptor for ButtonAnnotationItem);
    v69 = __swift_allocate_boxed_opaque_existential_1(v68);
    v70 = v122;
    result = ButtonAnnotationItem.init(deserializing:using:)(v35, v66, v69);
    if (v70)
    {

      result = __swift_deallocate_boxed_opaque_existential_2(v68);
      *(v68 + 32) = 0;
      *v68 = 0u;
      *(v68 + 16) = 0u;
    }

    return result;
  }

  v71 = v120;
  if (v45 == 0x7269615074786574 && v47 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v72 = v110;
    (v118[2])(v110, v119, v20);
    v73 = v111;
    (*(v65 + 16))(v111, boxed_opaque_existential_1, v71);
    v74 = type metadata accessor for TextPairAnnotationItem(0);
    v75 = v113;
    *(v113 + 24) = v74;
    *(v75 + 32) = sub_24F0C830C(&qword_27F239060, type metadata accessor for TextPairAnnotationItem, &protocol conformance descriptor for TextPairAnnotationItem);
    v76 = __swift_allocate_boxed_opaque_existential_1(v75);
    v77 = v122;
    result = TextPairAnnotationItem.init(deserializing:using:)(v72, v73, v76);
    if (!v77)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v45 == 0x726563617073 && v47 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v78 = v108;
    (v118[2])(v108, v119, v20);
    v79 = type metadata accessor for SpacerAnnotationItem(0);
    v80 = v113;
    *(v113 + 24) = v79;
    v80[4] = sub_24F0C830C(&qword_27F239058, type metadata accessor for SpacerAnnotationItem, &protocol conformance descriptor for SpacerAnnotationItem);
    v81 = __swift_allocate_boxed_opaque_existential_1(v80);
    sub_24F91F6A8();
    v82 = v109;
    sub_24F928398();
    sub_24EFF916C();
    sub_24F928208();
    v83 = v116;
    v116(v82, v20);
    result = v83(v78, v20);
    *(v81 + *(v79 + 20)) = v123;
    return result;
  }

  if (v45 == 0xD000000000000011 && 0x800000024FA6B3D0 == v47 || (sub_24F92CE08() & 1) != 0)
  {

    v84 = v106;
    (v118[2])(v106, v119, v20);
    v85 = v107;
    (*(v65 + 16))(v107, boxed_opaque_existential_1, v71);
    v86 = type metadata accessor for TextEncapsulationAnnotationItem(0);
    v75 = v113;
    *(v113 + 24) = v86;
    *(v75 + 32) = sub_24F0C830C(&qword_27F239050, type metadata accessor for TextEncapsulationAnnotationItem, &protocol conformance descriptor for TextEncapsulationAnnotationItem);
    v87 = __swift_allocate_boxed_opaque_existential_1(v75);
    v77 = v122;
    result = TextEncapsulationAnnotationItem.init(deserializing:using:)(v84, v85, v87);
    if (!v77)
    {
      return result;
    }

LABEL_19:

    result = __swift_deallocate_boxed_opaque_existential_2(v75);
    *(v75 + 32) = 0;
    *v75 = 0u;
    *(v75 + 16) = 0u;
    return result;
  }

  if (v45 == 0x6B726F77747261 && v47 == 0xE700000000000000)
  {

    v88 = v105;
  }

  else
  {
    v89 = sub_24F92CE08();

    v88 = v105;
    if ((v89 & 1) == 0)
    {
      v101 = v113;
      *(v113 + 32) = 0;
      *v101 = 0u;
      v101[1] = 0u;
      return result;
    }
  }

  v90 = v119;
  v91 = v118[2];
  v119 = v20;
  v91(v88, v90, v20);
  v92 = *(v65 + 16);
  v93 = v104;
  v92(v104, boxed_opaque_existential_1, v71);
  v94 = type metadata accessor for ArtworkAnnotationItem(0);
  v58 = v113;
  boxed_opaque_existential_1 = v94;
  *(v113 + 24) = v94;
  *(v58 + 32) = sub_24F0C830C(&qword_27F239048, type metadata accessor for ArtworkAnnotationItem, &protocol conformance descriptor for ArtworkAnnotationItem);
  v118 = __swift_allocate_boxed_opaque_existential_1(v58);
  sub_24F91F6A8();
  type metadata accessor for Artwork(0);
  v95 = v102;
  sub_24F928398();
  v96 = v103;
  v92(v103, v93, v71);
  v97 = v122;
  v98 = Artwork.__allocating_init(deserializing:using:)(v95, v96);
  if (v97)
  {
    (*(v121 + 8))(v93, v71);
    v116(v105, v119);
    v99 = sub_24F91F6B8();
    (*(*(v99 - 8) + 8))(v118, v99);
    v63 = v97;
    goto LABEL_7;
  }

  v100 = v98;
  (*(v121 + 8))(v93, v71);
  result = (v116)(v105, v119);
  *(v118 + *(boxed_opaque_existential_1 + 5)) = v100;
  return result;
}

double Annotation.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_24F0C81D8()
{
  result = qword_27F239040;
  if (!qword_27F239040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239040);
  }

  return result;
}

double sub_24F0C822C@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 112, v5, qword_27F22B2E0, &qword_24F98B0E0);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_24F0C829C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1 + 112, v5, qword_27F22B2E0, &qword_24F98B0E0);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_24F0C830C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F0C8354(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x65526D6574737973;
  if (a1 <= 3u)
  {
    v4 = 0x6C426D6574737973;
    v5 = 0xEA00000000006575;
    if (a1 != 2)
    {
      v4 = 0x724F6D6574737973;
      v5 = 0xEC00000065676E61;
    }

    v8 = 0x72476D6574737973;
    v9 = 0xEB000000006E6565;
    if (!a1)
    {
      v8 = 0x65526D6574737973;
      v9 = 0xE900000000000064;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x75506D6574737973;
    v5 = 0xEC000000656C7072;
    v6 = 0x72476D6574737973;
    v7 = 0xEA00000000007961;
    if (a1 != 7)
    {
      v6 = 0x72426D6574737973;
      v7 = 0xEB000000006E776FLL;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x65596D6574737973;
    v9 = 0xEC000000776F6C6CLL;
    if (a1 != 4)
    {
      v8 = 0x69506D6574737973;
      v9 = 0xEA00000000006B6ELL;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0xEB000000006E6565;
        if (v11 != 0x72476D6574737973)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if (a2 == 2)
    {
      v13 = 0x6C426D6574737973;
      v14 = 25973;
LABEL_31:
      v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v11 != v13)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v15 = 0x724F6D6574737973;
    v16 = 1701277281;
LABEL_37:
    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v11 != v15)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v2 = 0xEA00000000006B6ELL;
      if (v11 != 0x69506D6574737973)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v15 = 0x65596D6574737973;
    v16 = 2003790956;
    goto LABEL_37;
  }

  if (a2 == 6)
  {
    v15 = 0x75506D6574737973;
    v16 = 1701605490;
    goto LABEL_37;
  }

  if (a2 == 7)
  {
    v13 = 0x72476D6574737973;
    v14 = 31073;
    goto LABEL_31;
  }

  v3 = 0x72426D6574737973;
  v2 = 0xEB000000006E776FLL;
LABEL_40:
  if (v11 != v3)
  {
LABEL_44:
    v17 = sub_24F92CE08();
    goto LABEL_45;
  }

LABEL_41:
  if (v12 != v2)
  {
    goto LABEL_44;
  }

  v17 = 1;
LABEL_45:

  return v17 & 1;
}

uint64_t sub_24F0C8648(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1802658148;
    }

    else
    {
      v5 = 0x746867696CLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6574696877;
    }

    else
    {
      v5 = 0x6974616D6F747561;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000063;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (a2 != 2)
  {
    v8 = 0x746867696CLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6574696877;
    v2 = 0xE500000000000000;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0C8768(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7265746E6563;
    }

    else
    {
      v3 = 1952867692;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7468676972;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x656966697473756ALL;
    }

    else
    {
      v3 = 0x657A696C61636F6CLL;
    }

    v4 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x7265746E6563;
    }

    else
    {
      v8 = 1952867692;
    }

    if (a2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x656966697473756ALL;
    if (a2 != 3)
    {
      v5 = 0x657A696C61636F6CLL;
    }

    if (a2 == 2)
    {
      v6 = 0x7468676972;
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
      v7 = 0xE900000000000064;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v7)
  {
LABEL_34:
    v9 = sub_24F92CE08();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_24F0C88E4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 2u)
  {
    v2 = 0xE800000000000000;
    v3 = 0xE700000000000000;
    v6 = 0x656C6369747261;
    if (a1 != 1)
    {
      v6 = 0x6E6F6974706163;
      v3 = 0xE700000000000000;
    }

    v4 = a1 == 0;
    if (a1)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0x647261646E617473;
    }
  }

  else if (a1 > 4u)
  {
    v2 = 0x800000024FA43CA0;
    v3 = 0x800000024FA43D70;
    v4 = a1 == 5;
    if (a1 == 5)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0xD000000000000011;
    }
  }

  else
  {
    v2 = 0x800000024FA43D50;
    v3 = 0x800000024FA43BB0;
    v4 = a1 == 3;
    if (a1 == 3)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000012;
    }
  }

  if (v4)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v12 = 0xE700000000000000;
      if (a2 == 1)
      {
        if (v5 != 0x656C6369747261)
        {
          goto LABEL_38;
        }
      }

      else if (v5 != 0x6E6F6974706163)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v5 != 0x647261646E617473)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    if (a2 > 4u)
    {
      v8 = 0x800000024FA43CA0;
      v9 = 0x800000024FA43D70;
      v10 = a2 == 5;
      if (a2 == 5)
      {
        v11 = 0xD00000000000001BLL;
      }

      else
      {
        v11 = 0xD000000000000011;
      }
    }

    else
    {
      v8 = 0x800000024FA43D50;
      v9 = 0x800000024FA43BB0;
      v10 = a2 == 3;
      if (a2 == 3)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v11 = 0xD000000000000012;
      }
    }

    if (v10)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v5 != v11)
    {
      goto LABEL_38;
    }
  }

  if (v7 != v12)
  {
LABEL_38:
    v13 = sub_24F92CE08();
    goto LABEL_39;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_24F0C8AE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368801;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656461637261;
    }

    else
    {
      v4 = 0x7041656461637261;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000070;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7275507070416E69;
    }

    else
    {
      v4 = 7368801;
    }

    if (v3)
    {
      v5 = 0xED00006573616863;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x656461637261;
  if (a2 != 2)
  {
    v8 = 0x7041656461637261;
    v7 = 0xE900000000000070;
  }

  if (a2)
  {
    v2 = 0x7275507070416E69;
    v6 = 0xED00006573616863;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0C8C34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x657461647075;
    }

    else
    {
      v4 = 0x6C6C6174736E69;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x65726F74736572;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x68636E75616CLL;
  }

  else
  {
    v4 = 0x7369747265766461;
    v3 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x657461647075;
    }

    else
    {
      v9 = 0x6C6C6174736E69;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x68636E75616CLL;
    if (a2 != 3)
    {
      v6 = 0x7369747265766461;
      v5 = 0xE900000000000065;
    }

    if (a2 == 2)
    {
      v7 = 0x65726F74736572;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_24F92CE08();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24F0C8DB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6564646968;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xE500000000000000;
      v4 = 0x6E776F6873;
    }

    else
    {
      v4 = 0xD000000000000011;
      v5 = 0x800000024FA43CF0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x6E6564646968;
    }

    if (v3)
    {
      v5 = 0x800000024FA43CD0;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0x6E776F6873;
  v7 = 0x800000024FA43CF0;
  if (a2 == 2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  v8 = 0x800000024FA43CD0;
  if (a2)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0C8EE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  v5 = 0xD000000000000019;
  v6 = 0xE700000000000000;
  if (a1 == 5)
  {
    v6 = 0x800000024FA43830;
  }

  else
  {
    v5 = 0x79616C7265766FLL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656C626164616572;
  if (a1 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000024FA43810;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701736302;
  if (a1 != 1)
  {
    v10 = 0x647261646E617473;
    v9 = 0xE800000000000000;
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
        v2 = 0xE400000000000000;
        if (v11 != 1701736302)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x647261646E617473)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000024FA43830;
        if (v11 != 0xD000000000000019)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x79616C7265766FLL)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x656C626164616572)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0xD000000000000012;
    v2 = 0x800000024FA43810;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_24F92CE08();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_24F0C90F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "nowPlayingFeatureEntryPoints";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "gmented_nav_2024A";
      v4 = 0xD000000000000012;
    }

    else
    {
      v5 = "bootstrap_v2_2024C";
      v4 = 0xD000000000000019;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000021;
    }

    else
    {
      v4 = 0xD00000000000001DLL;
    }

    if (v3)
    {
      v5 = "force_display_lockup_ordinals";
    }

    else
    {
      v5 = "nowPlayingFeatureEntryPoints";
    }
  }

  if (a2 > 1u)
  {
    v2 = "gmented_nav_2024A";
    v6 = "bootstrap_v2_2024C";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0xD000000000000019;
    }
  }

  else
  {
    v6 = "force_display_lockup_ordinals";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000021;
    }

    else
    {
      v8 = 0xD00000000000001DLL;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0C9224(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7265764F656D6167;
    }

    else
    {
      v4 = 0x736572746C6F6DLL;
    }

    if (v3)
    {
      v5 = 0xED0000495579616CLL;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x800000024FA43510;
    v4 = 0xD000000000000018;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v3 == 3)
    {
      v5 = 0x800000024FA43530;
    }

    else
    {
      v5 = 0x800000024FA43550;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7265764F656D6167;
    }

    else
    {
      v9 = 0x736572746C6F6DLL;
    }

    if (a2)
    {
      v8 = 0xED0000495579616CLL;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v6 = 0x800000024FA43550;
    if (a2 == 3)
    {
      v6 = 0x800000024FA43530;
    }

    else
    {
      v2 = 0xD00000000000001CLL;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = v2;
    }

    if (a2 == 2)
    {
      v8 = 0x800000024FA43510;
    }

    else
    {
      v8 = v6;
    }

    if (v4 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v5 != v8)
  {
LABEL_37:
    v10 = sub_24F92CE08();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_24F0C93B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746567;
  v3 = 0xD000000000000018;
  v4 = a1;
  if (a1 <= 4u)
  {
    v15 = 0x800000024FA43390;
    v16 = 0xD000000000000029;
    v17 = 0x800000024FA433C0;
    v18 = 0xD000000000000031;
    if (a1 != 3)
    {
      v18 = 0xD00000000000002DLL;
      v17 = 0x800000024FA43400;
    }

    if (a1 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    v19 = 0x800000024FA43370;
    v20 = 0xD00000000000001CLL;
    if (!a1)
    {
      v20 = 0x6469577961646F74;
      v19 = 0xEB00000000746567;
    }

    if (a1 <= 1u)
    {
      v13 = v20;
    }

    else
    {
      v13 = v16;
    }

    if (v4 <= 1)
    {
      v14 = v19;
    }

    else
    {
      v14 = v15;
    }
  }

  else
  {
    v5 = 0x800000024FA434A0;
    v6 = 0x800000024FA434C0;
    if (a1 == 9)
    {
      v7 = 0xD000000000000019;
    }

    else
    {
      v7 = 0xD000000000000018;
    }

    if (a1 != 9)
    {
      v6 = 0x800000024FA434E0;
    }

    if (a1 == 8)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = v7;
    }

    if (a1 != 8)
    {
      v5 = v6;
    }

    v9 = 0x800000024FA43430;
    v10 = 0xD000000000000020;
    v11 = 0x800000024FA43460;
    v12 = 0xD00000000000001CLL;
    if (a1 != 6)
    {
      v12 = 0xD000000000000010;
      v11 = 0x800000024FA43480;
    }

    if (a1 != 5)
    {
      v10 = v12;
      v9 = v11;
    }

    if (a1 <= 7u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v8;
    }

    if (v4 <= 7)
    {
      v14 = v9;
    }

    else
    {
      v14 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v21 = "today_tab_largest_ax_support";
LABEL_53:
        v2 = (v21 - 32) | 0x8000000000000000;
        v3 = 0xD00000000000001CLL;
        goto LABEL_57;
      }

      v3 = 0x6469577961646F74;
    }

    else if (a2 == 2)
    {
      v2 = 0x800000024FA43390;
      v3 = 0xD000000000000029;
    }

    else if (a2 == 3)
    {
      v2 = 0x800000024FA433C0;
      v3 = 0xD000000000000031;
    }

    else
    {
      v2 = 0x800000024FA43400;
      v3 = 0xD00000000000002DLL;
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v22 = "mini_today_cards_product";
      }

      else
      {
        if (a2 == 9)
        {
          v2 = 0x800000024FA434C0;
          v3 = 0xD000000000000019;
          goto LABEL_57;
        }

        v22 = "mini_today_cards_article";
      }

      v2 = (v22 - 32) | 0x8000000000000000;
      goto LABEL_57;
    }

    if (a2 != 5)
    {
      if (a2 != 6)
      {
        v2 = 0x800000024FA43480;
        v3 = 0xD000000000000010;
        goto LABEL_57;
      }

      v21 = "arcade_hero_video_page_timer";
      goto LABEL_53;
    }

    v2 = 0x800000024FA43430;
    v3 = 0xD000000000000020;
  }

LABEL_57:
  if (v13 == v3 && v14 == v2)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_24F92CE08();
  }

  return v23 & 1;
}

uint64_t sub_24F0C96A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6778480;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1667851624;
    }

    else
    {
      v4 = 7496556;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1734701162;
    }

    else
    {
      v4 = 6778480;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1667851624;
  if (a2 != 2)
  {
    v8 = 7496556;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 1734701162;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0C97AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  if (a1 <= 3u)
  {
    v4 = 0x800000024FA43300;
    v5 = 0xD000000000000016;
    if (a1 != 2)
    {
      v5 = 0x646E756F72;
      v4 = 0xE500000000000000;
    }

    v8 = 0x526465646E756F72;
    v9 = 0xEB00000000746365;
    if (!a1)
    {
      v8 = 0x6669636570736E75;
      v9 = 0xEB00000000646569;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 7364969;
    v6 = 0xE600000000000000;
    v7 = 0x746365527674;
    if (a1 != 7)
    {
      v7 = 0x656E726F64616E75;
      v6 = 0xE900000000000064;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xD000000000000010;
    v9 = 0x800000024FA43320;
    if (a1 != 4)
    {
      v8 = 1819044208;
      v9 = 0xE400000000000000;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x800000024FA43300;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x646E756F72)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2)
    {
      v2 = 0xEB00000000746365;
      if (v11 != 0x526465646E756F72)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x800000024FA43320;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 1819044208)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_42;
    }

    if (a2 == 6)
    {
      v2 = 0xE300000000000000;
      if (v11 != 7364969)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (a2 == 7)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x746365527674)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    v3 = 0x656E726F64616E75;
    v2 = 0xE900000000000064;
  }

  if (v11 != v3)
  {
LABEL_45:
    v13 = sub_24F92CE08();
    goto LABEL_46;
  }

LABEL_42:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_24F0C9A58(char a1, char a2)
{
  if (qword_24F9C7A30[a1] == qword_24F9C7A30[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_24F0C9AC0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000061696465;
  v3 = 0x4D746375646F7270;
  v4 = a1;
  v5 = 0x800000024FA432A0;
  v6 = 1701736302;
  if (a1 == 5)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v7 = 0x6365537961646F74;
  v8 = 0xEC0000006E6F6974;
  if (a1 == 3)
  {
    v7 = 0x4D746375646F7270;
    v8 = 0xEC00000061696465;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (a1 > 4u)
  {
    v8 = v5;
  }

  v10 = 0x800000024FA43220;
  v11 = 0xD000000000000027;
  v12 = 0x800000024FA43250;
  v13 = 0xD00000000000001CLL;
  if (v4 != 1)
  {
    v13 = 0xD000000000000018;
    v12 = 0x800000024FA43270;
  }

  if (v4)
  {
    v11 = v13;
    v10 = v12;
  }

  if (v4 <= 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  if (v4 <= 2)
  {
    v15 = v10;
  }

  else
  {
    v15 = v8;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000024FA43220;
      if (v14 != 0xD000000000000027)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v2 = 0x800000024FA43250;
      if (v14 != 0xD00000000000001CLL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x800000024FA43270;
    v3 = 0xD000000000000018;
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000024FA432A0;
        if (v14 != 0xD000000000000015)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v14 != 1701736302)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 != 3)
    {
      v2 = 0xEC0000006E6F6974;
      if (v14 != 0x6365537961646F74)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  if (v14 != v3)
  {
LABEL_40:
    v16 = sub_24F92CE08();
    goto LABEL_41;
  }

LABEL_37:
  if (v15 != v2)
  {
    goto LABEL_40;
  }

  v16 = 1;
LABEL_41:

  return v16 & 1;
}

uint64_t sub_24F0C9CBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726F6C6F43656E6FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C6F436565726874;
    }

    else
    {
      v4 = 0x6F6C6F4372756F66;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000726FLL;
    }

    else
    {
      v5 = 0xE900000000000072;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x726F6C6F436F7774;
    }

    else
    {
      v4 = 0x726F6C6F43656E6FLL;
    }

    v5 = 0xE800000000000000;
  }

  v6 = 0x6C6F436565726874;
  v7 = 0xEA0000000000726FLL;
  if (a2 != 2)
  {
    v6 = 0x6F6C6F4372756F66;
    v7 = 0xE900000000000072;
  }

  if (a2)
  {
    v2 = 0x726F6C6F436F7774;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0C9E10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x7461526F54706174;
  v4 = a1;
  v5 = 0xD000000000000014;
  v6 = 0x800000024FA431C0;
  if (a1 != 5)
  {
    v5 = 0x6567617373656DLL;
    v6 = 0xE700000000000000;
  }

  v7 = 0x676E697461526F6ELL;
  v8 = 0xE900000000000073;
  if (a1 != 3)
  {
    v7 = 0x52746375646F7270;
    v8 = 0xED00007765697665;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
  }

  else
  {
    v7 = v5;
  }

  v9 = 0x6974615272617473;
  v10 = 0xEB0000000073676ELL;
  if (a1 != 1)
  {
    v9 = 0xD000000000000014;
    v10 = 0x800000024FA431A0;
  }

  if (!a1)
  {
    v9 = 0x7461526F54706174;
    v10 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
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
        v2 = 0xEB0000000073676ELL;
        if (v11 != 0x6974615272617473)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0x800000024FA431A0;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000024FA431C0;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6567617373656DLL)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE900000000000073;
      if (v11 != 0x676E697461526F6ELL)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x52746375646F7270;
    v2 = 0xED00007765697665;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_24F92CE08();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_24F0CA050(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746553746F6ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E4974706FLL;
    }

    else
    {
      v4 = 0x64696C61766E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
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
      v4 = 0x74754F74706FLL;
    }

    else
    {
      v4 = 0x746553746F6ELL;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6E4974706FLL;
  if (a2 != 2)
  {
    v7 = 0x64696C61766E69;
    v6 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x74754F74706FLL;
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
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CA180(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xEF68746469576C61;
  if (a1 != 2)
  {
    v4 = 0xEE00657A69536C61;
  }

  v5 = 0xD000000000000010;
  if (a1)
  {
    v3 = 0x800000024FA43100;
  }

  else
  {
    v5 = 0x6574756C6F736261;
  }

  if (a1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E6F697463617266;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = 0xEF68746469576C61;
    }

    else
    {
      v9 = 0xEE00657A69536C61;
    }

    if (v6 != 0x6E6F697463617266)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a2)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0x6574756C6F736261;
    }

    if (a2)
    {
      v9 = 0x800000024FA43100;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    if (v6 != v8)
    {
      goto LABEL_27;
    }
  }

  if (v7 != v9)
  {
LABEL_27:
    v10 = sub_24F92CE08();
    goto LABEL_28;
  }

  v10 = 1;
LABEL_28:

  return v10 & 1;
}

uint64_t sub_24F0CA2F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007364;
  v3 = 0xD000000000000010;
  v4 = 0x416564756C636E69;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x416564756C636E69;
    }

    if (v5 == 2)
    {
      v7 = 0x800000024FA430D0;
    }

    else
    {
      v7 = 0xEA00000000007364;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v5)
    {
      v7 = 0x800000024FA430B0;
    }

    else
    {
      v7 = 0x800000024FA43090;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000017;
    v2 = 0x800000024FA430D0;
  }

  v8 = 0x800000024FA430B0;
  if (a2)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v8 = 0x800000024FA43090;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CA424(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 5459817;
    }

    else
    {
      v3 = 7105633;
    }

    v2 = 0xE300000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x534F63616DLL;
  }

  else if (a1 == 3)
  {
    v2 = 0xE400000000000000;
    v3 = 1397716596;
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x534F6E6F69736976;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 5459817;
    }

    else
    {
      v8 = 7105633;
    }

    v7 = 0xE300000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1397716596;
    if (a2 != 3)
    {
      v5 = 0x534F6E6F69736976;
      v4 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x534F63616DLL;
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
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = sub_24F92CE08();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_24F0CA580(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x696461654C706F74;
  v4 = a1;
  v5 = 0x654C6D6F74746F62;
  v6 = 0xED0000676E696461;
  if (a1 != 6)
  {
    v5 = 0x676E696461656CLL;
    v6 = 0xE700000000000000;
  }

  v7 = 0x72546D6F74746F62;
  v8 = 0xEE00676E696C6961;
  if (a1 != 4)
  {
    v7 = 0x6D6F74746F62;
    v8 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6C69617254706F74;
  v10 = 0xEB00000000676E69;
  if (a1 != 2)
  {
    v9 = 0x676E696C69617274;
    v10 = 0xE800000000000000;
  }

  v11 = 0xE300000000000000;
  v12 = 7368564;
  if (!a1)
  {
    v12 = 0x696461654C706F74;
    v11 = 0xEA0000000000676ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xED0000676E696461;
        if (v13 != 0x654C6D6F74746F62)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x676E696461656CLL)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE00676E696C6961;
      if (v13 != 0x72546D6F74746F62)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6D6F74746F62)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB00000000676E69;
        if (v13 != 0x6C69617254706F74)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      v3 = 0x676E696C69617274;
    }

    else if (a2)
    {
      v2 = 0xE300000000000000;
      if (v13 != 7368564)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_24F92CE08();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_24F0CA810(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x74726F6873;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1735290732;
  }

  else
  {
    v4 = 0x6169766572626261;
    v3 = 0xEB00000000646574;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x74726F6873;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1735290732;
    if (a2 != 3)
    {
      v6 = 0x6169766572626261;
      v5 = 0xEB00000000646574;
    }

    if (a2 == 2)
    {
      v7 = 0x6D756964656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_24F92CE08();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24F0CA98C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "newToMajorOSVersion";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "achievementDetails";
      v4 = 0xD000000000000010;
    }

    else
    {
      v5 = "playNowLargeCard";
      v4 = 0xD000000000000013;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v3)
    {
      v5 = "achievementsListGrid";
    }

    else
    {
      v5 = "newToMajorOSVersion";
    }
  }

  if (a2 > 1u)
  {
    v2 = "achievementDetails";
    v6 = "playNowLargeCard";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xD000000000000013;
    }
  }

  else
  {
    v6 = "achievementsListGrid";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0xD000000000000014;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CAAB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657461;
  v3 = 0x44657361656C6572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1701667182;
    }

    else
    {
      v5 = 0x79726F6765746163;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x616470557473616CLL;
    }

    else
    {
      v5 = 0x44657361656C6572;
    }

    if (v4)
    {
      v6 = 0xEB00000000646574;
    }

    else
    {
      v6 = 0xEB00000000657461;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (a2 != 2)
  {
    v8 = 0x79726F6765746163;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x616470557473616CLL;
    v2 = 0xEB00000000646574;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CAC00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7105633;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x73756C50656E696ELL;
    }

    else
    {
      v4 = 0x6C5065766C657774;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA00000000007375;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x73756C5072756F66;
    }

    else
    {
      v4 = 7105633;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x73756C50656E696ELL;
  if (a2 != 2)
  {
    v8 = 0x6C5065766C657774;
    v7 = 0xEA00000000007375;
  }

  if (a2)
  {
    v2 = 0x73756C5072756F66;
    v6 = 0xE800000000000000;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CAD44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000065726F7453;
  v3 = 0x7070416F5477656ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x686374615777656ELL;
      v6 = 0xEF676E6972696150;
    }

    else
    {
      v6 = 0x800000024FA42E60;
      v5 = 0xD000000000000013;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x7070416F5477656ELL;
    }

    if (v4)
    {
      v6 = 0x800000024FA42E30;
    }

    else
    {
      v6 = 0xED000065726F7453;
    }
  }

  v7 = 0x686374615777656ELL;
  v8 = 0x800000024FA42E60;
  if (a2 == 2)
  {
    v8 = 0xEF676E6972696150;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000024FA42E30;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CAEB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006563696F68;
  v3 = 0x4373726F74696465;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x72656469766964;
  if (a1 != 5)
  {
    v6 = 0x6867696C68676968;
    v5 = 0xEF74786554646574;
  }

  v7 = 0x6974615272617473;
  v8 = 0xEA0000000000676ELL;
  if (a1 != 3)
  {
    v7 = 0x6562614C74786574;
    v8 = 0xE90000000000006CLL;
  }

  if (a1 > 4u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xD000000000000011;
  v11 = 0x800000024FA42DD0;
  v12 = 0x7469576567616D69;
  v13 = 0xEE006C6562614C68;
  if (a1 == 1)
  {
    v12 = 0x4373726F74696465;
    v13 = 0xED00006563696F68;
  }

  if (a1)
  {
    v10 = v12;
    v11 = v13;
  }

  if (a1 <= 2u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (v4 <= 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000024FA42DD0;
      if (v14 != 0xD000000000000011)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v2 = 0xEE006C6562614C68;
      if (v14 != 0x7469576567616D69)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        if (v14 != 0x72656469766964)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEF74786554646574;
        if (v14 != 0x6867696C68676968)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xEA0000000000676ELL;
      if (v14 != 0x6974615272617473)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x6562614C74786574;
    v2 = 0xE90000000000006CLL;
  }

  if (v14 != v3)
  {
LABEL_37:
    v16 = sub_24F92CE08();
    goto LABEL_38;
  }

LABEL_34:
  if (v15 != v2)
  {
    goto LABEL_37;
  }

  v16 = 1;
LABEL_38:

  return v16 & 1;
}

uint64_t sub_24F0CB114(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x65706F6C65766564;
  v5 = 0xE900000000000072;
  v6 = 0xE500000000000000;
  v7 = 0x6369736162;
  if (a1 != 4)
  {
    v7 = 0x746E657645707061;
    v6 = 0xED000079726F7453;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x697463656C6C6F63;
  v9 = 0xEA00000000006E6FLL;
  if (a1 != 1)
  {
    v8 = 0x79726F7473;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x79726F6765746163;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000072;
      if (v10 != 0x65706F6C65766564)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6369736162)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED000079726F7453;
      if (v10 != 0x746E657645707061)
      {
LABEL_34:
        v13 = sub_24F92CE08();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000006E6FLL;
      if (v10 != 0x697463656C6C6F63)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x79726F7473)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x79726F6765746163)
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

uint64_t sub_24F0CB314(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x676E696C69617274;
  if (a1 != 5)
  {
    v6 = 0x654C726142706F74;
    v5 = 0xED0000676E696461;
  }

  v7 = 0x617069636E697270;
  v8 = 0xE90000000000006CLL;
  if (a1 != 3)
  {
    v7 = 0x7254726142706F74;
    v8 = 0xEE00676E696C6961;
  }

  if (a1 > 4u)
  {
    v9 = v5;
  }

  else
  {
    v6 = v7;
    v9 = v8;
  }

  v10 = 0xD000000000000012;
  v11 = 0x800000024FA42CC0;
  if (a1 != 1)
  {
    v10 = 0x636341656772616CLL;
    v11 = 0xEE0079726F737365;
  }

  if (!a1)
  {
    v10 = 0x6974616D6F747561;
    v11 = 0xE900000000000063;
  }

  if (a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x800000024FA42CC0;
        if (v12 != 0xD000000000000012)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEE0079726F737365;
        if (v12 != 0x636341656772616CLL)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE800000000000000;
        if (v12 != 0x676E696C69617274)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xED0000676E696461;
        if (v12 != 0x654C726142706F74)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE90000000000006CLL;
      if (v12 != 0x617069636E697270)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x7254726142706F74;
    v2 = 0xEE00676E696C6961;
  }

  if (v12 != v3)
  {
LABEL_37:
    v14 = sub_24F92CE08();
    goto LABEL_38;
  }

LABEL_34:
  if (v13 != v2)
  {
    goto LABEL_37;
  }

  v14 = 1;
LABEL_38:

  return v14 & 1;
}

uint64_t sub_24F0CB578(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6B63696C63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676F6C616964;
    }

    else
    {
      v4 = 0x6973736572706D69;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000736E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x686372616573;
    }

    else
    {
      v4 = 0x6B63696C63;
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
  v7 = 0xE600000000000000;
  v8 = 0x676F6C616964;
  if (a2 != 2)
  {
    v8 = 0x6973736572706D69;
    v7 = 0xEB00000000736E6FLL;
  }

  if (a2)
  {
    v2 = 0x686372616573;
    v6 = 0xE600000000000000;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CB6B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x7250646E65697266;
    v12 = 0xED0000656C69666FLL;
    v13 = 0xE700000000000000;
    v14 = 0x73646E65697266;
    if (a1 != 8)
    {
      v14 = 0x72616F6268736164;
      v13 = 0xE900000000000064;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0x6D65766569686361;
    v16 = 0xEB00000000746E65;
    if (a1 != 5)
    {
      v15 = 0x656C69666F7270;
      v16 = 0xE700000000000000;
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
    v3 = 0xE600000000000000;
    v4 = 0xD000000000000016;
    v5 = 0x800000024FA42BD0;
    v6 = 0x6F6272656461656CLL;
    v7 = 0xEB00000000647261;
    if (a1 != 3)
    {
      v6 = 0x49656C69666F7270;
      v7 = 0xEC0000006567616DLL;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x614E726579616C70;
    if (a1)
    {
      v3 = 0xEA0000000000656DLL;
    }

    else
    {
      v8 = 0x656461637261;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0x6D65766569686361;
        v18 = 7630437;
LABEL_42:
        v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 != v17)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      v19 = 0xE700000000000000;
      if (v9 != 0x656C69666F7270)
      {
LABEL_57:
        v20 = sub_24F92CE08();
        goto LABEL_58;
      }
    }

    else if (a2 == 7)
    {
      v19 = 0xED0000656C69666FLL;
      if (v9 != 0x7250646E65697266)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v19 = 0xE700000000000000;
      if (v9 != 0x73646E65697266)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v19 = 0xE900000000000064;
      if (v9 != 0x72616F6268736164)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v19 = 0x800000024FA42BD0;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      if (a2 != 3)
      {
        v19 = 0xEC0000006567616DLL;
        if (v9 != 0x49656C69666F7270)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      v17 = 0x6F6272656461656CLL;
      v18 = 6582881;
      goto LABEL_42;
    }

    if (a2)
    {
      v19 = 0xEA0000000000656DLL;
      if (v9 != 0x614E726579616C70)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v19 = 0xE600000000000000;
      if (v9 != 0x656461637261)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_55:
  if (v10 != v19)
  {
    goto LABEL_57;
  }

  v20 = 1;
LABEL_58:

  return v20 & 1;
}

uint64_t sub_24F0CBA10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x42656D6F636C6577;
    }

    else
    {
      v3 = 0x6F50737365636361;
    }

    if (v2)
    {
      v4 = 0xED000072656E6E61;
    }

    else
    {
      v4 = 0xEB00000000746E69;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000024FA42B00;
    v3 = 0xD000000000000017;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000020;
    }

    else
    {
      v3 = 0xD00000000000001ELL;
    }

    if (v2 == 3)
    {
      v4 = 0x800000024FA42B70;
    }

    else
    {
      v4 = 0x800000024FA42BA0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x42656D6F636C6577;
    }

    else
    {
      v9 = 0x6F50737365636361;
    }

    if (a2)
    {
      v8 = 0xED000072656E6E61;
    }

    else
    {
      v8 = 0xEB00000000746E69;
    }

    if (v3 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0x800000024FA42B70;
    v6 = 0xD000000000000020;
    if (a2 != 3)
    {
      v6 = 0xD00000000000001ELL;
      v5 = 0x800000024FA42BA0;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x800000024FA42B00;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_24F92CE08();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_24F0CBBB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746E69;
  v3 = 0x6F50737365636361;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x42656D6F636C6577;
    v12 = 0xED000072656E6E61;
    if (a1 != 6)
    {
      v11 = 0xD000000000000016;
      v12 = 0x800000024FA42B20;
    }

    v13 = 0x800000024FA3ED00;
    v14 = 0xD000000000000020;
    if (a1 != 4)
    {
      v14 = 0xD00000000000001ELL;
      v13 = 0x800000024FA3ED30;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x800000024FA42B00;
    v6 = 0xD000000000000017;
    if (a1 != 2)
    {
      v6 = 0x6142656D61476E69;
      v5 = 0xEC00000072656E6ELL;
    }

    v7 = 0x800000024FA42A80;
    if (a1)
    {
      v8 = 0xD000000000000014;
    }

    else
    {
      v8 = 0x6F50737365636361;
    }

    if (!a1)
    {
      v7 = 0xEB00000000746E69;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xED000072656E6E61;
        if (v9 != 0x42656D6F636C6577)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x800000024FA42B20;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000024FA3ED00;
      if (v9 != 0xD000000000000020)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0x800000024FA3ED30;
      if (v9 != 0xD00000000000001ELL)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x800000024FA42B00;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v3 = 0x6142656D61476E69;
      v2 = 0xEC00000072656E6ELL;
    }

    else if (a2)
    {
      v2 = 0x800000024FA42A80;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    if (v9 != v3)
    {
LABEL_47:
      v15 = sub_24F92CE08();
      goto LABEL_48;
    }
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_24F0CBE4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 0x657079546469;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x800000024FA42AC0;
  }

  else
  {
    v3 = 0x6973736572706D69;
    if (v2 == 3)
    {
      v4 = 0xEF7865646E496E6FLL;
    }

    else
    {
      v4 = 0xEE00657079546E6FLL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1701667182;
    }

    else
    {
      v8 = 0x657079546469;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xEF7865646E496E6FLL;
    if (a2 != 3)
    {
      v5 = 0xEE00657079546E6FLL;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x6973736572706D69;
    }

    if (a2 == 2)
    {
      v7 = 0x800000024FA42AC0;
    }

    else
    {
      v7 = v5;
    }

    if (v3 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v7)
  {
LABEL_33:
    v9 = sub_24F92CE08();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_24F0CBFEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746E69;
  v3 = a1;
  v4 = 0x72656E6E6162;
  v5 = 0xE400000000000000;
  if (a1 == 2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = 1701736302;
  }

  v6 = 0xD000000000000014;
  v7 = 0x800000024FA42A80;
  if (!a1)
  {
    v6 = 0x6F50737365636361;
    v7 = 0xEB00000000746E69;
  }

  if (a1 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v3 <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v2 = 0xE600000000000000;
    v10 = 0xE400000000000000;
    if (a2 == 2)
    {
      v12 = 0x72656E6E6162;
    }

    else
    {
      v12 = 1701736302;
    }
  }

  else
  {
    v10 = 0x800000024FA42A80;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0xD000000000000014;
    }

    else
    {
      v12 = 0x6F50737365636361;
    }
  }

  if (v11)
  {
    v13 = v2;
  }

  else
  {
    v13 = v10;
  }

  if (v8 == v12 && v9 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_24F92CE08();
  }

  return v14 & 1;
}

uint64_t sub_24F0CC114(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x707954746E657665;
  v4 = 0xE800000000000000;
  if (a1 > 4u)
  {
    v5 = 0x6E6F697461636F6CLL;
    v11 = 0x6973736572706D69;
    v12 = 0xEB00000000736E6FLL;
    if (a1 != 8)
    {
      v11 = 0x707041666572;
      v12 = 0xE600000000000000;
    }

    if (a1 != 7)
    {
      v5 = v11;
      v4 = v12;
    }

    v8 = 0x7954746567726174;
    v9 = 0xEA00000000006570;
    if (a1 != 5)
    {
      v8 = 0x6449746567726174;
      v9 = 0xE800000000000000;
    }

    v10 = a1 <= 6u;
  }

  else
  {
    v5 = 0x6570795465676170;
    v6 = 0xE600000000000000;
    v7 = 0x644965676170;
    if (a1 != 3)
    {
      v7 = 0x746E6F4365676170;
      v6 = 0xEB00000000747865;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x79546E6F69746361;
    v9 = 0xEA00000000006570;
    if (!a1)
    {
      v8 = 0x707954746E657665;
      v9 = 0xE900000000000065;
    }

    v10 = a1 <= 1u;
  }

  if (v10)
  {
    v13 = v8;
  }

  else
  {
    v13 = v5;
  }

  if (v10)
  {
    v14 = v9;
  }

  else
  {
    v14 = v4;
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x6570795465676170)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      if (a2 == 3)
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x644965676170)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      v15 = 0x746E6F4365676170;
      v16 = 7632997;
LABEL_43:
      v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v13 != v15)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2)
    {
      v17 = 0x6E6F69746361;
      goto LABEL_36;
    }

    goto LABEL_46;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v2 = 0xE800000000000000;
      if (v13 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2 == 8)
    {
      v15 = 0x6973736572706D69;
      v16 = 7564911;
      goto LABEL_43;
    }

    v2 = 0xE600000000000000;
    v3 = 0x707041666572;
LABEL_46:
    if (v13 != v3)
    {
LABEL_50:
      v18 = sub_24F92CE08();
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  if (a2 == 5)
  {
    v17 = 0x746567726174;
LABEL_36:
    v2 = 0xEA00000000006570;
    if (v13 != (v17 & 0xFFFFFFFFFFFFLL | 0x7954000000000000))
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  v2 = 0xE800000000000000;
  if (v13 != 0x6449746567726174)
  {
    goto LABEL_50;
  }

LABEL_47:
  if (v14 != v2)
  {
    goto LABEL_50;
  }

  v18 = 1;
LABEL_51:

  return v18 & 1;
}

uint64_t sub_24F0CC400(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000074786554;
  v3 = 0x6C6169726574616DLL;
  v4 = a1;
  v5 = 0xD000000000000010;
  v6 = 0x800000024FA42980;
  v7 = 0x6F4D656C676E6973;
  v8 = 0xEC000000656C7564;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v8 = 0x800000024FA429A0;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1954047348;
  if (a1 != 1)
  {
    v10 = 0x70756B636F6CLL;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x6C6169726574616DLL;
    v9 = 0xEC00000074786554;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x800000024FA42980;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC000000656C7564;
      if (v11 != 0x6F4D656C676E6973)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0x800000024FA429A0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1954047348)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE600000000000000;
      v3 = 0x70756B636F6CLL;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_24F92CE08();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_24F0CC5CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v8 = 0xE500000000000000;
    v9 = 0xE400000000000000;
    v10 = 1752397168;
    v11 = 0x4D746E6573657270;
    v12 = 0xEC0000006C61646FLL;
    if (a1 != 3)
    {
      v11 = 0xD000000000000015;
      v12 = 0x800000024FA428C0;
    }

    if (a1 != 2)
    {
      v10 = v11;
      v9 = v12;
    }

    v13 = 0x61746544776F6873;
    if (a1)
    {
      v8 = 0xEA00000000006C69;
    }

    else
    {
      v13 = 0x7265666E69;
    }

    if (a1 <= 1u)
    {
      v7 = v13;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 1)
    {
      v14 = v8;
    }

    else
    {
      v14 = v9;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v3 = 0x800000024FA42940;
      v4 = 0xE600000000000000;
      v15 = 0x7463656C6573;
      if (a1 != 9)
      {
        v15 = 0x6563616C706572;
        v4 = 0xE700000000000000;
      }

      v6 = a1 == 8;
      if (a1 == 8)
      {
        v7 = 0xD000000000000013;
      }

      else
      {
        v7 = v15;
      }
    }

    else
    {
      v3 = 0x800000024FA428E0;
      v4 = 0x800000024FA42900;
      v5 = 0xD00000000000001ALL;
      if (a1 == 6)
      {
        v5 = 0xD000000000000016;
      }

      else
      {
        v4 = 0x800000024FA42920;
      }

      v6 = a1 == 5;
      if (a1 == 5)
      {
        v7 = 0xD000000000000015;
      }

      else
      {
        v7 = v5;
      }
    }

    if (v6)
    {
      v14 = v3;
    }

    else
    {
      v14 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v16 = 0xEA00000000006C69;
        if (v7 != 0x61746544776F6873)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v16 = 0xE500000000000000;
        if (v7 != 0x7265666E69)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_61;
    }

    if (a2 == 2)
    {
      v16 = 0xE400000000000000;
      if (v7 != 1752397168)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    if (a2 == 3)
    {
      v16 = 0xEC0000006C61646FLL;
      if (v7 != 0x4D746E6573657270)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    v17 = "presentModalFormSheet";
    goto LABEL_54;
  }

  if (a2 <= 7u)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        v16 = 0x800000024FA42900;
        if (v7 != 0xD000000000000016)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v16 = 0x800000024FA42920;
        if (v7 != 0xD00000000000001ALL)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_61;
    }

    v17 = "presentModalPageSheet";
LABEL_54:
    v16 = (v17 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000015)
    {
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (a2 == 8)
  {
    v16 = 0x800000024FA42940;
    if (v7 != 0xD000000000000013)
    {
      goto LABEL_63;
    }
  }

  else if (a2 == 9)
  {
    v16 = 0xE600000000000000;
    if (v7 != 0x7463656C6573)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v16 = 0xE700000000000000;
    if (v7 != 0x6563616C706572)
    {
LABEL_63:
      v18 = sub_24F92CE08();
      goto LABEL_64;
    }
  }

LABEL_61:
  if (v14 != v16)
  {
    goto LABEL_63;
  }

  v18 = 1;
LABEL_64:

  return v18 & 1;
}

uint64_t sub_24F0CC930(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1869768040;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000064;
    v4 = 0xEB000000006C6961;
    if (a1 == 2)
    {
      v6 = 0x72614379726F7473;
    }

    else
    {
      v6 = 0x74654479726F7473;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xED000074756F6B61;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x657242656772616CLL;
    }

    else
    {
      v6 = 1869768040;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x72614379726F7473;
  v10 = 0xE900000000000064;
  if (a2 != 2)
  {
    v9 = 0x74654479726F7473;
    v10 = 0xEB000000006C6961;
  }

  if (a2)
  {
    v2 = 0x657242656772616CLL;
    v8 = 0xED000074756F6B61;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24F92CE08();
  }

  return v13 & 1;
}

uint64_t sub_24F0CCA98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6269726373627573;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x6C61697274;
    if (a1 != 1)
    {
      v12 = 0x6973616863727570;
      v11 = 0xEA0000000000676ELL;
    }

    if (a1)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0x6269726373627573;
    }

    if (v4)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xEA00000000006465;
    }
  }

  else
  {
    v5 = 0x7265746544746F6ELL;
    v6 = 0xED000064656E696DLL;
    if (a1 != 5)
    {
      v5 = 0xD000000000000011;
      v6 = 0x800000024FA42890;
    }

    v7 = 0x800000024FA42840;
    v8 = 0xD00000000000001FLL;
    if (a1 == 3)
    {
      v8 = 0xD00000000000001CLL;
    }

    else
    {
      v7 = 0x800000024FA42860;
    }

    if (a1 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v9 != 0x6C61697274)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xEA0000000000676ELL;
        if (v9 != 0x6973616863727570)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xED000064656E696DLL;
        if (v9 != 0x7265746544746F6ELL)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x800000024FA42890;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v2 = 0x800000024FA42840;
      if (v9 != 0xD00000000000001CLL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x800000024FA42860;
    v3 = 0xD00000000000001FLL;
  }

  if (v9 != v3)
  {
LABEL_40:
    v13 = sub_24F92CE08();
    goto LABEL_41;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_24F0CCCE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF74736575716552;
  v3 = 0x7975426F546B7361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x68736E6565726373;
    }

    else
    {
      v5 = 0x666C656873;
    }

    if (v4 == 2)
    {
      v6 = 0xEB0000000073746FLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x756B636F4C706F74;
    }

    else
    {
      v5 = 0x7975426F546B7361;
    }

    if (v4)
    {
      v6 = 0xE900000000000070;
    }

    else
    {
      v6 = 0xEF74736575716552;
    }
  }

  v7 = 0x68736E6565726373;
  v8 = 0xEB0000000073746FLL;
  if (a2 != 2)
  {
    v7 = 0x666C656873;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x756B636F4C706F74;
    v2 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CCE3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v6 = 0x800000024FA425F0;
        v5 = 0xD000000000000012;
      }

      else
      {
        v5 = 0x65706F6C65766564;
        v6 = 0xED00006F666E4972;
      }
    }

    else if (a1 == 7)
    {
      v6 = 0xE300000000000000;
      v5 = 6775156;
    }

    else
    {
      v6 = 0xE700000000000000;
      if (a1 == 8)
      {
        v5 = 0x72656469766964;
      }

      else
      {
        v5 = 0x6E776F6E6B6E75;
      }
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x736F507472616863;
    }

    else
    {
      v5 = 0x6974615272657375;
    }

    if (v2)
    {
      v6 = 0xEE00736E6F697469;
    }

    else
    {
      v6 = 0xEA0000000000676ELL;
    }
  }

  else
  {
    v3 = 0x800000024FA425B0;
    v4 = 0xD000000000000015;
    if (a1 != 3)
    {
      v4 = 0xD00000000000001FLL;
      v3 = 0x800000024FA425D0;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0x800000024FA42590;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v7 = 0x800000024FA425F0;
        if (v5 != 0xD000000000000012)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v7 = 0xED00006F666E4972;
        if (v5 != 0x65706F6C65766564)
        {
LABEL_59:
          v9 = sub_24F92CE08();
          goto LABEL_60;
        }
      }
    }

    else if (a2 == 7)
    {
      v7 = 0xE300000000000000;
      if (v5 != 6775156)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      if (a2 == 8)
      {
        if (v5 != 0x72656469766964)
        {
          goto LABEL_59;
        }
      }

      else if (v5 != 0x6E776F6E6B6E75)
      {
        goto LABEL_59;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x736F507472616863;
    }

    else
    {
      v8 = 0x6974615272657375;
    }

    if (a2)
    {
      v7 = 0xEE00736E6F697469;
    }

    else
    {
      v7 = 0xEA0000000000676ELL;
    }

    if (v5 != v8)
    {
      goto LABEL_59;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0x800000024FA42590;
    if (v5 != 0xD000000000000010)
    {
      goto LABEL_59;
    }
  }

  else if (a2 == 3)
  {
    v7 = 0x800000024FA425B0;
    if (v5 != 0xD000000000000015)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v7 = 0x800000024FA425D0;
    if (v5 != 0xD00000000000001FLL)
    {
      goto LABEL_59;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_59;
  }

  v9 = 1;
LABEL_60:

  return v9 & 1;
}

uint64_t sub_24F0CD188(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6573756170;
    }

    else
    {
      v3 = 2036427888;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1702131053;
  }

  else if (a1 == 3)
  {
    v3 = 0x657263736C6C7566;
    v4 = 0xEA00000000006E65;
  }

  else
  {
    v4 = 0xE600000000000000;
    v3 = 0x656E696C6E69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6573756170;
    }

    else
    {
      v9 = 2036427888;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x657263736C6C7566;
    v6 = 0xEA00000000006E65;
    if (a2 != 3)
    {
      v5 = 0x656E696C6E69;
      v6 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1702131053;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_24F92CE08();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_24F0CD2F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6574756D6E75;
  v6 = 0x6C75467265746E65;
  v7 = 0xEF6E65657263736CLL;
  if (a1 != 4)
  {
    v6 = 0x6C6C754674697865;
    v7 = 0xEE006E6565726373;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6573756170;
  if (a1 != 1)
  {
    v9 = 1702131053;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 2036427888;
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
      v12 = 0xE600000000000000;
      if (v10 != 0x6574756D6E75)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEF6E65657263736CLL;
      if (v10 != 0x6C75467265746E65)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE006E6565726373;
      if (v10 != 0x6C6C754674697865)
      {
LABEL_34:
        v13 = sub_24F92CE08();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6573756170)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1702131053)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 2036427888)
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

uint64_t sub_24F0CD4E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1954047348;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D754E656E6F6870;
    }

    else
    {
      v4 = 0x506C616D69636564;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726562;
    }

    else
    {
      v5 = 0xEA00000000006461;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C69616D65;
    }

    else
    {
      v4 = 1954047348;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6D754E656E6F6870;
  v8 = 0xEB00000000726562;
  if (a2 != 2)
  {
    v7 = 0x506C616D69636564;
    v8 = 0xEA00000000006461;
  }

  if (a2)
  {
    v2 = 0x6C69616D65;
    v6 = 0xE500000000000000;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CD630(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726575516C7275;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79646F426E6F736ALL;
    }

    else
    {
      v4 = 0x79646F426D726F66;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x726564616568;
    }

    else
    {
      v4 = 0x79726575516C7275;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x79646F426E6F736ALL;
  if (a2 != 2)
  {
    v7 = 0x79646F426D726F66;
  }

  if (a2)
  {
    v2 = 0x726564616568;
    v6 = 0xE600000000000000;
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
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CD76C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = "";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v7 = "CONTROLLER_REQUIRED";
    }

    else
    {
      v7 = "CONTROLLER_OPTIONAL";
    }

    v6 = (v7 - 32);
    v5 = 0xD000000000000013;
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000022;
    }

    if (v4)
    {
      v6 = "ONTROLLER_REQUIRED";
    }

    else
    {
      v6 = "";
    }
  }

  if (a2 > 1u)
  {
    v3 = "SIRI_REMOTE_REQUIRED";
    v8 = "CONTROLLER_REQUIRED";
    v9 = a2 == 2;
  }

  else
  {
    v8 = "ONTROLLER_REQUIRED";
    v9 = a2 == 0;
    if (a2)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0xD000000000000022;
    }
  }

  if (!v9)
  {
    v3 = v8;
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CD880(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE300000000000000;
  v5 = 6513005;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736976;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6863746177;
  if (a1 != 3)
  {
    v7 = 30324;
    v6 = 0xE200000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 6578544;
  if (a1 != 1)
  {
    v9 = 0x736567617373656DLL;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F6870;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE300000000000000;
        if (v10 != 6578544)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x736567617373656DLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656E6F6870)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6513005)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F69736976)
      {
LABEL_39:
        v13 = sub_24F92CE08();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6863746177)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE200000000000000;
    if (v10 != 30324)
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

uint64_t sub_24F0CDA64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00397836316E6FLL;
  v3 = 0xD000000000000011;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0xD000000000000014;
    if (v4 == 2)
    {
      v5 = 0xD000000000000017;
      v6 = 0x800000024FA3F070;
    }

    else
    {
      v6 = 0x800000024FA3F090;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x69746F4D6F726568;
    }

    if (v4)
    {
      v6 = 0x800000024FA3F050;
    }

    else
    {
      v6 = 0xEE00397836316E6FLL;
    }
  }

  v7 = 0xD000000000000017;
  v8 = 0x800000024FA3F090;
  if (a2 == 2)
  {
    v8 = 0x800000024FA3F070;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v2 = 0x800000024FA3F050;
  }

  else
  {
    v3 = 0x69746F4D6F726568;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CDB98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65726F6373;
  v6 = 0xE600000000000000;
  if (a1 != 5)
  {
    v5 = 0x7365726F6373;
    v4 = 0xE600000000000000;
  }

  v7 = 0x646E65697266;
  if (a1 != 3)
  {
    v7 = 0x6D65766569686361;
    v6 = 0xEB00000000746E65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x68746957656D6167;
  v9 = 0xEF73726579616C50;
  if (a1 != 1)
  {
    v8 = 0x6957726579616C70;
    v9 = 0xEE00656D61476874;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEF73726579616C50;
        if (v10 != 0x68746957656D6167)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEE00656D61476874;
        if (v10 != 0x6957726579616C70)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65726F6373)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7365726F6373)
      {
LABEL_39:
        v13 = sub_24F92CE08();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x646E65697266)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000746E65;
    if (v10 != 0x6D65766569686361)
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

uint64_t sub_24F0CDDEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x4373726F74696465;
    v10 = 0xED00006563696F68;
    if (a1 != 6)
    {
      v9 = 1701736302;
      v10 = 0xE400000000000000;
    }

    v11 = 0xE800000000000000;
    v12 = 0x746E656964617267;
    if (a1 != 4)
    {
      v12 = 0xD000000000000010;
      v11 = 0x800000024FA42360;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x7265764F6B726164;
    v5 = 0xEB0000000079616CLL;
    if (a1 != 2)
    {
      v4 = 0x7463617265746E69;
      v5 = 0xEB00000000657669;
    }

    v6 = 0x726F6C6F63;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x6B726F77747261;
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
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xED00006563696F68;
        if (v7 != 0x4373726F74696465)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v7 != 1701736302)
        {
LABEL_47:
          v16 = sub_24F92CE08();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x746E656964617267)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x800000024FA42360;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 0x7265764F6B726164;
      v15 = 7954796;
    }

    else
    {
      v14 = 0x7463617265746E69;
      v15 = 6649449;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v7 != v14)
    {
      goto LABEL_47;
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x726F6C6F63)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x6B726F77747261)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_24F0CE080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6269736976;
  if (a1 != 5)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  v6 = 0xE800000000000000;
  v7 = 0x6E65657263536E6FLL;
  if (a1 != 3)
  {
    v7 = 0x656572635366666FLL;
    v6 = 0xE90000000000006ELL;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x65746E4565676170;
  v9 = 0xE900000000000072;
  if (a1 != 1)
  {
    v8 = 0x7469784565676170;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x646563616C70;
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

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000072;
        if (v10 != 0x65746E4565676170)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x7469784565676170)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x646563616C70)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656C6269736976)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000064;
      if (v10 != 0x6574656C706D6F63)
      {
LABEL_39:
        v13 = sub_24F92CE08();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6E65657263536E6FLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE90000000000006ELL;
    if (v10 != 0x656572635366666FLL)
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

uint64_t sub_24F0CE2CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x79636176697270;
    }

    else
    {
      v5 = 0x65706F6C65766564;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000072;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE400000000000000;
    v5 = 1634497893;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x74726F70707573;
    }

    else
    {
      v5 = 0x504174726F706572;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEE006D656C626F72;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1634497893;
  v9 = 0xE700000000000000;
  v10 = 0x74726F70707573;
  if (a2 != 3)
  {
    v10 = 0x504174726F706572;
    v9 = 0xEE006D656C626F72;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x79636176697270;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24F92CE08();
  }

  return v13 & 1;
}

uint64_t sub_24F0CE458(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x437055656E4FLL;
  if (a1 != 6)
  {
    v4 = 0x447055656E4FLL;
  }

  v5 = 0x417055656E4FLL;
  if (a1 != 4)
  {
    v5 = 0x427055656E4FLL;
  }

  if (a1 <= 5u)
  {
    v4 = v5;
  }

  v6 = 0xE300000000000000;
  v7 = 7233862;
  if (a1 != 2)
  {
    v7 = 0x7274656D6D797341;
    v6 = 0xEC0000006C616369;
  }

  v8 = 0x70556565726854;
  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x70556F7754;
  }

  if (a1 > 1u)
  {
    v3 = v6;
  }

  else
  {
    v7 = v8;
  }

  if (a1 <= 3u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 3)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (a2 > 3u)
  {
    v11 = 0xE600000000000000;
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (v9 != 0x437055656E4FLL)
        {
          goto LABEL_45;
        }
      }

      else if (v9 != 0x447055656E4FLL)
      {
LABEL_45:
        v12 = sub_24F92CE08();
        goto LABEL_46;
      }
    }

    else if (a2 == 4)
    {
      if (v9 != 0x417055656E4FLL)
      {
        goto LABEL_45;
      }
    }

    else if (v9 != 0x427055656E4FLL)
    {
      goto LABEL_45;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0xE300000000000000;
      if (v9 != 7233862)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v11 = 0xEC0000006C616369;
      if (v9 != 0x7274656D6D797341)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x70556565726854)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x70556F7754)
    {
      goto LABEL_45;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_24F0CE69C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x416E6769736564;
  v3 = a1;
  if (a1 > 4u)
  {
    v11 = 0x476E6769736564;
    v12 = 0x486E6769736564;
    if (a1 != 8)
    {
      v12 = 0x496E6769736564;
    }

    if (a1 != 7)
    {
      v11 = v12;
    }

    v13 = 0x456E6769736564;
    if (a1 != 5)
    {
      v13 = 0x466E6769736564;
    }

    if (a1 <= 6u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    v10 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x436E6769736564;
    v6 = 0xE700000000000000;
    v7 = 0x446E6769736564;
    if (a1 != 3)
    {
      v7 = 0x44446E6769736564;
      v6 = 0xEC00000065736E65;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x426E6769736564;
    if (!a1)
    {
      v8 = 0x416E6769736564;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    v14 = 0xE700000000000000;
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        if (v9 != 0x456E6769736564)
        {
          goto LABEL_52;
        }
      }

      else if (v9 != 0x466E6769736564)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    if (a2 == 7)
    {
      if (v9 != 0x476E6769736564)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    if (a2 == 8)
    {
      if (v9 != 0x486E6769736564)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v2 = 0x496E6769736564;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE700000000000000;
        if (v9 != 0x436E6769736564)
        {
          goto LABEL_52;
        }
      }

      else if (a2 == 3)
      {
        v14 = 0xE700000000000000;
        if (v9 != 0x446E6769736564)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xEC00000065736E65;
        if (v9 != 0x44446E6769736564)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_49;
    }

    v14 = 0xE700000000000000;
    if (a2)
    {
      if (v9 != 0x426E6769736564)
      {
        goto LABEL_52;
      }

      goto LABEL_49;
    }
  }

  if (v9 != v2)
  {
LABEL_52:
    v15 = sub_24F92CE08();
    goto LABEL_53;
  }

LABEL_49:
  if (v10 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_24F0CE988(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7265666E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1802658148;
    }

    else
    {
      v4 = 0x6867696C746F7073;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE900000000000074;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746867696CLL;
    }

    else
    {
      v4 = 0x7265666E69;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1802658148;
  if (a2 != 2)
  {
    v7 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    v2 = 0x746867696CLL;
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
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}

uint64_t sub_24F0CEABC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696461656CLL;
    }

    else
    {
      v4 = 0x676E696C69617274;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D6F74746F62;
    }

    else
    {
      v4 = 7368564;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E696461656CLL;
  if (a2 != 2)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6D6F74746F62;
    v6 = 0xE600000000000000;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CEBF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF796C6E4F746E69;
  if (a1 > 3u)
  {
    v3 = 0x800000024FA3ED50;
    v4 = 0xD00000000000001FLL;
    if (a1 != 6)
    {
      v4 = 0x6142656D61476E69;
      v3 = 0xEC00000072656E6ELL;
    }

    v5 = 0x800000024FA3ED00;
    v6 = 0xD000000000000020;
    if (a1 != 4)
    {
      v6 = 0xD00000000000001ELL;
      v5 = 0x800000024FA3ED30;
    }

    v7 = a1 <= 5u;
  }

  else
  {
    v3 = 0x800000024FA3ECC0;
    v4 = 0xD00000000000001BLL;
    if (a1 != 2)
    {
      v4 = 0xD000000000000011;
      v3 = 0x800000024FA3ECE0;
    }

    v5 = 0x800000024FA3EC90;
    if (a1)
    {
      v6 = 0x6F50737365636361;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0xEF796C6E4F746E69;
    }

    v7 = a1 <= 1u;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = v3;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x800000024FA3ED50;
        if (v8 != 0xD00000000000001FLL)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xEC00000072656E6ELL;
        if (v8 != 0x6142656D61476E69)
        {
LABEL_45:
          v11 = sub_24F92CE08();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000024FA3ED00;
      if (v8 != 0xD000000000000020)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0x800000024FA3ED30;
      if (v8 != 0xD00000000000001ELL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v10 = "achievementBanner";
LABEL_40:
      v2 = (v10 - 32) | 0x8000000000000000;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v2 = 0x800000024FA3ECC0;
    if (v8 != 0xD00000000000001BLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (!a2)
    {
      v10 = "welcomeBannerOnly";
      goto LABEL_40;
    }

    if (v8 != 0x6F50737365636361)
    {
      goto LABEL_45;
    }
  }

LABEL_43:
  if (v9 != v2)
  {
    goto LABEL_45;
  }

  v11 = 1;
LABEL_46:

  return v11 & 1;
}

uint64_t sub_24F0CEE64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x65706F6C65766564;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656461637261;
    }

    else
    {
      v5 = 0x6863746177;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x79726F7473;
    }

    else
    {
      v5 = 0x65706F6C65766564;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000072;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x656461637261;
  if (a2 != 2)
  {
    v8 = 0x6863746177;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x79726F7473;
    v2 = 0xE500000000000000;
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
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F0CEF8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 2036427888;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1801807219;
    }

    else
    {
      v4 = 0x756A644165746172;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEA00000000007473;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1886352499;
    }

    else
    {
      v4 = 2036427888;
    }

    v5 = 0xE400000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1801807219;
  if (a2 != 2)
  {
    v7 = 0x756A644165746172;
    v6 = 0xEA00000000007473;
  }

  if (a2)
  {
    v2 = 1886352499;
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
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24F92CE08();
  }

  return v10 & 1;
}