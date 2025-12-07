uint64_t sub_205BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94A490, &unk_7858C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_205C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_205CA0(uint64_t a1)
{
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_205CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for InteractiveSectionBackgroundScrollCoordinator(0);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider45InteractiveSectionBackgroundScrollCoordinator_currentState;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + 16) = a1;
  *(v21 + 24) = a5;
  *(v21 + 32) = a6;
  *(v21 + 40) = a7;
  *(v21 + 48) = a8;
  *(v21 + 64) = a9;
  swift_unknownObjectWeakAssign();
  *(v21 + 88) = a3;
  *(v21 + 96) = a12;
  *(v21 + 80) = a4;
  swift_unknownObjectRetain();
  *(v21 + 56) = sub_75AF70();
  return v21;
}

unint64_t sub_205E24()
{
  result = qword_947680;
  if (!qword_947680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_947680);
  }

  return result;
}

void sub_205E70(uint64_t a1)
{
  v2 = v1;
  if (a1 >= 1)
  {
    [v2 setLineSpacing:a1];
    v4 = [v2 font];
    if (v4)
    {
      v5 = v4;
      [v4 lineHeight];
      v7 = v6;

      v8 = [objc_allocWithZone(NSNumber) initWithDouble:a1 - v7];
      v9 = sub_206378();
      *(&v23 + 1) = v9;
      *&v22 = v8;
      v10 = [v2 _defaultAttributes];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for Key(0);
        sub_206144();
        v12 = sub_7690F0();

        v21 = v12;
        if (v9)
        {
          sub_13310(&v22, v20);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v12;
          sub_4592E8(v20, NSBaselineOffsetAttributeName, isUniquelyReferenced_nonNull_native);
          v21 = v12;
          if (v12)
          {
LABEL_6:
            v14.super.isa = sub_7690E0().super.isa;

LABEL_12:
            [v2 _setDefaultAttributes:{v14.super.isa, v19}];

            return;
          }
        }

        else
        {
          sub_BDD0(&v22);
          sub_20619C(v20);
          sub_BDD0(v20);
          if (v21)
          {
            goto LABEL_6;
          }
        }

        v14.super.isa = 0;
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  [v1 setLineSpacing:0];
  v22 = 0u;
  v23 = 0u;
  v15 = [v1 _defaultAttributes];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v16 = v15;
  type metadata accessor for Key(0);
  sub_206144();
  v17 = sub_7690F0();

  v21 = v17;
  sub_BDD0(&v22);
  sub_20619C(v20);
  sub_BDD0(v20);
  if (v21)
  {
    v18.super.isa = sub_7690E0().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  [v2 _setDefaultAttributes:v18.super.isa];
}

unint64_t sub_206144()
{
  result = qword_93EC10;
  if (!qword_93EC10)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93EC10);
  }

  return result;
}

double sub_20619C@<D0>(_OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_66523C();
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_45B00C();
      v9 = v12;
    }

    sub_13310((*(v9 + 56) + 32 * v7), a2);
    sub_4582B0(v7, v9, v10);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_20623C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_3DF2F8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_45C4BC();
    v8 = v12;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_4587D8(v6, v8, v10);
  *v3 = v8;
  return v9;
}

double sub_2062D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_3DF2F8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_45C7BC();
      v10 = v13;
    }

    sub_13310((*(v10 + 56) + 32 * v8), a3);
    sub_458988(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_206378()
{
  result = qword_945820;
  if (!qword_945820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_945820);
  }

  return result;
}

uint64_t sub_2063C4()
{
  v1 = sub_7572E0();
  v59 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_BD88(&unk_93F5C0, &unk_77C600);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_77D9F0;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v62 = type metadata accessor for NavigationActionDebugSetting();
  v7 = swift_allocObject();
  v7[7] = 0xD000000000000012;
  v7[8] = 0x80000000007D51A0;
  v7[10] = 0;
  v7[11] = 0;
  v7[9] = 0;
  v7[12] = sub_207E2C;
  v7[13] = v6;
  v8 = v0;

  sub_7572D0();
  v9 = sub_7572B0();
  v11 = v10;
  v12 = *(v2 + 8);
  v12(v4, v1);
  v65 = v9;
  v66 = v11;
  sub_76A6E0();

  *(v5 + 32) = v7;
  v67 = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  type metadata accessor for ActionDebugSetting();
  v14 = swift_allocObject();
  strcpy((v14 + 56), "Reset Welcome");
  *(v14 + 70) = -4864;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_207E34;
  *(v14 + 112) = v13;
  v15 = v8;

  sub_7572D0();
  v16 = sub_7572B0();
  v18 = v17;
  v19 = v59;
  (v12)(v4);
  v65 = v16;
  v66 = v18;
  sub_76A6E0();

  sub_769440();
  if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  v21 = swift_allocObject();
  *(v21 + 56) = 0xD000000000000018;
  *(v21 + 64) = 0x80000000007D51C0;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = sub_207E3C;
  *(v21 + 112) = v20;
  v22 = v15;

  sub_7572D0();
  v23 = sub_7572B0();
  v25 = v24;
  v12(v4, v19);
  v65 = v23;
  v66 = v25;
  sub_76A6E0();

  sub_769440();
  v26 = *(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8));
  v27 = *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8));
  v64 = v12;
  if (v26 >= v27 >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  v29 = swift_allocObject();
  *(v29 + 56) = 0xD000000000000017;
  *(v29 + 64) = 0x80000000007D51E0;
  *(v29 + 72) = 0u;
  *(v29 + 88) = 0u;
  *(v29 + 104) = sub_207E44;
  *(v29 + 112) = v28;
  v30 = v22;

  sub_7572D0();
  v31 = sub_7572B0();
  v33 = v32;
  v64(v4, v19);
  v65 = v31;
  v66 = v33;
  sub_76A6E0();

  sub_769440();
  if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v61 = v67;
  v34 = swift_allocObject();
  v60 = xmmword_77B6C0;
  *(v34 + 16) = xmmword_77B6C0;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v35 = swift_allocObject();
  *(v35 + 56) = 0xD00000000000001ELL;
  *(v35 + 64) = 0x80000000007D5200;
  *(v35 + 72) = 0;
  *(v35 + 80) = 0xD00000000000001FLL;
  *(v35 + 88) = 0x80000000007D5220;
  *(v35 + 96) = 0;
  sub_7572D0();
  v36 = sub_7572B0();
  v38 = v37;
  v39 = v19;
  v40 = v19;
  v41 = v64;
  v64(v4, v39);
  v65 = v36;
  v66 = v38;
  sub_76A6E0();
  *(v34 + 32) = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = v30;
  v43 = swift_allocObject();
  strcpy((v43 + 56), "Edit Triggers");
  *(v43 + 70) = -4864;
  *(v43 + 80) = 0;
  *(v43 + 88) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = sub_207E4C;
  *(v43 + 104) = v42;
  v44 = v30;

  sub_7572D0();
  v45 = sub_7572B0();
  v47 = v46;
  v41(v4, v40);
  v65 = v45;
  v66 = v47;
  sub_76A6E0();

  *(v34 + 40) = v43;
  v48 = swift_allocObject();
  *(v48 + 16) = v60;
  type metadata accessor for DebugSection();
  v49 = swift_allocObject();
  sub_7572D0();
  v50 = sub_7572B0();
  v52 = v51;
  v41(v4, v40);
  v49[2] = v50;
  v49[3] = v52;
  v49[4] = 0x737465656853;
  v49[5] = 0xE600000000000000;
  v49[6] = v61;
  *(v48 + 32) = v49;
  v53 = swift_allocObject();
  sub_7572D0();
  v54 = sub_7572B0();
  v56 = v55;
  v41(v4, v40);
  v53[2] = v54;
  v53[3] = v56;
  v53[4] = 0x7364726143;
  v53[5] = 0xE500000000000000;
  v53[6] = v34;
  *(v48 + 40) = v53;
  return v48;
}

uint64_t sub_206BA8(uint64_t a1, __n128 a2)
{
  v3 = sub_758B40();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v39 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75F340();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_760280();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7687B0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  v12 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  v15 = sub_765490();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v19 - 8);
  v21 = v30 - v20;
  v22 = sub_BD88(&unk_93F630, &unk_77E230);
  v40 = a1;
  sub_768860();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_268C8(v21);
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v25 = *(v16 + 104);
  v30[1] = v18;
  v25(v18, enum case for FlowPage.onboarding(_:), v15);
  v26 = sub_7570A0();
  v27 = *(*(v26 - 8) + 56);
  v30[0] = v14;
  v27(v14, 1, 1, v26);
  v28 = sub_759E30();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  v42 = &type metadata for OnboardingConfiguration;
  v41[0] = 0;
  sub_768790();
  (*(v31 + 104))(v32, enum case for FlowPresentationContext.infer(_:), v33);
  (*(v35 + 104))(v34, enum case for FlowAnimationBehavior.infer(_:), v36);
  (*(v37 + 104))(v39, enum case for FlowOrigin.inapp(_:), v38);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v29 = sub_758AD0();
  sub_32AC14(v29, 1, v40, v21);

  return (*(v23 + 8))(v21, v22);
}

void sub_207184(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = sub_769210();
  v12 = [v2 initWithSuiteName:v3];

  v4 = v12;
  if (!v12)
  {
    v4 = [objc_opt_self() standardUserDefaults];
  }

  v13 = v4;
  sub_75F840();
  v5 = sub_769210();
  v6 = sub_769210();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = sub_769210();
  v9 = [objc_opt_self() actionWithTitle:v8 style:1 handler:0];

  [v7 addAction:v9];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong presentViewController:v7 animated:1 completion:0];
  }
}

double sub_207368(uint64_t a1, uint64_t a2)
{
  sub_75A920();
  sub_768900();
  sub_768ED0();
  type metadata accessor for AdPrivacyOnboardingStep();
  inited = swift_initStackObject();
  *(inited + 24) = 0;

  sub_76A6E0();
  v3 = sub_4F17F4();
  [v3 setAcknowledgedVersionForPersonalizedAds:0];

  swift_setDeallocating();
  sub_1EB60(inited + 32);
  v4 = sub_769210();
  v5 = sub_769210();
  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = sub_769210();
  v8 = [objc_opt_self() actionWithTitle:v7 style:1 handler:0];

  [v6 addAction:v8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }

  return result;
}

void sub_207588(uint64_t a1, uint64_t a2)
{
  v2 = sub_BD88(&qword_94A558, &qword_78BA10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  sub_7689F0();
  sub_7689E0();
  if (qword_93C878 != -1)
  {
    swift_once();
  }

  v6 = sub_BE38(v2, qword_94BB98);
  (*(v3 + 16))(v5, v6, v2);
  v14 = 0;
  v15 = 0;
  sub_7686E0();

  v7 = sub_769210();
  v8 = sub_769210();
  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = sub_769210();
  v11 = [objc_opt_self() actionWithTitle:v10 style:1 handler:0];

  [v9 addAction:v11];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_2077FC(uint64_t a1, __n128 a2)
{
  v3 = sub_758B40();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v39 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75F340();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_760280();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7687B0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  v12 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  v15 = sub_765490();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v19 - 8);
  v21 = v30 - v20;
  v22 = sub_BD88(&unk_93F630, &unk_77E230);
  v40 = a1;
  sub_768860();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_268C8(v21);
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v25 = *(v16 + 104);
  v30[1] = v18;
  v25(v18, enum case for FlowPage.debugTodayCardTriggers(_:), v15);
  v26 = sub_7570A0();
  v27 = *(*(v26 - 8) + 56);
  v30[0] = v14;
  v27(v14, 1, 1, v26);
  v28 = sub_759E30();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  v41 = 0u;
  v42 = 0u;
  sub_768790();
  (*(v31 + 104))(v32, enum case for FlowPresentationContext.infer(_:), v33);
  (*(v35 + 104))(v34, enum case for FlowAnimationBehavior.infer(_:), v36);
  (*(v37 + 104))(v39, enum case for FlowOrigin.inapp(_:), v38);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v29 = sub_758AD0();
  sub_32AC14(v29, 1, v40, v21);

  return (*(v23 + 8))(v21, v22);
}

uint64_t sub_207DF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_207E64(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *v5;
  Width = CGRectGetWidth(*&a2);
  v13 = Width;
  if (v11 == 1)
  {
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    CGRectGetWidth(v53);
    v14 = *(v5 + 9);
  }

  else
  {
    v13 = Width * 0.5;
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    v15 = CGRectGetWidth(v54);
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    Height = CGRectGetHeight(v55);
    if (Height >= v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = Height;
    }
  }

  sub_B170(v5 + 10, *(v5 + 13));
  v43 = v14;
  sub_769CA0();
  sub_7673E0();
  v17 = *(v5 + 2);
  v18 = *(v5 + 6);
  if (v11)
  {
    v19 = *(v5 + 2);
  }

  else
  {
    v19 = *(v5 + 6);
  }

  v38 = v19;
  v44 = v13;
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  CGRectGetHeight(v56);
  sub_B170(v5 + 15, *(v5 + 18));
  sub_7673F0();
  v21 = v20;
  v40 = v22;
  v41 = v17;
  if (v11)
  {
    v23 = *(v5 + 1);
    v37 = v23;
  }

  else
  {
    v37 = *(v5 + 1);
    v23 = *(v5 + 5);
    v17 = v18;
  }

  sub_B170(v5 + 15, *(v5 + 18));
  v39 = v23;
  v36 = v21;
  sub_769CA0();
  sub_7673E0();
  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = a4;
  v57.size.height = a5;
  CGRectGetWidth(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = v44;
  v58.size.height = v43;
  CGRectGetHeight(v58);
  v35 = v17;
  if (v11)
  {
    v59.origin.x = a2;
    v59.origin.y = a3;
    v59.size.width = a4;
    v59.size.height = a5;
    v24 = v41;
    CGRectGetWidth(v59);
  }

  else
  {
    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v60.size.width = v44;
    v60.size.height = v43;
    CGRectGetMaxX(v60);
    v24 = v41;
  }

  v25 = v5[2] | v11 ^ 1;
  sub_B170(v5 + 25, *(v5 + 28));
  sub_7665D0();
  sub_B170(v51, v52);
  sub_769CA0();
  sub_7673E0();
  sub_BEB8(v51);
  v61.origin.x = a2;
  v61.origin.y = a3;
  v42 = a4;
  v61.size.width = a4;
  v61.size.height = a5;
  CGRectGetHeight(v61);
  sub_B170(v5 + 20, *(v5 + 23));
  sub_7673F0();
  v27 = v26;
  v29 = v28;
  v30 = v24;
  v31 = v37;
  if (v25 == 1)
  {
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.height = v43;
    v62.size.width = v44;
    MaxY = CGRectGetMaxY(v62);
    v33 = 56;
    if (v11)
    {
      v33 = 24;
    }

    v31 = MaxY - *&v5[v33] - v29;
    v30 = v38;
  }

  sub_B170(v5 + 20, *(v5 + 23));
  sub_769CA0();
  sub_7673E0();
  if (v11)
  {
    type metadata accessor for TodayListCardLockupContainer();
    sub_6F74F4(*(v5 + 35), a1);
  }

  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.height = v43;
  v63.size.width = v44;
  CGRectGetMaxY(v63);
  v64.origin.x = v30;
  v64.origin.y = v31;
  v64.size.width = v27;
  v64.size.height = v29;
  CGRectGetMaxY(v64);
  v65.origin.x = a2;
  v65.origin.y = a3;
  v65.size.width = v42;
  v65.size.height = a5;
  CGRectGetWidth(v65);
  sub_B170(v5 + 30, *(v5 + 33));
  sub_7665D0();
  sub_B170(v51, v52);
  sub_769CA0();
  sub_7673E0();
  sub_BEB8(v51);
  sub_867FC((v5 + 328), &v49);
  if (v50)
  {
    sub_10914(&v49, v51);
    sub_867FC((v5 + 288), &v47);
    if (v48)
    {
      sub_10914(&v47, &v49);
      sub_867FC((v5 + 368), &v45);
      if (v46)
      {
        sub_10914(&v45, &v47);
        sub_B170(v51, v52);
        sub_7673F0();
        v66.origin.y = a3;
        v66.origin.x = a2;
        v66.size.width = v42;
        v66.size.height = a5;
        CGRectGetHeight(v66);
        v67.origin.x = v35;
        v67.origin.y = v39;
        v67.size.width = v36;
        v67.size.height = v40;
        CGRectGetMaxY(v67);
        v68.origin.x = v35;
        v68.origin.y = v39;
        v68.size.width = v36;
        v68.size.height = v40;
        CGRectGetMaxY(v68);
        sub_B170(&v49, v50);
        sub_769CA0();
        sub_7673E0();
        sub_B170(v51, v52);
        sub_7673E0();
        sub_B170(&v47, v48);
        sub_769CA0();
        sub_7673E0();
        sub_BEB8(&v47);
        sub_BEB8(&v49);
        return sub_BEB8(v51);
      }

      sub_8699C(&v45);
      sub_BEB8(&v49);
    }

    else
    {
      sub_8699C(&v47);
    }

    sub_BEB8(v51);
  }

  else
  {
    sub_8699C(&v49);
  }

  sub_867FC((v5 + 288), v51);
  if (v52)
  {
    sub_B170(v51, v52);
    sub_7673E0();
    sub_BEB8(v51);
  }

  else
  {
    sub_8699C(v51);
  }

  sub_867FC((v5 + 328), v51);
  if (v52)
  {
    sub_B170(v51, v52);
    sub_7673E0();
    sub_BEB8(v51);
  }

  else
  {
    sub_8699C(v51);
  }

  sub_867FC((v5 + 288), v51);
  if (v52)
  {
    sub_B170(v51, v52);
    sub_7673E0();
    return sub_BEB8(v51);
  }

  return sub_8699C(v51);
}

uint64_t sub_2086D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_208720(uint64_t result, int a2, int a3)
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_2087DC@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2087F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[80])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20884C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2088CC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v36[1] = a2;
  v4 = sub_760280();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36[0] = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = v36 - v7;
  __chkstk_darwin(v8);
  v39 = v36 - v9;
  v10 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v10);
  v40 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v12 - 8);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v36 - v16;
  v18 = type metadata accessor for FlowDestination(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v36 - v23;

  sub_764BF0();
  sub_146CF0(a1, &v43, v17);
  v25 = *(v19 + 48);
  if (v25(v17, 1, v18) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v25(v17, 1, v18) != 1)
    {
      sub_10A2C(v17, &unk_9442D0, &unk_780660);
    }
  }

  else
  {
    sub_61AE8(v17, v24, v26);
  }

  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v27 = 1;
  }

  else
  {
    sub_758AA0();
    sub_758A90();

    sub_764BF0();
    sub_146CF0(a1, &v43, v14);
    if (v25(v14, 1, v18) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v25(v14, 1, v18) != 1)
      {
        sub_10A2C(v14, &unk_9442D0, &unk_780660);
      }
    }

    else
    {
      sub_61AE8(v14, v21, v28);
    }

    sub_D2028(v39);
    sub_20A4D4(v21, type metadata accessor for FlowDestination);
    v29 = v37;
    v30 = *(v37 + 104);
    v31.n128_f64[0] = v30(v38, enum case for FlowPresentationContext.push(_:), v4);
    sub_20A5A4(&qword_943AF8, &protocol conformance descriptor for FlowPresentationContext, v31);
    sub_769430();
    sub_769430();
    if (v43 == v41 && v44 == v42)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_76A950();
    }

    v33 = *(v29 + 8);
    v33(v38, v4);

    if (v32)
    {
      v33(v39, v4);
      sub_20A4D4(v40, type metadata accessor for FlowPresentationHints);
      v27 = 1;
    }

    else
    {
      v34 = v36[0];
      v30(v36[0], enum case for FlowPresentationContext.replace(_:), v4);
      sub_769430();
      sub_769430();
      if (v43 == v41 && v44 == v42)
      {
        v27 = 1;
      }

      else
      {
        v27 = sub_76A950();
      }

      v33(v34, v4);
      v33(v39, v4);
      sub_20A4D4(v40, type metadata accessor for FlowPresentationHints);
    }
  }

  sub_20A4D4(v24, type metadata accessor for FlowDestination);
  return v27 & 1;
}

uint64_t sub_208ED0(uint64_t a1, void *a2, __n128 a3)
{
  v5 = sub_75F340();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_760280();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 viewControllers];
  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v15 = sub_769460();

  if (v15 >> 62)
  {
    v16 = sub_76A860();
  }

  else
  {
    v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
  }

  if (v16)
  {
    v17.n128_f64[0] = (*(v10 + 104))(v13, enum case for FlowPresentationContext.replace(_:), v9);
    sub_20A5A4(&qword_943B00, &protocol conformance descriptor for FlowPresentationContext, v17);
    v18 = sub_7691C0();
    (*(v10 + 8))(v13, v9);
    v19 = v18 ^ 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = type metadata accessor for FlowPresentationHints(0);
  (*(v6 + 16))(v8, a1 + *(v20 + 20), v5);
  v21 = (*(v6 + 88))(v8, v5);
  if (v21 != enum case for FlowAnimationBehavior.infer(_:))
  {
    if (v21 == enum case for FlowAnimationBehavior.never(_:))
    {
      v19 = 0;
    }

    else if (v21 == enum case for FlowAnimationBehavior.always(_:))
    {
      v19 = 1;
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  return v19 & 1;
}

uint64_t sub_2091B8(uint64_t a1, void *a2, void *a3)
{
  v112 = a3;
  v107 = sub_7687C0();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v6 - 8);
  v111 = &v104 - v7;
  v115 = sub_760280();
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v104 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v113 = &v104 - v10;
  __chkstk_darwin(v11);
  v117 = &v104 - v12;
  v13 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v13);
  v118 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v15 - 8);
  v109 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v104 - v18;
  v20 = type metadata accessor for FlowDestination(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = &v104 - v25;

  sub_764BF0();
  sub_146CF0(a1, &v120, v19);
  v27 = *(v21 + 48);
  v28 = v27(v19, 1, v20);
  v110 = v23;
  v108 = v27;
  if (v28 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v20) != 1)
    {
      sub_10A2C(v19, &unk_9442D0, &unk_780660);
    }
  }

  else
  {
    sub_61AE8(v19, v26, v29);
  }

  sub_758AA0();
  sub_758A90();
  v30 = [a2 traitCollection];
  v31 = v117;
  v114 = v26;
  sub_D2028(v117);

  v32 = sub_32CB94(a2);
  if (!v32)
  {
    sub_BD88(&qword_94DDC0, qword_77DE00);
    sub_20A480();
    swift_allocError();
    v43 = sub_768F20();
    (*(v116 + 8))(v31, v115);
LABEL_69:
    v102 = v114;
    sub_20A4D4(v118, type metadata accessor for FlowPresentationHints);
    sub_20A4D4(v102, type metadata accessor for FlowDestination);
    return v43;
  }

  v33 = v32;
  v34 = [v33 traitCollection];
  v126 = v33;
  sub_BE70(0, &unk_94DCA0, UINavigationController_ptr);
  v35 = v33;
  sub_BD88(&qword_940BF8, &qword_780670);
  v36 = swift_dynamicCast();
  v37 = v110;
  if ((v36 & 1) == 0)
  {
    *&v122 = 0;
    v120 = 0u;
    v121 = 0u;
  }

  sub_764BF0();
  v38 = v109;
  sub_146CF0(a1, v119, v109);
  v39 = v108;
  if (v108(v38, 1, v20) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v41 = v39(v38, 1, v20);
    v42 = v116;
    if (v41 != 1)
    {
      sub_10A2C(v38, &unk_9442D0, &unk_780660);
    }
  }

  else
  {
    sub_61AE8(v38, v37, v40);
    v42 = v116;
  }

  v44 = sub_758A60();
  v46 = v45;
  v47 = v111;
  sub_758A80();
  v48 = sub_471418(v37, v34, v44, v46, v47, &v120, v112, 1);

  sub_10A2C(v47, &unk_944FF0, &unk_783C00);
  sub_20A4D4(v37, type metadata accessor for FlowDestination);
  sub_10A2C(&v120, &unk_9442E0, &unk_783C10);
  if (!v48)
  {

    sub_BD88(&qword_94DDC0, qword_77DE00);
    (*(v106 + 104))(v105, enum case for ActionOutcome.unsupported(_:), v107);
    v43 = sub_768F30();

    (*(v42 + 8))(v117, v115);
    goto LABEL_69;
  }

  v49 = [v35 presentingViewController];

  v51 = v115;
  v112 = v35;
  if (!v49)
  {
    goto LABEL_33;
  }

  v52 = [v35 viewControllers];
  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v53 = sub_769460();

  if (!(v53 >> 62))
  {
    if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_17;
    }

LABEL_32:

LABEL_33:
    v66 = sub_208ED0(v118, v35, v50);
    v67 = *(v42 + 104);
    v68.n128_f64[0] = v67(v113, enum case for FlowPresentationContext.push(_:), v51);
    sub_20A5A4(&qword_943AF8, &protocol conformance descriptor for FlowPresentationContext, v68);
    sub_769430();
    sub_769430();
    LODWORD(v116) = v66;
    if (v120 == v119[0])
    {
      v69 = 1;
    }

    else
    {
      v69 = sub_76A950();
    }

    v34 = *(v42 + 8);
    (v34)(v113, v51);

    if (v69)
    {
      [v48 setModalPresentationCapturesStatusBarAppearance:1];
      v120 = xmmword_94DCF8;
      v121 = xmmword_94DD08;
      v122 = xmmword_94DD18;
      v123 = xmmword_94DD28;
      v124 = xmmword_94DD38;
      v70 = qword_94DD48;
      v125 = qword_94DD48;
      v71 = BYTE8(xmmword_94DD18);
      v72 = v117;
      v73 = v112;
      if (BYTE8(xmmword_94DD18) != 255)
      {
        v74 = v120;
        v76 = v121;
        v75 = *&v122;
        v77 = v123;
        v78 = v124;
        v79 = v120;
        v80 = [v48 popoverPresentationController];
        if (v80)
        {
          v81 = v80;
          if (v71)
          {
            sub_1781E4(&v120, v119);
            v82 = v81;
            [v82 setSourceView:v74];
            v83 = v82;
            v73 = v112;
            [v83 setSourceRect:{*(&v74 + 1), v76, v75}];
            sub_10A2C(&v120, &unk_93FEF0, &unk_7834B0);
          }

          else
          {
            [v80 setBarButtonItem:v74];
          }

          [v81 setPopoverLayoutMargins:{v77, v78}];
          [v81 setPermittedArrowDirections:v70];
        }

        else
        {
          if (qword_93DF00 != -1)
          {
            swift_once();
          }

          v101 = sub_768FF0();
          sub_BE38(v101, qword_9A0430);
          sub_BD88(&qword_93FD00, &unk_77DF10);
          sub_7685F0();
          *(swift_allocObject() + 16) = xmmword_77B6D0;
          sub_768540();
          sub_768EB0();
        }

        sub_10A2C(&v120, &unk_93FEF0, &unk_7834B0);
      }

      [v73 pushViewController:v48 animated:v116 & 1];
      goto LABEL_68;
    }

    v84 = v104;
    v67(v104, enum case for FlowPresentationContext.replace(_:), v51);
    v72 = v117;
    sub_769430();
    sub_769430();
    if (v120 == v119[0])
    {
      (v34)(v84, v51);

      v73 = v112;
    }

    else
    {
      v85 = sub_76A950();
      (v34)(v84, v51);

      v73 = v112;
      if ((v85 & 1) == 0)
      {
LABEL_68:
        sub_BD88(&qword_94DDC0, qword_77DE00);
        (*(v106 + 104))(v105, enum case for ActionOutcome.performed(_:), v107);
        v43 = sub_768F30();

        (v34)(v72, v51);
        goto LABEL_69;
      }
    }

    objc_opt_self();
    v86 = swift_dynamicCastObjCClass();
    if (!v86)
    {
      v94 = [v73 viewControllers];
      sub_BE70(0, &qword_9434E0, UIViewController_ptr);
      v52 = sub_769460();

      v46 = (v52 >> 62);
      if (!(v52 >> 62))
      {
        if (!*(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_55:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v46 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v52 = sub_45EDF0();
        }

        v96 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
        if (v96)
        {
          v97 = v96 - 1;
          v46 = *(&stru_20.cmd + 8 * v97 + (v52 & 0xFFFFFFFFFFFFFF8));
          *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)) = v97;
          *&v120 = v52;
          v98 = [v46 tabBarItem];
          [v48 setTabBarItem:v98];

          v99 = v48;
          sub_769440();
          if (*(&dword_10 + (v120 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v120 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
LABEL_60:
            sub_769500();
            isa = sub_769450().super.isa;

            v73 = v112;
            [v112 setViewControllers:isa animated:v116 & 1];

            goto LABEL_68;
          }

LABEL_78:
          sub_7694C0();
          goto LABEL_60;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_75:
      if (!sub_76A860())
      {
        goto LABEL_76;
      }

      goto LABEL_55;
    }

    v53 = v86;
    v52 = v48;
    v87 = [v73 viewControllers];
    v46 = sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    v35 = sub_769460();

    v47 = v35 >> 62;
    if (!(v35 >> 62))
    {
      v88 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
LABEL_47:
      v72 = v117;
      if (v88)
      {
        v89 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v47 || (v89 & 1) == 0)
        {
          v35 = sub_45EDF0();
        }

        v90 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
        if (v90)
        {
          v91 = v90 - 1;
          v92 = *(&stru_20.cmd + 8 * v91 + (v35 & 0xFFFFFFFFFFFFFF8));
          *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) = v91;

          v93 = sub_769450().super.isa;

          v73 = v112;
          [v112 setViewControllers:v93];

          [v73 presentViewController:v53 animated:0 completion:0];
          goto LABEL_68;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_75;
    }

LABEL_72:
    v88 = sub_76A860();
    goto LABEL_47;
  }

  if (!sub_76A860())
  {
    goto LABEL_32;
  }

LABEL_17:
  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_72;
    }

    v54 = *(v53 + 32);
  }

  v55 = v54;

  if ((sub_392758(v55) & 1) == 0)
  {
    goto LABEL_23;
  }

  v56 = swift_allocObject();
  v57 = v112;
  *(v56 + 16) = v112;
  v58 = v57;
  if (sub_392758(v48))
  {

LABEL_23:

LABEL_30:
    v35 = v112;
    goto LABEL_33;
  }

  v59 = [v48 navigationItem];
  v60 = [v59 rightBarButtonItems];
  if (v60)
  {
    v61 = v60;
    sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
    v62 = sub_769460();
  }

  else
  {
    v62 = _swiftEmptyArrayStorage;
  }

  *&v120 = v62;
  sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
  sub_BE70(0, &qword_955FA0, UIAction_ptr);
  v63 = swift_allocObject();
  *(v63 + 16) = sub_C5E80;
  *(v63 + 24) = v56;

  v127.value.super.super.isa = sub_76A1F0();
  v127.is_nil = 0;
  v64.super.super.isa = sub_769830(UIBarButtonSystemItemClose, v127, v128).super.super.isa;
  if (!(v62 >> 62) || (result = sub_76A860(), (result & 0x8000000000000000) == 0))
  {
    sub_4A7B58(0, 0, v64.super.super.isa);
    v65 = sub_769450().super.isa;

    [v59 setRightBarButtonItems:v65];

    v42 = v116;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

unint64_t sub_20A480()
{
  result = qword_94A560;
  if (!qword_94A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94A560);
  }

  return result;
}

uint64_t sub_20A4D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20A534()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_20A56C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_20A5A4(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_760280();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20A5FC()
{
  result = qword_94A568;
  if (!qword_94A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94A568);
  }

  return result;
}

id sub_20A6AC()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    MaxX = CGRectGetMaxX(v16);
  }

  else
  {
    MaxX = 0.0;
  }

  [v0 bounds];
  v12 = MaxX + 10.0;
  v13 = CGRectGetMaxX(v17) - MaxX + -20.0;
  [v0 bounds];
  return [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15DebugSliderCell_slider] setFrame:{v12, 0.0, v13, CGRectGetHeight(v18)}];
}

double sub_20A868()
{
  v1 = sub_759FE0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_75F820())
  {
    v6 = sub_75F810();
    v7 = *(v6 + 16);
    if (v7)
    {
      v26 = v1;
      v27 = v0;
      v9 = *(v2 + 16);
      v8 = v2 + 16;
      v10 = *(v8 + 64);
      v22 = v6;
      v11 = v6 + ((v10 + 32) & ~v10);
      v23 = *(v8 + 56);
      v24 = v9;
      v25 = v8;
      v12 = (v8 - 8);
      v9(v4, v11, v1);
      while (1)
      {
        v18 = sub_759FB0();
        sub_759FD0();
        v19 = sub_769210();

        sub_759FC0();
        v20 = sub_769210();

        sub_759FA0();
        v21 = sub_769210();

        if (v18)
        {
          v14 = [objc_opt_self() imageNamed:{v21, v22}];

          if (v14)
          {
            v13 = &selRef_addBulletedListItemWithTitle_description_image_;
            v21 = v14;
          }

          else
          {
            v21 = [objc_allocWithZone(UIImage) init];
            v13 = &selRef_addBulletedListItemWithTitle_description_image_;
            v14 = v21;
          }

          v15 = v19;
          v16 = v20;
        }

        else
        {
          v13 = &selRef_addBulletedListItemWithTitle_description_symbolName_;
          v14 = v19;
          v15 = v20;
          v16 = v21;
        }

        [v27 *v13];

        v17 = v26;
        (*v12)(v4, v26);
        v11 += v23;
        if (!--v7)
        {
          break;
        }

        v24(v4, v11, v17);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_20AB04()
{
  v1 = v0;
  v2 = sub_768C60();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7573C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  sub_75F800();
  isa = sub_769450().super.isa;

  v12 = [v10 linkWithBundleIdentifiers:isa];

  if (v12)
  {
    v13 = v12;
    sub_757390();
    sub_7572F0();
    (*(v7 + 8))(v9, v6);
    v14 = sub_769210();

    [v13 setDisplayLanguage:v14];
  }

  v15 = [v1 buttonTray];
  [v15 setPrivacyLinkController:v12];

  v16 = [objc_opt_self() boldButton];
  v21._object = 0x80000000007D56C0;
  v21._countAndFlagsBits = 0xD00000000000001FLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_75B750(v21, v22);
  v17 = sub_769210();

  [v16 setTitle:v17 forState:0];

  [v16 addTarget:v1 action:"didTapContinue" forControlEvents:64];
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_768BB0();
  sub_BDD0(v19);
  sub_BDD0(v20);
  sub_769E70();
  (*(v3 + 8))(v5, v2);
  v18 = [v1 buttonTray];
  [v18 addButton:v16];
}

uint64_t type metadata accessor for OnboardingWelcomeViewController(uint64_t a1)
{
  result = qword_94A5D8;
  if (!qword_94A5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B098(uint64_t a1)
{
  result = sub_75F850();
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

id sub_20B138(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_758110();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider31OnboardingWelcomeViewController_onboardingStep;
  v15 = sub_75F850();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v32 = v15;
  v17(&v5[v14], a1);
  v18 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31OnboardingWelcomeViewController_primaryButtonCallback];
  *v18 = a3;
  *(v18 + 1) = a4;

  v33 = a1;
  if (sub_75F820())
  {
    v19 = "Onboarding.Welcome.Description";
    if (a2)
    {
      v19 = "New.Title.NoArcade";
      v20._countAndFlagsBits = 0xD000000000000019;
    }

    else
    {
      v20._countAndFlagsBits = 0xD000000000000022;
    }

    v20._object = (v19 | 0x8000000000000000);
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_75B750(v20, v38);
    v21 = sub_769210();

    v34.receiver = v5;
    v34.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v34, "initWithTitle:detailText:icon:contentLayout:", v21, 0, 0, 2);

    v23 = v22;
    sub_20A868();
  }

  else
  {
    v36._object = 0x80000000007D5630;
    v36._countAndFlagsBits = 0xD000000000000018;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    sub_75B750(v36, v39);
    v37._countAndFlagsBits = 0xD00000000000001ELL;
    v37._object = 0x80000000007D5650;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    sub_75B750(v37, v40);
    v24 = sub_769210();

    v25 = sub_769210();

    (*(v11 + 104))(v13, enum case for SystemAppIcon.AppStore(_:), v10);
    v26 = [objc_opt_self() mainScreen];
    [v26 scale];

    v27 = sub_758100();
    (*(v11 + 8))(v13, v10);
    v35.receiver = v5;
    v35.super_class = ObjectType;
    v28 = objc_msgSendSuper2(&v35, "initWithTitle:detailText:icon:contentLayout:", v24, v25, v27, 2);

    v23 = v28;
  }

  sub_20AB04();
  [v23 setModalInPresentation:1];

  (*(v16 + 8))(v33, v32);
  return v23;
}

void sub_20B4C8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - v11;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v15 = objc_allocWithZone(sub_75FA60());
  *&v4[v14] = sub_75FA50();
  v16 = &v4[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_iconHeadingView;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_iconHeadingView] = v17;
  v19 = qword_93C688;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_imageView];
  v22 = qword_94A5F0;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_BE70(0, &qword_947630, UIImage_ptr), v25 = v22, v26 = sub_76A1C0(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_93C690;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_7666D0();
  v30 = sub_BE38(v29, qword_94A5F8);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_2FA970(v12);

  v34 = qword_93C698;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_16D2A4(&qword_94A610, v69);
  v36 = OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_16D300(v69, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_16D35C(v69);
  [*(*&v5[v18] + OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_titleHeadingView;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_titleHeadingView] = v37;
  v39 = qword_93C6A0;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_BE38(v29, qword_94A638);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_707B9C(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for LockupCollectionSearchResultContentView();
  v68.receiver = v5;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v43;
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v47 setClipsToBounds:0];
  v48 = sub_20CE0C();
  v49 = [objc_allocWithZone(UICollectionView) initWithFrame:v48 collectionViewLayout:{a1, a2, a3, a4}];

  v50 = OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView;
  v51 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView];
  *&v47[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView] = v49;
  v52 = v49;

  if (!v52)
  {
    __break(1u);
    goto LABEL_21;
  }

  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v53 = *&v47[v50];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v53 setClipsToBounds:0];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_iconHeadingView]];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_titleHeadingView]];
  v54 = *&v47[v50];
  if (!v54)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v54 setDelegate:v47];
  v55 = *&v47[v50];
  if (!v55)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v56 = objc_opt_self();
  v57 = v55;
  v58 = [v56 clearColor];
  [v57 setBackgroundColor:v58];

  v59 = *&v47[v50];
  if (!v59)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = v59;
  sub_769BD0();
  v62 = sub_769210();

  [v61 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v62];

  v63 = *&v47[v50];
  if (!v63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v64 = swift_getObjCClassFromMetadata();
  v65 = v63;
  sub_769BD0();
  v66 = sub_769210();

  sub_769BD0();
  v67 = sub_769210();

  [v65 registerClass:v64 forSupplementaryViewOfKind:v66 withReuseIdentifier:v67];

  if (*&v47[v50])
  {
    [v47 addSubview:?];

    return;
  }

LABEL_26:
  __break(1u);
}

double sub_20BC9C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
    sub_7614F0();
    swift_allocObject();

    v3 = sub_761500();

    *(v2 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsScrollObserver) = v3;
  }

  return result;
}

uint64_t (*sub_20BD58(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_20BDF0;
}

void sub_20BDF0(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    if (swift_weakLoadStrong())
    {
      v4 = v3[4];
      sub_7614F0();
      swift_allocObject();
      *(v4 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsScrollObserver) = sub_761500();
    }
  }

  free(v3);
}

uint64_t sub_20BEC4()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_94A5F0 = v5;
  return result;
}

void sub_20BFD0()
{
  qword_94A628 = &type metadata for CGFloat;
  unk_94A630 = &protocol witness table for CGFloat;
  qword_94A610 = 0x4008000000000000;
}

uint64_t sub_20C00C()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_94A650);
  v1 = sub_BE38(v0, qword_94A650);
  if (qword_93D4C0 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99E650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_20C0D4()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_93C6A8 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_94A650);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_766CA0();
  v12 = &protocol witness table for StaticDimension;
  sub_B1B4(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_B1B4(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  sub_34698(&v13, &unk_94A668);
  return sub_34698(&v10, &unk_94A690);
}

id sub_20C2D0(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_listConfiguration];
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

void sub_20C3AC()
{
  v1 = v0;
  v2 = sub_7664F0();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v67 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_7664A0();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75FF90();
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v54 - v8;
  v9 = sub_75D850();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = sub_75CF00();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LockupCollectionSearchResultContentView();
  v81.receiver = v0;
  v81.super_class = v19;
  objc_msgSendSuper2(&v81, "layoutSubviews");
  [v0 bounds];
  v61 = v20;
  [v0 layoutMargins];
  v70 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_listConfiguration + 8);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v15, qword_99B898);
  v22 = [v1 traitCollection];
  (*(v16 + 16))(v18, v21, v15);
  v23 = sub_75CE70();
  if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v26 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v26 = qword_946938;
    }

    v27 = sub_BE38(v9, v26);
    v28 = v58;
    (*(v10 + 16))(v58, v27, v9);
    (*(v10 + 32))(v14, v28, v9);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v10 + 8))(v14, v9);
  }

  sub_75CDB0();

  (*(v16 + 8))(v18, v15);
  v29 = v70 - 1;
  if (__OFSUB__(v70, 1))
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  v30 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_iconHeadingView);
  v80[3] = type metadata accessor for ImageHeadingView();
  v80[4] = &protocol witness table for UIView;
  v80[0] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_titleHeadingView);
  v79[3] = type metadata accessor for SearchHeadingView();
  v79[4] = &protocol witness table for UIView;
  v79[0] = v31;
  v32 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView);
  if (!v32)
  {
    __break(1u);
    return;
  }

  v58 = v1;
  v77[0] = v32;
  sub_BE70(0, &unk_94A790, UICollectionView_ptr);
  v33 = v30;
  v34 = v31;
  sub_766580();
  v18 = v62;
  v29 = v59;
  v1 = v60;
  if (qword_93C690 != -1)
  {
    goto LABEL_22;
  }

LABEL_16:
  v35 = sub_7666D0();
  v36 = sub_BE38(v35, qword_94A5F8);
  v37 = *(v35 - 8);
  v70 = *(v37 + 16);
  v57 = v37 + 16;
  v70(v29, v36, v35);
  v38 = v1[13];
  v56 = enum case for FontSource.useCase(_:);
  v55 = v38;
  v38(v29);
  v39 = sub_766CA0();
  v77[3] = v39;
  v77[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v77);
  v75 = v18;
  v76 = &protocol witness table for FontSource;
  v40 = sub_B1B4(v74);
  v41 = v1[2];
  v41(v40, v29, v18);
  sub_766CB0();
  v42 = v1[1];
  v42(v29, v18);
  if (qword_93C6A0 != -1)
  {
    swift_once();
  }

  v43 = sub_BE38(v35, qword_94A638);
  v70(v29, v43, v35);
  v55(v29, v56, v18);
  v75 = v39;
  v76 = &protocol witness table for StaticDimension;
  sub_B1B4(v74);
  v72 = v18;
  v73 = &protocol witness table for FontSource;
  v44 = sub_B1B4(v71);
  v41(v44, v29, v18);
  sub_766CB0();
  v42(v29, v18);
  v72 = &type metadata for CGFloat;
  v73 = &protocol witness table for CGFloat;
  v71[0] = 0x4030000000000000;
  v45 = v64;
  sub_75FF80();
  v47 = v65;
  v46 = v66;
  (*(v65 + 16))(v63, v45, v66);
  sub_134D8(v80, v77);
  sub_134D8(v79, v74);
  sub_134D8(v78, v71);
  sub_75FFB0();
  swift_allocObject();
  v77[0] = sub_75FFA0();
  (*(v47 + 8))(v45, v46);
  sub_BEB8(v78);
  sub_BEB8(v79);
  sub_BEB8(v80);
  sub_210A54(&unk_947620, 255, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
  v48 = v67;
  v49 = v58;
  sub_7672C0();
  (*(v68 + 8))(v48, v69);
  v50 = &v49[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsUpdateBlock];
  swift_beginAccess();
  v51 = *v50;
  if (*v50)
  {
    v52 = *(v50 + 1);

    v51(v53);
    sub_F704(v51, v52);
  }
}

id sub_20CE0C()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_2101FC;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_507AD4;
  v7[3] = &unk_889280;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

id sub_20CF38(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = Strong[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_listConfiguration];
  v7 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_listConfiguration + 8];
  [Strong layoutMargins];
  v10 = sub_21021C(v6, v7, a2, v8, v9);
  if (v10)
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2106C8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_4E4820;
    aBlock[3] = &unk_8892A8;
    v12 = _Block_copy(aBlock);
    v13 = v10;

    [v13 setVisibleItemsInvalidationHandler:v12];

    _Block_release(v12);
    v5 = v13;
  }

  return v10;
}

void sub_20D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsScrollObserver);
    v5 = Strong;

    if (v4)
    {
      sub_7614F0();
      sub_75ADE0();
    }
  }
}

uint64_t sub_20D398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_BD88(&qword_944CD8, &qword_7844A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v65 - v7;
  v9 = sub_762810();
  sub_210A54(&qword_9566A0, 255, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_75C750();
  v11 = v69;
  if (!v69)
  {
    return result;
  }

  v65[1] = v9;
  v66 = v8;
  v67 = v6;
  v68 = v5;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_objectGraph] = a2;

  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_iconHeadingView];
  sub_762800();
  v13 = *(v12 + OBJC_IVAR____TtC18ASMessagesProvider16ImageHeadingView_headingLabel);
  v14 = sub_769210();

  [v13 setText:v14];

  v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_titleHeadingView];
  sub_7627F0();
  v16 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_headingLabel);
  v17 = sub_769210();

  [v16 setText:v17];

  v18 = sub_7627C0();
  if (v18)
  {
    v19 = v18;
    sub_764C60();
    if (v20)
    {
      v21 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButton);
      v22 = sub_769210();

      [v21 setTitle:v22 forState:0];

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v19;
      v25 = (v15 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler);
      v26 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler);
      v27 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler + 8);
      *v25 = sub_2101BC;
      v25[1] = v24;

      sub_F704(v26, v27);

      goto LABEL_7;
    }
  }

  [*(v15 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButton) setTitle:0 forState:0];
  v28 = (v15 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler);
  v29 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler);
  v30 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider17SearchHeadingView_detailButtonHandler + 8);
  *v28 = 0;
  v28[1] = 0;
  sub_F704(v29, v30);
LABEL_7:
  swift_getKeyPath();
  sub_75C7B0();

  v31 = v69;
  v32 = sub_769A00();
  v33 = sub_7699D0();

  v34 = 4;
  if (v33)
  {
    v34 = 2;
  }

  if (v32)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  result = sub_20C2D0(((v33 & 1) == 0), v35);
  v36 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v36)
  {
    __break(1u);
    goto LABEL_57;
  }

  swift_allocObject();
  swift_weakInit();
  v37 = objc_allocWithZone(sub_BD88(&unk_94A760, &unk_78BF50));
  v38 = v36;
  v39 = sub_767A20();
  v40 = OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupDataSource;
  v41 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupDataSource];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupDataSource] = v39;
  v42 = v39;

  v43 = swift_allocObject();
  *(v43 + 16) = (v33 & 1) == 0;
  *(v43 + 24) = v35;
  sub_767A30();

  if ((v33 & 1) == 0)
  {
    v46 = v11;
    v47 = sub_7627E0();
    v48 = v47;
    v49 = v47 & 0xFFFFFFFFFFFFFF8;
    v50 = v47 >> 62;
    if (!(v47 >> 62))
    {
      v51 = *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));
      if (v51 >= v35)
      {
        v52 = v35;
      }

      else
      {
        v52 = *(v49 + 16);
      }

      if (v51 >= v52)
      {
LABEL_20:
        if ((v48 & 0xC000000000000001) != 0 && v52)
        {
          sub_764F90();

          v53 = 0;
          do
          {
            v54 = v53 + 1;
            sub_76A750(v53);
            v53 = v54;
          }

          while (v52 != v54);
        }

        else
        {
        }

        if (v50)
        {
          v46 = sub_76A870();
          v33 = v55;
          v35 = v56;
          v52 = v57;

          if (v52)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v35 = 0;
          v46 = v48 & 0xFFFFFFFFFFFFFF8;
          v33 = (v48 & 0xFFFFFFFFFFFFFF8) + 32;
          v52 = (2 * v52) | 1;
          if (v52)
          {
LABEL_31:
            sub_76A970();
            swift_unknownObjectRetain_n();
            v58 = swift_dynamicCastClass();
            if (!v58)
            {
              swift_unknownObjectRelease();
              v58 = _swiftEmptyArrayStorage;
            }

            v59 = *(v58 + 2);

            if (!__OFSUB__(v52 >> 1, v35))
            {
              if (v59 == (v52 >> 1) - v35)
              {
                v60 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                v45 = v66;
                if (v60)
                {
LABEL_37:

                  v44 = sub_7627D0();
                  goto LABEL_38;
                }

LABEL_36:
                swift_unknownObjectRelease();
                goto LABEL_37;
              }

              goto LABEL_55;
            }

LABEL_54:
            __break(1u);
LABEL_55:
            swift_unknownObjectRelease_n();
          }
        }

        sub_4A60D0(v46, v33, v35, v52);
        v45 = v66;
        goto LABEL_36;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v47 < 0)
    {
      v46 = v47;
    }

    else
    {
      v46 = v47 & 0xFFFFFFFFFFFFFF8;
    }

    v33 = sub_76A860();
    result = sub_76A860();
    if ((result & 0x8000000000000000) == 0)
    {
      if (v33 >= v35)
      {
        v64 = v35;
      }

      else
      {
        v64 = v33;
      }

      if (v33 >= 0)
      {
        v52 = v64;
      }

      else
      {
        v52 = v35;
      }

      if (sub_76A860() >= v52)
      {
        goto LABEL_20;
      }

      goto LABEL_53;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v44 = v11;
  v45 = v66;
LABEL_38:
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_77D9F0;
  *(v61 + 32) = v44;
  swift_getKeyPath();
  sub_210A54(&unk_94A770, 255, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  sub_210A54(&qword_944CE0, 255, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);

  sub_766770();

  v62 = *&v3[v40];
  if (v62)
  {
    v63 = v62;
    sub_767A60();
  }

  [v3 setNeedsLayout];

  return (*(v67 + 8))(v45, v68);
}

void sub_20DB20(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_objectGraph);
    v8 = Strong;

    if (v7)
    {
      v9 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v5, 1, v9) == 1)
      {

        sub_10A2C(v5, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        sub_32A6C0(a2, 1, v7, v5);

        (*(v10 + 8))(v5, v9);
      }
    }
  }
}

char *sub_20DCC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v8 - 8);
  v10 = v44 - v9;
  v11 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v11 - 8);
  v13 = v44 - v12;
  v14 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v14 - 8);
  v16 = v44 - v15;
  v17 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v17 - 8);
  v19 = v44 - v18;
  v20 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v20 - 8);
  v46 = v44 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v44[3] = v7;
  v45 = v13;
  v23 = Strong;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  sub_769BD0();
  v24 = sub_769210();

  isa = sub_757550().super.isa;
  v26 = [a1 dequeueReusableCellWithReuseIdentifier:v24 forIndexPath:isa];

  v27 = swift_dynamicCastClass();
  if (v27)
  {
    sub_BD88(&qword_944CE8, &qword_78BEE0);
    sub_768700();
    v28 = v47;
    sub_75A110();
    sub_768900();
    v29 = v23;
    sub_768ED0();
    v44[2] = v47;
    v30 = sub_758C70();
    v31 = v46;
    (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
    v32 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider35SmallSearchLockupCollectionViewCell_lockupView];
    v33 = sub_BD88(&unk_948740, &unk_784920);
    (*(*(v33 - 8) + 56))(v19, 1, 1, v33);
    v34 = sub_75BD30();
    (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
    v35 = sub_BD88(&unk_9457F0, qword_783FD0);
    v36 = v45;
    (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
    v37 = sub_765870();
    (*(*(v37 - 8) + 56))(v10, 1, 1, v37);
    sub_4A18A4(v28, v32, v19, v29, 0, 0, v31, v16, v10, v36);
    sub_10A2C(v10, &unk_9457D0, &unk_785630);
    v32[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v32 setNeedsLayout];
    sub_10A2C(v36, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v16, &unk_9457E0, &qword_785640);
    sub_10A2C(v19, &unk_948730, &qword_788DD0);
    v38 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v39 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
    sub_759190();
    v40 = sub_759210();
    sub_210A54(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v44[1] = v40;
    sub_75A0C0();
    v45 = v28;
    if (sub_764EE0())
    {
      v44[0] = v38;
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v41 = sub_75CF00();
      sub_BE38(v41, qword_99B898);
      sub_75CDD0();
      [v39 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v39 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      v42 = *&v32[v44[0]];
      sub_75A050();
    }

    [v27 setNeedsLayout];

    sub_10A2C(v46, &unk_94A780, &unk_788DC0);
  }

  else
  {
  }

  return v27;
}

void sub_20E438(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_768AB0();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_947600, &qword_7883F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_BD88(&qword_944CE8, &qword_78BEE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = sub_757640();
  v55 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v50 = v14;
  v48 = v11;
  v57 = Strong;
  v46 = OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView;
  v19 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = [v19 indexPathsForVisibleItems];
  v21 = sub_769460();

  v56 = v21;
  v22 = v48;
  v54 = *(v21 + 16);
  if (!v54)
  {
LABEL_21:

    return;
  }

  v23 = 0;
  v52 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v53 = OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupDataSource;
  v51 = v55 + 16;
  v49 = (v12 + 48);
  v45 = (v12 + 32);
  v42 = (v47 + 6);
  v39 = (v47 + 4);
  v38 = (v47 + 1);
  v43 = (v12 + 8);
  v24 = (v55 + 8);
  v47 = (v12 + 56);
  v40 = v7;
  v44 = v10;
  while (v23 < *(v56 + 16))
  {
    (*(v55 + 16))(v17, v52 + *(v55 + 72) * v23, v15);
    v25 = *&v57[v53];
    if (!v25)
    {
      (*v24)(v17, v15);
      (*v47)(v10, 1, 1, v22);
LABEL_6:
      sub_10A2C(v10, &unk_947600, &qword_7883F0);
      goto LABEL_7;
    }

    v26 = v25;
    sub_767A40();

    if ((*v49)(v10, 1, v22) == 1)
    {
      (*v24)(v17, v15);
      goto LABEL_6;
    }

    v27 = v10;
    v28 = v15;
    v29 = v4;
    (*v45)(v50, v27, v22);
    v30 = *&v57[v46];
    if (!v30)
    {
      goto LABEL_24;
    }

    v31 = v30;
    isa = sub_757550().super.isa;
    v33 = [v31 cellForItemAtIndexPath:isa];

    if (v33)
    {
      swift_getKeyPath();
      v4 = v29;
      v34 = v48;
      v35 = v50;
      sub_7686F0();

      if ((*v42)(v4, 1, v5) == 1)
      {

        (*v43)(v35, v34);
        (*v24)(v17, v28);
        sub_10A2C(v4, &unk_93FF30, &unk_77DB10);
        v22 = v34;
        v15 = v28;
      }

      else
      {
        v36 = v40;
        (*v39)(v40, v4, v5);
        sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
        sub_769C90();
        if ((v58 & 1) == 0)
        {
          sub_75F4B0();
        }

        (*v38)(v36, v5);
        v22 = v48;
        (*v43)(v50, v48);
        v15 = v28;
        (*v24)(v17, v28);
      }
    }

    else
    {
      v22 = v48;
      (*v43)(v50, v48);
      (*v24)(v17, v28);
      v4 = v29;
      v15 = v28;
    }

    v10 = v44;
LABEL_7:
    if (v54 == ++v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_20EB34(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LockupCollectionSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void (*sub_20ECAC(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_20BD58(v2);
  return sub_215A4;
}

uint64_t sub_20ED1C()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_20ED78(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_20EE38(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_20EFD0;
}

uint64_t sub_20EF10(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_210A54(&qword_94A738, a2, type metadata accessor for LockupCollectionSearchResultContentView, &unk_78BDF8);
  result = sub_210A54(&unk_94A740, v3, type metadata accessor for LockupCollectionSearchResultContentView, &unk_78BE28);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_20EF94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_20EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), unsigned int a7, void (*a8)(char *, uint64_t, uint64_t), double a9, double a10, double a11, double a12, double a13, double a14, void *a15, uint64_t a16)
{
  v94 = a8;
  v93 = a7;
  v90 = a5;
  v91 = a6;
  v87 = a3;
  v88 = a4;
  v104 = a2;
  v86 = a1;
  v96 = sub_7664A0();
  v92 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75FF90();
  v99 = *(v17 - 8);
  v100 = v17;
  __chkstk_darwin(v17);
  v97 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v98 = &v77 - v20;
  v103 = sub_762D10();
  v105 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ImageHeadingView();
  if (qword_93C688 != -1)
  {
    swift_once();
  }

  v23 = qword_94A5F0;
  if (qword_93C690 != -1)
  {
    swift_once();
  }

  v24 = sub_7666D0();
  v25 = sub_BE38(v24, qword_94A5F8);
  if (qword_93C698 != -1)
  {
    swift_once();
  }

  v26 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  v27 = [a15 traitCollection];
  v102 = v26;
  v28 = sub_769E10();

  v29 = objc_opt_self();
  v84 = v28;
  v81 = [v29 configurationWithFont:v28];
  v30 = [v23 imageByApplyingSymbolConfiguration:?];
  v31 = v30;
  v101 = v24;
  if (v30)
  {
    [v30 size];
  }

  v32 = sub_7670D0();
  swift_allocObject();
  v33 = sub_7670B0();

  v34 = [a15 traitCollection];
  v89 = v25;
  sub_769E10();

  v35 = sub_7653B0();
  *(&v115 + 1) = v35;
  v83 = sub_210A54(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  *&v116 = v83;
  v36 = sub_B1B4(&v114);
  v37 = *(v35 - 8);
  v38 = *(v37 + 104);
  v82 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v79 = v37 + 104;
  v80 = v38;
  v38(v36);
  sub_765C30();
  sub_BEB8(&v114);
  sub_762D00();
  v39 = sub_762CF0();
  v41 = v40;
  v42 = *(v105 + 8);
  v105 += 8;
  v78 = v42;
  v42(v22, v103);
  v43 = *(v41 + 8);

  swift_unknownObjectRetain();
  sub_2FB4BC(v33, &protocol witness table for LayoutViewPlaceholder, v39, v43, qword_94A610, &v114);

  swift_unknownObjectRelease();
  sub_16C320(&v114, &v119);
  v44 = swift_allocObject();
  sub_16C3BC(&v119, (v44 + 16));
  swift_allocObject();
  v104 = sub_767090();

  swift_unknownObjectRelease();

  sub_BEB8(&v114);
  if (qword_93C6A0 != -1)
  {
    swift_once();
  }

  v45 = v101;
  v46 = sub_BE38(v101, qword_94A638);
  if (qword_93C6A8 != -1)
  {
    swift_once();
  }

  sub_BE38(v45, qword_94A650);
  if (qword_93C6B0 != -1)
  {
    swift_once();
  }

  v47 = [a15 traitCollection];
  v86 = v46;
  sub_769E10();

  *(&v115 + 1) = v35;
  *&v116 = v83;
  v48 = sub_B1B4(&v114);
  v80(v48, v82, v35);
  sub_765C30();
  sub_BEB8(&v114);
  sub_762D00();
  v49 = sub_762CF0();
  v51 = v50;
  v78(v22, v103);
  v52 = swift_allocObject();
  v53 = v91;
  *(v52 + 16) = v90;
  *(v52 + 24) = v53;
  swift_allocObject();

  v54 = sub_767090();
  sub_16C41C(&unk_94A668, &v114);
  v55 = swift_allocObject();
  v56 = v117;
  *(v55 + 48) = v116;
  *(v55 + 64) = v56;
  *(v55 + 80) = v118;
  v57 = v115;
  *(v55 + 16) = v114;
  *(v55 + 32) = v57;
  *(v55 + 96) = v49;
  *(v55 + 104) = v51;
  *(v55 + 112) = v54;
  swift_allocObject();
  v58 = sub_767090();
  v59 = swift_allocObject();
  *(v59 + 16) = a16;
  *(v59 + 24) = v93 & 1;
  *(v59 + 32) = v94;
  swift_allocObject();
  v105 = sub_767090();
  *(&v115 + 1) = v32;
  *&v116 = &protocol witness table for LayoutViewPlaceholder;
  v113[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v114 = v104;
  v120 = v32;
  v121 = &protocol witness table for LayoutViewPlaceholder;
  *&v119 = v58;
  v103 = v58;
  v113[3] = v32;
  v113[0] = v105;
  v60 = *(v45 - 8);
  v94 = *(v60 + 16);
  v102 = v60 + 16;
  v61 = v45;
  v62 = v95;
  v94(v95, v89, v61);
  v93 = enum case for FontSource.useCase(_:);
  v63 = v92;
  v91 = *(v92 + 104);
  v64 = v96;
  v91(v62);
  v65 = sub_766CA0();
  v112[3] = v65;
  v112[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v112);
  v110 = v64;
  v111 = &protocol witness table for FontSource;
  v66 = sub_B1B4(v109);
  v67 = *(v63 + 16);
  v67(v66, v62, v64);

  sub_766CB0();
  v68 = *(v63 + 8);
  v68(v62, v64);
  v94(v62, v86, v101);
  (v91)(v62, v93, v64);
  v110 = v65;
  v111 = &protocol witness table for StaticDimension;
  sub_B1B4(v109);
  v107 = v64;
  v108 = &protocol witness table for FontSource;
  v69 = sub_B1B4(v106);
  v67(v69, v62, v64);
  sub_766CB0();
  v68(v62, v64);
  v107 = &type metadata for CGFloat;
  v108 = &protocol witness table for CGFloat;
  v106[0] = 0x4030000000000000;
  v70 = v98;
  sub_75FF80();
  v72 = v99;
  v71 = v100;
  (*(v99 + 16))(v97, v70, v100);
  sub_134D8(&v114, v112);
  sub_134D8(&v119, v109);
  sub_134D8(v113, v106);
  sub_75FFB0();
  swift_allocObject();
  v73 = sub_75FFA0();
  (*(v72 + 8))(v70, v71);
  sub_BEB8(v113);
  sub_BEB8(&v119);
  sub_BEB8(&v114);
  *&v114 = v73;
  sub_210A54(&unk_94A750, 255, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
  sub_7665A0();
  v75 = v74;

  return v75;
}

double sub_20FC68()
{
  v1 = sub_75DAB0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_7656C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_762810();
  sub_210A54(&qword_9566A0, 255, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  if (!v32)
  {
    return 0.0;
  }

  v30 = v3;
  v31 = v2;
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  v29 = v0;

  sub_765660();
  swift_getKeyPath();
  sub_75C7B0();

  v6 = v32;
  v7 = sub_769A00();
  v8 = sub_7699D0();

  v9 = &dword_4;
  if (v8)
  {
    v9 = (&dword_0 + 2);
  }

  if (v7)
  {
    v9 = (&dword_0 + 1);
  }

  v28 = v9;
  HIDWORD(v27) = v8 ^ 1;
  v10 = sub_762800();
  v12 = v11;
  v13 = sub_7627F0();
  v15 = v14;
  if (sub_7627C0())
  {
    v16 = sub_764C60();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_765630();
  v21 = v20;
  v23 = v22;
  v24 = sub_527DE4();
  swift_getObjectType();
  sub_20EFFC(v10, v12, v13, v15, v16, v18, BYTE4(v27) & 1, v28, v21, v23, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v24, v29);
  v19 = v25;
  swift_unknownObjectRelease();

  (*(v30 + 8))(v5, v31);
  return v19;
}

uint64_t sub_20FFB4()
{
  sub_BEB8((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_20FFEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_210024()
{
  sub_BEB8((v0 + 16));
  sub_BEB8((v0 + 56));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

void sub_210084()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_75FA60());
  *(v0 + v2) = sub_75FA50();
  sub_76A840();
  __break(1u);
}

uint64_t sub_210168()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2101C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_210204(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_21021C(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_769BD0();
  v15 = v8;
  v16 = sub_769210();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v41 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_BD88(&unk_93F5C0, &unk_77C600);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77D9F0;
  *(v21 + 32) = v17;
  sub_BE70(0, &unk_956250, NSCollectionLayoutSupplementaryItem_ptr);
  v22 = v17;
  isa = sub_769450().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v28 = v27;
    swift_unknownObjectRelease();
    v10 = v28 - a4 - a5;
    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v41];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (a1)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_2106D0(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_BD88(&unk_947600, &qword_7883F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_BD88(&qword_944CE8, &qword_78BEE0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_objectGraph);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_lockupDataSource);
    if (v14)
    {

      v15 = v14;
      sub_767A40();

      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v12, v7, v8);
        sub_768700();
        v19 = sub_764D80();

        if (!v19)
        {
          (*(v9 + 8))(v12, v8);

          return;
        }

        v20 = sub_BD88(&unk_93F630, &unk_77E230);
        sub_768860();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v4, 1, v20) != 1)
        {
          sub_32A6C0(v19, 1, v13, v4);

          (*(v9 + 8))(v12, v8);
          (*(v21 + 8))(v4, v20);
          return;
        }

        (*(v9 + 8))(v12, v8);

        v16 = &unk_93F980;
        v17 = &qword_77EDA0;
        v18 = v4;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8, v10);
    }

    v16 = &unk_947600;
    v17 = &qword_7883F0;
    v18 = v7;
LABEL_7:
    sub_10A2C(v18, v16, v17);
  }
}

uint64_t sub_210A54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_210AB0()
{
  result = qword_94A7A0;
  if (!qword_94A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94A7A0);
  }

  return result;
}

unint64_t sub_210B24()
{
  result = qword_94A7B0;
  if (!qword_94A7B0)
  {
    sub_758E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94A7B0);
  }

  return result;
}

uint64_t sub_210B84(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v85 = a1;
  v58 = sub_7687B0();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_758E20();
  v82 = *(v80 - 8);
  __chkstk_darwin(v80);
  v67 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = v55 - v5;
  v6 = sub_75F450();
  v81 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_7580D0();
  v63 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v84 = sub_764CF0();
  v13 = *(v84 - 1);
  __chkstk_darwin(v84);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_7614C0();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v59 = sub_768F90();
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  sub_3DF774(_swiftEmptyArrayStorage);
  sub_10DD04(_swiftEmptyArrayStorage);
  v76 = v17;
  sub_7614B0();
  sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768900();
  sub_768ED0();
  swift_getObjectType();
  sub_758DE0();
  v18 = sub_758330();
  swift_unknownObjectRelease();
  (*(v13 + 8))(v15, v84);
  swift_getObjectType();
  v74 = v12;
  v55[1] = v18;
  sub_758220();
  v19 = sub_75D5A0();
  v20 = *(v19 + 16);
  if (v20)
  {
    v84 = *(v81 + 16);
    v21 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v55[0] = v19;
    v22 = v19 + v21;
    v83 = *(v81 + 72);
    v68 = enum case for RateAction.Parameter.rating(_:);
    v77 = v82 + 1;
    v78 = (v82 + 13);
    v82 = (v81 + 8);
    v72 = (v63 + 16);
    v71 = (v63 + 88);
    v70 = enum case for LegacyAppState.openable(_:);
    v66 = (v63 + 8);
    v65 = (v63 + 96);
    v64 = enum case for RateAction.Parameter.version(_:);
    v79 = v6;
    v81 += 16;
    v84(v8, v19 + v21, v6);
    while (1)
    {
      v23 = sub_758DF0();
      if ((v24 & 1) == 0)
      {
        v38 = v23;
        v39 = sub_75F410();
        v41 = v40;
        v42 = v69;
        v43 = v80;
        (*v78)(v69, v68, v80);
        v44 = sub_758E10();
        v46 = v45;
        (*v77)(v42, v43);
        if (v39 == v44 && v41 == v46)
        {

          v6 = v79;
LABEL_15:
          v86 = v38;
          sub_76A910();
          sub_7614A0();

          (*v82)(v8, v6);
          goto LABEL_4;
        }

        v47 = sub_76A950();

        v6 = v79;
        if (v47)
        {
          goto LABEL_15;
        }
      }

      v25 = v73;
      v26 = v75;
      (*v72)(v73, v74, v75);
      v27 = (*v71)(v25, v26);
      if (v27 != v70)
      {
        (*v82)(v8, v6);
        (*v66)(v25, v26);
        goto LABEL_4;
      }

      (*v65)(v25, v26);
      v28 = *&v25[*(sub_BD88(&unk_94DE40, &qword_78C080) + 48)];
      v29 = sub_75E270();
      (*(*(v29 - 8) + 8))(v25, v29);
      v30 = sub_75F410();
      v32 = v31;
      v33 = v67;
      v34 = v80;
      (*v78)(v67, v64, v80);
      v35 = sub_758E10();
      v37 = v36;
      (*v77)(v33, v34);
      if (v30 == v35 && v32 == v37)
      {
        break;
      }

      v48 = sub_76A950();

      v6 = v79;
      if (v48)
      {
        goto LABEL_17;
      }

      (*v82)(v8, v79);

LABEL_4:
      v22 += v83;
      if (!--v20)
      {
        goto LABEL_19;
      }

      v84(v8, v22, v6);
    }

    v6 = v79;
LABEL_17:
    v49 = [v28 stringValue];
    sub_769240();

    sub_7614A0();

    (*v82)(v8, v6);
    goto LABEL_4;
  }

LABEL_19:

  v50 = v56;
  sub_768790();
  sub_75D580();
  v51 = v63;
  v52 = v59;
  (*(v57 + 8))(v50, v58);

  sub_72D808(v53, 1, v62);

  sub_768F00();

  swift_unknownObjectRelease();

  (*(v51 + 8))(v74, v75);
  (*(v60 + 8))(v76, v61);
  return v52;
}

uint64_t sub_211838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_211880(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 16) == 1)
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();
    v8 = *(v6 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 24) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_7BFE8(0, *(v8 + 2) + 1, 1, v8);
      *(v6 + 24) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_7BFE8((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[2 * v11];
    *(v12 + 4) = sub_1EBDCC;
    *(v12 + 5) = v7;
    *(v6 + 24) = v8;
    return swift_endAccess();
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

double sub_2119A0()
{
  v1 = sub_768380();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7683C0();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2121E0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_889460;
  v8 = _Block_copy(aBlock);

  sub_7683A0();
  v13 = _swiftEmptyArrayStorage;
  sub_1A937C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_1A93C4(&qword_9406F0, &qword_940350, &unk_77F850);
  sub_76A5A0();
  sub_769980();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

double sub_211C74(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 16) == 1)
    {
      *(Strong + 16) = 0;
      v3 = Strong;
      swift_beginAccess();
      v4 = *(v3 + 24);
      v5 = *(v4 + 16);
      if (v5)
      {

        v6 = v4 + 40;
        do
        {
          v7 = *(v6 - 8);

          v7(v8);

          v6 += 16;
          --v5;
        }

        while (v5);

        v9 = v3;
      }

      else
      {
        v9 = v3;
      }

      *(v9 + 24) = _swiftEmptyArrayStorage;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_211D6C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_211DD0()
{
  v9 = sub_769960();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_769920();
  __chkstk_darwin(v4);
  v5 = sub_7683C0();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  v6 = sub_12EA98();
  v8[0] = "isScrollingAccessQueue";
  v8[1] = v6;
  sub_7683A0();
  v10 = _swiftEmptyArrayStorage;
  sub_1A937C(&qword_9483F0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_BD88(&qword_9483F8, qword_78C180);
  sub_1A93C4(&unk_948400, &qword_9483F8, qword_78C180);
  sub_76A5A0();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 32) = sub_769990();
  return v0;
}

double sub_212030(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_2119A0();
  }

  return result;
}

void sub_21203C()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_212174;
  *(v2 + 24) = v0;
  v4[4] = sub_2EC28;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1EB578;
  v4[3] = &unk_889410;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

double sub_212190(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2121A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2121E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_212228()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_99B970);
  sub_BE38(v0, qword_99B970);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21238C(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v46 = a1;
  sub_75CE20();
  if (qword_93D588 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E8A8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_766CA0();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_B1B4(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_766CB0();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_75CE00();
  if (qword_93D590 != -1)
  {
    swift_once();
  }

  v42 = sub_BE38(v6, qword_99E8C0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v54);
  v44(v17, v5, v2);
  sub_766CB0();
  v49(v5, v2);
  sub_75CED0();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_766CB0();
  v22 = v49;
  v49(v5, v2);
  sub_75CEA0();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_B1B4(v54);
  v21(v26, v5, v2);
  sub_766CB0();
  v22(v5, v2);
  sub_75CE90();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v54);
  v21(v28, v5, v2);
  sub_766CB0();
  v22(v5, v2);
  sub_75CEF0();
  if (qword_93D5A0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_BE38(v45, qword_99E8F0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v54);
  v21(v32, v5, v2);
  sub_766CB0();
  v49(v5, v2);
  sub_75CEE0();
  if (qword_93D598 != -1)
  {
    swift_once();
  }

  v33 = sub_BE38(v29, qword_99E8D8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_B1B4(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_766CB0();
  v38 = v49;
  v49(v5, v2);
  sub_75CE60();
  sub_75CE40();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_B1B4(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_B1B4(v54);
  v37(v39, v5, v2);
  sub_766CB0();
  v38(v5, v2);
  return sub_75CE50();
}

uint64_t sub_212BE0()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_99B988);
  sub_BE38(v0, qword_99B988);
  if (qword_93C6B8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B970);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_212D78(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_7664A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_766690();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  sub_161DC(v14, a5);
  v34 = sub_BE38(v14, a5);
  v46 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  *&v45 = 0x4030000000000000;
  v35 = v13;
  sub_7666A0();
  if (qword_93DB90 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  v16 = sub_BE38(v15, qword_99FAA8);
  v17 = *(v15 - 8);
  v33 = *(v17 + 16);
  v32 = v17 + 16;
  v33(v11, v16, v15);
  v18 = v9[13];
  v31 = enum case for FontSource.useCase(_:);
  v30 = v18;
  v18(v11);
  v19 = sub_766CA0();
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_B1B4(&v42);
  v40 = v8;
  v41 = &protocol witness table for FontSource;
  v20 = sub_B1B4(&v39);
  v21 = v9[2];
  v21(v20, v11, v8);
  sub_766CB0();
  v22 = v9[1];
  v22(v11, v8);
  if (qword_93DB98 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v15, qword_99FAC0);
  v33(v11, v23, v15);
  v30(v11, v31, v8);
  v40 = v19;
  v41 = &protocol witness table for StaticDimension;
  sub_B1B4(&v39);
  v38[3] = v8;
  v38[4] = &protocol witness table for FontSource;
  v24 = sub_B1B4(v38);
  v21(v24, v11, v8);
  sub_766CB0();
  v22(v11, v8);
  v25 = v34;
  v26 = v34 + v14[8];
  *(v26 + 24) = &type metadata for Double;
  *(v26 + 32) = &protocol witness table for Double;
  *v26 = a2;
  v27 = v25 + v14[9];
  *(v27 + 24) = &type metadata for Double;
  *(v27 + 32) = &protocol witness table for Double;
  *v27 = a3;
  sub_10914(&v45, v25);
  (*(v36 + 32))(v25 + v14[5], v35, v37);
  sub_10914(&v42, v25 + v14[6]);
  return sub_10914(&v39, v25 + v14[7]);
}

void sub_213200()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_99B9D0 = sub_76A0C0(v3, v2).super.isa;
}

id sub_213294()
{
  v1 = v0;
  v2 = sub_7674E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_767510();
  v38 = *(v6 - 8);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  v12 = sub_769B50();

  v13 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_gradientBlurView;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_gradientBlurView];
  if (v12)
  {
    v37 = v3;
    if (v14)
    {
      [v14 setHidden:1];
    }

    v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_contentView];
    [v15 addSubview:{*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_titleLabel], v37}];
    [v15 addSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_subtitleView]];
    v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_kindLabel];
    [v16 setNumberOfLines:0];
    v17 = [v16 layer];
    [v17 setCompositingFilter:0];

    [v15 addSubview:v16];
    v39 = 0u;
    v40 = 0u;
    sub_6E46A8(&v39);
    v18 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_separatorView;
    v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_separatorView];
    if (v19 || (((*(v37 + 104))(v5, enum case for Separator.Position.top(_:), v2), *(&v40 + 1) = sub_766970(), v41 = &protocol witness table for ZeroDimension, sub_B1B4(&v39), sub_766960(), sub_7674F0(), v20 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v21 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator, swift_beginAccess(), v22 = *(v38 + 40), v23 = v20, v22(&v20[v21], v9, v6), swift_endAccess(), v23, (v24 = *&v1[v18]) == 0) ? (v25 = 0) : (objc_msgSend(v24, "removeFromSuperview"), v25 = *&v1[v18]), *&v1[v18] = v23, v33 = v23, v25, objc_msgSend(v15, "addSubview:", v33), v33, objc_msgSend(v1, "setNeedsLayout"), v33, (v19 = *&v1[v18]) != 0))
    {
      [v19 setHidden:0];
    }
  }

  else
  {
    if (v14 || ((v29 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v30 = sub_4AA654(0), (v31 = *&v1[v13]) == 0) ? (v32 = 0) : ([v31 removeFromSuperview], v32 = *&v1[v13]), (*&v1[v13] = v30, v35 = v30, v32, objc_msgSend(*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView], "addSubview:", v35), v35, objc_msgSend(v1, "setNeedsLayout"), v35, (v36 = *&v1[v13]) != 0) && (objc_msgSend(v36, "setUserInteractionEnabled:", 0), (v14 = *&v1[v13]) != 0)))
    {
      [v14 setHidden:0];
    }

    v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView];
    [v26 addSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_titleLabel]];
    [v26 addSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_subtitleView]];
    v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_kindLabel];
    [v27 setNumberOfLines:1];
    [v26 addSubview:v27];
    v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_separatorView];
    if (v28)
    {
      [v28 setHidden:1];
    }

    sub_2137BC();
  }

  return [v1 setNeedsLayout];
}

id sub_2137BC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_shadowView];
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  [v2 setHidden:v4 == &dword_0 + 2];
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  LOBYTE(v4) = sub_769B50();

  if ((v4 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] overrideUserInterfaceStyle];
    sub_769240();
    v7 = sub_769210();

    v15[3] = sub_BE70(0, &qword_954EE0, NSString_ptr);
    v15[0] = v7;
    v8 = v7;
    sub_6E46A8(v15);
    v9 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_kindLabel] layer];
    [v9 setCompositingFilter:v8];
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v1 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != &dword_0 + 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_borderView];

  return [v13 setHidden:v12];
}

id sub_213A1C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_213C34(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_kindLabel];
  v6 = [v5 text];
  if (v6)
  {
    v8 = v6;
    v9 = sub_769240();
    v11 = v10;

    if (!a2)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (v9 == a1 && v11 == a2)
    {

LABEL_16:

      return result;
    }

    v13 = sub_76A950();

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v14 = sub_769210();
LABEL_12:

  [v5 setText:v14];

  [v2 setNeedsLayout];
  return result;
}

void sub_213D94(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_titleLabel];
  v5 = [v4 attributedText];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_10:
    if (qword_93DF30 != -1)
    {
      swift_once();
    }

    v8 = qword_9A04C0;
    v9 = *algn_9A04C8;
    v10 = qword_9A04D0;
    v11 = [v2 traitCollection];
    if (sub_769A00())
    {

      if (a1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v34 = sub_7699D0();

      if (v34)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      if (a1)
      {
LABEL_14:
        v37 = v4;
        v40 = v2;
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        v12 = a1;
        v36 = v10;
        v38 = v10;
        v13 = sub_769FF0();
        v14 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v12];
        v15 = [v12 length];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = v13;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_2158B8;
        *(v17 + 24) = v16;
        v45 = sub_2158D0;
        v46 = v17;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_2157DC;
        v44 = &unk_889508;
        v18 = _Block_copy(&aBlock);
        v19 = v14;
        v20 = v13;

        [v12 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v15 usingBlock:{0, v18}];

        _Block_release(v18);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        else
        {
          v22 = [v40 traitCollection];
          v23 = objc_allocWithZone(NSMutableAttributedString);
          v24 = v38;
          v25 = [v23 initWithAttributedString:v19];
          v26 = [v19 length];
          v27 = swift_allocObject();
          *(v27 + 16) = v38;
          *(v27 + 24) = v22;
          *(v27 + 32) = v25;
          *(v27 + 40) = 1;
          v28 = swift_allocObject();
          *(v28 + 16) = sub_119AC;
          *(v28 + 24) = v27;
          v45 = sub_2636C;
          v46 = v28;
          aBlock = _NSConcreteStackBlock;
          v42 = 1107296256;
          v43 = sub_10C1C;
          v44 = &unk_889580;
          v29 = _Block_copy(&aBlock);
          v30 = v24;
          v31 = v22;
          v32 = v25;

          [v19 enumerateAttributesInRange:0 options:v26 usingBlock:{0x100000, v29}];

          _Block_release(v29);
          v33 = swift_isEscapingClosureAtFileLocation();

          if ((v33 & 1) == 0)
          {
            v2 = v40;
            v10 = v36;
            v4 = v37;
LABEL_22:
            [v4 setAttributedText:v32];

            [v2 setNeedsLayout];
            return;
          }
        }

        __break(1u);
        return;
      }
    }

    v35 = v10;
    v32 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_BE70(0, &qword_9562D0, NSAttributedString_ptr);
  v39 = a1;
  v7 = sub_76A1C0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }
}

void sub_2142DC(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_216CDC(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v8 = v7;
    v9 = sub_76A1C0();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_214468(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2144BC;
}

void sub_2144BC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_216B98();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_216B98();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_2145D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppPromotionCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_214AA8(v10);
  AppPromotionCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_gradientBlurView];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView];
    v21 = v19;
    [v20 frame];
    if (CGRectGetHeight(v49) > 0.0)
    {
      [v20 frame];
      Height = CGRectGetHeight(v50);
      [v20 frame];
      v23 = CGRectGetHeight(v51);
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_kindLabel] frame];
      v24 = Height - (v23 - CGRectGetMinY(v52));
      v25 = (v24 + -50.0) / Height;
      v26 = (v24 + 30.0) / Height;
      v27 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY] = v25;
      v28 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView;
      v29 = [*&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v31 = v30;

      v32 = *&v21[v27];
      v33 = [*&v21[v28] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v34 = [*&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v35 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY] = v25;
      v36 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView;
      v37 = [*&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v39 = v38;

      v40 = *&v21[v35];
      v41 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v39, v40}];

      sub_4A9908(v26);
      v42 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v21[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY] = v26;
      v43 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v45 = v44;

      v46 = *&v21[v42];
      v47 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v45, v46}];
    }

    sub_216E5C(v10);
  }

  else
  {
    sub_216E5C(v10);
  }
}

uint64_t sub_214AA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 traitCollection];
  v9 = sub_769A00();

  if (v9)
  {
    if (qword_93C6D0 != -1)
    {
      swift_once();
    }

    v10 = qword_99B9B8;
  }

  else
  {
    if (qword_93C6C8 != -1)
    {
      swift_once();
    }

    v10 = qword_99B9A0;
  }

  v11 = sub_BE38(v4, v10);
  sub_6D040(v11, v7);
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_shadowView];
  v96 = sub_758E80();
  v97 = &protocol witness table for UIView;
  v68 = v12;
  *&v95 = v12;
  v13 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_contentView];
  v93 = sub_75CD70();
  v94 = &protocol witness table for UIView;
  v65 = v13;
  v91 = &protocol witness table for UIView;
  *&v92 = v13;
  v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_borderView];
  v90 = v93;
  v63 = v14;
  *&v89 = v14;
  v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView];
  v87 = sub_BE70(0, &qword_93E550, UIView_ptr);
  v88 = &protocol witness table for UIView;
  v55 = v87;
  v60 = v15;
  *&v86 = v15;
  v16 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView];
  v84 = sub_759210();
  v85 = &protocol witness table for UIView;
  v59 = v16;
  *&v83 = v16;
  v17 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkFallbackView];
  v81 = type metadata accessor for AppPromotionIAPFallbackView(0);
  v82 = &protocol witness table for UIView;
  v58 = v17;
  *&v80 = v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v69 = Strong;
    v67 = type metadata accessor for VideoView(0);
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v66 = 0;
    v67 = 0;
  }

  v64 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_gradientBlurView];
  v70 = v7;
  if (v64)
  {
    v62 = type metadata accessor for MediaOverlayGradientBlurView();
    v61 = &protocol witness table for UIView;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v19 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_kindLabel];
  v78 = sub_75BB20();
  v79 = &protocol witness table for UILabel;
  v76 = &protocol witness table for UILabel;
  *&v77 = v19;
  v20 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_titleLabel];
  v75 = v78;
  v53 = v20;
  v54 = v19;
  *&v74 = v20;
  v21 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_subtitleView];
  v72 = type metadata accessor for AppPromotionSubtitleView(0);
  v73 = &protocol witness table for CustomLayoutView;
  *&v71 = v21;
  v22 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_separatorView];
  if (v22)
  {
    v56 = type metadata accessor for SeparatorView(0);
    v57 = &protocol witness table for UIView;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v23 = type metadata accessor for AppPromotionCardLayout(0);
  v24 = (a1 + v23[17]);
  v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView];
  v24[3] = v55;
  v24[4] = &protocol witness table for UIView;
  *v24 = v25;
  v26 = (a1 + v23[18]);
  v27 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView];
  v26[3] = type metadata accessor for SubscriptionLockupView();
  v26[4] = &protocol witness table for UIView;
  *v26 = v27;
  v28 = *&v21[qword_962AD8];
  v29 = v22;
  v30 = v25;
  v31 = v27;
  v32 = v68;
  v33 = v65;
  v34 = v63;
  v35 = v60;
  v36 = v59;
  v37 = v58;
  v38 = v64;
  v39 = v64;
  v40 = v54;
  v41 = v53;
  v42 = v21;
  LOBYTE(v28) = [v28 hasContent];
  sub_6D718(v70, a1);
  sub_10914(&v95, a1 + v23[5]);
  sub_10914(&v92, a1 + v23[6]);
  sub_10914(&v89, a1 + v23[7]);
  sub_10914(&v86, a1 + v23[8]);
  sub_10914(&v83, a1 + v23[9]);
  v43 = (a1 + v23[11]);
  *v43 = v69;
  v43[1] = 0;
  v44 = v66;
  v45 = v67;
  v43[2] = 0;
  v43[3] = v45;
  v43[4] = v44;
  v46 = (a1 + v23[12]);
  *v46 = v38;
  v46[1] = 0;
  v47 = v61;
  v48 = v62;
  v46[2] = 0;
  v46[3] = v48;
  v46[4] = v47;
  sub_10914(&v77, a1 + v23[13]);
  sub_10914(&v74, a1 + v23[14]);
  sub_10914(&v71, a1 + v23[15]);
  v49 = (a1 + v23[16]);
  *v49 = v22;
  v49[1] = 0;
  v51 = v56;
  v50 = v57;
  v49[2] = 0;
  v49[3] = v51;
  v49[4] = v50;
  *(a1 + v23[19]) = v28;
  return sub_10914(&v80, a1 + v23[10]);
}

id sub_2151C0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  sub_213D94(0);
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView];
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_7591D0(v14, v5);
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView] setHidden:1];
  [v4 setHidden:0];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkFallbackView] setHidden:0];
  v6 = &v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction];
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction];
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction + 8];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_F704(v7, v8);
  sub_216B98();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:v4];
    [v1 setNeedsLayout];
  }

  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView];
  sub_3D6DD4();

  v13[0] = 0x3FF0000000000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0x3FF0000000000000;
  v13[4] = 0;
  v13[5] = 0;
  [v1 setTransform:v13];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

uint64_t (*sub_215414(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_214468(v2);
  return sub_21028;
}

uint64_t sub_215484()
{
  ObjectType = swift_getObjectType();
  v2 = sub_216CDC(&qword_94A9E0, v1, type metadata accessor for AppPromotionCardView, &unk_78C248);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_2154F8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_216CDC(&qword_94A9E0, v5, type metadata accessor for AppPromotionCardView, &unk_78C248);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_215584(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v4 = v2;
  *a1 = v2;
  sub_216CDC(&qword_94A9E0, v3, type metadata accessor for AppPromotionCardView, &unk_78C248);
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_215640(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView);
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v5 = v4;
  v6 = sub_76A1C0();

  return v6 & 1;
}

uint64_t sub_2157DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_13310(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_BDD0(v13);
}

uint64_t sub_215878()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_2158F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_215910()
{

  return _swift_deallocObject(v0, 41, 7);
}

id sub_21597C(void *a1)
{
  sub_2137BC();

  return [a1 setNeedsLayout];
}

char *sub_2159BC()
{
  ObjectType = swift_getObjectType();
  v105 = sub_7593D0();
  *&v110 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v98 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v2 - 8);
  v107 = &v98 - v3;
  v106 = sub_768C60();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_760AD0();
  v5 = *(v108 - 8);
  __chkstk_darwin(v108);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v98 - v9;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_gradientBlurView] = 0;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_subtitleView;
  v12 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView(0));
  *&v0[v11] = sub_6E5048(0);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_separatorView] = 0;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView;
  *&v0[v13] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView;
  *&v0[v14] = [objc_allocWithZone(type metadata accessor for SubscriptionLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_shadowView] = [objc_allocWithZone(sub_758E80()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_75CD70();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView] = v17;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = sub_7666D0();
  v19 = *(v18 - 8);
  v98 = *(v19 + 56);
  v98(v10, 1, 1, v18);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v5 + 104);
  v102 = v5 + 104;
  v21(v7, enum case for DirectionalTextAlignment.none(_:), v108);
  v22 = sub_75BB20();
  v23 = objc_allocWithZone(v22);
  v101 = v7;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_titleLabel] = sub_75BB10();
  if (qword_93DB90 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v18, qword_99FAA8);
  (*(v19 + 16))(v10, v24, v18);
  v98(v10, 0, 1, v18);
  v21(v101, v20, v108);
  v25 = objc_allocWithZone(v22);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_kindLabel] = sub_75BB10();
  v26 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_borderView] = v26;
  if (qword_93C350 != -1)
  {
    swift_once();
  }

  v116[2] = xmmword_99AEC0;
  v116[3] = unk_99AED0;
  v117 = qword_99AEE0;
  v116[0] = xmmword_99AEA0;
  v116[1] = *algn_99AEB0;
  v27 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView(0));
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkFallbackView] = sub_FDB24(v116, 0.0, 0.0, 0.0, 0.0);
  v115.receiver = v0;
  v115.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_contentView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v31 = v30;
  v32 = v100;
  sub_768C10();
  sub_BDD0(&v111);
  sub_BDD0(&v113);
  sub_769E70();

  v33 = *(v103 + 8);
  v34 = v106;
  v33(v32, v106);
  v108 = v29;
  v35 = *&v28[v29];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v36 = v35;
  sub_768C10();
  sub_BDD0(&v111);
  sub_BDD0(&v113);
  sub_769E70();

  v33(v32, v34);
  v102 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView;
  v37 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v38 = v37;
  sub_768C10();
  sub_BDD0(&v111);
  sub_BDD0(&v113);
  sub_769E70();

  v33(v32, v34);
  v101 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_titleLabel;
  v39 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_titleLabel];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v40 = v39;
  sub_768C10();
  sub_BDD0(&v111);
  sub_BDD0(&v113);
  sub_769E70();

  v33(v32, v34);
  v103 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_kindLabel;
  v41 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_kindLabel];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v42 = v41;
  sub_768C10();
  sub_BDD0(&v111);
  sub_BDD0(&v113);
  sub_769E70();

  v33(v32, v34);
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v28 setClipsToBounds:0];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_shadowView;
  v44 = qword_93C578;
  v45 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_shadowView];
  v46 = v104;
  if (v44 != -1)
  {
    swift_once();
  }

  v47 = sub_765080();
  v48 = sub_BE38(v47, qword_99B5C8);
  v49 = *(v47 - 8);
  v50 = v107;
  (*(v49 + 16))(v107, v48, v47);
  (*(v49 + 56))(v50, 0, 1, v47);
  sub_758E60();

  v51 = *&v28[v43];
  sub_758E40();

  v52 = *&v28[v43];
  v53 = v110;
  v54 = *(v110 + 104);
  LODWORD(v106) = enum case for CornerStyle.continuous(_:);
  v55 = v105;
  v107 = v54;
  (v54)(v46);
  v56 = v52;
  sub_758E70();

  v58 = *(v53 + 8);
  v57 = v53 + 8;
  v59 = v58;
  (v58)(v46, v55);
  v60 = *&v28[v43];
  v61 = [v28 traitCollection];
  v62 = [v61 userInterfaceStyle];

  [v60 setHidden:v62 == &dword_0 + 2];
  v63 = *&v28[v43];
  v64 = v28;
  [v64 addSubview:v63];
  v65 = v108;
  v66 = qword_93C6D8;
  v67 = *&v28[v108];
  if (v66 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = qword_99B9D0;
  [v67 setBackgroundColor:?];

  v68 = *&v28[v65];
  (v107)(v46, v106, v55);
  v69 = v68;
  sub_75CCD0();

  v100 = v59;
  (v59)(v46, v55);
  [v64 addSubview:*&v28[v65]];
  v70 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView;
  [*&v28[v65] addSubview:*&v64[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView]];
  [*&v64[v70] addSubview:*&v28[v102]];
  [*&v64[v70] addSubview:*&v64[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkFallbackView]];
  v71 = *&v28[v101];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v72 = v71;
  v73 = sub_769FD0();
  *&v110 = v57;
  v74 = v73;
  [v72 setTextColor:v73];

  v75 = *(*&v64[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_subtitleView] + qword_962AD8);
  v76 = objc_opt_self();
  v77 = v75;
  v78 = [v76 secondaryLabelColor];
  [v77 setTextColor:v78];

  v79 = *&v28[v103];
  v80 = sub_769FF0();
  [v79 setTextColor:v80];

  v81 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_borderView;
  v82 = *&v64[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_borderView];
  v83 = ObjCClassFromMetadata;
  sub_75CD00();

  v84 = *&v64[v81];
  sub_75CD10();

  [*&v64[v81] setUserInteractionEnabled:0];
  [*&v64[v81] setHidden:1];
  v85 = *&v64[v81];
  (v107)(v46, v106, v55);
  v86 = v85;
  sub_75CCD0();

  (v100)(v46, v55);
  [v64 addSubview:*&v64[v81]];
  sub_213294();
  sub_2137BC();
  sub_BD88(&qword_9477F0, qword_780200);
  v87 = swift_allocObject();
  v110 = xmmword_77B6D0;
  *(v87 + 16) = xmmword_77B6D0;
  *(v87 + 32) = sub_767B80();
  *(v87 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  v88 = swift_allocObject();
  *(v88 + 16) = v110;
  *(v88 + 32) = sub_7677C0();
  *(v88 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F40();
  swift_unknownObjectRelease();

  v89 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView;
  [*&v64[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView] setBackgroundColor:v83];
  [*&v28[v108] addSubview:*&v64[v89]];
  v90 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v91 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupTapGestureRecognizer;
  v92 = *&v64[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupTapGestureRecognizer];
  *&v64[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupTapGestureRecognizer] = v90;

  result = *&v64[v91];
  if (result && ([result setDelegate:v64], (result = *&v64[v91]) != 0) && (result = objc_msgSend(result, "addTarget:action:", v64, "handleTapWithGestureRecognizer:"), *&v64[v91]))
  {
    [*&v64[v89] addGestureRecognizer:?];
    v94 = [v64 traitCollection];

    v95 = [v94 preferredContentSizeCategory];
    v96 = sub_769B50();

    if (v96)
    {
      v97 = *&v64[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_separatorView];
      if (v97)
      {
        [v97 setHidden:0];
      }
    }

    [*&v64[v89] addSubview:*&v64[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView]];
    return v64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_216A54()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_gradientBlurView) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_subtitleView;
  v3 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView(0));
  *(v0 + v2) = sub_6E5048(0);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_separatorView) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView;
  *(v1 + v4) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for SubscriptionLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupTapGestureRecognizer) = 0;
  v6 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  sub_76A840();
  __break(1u);
}

void sub_216B98()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_216CDC(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView);
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v5 = v4;
      v6 = sub_76A1C0();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

uint64_t sub_216CDC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

BOOL sub_216D24(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction] != 0;
    }

    sub_BE70(0, &qword_93E550, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = sub_76A1C0();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_216E5C(uint64_t a1)
{
  v2 = type metadata accessor for AppPromotionCardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_216ED0()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode] = 1;
  v0[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_isCollapsing] = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  v3 = enum case for MediaOverlayStyle.matchSystem(_:);
  v4 = sub_75CA40();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_216FDC(2);
  sub_216FDC(0);
  sub_217140();
  sub_2172D4();

  return v5;
}

void sub_216FDC(uint64_t a1)
{
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v2 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView;
      if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView])
      {
        return;
      }

      v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
      v4 = *&v1[v2];
      *&v1[v2] = v3;

      v5 = *&v1[v2];
      if (!v5)
      {
        return;
      }

      v6 = v5;
      [v1 bounds];
      [v6 setFrame:?];

      v7 = *&v1[v2];
      if (!v7)
      {
        return;
      }

      [v7 setUserInteractionEnabled:0];
      if (!*&v1[v2])
      {
        return;
      }
    }

    else
    {
      v8 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView;
      if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView])
      {
        return;
      }

      [v1 bounds];
      v9 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
      v10 = sub_4AA654(0);
      v11 = *&v1[v8];
      *&v1[v8] = v10;

      v12 = *&v1[v8];
      if (!v12)
      {
        return;
      }

      [v12 setUserInteractionEnabled:0];
      if (!*&v1[v8])
      {
        return;
      }
    }

    [v1 insertSubview:? atIndex:?];
  }
}

void sub_217140()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode);
  sub_2180C8(v2);
  sub_216FDC(v2);
  sub_2180B4(v2);
  v3 = *(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  if (v3 == 2)
  {
    if (v4)
    {
      [v4 setAlpha:0.0];
    }

    v5 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView;
    v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView);
    if (v6)
    {
      v7 = [v6 effect];
      if (!v7)
      {
        v8 = *(v0 + v5);
        if (!v8)
        {
          return;
        }

        v9 = objc_opt_self();
        v10 = v8;
        v12 = [v9 effectWithStyle:7];
        [v10 setEffect:v12];

        v7 = v12;
      }
    }
  }

  else
  {
    if (v3 == 1)
    {
      if (v4)
      {
        [v4 setAlpha:0.0];
      }
    }

    else if (v4)
    {
      [v4 setAlpha:1.0];
    }

    v11 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView);
    if (v11)
    {

      [v11 setEffect:0];
    }
  }
}

void sub_2172D4()
{
  v1 = v0;
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, &v1[v6], v2);
  v8 = sub_75CA20();
  v9 = *(v3 + 8);
  v9(v5, v2);
  [v1 setOverrideUserInterfaceStyle:v8];
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
  if (v10)
  {
    v7(v5, &v1[v6], v2);
    v11 = v10;
    v12 = sub_75CA20();
    v9(v5, v2);
    [v11 setOverrideUserInterfaceStyle:v12];
  }

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView];
  if (v13)
  {
    v7(v5, &v1[v6], v2);
    v14 = v13;
    v15 = sub_75CA20();
    v9(v5, v2);
    [v14 setOverrideUserInterfaceStyle:v15];
  }
}

void sub_2175DC()
{
  if ((v0[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_isCollapsing] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode];
    if (v1 >= 3)
    {
      v2 = v1;
      [v2 frame];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = [v2 superview];
      [v0 convertRect:v11 fromView:{v4, v6, v8, v10}];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      [v0 bounds];
      Height = CGRectGetHeight(v60);
      v61.origin.x = v13;
      v61.origin.y = v15;
      v61.size.width = v17;
      v61.size.height = v19;
      MinY = CGRectGetMinY(v61);
      v22 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView;
      v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
      if (v23 && (v24 = Height - (Height - MinY), v25 = (v24 + -100.0) / Height, v26 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY, *&v23[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY] = v25, v27 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView, v28 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView], v29 = v23, v30 = [v28 layer], objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "startPoint"), v32 = v31, v30, v33 = *&v23[v26], v34 = objc_msgSend(*&v23[v27], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v32, v33), v34, v35 = objc_msgSend(*&v29[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v32, v33), v29, v35, (v36 = *&v0[v22]) != 0) && (v37 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY, *&v36[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY] = v25, v38 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView, v39 = *&v36[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView], v40 = v36, v41 = objc_msgSend(v39, "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "startPoint"), v43 = v42, v41, v44 = *&v36[v37], v45 = objc_msgSend(*&v36[v38], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v43, v44), v40, v45, (v46 = *&v0[v22]) != 0) && (v47 = (v24 + 30.0) / Height, v48 = v46, sub_4A9908(v47), v48, (v49 = *&v0[v22]) != 0))
      {
        v50 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY;
        *&v49[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY] = v47;
        v51 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView;
        v52 = *&v49[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView];
        v58 = v49;
        v53 = [v52 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() endPoint];
        v55 = v54;

        v56 = *&v49[v50];
        v57 = [*&v49[v51] layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v55, v56}];

        sub_2180B4(v1);
      }

      else
      {

        sub_2180B4(v1);
      }
    }
  }
}

void sub_217AB8()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame:?];
  }

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }

  sub_2175DC();
}

id sub_217BBC(uint64_t a1, double a2, double a3)
{
  v29.receiver = v3;
  v29.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v29, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode];
    if ((v8 - 1) >= 2)
    {
      if (v8)
      {
        v9 = v8;
        [v9 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [v9 superview];
        [v3 convertRect:v18 fromView:{v11, v13, v15, v17}];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v30.origin.x = v20;
        v30.origin.y = v22;
        v30.size.width = v24;
        v30.size.height = v26;
        MaxY = CGRectGetMaxY(v30);
        sub_2180B4(v8);
        LOBYTE(v8) = MaxY < a3;
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }

    sub_BE70(0, &qword_94AB00, NSObject_ptr);
    if ((sub_76A1C0() & 1) != 0 && (v8 & 1) == 0)
    {

      return 0;
    }
  }

  return v7;
}

uint64_t type metadata accessor for AppPromotionScrollableContentContainerView(uint64_t a1)
{
  result = qword_94AA20;
  if (!qword_94AA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217EE4(uint64_t a1)
{
  result = sub_75CA40();
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

uint64_t sub_217F94(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_217FC4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21802C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_21807C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void sub_2180B4(id a1)
{
  if (a1 - 1 >= &dword_0 + 2)
  {
  }
}

id sub_2180C8(id result)
{
  if (result - 1 >= &dword_0 + 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2180DC(char *a1, char *a2)
{
  if (a1 == &dword_0 + 2)
  {
    if (a2 == &dword_0 + 2)
    {
      return 1;
    }
  }

  else if (a1 == &dword_0 + 1)
  {
    if (a2 == &dword_0 + 1)
    {
      return 1;
    }
  }

  else if ((a2 - 1) >= 2)
  {
    if (a1)
    {
      if (a2)
      {
        sub_BE70(0, &qword_93E550, UIView_ptr);
        sub_2180C8(a2);
        sub_2180C8(a1);
        v5 = sub_76A1C0();
        sub_2180B4(a1);
        sub_2180B4(a2);
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

double sub_2181F8()
{
  v0 = sub_7656C0();
  v51 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_760530();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760550();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_762D10();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CB00();
  sub_2189E0(&qword_945CB8, &type metadata accessor for PrivacyDefinition, &protocol conformance descriptor for PrivacyDefinition);
  sub_75C750();
  v10 = v56[0];
  if (!v56[0])
  {
    return 0.0;
  }

  v41 = v2;
  v42 = v7;
  v43 = v5;
  v44 = v0;
  v45 = v4;
  v11 = sub_26F08();
  if (qword_93D8B0 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  sub_BE38(v12, qword_99F208);
  swift_getKeyPath();
  sub_75C7B0();

  v13 = v56[0];
  v14 = sub_769E10();

  v52 = v10;
  sub_75CAF0();
  v15 = sub_7653B0();
  v39 = v11;
  v16 = v15;
  v56[3] = v15;
  v38 = sub_2189E0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v56[4] = v38;
  v17 = sub_B1B4(v56);
  v18 = *(v16 - 8);
  v19 = *(v18 + 104);
  v37 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v36 = v19;
  v35[1] = v18 + 104;
  v19(v17);
  v20 = v14;
  sub_765C30();
  sub_BEB8(v56);
  v40 = v20;
  sub_762D00();
  sub_762CE0();
  v21 = *(v46 + 8);
  v22 = v47;
  v21(v9, v47);
  if (qword_93D8B8 != -1)
  {
    swift_once();
  }

  sub_BE38(v12, qword_99F220);
  swift_getKeyPath();
  sub_75C7B0();

  v23 = v55[0];
  v24 = sub_769E10();

  sub_75CAE0();
  v55[3] = v16;
  v55[4] = v38;
  v25 = sub_B1B4(v55);
  v36(v25, v37, v16);
  v26 = v24;
  sub_765C30();
  sub_BEB8(v55);
  sub_762D00();
  sub_762CE0();
  v21(v9, v22);
  if (qword_93CA88 != -1)
  {
    swift_once();
  }

  v27 = v49;
  v28 = sub_BE38(v49, qword_99CAC0);
  (*(v48 + 16))(v50, v28, v27);
  sub_134D8(v56, v54);
  sub_134D8(v55, v53);
  v29 = v42;
  sub_760540();
  swift_getKeyPath();
  v30 = v41;
  sub_75C7B0();

  sub_765630();
  (*(v51 + 8))(v30, v44);
  sub_527DE4();
  sub_2189E0(&unk_951380, &type metadata accessor for PrivacyDefinitionLayout, &protocol conformance descriptor for PrivacyDefinitionLayout);
  v31 = v45;
  sub_7665A0();
  v33 = v32;

  swift_unknownObjectRelease();

  (*(v43 + 8))(v29, v31);
  sub_BEB8(v55);
  sub_BEB8(v56);
  return v33;
}

uint64_t sub_2189E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_218A74(void *a1, double a2, double a3)
{
  v4 = sub_75D850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_757DF0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C618 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v11, qword_99B7E0);
  (*(v12 + 16))(v14, v15, v11);
  v16 = [a1 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v17 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v17 = qword_946938;
  }

  v18 = sub_BE38(v4, v17);
  (*(v5 + 16))(v7, v18, v4);

  (*(v5 + 32))(v10, v7, v4);
  sub_75D800();
  sub_75D830();
  sub_757DB0();
  sub_757E10();
  sub_2190E0(&qword_949E08, &type metadata accessor for InAppPurchaseLockupViewLayout, &protocol conformance descriptor for InAppPurchaseLockupViewLayout);
  sub_766ED0();
  v20 = v19;
  (*(v5 + 8))(v10, v4);
  (*(v12 + 8))(v14, v11);
  return v20;
}

uint64_t sub_218DF4()
{
  v26 = sub_764A60();
  v0 = *(v26 - 8);
  __chkstk_darwin(v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v25 - v4;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765580();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = sub_75DA30();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v27.receiver = v15;
  v27.super_class = v14;
  v17 = objc_msgSendSuper2(&v27, "init");
  sub_75DA20();
  sub_765630();
  v19 = v18;
  v21 = v20;
  v12(v9, v6);
  sub_218A74(v17, v19, v21);

  sub_75DA70();
  sub_764A30();
  sub_2190E0(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v22 = v26;
  sub_76A520();
  v23 = *(v0 + 8);
  v23(v2, v22);
  return (v23)(v5, v22);
}

uint64_t sub_2190E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_219128(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0)) init];
    sub_765730();
    sub_764C60();
    v8 = v7;

    if (v8)
    {
      v9 = sub_769210();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_95CDB8];
    v15 = *&v6[qword_95CDB8];
    v16 = *&v6[qword_95CDB8 + 8];
    *v14 = sub_2196C0;
    v14[1] = v13;

    sub_F704(v15, v16);
    v17 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel(0));
    v18 = v6;
    v19 = sub_523B2C(v18);
    if (v3[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v20 = [*&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] text];
      if (v20)
      {
        v21 = v20;
        v22 = sub_769240();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }
    }

    else
    {
      v22 = sub_765720();
      v24 = v25;
    }

    v27 = &v19[qword_959BD0];
    *v27 = v22;
    v27[1] = v24;

    sub_5241B8();
    v28 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_searchAdTertiaryLabel;
    v29 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_searchAdTertiaryLabel];
    v30 = v19;
    if (v29)
    {
      [v29 removeFromSuperview];
      v29 = *&v3[v28];
    }

    *&v3[v28] = v19;
    v31 = v19;

    sub_1FD89C();
    [v3 addSubview:v31];

    v32 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel;
    v33 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
    if (v33 && ([v33 isHidden] & 1) == 0 && (v34 = *&v3[v32]) != 0)
    {
      v35 = [v34 hasContent];
    }

    else
    {
      v35 = 0;
    }

    v36 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabelPresenter;
    swift_beginAccess();
    sub_38EE0(&v3[v36], v38);
    v37 = v39;
    sub_10A2C(v38, &unk_93FBD0, &qword_77DFA0);
    if (v37 || v35)
    {
      [*&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel] setHidden:1];
    }

    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_isDisplayingSearchAd] = 0;
    [v2 setNeedsLayout];
    v10 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_searchAdTertiaryLabel;
    v11 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_searchAdTertiaryLabel];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v3[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v3[v10] = 0;

    v26 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
    if (v26)
    {

      [v26 setHidden:0];
    }
  }
}

uint64_t sub_219508(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10A2C(v4, &unk_93F980, &qword_77EDA0);
  }

  v8 = sub_765730();
  sub_32A6C0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_219680()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_2196DC()
{
  result = qword_94AA30;
  if (!qword_94AA30)
  {
    sub_762B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AA30);
  }

  return result;
}

uint64_t sub_21973C(uint64_t a1, uint64_t a2)
{
  v3 = sub_758FD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v7 = sub_768F90();
  sub_761230();
  sub_768900();
  sub_768ED0();
  v8 = v24[1];
  sub_761210();
  v9 = (*(v4 + 88))(v6, v3);
  if (v9 == enum case for ArcadeState.notSubscribed(_:))
  {
    (*(v4 + 96))(v6, v3);
    v10 = sub_762B30();
    v11 = sub_75EF40();
    v12 = *(*(v11 - 8) + 8);

    v12(v6, v11);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else if (v9 == enum case for ArcadeState.purchasing(_:))
  {
    (*(v4 + 8))(v6, v3);
    v13 = sub_762B10();

    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 != enum case for ArcadeState.subscribed(_:))
    {
      v18 = enum case for ArcadeState.unknown(_:);
      v19 = v9;
      v20 = sub_762B40();
      if (v19 == v18)
      {

        if (v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = *(v4 + 8);

        v22(v6, v3);
        if (v20)
        {
          goto LABEL_12;
        }
      }

LABEL_14:
      sub_219AB4();
      swift_allocError();
      sub_768F50();

      return v7;
    }

    (*(v4 + 96))(v6, v3);

    v14 = *(sub_BD88(&qword_9438E8, &qword_782D38) + 48);
    v15 = sub_762B20();
    v16 = sub_760A60();
    v17 = *(*(v16 - 8) + 8);

    v17(v6 + v14, v16);
    if (!v15)
    {
      goto LABEL_14;
    }
  }

LABEL_12:

  sub_72D574(v21, 1, a2);

  sub_768F00();

  return v7;
}

unint64_t sub_219AB4()
{
  result = qword_94AA38;
  if (!qword_94AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AA38);
  }

  return result;
}

unint64_t sub_219B1C()
{
  result = qword_94AA40;
  if (!qword_94AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AA40);
  }

  return result;
}

uint64_t sub_219B70@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_219BCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_219C94()
{
  sub_75B0B0();
  sub_219D38();
  sub_75C750();
  if (v6)
  {
    v2 = sub_75B0A0();
    v4 = v3;

    v5 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider32UnifiedMessageCollectionViewCell_placement);
    swift_beginAccess();
    *v5 = v2;
    v5[1] = v4;
  }

  return result;
}

unint64_t sub_219D38()
{
  result = qword_94AA48;
  if (!qword_94AA48)
  {
    sub_75B0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AA48);
  }

  return result;
}

uint64_t sub_219D90()
{
  v0 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v41 - v1;
  v55 = sub_765610();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v4 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_BD88(&qword_940A68, &qword_79AB60);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  __chkstk_darwin(v11);
  v54 = &v41 - v12;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v16 = *(sub_765540() - 8);
  v57 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v48 = v18;
  *(v18 + 16) = xmmword_780120;
  v56 = v18 + v17;
  v60 = 0x3FF0000000000000;
  sub_62634();
  v19 = v15;
  sub_7655D0();
  v59 = 0x4030000000000000;
  v60 = 0x4020000000000000;
  sub_7655B0();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_7655B0();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v25 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v58 + 104);
  v58 += 104;
  v52 = v26;
  v51 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = v55;
  v26(v4, enum case for PageGrid.HorizontalMargins.absolute(_:), v55);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v60) = 0;
  v29 = v2;
  sub_7655D0();
  v60 = 0;
  v50 = v7;
  sub_7655D0();
  v53 = v19;
  sub_765500();
  v60 = 0x3FF0000000000000;
  sub_7655D0();
  v59 = 0x4034000000000000;
  v60 = 0x4024000000000000;
  sub_7655B0();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  v30 = v10;
  sub_7655B0();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v32 = v52;
  v52(v4, v25, v27);
  LOBYTE(v60) = 0;
  sub_7655D0();
  v60 = 0;
  sub_7655D0();
  v33 = v57;
  top = UIEdgeInsetsZero.top;
  v47 = left;
  v49 = v30;
  sub_765500();
  v34 = 2 * v33;
  v59 = 0x4000000000000000;
  v60 = 0x3FF8000000000000;
  sub_7655B0();
  v60 = 0x4034000000000000;
  sub_7655D0();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_7655B0();
  v45 = vdupq_n_s64(0x4041000000000000uLL);
  v42 = v4;
  *v4 = v45;
  v35 = v51;
  v36 = v55;
  v37 = v32;
  v32(v4, v51, v55);
  LOBYTE(v60) = 0;
  sub_7655D0();
  v60 = 0;
  sub_7655D0();
  v38 = v29;
  v39 = v42;
  sub_765500();
  v44 = v34 + v57;
  v60 = 0x4000000000000000;
  sub_7655D0();
  v60 = 0x4034000000000000;
  sub_7655D0();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_7655B0();
  *v39 = v45;
  v37(v39, v35, v36);
  sub_7697A0();
  LOBYTE(v60) = 0;
  v43 = v38;
  sub_7655D0();
  v60 = 0;
  sub_7655D0();
  sub_765500();
  v59 = 0x4000000000000000;
  v60 = 0x4004000000000000;
  sub_7655B0();
  v60 = 0x4038000000000000;
  sub_7655D0();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_7655B0();
  v45 = vdupq_n_s64(0x404A000000000000uLL);
  *v39 = v45;
  v52(v39, v51, v55);
  LOBYTE(v60) = 0;
  sub_7655D0();
  v60 = 0;
  sub_7655D0();
  sub_765500();
  v60 = 0x4008000000000000;
  sub_7655D0();
  v60 = 0x4038000000000000;
  sub_7655D0();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_7655B0();
  *v39 = v45;
  v52(v39, v51, v55);
  LOBYTE(v60) = 0;
  sub_7655D0();
  v60 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_99B9F0 = v48;
  return result;
}

void sub_21A7F4()
{
  v0 = sub_7685A0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_768FF0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7656C0();
  v58 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75B0B0();
  sub_21AF3C(&qword_94AA48, &type metadata accessor for UnifiedMessage, &protocol conformance descriptor for UnifiedMessage);
  sub_75C750();
  v8 = v60[0];
  if (v60[0])
  {
    v56 = v2;
    sub_762C90();
    sub_7688F0();
    v9 = v60[0];
    if (!v60[0])
    {

      return;
    }

    v55 = v1;
    sub_75B0A0();
    v10 = v9;
    v11 = sub_762C80();

    if (!v11)
    {

      return;
    }

    v54 = v10;
    sub_BD88(&qword_94AA50, &qword_78C6E8);
    sub_7688F0();
    if (!v60[0])
    {

      return;
    }

    v53 = v60[0];
    v12 = v11;
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 superview];

      if (!v15)
      {
        v16 = [v12 view];
        if (!v16)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v17 = v16;
        [v16 setHidden:1];

        v18 = [v53 view];
        if (!v18)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v19 = v18;
        v20 = [v12 view];
        if (!v20)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v15 = v20;
        [v19 insertSubview:v20 atIndex:0];
      }

      v21 = [v12 view];
      if (v21)
      {
        v22 = v21;
        [v21 updateTraitsIfNeeded];

        swift_getKeyPath();
        sub_75C7B0();

        sub_765630();
        v24 = v23;
        v26 = v25;
        (*(v58 + 8))(v6, v4);
        v27 = (*(v59 + 144))(v24, v26);
        v29 = v28;
        v30 = [v12 view];
        if (v30)
        {
          v31 = v30;
          v32 = v12;
          [v30 sizeThatFits:{v27, v29}];
          v34 = v33;
          v36 = v35;

          v37 = v57;
          sub_768FB0();
          sub_BD88(&qword_93FD00, &unk_77DF10);
          sub_7685F0();
          *(swift_allocObject() + 16) = xmmword_77B6D0;
          sub_768590();
          v62._object = 0x80000000007D5B00;
          v62._countAndFlagsBits = 0xD00000000000002CLL;
          sub_768580(v62);
          v61 = v7;
          v60[0] = v8;

          sub_768560();
          sub_BDD0(v60);
          v63._countAndFlagsBits = 8250;
          v63._object = 0xE200000000000000;
          sub_768580(v63);
          type metadata accessor for CGSize(0);
          v61 = v38;
          v60[0] = v34;
          v60[1] = v36;
          sub_768560();
          sub_BDD0(v60);
          v64._countAndFlagsBits = 0;
          v64._object = 0xE000000000000000;
          sub_768580(v64);
          sub_7685B0();
          v39 = v55;
          sub_768E90();

          (*(v56 + 8))(v37, v39);
          v40 = [v12 view];
          v41 = v54;
          if (v40)
          {
            v42 = v40;
            v43 = [v40 superview];

            v44 = v53;
            v45 = [v53 view];
            v46 = v45;
            if (v43)
            {
              if (v45)
              {
                sub_2630C();
                v47 = sub_76A1C0();

                if ((v47 & 1) == 0)
                {
LABEL_28:
                  v51 = [v32 view];

                  if (v51)
                  {
                    [v51 setHidden:0];

                    return;
                  }

                  goto LABEL_34;
                }

                goto LABEL_23;
              }

              v46 = v43;
            }

            else if (!v45)
            {
LABEL_23:
              v48 = [v32 view];
              if (!v48)
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v49 = v48;
              [v48 removeFromSuperview];

              v50 = [v32 view];
              if (!v50)
              {
LABEL_39:
                __break(1u);
                return;
              }

              v46 = v50;
              [v50 updateTraitsIfNeeded];
            }

            goto LABEL_28;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

uint64_t sub_21AF3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21AF88(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_766930();
  if (*(v6 + 1) == 1)
  {
    v12 = sub_7672F0();
    v13 = &protocol witness table for Resize;
    v8 = sub_B1B4(v11);
    sub_21B17C(a1, v8);
  }

  else
  {
    sub_134D8(v6 + 104, v10);
    v12 = sub_767340();
    v13 = &protocol witness table for Margins;
    sub_B1B4(v11);
    sub_767330();
  }

  sub_7668F0();
  sub_BEB8(v11);
  sub_7697A0();
  sub_B170((v6 + 144), *(v6 + 168));
  sub_7665D0();
  v10[3] = sub_767340();
  v10[4] = &protocol witness table for Margins;
  sub_B1B4(v10);
  sub_767330();
  sub_767290();
  v12 = sub_7672A0();
  v13 = &protocol witness table for Center;
  sub_B1B4(v11);
  sub_7672B0();
  sub_7668F0();
  return sub_BEB8(v11);
}

uint64_t sub_21B17C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v48 = a2;
  v45 = sub_7672E0();
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v49 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v47 = (&v37 - v12);
  __chkstk_darwin(v13);
  v46 = (&v37 - v14);
  __chkstk_darwin(v15);
  v17 = (&v37 - v16);
  v18 = sub_767340();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_766880();
  v44 = *(v39 - 8);
  __chkstk_darwin(v39);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766850();
  sub_766860();
  sub_769D10();
  CGRectGetWidth(v54);
  v24 = [a1 preferredContentSizeCategory];
  sub_769B50();

  v40 = v7;
  sub_134D8(v7 + 104, v51);
  v42 = v21;
  sub_767330();
  v50[3] = v18;
  v50[4] = &protocol witness table for Margins;
  v41 = v18;
  v25 = sub_B1B4(v50);
  v43 = v19;
  (*(v19 + 16))(v25, v21, v18);
  *v17 = sub_E69A4;
  v17[1] = 0;
  v26 = *(v9 + 104);
  v27 = v45;
  v26(v17, enum case for Resize.Rule.recalculated(_:), v45);
  v28 = enum case for Resize.Rule.unchanged(_:);
  v29 = v46;
  v26(v46, enum case for Resize.Rule.unchanged(_:), v27);
  v30 = v47;
  v26(v47, v28, v27);
  v26(v49, v28, v27);
  v52 = sub_7672F0();
  v53 = &protocol witness table for Resize;
  sub_B1B4(v51);
  sub_767300();
  v31 = v23;
  v38 = v23;
  sub_766860();
  sub_BEB8(v51);
  v32 = v39;
  v52 = v39;
  v53 = &protocol witness table for DisjointStack;
  v33 = sub_B1B4(v51);
  v34 = v44;
  (*(v44 + 16))(v33, v31, v32);
  v26(v17, v28, v27);
  v35 = *(v40 + 48);
  v29[3] = &type metadata for CGFloat;
  v29[4] = &protocol witness table for CGFloat;
  *v29 = v35;
  v26(v29, enum case for Resize.Rule.replaced(_:), v27);
  v26(v30, v28, v27);
  v26(v49, v28, v27);
  sub_767300();
  (*(v43 + 8))(v42, v41);
  return (*(v34 + 8))(v38, v32);
}

uint64_t sub_21B754()
{
  v0 = sub_766840();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766970();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_766830();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  sub_766800();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  sub_7667F0();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v3);
  sub_766960();
  v6(v3, v5, v0);
  return sub_766810();
}

uint64_t sub_21B8FC()
{
  v0 = sub_766840();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  sub_7667F0();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return sub_766800();
}

uint64_t sub_21BA20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BA68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_21BAE4(void *a1, __n128 a2, double a3)
{
  v5 = a2.n128_f64[0];
  v6 = sub_766950();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AF88(a1, 0.0, 0.0, v5, a3);
  sub_7673F0();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_21BC1C(void *a1, __n128 a2, double a3, double a4, double a5)
{
  v9 = a2.n128_f64[0];
  v10 = sub_766950();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AF88(a1, v9, a3, a4, a5);
  sub_7673E0();
  return (*(v11 + 8))(v13, v10);
}

__n128 sub_21BD44@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_21BD58(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21BDAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id sub_21BEB4()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView];
  v2 = [v0 isHighlighted];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_isHighlighted;
  v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_isHighlighted] = v2;
  sub_396E8();
  if (v2)
  {
    v4 = sub_76A0A0();
  }

  else
  {
    v4 = sub_76A000();
  }

  v5 = v4;
  [v1 setBackgroundColor:v4];

  v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator] = v1[v3] ^ 1;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView];

  return [v6 setHidden:?];
}

char *sub_21BF80(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SearchHintView()) init];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SearchHintCollectionViewCell();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView;
  v12 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView];
  v13 = v10;
  [v12 setUserInteractionEnabled:0];
  v14 = [v13 contentView];
  [v14 addSubview:*&v10[v11]];

  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v13;
}

id sub_21C21C(uint64_t a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SearchHintCollectionViewCell();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView];
  v3[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator] = 0;
  [*&v3[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView] setHidden:1];
  [*&v3[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel] setAttributedText:0];
  v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage] = 0;

  sub_66E8E4(v5, v6, v7);
  return [v3 setNeedsLayout];
}

id sub_21C32C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SearchHintCollectionViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_21C394()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_94AA90 = result;
  return result;
}

char *sub_21C3E8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_7572E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_itemLayoutContext;
  v15 = sub_75C840();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView(0);
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_state;
  v18 = sub_BD88(&qword_941F40, "z2\b");
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *&v5[v19] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v20 = &v5[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v21 = &v5[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  *v21 = 0;
  v21[1] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_currentTitleEffect;
  v23 = sub_7599B0();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_BD88(&qword_94AB08, qword_78CA38);
  swift_allocObject();
  *&v5[v24] = sub_7690B0();
  sub_7572D0();
  v25 = sub_7572B0();
  v27 = v26;
  (*(v11 + 8))(v13, v10);
  v41[0] = v25;
  v41[1] = v27;
  sub_76A6E0();
  v5[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_allowsAutoPlay] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_isPlaying] = 0;
  swift_unknownObjectWeakInit();
  v28 = type metadata accessor for HeroCarouselCollectionViewCell(0);
  v42.receiver = v5;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView;
  [v31 addSubview:*&v29[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView]];

  v33 = *&v29[v32];
  v41[3] = v28;
  v41[4] = &off_889868;
  v41[0] = v29;
  v34 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  v35 = v29;
  v36 = v33;
  sub_B33C8(v41, v33 + v34, &unk_94AB10, &qword_7893A0);
  swift_endAccess();

  v37 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  [*&v35[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_tapGestureRecognizer] addTarget:v35 action:"handleTap:"];
  v38 = *&v35[v37];
  [v38 setDelegate:v35];

  [v35 addGestureRecognizer:*&v35[v37]];
  return v35;
}

uint64_t sub_21C8B8(uint64_t a1)
{
  v3 = sub_75CF90();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_947D10, &qword_7893A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_7599B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  sub_21EA54(a1, v1 + v16);
  swift_endAccess();
  sub_1ED18(v1 + v16, v8, &unk_947D10, &qword_7893A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10A2C(a1, &unk_947D10, &qword_7893A8);
    return sub_10A2C(v8, &unk_947D10, &qword_7893A8);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    if (qword_93C6E8 != -1)
    {
      swift_once();
    }

    v18 = qword_94AA90;
    sub_75CF80();
    sub_7690A0();
    sub_10A2C(a1, &unk_947D10, &qword_7893A8);
    (*(v20 + 8))(v5, v21);
    return (*(v10 + 8))(v15, v9);
  }
}

void sub_21CBF4()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView];
  v3 = [v0 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);

    v13(v15);
    sub_F704(v13, v14);
  }
}

void sub_21CD58()
{
  v1 = v0;
  v2 = sub_BD88(&qword_941F38, &qword_78CA30);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = type metadata accessor for HeroCarouselCollectionViewCell(0);
  v17.receiver = v0;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, "prepareForReuse");
  v6 = sub_BD88(&qword_941F40, "z2\b");
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_B33C8(v4, &v0[v7], &qword_941F38, &qword_78CA30);
  swift_endAccess();
  v8 = &v0[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler + 8];
  *v8 = 0;
  *(v8 + 1) = 0;
  sub_F704(v9, v10);
  v11 = *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView] + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView);
  sub_543AD0(_swiftEmptyArrayStorage, 0);
  v12 = *(v11 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker);
  *(v11 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker) = 0;
  sub_5436B8(v12);

  *(v11 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) = 1;
  sub_54336C();
  v13 = sub_7653A0();
  v16[3] = v13;
  v16[4] = sub_21E944();
  v14 = sub_B1B4(v16);
  (*(*(v13 - 8) + 104))(v14, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v13);
  LOBYTE(v13) = sub_765C30();
  sub_BEB8(v16);
  if ((v13 & 1) == 0)
  {
    sub_18E6FC(0);
  }

  v1[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_isPlaying] = 0;
}

void sub_21CFC8(void *a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  objc_msgSendSuper2(&v30, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView];
    v26 = v3;
    v5 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_parallaxY;
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_parallaxY) = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY);
    v6 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_20;
    }

    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
LABEL_4:
    v27 = a1;

    if (v7)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = &OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView;
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      v12 = &OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer;
      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v9)
        {
          v13 = sub_76A770();
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v8 >= *(v11 + 16))
          {
            __break(1u);
LABEL_20:
            v7 = sub_76A860();
            goto LABEL_4;
          }

          v13 = *(v6 + 8 * v8 + 32);
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_14;
          }
        }

        v14 = *(v4 + v5);
        v15 = *(*(*&v13[*v10] + *v12) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
        v16 = *&v15[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY];
        *&v15[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = v14;
        if (v14 != v16)
        {
          v17 = v9;
          v18 = v6;
          v19 = v7;
          v20 = v5;
          v21 = v12;
          v22 = v10;
          v23 = v13;
          [v15 setNeedsLayout];
          v13 = v23;
          v10 = v22;
          v12 = v21;
          v5 = v20;
          v7 = v19;
          v6 = v18;
          v9 = v17;
          v11 = v28;
        }

        ++v8;
      }

      while (a1 != v7);
    }

    v24 = sub_7653A0();
    v29[3] = v24;
    v29[4] = sub_21E944();
    v25 = sub_B1B4(v29);
    (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v24);
    LOBYTE(v24) = sub_765C30();
    sub_BEB8(v29);
    if ((v24 & 1) == 0)
    {
      *(v4 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isRubberbanding) = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding);
      sub_18E850();
    }
  }
}

void sub_21D2D0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_7610A0();
  }

  v4 = sub_7653A0();
  v6[3] = v4;
  v6[4] = sub_21E944();
  v5 = sub_B1B4(v6);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  LOBYTE(v4) = sub_765C30();
  sub_BEB8(v6);
  if ((v4 & 1) == 0)
  {
    sub_18E6FC(1);
  }

  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_isPlaying) = 1;
}

void sub_21D558(uint64_t a1, uint64_t a2)
{
  v93 = sub_768A80();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v3 - 8);
  v94 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v82 - v6;
  __chkstk_darwin(v8);
  v10 = v82 - v9;
  __chkstk_darwin(v11);
  v13 = v82 - v12;
  v14 = sub_768AB0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v90 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v82 - v18;
  __chkstk_darwin(v20);
  v22 = v82 - v21;
  __chkstk_darwin(v23);
  v25 = v82 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v27 = Strong;
  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (!v28)
  {

    return;
  }

  v89 = v28;
  v87 = v19;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView;
  v30 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView];
  if ((v30[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_previousIndex + 8] & 1) == 0)
  {
    v88 = v15;
    v31 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_previousIndex];
    v32 = v30;
    v86 = v14;
    v33 = v32;
    v34 = v31;
    v15 = v88;
    v35 = sub_544408(v34, 0);

    v14 = v86;
    if (v35)
    {
      if (!*&v35[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem])
      {

        v15 = v88;
        (*(v88 + 56))(v13, 1, 1, v14);
        goto LABEL_10;
      }

      v84 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem;
      v85 = v35;

      sub_75BBD0();

      v15 = v88;
      v83 = *(v88 + 48);
      if (v83(v13, 1, v14) == 1)
      {

LABEL_10:
        sub_10A2C(v13, &unk_93FF30, &unk_77DB10);
        goto LABEL_19;
      }

      v82[0] = *(v15 + 32);
      (v82[0])(v25, v13, v14);
      v36 = v91;
      sub_768A90();
      v98 = 0u;
      v99 = 0u;
      v100 = 1;
      v37 = sub_75F490();
      (*(v92 + 8))(v36, v93);
      if (!v37)
      {
        goto LABEL_18;
      }

      v82[1] = v37;
      if (*&v85[v84] && (, v38 = sub_75BC00(), , v38))
      {
        sub_760430();

        v39 = v86;
        v40 = v83(v10, 1, v86);
        v41 = v88;
        if (v40 != 1)
        {
          (v82[0])(v22, v10, v39);
          sub_75F4D0();

          (*(v41 + 8))(v22, v39);
          goto LABEL_18;
        }
      }

      else
      {

        (*(v88 + 56))(v10, 1, 1, v86);
      }

      sub_10A2C(v10, &unk_93FF30, &unk_77DB10);
LABEL_18:
      sub_75F4D0();

      v15 = v88;
      v14 = v86;
      (*(v88 + 8))(v25, v86);
    }
  }

LABEL_19:
  v42 = *&v27[v29];
  v43 = sub_18EB5C();

  if (!v43)
  {

    return;
  }

  v44 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem;
  if (!*&v43[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem])
  {

    (*(v15 + 56))(v7, 1, 1, v14);
    goto LABEL_25;
  }

  sub_75BBD0();

  v45 = v15;
  v46 = *(v15 + 48);
  if (v46(v7, 1, v14) == 1)
  {

LABEL_25:
    v47 = v7;
LABEL_26:
    sub_10A2C(v47, &unk_93FF30, &unk_77DB10);
    return;
  }

  v48 = *(v15 + 32);
  v49 = v87;
  v88 = v15 + 32;
  v86 = v48;
  v48(v87, v7, v14);
  [v43 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v27;
  v59 = v14;
  v60 = [v58 superview];
  [v43 convertRect:v60 toView:{v51, v53, v55, v57}];

  sub_75F4B0();
  v61 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView];
  if (!v61)
  {

    (*(v15 + 8))(v49, v59);
    return;
  }

  if (!*&v43[v44])
  {

    v64 = v94;
LABEL_36:
    (*(v15 + 8))(v87, v59);
    (*(v15 + 56))(v64, 1, 1, v59);
    goto LABEL_37;
  }

  v62 = v61;

  v63 = sub_75BC00();

  v64 = v94;
  if (!v63)
  {

    goto LABEL_36;
  }

  sub_760430();

  v65 = v59;
  if (v46(v64, 1, v59) == 1)
  {

    (*(v15 + 8))(v87, v59);
LABEL_37:
    v47 = v64;
    goto LABEL_26;
  }

  v66 = v90;
  v86(v90, v64, v65);
  v67 = v91;
  v68 = v87;
  sub_768A90();
  v95 = 0u;
  v96 = 0u;
  v97 = 1;
  v69 = sub_75F490();
  (*(v92 + 8))(v67, v93);
  v70 = v45;
  if (v69)
  {
    v71 = v62;
    [v71 bounds];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = [v58 superview];

    [v71 convertRect:v80 toView:{v73, v75, v77, v79}];
    sub_75F4B0();
  }

  else
  {
  }

  v81 = *(v70 + 8);
  v81(v66, v65);
  v81(v68, v65);
}

id sub_21E070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeroCarouselCollectionViewCell(uint64_t a1)
{
  result = qword_94AAC8;
  if (!qword_94AAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E220(uint64_t a1)
{
  sub_21E408(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_21E3A4(319);
    if (v2 <= 0x3F)
    {
      sub_21E408(319, &unk_94AAF0, &type metadata accessor for TitleEffect);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21E3A4(uint64_t a1)
{
  if (!qword_94AAE0)
  {
    sub_133D8(&qword_941F40, "z2\b");
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_94AAE0);
    }
  }
}

void sub_21E408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

CGFloat sub_21E460()
{
  [v0 bounds];

  return CGRectGetMaxY(*&v1);
}

uint64_t sub_21E494@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  return sub_59C2C(v1 + v3, a1);
}

void sub_21E500()
{
  v1 = v0;
  v2 = sub_7653A0();
  v4[3] = v2;
  v4[4] = sub_21E944();
  v3 = sub_B1B4(v4);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v2);
  LOBYTE(v2) = sub_765C30();
  sub_BEB8(v4);
  if ((v2 & 1) == 0)
  {
    sub_18E6FC(0);
  }

  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_isPlaying) = 0;
}

double sub_21E610(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_21E670(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_21E708()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_21E764(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_21E824(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_21EA4C;
}

uint64_t sub_21E8C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  return sub_1ED18(v3 + v4, a1, &unk_947D10, &qword_7893A8);
}

unint64_t sub_21E944()
{
  result = qword_947D00;
  if (!qword_947D00)
  {
    sub_7653A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947D00);
  }

  return result;
}

uint64_t sub_21E99C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_21E9D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_21EA0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_21EA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_947D10, &qword_7893A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_21EAC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&qword_941F40, "z2\b");
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-v8];
  v10 = sub_BD88(&qword_941F38, &qword_78CA30);
  __chkstk_darwin(v10 - 8);
  v12 = &v26[-v11];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_1ED18(v3 + v13, v12, &qword_941F38, &qword_78CA30);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_10A2C(v12, &qword_941F38, &qword_78CA30);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    v14 = sub_10A2C(v12, &qword_941F38, &qword_78CA30);
    __chkstk_darwin(v14);
    *&v26[-16] = a1;
    sub_87648();
    sub_768AF0();
    (*(v7 + 8))(v9, v6);
  }

  v15 = v3 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_impressionsUpdateBlock;
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 8);

    v16(v18);
    sub_F704(v16, v17);
  }

  if (a2)
  {
    v19 = *(*(*(*(a2 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView) + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = *(v20 + qword_9405B0);
        if (v21)
        {
          v22 = v19;
          v23 = v21;
          sub_759A30();
        }
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_7610A0();
  }
}

void sub_21EDF4()
{
  v1 = v0;
  v2 = sub_7572E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_itemLayoutContext;
  v7 = sub_75C840();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView(0);
  *(v1 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_state;
  v10 = sub_BD88(&qword_941F40, "z2\b");
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler);
  *v12 = 0;
  v12[1] = 0;
  swift_weakInit();
  v13 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_currentTitleEffect;
  v15 = sub_7599B0();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_BD88(&qword_94AB08, qword_78CA38);
  swift_allocObject();
  *(v1 + v16) = sub_7690B0();
  sub_7572D0();
  v17 = sub_7572B0();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  v20[0] = v17;
  v20[1] = v19;
  sub_76A6E0();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_allowsAutoPlay) = 1;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_isPlaying) = 0;
  swift_unknownObjectWeakInit();
  sub_76A840();
  __break(1u);
}

id sub_21F114(uint64_t a1)
{
  result = [*(*(v1 + 16) + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl) currentPage];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_21F164(uint64_t a1)
{
  v2 = v1;
  v4 = sub_75AC60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v8], a1, v4);
  swift_endAccess();
  (*(v5 + 16))(v7, &v2[v8], v4);
  v9 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineLayer];
  v10 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineColor] CGColor];
  v11 = [v2 traitCollection];
  v12.super.super.isa = v9;
  v13.super.isa = v11;
  sub_75AC30(v12, v10, v13);

  v14 = *(v5 + 8);
  v14(v7, v4);
  [v2 setNeedsDisplay];
  return (v14)(a1, v4);
}

char *sub_21F324(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_itemLayoutContext;
  v12 = sub_75C840();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineLayer;
  *&v5[v13] = [objc_allocWithZone(CAShapeLayer) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_style;
  v15 = enum case for HorizontalRule.Style.solid(_:);
  v16 = sub_75AC60();
  (*(*(v16 - 8) + 104))(&v5[v14], v15, v16);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineColor;
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  *&v5[v17] = sub_769FB0();
  v23.receiver = v5;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = [v18 contentView];
  v21 = [v20 layer];

  [v21 addSublayer:*&v18[OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineLayer]];
  return v18;
}

void sub_21F6B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_75AC60();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineLayer];
  [v17 setFrame:{v10, v12, v14, v16}];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v4 + 16))(v7, &v1[v18], v3);
  v19 = [v1 traitCollection];
  v20 = sub_75AC50();

  (*(v4 + 8))(v7, v3);
  [v17 setPath:v20];
}

uint64_t sub_21F8F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_75AC60();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "_dynamicUserInterfaceTraitDidChange", v5);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v4 + 16))(v7, &v1[v8], v3);
  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineLayer];
  v10 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineColor] CGColor];
  v11 = [v1 traitCollection];
  v12.super.super.isa = v9;
  v13.super.isa = v11;
  sub_75AC30(v12, v10, v13);

  return (*(v4 + 8))(v7, v3);
}

uint64_t type metadata accessor for HorizontalRuleCollectionViewCell(uint64_t a1)
{
  result = qword_94AB58;
  if (!qword_94AB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21FBB8(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    sub_75AC60();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_21FC90(void *a1)
{
  v2 = v1;
  v4 = sub_75AC60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineColor];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineColor] = a1;
  v9 = a1;

  v10 = OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v2[v10], v4);
  v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32HorizontalRuleCollectionViewCell_lineLayer];
  v12 = [v9 CGColor];
  v13 = [v2 traitCollection];
  v14.super.super.isa = v11;
  v15.super.isa = v13;
  sub_75AC30(v14, v12, v15);

  (*(v5 + 8))(v7, v4);
  return [v2 setNeedsDisplay];
}

uint64_t sub_21FE28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21FE70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_21FED8(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v4 = sub_769240();
  v6 = v5;
  if (v4 == sub_769240() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_76A950();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_21FF8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_766BD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766BA0();
  sub_867FC(v2, &v15);
  if (*(&v16 + 1))
  {
    sub_10914(&v15, v21);
    sub_2203A4(v2, &v15);
    v8 = swift_allocObject();
    v9 = v18;
    v8[3] = v17;
    v8[4] = v9;
    v10 = v20;
    v8[5] = v19;
    v8[6] = v10;
    v11 = v16;
    v8[1] = v15;
    v8[2] = v11;
    sub_766B90();

    sub_BEB8(v21);
  }

  else
  {
    sub_8699C(&v15);
  }

  sub_766B90();
  a1[3] = v4;
  a1[4] = &protocol witness table for HorizontalStack;
  v12 = sub_B1B4(a1);
  return (*(v5 + 32))(v12, v7, v4);
}

double sub_220144(uint64_t a1, double a2, double a3)
{
  sub_21FF8C(v6);
  sub_B170(v6, v6[3]);
  sub_7673F0();
  v4 = ceil(v3);
  sub_220350(v6);
  return v4;
}

uint64_t sub_2201E8(double a1, double a2, double a3, double a4)
{
  sub_21FF8C(v5);
  sub_B170(v5, v5[3]);
  sub_7673E0();
  return sub_220350(v5);
}

uint64_t sub_220284(uint64_t a1, uint64_t a2)
{
  v4 = sub_22047C();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_2202E0()
{
  result = qword_94AB68;
  if (!qword_94AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AB68);
  }

  return result;
}

uint64_t sub_2203DC()
{
  if (*(v0 + 40))
  {
    sub_BEB8((v0 + 16));
  }

  sub_BEB8((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_22047C()
{
  result = qword_94AB70;
  if (!qword_94AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94AB70);
  }

  return result;
}

uint64_t sub_2204E4()
{
  v0 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v0, qword_94AB80);
  sub_BE38(v0, qword_94AB80);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

uint64_t sub_220580()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99BA80);
  sub_BE38(v4, qword_99BA80);
  if (qword_93D9E8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F5B0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_220760(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93D9F0 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99F5C8);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22093C()
{
  sub_396E8();
  result = sub_76A070();
  qword_99BAC8 = result;
  return result;
}

void sub_220970(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_760AD0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  if (qword_93D9E8 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  v16 = sub_BE38(v15, qword_99F5B0);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = sub_75BB20();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v46[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_descriptionLabel] = sub_75BB10();
  if (qword_93D9F0 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v15, qword_99F5C8);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = sub_75BB10();
  v26 = v46;
  *&v46[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_summaryLabel] = v25;
  v27 = objc_opt_self();
  v28 = sub_769210();
  v29 = [v27 kitImageNamed:v28];

  if (v29)
  {
    v30 = [v29 imageWithRenderingMode:2];

    v31 = [v30 imageFlippedForRightToLeftLayoutDirection];
    v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];

    *&v26[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_disclosureIndicator] = v32;
    v47.receiver = v26;
    v47.super_class = ObjectType;
    v33 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
    [v33 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
    if (qword_93C710 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_99BAC8];
    [v33 _setCornerRadius:20.0];
    [v33 addSubview:*&v33[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_descriptionLabel]];
    v34 = OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_summaryLabel;
    v35 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_summaryLabel];
    sub_396E8();
    v36 = v35;
    v37 = sub_769FF0();
    [v36 setTextColor:v37];

    [v33 addSubview:*&v33[v34]];
    v38 = OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_disclosureIndicator;
    v39 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_disclosureIndicator];
    v40 = sub_76A020();
    [v39 setTintColor:v40];

    [v33 addSubview:*&v33[v38]];
  }

  else
  {
    __break(1u);
  }
}

void sub_220F60(double a1)
{
  v2 = v1;
  v3 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_descriptionLabel] text];
  if (v3)
  {
    v4 = v3;
    sub_769240();
  }

  v5 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_summaryLabel] text];
  if (v5)
  {
    v6 = v5;
    sub_769240();
  }

  [v2 layoutMargins];
  v7 = objc_opt_self();
  v8 = sub_769210();
  v9 = [v7 kitImageNamed:v8];

  if (v9)
  {
    v10 = [v9 imageWithRenderingMode:2];

    v11 = [v10 imageFlippedForRightToLeftLayoutDirection];
    [v11 size];

    if (qword_93D9E8 != -1)
    {
      swift_once();
    }

    v12 = sub_7666D0();
    sub_BE38(v12, qword_99F5B0);
    v13 = sub_7653B0();
    v21 = v13;
    v14 = sub_9BA34();
    v22 = v14;
    v15 = sub_B1B4(v20);
    v16 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v17 = *(*(v13 - 8) + 104);
    v17(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v13);
    sub_765C30();
    sub_BEB8(v20);
    sub_762CB0();
    if (qword_93D9F0 != -1)
    {
      swift_once();
    }

    sub_BE38(v12, qword_99F5C8);
    v21 = v13;
    v22 = v14;
    v18 = sub_B1B4(v20);
    v17(v18, v16, v13);
    sub_765C30();
    sub_BEB8(v20);
    sub_762CB0();
    if (qword_93C6F8 != -1)
    {
      swift_once();
    }

    v19 = sub_766CA0();
    sub_BE38(v19, qword_99BA80);
    sub_766720();
    if (qword_93C700 != -1)
    {
      swift_once();
    }

    sub_BE38(v19, qword_99BA98);
    sub_766720();
    if (qword_93C708 != -1)
    {
      swift_once();
    }

    sub_BE38(v19, qword_99BAB0);
    sub_7666F0();
  }

  else
  {
    __break(1u);
  }
}

id sub_2214D0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v0;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_disclosureIndicator];
  v8 = [v7 isHidden];
  sub_75D650();
  if (v8)
  {
    Width = CGRectGetWidth(*&v9);
  }

  else
  {
    [v7 sizeThatFits:{v11, v12}];
    v15 = v14;
    v17 = v16;
    sub_75D650();
    v18 = CGRectGetMaxX(v35) - v15;
    sub_75D650();
    v19 = CGRectGetMidY(v36) + v17 * -0.5;
    sub_75D650();
    sub_769D20();
    [v7 setFrame:?];
    sub_75D650();
    v20 = CGRectGetWidth(v37);
    v38.origin.x = v18;
    v38.origin.y = v19;
    v38.size.width = v15;
    v38.size.height = v17;
    Width = v20 - (CGRectGetWidth(v38) + 24.0);
  }

  if (qword_93C6F8 != -1)
  {
    swift_once();
  }

  v21 = sub_766CA0();
  sub_BE38(v21, qword_99BA80);
  sub_766470();
  sub_766700();
  v23 = v22;
  v24 = *(v3 + 8);
  v24(v6, v2);
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_descriptionLabel];
  sub_75D650();
  [v25 sizeThatFits:{Width, CGRectGetHeight(v39)}];
  v27 = v26;
  sub_75D650();
  MinX = CGRectGetMinX(v40);
  sub_75D650();
  MinY = CGRectGetMinY(v41);
  [v25 firstBaselineFromTop];
  v31 = MinY + v23 - v30;
  sub_75D650();
  sub_769D20();
  [v25 setFrame:?];
  if (qword_93C700 != -1)
  {
    swift_once();
  }

  sub_BE38(v21, qword_99BA98);
  sub_766470();
  sub_766700();
  v24(v6, v2);
  v32 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_summaryLabel];
  sub_75D650();
  [v32 sizeThatFits:{Width, CGRectGetHeight(v42)}];
  sub_75D650();
  CGRectGetMinX(v43);
  v44.origin.x = MinX;
  v44.origin.y = v31;
  v44.size.width = Width;
  v44.size.height = v27;
  CGRectGetMaxY(v44);
  [v32 firstBaselineFromTop];
  sub_75D650();
  sub_769D20();
  return [v32 setFrame:?];
}

id sub_221940(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93C6F0 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v6, qword_94AB80);
    v7 = v1;
    sub_7592B0();

    [*&v7[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_descriptionLabel] setTextAlignment:{v8, v1}];
    return [*&v7[OBJC_IVAR____TtC18ASMessagesProvider16StandardLinkView_summaryLabel] setTextAlignment:v8];
  }

  return result;
}

void sub_221BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8)
{
  v8 = objc_opt_self();
  v9 = sub_769210();
  v10 = [v8 kitImageNamed:v9];

  if (v10)
  {
    v11 = [v10 imageWithRenderingMode:2];

    v12 = [v11 imageFlippedForRightToLeftLayoutDirection];
    [v12 size];

    if (qword_93D9E8 != -1)
    {
      swift_once();
    }

    v13 = sub_7666D0();
    sub_BE38(v13, qword_99F5B0);
    v14 = sub_7653B0();
    v22 = v14;
    v15 = sub_9BA34();
    v23 = v15;
    v16 = sub_B1B4(v21);
    v17 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v18 = *(*(v14 - 8) + 104);
    v18(v16, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
    sub_765C30();
    sub_BEB8(v21);
    sub_762CB0();
    if (qword_93D9F0 != -1)
    {
      swift_once();
    }

    sub_BE38(v13, qword_99F5C8);
    v22 = v14;
    v23 = v15;
    v19 = sub_B1B4(v21);
    v18(v19, v17, v14);
    sub_765C30();
    sub_BEB8(v21);
    sub_762CB0();
    if (qword_93C6F8 != -1)
    {
      swift_once();
    }

    v20 = sub_766CA0();
    sub_BE38(v20, qword_99BA80);
    sub_766720();
    if (qword_93C700 != -1)
    {
      swift_once();
    }

    sub_BE38(v20, qword_99BA98);
    sub_766720();
    if (qword_93C708 != -1)
    {
      swift_once();
    }

    sub_BE38(v20, qword_99BAB0);
    sub_7666F0();
  }

  else
  {
    __break(1u);
  }
}

double sub_222024(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_75CF00();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_75FC00())
  {
    v13 = [a5 traitCollection];
    v14 = [v13 userInterfaceIdiom];

    if (v14 == &dword_0 + 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView(0);
      sub_2221DC(v12);
      swift_getObjectType();
      a2 = sub_1FE304(v12, a1, a2, a3);

      (*(v10 + 8))(v12, v9);
    }
  }

  return a2;
}

uint64_t sub_2221DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v6 = sub_75CF00();
  v7 = sub_BE38(v6, qword_99B898);
  (*(*(v6 - 8) + 16))(a1, v7, v6);
  sub_764F70();
  if (v8)
  {
  }

  else
  {
    if (qword_93D4F0 != -1)
    {
      swift_once();
    }

    v9 = sub_7666D0();
    v10 = sub_BE38(v9, qword_99E6E0);
    (*(*(v9 - 8) + 16))(v5, v10, v9);
    (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
    v15 = sub_766CA0();
    v16 = &protocol witness table for StaticDimension;
    sub_B1B4(v14);
    v13[3] = v2;
    v13[4] = &protocol witness table for FontSource;
    v11 = sub_B1B4(v13);
    (*(v3 + 16))(v11, v5, v2);
    sub_766CB0();
    (*(v3 + 8))(v5, v2);
    sub_75CE00();
  }

  v15 = &type metadata for Double;
  v16 = &protocol witness table for Double;
  v14[0] = 0;
  sub_75CDF0();
  sub_75CDE0();
  return sub_75CE20();
}

void sub_222484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v97 = a2;
  v8 = sub_765240();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v86 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v10 - 8);
  v93 = &v82 - v11;
  v12 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v12 - 8);
  v92 = &v82 - v13;
  v14 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v14 - 8);
  v91 = &v82 - v15;
  v16 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v16 - 8);
  v90 = &v82 - v17;
  v18 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v18 - 8);
  v89 = &v82 - v19;
  v20 = sub_75CF00();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v94 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_7652D0();
  __chkstk_darwin(v23 - 8);
  v96 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&qword_94AC50, qword_78CC88);
  *&v26 = __chkstk_darwin(v25 - 8).n128_u64[0];
  v28 = &v82 - v27;
  v29 = [a5 snapshotPageTraitEnvironment];
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v6 setNeedsLayout];
  swift_unknownObjectRelease();
  v30 = sub_75FBC0();
  [v6 setBackgroundColor:v30];

  sub_75FB80();
  if (v31)
  {
    v32 = sub_769210();
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_opt_self() _systemImageNamed:v32];

  v34 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badgeGlyph];
  if (v33)
  {
    [v34 setImage:v33];
  }

  else
  {
    [v34 setImage:0];
  }

  v95 = v20;
  v35 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badge];
  sub_75FBE0();
  if (v36)
  {
    v37 = sub_769210();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_title];
  sub_75FBF0();
  v39 = sub_769210();

  [v38 setText:v39];

  v40 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_subtitle];
  sub_75FC10();
  if (v41)
  {
    v42 = sub_769210();
  }

  else
  {
    v42 = 0;
  }

  [v40 setText:v42];

  v43 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_heroContent];
  sub_75FBA0();
  v44 = sub_765C90();
  (*(*(v44 - 8) + 56))(v28, 0, 1, v44);
  sub_765CE0();
  v45 = sub_75FBB0();
  if (v45)
  {
    v46 = v45;
    v47 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_button];
    v48 = swift_allocObject();
    *(v48 + 16) = v97;
    *(v48 + 24) = v46;

    sub_75D610();
    sub_764C60();
    if (v49)
    {
      v50 = sub_769210();
    }

    else
    {
      v50 = 0;
    }

    [v47 setTitle:v50 forState:0];
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_button] setHidden:1];
  }

  [v43 removeAllGestureRecognizers];
  v51 = sub_75FB90();
  if (v51)
  {
    v52 = v51;
    v53 = type metadata accessor for TapActionGestureRecognizer();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC18ASMessagesProvider26TapActionGestureRecognizer_action] = v52;
    *&v54[OBJC_IVAR____TtC18ASMessagesProvider26TapActionGestureRecognizer_objectGraph] = v97;
    v98.receiver = v54;
    v98.super_class = v53;

    v55 = objc_msgSendSuper2(&v98, "initWithTarget:action:", 0, 0);
    [v55 addTarget:v55 action:"execute"];
    [v43 addGestureRecognizer:v55];
  }

  if (sub_75FBD0())
  {
    v56 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_backgroundImage];
    [v56 setHidden:0];
    [v6 frame];
    [v6 frame];
    sub_765320();
    sub_7652E0();
    sub_7591B0();
    [v56 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    sub_75A110();
    sub_768900();
    sub_768ED0();
    sub_759210();
    sub_223CF0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A050();
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_backgroundImage] setHidden:1];
  }

  v57 = sub_75FC00();
  v58 = v94;
  if (v57)
  {
    v85 = v6;
    v59 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_lockup];
    v60 = v57;
    sub_2221DC(v94);
    v61 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
    swift_beginAccess();
    v62 = v21;
    v63 = *(v21 + 24);
    v84 = v61;
    v64 = &v59[v61];
    v65 = v95;
    v63(v64, v58, v95);
    swift_endAccess();
    [v59 setNeedsLayout];
    v83 = *(v21 + 8);
    v83(v58, v65);
    v66 = sub_BD88(&unk_948740, &unk_784920);
    v67 = v89;
    (*(*(v66 - 8) + 56))(v89, 1, 1, v66);
    v68 = sub_758C70();
    v69 = v90;
    (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
    v70 = sub_75BD30();
    v71 = v91;
    (*(*(v70 - 8) + 56))(v91, 1, 1, v70);
    v72 = sub_BD88(&unk_9457F0, qword_783FD0);
    v73 = v92;
    (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
    v74 = sub_765870();
    v75 = v93;
    (*(*(v74 - 8) + 56))(v93, 1, 1, v74);
    sub_4A18A4(v60, v59, v67, v97, 0, 0, v69, v71, v75, v73);
    sub_10A2C(v75, &unk_9457D0, &unk_785630);
    v59[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v59 setNeedsLayout];
    sub_10A2C(v73, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v71, &unk_9457E0, &qword_785640);
    sub_10A2C(v69, &unk_94A780, &unk_788DC0);
    sub_10A2C(v67, &unk_948730, &qword_788DD0);
    v93 = v60;
    if (sub_764EE0())
    {
      v76 = v95;
      (*(v62 + 16))(v58, &v59[v84], v95);
      sub_75CDD0();
      v83(v58, v76);
      v77 = v86;
      sub_765250();
      sub_765210();
      (*(v87 + 8))(v77, v88);
      sub_765330();
      v78 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      v79 = *&v59[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
      sub_7652E0();
      sub_7591B0();
      [v79 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();

      [v59 setContentMode:{objc_msgSend(v85, "contentMode")}];
      sub_75A110();
      sub_768900();
      sub_768ED0();
      v80 = *&v59[v78];
      sub_759210();
      sub_223CF0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v81 = v80;
      sub_75A050();
    }
  }
}