uint64_t sub_74158@<X0>(_WORD *a1@<X8>)
{
  swift_getKeyPath();
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  *a1 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination);
  return result;
}

uint64_t sub_741F4()
{
  v1[5] = v0;
  sub_B7A60();
  v1[6] = sub_B7A50();
  v3 = sub_B7A00();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_7428C, v3, v2);
}

uint64_t sub_7428C()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling;
  v0[9] = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[2] = v1;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }

  v4 = (v0[5] + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v0[10] = v4[9];
  v0[11] = v4[11];
  v5 = v4[12];
  v0[12] = v4[13];

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_74488;

  return v8();
}

uint64_t sub_74488()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_74758;
  }

  else
  {
    v2 = sub_7459C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7459C()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_74614, v1, v2);
}

uint64_t sub_74614()
{
  v1 = v0[9];
  v2 = v0[5];

  if (*(v2 + v1))
  {
    v3 = v0[5];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[4] = v3;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }

  else
  {
    *(v0[5] + v0[9]) = 0;
  }

  v5 = v0[1];
  v6 = v0[14] == 0;

  return v5(v6);
}

uint64_t sub_74758()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_747D0, v1, v2);
}

uint64_t sub_747D0()
{
  v10 = v0;
  v1 = v0[9];
  v2 = v0[5];

  v3 = *(v2 + v1);
  v4 = v0[5];
  if (v3)
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    v0[3] = v4;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }

  else
  {
    *(v4 + v0[9]) = 0;
  }

  v9[0] = 514;
  sub_75E3C(v9);

  v6 = v0[1];
  v7 = v0[14] == 0;

  return v6(v7);
}

uint64_t sub_7493C()
{
  v3[3] = &type metadata for SolariumFeatureFlag;
  v3[4] = sub_28360();
  v0 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v3);
  if (v0)
  {
    v1 = 256;
  }

  else
  {
    v1 = 512;
  }

  LOWORD(v3[0]) = v1;
  return sub_75E3C(v3);
}

uint64_t sub_749A4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  swift_getKeyPath();
  v58 = v1;
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v9 = HIBYTE(*&v1[OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination]);
  if (v9 <= 0xFE && v9)
  {
    if (v9 == 1)
    {
      v54 = a1;
      v55 = v5;
      if (qword_EEAC8 != -1)
      {
        swift_once();
      }

      v10 = sub_B62F0();
      v11 = __swift_project_value_buffer(v10, qword_FADB0);
      v12 = *(v10 - 8);
      v13 = *(v12 + 16);
      v13(v8, v11, v10);
      v14 = *(v12 + 56);
      v14(v8, 0, 1, v10);
      v15 = sub_B78D0();
      v52 = v16;
      v53 = v15;
      sub_2B630(v8);
      v13(v8, v11, v10);
      v14(v8, 0, 1, v10);
      v17 = sub_B78D0();
      v50 = v18;
      v51 = v17;
      sub_2B630(v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v49 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      *(swift_allocObject() + 16) = xmmword_BDA30;
      v13(v8, v11, v10);
      v14(v8, 0, 1, v10);
      sub_B78D0();
      sub_2B630(v8);
      v20 = enum case for AlertInfo.ActionInfo.Style.destructive<A>(_:);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      v22 = *(v21 - 8);
      v23 = v55;
      (*(v22 + 104))(v55, v20, v21);
      (*(v22 + 56))(v23, 0, 1, v21);
      v58 = sub_78FAC;
      v59 = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
      sub_B68B0();
      a1 = v54;
LABEL_14:
      sub_B6910();
      v24 = 0;
      goto LABEL_15;
    }

    if (!*&v1[OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination])
    {
      v55 = v5;
      v57 = 0;
      v25 = sub_75F6C();
      v52 = v26;
      v53 = v25;
      v56 = 0;
      v27 = sub_76270();
      v50 = v28;
      v51 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0) - 8);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v48 = *(v29 + 72);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_BD800;
      v49 = v31;
      v54 = v31 + v30;
      if (qword_EEAC8 != -1)
      {
        swift_once();
      }

      v32 = sub_B62F0();
      v33 = __swift_project_value_buffer(v32, qword_FADB0);
      v34 = *(v32 - 8);
      v47 = *(v34 + 16);
      v47(v8, v33, v32);
      v46 = *(v34 + 56);
      v46(v8, 0, 1, v32);
      v35 = sub_B78D0();
      v43 = v36;
      v44 = v35;
      sub_2B630(v8);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
      v38 = *(v37 - 8);
      v39 = v55;
      v45 = *(v38 + 56);
      v45(v55, 1, 1, v37);
      v58 = sub_78FE4;
      v59 = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
      sub_B68B0();
      v44 = "ROR_CONTINUE_ACTION";
      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v40 = __swift_project_value_buffer(v32, qword_FAD48);
      v47(v8, v40, v32);
      v46(v8, 0, 1, v32);
      sub_B78D0();
      sub_2B630(v8);
      (*(v38 + 104))(v39, enum case for AlertInfo.ActionInfo.Style.cancel<A>(_:), v37);
      v45(v39, 0, 1, v37);
      v58 = ItemContactInfoSetupIntroductionViewModel.bind();
      v59 = 0;
      sub_B68B0();
      goto LABEL_14;
    }
  }

  v24 = 1;
LABEL_15:
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v41 - 8) + 56))(a1, v24, 1, v41);
}

uint64_t sub_75274()
{
  v1[10] = v0;
  type metadata accessor for LostModeInfo(0);
  v1[11] = swift_task_alloc();
  sub_B7A60();
  v1[12] = sub_B7A50();
  v3 = sub_B7A00();
  v1[13] = v3;
  v1[14] = v2;

  return _swift_task_switch(sub_75338, v3, v2);
}

uint64_t sub_75338()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting;
  v0[15] = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting;
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    v0[5] = v1;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies;
  v13 = *(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 64);
  v0[16] = *(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 72);
  v0[17] = *(v6 + 88);
  v0[18] = *(v6 + 104);
  swift_getKeyPath();
  v0[19] = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel___observationRegistrar;
  v0[6] = v5;
  v0[20] = sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);

  sub_B65C0();

  v7 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  sub_7788C(v5 + v7, v4, type metadata accessor for LostModeInfo);
  swift_getKeyPath();
  v0[7] = v5;
  sub_B65C0();

  v8 = *(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound);
  v12 = (v13 + *v13);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_75638;
  v10 = v0[11];

  return v12(v10, v8);
}

uint64_t sub_75638()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_7574C;
  }

  else
  {
    v2 = sub_739A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7574C()
{
  sub_778F4(v0[11], type metadata accessor for LostModeInfo);

  v1 = v0[13];
  v2 = v0[14];

  return _swift_task_switch(sub_757EC, v1, v2);
}

uint64_t sub_757EC()
{
  v9 = v0;
  v1 = v0[15];
  v2 = v0[10];

  if (*(v2 + v1))
  {
    v3 = v0[10];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[8] = v3;
    sub_B65B0();
  }

  else
  {
    *(v0[10] + v0[15]) = 0;
  }

  v8[0] = 513;
  sub_75E3C(v8);

  v5 = v0[1];
  v6 = v0[22] == 0;

  return v5(v6);
}

uint64_t sub_7592C(uint64_t a1)
{
  v3 = type metadata accessor for LostModeInfo(0);
  __chkstk_darwin(v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  sub_7788C(v1 + v6, v5, type metadata accessor for LostModeInfo);
  if (sub_B6310() & 1) != 0 && ((v7 = *(v3 + 20), v8 = *&v5[v7], v9 = *&v5[v7 + 8], v10 = (a1 + v7), v8 == *v10) ? (v11 = v9 == v10[1]) : (v11 = 0), v11 || (sub_B7DD0()))
  {
    sub_778F4(v5, type metadata accessor for LostModeInfo);
    swift_beginAccess();
    sub_78E7C(a1, v1 + v6);
    swift_endAccess();
  }

  else
  {
    sub_778F4(v5, type metadata accessor for LostModeInfo);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v14[-2] = v1;
    v14[-1] = a1;
    v14[1] = v1;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }

  return sub_778F4(a1, type metadata accessor for LostModeInfo);
}

uint64_t sub_75B54(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  sub_78E7C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_75BD4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_75CC0(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_75E3C(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination;
  result = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination);
  if (result >> 8 <= 0xFE)
  {
    if (v2 >> 8 > 0xFE)
    {
      goto LABEL_7;
    }

    result = sub_80ADC(result, v2);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + v3) = v2;
    return result;
  }

  if (v2 >> 8 > 0xFE)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65B0();
}

uint64_t sub_75F6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  if (!*v0)
  {
    if (qword_EEAC8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*v0 == 1)
  {
    if (qword_EEAC8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_EEAC8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v4 = sub_B62F0();
  v5 = __swift_project_value_buffer(v4, qword_FADB0);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v3, v5, v4);
  (*(v6 + 56))(v3, 0, 1, v4);
  v7 = sub_B78D0();
  sub_2B630(v3);
  return v7;
}

uint64_t sub_76270()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  if (!*v0)
  {
    if (qword_EEAC8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*v0 == 1)
  {
    if (qword_EEAC8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_EEAC8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v4 = sub_B62F0();
  v5 = __swift_project_value_buffer(v4, qword_FADB0);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v3, v5, v4);
  (*(v6 + 56))(v3, 0, 1, v4);
  v7 = sub_B78D0();
  sub_2B630(v3);
  return v7;
}

uint64_t sub_76574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_B7A60();
  v4[5] = sub_B7A50();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_76624;

  return sub_741F4();
}

uint64_t sub_76624(char a1)
{
  *(*v1 + 56) = a1;

  v3 = sub_B7A00();

  return _swift_task_switch(sub_76768, v3, v2);
}

uint64_t sub_76768()
{
  v1 = *(v0 + 56);

  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    if (*(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) == 1)
    {
      *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) = 1;
    }

    else
    {
      swift_getKeyPath();
      v3 = swift_task_alloc();
      *(v3 + 16) = v2;
      *(v3 + 24) = 1;
      *(v0 + 16) = v2;
      sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
      sub_B65B0();
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_768A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_B7A80();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_B7A60();

  v9 = sub_B7A50();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a1;
  sub_30A3C(0, 0, v7, a3, v10);
}

uint64_t sub_769C4()
{
  v1 = v0;
  v28 = type metadata accessor for LostModeInfo(0);
  __chkstk_darwin(v28);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_B6370();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_B6320();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    v26 = v3;
    v12 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 128);
    swift_getKeyPath();
    v29 = v1;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);

    sub_B65C0();

    v13 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
    v14 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);

    v15 = v12(v13, v14);
    v3 = v26;
LABEL_5:
    v18 = v15;

    goto LABEL_9;
  }

  if (v11 == enum case for PersonModel.Handle.Kind.email(_:))
  {
    v26 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 112);
    swift_getKeyPath();
    v29 = v1;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);

    sub_B65C0();

    v16 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
    v17 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);

    v15 = v26(v16, v17);
    goto LABEL_5;
  }

  if (v11 != enum case for PersonModel.Handle.Kind.unknown(_:))
  {
    (*(v8 + 8))(v10, v7);
  }

  v18 = 0;
LABEL_9:
  swift_getKeyPath();
  v29 = v1;
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  sub_B6350();
  v19 = v27;
  (*(v4 + 16))(v27, v6, v3);
  swift_getKeyPath();
  v29 = v1;
  sub_B65C0();

  v20 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
  swift_beginAccess();
  v21 = *(v28 + 20);
  v23 = *(v20 + v21);
  v22 = *(v20 + v21 + 8);
  v24 = (v19 + v21);
  *v24 = v23;
  v24[1] = v22;

  sub_7592C(v19);
  sub_78024(v18 & 1);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_76EA8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  v5 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  v4 = *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);
  *v3 = a1;
  v3[1] = a2;
  swift_getKeyPath();
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  if (*v3 == v5 && v3[1] == v4)
  {
  }

  v7 = sub_B7DD0();

  if ((v7 & 1) == 0)
  {
    return sub_769C4();
  }

  return result;
}

uint64_t sub_76F90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  a2[1] = v4;
}

uint64_t sub_77034(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_732A4(v1, v2);
}

uint64_t ItemContactInfoSetupConfirmationViewModel.__allocating_init(initialDestination:lostModeInfo:editType:dependencies:lostAccessory:)(__int16 *a1, uint64_t a2, _BYTE *a3, _OWORD *a4, uint64_t a5)
{
  v35 = a5;
  v34 = sub_B6320();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a1;
  LOBYTE(a1) = *a3;
  v14 = a4[9];
  v38[8] = a4[8];
  v39 = v14;
  v40 = a4[10];
  v15 = a4[5];
  v38[4] = a4[4];
  v38[5] = v15;
  v16 = a4[7];
  v38[6] = a4[6];
  v38[7] = v16;
  v17 = a4[1];
  v38[0] = *a4;
  v38[1] = v17;
  v18 = a4[3];
  v38[2] = a4[2];
  v38[3] = v18;
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) = 0;
  v19 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination;
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination) = -256;
  sub_B65F0();
  *(v12 + v19) = v13;
  sub_7788C(a2, v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, type metadata accessor for LostModeInfo);
  sub_7788C(a2, v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, type metadata accessor for LostModeInfo);
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType) = a1;
  v20 = (v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v21 = a4[9];
  v20[8] = a4[8];
  v20[9] = v21;
  v20[10] = a4[10];
  v22 = a4[5];
  v20[4] = a4[4];
  v20[5] = v22;
  v23 = a4[7];
  v20[6] = a4[6];
  v20[7] = v23;
  v24 = a4[1];
  *v20 = *a4;
  v20[1] = v24;
  v25 = a4[3];
  v20[2] = a4[2];
  v20[3] = v25;
  sub_777DC(v38, v37);
  sub_B6330();
  (*(v9 + 32))(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v11, v34);
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton) = 0;
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton) = 0;
  MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
  v27 = (v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  *v27 = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
  v27[1] = v28;
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound) = 0;
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound) = 0;
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting) = 0;
  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling) = 0;
  v29 = v39;
  v30 = v40;
  v36 = a1;

  v29(v37, &v36);

  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems) = v37[0];
  v36 = a1;

  v30(v37, &v36);
  sub_77838(v38);

  *(v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems) = v37[0];
  v31 = v35;
  sub_7788C(v35, v12 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_769C4();
  sub_778F4(v31, type metadata accessor for LostAccessory);
  sub_778F4(a2, type metadata accessor for LostModeInfo);
  return v12;
}

uint64_t ItemContactInfoSetupConfirmationViewModel.init(initialDestination:lostModeInfo:editType:dependencies:lostAccessory:)(__int16 *a1, uint64_t a2, _BYTE *a3, _OWORD *a4, uint64_t a5)
{
  v6 = v5;
  v36 = a5;
  v35 = sub_B6320();
  v11 = *(v35 - 8);
  __chkstk_darwin(v35);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  LOBYTE(a1) = *a3;
  v15 = a4[9];
  v39[8] = a4[8];
  v40 = v15;
  v41 = a4[10];
  v16 = a4[5];
  v39[4] = a4[4];
  v39[5] = v16;
  v17 = a4[7];
  v39[6] = a4[6];
  v39[7] = v17;
  v18 = a4[1];
  v39[0] = *a4;
  v39[1] = v18;
  v19 = a4[3];
  v39[2] = a4[2];
  v39[3] = v19;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) = 0;
  v20 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination) = -256;
  sub_B65F0();
  *(v6 + v20) = v14;
  sub_7788C(a2, v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, type metadata accessor for LostModeInfo);
  sub_7788C(a2, v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, type metadata accessor for LostModeInfo);
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType) = a1;
  v21 = (v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v22 = a4[9];
  v21[8] = a4[8];
  v21[9] = v22;
  v21[10] = a4[10];
  v23 = a4[5];
  v21[4] = a4[4];
  v21[5] = v23;
  v24 = a4[7];
  v21[6] = a4[6];
  v21[7] = v24;
  v25 = a4[1];
  *v21 = *a4;
  v21[1] = v25;
  v26 = a4[3];
  v21[2] = a4[2];
  v21[3] = v26;
  sub_777DC(v39, v38);
  sub_B6330();
  (*(v11 + 32))(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v13, v35);
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton) = 0;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton) = 0;
  MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
  v28 = (v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  *v28 = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
  v28[1] = v29;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound) = 0;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound) = 0;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting) = 0;
  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling) = 0;
  v30 = v40;
  v31 = v41;
  v37 = a1;

  v30(v38, &v37);

  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems) = v38[0];
  v37 = a1;

  v31(v38, &v37);
  sub_77838(v39);

  *(v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems) = v38[0];
  v32 = v36;
  sub_7788C(v36, v6 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_769C4();
  sub_778F4(v32, type metadata accessor for LostAccessory);
  sub_778F4(a2, type metadata accessor for LostModeInfo);
  return v6;
}

uint64_t sub_7788C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_778F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_77954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_B7A60();
  v4[9] = sub_B7A50();
  v6 = sub_B7A00();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_779EC, v6, v5);
}

uint64_t sub_779EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies;
    v0[13] = *(Strong + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 8);
    v3 = *(v2 + 16);
    v0[14] = *(v2 + 24);

    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_77B64;

    return v7();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_77B64(char a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_77F40;
  }

  else
  {
    v4 = sub_77C7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_77C7C()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_77CE8, v1, v2);
}

uint64_t sub_77CE8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound;
  if (v1 == *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound))
  {
    *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound) = *(v0 + 136);
  }

  else
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 96);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v0 + 40) = v5;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }

  v7 = *(v0 + 96);
  swift_getKeyPath();
  *(v0 + 48) = v7;
  sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  sub_B65C0();

  v8 = *(v2 + v3);
  v9 = *(v0 + 96);
  if (v8 == *(v7 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound))
  {
    *(v7 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound) = v8;
  }

  else
  {
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    *(v0 + 56) = v9;
    sub_B65B0();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_77F40()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_77FAC, v1, v2);
}

uint64_t sub_77FAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_78024(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for LostModeInfo(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v5);
  v10 = &v30[-v9];
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType))
  {
    v31 = a1;
    v32 = 0;
    swift_getKeyPath();
    v34 = v1;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65C0();

    v11 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo;
    swift_beginAccess();
    sub_7788C(v1 + v11, v10, type metadata accessor for LostModeInfo);
    v12 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo;
    if (sub_B6310() & 1) != 0 && ((v13 = *(v4 + 20), v14 = *&v10[v13], v15 = *&v10[v13 + 8], v16 = (v12 + v13), v14 == *v16) ? (v17 = v15 == v16[1]) : (v17 = 0), v17 || (sub_B7DD0()))
    {
      sub_778F4(v10, type metadata accessor for LostModeInfo);
      swift_getKeyPath();
      v33 = v1;
      sub_B65C0();

      v18 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound);
      swift_getKeyPath();
      v33 = v1;
      sub_B65C0();

      v19 = v18 ^ *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound);
    }

    else
    {
      sub_778F4(v10, type metadata accessor for LostModeInfo);
      v19 = 1;
    }

    swift_getKeyPath();
    v33 = v1;
    sub_B65C0();

    sub_7788C(v1 + v11, v7, type metadata accessor for LostModeInfo);
    if (sub_B6310())
    {
      v22 = *(v4 + 20);
      v23 = *&v7[v22];
      v24 = *&v7[v22 + 8];
      v25 = (v12 + v22);
      v26 = v23 == *v25 && v24 == v25[1];
      LOBYTE(a1) = v31;
      if (v26 || (sub_B7DD0() & 1) != 0)
      {
        sub_778F4(v7, type metadata accessor for LostModeInfo);
        swift_getKeyPath();
        v33 = v1;
        sub_B65C0();

        v27 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound);
        swift_getKeyPath();
        v33 = v1;
        sub_B65C0();

        LOBYTE(a1) = (v27 ^ *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound)) & a1;
      }

      else
      {
        result = sub_778F4(v7, type metadata accessor for LostModeInfo);
      }
    }

    else
    {
      result = sub_778F4(v7, type metadata accessor for LostModeInfo);
      LOBYTE(a1) = v31;
    }

    v20 = (v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton);
    if ((v19 & 1) == *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton))
    {
      goto LABEL_22;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v30[-16] = v1;
    v30[-8] = v19 & 1;
    v33 = v1;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();

    goto LABEL_23;
  }

  v19 = 0;
  v20 = (v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton);
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton))
  {
    goto LABEL_10;
  }

LABEL_22:
  *v20 = v19 & 1;
LABEL_23:
  v28 = a1 & 1;
  if ((a1 & 1) == *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton))
  {
    *(v2 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton) = v28;
  }

  else
  {
    v29 = swift_getKeyPath();
    __chkstk_darwin(v29);
    *&v30[-16] = v2;
    v30[-8] = v28;
    v33 = v2;
    sub_78BE4(&qword_F1840, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t ItemContactInfoSetupConfirmationViewModel.deinit()
{
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, type metadata accessor for LostModeInfo);
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, type metadata accessor for LostModeInfo);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 128);
  v11[9] = v1;
  v11[10] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 160);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 64);
  v11[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 96);
  v11[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v11[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 32);
  v11[3] = v5;
  sub_77838(v11);
  v6 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind;
  v7 = sub_B6320();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel___observationRegistrar;
  v9 = sub_B6600();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t ItemContactInfoSetupConfirmationViewModel.__deallocating_deinit()
{
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, type metadata accessor for LostModeInfo);
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, type metadata accessor for LostModeInfo);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 128);
  v11[9] = v1;
  v11[10] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 160);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 64);
  v11[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 96);
  v11[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v11[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies + 32);
  v11[3] = v5;
  sub_77838(v11);
  v6 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind;
  v7 = sub_B6320();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel___observationRegistrar;
  v9 = sub_B6600();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return swift_deallocClassInstance();
}

unint64_t sub_788C0()
{
  result = qword_F1BD0;
  if (!qword_F1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1BD0);
  }

  return result;
}

uint64_t sub_78914(uint64_t a1)
{
  result = sub_78BE4(&qword_F1BD8, &protocol conformance descriptor for ItemContactInfoSetupConfirmationViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupConfirmationViewModel(uint64_t a1)
{
  result = qword_F1C10;
  if (!qword_F1C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_789E0(uint64_t a1)
{
  result = type metadata accessor for LostAccessory(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LostModeInfo(319);
    if (v3 <= 0x3F)
    {
      result = sub_B6320();
      if (v4 <= 0x3F)
      {
        result = sub_B6600();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_78BA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_732A4(v1, v2);
}

uint64_t sub_78BE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ItemContactInfoSetupConfirmationViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_78E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeInfo(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_78EE0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_76EA8(v1, v2);
}

uint64_t sub_79020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2184C;

  return sub_76574(a1, v4, v5, v6);
}

uint64_t sub_790D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_76574(a1, v4, v5, v6);
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_79268(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_792B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_79330()
{
  result = qword_F1D20;
  if (!qword_F1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D20);
  }

  return result;
}

unint64_t sub_793B0()
{
  result = qword_F1D28;
  if (!qword_F1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D28);
  }

  return result;
}

unint64_t sub_79404()
{
  result = qword_F1D30;
  if (!qword_F1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D30);
  }

  return result;
}

unint64_t sub_7945C()
{
  result = qword_F1D38;
  if (!qword_F1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D38);
  }

  return result;
}

uint64_t sub_794DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_79518()
{
  result = qword_F1D40;
  if (!qword_F1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D40);
  }

  return result;
}

unint64_t sub_7956C()
{
  result = qword_F1D48;
  if (!qword_F1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D48);
  }

  return result;
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

uint64_t sub_795FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_79644(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_796DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_79724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_7978C()
{
  result = qword_F1D50;
  if (!qword_F1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D50);
  }

  return result;
}

uint64_t sub_797E0()
{
  v1 = swift_allocObject();
  v2 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = *(v0 + 80);
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  v12[11] = sub_7F1E8;
  v12[12] = v1;
  sub_7F1F0(v0, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75E0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D60, &qword_C2A60);
  sub_B76B0();

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D68, &qword_C2A90);
  sub_B76B0();

  sub_4BE18(v10, v11);
  v4 = swift_allocObject();
  v5 = *(v0 + 48);
  *(v4 + 48) = *(v0 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v0 + 64);
  *(v4 + 96) = *(v0 + 80);
  v6 = *(v0 + 16);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v6;
  sub_7F1F0(v0, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D70, &qword_C2A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D78, &qword_C2AA0);
  sub_A8CC(&qword_F1D80, &qword_F1D70, &qword_C2A98, &protocol conformance descriptor for ScrollViewReader<A>);
  sub_7F2BC();
  v7 = type metadata accessor for ItemContactInfoSetupConfirmationView(255);
  v8 = sub_7FC2C(&qword_F1D90, type metadata accessor for ItemContactInfoSetupConfirmationView, &protocol conformance descriptor for ItemContactInfoSetupConfirmationView);
  v12[0] = v7;
  v12[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_B7340();
}

uint64_t sub_79B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DA0, &qword_C2AA8);
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DA8, &qword_C2AB0);
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_B7A60();
  v26 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_B7090();
  __chkstk_darwin(v11);
  *(&v23 - 2) = a2;
  *(&v23 - 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DB0, &qword_C2AB8);
  sub_A8CC(&qword_F1DB8, &qword_F1DB0, &qword_C2AB8, &protocol conformance descriptor for HStack<A>);
  sub_B6A20();
  v12 = sub_A8CC(&qword_F1DC0, &qword_F1DA0, &qword_C2AA8, &protocol conformance descriptor for ScrollView<A>);
  sub_B72B0();
  v13 = (*(v23 + 8))(v7, v5);
  __chkstk_darwin(v13);
  *(&v23 - 2) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DC8, &qword_C2AC0);
  v28 = v5;
  v29 = v12;
  swift_getOpaqueTypeConformance2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1DD0, &qword_C2AC8);
  v15 = sub_7F320();
  v28 = v14;
  v29 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v27;
  v17 = v25;
  sub_B7450();
  (*(v24 + 8))(v10, v17);
  v18 = swift_allocObject();
  v19 = *(a2 + 48);
  *(v18 + 48) = *(a2 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a2 + 64);
  *(v18 + 96) = *(a2 + 80);
  v20 = *(a2 + 16);
  *(v18 + 16) = *a2;
  *(v18 + 32) = v20;
  sub_7F1F0(a2, &v28);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DF0, &unk_C2AD8);
  v22 = (v16 + *(result + 36));
  *v22 = sub_7F414;
  v22[1] = v18;
  v22[2] = 0;
  v22[3] = 0;
  return result;
}

uint64_t sub_79F58@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_B6E30();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E00, &qword_C2B78);
  sub_7A030(a1, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_7A030@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v82 = a2;
  v80 = a3;
  v85 = sub_B6C30();
  v4 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = v5;
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E08, &qword_C2B80);
  v7 = __chkstk_darwin(v84);
  v79 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v83 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E10, &qword_C2B88);
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = __chkstk_darwin(v10);
  v76 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v62 - v13;
  sub_B7A60();
  v75 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v105 = a1[1];
  v106 = *(a1 + 4);
  v99 = a1[1];
  *&v100 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B50, &qword_C2B90);
  sub_B75E0();
  v68 = v89;
  v66 = *(&v90 + 1);
  v67 = v90;
  v104 = *a1;
  v89 = *a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  v14 = v99;
  swift_getKeyPath();
  *&v89 = v14;
  v74 = sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v15 = *(v14 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete);

  v16 = *(v4 + 16);
  v72 = v4 + 16;
  v73 = v16;
  v17 = v6;
  v64 = v6;
  v18 = v85;
  v16(v6, v82, v85);
  v71 = *(v4 + 80);
  v19 = (v71 + 104) & ~v71;
  v65 = v19;
  v20 = swift_allocObject();
  v21 = a1[3];
  *(v20 + 48) = a1[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = a1[4];
  *(v20 + 96) = *(a1 + 10);
  v22 = a1[1];
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  v23 = *(v4 + 32);
  v69 = v4 + 32;
  v70 = v23;
  v23(v20 + v19, v17, v18);
  v24 = swift_allocObject();
  v25 = a1[3];
  *(v24 + 48) = a1[2];
  *(v24 + 64) = v25;
  *(v24 + 80) = a1[4];
  *(v24 + 96) = *(a1 + 10);
  v26 = a1[1];
  *(v24 + 16) = *a1;
  *(v24 + 32) = v26;
  v94[0] = 1;
  *&v94[1] = *v98;
  *&v94[4] = *&v98[3];
  *&v94[8] = v68;
  *&v94[24] = v67;
  *&v94[32] = v66;
  v94[40] = v15;
  *&v94[41] = *v97;
  *&v94[44] = *&v97[3];
  *&v95 = sub_7F680;
  *(&v95 + 1) = v20;
  *&v96 = sub_7F69C;
  *(&v96 + 1) = v24;
  sub_7F1F0(a1, &v89);
  sub_7F1F0(a1, &v89);
  sub_B7090();
  sub_B7760();
  v66 = sub_7F6B8();
  v27 = v83;
  sub_B7350();
  v101 = *&v94[32];
  v102 = v95;
  v103 = v96;
  v99 = *v94;
  v100 = *&v94[16];
  sub_7F70C(&v99);
  v29 = *(a1 + 5);
  v28 = *(a1 + 6);
  v30 = *(a1 + 7);
  v67 = *(a1 + 8);
  *&v68 = v30;
  v31 = (v27 + *(v84 + 52));
  *v31 = v29;
  v31[1] = v28;
  v89 = v105;
  *&v90 = v106;

  sub_B75C0();
  v32 = swift_allocObject();
  v33 = a1[3];
  *(v32 + 48) = a1[2];
  *(v32 + 64) = v33;
  *(v32 + 80) = a1[4];
  *(v32 + 96) = *(a1 + 10);
  v34 = a1[1];
  *(v32 + 16) = *a1;
  *(v32 + 32) = v34;
  sub_7F1F0(a1, &v89);
  sub_A8CC(&qword_F1E20, &qword_F1E08, &qword_C2B80, &protocol conformance descriptor for IDView<A, B>);
  sub_B7470();

  sub_A194(v27, &qword_F1E08, &qword_C2B80);
  *v94 = v104;
  sub_B75E0();
  v35 = v89;
  v36 = v90;
  swift_getKeyPath();
  *v94 = v35;
  *&v94[16] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D60, &qword_C2A60);
  sub_B76B0();

  v62 = v89;
  v37 = v90;

  v88 = v104;
  sub_B75C0();
  v38 = v87;
  swift_getKeyPath();
  *&v88 = v38;
  sub_B65C0();

  v39 = *(v38 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete);

  v40 = v64;
  v41 = v85;
  v73(v64, v82, v85);
  v42 = v65;
  v43 = swift_allocObject();
  v44 = a1[3];
  *(v43 + 48) = a1[2];
  *(v43 + 64) = v44;
  *(v43 + 80) = a1[4];
  *(v43 + 96) = *(a1 + 10);
  v45 = a1[1];
  *(v43 + 16) = *a1;
  *(v43 + 32) = v45;
  v70(v43 + v42, v40, v41);
  v46 = swift_allocObject();
  v47 = a1[3];
  *(v46 + 48) = a1[2];
  *(v46 + 64) = v47;
  *(v46 + 80) = a1[4];
  *(v46 + 96) = *(a1 + 10);
  v48 = a1[1];
  *(v46 + 16) = *a1;
  *(v46 + 32) = v48;
  v94[0] = 0;
  *&v94[1] = v88;
  *&v94[4] = *(&v88 + 3);
  *&v94[8] = v62;
  *&v94[24] = v37;
  v94[40] = v39;
  *&v94[41] = v87;
  *&v94[44] = *(&v87 + 3);
  *&v95 = sub_7F848;
  *(&v95 + 1) = v43;
  *&v96 = sub_808E4;
  *(&v96 + 1) = v46;
  sub_7F1F0(a1, &v89);
  sub_7F1F0(a1, &v89);
  sub_B7090();
  sub_B7760();
  v49 = v27;
  sub_B7350();
  v91 = *&v94[32];
  v92 = v95;
  v93 = v96;
  v89 = *v94;
  v90 = *&v94[16];
  sub_7F70C(&v89);
  v50 = (v27 + *(v84 + 52));
  v51 = v67;
  *v50 = v68;
  v50[1] = v51;
  v53 = v76;
  v52 = v77;
  v54 = *(v77 + 16);
  v55 = v86;
  v56 = v78;
  v54(v76, v86, v78);
  v57 = v79;
  sub_7F94C(v49, v79);
  v58 = v80;
  v54(v80, v53, v56);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E28, &qword_C2BC0);
  sub_7F94C(v57, &v58[*(v59 + 48)]);

  sub_A194(v83, &qword_F1E08, &qword_C2B80);
  v60 = *(v52 + 8);
  v60(v55, v56);
  sub_A194(v57, &qword_F1E08, &qword_C2B80);
  v60(v53, v56);
}

uint64_t sub_7AA10(uint64_t a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + 56);

  sub_B77E0();
  sub_B6C20();
  sub_7F9D8(&v4);
}

uint64_t sub_7AB00(uint64_t *a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_7AE1C(v4, v5, v6, v7);
  v10 = v9;
  v20 = a3[1];
  v11 = *(a3 + 4);
  v22 = v20;
  v21 = v11;
  v18 = a3[1];
  v19 = v11;
  sub_7FA2C(&v22, &v16);
  sub_A310(&v21, &v16, &qword_F1E30, &qword_C2BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1B50, &qword_C2B90);
  sub_B75C0();
  if (v8 == v16 && v10 == v17)
  {
  }

  else
  {
    v12 = sub_B7DD0();

    if ((v12 & 1) == 0)
    {
      v18 = v20;
      v19 = v11;
      v16 = v8;
      v17 = v10;

      sub_B75D0();
    }
  }

  sub_7F9D8(&v22);
  sub_A194(&v21, &qword_F1E30, &qword_C2BC8);
  v18 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  v13 = v16;
  if (*(v16 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone) == v8 && *(v16 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone + 8) == v10 || (sub_B7DD0() & 1) != 0)
  {
    sub_8255C(v8, v10);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v18 = v13;
    sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
    sub_B65B0();
  }
}

uint64_t sub_7AE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  v8 = *(v29 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 48);

  v9 = a3;
  v10 = a2;
  v11 = v8(v9, a4);
  v13 = v12;

  sub_B75C0();
  v14 = *(v29 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 32);

  v15 = v14(v11, v13);
  v17 = v16;

  v18 = v15 == a1 && v17 == v10;
  if (!v18 && (sub_B7DD0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v19 = sub_B7990();
  if (v19 >= sub_B7990())
  {
    goto LABEL_10;
  }

  v20 = sub_B7990();
  result = sub_B7990();
  v22 = __OFSUB__(v20, result);
  v23 = v20 - result;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    result = sub_B7990();
    if (!__OFSUB__(result, v23))
    {
      sub_7FAB0((result - v23) & ~((result - v23) >> 63), v11, v13, v24);

      sub_B75C0();
      v25 = sub_B7970();
      v27 = v26;

      v28 = *(v29 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 32);

      v15 = v28(v25, v27);

LABEL_10:

      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_7B0E8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  sub_80F40(v4);

  sub_B7770();
  sub_B6B70();
}

uint64_t sub_7B198(uint64_t a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + 40);

  sub_B77E0();
  sub_B6C20();
  sub_7F9D8(&v4);
}

uint64_t sub_7B288(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  sub_810B4();
}

uint64_t sub_7B2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DF8, &qword_C2B18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v23 = &v20 - v4;
  v5 = sub_B6F50();
  __chkstk_darwin(v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DE0, &qword_C2AD0);
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1DD0, &qword_C2AC8);
  v9 = __chkstk_darwin(v25);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  sub_B7A60();
  v24 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = &type metadata for SolariumFeatureFlag;
  v30 = sub_28360();
  v14 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v27);
  if (v14)
  {
    (*(v3 + 56))(v11, 1, 1, v2);
    v15 = sub_A8CC(&qword_F1DE8, &qword_F1DE0, &qword_C2AD0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v27 = v6;
    v28 = v15;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_A194(v11, &qword_F1DD0, &qword_C2AC8);
  }

  else
  {
    v16 = sub_B6F40();
    __chkstk_darwin(v16);
    *(&v20 - 2) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0690, &unk_BFD50);
    sub_416A4();
    sub_B6A80();
    v17 = sub_A8CC(&qword_F1DE8, &qword_F1DE0, &qword_C2AD0, &protocol conformance descriptor for ToolbarItem<A, B>);
    v18 = v23;
    sub_B6F60();
    (*(v3 + 16))(v11, v18, v2);
    (*(v3 + 56))(v11, 0, 1, v2);
    v27 = v6;
    v28 = v17;
    swift_getOpaqueTypeConformance2();
    sub_B6F70();
    sub_A194(v11, &qword_F1DD0, &qword_C2AC8);
    (*(v3 + 8))(v18, v2);
    (*(v22 + 8))(v8, v6);
  }

  sub_7F320();
  sub_B6F60();
  sub_A194(v13, &qword_F1DD0, &qword_C2AC8);
}

uint64_t sub_7B7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v7 = sub_B62F0();
  v8 = __swift_project_value_buffer(v7, qword_FADB0);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v6, v8, v7);
  (*(v9 + 56))(v6, 0, 1, v7);
  v10 = sub_B78D0();
  v12 = v11;
  sub_A194(v6, &unk_F17B0, &qword_BE7D0);
  v23 = v10;
  v24 = v12;
  v13 = swift_allocObject();
  v14 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a1 + 64);
  *(v13 + 96) = *(a1 + 80);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  sub_7F1F0(a1, v22);
  sub_97E8();
  sub_B7640();
  v22[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  v16 = v23;
  swift_getKeyPath();
  *&v22[0] = v16;
  sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v17 = *(v16 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete);

  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = (v17 & 1) == 0;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0690, &unk_BFD50);
  v21 = (a2 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_417AC;
  v21[2] = v19;
  return result;
}

uint64_t sub_7BB5C(__int128 *a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  sub_810B4();
}

uint64_t sub_7BC28(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1D58, &qword_C2A30);
  sub_B75C0();
  v5 = v11[1];
  swift_getKeyPath();
  *&v12 = v5;
  sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  if ((*(v5 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) & 1) == 0)
  {
    v6 = sub_B7A80();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();

    v8 = sub_B7A50();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;

    sub_30A3C(0, 0, v4, &unk_C2B10, v9);
  }
}

uint64_t sub_7BEA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v4 = v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination;
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_4C52C(v5, v6);
}

void sub_7BF64(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_4C52C(v2, v1);
  sub_81CE8(&v2);
}

uint64_t sub_7BFAC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemContactInfoSetupConfirmationView(0);
  __chkstk_darwin(v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a2 + 72);
  v9 = *(a2 + 80);

  sub_C5D8(v8, v9);
  ItemContactInfoSetupConfirmationView.init(viewModel:onDismiss:)(v7, v8, v9, v6);
  sub_7FC2C(&qword_F1D90, type metadata accessor for ItemContactInfoSetupConfirmationView, &protocol conformance descriptor for ItemContactInfoSetupConfirmationView);
  sub_B73A0();
  sub_80438(v6, type metadata accessor for ItemContactInfoSetupConfirmationView);
}

uint64_t sub_7C1A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v3 = sub_B62F0();
  v4 = __swift_project_value_buffer(v3, qword_FADB0);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  return v6;
}

uint64_t sub_7C328()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v3 = sub_B62F0();
  v4 = __swift_project_value_buffer(v3, qword_FADB0);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  return v6;
}

uint64_t sub_7C4B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-1] - v1;
  v13[3] = &type metadata for SolariumFeatureFlag;
  v13[4] = sub_28360();
  v3 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (v3)
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v4 = sub_B62F0();
    v5 = __swift_project_value_buffer(v4, qword_FADB0);
    v6 = *(v4 - 8);
    (*(v6 + 16))(v2, v5, v4);
    (*(v6 + 56))(v2, 0, 1, v4);
  }

  else
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v7 = sub_B62F0();
    v8 = __swift_project_value_buffer(v7, qword_FADB0);
    v9 = *(v7 - 8);
    (*(v9 + 16))(v2, v8, v7);
    (*(v9 + 56))(v2, 0, 1, v7);
  }

  v10 = sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  return v10;
}

uint64_t sub_7C74C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v3 = sub_B62F0();
  v4 = __swift_project_value_buffer(v3, qword_FADB0);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  return v6;
}

uint64_t sub_7C8D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v3 = sub_B62F0();
  v4 = __swift_project_value_buffer(v3, qword_FADB0);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v2, v4, v3);
  (*(v5 + 56))(v2, 0, 1, v3);
  v6 = sub_B78D0();
  sub_A194(v2, &unk_F17B0, &qword_BE7D0);
  return v6;
}

uint64_t sub_7CA5C@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E38, &qword_C2BF8);
  __chkstk_darwin(v89);
  v3 = &v60[-v2];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E40, &qword_C2C00);
  __chkstk_darwin(v88);
  v5 = &v60[-v4];
  v82 = sub_B67E0();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v85 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_B67D0();
  v79 = *(v87 - 8);
  v7 = __chkstk_darwin(v87);
  v81 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v78 = &v60[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v60[-v11];
  v13 = sub_B6850();
  v86 = *(v13 - 8);
  __chkstk_darwin(v13);
  v84 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E48, &qword_C2C08);
  v16 = __chkstk_darwin(v15);
  v83 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v60[-v18];
  v91[3] = &type metadata for SolariumFeatureFlag;
  v91[4] = sub_28360();
  v20 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v91);
  v21 = sub_7C328();
  if (v20)
  {
    v72 = v21;
    v73 = v22;
    v74 = v13;
    v75 = v19;
    v76 = v15;
    v77 = v5;
    v70 = sub_7C1A0();
    v69 = v23;
    v71 = v60;
    __chkstk_darwin(v70);
    v68 = &v57 + 8;
    v59 = v1;
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v24 = sub_B62F0();
    v25 = __swift_project_value_buffer(v24, qword_FADB0);
    v26 = *(v24 - 8);
    v27 = *(v26 + 16);
    v27(v12, v25, v24);
    v28 = *(v26 + 56);
    v28(v12, 0, 1, v24);
    v67 = sub_B78D0();
    v66 = v29;
    sub_A194(v12, &unk_F17B0, &qword_BE7D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
    v30 = *(sub_B6800() - 8);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v64 = *(v30 + 72);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_BD800;
    v65 = v32;
    v63 = v32 + v31;
    v27(v12, v25, v24);
    v28(v12, 0, 1, v24);
    v62 = sub_B78D0();
    sub_A194(v12, &unk_F17B0, &qword_BE7D0);
    v33 = *(v1 + 40);
    v34 = *(v79 + 13);
    v79 = v34;
    if (v33)
    {
      v61 = enum case for OnboardingTrayAction.State.enabled(_:);
      v34(v78);
    }

    else
    {
      (v34)(v78, enum case for OnboardingTrayAction.State.disabled(_:), v87);
      v61 = enum case for OnboardingTrayAction.State.enabled(_:);
    }

    v41 = *(v80 + 104);
    v42 = v85;
    v43 = v82;
    v41(v85, enum case for OnboardingTrayAction.Style.bold(_:), v82);
    v44 = swift_allocObject();
    v45 = *(v1 + 48);
    v44[3] = *(v1 + 32);
    v44[4] = v45;
    v44[5] = *(v1 + 64);
    v46 = *(v1 + 16);
    v44[1] = *v1;
    v44[2] = v46;
    sub_7FD34(v1, v91);
    sub_B67F0();
    sub_7C4B0();
    (v79)(v81, v61, v87);
    v41(v42, enum case for OnboardingTrayAction.Style.link(_:), v43);
    v47 = swift_allocObject();
    v48 = *(v1 + 48);
    v47[3] = *(v1 + 32);
    v47[4] = v48;
    v47[5] = *(v1 + 64);
    v49 = *(v1 + 16);
    v47[1] = *v1;
    v47[2] = v49;
    sub_7FD34(v1, v91);
    sub_B67F0();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E70, &qword_C2C20);
    v51 = sub_A8CC(&qword_F1E78, &qword_F1E70, &qword_C2C20, &protocol conformance descriptor for TupleView<A>);
    v58 = v50;
    v59 = v51;
    *(&v57 + 1) = v65;
    v52 = v84;
    sub_B6820();
    v53 = sub_B70C0();
    v54 = v83;
    (*(v86 + 32))(v83, v52, v74);
    v55 = v54 + *(v76 + 36);
    *v55 = v53;
    *(v55 + 8) = 0u;
    *(v55 + 24) = 0u;
    *(v55 + 40) = 1;
    v3 = v75;
    sub_7FD94(v54, v75);
    v39 = &qword_F1E48;
    v40 = &qword_C2C08;
    sub_A310(v3, v77, &qword_F1E48, &qword_C2C08);
    swift_storeEnumTagMultiPayload();
    sub_7FB70();
    sub_7FC74();
  }

  else
  {
    __chkstk_darwin(v21);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E50, &unk_C2C10);
    v59 = sub_A8CC(&qword_F1E58, &qword_F1E50, &unk_C2C10, &protocol conformance descriptor for VStack<A>);
    v57 = 0u;
    sub_B6830();
    v35 = sub_B70C0();
    v36 = &v3[*(v15 + 36)];
    *v36 = v35;
    *(v36 + 8) = 0u;
    *(v36 + 24) = 0u;
    v36[40] = 1;
    v37 = sub_B70D0();
    v38 = &v3[*(v89 + 36)];
    *v38 = v37;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    v38[40] = 1;
    v39 = &qword_F1E38;
    v40 = &qword_C2BF8;
    sub_A310(v3, v5, &qword_F1E38, &qword_C2BF8);
    swift_storeEnumTagMultiPayload();
    sub_7FB70();
    sub_7FC74();
  }

  sub_B6F00();
  return sub_A194(v3, v39, v40);
}

uint64_t sub_7D5D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E80, &qword_C2C28);
  __chkstk_darwin(v36);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E88, &qword_C2C30);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v36 - v9;
  v10 = sub_7C328();
  v12 = v11;
  v13 = *(a1 + 24);
  v40 = *(a1 + 8);
  v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E90, &qword_C2C38);
  sub_B76C0();
  *&v40 = v10;
  *(&v40 + 1) = v12;
  sub_97E8();
  sub_B77A0();
  v14 = sub_B70B0();
  v15 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E98, &qword_C2C40) + 36)];
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  sub_B7520();
  v16 = sub_B7510();

  v17 = sub_B70B0();
  v18 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1EA0, &qword_C2C48) + 36)];
  *v18 = v16;
  v18[8] = v17;
  v19 = &v4[*(v36 + 36)];
  v20 = *(sub_B6C60() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = sub_B6E70();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #26.0 }

  *v19 = _Q0;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10C0, &unk_C0D90) + 36)] = 256;
  sub_7FE04();
  v28 = v37;
  sub_B7280();
  sub_A194(v4, &qword_F1E80, &qword_C2C28);
  v29 = *(v6 + 16);
  v30 = v38;
  v29(v38, v28, v5);
  v31 = v39;
  *v39 = 0x403E000000000000;
  *(v31 + 8) = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1ED0, &qword_C2C58);
  v29(v31 + *(v32 + 48), v30, v5);
  v33 = *(v6 + 8);
  v33(v28, v5);
  v33(v30, v5);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E70, &qword_C2C20);
  return (*(*(v34 - 8) + 56))(v31, 0, 1, v34);
}

uint64_t sub_7DA04@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E50, &unk_C2C10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  *v7 = sub_B6EA0();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1ED8, &qword_C2C60);
  sub_7DB34(a1, &v7[*(v8 + 44)]);
  sub_AB00(v7, a2, &qword_F1E50, &unk_C2C10);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_7DB34@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v3 = sub_B6BB0();
  v66 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1EE0, &qword_C2C68);
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v63 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1EE8, &qword_C2C70);
  v65 = *(v71 - 8);
  __chkstk_darwin(v71);
  v10 = &v63 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1EF0, &qword_C2C78);
  v70 = *(v74 - 8);
  __chkstk_darwin(v74);
  v84 = &v63 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1EF8, &qword_C2C80);
  v72 = *(v76 - 1);
  __chkstk_darwin(v76);
  v68 = &v63 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F00, &qword_C2C88);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v69 = &v63 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F08, &qword_C2C90);
  v79 = *(v80 - 8);
  v14 = __chkstk_darwin(v80);
  v88 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v63 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v78 = *(v87 - 8);
  v17 = __chkstk_darwin(v87);
  v85 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v90 = &v63 - v19;
  sub_B7A60();
  v77 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v91 = sub_7C1A0();
  v92 = v20;
  sub_97E8();
  v82 = sub_B7200();
  v81 = v21;
  v67 = v22;
  v89 = v23;
  KeyPath = swift_getKeyPath();
  v95 = sub_7C4B0();
  v96 = v24;
  v25 = swift_allocObject();
  v26 = a1[3];
  v25[3] = a1[2];
  v25[4] = v26;
  v25[5] = a1[4];
  v27 = a1[1];
  v25[1] = *a1;
  v25[2] = v27;
  sub_7FD34(a1, &v91);
  v28 = sub_B7640();
  __chkstk_darwin(v28);
  *(&v63 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F10, &qword_C2CC8);
  sub_8009C();
  sub_B7180();
  sub_B6BA0();
  v29 = sub_A8CC(&qword_F1F70, &qword_F1EE0, &qword_C2C68, &protocol conformance descriptor for Form<A>);
  sub_B7490();
  (*(v66 + 8))(v5, v3);
  (*(v64 + 8))(v8, v6);
  v95 = sub_B74E0();
  v91 = v6;
  v92 = v3;
  v93 = v29;
  v94 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v71;
  sub_B7380();

  (*(v65 + 8))(v10, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C2800;
  v33 = sub_B70C0();
  *(inited + 32) = v33;
  v34 = sub_B70E0();
  *(inited + 33) = v34;
  v35 = sub_B7100();
  *(inited + 34) = v35;
  sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v33)
  {
    sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v34)
  {
    sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v35)
  {
    sub_B70F0();
  }

  v91 = v31;
  v92 = &type metadata for Color;
  v93 = OpaqueTypeConformance2;
  v94 = &protocol witness table for Color;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v68;
  v38 = v74;
  v39 = v84;
  sub_B7270();
  (*(v70 + 8))(v39, v38);
  v91 = v38;
  v92 = v36;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v69;
  v42 = v76;
  sub_B72B0();
  (*(v72 + 8))(v37, v42);
  v91 = v42;
  v92 = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v86;
  v44 = v75;
  sub_B7390();
  (*(v73 + 8))(v41, v44);
  v45 = v78;
  v46 = *(v78 + 16);
  v47 = v85;
  v48 = v87;
  v46(v85, v90, v87);
  v49 = v79;
  v76 = *(v79 + 16);
  v50 = v80;
  (v76)(v88, v43, v80);
  v51 = v63;
  v52 = v81;
  *v63 = v82;
  v51[1] = v52;
  LODWORD(v84) = v67 & 1;
  *(v51 + 16) = v67 & 1;
  v53 = KeyPath;
  v51[3] = v89;
  v51[4] = v53;
  *(v51 + 40) = 1;
  v51[6] = 0x4020000000000000;
  *(v51 + 56) = 0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F78, &qword_C2CF8);
  v46(v51 + v54[16], v47, v48);
  v55 = v51 + v54[20];
  *v55 = 0x4048000000000000;
  v55[8] = 0;
  v56 = v88;
  (v76)(v51 + v54[24], v88, v50);
  v57 = v82;
  v58 = v81;
  sub_41410(v82, v81, v84);
  v59 = *(v49 + 8);

  v59(v86, v50);
  v60 = *(v45 + 8);
  v61 = v87;
  v60(v90, v87);
  v59(v56, v50);
  v60(v85, v61);
  sub_9C84(v57, v58, v84);
}

uint64_t sub_7E734(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(a1 + 48))(isCurrentExecutor);
}

uint64_t sub_7E7D8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F28, &qword_C2CD0);
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = v27 - v2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F10, &qword_C2CC8);
  __chkstk_darwin(v28);
  v4 = v27 - v3;
  sub_B7A60();
  v27[2] = sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v27[1] = v27;
  __chkstk_darwin(isCurrentExecutor);
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39 = sub_7C74C();
  v40 = v6;
  sub_97E8();
  v7 = sub_B7200();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v39 = v7;
  v40 = v9;
  v41 = v11 & 1;
  v42 = v13;
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = sub_7C8D4();
  v36 = v14;
  v15 = sub_B7200();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v35 = v15;
  v36 = v17;
  v37 = v19 & 1;
  v38 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F80, &qword_C2D00);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F30, &qword_C2CD8);
  v23 = sub_80220();
  v33 = v22;
  v34 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_B7710();
  v39 = sub_B74E0();
  v25 = sub_B76A0();
  (*(v30 + 32))(v4, v24, v31);
  *&v4[*(v28 + 36)] = v25;
  sub_AB00(v4, v32, &qword_F1F10, &qword_C2CC8);
}

void sub_7EBD4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v57 = a1;
  v53 = sub_B6C60();
  __chkstk_darwin(v53);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F88, &qword_C2D08);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F40, &qword_C2CE0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F30, &qword_C2CD8);
  __chkstk_darwin(v55);
  v11 = &v52 - v10;
  sub_B7A60();
  v54 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_B6E60();
  v12 = *(v57 + 24);
  v58 = *(v57 + 8);
  v59 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E90, &qword_C2C38);
  sub_B76C0();
  sub_B7790();
  v13 = sub_B70B0();
  sub_B6A10();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E98, &qword_C2C40) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = &v9[*(v7 + 36)];
  v23[32] = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  sub_B6AF0();
  sub_80314();
  sub_B72F0();
  sub_A194(v9, &qword_F1F40, &qword_C2CE0);
  v24 = *(v53 + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = sub_B6E70();
  (*(*(v26 - 8) + 104))(&v3[v24], v25, v26);
  __asm { FMOV            V0.2D, #8.0 }

  *v3 = _Q0;
  sub_B74C0();
  v32 = sub_B7510();

  sub_B6A70();
  sub_803D4(v3, v6);
  v33 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F90, &qword_C2D10) + 36)];
  v34 = v59;
  *v33 = v58;
  *(v33 + 1) = v34;
  *(v33 + 4) = v60;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F98, &qword_C2D18);
  *&v6[*(v35 + 52)] = v32;
  *&v6[*(v35 + 56)] = 256;
  v36 = sub_B7760();
  v38 = v37;
  sub_80438(v3, &type metadata accessor for RoundedRectangle);
  v39 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1FA0, &unk_C2D20) + 36)];
  *v39 = v36;
  v39[1] = v38;
  v40 = sub_B74E0();
  v41 = &v11[*(v55 + 36)];
  sub_803D4(v6, v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1FA8, &qword_C40B0);
  *(v41 + *(v42 + 52)) = v40;
  *(v41 + *(v42 + 56)) = 256;
  v43 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1FB0, &qword_C2D30) + 36);
  sub_A310(v6, v43, &qword_F1F88, &qword_C2D08);
  v44 = sub_B7760();
  v46 = v45;
  sub_A194(v6, &qword_F1F88, &qword_C2D08);
  v47 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1FB8, &qword_C2D38) + 36));
  *v47 = v44;
  v47[1] = v46;
  v48 = sub_B7760();
  v50 = v49;
  v51 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1F68, &qword_C2CF0) + 36));
  *v51 = v48;
  v51[1] = v50;
  sub_80220();
  sub_B7280();
  sub_A194(v11, &qword_F1F30, &qword_C2CD8);
}

void sub_7F22C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_4C52C(v2, v1);
  sub_81CE8(&v2);
}

uint64_t sub_7F274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = 0;
  }

  else
  {
  }

  *a2 = result;
  return result;
}

unint64_t sub_7F2BC()
{
  result = qword_F1D88;
  if (!qword_F1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1D88);
  }

  return result;
}

unint64_t sub_7F320()
{
  result = qword_F1DD8;
  if (!qword_F1DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1DD0, &qword_C2AC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1DE0, &qword_C2AD0);
    sub_A8CC(&qword_F1DE8, &qword_F1DE0, &qword_C2AD0, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1DD8);
  }

  return result;
}

void sub_7F41C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo);
}

uint64_t sub_7F520(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_7F558()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7F598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_8290C(a1, v4, v5, v6);
}

unint64_t sub_7F6B8()
{
  result = qword_F1E18;
  if (!qword_F1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1E18);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{
  v1 = sub_B6C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 88))
  {
  }

  v5 = (v3 + 104) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t objectdestroyTm_8()
{

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_7F94C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E08, &qword_C2B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7FAB0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_B79A0();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

unint64_t sub_7FB70()
{
  result = qword_F1E60;
  if (!qword_F1E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1E48, &qword_C2C08);
    sub_7FC2C(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1E60);
  }

  return result;
}

uint64_t sub_7FC2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_7FC74()
{
  result = qword_F1E68;
  if (!qword_F1E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1E38, &qword_C2BF8);
    sub_7FB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1E68);
  }

  return result;
}

uint64_t sub_7FD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1E48, &qword_C2C08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_7FE04()
{
  result = qword_F1EA8;
  if (!qword_F1EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1E80, &qword_C2C28);
    sub_7FEBC();
    sub_A8CC(&qword_F10F8, &qword_F10C0, &unk_C0D90, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1EA8);
  }

  return result;
}

unint64_t sub_7FEBC()
{
  result = qword_F1EB0;
  if (!qword_F1EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1EA0, &qword_C2C48);
    sub_7FF74();
    sub_A8CC(&qword_F1EC0, &qword_F1EC8, &qword_C2C50, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1EB0);
  }

  return result;
}

unint64_t sub_7FF74()
{
  result = qword_F1EB8;
  if (!qword_F1EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1E98, &qword_C2C40);
    sub_A8CC(&qword_F1B00, &qword_F1AF8, &qword_C2148, &protocol conformance descriptor for TextField<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1EB8);
  }

  return result;
}

uint64_t objectdestroy_72Tm_0()
{

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_8009C()
{
  result = qword_F1F18;
  if (!qword_F1F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F10, &qword_C2CC8);
    sub_80154();
    sub_A8CC(&qword_F0810, &qword_F0818, &qword_BFF18, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1F18);
  }

  return result;
}

unint64_t sub_80154()
{
  result = qword_F1F20;
  if (!qword_F1F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F28, &qword_C2CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F30, &qword_C2CD8);
    sub_80220();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1F20);
  }

  return result;
}

unint64_t sub_80220()
{
  result = qword_F1F38;
  if (!qword_F1F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F30, &qword_C2CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F40, &qword_C2CE0);
    sub_80314();
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_F1F60, &qword_F1F68, &qword_C2CF0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1F38);
  }

  return result;
}

unint64_t sub_80314()
{
  result = qword_F1F48;
  if (!qword_F1F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1F40, &qword_C2CE0);
    sub_7FF74();
    sub_A8CC(&qword_F1F50, &qword_F1F58, &qword_C2CE8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1F48);
  }

  return result;
}

uint64_t sub_803D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_B6C60();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_80438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_80498@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(&v17 + 1) = 0xE000000000000000;
  sub_B75B0();
  *&v17 = a1;
  type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel(0);

  sub_B75B0();
  v7 = v23;
  swift_getKeyPath();
  *&v23 = a1;
  sub_7FC2C(&qword_F1D98, type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v8 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone);
  v9 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone + 8);
  v10 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 32);

  v10(v8, v9);

  sub_B75B0();

  v17 = v7;
  v18 = v23;
  *&v19 = v24;
  *(&v19 + 1) = 0x656E6F6850;
  *&v20 = 0xE500000000000000;
  *(&v20 + 1) = 0x6C69616D45;
  *&v21 = 0xE500000000000000;
  *(&v21 + 1) = a2;
  v22 = a3;
  v23 = v7;
  v24 = v18;
  v25 = v19;
  v26 = 0x656E6F6850;
  v27 = 0xE500000000000000;
  v28 = 0x6C69616D45;
  v29 = 0xE500000000000000;
  v30 = a2;
  v31 = a3;
  sub_7F1F0(&v17, v16);
  sub_806DC(&v23);
  v11 = v20;
  v12 = v21;
  *(a4 + 32) = v19;
  *(a4 + 48) = v11;
  *(a4 + 64) = v12;
  *(a4 + 80) = v22;
  result = *&v17;
  v14 = v18;
  *a4 = v17;
  *(a4 + 16) = v14;
  return result;
}

uint64_t sub_8071C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1D70, &qword_C2A98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1D78, &qword_C2AA0);
  sub_A8CC(&qword_F1D80, &qword_F1D70, &qword_C2A98, &protocol conformance descriptor for ScrollViewReader<A>);
  sub_7F2BC();
  type metadata accessor for ItemContactInfoSetupConfirmationView(255);
  sub_7FC2C(&qword_F1D90, type metadata accessor for ItemContactInfoSetupConfirmationView, &protocol conformance descriptor for ItemContactInfoSetupConfirmationView);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_80858()
{
  result = qword_F1FC0;
  if (!qword_F1FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F1FC8, &unk_C2D70);
    sub_7FB70();
    sub_7FC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F1FC0);
  }

  return result;
}

uint64_t sub_8090C(__int16 a1, __int16 a2)
{
  if (HIBYTE(a1))
  {
    v2 = HIBYTE(a2) == 2 && ((a2 ^ a1) & 1) == 0;
    if (HIBYTE(a1) == 1)
    {
      return HIBYTE(a2) == 1;
    }

    else
    {
      return v2;
    }
  }

  else if (HIBYTE(a2))
  {
    return 0;
  }

  else
  {
    return sub_B7EA0();
  }
}

BOOL sub_80950(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_4C540(a1, 1);
        sub_4C540(a3, 1);
        v7 = sub_B7EA0();
        sub_4BE2C(a1, 1);
        return v7 & 1;
      }
    }

    else if (a4 == 2)
    {
      v10 = a3 == a1;
      sub_4C540(a1, 2);
      sub_4C540(a3, 2);
      sub_4BE2C(a1, 2);
      return v10;
    }
  }

  else if (!a4)
  {
    sub_4C540(a1, 0);
    sub_4C540(a3, 0);
    sub_4BE2C(a3, 0);
    if (a1 == a3)
    {
      sub_4BE2C(a3, 0);
      return 1;
    }

    v14 = a1;
    v15 = 0;
    goto LABEL_11;
  }

  sub_4C540(a1, a2);
  sub_4C540(a3, a4);
  sub_4BE2C(a1, a2);
  v14 = a3;
  v15 = a4;
LABEL_11:
  sub_4BE2C(v14, v15);
  return 0;
}

uint64_t sub_80A98(uint64_t a1, __int16 a2)
{
  if (!BYTE1(a1))
  {
    if (!HIBYTE(a2))
    {
      return sub_B7EA0();
    }

    return 0;
  }

  if (BYTE1(a1) == 1)
  {
    if (HIBYTE(a2) == 1)
    {
      return sub_B7EA0();
    }

    return 0;
  }

  return HIBYTE(a2) == 2 && a2 == a1;
}

uint64_t sub_80ADC(uint64_t a1, __int16 a2)
{
  if (BYTE1(a1))
  {
    v2 = HIBYTE(a2) == 2 && a2 == a1;
    if (BYTE1(a1) == 1)
    {
      return HIBYTE(a2) == 1;
    }

    else
    {
      return v2;
    }
  }

  else if (HIBYTE(a2))
  {
    return 0;
  }

  else
  {
    return sub_B7EA0();
  }
}

BOOL sub_80B20(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_4C540(a1, 1);
        sub_4C540(a3, 1);
        v7 = sub_B7EA0();
        v8 = a1;
        v9 = 1;
LABEL_9:
        sub_4BE2C(v8, v9);
        return v7 & 1;
      }
    }

    else if (a4 == 2)
    {
      sub_4C540(a1, 2);
      sub_4C540(a3, 2);
      v7 = sub_B7EA0();
      v8 = a1;
      v9 = 2;
      goto LABEL_9;
    }
  }

  else if (!a4)
  {
    sub_4C540(a1, 0);
    sub_4C540(a3, 0);
    sub_4BE2C(a3, 0);
    sub_4BE2C(a1, 0);
    return a1 == a3;
  }

  sub_4C540(a1, a2);
  sub_4C540(a3, a4);
  sub_4BE2C(a1, a2);
  sub_4BE2C(a3, a4);
  return 0;
}

BOOL sub_80C50(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_4C540(a1, 1);
        sub_4C540(a3, 1);
        v7 = sub_B7EA0();
        sub_4BE2C(a1, 1);
        return v7 & 1;
      }
    }

    else if (a4 == 2)
    {
      sub_4C540(a1, 2);
      sub_4C540(a3, 2);
      sub_4BE2C(a1, 2);
      return 1;
    }
  }

  else if (!a4)
  {
    sub_4C540(a1, 0);
    sub_4C540(a3, 0);
    sub_4BE2C(a3, 0);
    sub_4BE2C(a1, 0);
    return a1 == a3;
  }

  sub_4C540(a1, a2);
  sub_4C540(a3, a4);
  sub_4BE2C(a1, a2);
  sub_4BE2C(a3, a4);
  return 0;
}

uint64_t sub_80D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  if (!a2)
  {
    v9 = a4;
    sub_83A34(a1, 0);
    if (!v9)
    {
      sub_83A34(a3, 0);
      MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 = sub_B7EA0();
      sub_83A4C(a1, 0);
      return MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 & 1;
    }

    goto LABEL_9;
  }

  if (a2 != 1)
  {
    v10 = a4;
    sub_83A34(a1, 2);
    if (v10 == 2)
    {
      sub_83A34(a3, 2);
      MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 = sub_B7EA0();
      sub_83A4C(a1, 2);
      return MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 & 1;
    }

LABEL_9:
    sub_83A34(a3, v4);
LABEL_11:
    sub_83A4C(a1, v6);
    sub_83A4C(a3, v4);
    MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 = 0;
    return MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 & 1;
  }

  v13 = a1;
  v14 = 1;
  if (a4 != 1)
  {
    sub_83A34(a1, 1);
    sub_83A34(a3, v4);
    sub_83A34(a1, 1);

    goto LABEL_11;
  }

  v12 = a3;
  sub_83A34(a1, 1);
  sub_83A34(a3, 1);
  sub_83A34(a1, 1);
  MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 = _s13FindMyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0(&v13, &v12);

  sub_83A4C(a1, 1);
  return MyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0 & 1;
}

void sub_80F40(char a1)
{
  v2 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod;
  v3 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod);
  if (v3 == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod) = a1 & 1;
    swift_getKeyPath();
    sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
    sub_B65C0();

    if (v3 != *(v1 + v2))
    {
      sub_82118();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
    sub_B65B0();
  }
}

uint64_t sub_810B4()
{
  v1 = sub_B6320();
  v61 = *(v1 - 8);
  v62 = v1;
  __chkstk_darwin(v1);
  v60 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LostAccessory(0);
  __chkstk_darwin(v3 - 8);
  v67 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LostModeInfo(0);
  v6 = __chkstk_darwin(v5);
  v66 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v50 - v10;
  v12 = sub_B6370();
  v63 = *(v12 - 8);
  v64 = v12;
  __chkstk_darwin(v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v71[0] = v0;
  sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  if (*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod))
  {
    swift_getKeyPath();
    *&v71[0] = v0;
    sub_B65C0();

    v15 = v0;

    sub_B6350();
    if (qword_EEAC8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  swift_getKeyPath();
  *&v71[0] = v0;
  sub_B65C0();

  v15 = v0;

  sub_B6350();
  if (qword_EEAC8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v16 = sub_B62F0();
  v17 = __swift_project_value_buffer(v16, qword_FADB0);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v11, v17, v16);
  (*(v18 + 56))(v11, 0, 1, v16);
  v19 = sub_B78D0();
  v21 = v20;
  v59 = v14;
  sub_2B630(v11);
  v22 = v65;
  (*(v63 + 16))(v65, v14, v64);
  v23 = (v22 + *(v5 + 20));
  *v23 = v19;
  v23[1] = v21;
  sub_7788C(v22, v66, type metadata accessor for LostModeInfo);
  v24 = v15 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies;
  v25 = v15;
  v58 = v15;
  v27 = *(v15 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 56);
  v26 = *(v24 + 64);
  v29 = *(v24 + 88);
  v28 = *(v24 + 96);
  v31 = *(v24 + 136);
  v30 = *(v24 + 144);
  v32 = *(v24 + 168);
  *&v71[0] = *v24;
  v50 = *(v24 + 8);
  *(v71 + 8) = v50;
  v51 = *(v24 + 24);
  *(&v71[1] + 8) = v51;
  v53 = *(v24 + 40);
  *(&v71[2] + 8) = v53;
  *(&v71[3] + 1) = v27;
  *&v72[0] = v28;
  v54 = *(v24 + 104);
  *(v72 + 8) = v54;
  v55 = *(v24 + 120);
  *(&v72[1] + 8) = v55;
  *(&v72[2] + 1) = v31;
  *&v73[0] = v26;
  v52 = *(v24 + 72);
  *(v73 + 8) = v52;
  *(&v73[1] + 1) = v29;
  *&v74[0] = v30;
  v56 = *(v24 + 152);
  *(v74 + 8) = v56;
  *(&v74[1] + 1) = v32;
  v57 = type metadata accessor for LostAccessory;
  sub_7788C(v25 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_lostAccessory, v67, type metadata accessor for LostAccessory);
  type metadata accessor for ItemContactInfoSetupConfirmationViewModel(0);
  v33 = swift_allocObject();
  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) = 0;
  v34 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination;
  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination) = -256;

  sub_B65F0();
  *(v33 + v34) = -256;
  v35 = v66;
  sub_7788C(v66, v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, type metadata accessor for LostModeInfo);
  sub_7788C(v35, v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, type metadata accessor for LostModeInfo);
  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType) = 0;
  v36 = (v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
  v37 = v74[0];
  v36[8] = v73[1];
  v36[9] = v37;
  v36[10] = v74[1];
  v38 = v72[1];
  v36[4] = v72[0];
  v36[5] = v38;
  v39 = v73[0];
  v36[6] = v72[2];
  v36[7] = v39;
  v40 = v71[1];
  *v36 = v71[0];
  v36[1] = v40;
  v41 = v71[3];
  v36[2] = v71[2];
  v36[3] = v41;
  sub_777DC(v71, &v69);
  v42 = v60;
  sub_B6330();
  (*(v61 + 32))(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v42, v62);
  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton) = 0;
  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton) = 0;
  MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
  v44 = (v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
  *v44 = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
  v44[1] = v45;
  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound) = 0;
  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound) = 0;
  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting) = 0;
  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling) = 0;
  v46 = *&v74[0];
  v47 = *&v74[1];
  v68 = 0;

  v46(&v69, &v68);

  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems) = v69;
  v68 = 0;

  v47(&v69, &v68);
  sub_77838(v71);

  *(v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems) = v69;
  v48 = v67;
  sub_7788C(v67, v33 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, v57);
  sub_769C4();
  sub_778F4(v48, type metadata accessor for LostAccessory);
  sub_778F4(v35, type metadata accessor for LostModeInfo);
  v69 = v33;
  v70 = 0;
  sub_81CE8(&v69);
  sub_778F4(v65, type metadata accessor for LostModeInfo);
  return (*(v63 + 8))(v59, v64);
}

uint64_t sub_81A28(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v4 = *(v2 + *a2);

  return v4;
}

void sub_81B04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (v10 = a3, v11 = a4, v12 = sub_B7DD0(), a3 = v10, a4 = v11, (v12 & 1) != 0))
  {
    sub_82570(a1, a2, a3, a4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
    sub_B65B0();
  }
}

uint64_t sub_81C3C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v3 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination;
  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination);
  *a1 = v4;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_4C52C(v4, v5);
}

void sub_81CE8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination;
  v5 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination);
  v6 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination + 8);
  sub_4C52C(v5, *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination + 8));
  v7 = sub_83614(v5, v6, v2, v3);
  sub_4BE18(v5, v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
    sub_B65B0();
    sub_4BE18(v2, v3);
  }

  else
  {
    v9 = *v4;
    *v4 = v2;
    v10 = *(v4 + 8);
    *(v4 + 8) = v3;

    sub_4BE18(v9, v10);
  }
}

uint64_t sub_81E80(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  return *(v2 + *a2);
}

void sub_81F94(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
    sub_B65B0();
  }
}

uint64_t sub_82084()
{
  swift_getKeyPath();
  sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  return *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod);
}

void sub_82118()
{
  v1 = v0;
  swift_getKeyPath();
  sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v2 = v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies;
  if (*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod))
  {
    v3 = *(v2 + 80);
    swift_getKeyPath();

    sub_B65C0();

    v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone);
    v5 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone + 8);

    v6 = v3(v4, v5) & 1;

    v7 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete;
    if (v6 != *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *(v2 + 64);
    swift_getKeyPath();

    sub_B65C0();

    v9 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email);
    v10 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email + 8);

    v6 = v8(v9, v10) & 1;

    v7 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete;
    if (v6 != *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete))
    {
LABEL_5:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_B65B0();

      return;
    }
  }

  *(v1 + v7) = v6;
}

void sub_823FC(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  *a4 = *(v6 + *a3);
}

void sub_8249C(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod;
  v4 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod);
  *(a1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod) = a2 & 1;
  swift_getKeyPath();
  sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  if (v4 != *(a1 + v3))
  {
    sub_82118();
  }
}

void sub_82570(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (v4 + *a3);
  v7 = *v5;
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  swift_getKeyPath();
  sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  if (*v5 == v7 && v5[1] == v6)
  {
  }

  else
  {
    v9 = sub_B7DD0();

    if ((v9 & 1) == 0)
    {
      sub_82118();
    }
  }
}

uint64_t sub_82664@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  sub_B65C0();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

void keypath_set_11Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v10 = a1[1];

  sub_81B04(v11, v10, a5, a6, a7);
}

uint64_t sub_827F4(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination;
  *v8 = 0;
  *(v8 + 8) = -1;
  sub_B65F0();
  sub_4BE18(*v8, *(v8 + 8));
  *v8 = v6;
  *(v8 + 8) = v7;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__isComplete) = 0;
  v9 = (v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies);
  v10 = a2[9];
  v9[8] = a2[8];
  v9[9] = v10;
  v9[10] = a2[10];
  v11 = a2[5];
  v9[4] = a2[4];
  v9[5] = v11;
  v12 = a2[7];
  v9[6] = a2[6];
  v9[7] = v12;
  v13 = a2[1];
  *v9 = *a2;
  v9[1] = v13;
  v14 = a2[3];
  v9[2] = a2[2];
  v9[3] = v14;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__contactMethod) = 1;
  v15 = (v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__phone);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) = 0;
  sub_83A64(a3, v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_lostAccessory);
  return v3;
}

uint64_t sub_8290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_B7A60();
  v4[8] = sub_B7A50();
  v6 = sub_B7A00();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_829A4, v6, v5);
}

uint64_t sub_829A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies;
    v3 = *(Strong + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies);
    v0[12] = *(Strong + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 8);
    v0[13] = *(v2 + 24);

    v7 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_82B24;

    return v7();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_82B24(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v5 = sub_82EF0;
  }

  else
  {
    v5 = sub_82C3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_82C3C()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_82CA8, v1, v2);
}

uint64_t sub_82CA8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[11];

  v4 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email) == v1 && *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email + 8) == v2;
  if (v4 || (sub_B7DD0() & 1) != 0)
  {
    sub_82570(v0[15], v0[16], &OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__email, &unk_C3010);
  }

  else
  {
    v5 = v0[16];
    v6 = v0[15];
    v7 = v0[11];
    swift_getKeyPath();
    v8 = swift_task_alloc();
    v8[2] = v7;
    v8[3] = v6;
    v8[4] = v5;
    v0[6] = v7;
    sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
    sub_B65B0();
  }

  v9 = v0[11];
  if (*(v9 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) == 1)
  {
    *(v9 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) = 1;
  }

  else
  {
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = 1;
    v0[5] = v9;
    sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
    sub_B65B0();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_82EF0()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_82F5C, v1, v2);
}

uint64_t sub_82F5C()
{

  v1 = v0[11];
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) == 1)
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__hasFetchedInitialContactInfo) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    v0[5] = v1;
    sub_83780(&qword_F1D98, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
    sub_B65B0();
  }

  v3 = v0[1];

  return v3();
}

uint64_t ItemContactInfoSetupEnterDetailsViewModel.deinit()
{
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_lostAccessory, type metadata accessor for LostAccessory);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 128);
  v9[9] = v1;
  v9[10] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 160);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 64);
  v9[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 96);
  v9[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies);
  v9[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 32);
  v9[3] = v5;
  sub_831BC(v9);
  sub_4BE18(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination + 8));

  v6 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel___observationRegistrar;
  v7 = sub_B6600();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t ItemContactInfoSetupEnterDetailsViewModel.__deallocating_deinit()
{
  sub_778F4(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_lostAccessory, type metadata accessor for LostAccessory);
  v1 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 128);
  v9[9] = v1;
  v9[10] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 160);
  v2 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 64);
  v9[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 96);
  v9[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies);
  v9[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel_dependencies + 32);
  v9[3] = v5;
  sub_831BC(v9);
  sub_4BE18(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination + 8));

  v6 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel___observationRegistrar;
  v7 = sub_B6600();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return swift_deallocClassInstance();
}

uint64_t sub_83350(uint64_t a1)
{
  result = sub_83780(&qword_F1FF8, &protocol conformance descriptor for ItemContactInfoSetupEnterDetailsViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel(uint64_t a1)
{
  result = qword_F2048;
  if (!qword_F2048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8341C(uint64_t a1)
{
  result = type metadata accessor for LostAccessory(319);
  if (v2 <= 0x3F)
  {
    result = sub_B6600();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_8353C()
{
  result = qword_F2110;
  if (!qword_F2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2110);
  }

  return result;
}

unint64_t sub_83590(uint64_t a1)
{
  *(a1 + 8) = sub_7F2BC();
  result = sub_835C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_835C0()
{
  result = qword_F2118;
  if (!qword_F2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2118);
  }

  return result;
}

uint64_t sub_83614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a2 == 0xFF)
  {
    if (a4 == 0xFF)
    {
      sub_4C52C(a1, 255);
      sub_4C52C(a3, 255);
      sub_4BE18(a1, 255);
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_5;
  }

  if (a4 == 0xFF)
  {
LABEL_5:
    v11 = a2;
    sub_4C52C(a1, a2);
    sub_4C52C(a3, v4);
    sub_4BE18(a1, v11);
    sub_4BE18(a3, v4);
    v9 = 1;
    return v9 & 1;
  }

  v7 = a2;
  sub_4C52C(a1, a2);
  sub_4C52C(a3, v4);
  v8 = sub_80B20(a1, v7, a3, v4);
  sub_4BE18(a3, v4);
  sub_4BE18(a1, v7);
  v9 = !v8;
  return v9 & 1;
}

uint64_t sub_83720()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupEnterDetailsViewModel__destination;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_4C52C(v1, v4);
  return sub_4BE18(v3, v5);
}

uint64_t sub_83780(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_839D0(void *a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);

  sub_82570(v5, v6, a1, a2);
}

uint64_t sub_83A34(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

double sub_83A4C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_83A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostAccessory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_83B28@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  result = sub_B68C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_83B68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_B6DE0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ItemContactInfoSetupIntroductionView(0);
  sub_A310(v1 + *(v10 + 28), v9, &qword_EF668, &qword_BE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B6A40();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_B7B50();
    v13 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void *ItemContactInfoSetupIntroductionView.init(viewModel:onDismiss:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = xmmword_C3130;
  v7 = *(type metadata accessor for ItemContactInfoSetupIntroductionView(0) + 28);
  *(a4 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ItemContactInfoSetupIntroductionViewModel(0);
  result = sub_B75B0();
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupIntroductionView(uint64_t a1)
{
  result = qword_F2248;
  if (!qword_F2248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ItemContactInfoSetupIntroductionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v102 = &v101 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v2 - 8);
  v120 = &v101 - v3;
  v4 = type metadata accessor for ItemContactInfoSetupIntroductionView(0);
  v136 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v139 = v5;
  v140 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_B67E0();
  v131 = *(v135 - 8);
  __chkstk_darwin(v135);
  v114 = (&v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = sub_B67D0();
  OpaqueTypeConformance2 = *(v112 - 8);
  __chkstk_darwin(v112);
  v113 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B6980();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v101 - v13;
  v117 = sub_B6850();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2120, &qword_C3170);
  v119 = *(v137 - 8);
  __chkstk_darwin(v137);
  v118 = &v101 - v16;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2128, &qword_C3178);
  v125 = *(v128 - 8);
  __chkstk_darwin(v128);
  v138 = &v101 - v17;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2130, &qword_C3180);
  v126 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v101 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2138, &qword_C3188);
  __chkstk_darwin(v123);
  v127 = &v101 - v19;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v20 = sub_B62F0();
  v21 = __swift_project_value_buffer(v20, qword_FADB0);
  v22 = *(v20 - 8);
  v23 = *(v22 + 16);
  v108 = v21;
  v107 = v23;
  (v23)(v14);
  v24 = *(v22 + 56);
  v24(v14, 0, 1, v20);
  v110 = sub_B78D0();
  v109 = v25;
  sub_A194(v14, &unk_F17B0, &qword_BE7D0);
  v145 = &type metadata for SolariumFeatureFlag;
  v146 = sub_28360();
  v26 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v142);
  if (v26)
  {
    v27 = [objc_opt_self() clearColor];
  }

  else
  {
    v28 = *(v141 + 24);
    v142 = *(v141 + 16);
    v143 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
    sub_B75C0();
    v29 = v156 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory;
    LOBYTE(v29) = *(v29 + *(type metadata accessor for LostAccessory(0) + 24));

    sub_40D5C();
    if (v29)
    {
      if (qword_EEB18 != -1)
      {
        swift_once();
      }

      v30 = qword_FAED0;
    }

    else
    {
      if (qword_EEB20 != -1)
      {
        swift_once();
      }

      v30 = qword_FAEE8;
    }

    v31 = __swift_project_value_buffer(v8, v30);
    (*(v9 + 16))(v11, v31, v8);
    v27 = sub_B7B90();
  }

  v106 = v27;
  v32 = v141;
  v134 = *(v141 + 16);
  v133 = *(v141 + 24);
  v142 = v134;
  v143 = v133;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  v105 = sub_89688();

  v104 = &v101;
  __chkstk_darwin(v33);
  v103 = &v98;
  v100 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0BE8, &unk_C0EB0);
  sub_B6800();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_BDA30;
  v107(v14, v108, v20);
  v24(v14, 0, 1, v20);
  sub_B78D0();
  sub_A194(v14, &unk_F17B0, &qword_BE7D0);
  (*(OpaqueTypeConformance2 + 104))(v113, enum case for OnboardingTrayAction.State.enabled(_:), v112);
  (*(v131 + 104))(v114, enum case for OnboardingTrayAction.Style.bold(_:), v135);
  v35 = v140;
  sub_87D04(v32, v140);
  v36 = *(v136 + 80);
  v112 = ~v36;
  v131 = v36;
  v135 = v139 + ((v36 + 16) & ~v36);
  v37 = (v36 + 16) & ~v36;
  v136 = v37;
  v38 = swift_allocObject();
  sub_87D6C(v35, v38 + v37);
  sub_B67F0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2148, &qword_C31A0);
  v40 = sub_87E40();
  v99 = v39;
  v100 = v40;
  v98 = v34;
  v41 = v115;
  v42 = sub_B6830();
  __chkstk_darwin(v42);
  v100 = v32;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C30, &qword_C04F0);
  v113 = sub_88EC4(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C38, &qword_C04F8);
  v44 = sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8, &protocol conformance descriptor for ToolbarItem<A, B>);
  v142 = v43;
  v143 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v118;
  v46 = v117;
  sub_B7450();
  (*(v116 + 8))(v41, v46);
  v156 = v134;
  v157 = v133;
  sub_B75E0();
  v47 = v142;
  v48 = v143;
  v49 = v144;
  swift_getKeyPath();
  v160 = v47;
  v161 = v48;
  v162 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21B8, &qword_C3208);
  sub_B76B0();

  v51 = v156;
  v50 = v157;
  v52 = v158;
  v53 = v159;

  swift_getKeyPath();
  v152 = v51;
  v153 = v50;
  v154 = v52;
  v155 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21C0, &qword_C3238);
  sub_B76B0();

  sub_881E8(v52, v53);
  v148 = v150;
  v149 = v151;
  v54 = v140;
  sub_87D04(v141, v140);
  v55 = v131;
  v56 = swift_allocObject();
  sub_87D6C(v54, v56 + v136);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21C8, &qword_C3240);
  v142 = v46;
  v143 = v114;
  v144 = v113;
  v145 = OpaqueTypeConformance2;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_8827C();
  v60 = sub_882D0();
  v142 = &type metadata for ItemContactInfoSetupEnterDetailsView;
  v143 = v60;
  v114 = swift_getOpaqueTypeConformance2();
  v100 = v114;
  v61 = v137;
  v117 = v57;
  v116 = v58;
  v115 = v59;
  sub_B7340();

  (*(v119 + 8))(v45, v61);
  v142 = v134;
  v143 = v133;
  sub_B75C0();
  v62 = v120;
  sub_8A244(v120);

  v63 = v121;
  v64 = v122;
  if ((*(v121 + 48))(v62, 1, v122))
  {
    sub_A194(v62, &qword_EEE08, &qword_BD530);
    v65 = 0;
    v66 = 0xE000000000000000;
  }

  else
  {
    v67 = v102;
    (*(v63 + 16))(v102, v62, v64);
    sub_A194(v62, &qword_EEE08, &qword_BD530);
    v65 = sub_B6920();
    v66 = v68;
    (*(v63 + 8))(v67, v64);
  }

  v142 = v65;
  v143 = v66;
  sub_97E8();
  v134 = sub_B7200();
  v133 = v69;
  LODWORD(v122) = v70;
  v132 = v71;
  v72 = v141;
  v73 = v140;
  sub_87D04(v141, v140);
  sub_B7A60();
  v74 = sub_B7A50();
  v75 = (v55 + 32) & v112;
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  *(v76 + 24) = &protocol witness table for MainActor;
  sub_87D6C(v73, v76 + v75);
  sub_87D04(v72, v73);
  v77 = sub_B7A50();
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  *(v78 + 24) = &protocol witness table for MainActor;
  sub_87D6C(v73, v78 + v75);
  v79 = sub_B76D0();
  v139 = &v101;
  v80 = __chkstk_darwin(v79);
  __chkstk_darwin(v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE70, &qword_BFEF0);
  v142 = v137;
  v143 = &type metadata for ItemContactInfoSetupIntroductionViewModel.Stack;
  v144 = v117;
  v145 = v116;
  v146 = v115;
  v147 = v114;
  v81 = swift_getOpaqueTypeConformance2();
  v99 = sub_9BD4();
  v100 = &protocol witness table for Text;
  v98 = v81;
  v82 = v128;
  v83 = v122;
  v84 = v124;
  v85 = v134;
  v86 = v133;
  v87 = v138;
  sub_B7400();

  sub_9C84(v85, v86, v83 & 1);

  (*(v125 + 8))(v87, v82);
  v88 = v141;
  sub_87D04(v141, v73);
  v89 = swift_allocObject();
  v90 = v136;
  sub_87D6C(v73, v89 + v136);
  v91 = v127;
  (*(v126 + 32))(v127, v84, v129);
  v92 = &v91[*(v123 + 36)];
  *v92 = sub_88560;
  v92[1] = v89;
  v92[2] = 0;
  v92[3] = 0;
  sub_87D04(v88, v73);
  v93 = swift_allocObject();
  sub_87D6C(v73, v93 + v90);
  v94 = v91;
  v95 = v130;
  sub_8860C(v94, v130);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21E0, &qword_C3248);
  v97 = (v95 + *(result + 36));
  *v97 = 0;
  v97[1] = 0;
  v97[2] = sub_8857C;
  v97[3] = v93;
  return result;
}

double sub_8543C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_B7550();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *(a1 + 24);
  *&v69 = *(a1 + 16);
  *(&v69 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  v9 = *&v59[0] + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory;
  LOBYTE(v9) = *(v9 + *(type metadata accessor for LostAccessory(0) + 24));

  if (v9)
  {
    *(&v70 + 1) = &type metadata for SolariumFeatureFlag;
    *&v71 = sub_28360();
    sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(&v69);
    type metadata accessor for DelegatedSharesReportingModule();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_B7580();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = sub_B7570();

    (*(v5 + 8))(v7, v4);
    v59[0] = v12;
    LOWORD(v59[1]) = 257;
    sub_890B8(v59);
  }

  else
  {
    v13 = sub_B74E0();
    v14 = sub_B7760();
    v16 = v15;
    sub_85A60(v59);
    v32[1] = v59[1];
    v32[2] = v59[2];
    v32[3] = v59[3];
    v32[4] = v59[4];
    v39 = v59[2];
    v40 = v59[3];
    v32[0] = v59[0];
    *&v33 = v14;
    *(&v33 + 1) = v16;
    v37 = v59[0];
    v38 = v59[1];
    v41 = v59[4];
    v42 = v33;
    v34[3] = v59[3];
    v34[4] = v59[4];
    v34[1] = v59[1];
    v34[2] = v59[2];
    v34[0] = v59[0];
    v35 = v14;
    v36 = v16;
    sub_A310(v32, &v69, &qword_F21A0, &qword_C31C8);
    sub_A194(v34, &qword_F21A0, &qword_C31C8);
    v17 = sub_B6C10();
    v18 = sub_B70B0();
    v20 = *a1;
    v19 = *(a1 + 8);
    sub_B7760();
    if (v20 > v19)
    {
      sub_B7B50();
      HIDWORD(v30) = v18;
      v21 = sub_B7080();
      LOBYTE(v18) = BYTE4(v30);
      sub_B6990();
    }

    sub_B6C90();
    *&v31[55] = v65;
    *&v31[71] = v66;
    *&v31[87] = v67;
    *&v31[103] = v68;
    *&v31[7] = v62;
    *&v31[23] = v63;
    *&v31[39] = v64;
    *&v59[0] = v13;
    *(&v59[1] + 8) = v38;
    *(v59 + 8) = v37;
    *(&v59[5] + 8) = v42;
    *(&v59[4] + 8) = v41;
    *(&v59[3] + 8) = v40;
    *(&v59[2] + 8) = v39;
    WORD4(v59[6]) = 0;
    *&v60[0] = v17;
    BYTE8(v60[0]) = v18;
    *(&v60[3] + 9) = *&v31[48];
    *(&v60[2] + 9) = *&v31[32];
    *(&v60[1] + 9) = *&v31[16];
    *(v60 + 9) = *v31;
    *(&v60[7] + 1) = *(&v68 + 1);
    *(&v60[6] + 9) = *&v31[96];
    *(&v60[5] + 9) = *&v31[80];
    *(&v60[4] + 9) = *&v31[64];
    sub_890C4(v59);
  }

  v55 = v60[5];
  v56 = v60[6];
  v57 = v60[7];
  v58 = v61;
  v51 = v60[1];
  v52 = v60[2];
  v53 = v60[3];
  v54 = v60[4];
  v47 = v59[4];
  v48 = v59[5];
  v49 = v59[6];
  v50 = v60[0];
  v43 = v59[0];
  v44 = v59[1];
  v45 = v59[2];
  v46 = v59[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2160, &qword_C31A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0538, &qword_C04E0);
  sub_87ECC();
  sub_40DB8();
  sub_B6F00();
  v60[5] = v81;
  v60[6] = v82;
  v60[7] = v83;
  v61 = v84;
  v60[1] = v77;
  v60[2] = v78;
  v60[3] = v79;
  v60[4] = v80;
  v59[4] = v73;
  v59[5] = v74;
  v59[6] = v75;
  v60[0] = v76;
  v59[0] = v69;
  v59[1] = v70;
  v59[2] = v71;
  v59[3] = v72;
  ItemContactInfoSetupIntroductionViewModel.bind()();
  v22 = v60[6];
  *(a2 + 192) = v60[5];
  *(a2 + 208) = v22;
  *(a2 + 224) = v60[7];
  *(a2 + 240) = v61;
  v23 = v60[2];
  *(a2 + 128) = v60[1];
  *(a2 + 144) = v23;
  v24 = v60[4];
  *(a2 + 160) = v60[3];
  *(a2 + 176) = v24;
  v25 = v59[5];
  *(a2 + 64) = v59[4];
  *(a2 + 80) = v25;
  v26 = v60[0];
  *(a2 + 96) = v59[6];
  *(a2 + 112) = v26;
  v27 = v59[1];
  *a2 = v59[0];
  *(a2 + 16) = v27;
  result = *&v59[2];
  v29 = v59[3];
  *(a2 + 32) = v59[2];
  *(a2 + 48) = v29;
  return result;
}

__n128 sub_85A60@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_B6A40();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v23[-v7];
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_83B68(v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
  v9 = sub_B6A30();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    v34.n128_u64[1] = &type metadata for SolariumFeatureFlag;
    *&v35 = sub_28360();
    v11 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(&v33);
    type metadata accessor for MicaBundle();
    if (v11)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      LOBYTE(v24) = 0;
      *&v33 = 0xD000000000000016;
      *(&v33 + 1) = 0x80000000000BB850;
      v34.n128_u64[0] = v13;
      v34.n128_u8[8] = 1;
      v35 = 0uLL;
      v36[0] = 1;
      *&v36[8] = sub_28D50;
      *&v36[16] = 0;
      *&v36[24] = 0;
    }

    else
    {
      v17 = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass:v17];
      LOBYTE(v24) = 1;
      *&v33 = 0xD000000000000012;
      *(&v33 + 1) = 0x80000000000BB830;
      v34.n128_u64[0] = v18;
      v34.n128_u8[8] = 1;
      v35 = 0uLL;
      v36[0] = 0;
      *&v36[8] = sub_28D50;
      *&v36[16] = 0;
      *&v36[24] = 256;
    }

    sub_890CC();
    sub_B6F00();
    v35 = v31;
    *v36 = v32[0];
    *&v36[10] = *(v32 + 10);
    v33 = v29;
    v34 = v30;
    v28 = 0;
    v36[26] = 0;
  }

  else
  {
    v34.n128_u64[1] = &type metadata for SolariumFeatureFlag;
    *&v35 = sub_28360();
    v14 = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(&v33);
    type metadata accessor for LostModeDetailPlatterModule();
    if (v14)
    {
      v15 = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass:v15];
      LOBYTE(v24) = 0;
      *&v33 = 0xD000000000000016;
      *(&v33 + 1) = 0x80000000000BB810;
      v34.n128_u64[0] = v16;
      v34.n128_u8[8] = 1;
      v35 = 0uLL;
      v36[0] = 1;
      *&v36[8] = sub_28D50;
      *&v36[16] = 0;
      *&v36[24] = 0;
    }

    else
    {
      v19 = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass:v19];
      LOBYTE(v24) = 1;
      *&v33 = 0xD000000000000012;
      *(&v33 + 1) = 0x80000000000BB7F0;
      v34.n128_u64[0] = v20;
      v34.n128_u8[8] = 1;
      v35 = 0uLL;
      v36[0] = 0;
      *&v36[8] = sub_28D50;
      *&v36[16] = 0;
      *&v36[24] = 256;
    }

    sub_890CC();
    sub_B6F00();
    v35 = v31;
    *v36 = v32[0];
    *&v36[10] = *(v32 + 10);
    v33 = v29;
    v34 = v30;
    v28 = 1;
    v36[26] = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F22B8, &qword_C3368);
  sub_89120();
  sub_B6F00();

  *v36 = *v27;
  *&v36[11] = *&v27[11];
  v33 = v24;
  v34 = v25;
  v21 = *v36;
  *(a1 + 32) = v26;
  *(a1 + 48) = v21;
  *(a1 + 59) = *&v36[11];
  result = v34;
  *a1 = v33;
  *(a1 + 16) = result;
  return result;
}

double sub_85F8C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  sub_89CA8();

  return result;
}

double sub_85FE8(uint64_t a1)
{
  v2 = sub_B6F50();
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C38, &qword_C04F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_B6F30();
  __chkstk_darwin(v7);
  *(&v9 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C88, &qword_C0688);
  sub_4C558();
  sub_B6A80();
  sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_B6F60();
  (*(v4 + 8))(v6, v3);

  return result;
}

double sub_8622C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v68 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v3 = &v53 - v2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CB0, &qword_C06A0);
  __chkstk_darwin(v67);
  v57 = &v53 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CB8, &qword_C06A8);
  __chkstk_darwin(v65);
  v66 = &v53 - v5;
  v6 = type metadata accessor for ItemContactInfoSetupIntroductionView(0);
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6 - 8);
  v60 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B7950();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0668, &qword_C1FD0);
  v54 = *(v15 - 8);
  v55 = v15;
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0CA0, &unk_C0690);
  __chkstk_darwin(v64);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C88, &qword_C0688);
  __chkstk_darwin(v20 - 8);
  v63 = &v53 - v21;
  sub_B7A60();
  v62 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v71 = &type metadata for SolariumFeatureFlag;
  v72 = sub_28360();
  v22 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v69);
  if (v22)
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v23 = sub_B62F0();
    v24 = __swift_project_value_buffer(v23, qword_FAD48);
    v25 = *(v23 - 8);
    (*(v25 + 16))(v14, v24, v23);
    (*(v25 + 56))(v14, 0, 1, v23);
    v26 = sub_B78D0();
    v28 = v27;
    sub_A194(v14, &unk_F17B0, &qword_BE7D0);
    (*(v9 + 104))(v11, enum case for String.ButtonType.cancel(_:), v8);
    v29 = sub_B7960();
    v31 = v30;
    (*(v9 + 8))(v11, v8);
    v32 = v60;
    sub_87D04(v61, v60);
    v33 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v34 = swift_allocObject();
    v35 = sub_87D6C(v32, v34 + v33);
    v69 = v26;
    v70 = v28;
    __chkstk_darwin(v35);
    *(&v53 - 4) = &v69;
    *(&v53 - 3) = v29;
    *(&v53 - 2) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F06A0, &unk_C06B0);
    sub_A8CC(&qword_F06A8, &qword_F06A0, &unk_C06B0, &protocol conformance descriptor for Label<A, B>);
    sub_B7610();

    sub_A8CC(&qword_F0660, &qword_F0668, &qword_C1FD0, &protocol conformance descriptor for Button<A>);
    v36 = v55;
    sub_B7360();
    (*(v54 + 8))(v17, v36);
    v37 = &qword_F0CA0;
    v38 = &unk_C0690;
    sub_A310(v19, v66, &qword_F0CA0, &unk_C0690);
    swift_storeEnumTagMultiPayload();
    sub_4C5E4();
    sub_4C714();
    v39 = v63;
    sub_B6F00();
    v40 = v19;
  }

  else
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v41 = sub_B62F0();
    v42 = __swift_project_value_buffer(v41, qword_FAD48);
    v43 = *(v41 - 8);
    (*(v43 + 16))(v14, v42, v41);
    (*(v43 + 56))(v14, 0, 1, v41);
    v44 = sub_B78D0();
    v46 = v45;
    sub_A194(v14, &unk_F17B0, &qword_BE7D0);
    v69 = v44;
    v70 = v46;
    v47 = v60;
    sub_87D04(v61, v60);
    v48 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v49 = swift_allocObject();
    sub_87D6C(v47, v49 + v48);
    sub_97E8();
    sub_B7640();
    sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
    v51 = v57;
    v50 = v58;
    sub_B7360();
    (*(v56 + 8))(v3, v50);
    v37 = &qword_F0CB0;
    v38 = &qword_C06A0;
    sub_A310(v51, v66, &qword_F0CB0, &qword_C06A0);
    swift_storeEnumTagMultiPayload();
    sub_4C5E4();
    sub_4C714();
    v39 = v63;
    sub_B6F00();
    v40 = v51;
  }

  sub_A194(v40, v37, v38);
  sub_4C81C(v39, v68);

  return result;
}

double sub_86C1C(uint64_t a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4(isCurrentExecutor);
  }

  return result;
}

uint64_t sub_86CD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_88EC4(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &protocol conformance descriptor for ItemContactInfoSetupIntroductionViewModel);
  sub_B65C0();

  v4 = v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_88EA8(v5, v6);
}

void sub_86D94(uint64_t *a1, __n128 a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = v2;
  sub_88EA8(v3, v2);
  sub_8A0AC(&v3);
}

uint64_t *sub_86DDC(uint64_t *result, uint64_t *a2, __n128 a3)
{
  v4 = *result;
  if (*result)
  {
    v5 = *(a2 + 8);
    if (v5 != 255)
    {
      v6 = *a2;

      result = sub_83AFC(v6, v5);
      *a2 = v4;
      *(a2 + 8) = 0;
    }
  }

  else
  {
    result = sub_881E8(*a2, *(a2 + 8));
    *a2 = 0;
    *(a2 + 8) = -1;
  }

  return result;
}

double sub_86E54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  sub_C5D8(v4, v5);
  sub_80498(v3, v4, v5, v7);
  sub_882D0();
  sub_B73A0();
  v9[3] = v7[3];
  v9[4] = v7[4];
  v10 = v8;
  v9[0] = v7[0];
  v9[1] = v7[1];
  v9[2] = v7[2];
  sub_806DC(v9);

  return result;
}

void sub_86F80(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v4 - 8);
  v6 = v10 - v5;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a1 + 24);
  v10[2] = *(a1 + 16);
  v10[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  sub_8A244(v6);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_A194(v6, &qword_EEE08, &qword_BD530);

  *a2 = v9;
}

double sub_87114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(a4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  v6 = 0;
  LOBYTE(v7) = -1;
  sub_8A0AC(&v6);

  return result;
}

double sub_871F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + 24);
  v18[0] = *(a1 + 16);
  v18[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  sub_8A244(v8);

  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_A194(v8, &qword_EEE08, &qword_BD530);
    v10 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_A194(v8, &qword_EEE08, &qword_BD530);
    v10 = sub_B6930();
    (*(v3 + 8))(v5, v2);
  }

  v18[0] = v10;
  KeyPath = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF30, &qword_C1F50);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE88, &qword_BD620);
  v14 = sub_A8CC(&qword_EEF38, &qword_EEF30, &qword_C1F50, &protocol conformance descriptor for [A]);
  v15 = sub_A8CC(&qword_EEE80, &qword_EEE88, &qword_BD620, &protocol conformance descriptor for Button<A>);
  sub_B76E0(v18, KeyPath, sub_8753C, 0, v12, v13, v14, &protocol witness table for String, v15);

  return result;
}

double sub_8753C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v7 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF50, &unk_BD6F0);
  __chkstk_darwin(v10 - 8);
  v12 = v20 - v11;
  sub_B7A60();
  v20[0] = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20[2] = sub_B68C0();
  v20[3] = v13;
  sub_B68A0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_A194(v9, &qword_EEF48, &unk_C01F0);
    v16 = sub_B6A00();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  else
  {
    sub_B6890();
    (*(v15 + 8))(v9, v14);
  }

  (*(v4 + 16))(v6, a1, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v6, v3);
  sub_97E8();
  sub_B7630();

  return result;
}

double sub_878A8()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v0 = sub_B68D0();
  v2(v0);

  return result;
}

void sub_87970(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a1 + 24);
  v23 = *(a1 + 16);
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  sub_B75C0();
  sub_8A244(v10);

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_A194(v10, &qword_EEE08, &qword_BD530);
    v12 = sub_B6940();
    v13 = v14;
    (*(v5 + 8))(v7, v4);
  }

  v23 = v12;
  v24 = v13;
  sub_97E8();
  v15 = sub_B7200();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
}

double sub_87C10(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2140, &unk_C3190);
  v4 = sub_B75C0();
  a3(v4);

  return result;
}

uint64_t sub_87D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemContactInfoSetupIntroductionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_87D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemContactInfoSetupIntroductionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_87DD0(uint64_t a1)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupIntroductionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_85F8C(a1, v4);
}

unint64_t sub_87E40()
{
  result = qword_F2150;
  if (!qword_F2150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2148, &qword_C31A0);
    sub_87ECC();
    sub_40DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2150);
  }

  return result;
}

unint64_t sub_87ECC()
{
  result = qword_F2158;
  if (!qword_F2158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2160, &qword_C31A8);
    sub_87F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2158);
  }

  return result;
}

unint64_t sub_87F58()
{
  result = qword_F2168;
  if (!qword_F2168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2170, &qword_C31B0);
    sub_87FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2168);
  }

  return result;
}

unint64_t sub_87FE4()
{
  result = qword_F2178;
  if (!qword_F2178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2180, &qword_C31B8);
    sub_8809C();
    sub_A8CC(&qword_F21A8, &qword_F21B0, &unk_C31D0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2178);
  }

  return result;
}

unint64_t sub_8809C()
{
  result = qword_F2188;
  if (!qword_F2188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2190, &qword_C31C0);
    sub_A8CC(&qword_F2198, &qword_F21A0, &qword_C31C8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2188);
  }

  return result;
}

void sub_88160(uint64_t *a1, __n128 a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = v2;
  sub_88EA8(v3, v2);
  sub_8A0AC(&v3);
}

uint64_t sub_881A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = 0;
  }

  else
  {
  }

  *a2 = result;
  return result;
}

uint64_t sub_881E8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_83AFC(result, a2);
  }

  return result;
}

double sub_881FC(uint64_t *a1)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupIntroductionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_86E54(a1, v4);
}

unint64_t sub_8827C()
{
  result = qword_F21D0;
  if (!qword_F21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F21D0);
  }

  return result;
}

unint64_t sub_882D0()
{
  result = qword_F21D8;
  if (!qword_F21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F21D8);
  }

  return result;
}

void sub_88328(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupIntroductionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_86F80(v4, a1);
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = type metadata accessor for ItemContactInfoSetupIntroductionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  if (*(v0 + v3 + 32))
  {
  }

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B6A40();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_884DC(uint64_t a1)
{
  v3 = *(type metadata accessor for ItemContactInfoSetupIntroductionView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_87114(a1, v4, v5, v6);
}

uint64_t sub_8860C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2138, &qword_C3188);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_886AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21E8, &unk_C4030);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_8877C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21E8, &unk_C4030);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8882C(uint64_t a1)
{
  sub_88938(319, &qword_F2258, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_7129C(319);
    if (v2 <= 0x3F)
    {
      sub_88938(319, &qword_F2260, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_88938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_889A0()
{
  result = qword_F2298;
  if (!qword_F2298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F21E0, &qword_C3248);
    sub_88A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2298);
  }

  return result;
}

unint64_t sub_88A2C()
{
  result = qword_F22A0;
  if (!qword_F22A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2138, &qword_C3188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2128, &qword_C3178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE70, &qword_BFEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2120, &qword_C3170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F21C8, &qword_C3240);
    sub_B6850();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C30, &qword_C04F0);
    sub_88EC4(&qword_F0560, &type metadata accessor for OnboardingWelcomeView, &protocol conformance descriptor for OnboardingWelcomeView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F0C38, &qword_C04F8);
    sub_A8CC(&qword_F0C40, &qword_F0C38, &qword_C04F8, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8827C();
    sub_882D0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_9BD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F22A0);
  }

  return result;
}

uint64_t sub_88CE8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  result = sub_B68C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_88D28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_88DBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);

  return sub_878A8();
}

uint64_t sub_88E28(void *a1, uint64_t a2, uint64_t a3)
{
  sub_97E8();

  return sub_B75A0();
}

uint64_t sub_88EA8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_83AF8(a1, a2);
  }

  return a1;
}

uint64_t sub_88EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for ItemContactInfoSetupIntroductionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 32))
  {
  }

  v5 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B6A40();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_890CC()
{
  result = qword_F22B0;
  if (!qword_F22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F22B0);
  }

  return result;
}

unint64_t sub_89120()
{
  result = qword_F22C0;
  if (!qword_F22C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F22B8, &qword_C3368);
    sub_890CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F22C0);
  }

  return result;
}

uint64_t sub_891D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ItemProximityProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_89290(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ItemProximityProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies(uint64_t a1)
{
  result = qword_F2320;
  if (!qword_F2320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_89380(uint64_t a1)
{
  result = type metadata accessor for ItemProximityProvider(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_89454()
{
  result = qword_F2368;
  if (!qword_F2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2368);
  }

  return result;
}

unint64_t sub_894AC()
{
  result = qword_F2370;
  if (!qword_F2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2370);
  }

  return result;
}

unint64_t sub_89504()
{
  result = qword_F2378;
  if (!qword_F2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2378);
  }

  return result;
}

uint64_t sub_89584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_895C0()
{
  result = qword_F2380;
  if (!qword_F2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2380);
  }

  return result;
}

unint64_t sub_89614()
{
  result = qword_F2388;
  if (!qword_F2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2388);
  }

  return result;
}

uint64_t sub_89688()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v1 - 8);
  v3 = v20 - v2;
  v4 = v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory;
  v5 = *(v4 + *(type metadata accessor for LostAccessory(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F24A0, &qword_C36D8);
  v6 = *(sub_B6870() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20[1] = *(v6 + 72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_BD800;
  v21 = v8;
  v22 = v8 + v7;
  if (v5 == 1)
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v9 = sub_B62F0();
    v10 = __swift_project_value_buffer(v9, qword_FADB0);
    v11 = *(v9 - 8);
    v12 = *(v11 + 16);
    v12(v3, v10, v9);
    v13 = *(v11 + 56);
    v13(v3, 0, 1, v9);
    v20[0] = sub_B78D0();
    sub_2B630(v3);
    v12(v3, v10, v9);
    v13(v3, 0, 1, v9);
    sub_B78D0();
    sub_2B630(v3);
    sub_B6860();
    v12(v3, v10, v9);
    v13(v3, 0, 1, v9);
    sub_B78D0();
    sub_2B630(v3);
    v12(v3, v10, v9);
    v13(v3, 0, 1, v9);
  }

  else
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v14 = sub_B62F0();
    v15 = __swift_project_value_buffer(v14, qword_FADB0);
    v16 = *(v14 - 8);
    v17 = *(v16 + 16);
    v17(v3, v15, v14);
    v18 = *(v16 + 56);
    v18(v3, 0, 1, v14);
    v20[0] = sub_B78D0();
    sub_2B630(v3);
    v17(v3, v15, v14);
    v18(v3, 0, 1, v14);
    sub_B78D0();
    sub_2B630(v3);
    sub_B6860();
    v17(v3, v15, v14);
    v18(v3, 0, 1, v14);
    sub_B78D0();
    sub_2B630(v3);
    v17(v3, v15, v14);
    v18(v3, 0, 1, v14);
  }

  sub_B78D0();
  sub_2B630(v3);
  sub_B6860();
  return v21;
}

void sub_89CA8()
{
  v1 = v0;
  v2 = type metadata accessor for LostAccessory(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) == 1)
  {
    v32 = 0;
    v33 = -1;
    v5 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 168);
    v20 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies);
    v10 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 8);
    v21 = v10;
    v11 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 24);
    v22 = v11;
    v12 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 40);
    v23 = v12;
    v13 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 56);
    v24 = v13;
    v14 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 72);
    v25 = v14;
    v15 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 88);
    v26 = v15;
    v16 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 104);
    v27 = v16;
    v17 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 120);
    v28 = v17;
    v18 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 136);
    v29 = v18;
    v19 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies + 152);
    v30 = v19;
    v31 = v5;
    sub_8C09C(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, v4, type metadata accessor for LostAccessory);
    type metadata accessor for ItemContactInfoSetupEnterDetailsViewModel(0);
    swift_allocObject();

    v20 = sub_827F4(&v32, &v20, v4);
    LOBYTE(v21) = 0;
  }

  else
  {
    v6 = sub_B69A0();
    v7 = sub_B7B60();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_17834(0xD000000000000016, 0x80000000000BB8B0, &v20);
      _os_log_impl(&dword_0, v6, v7, "%s hasValidItemLocationToContinueSubmission==false. Presenting alert...", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    v20 = 0;
    LOBYTE(v21) = 2;
  }

  sub_8A0AC(&v20);
}

uint64_t sub_89FEC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &protocol conformance descriptor for ItemContactInfoSetupIntroductionViewModel);
  sub_B65C0();

  v3 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination);
  *a1 = v4;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_88EA8(v4, v5);
}

void sub_8A0AC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  v5 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination);
  v6 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination + 8);
  sub_88EA8(v5, v6);
  v7 = sub_8C46C(v5, v6, v2, v3);
  sub_881E8(v5, v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &protocol conformance descriptor for ItemContactInfoSetupIntroductionViewModel);
    sub_B65B0();
    sub_881E8(v2, v3);
  }

  else
  {
    v9 = *v4;
    *v4 = v2;
    v10 = *(v4 + 8);
    *(v4 + 8) = v3;

    sub_881E8(v9, v10);
  }
}

uint64_t sub_8A244@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF48, &unk_C01F0);
  __chkstk_darwin(v3 - 8);
  v5 = v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  swift_getKeyPath();
  v25 = v1;
  sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &protocol conformance descriptor for ItemContactInfoSetupIntroductionViewModel);
  sub_B65C0();

  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination + 8) == 2)
  {
    v23 = v5;
    v24 = a1;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v9 = sub_B62F0();
    v10 = __swift_project_value_buffer(v9, qword_FAD48);
    v11 = *(v9 - 8);
    v12 = *(v11 + 16);
    v12(v8, v10, v9);
    v13 = *(v11 + 56);
    v13(v8, 0, 1, v9);
    v14 = sub_B78D0();
    v22[2] = v15;
    v22[3] = v14;
    sub_2B630(v8);
    v12(v8, v10, v9);
    v13(v8, 0, 1, v9);
    v16 = sub_B78D0();
    v22[0] = v17;
    v22[1] = v16;
    sub_2B630(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17C0, &qword_C1760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEF40, &unk_BD6E0);
    *(swift_allocObject() + 16) = xmmword_BDA30;
    v12(v8, v10, v9);
    v13(v8, 0, 1, v9);
    sub_B78D0();
    sub_2B630(v8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F17D0, &unk_BFFA0);
    (*(*(v18 - 8) + 56))(v23, 1, 1, v18);
    v25 = ItemContactInfoSetupIntroductionViewModel.bind();
    v26 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A20, &unk_C0200);
    sub_B68B0();
    a1 = v24;
    sub_B6910();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE00, &unk_BDA40);
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

double sub_8A70C()
{
  if (*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &protocol conformance descriptor for ItemContactInfoSetupIntroductionViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_8A810()
{
  swift_getKeyPath();
  sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &protocol conformance descriptor for ItemContactInfoSetupIntroductionViewModel);
  sub_B65C0();
}

uint64_t sub_8A8BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &protocol conformance descriptor for ItemContactInfoSetupIntroductionViewModel);
  sub_B65C0();

  *a2 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask);
}

double sub_8A970(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask;
  if (!*(v1 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_8C424(&qword_F22A8, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &protocol conformance descriptor for ItemContactInfoSetupIntroductionViewModel);
    sub_B65B0();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_B7AD0();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

uint64_t ItemContactInfoSetupIntroductionViewModel.__allocating_init(initialDestination:lostAccessory:dependencies:hasValidItemLocationToContinueSubmission:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  v9 = *a1;
  *(v8 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask) = 0;
  LOBYTE(a1) = *(a1 + 8);
  sub_B69B0();
  v10 = v8 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  *v10 = 0;
  *(v10 + 8) = -1;
  sub_B65F0();
  sub_881E8(*v10, *(v10 + 8));
  *v10 = v9;
  *(v10 + 8) = a1;
  sub_8AD8C(a2, v8 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_8AD8C(a3, v8 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies, type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies);
  *(v8 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = a4;
  return v8;
}

uint64_t ItemContactInfoSetupIntroductionViewModel.init(initialDestination:lostAccessory:dependencies:hasValidItemLocationToContinueSubmission:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  *(v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask) = 0;
  v9 = *(a1 + 8);
  sub_B69B0();
  v10 = v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  *v10 = 0;
  *(v10 + 8) = -1;
  sub_B65F0();
  sub_881E8(*v10, *(v10 + 8));
  *v10 = v8;
  *(v10 + 8) = v9;
  sub_8AD8C(a2, v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_8AD8C(a3, v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies, type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies);
  *(v4 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = a4;
  return v4;
}

uint64_t sub_8AD8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_8ADF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  __chkstk_darwin(v1 - 8);
  v57 = &v44 - v2;
  v3 = type metadata accessor for ItemProximityProvider(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v56 = *(v6 - 8);
  v54 = *(v56 + 64);
  v7 = __chkstk_darwin(v6);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = type metadata accessor for LostAccessory(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_B65A0();
  v45 = v14;
  v55 = *(v14 - 8);
  v15 = v55;
  v16 = *(v55 + 64);
  v17 = __chkstk_darwin(v14);
  v50 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  sub_8C09C(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, v13, type metadata accessor for LostAccessory);
  v20 = *(v15 + 32);
  v51 = v15 + 32;
  v52 = v20;
  v46 = v19;
  v20(v19, v13, v14);
  v21 = v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies;
  v48 = v0;
  v22 = type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies(0);
  sub_8C09C(v21 + *(v22 + 36), v5, type metadata accessor for ItemProximityProvider);
  v23 = v56;
  v49 = *(v56 + 32);
  v47 = v10;
  v24 = v5;
  v25 = v6;
  v44 = v6;
  v49(v10, v24, v6);
  v26 = sub_B7A80();
  (*(*(v26 - 8) + 56))(v57, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v23;
  v29 = v53;
  (*(v23 + 16))(v53, v10, v25);
  v30 = v55;
  v31 = v50;
  v32 = v19;
  v33 = v45;
  (*(v55 + 16))(v50, v32, v45);
  sub_B7A60();

  v34 = sub_B7A50();
  v35 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v36 = (v54 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (*(v30 + 80) + v36 + 8) & ~*(v30 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v34;
  *(v38 + 24) = &protocol witness table for MainActor;
  v39 = v29;
  v40 = v44;
  v49((v38 + v35), v39, v44);
  *(v38 + v36) = v27;
  v52(v38 + v37, v31, v33);

  v41 = sub_30A3C(0, 0, v57, &unk_C3698, v38);
  v42 = sub_8A970(v41);
  (*(v56 + 8))(v47, v40, v42);
  return (*(v55 + 8))(v46, v33);
}

uint64_t sub_8B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_B65A0();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0E70, &qword_C0800);
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = sub_B7A60();
  v6[16] = sub_B7A50();
  v10 = sub_B7A00();
  v6[17] = v10;
  v6[18] = v9;

  return _swift_task_switch(sub_8B464, v10, v9);
}

uint64_t sub_8B464()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  sub_B7A90();
  swift_beginAccess();
  v1 = sub_B7A50();
  v0[19] = v1;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_8B560;
  v3 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 21, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_8B560()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_8B6A4, v3, v2);
}

uint64_t sub_8B6A4()
{
  v1 = *(v0 + 168);
  if (v1 != 3)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
      v4 = sub_B69A0();
      v5 = sub_B7B20();
      v6 = os_log_type_enabled(v4, v5);
      v8 = *(v0 + 80);
      v7 = *(v0 + 88);
      v9 = *(v0 + 72);
      if (v6)
      {
        v26 = v5;
        log = v4;
        v10 = swift_slowAlloc();
        *(v0 + 40) = swift_slowAlloc();
        *v10 = 141558531;
        *(v10 + 4) = 1752392040;
        *(v10 + 12) = 2081;
        sub_8C424(&qword_F0A28, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v11 = sub_B7DA0();
        v13 = v12;
        (*(v8 + 8))(v7, v9);
        v14 = sub_17834(v11, v13, (v0 + 40));

        *(v10 + 14) = v14;
        *(v10 + 22) = 2082;
        v15 = 0xE300000000000000;
        v16 = 7496038;
        if (v1 != 1)
        {
          v16 = 0x54426E6968746977;
          v15 = 0xED000065676E6152;
        }

        if (v1)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0x6E776F6E6B6E75;
        }

        if (v1)
        {
          v18 = v15;
        }

        else
        {
          v18 = 0xE700000000000000;
        }

        v19 = sub_17834(v17, v18, (v0 + 40));

        *(v10 + 24) = v19;
        _os_log_impl(&dword_0, log, v26, "%{private,mask.hash}s proximity: %{public}s", v10, 0x20u);
        swift_arrayDestroy();

        if (!v1)
        {
          goto LABEL_19;
        }
      }

      else
      {

        (*(v8 + 8))(v7, v9);
        if (!v1)
        {
          goto LABEL_19;
        }
      }

      if (v1 == 1)
      {
        v20 = 1;
LABEL_20:

        *(v3 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = v20 & 1;

        v23 = sub_B7A50();
        *(v0 + 152) = v23;
        v24 = swift_task_alloc();
        *(v0 + 160) = v24;
        *v24 = v0;
        v24[1] = sub_8B560;
        v25 = *(v0 + 96);

        return AsyncStream.Iterator.next(isolation:)(v0 + 168, v23, &protocol witness table for MainActor, v25);
      }

LABEL_19:
      v20 = sub_B7DD0();
      goto LABEL_20;
    }
  }

  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t ItemContactInfoSetupIntroductionViewModel.deinit()
{
  sub_8BBE8(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_8BBE8(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies, type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies);

  v1 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_881E8(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination + 8));
  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_8BBE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ItemContactInfoSetupIntroductionViewModel.__deallocating_deinit()
{
  sub_8BBE8(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
  sub_8BBE8(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies, type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies);

  v1 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_881E8(*(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination + 8));
  v3 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel___observationRegistrar;
  v4 = sub_B6600();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_8BD94(uint64_t a1)
{
  result = sub_8C424(&qword_F23B0, type metadata accessor for ItemContactInfoSetupIntroductionViewModel, &protocol conformance descriptor for ItemContactInfoSetupIntroductionViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ItemContactInfoSetupIntroductionViewModel(uint64_t a1)
{
  result = qword_F23E8;
  if (!qword_F23E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8BE88(uint64_t a1)
{
  result = type metadata accessor for LostAccessory(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies(319);
    if (v3 <= 0x3F)
    {
      result = sub_B69C0();
      if (v4 <= 0x3F)
      {
        result = sub_B6600();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_8C058()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask) = *(v0 + 24);
}

uint64_t sub_8C09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_8C104(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_8C13C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_B65A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_8C2AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_B65A0() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_F248;

  return sub_8B300(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_8C424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_8C46C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 == -1)
  {
    if (a4 == -1)
    {
      sub_88EA8(a1, 255);
      sub_88EA8(a3, 255);
      sub_881E8(a1, 255);
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_5;
  }

  if (a4 == -1)
  {
LABEL_5:
    sub_88EA8(a1, a2);
    sub_88EA8(a3, a4);
    sub_881E8(a1, a2);
    sub_881E8(a3, a4);
    v9 = 1;
    return v9 & 1;
  }

  sub_88EA8(a1, a2);
  sub_88EA8(a3, a4);
  v8 = sub_80C50(a1, a2, a3, a4);
  sub_881E8(a3, a4);
  sub_881E8(a1, a2);
  v9 = !v8;
  return v9 & 1;
}

uint64_t sub_8C578()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_88EA8(v1, v4);
  return sub_881E8(v3, v5);
}

uint64_t DetailsSectionFooterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_97E8();

  v2 = sub_B7200();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = sub_B70A0();
  sub_B6A10();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v6 & 1;
  v20 = sub_B7110();
  v21 = swift_getKeyPath();
  result = sub_B74C0();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v19;
  *(a1 + 24) = v8;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v10;
  *(a1 + 56) = v12;
  *(a1 + 64) = v14;
  *(a1 + 72) = v16;
  *(a1 + 80) = v18;
  *(a1 + 88) = 0;
  *(a1 + 96) = v21;
  *(a1 + 104) = v20;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_8C708@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B6D40();
  *a1 = result;
  return result;
}

uint64_t sub_8C734@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B6D40();
  *a1 = result;
  return result;
}

uint64_t sub_8C7B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B6D60();
  *a1 = result;
  return result;
}

uint64_t sub_8C7DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B6D60();
  *a1 = result;
  return result;
}

unint64_t sub_8C890()
{
  result = qword_F24A8;
  if (!qword_F24A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F24B0, &qword_C37E0);
    sub_8C948();
    sub_A8CC(&qword_F24E8, &qword_F24F0, &unk_C3800, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F24A8);
  }

  return result;
}

unint64_t sub_8C948()
{
  result = qword_F24B8;
  if (!qword_F24B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F24C0, &qword_C37E8);
    sub_8CA00();
    sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F24B8);
  }

  return result;
}

unint64_t sub_8CA00()
{
  result = qword_F24C8;
  if (!qword_F24C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F24D0, &qword_C37F0);
    sub_8CA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F24C8);
  }

  return result;
}

unint64_t sub_8CA8C()
{
  result = qword_F24D8;
  if (!qword_F24D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F24E0, &qword_C37F8);
    sub_A8CC(&qword_EEFD8, &qword_EEFE0, &qword_BD750, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F24D8);
  }

  return result;
}

uint64_t DetailsSectionHeaderView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_B6E30();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F24F8, &qword_C3810);
  sub_8CCB8(v2, a2 + *(v4 + 44));
  v5 = sub_B70A0();
  type metadata accessor for DetailsSectionHeaderView(0);
  type metadata accessor for DetailsSectionHeaderView.Style(0);
  sub_B6A10();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2500, &qword_C3818) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  v15 = sub_B70C0();
  sub_B6A10();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2508, &qword_C3820) + 36);
  *v24 = v15;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  v25 = sub_B70D0();
  sub_B6A10();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2510, &qword_C3828);
  v35 = a2 + *(result + 36);
  *v35 = v25;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

double sub_8CCB8@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2678, &qword_C38C8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_B6EB0();
  v11 = &a1[*(type metadata accessor for DetailsSectionHeaderView(0) + 24)];
  v12 = *&v11[*(type metadata accessor for DetailsSectionHeaderView.Style(0) + 32)];
  *v9 = v10;
  *(v9 + 1) = v12;
  v9[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2680, &qword_C38D0);
  sub_8CEF4(a1, &v9[*(v13 + 44)]);
  sub_A310(v9, v7, &qword_F2678, &qword_C38C8);
  sub_A310(v7, a2, &qword_F2678, &qword_C38C8);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2688, &qword_C38D8) + 48);
  *v14 = 0;
  *(v14 + 8) = 0;
  sub_A194(v9, &qword_F2678, &qword_C38C8);
  sub_A194(v7, &qword_F2678, &qword_C38C8);

  return result;
}

double sub_8CEF4@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2690, &qword_C38E0);
  v4 = __chkstk_darwin(v3 - 8);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v40 - v6;
  v7 = sub_B66C0();
  __chkstk_darwin(v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2698, &qword_C38E8);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26A0, &qword_C38F0);
  v12 = __chkstk_darwin(v11);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  sub_B7A60();
  v40 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = type metadata accessor for DetailsSectionHeaderView(0);
  v17 = *(v16 + 20);
  v18 = sub_B63C0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v10, &a1[v17], v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  sub_B7130();
  sub_B66B0();
  sub_B66A0();
  v20 = &a1[*(v16 + 24)];
  v21 = type metadata accessor for DetailsSectionHeaderView.Style(0);
  v22 = &v15[*(v11 + 36)];
  *v22 = *&v20[*(v21 + 36)];
  *(v22 + 1) = 0;
  v23 = *(a1 + 1);
  v45 = *a1;
  v46 = v23;
  sub_97E8();

  v24 = sub_B7200();
  v26 = v25;
  LOBYTE(v18) = v27;
  sub_B7160();
  v28 = sub_B71E0();
  v30 = v29;
  LOBYTE(v19) = v31;
  v33 = v32;

  sub_9C84(v24, v26, v18 & 1);

  v45 = v28;
  v46 = v30;
  v47 = v19 & 1;
  v48 = v33;
  v34 = v42;
  sub_B7360();
  sub_9C84(v28, v30, v19 & 1);

  v35 = v41;
  sub_A310(v15, v41, &qword_F26A0, &qword_C38F0);
  v36 = v44;
  sub_A310(v34, v44, &qword_F2690, &qword_C38E0);
  v37 = v43;
  sub_A310(v35, v43, &qword_F26A0, &qword_C38F0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26A8, &unk_C38F8);
  sub_A310(v36, v37 + *(v38 + 48), &qword_F2690, &qword_C38E0);
  sub_A194(v34, &qword_F2690, &qword_C38E0);
  sub_A194(v15, &qword_F26A0, &qword_C38F0);
  sub_A194(v36, &qword_F2690, &qword_C38E0);
  sub_A194(v35, &qword_F26A0, &qword_C38F0);

  return result;
}

uint64_t sub_8D3BC()
{
  v0 = type metadata accessor for DetailsSectionHeaderView.Style(0);
  __swift_allocate_value_buffer(v0, qword_FAE38);
  v1 = __swift_project_value_buffer(v0, qword_FAE38);
  sub_275B4();
  result = sub_B6AB0();
  *(v1 + v0[5]) = 0x4030000000000000;
  *(v1 + v0[6]) = 0x402A000000000000;
  *(v1 + v0[7]) = 0x402E000000000000;
  *(v1 + v0[8]) = 0x4018000000000000;
  *(v1 + v0[9]) = 0xC000000000000000;
  return result;
}

uint64_t sub_8D484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_B63C0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DetailsSectionHeaderView.Style(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_8D5BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_B63C0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DetailsSectionHeaderView.Style(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_8D6E0(uint64_t a1)
{
  result = sub_B63C0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DetailsSectionHeaderView.Style(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_8D7E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8D89C()
{
  result = qword_F25C8;
  if (!qword_F25C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F25D0, &unk_C38B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F25C8);
  }

  return result;
}

uint64_t sub_8D914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_8D9A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_8DA1C(uint64_t a1)
{
  sub_27558(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t DetailsSectionRowView.State.init(id:title:titleTextStyle:subtitle:subtitleTextStyle:informationText:isEnabled:onSelect:menu:menuTitle:confirmationDialog:accessoryStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _OWORD *a19)
{
  *(a9 + 104) = *a19;
  v20 = *(a15 + 16);
  *(a9 + 120) = *a15;
  v21 = *a5;
  v22 = *a8;
  *(a9 + 136) = v20;
  *(a9 + 192) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v21;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v22;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 152) = *(a15 + 32);
  *(a9 + 160) = a16;
  *(a9 + 168) = a17;
  *(a9 + 176) = 0u;

  return sub_2C360(a18, a9 + 176);
}

void *sub_8DB30@<X0>(const void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v12[3] = &type metadata for SolariumFeatureFlag;
  v12[4] = sub_28360();
  v6 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v12);
  v7 = 16.0;
  v8 = 15.0;
  if ((v6 & 1) == 0)
  {
    v8 = 16.0;
    v7 = 0.0;
  }

  *(a3 + 280) = 0x4030000000000000;
  *(a3 + 288) = v8;
  *(a3 + 296) = 0x3FF0000000000000;
  *(a3 + 304) = 0x3FD6666666666666;
  if (v6)
  {
    v9 = 3.0;
  }

  else
  {
    v9 = 0.0;
  }

  *(a3 + 312) = v7;
  *(a3 + 320) = v9;
  sub_B75B0();
  v10 = v12[1];
  *(a3 + 328) = v12[0];
  *(a3 + 336) = v10;
  result = memcpy(a3, a1, 0x110uLL);
  *(a3 + 272) = a2;
  return result;
}

uint64_t DetailsSectionRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_B6E10();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_8DE00(v2, a1);
  v11 = *(v2 + 80);
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = (v11 & 1) == 0;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26B0, &qword_C3938) + 36));
  *v14 = KeyPath;
  v14[1] = sub_417AC;
  v14[2] = v13;
  sub_B6E00();
  (*(v5 + 16))(v8, v10, v4);
  sub_93100(&qword_F26B8, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v15 = sub_B6B30();
  (*(v5 + 8))(v10, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26C0, &qword_C3940);
  *(a1 + *(result + 36)) = v15;
  return result;
}

double sub_8DE00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2770, &qword_C3DD0);
  v63 = *(v74 - 8);
  __chkstk_darwin(v74);
  v62 = v60 - v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2730, &unk_C3D38);
  v64 = *(v75 - 8);
  __chkstk_darwin(v75);
  v5 = v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2720, &qword_C3D28);
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = v60 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2778, &qword_C3DD8);
  __chkstk_darwin(v79);
  v81 = v60 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2780, &qword_C3DE0);
  __chkstk_darwin(v71);
  v10 = v60 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2708, &qword_C3D18);
  __chkstk_darwin(v80);
  v73 = v60 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2710, &qword_C3D20);
  v12 = *(v70 - 8);
  __chkstk_darwin(v70);
  v14 = v60 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2788, &qword_C3DE8);
  v68 = *(v72 - 8);
  __chkstk_darwin(v72);
  v67 = v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26F8, &qword_C3D10);
  __chkstk_darwin(v16 - 8);
  v18 = v60 - v17;
  sub_B7A60();
  v77 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_A310(a1 + 120, v85, &qword_F2790, &qword_C3DF0);
  v78 = v18;
  if (*&v85[24])
  {
    v19 = sub_92AE4(v85, v86);
    v69 = v6;
    v20 = v10;
    v21 = __chkstk_darwin(v19);
    __chkstk_darwin(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2798, &qword_C3DF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27B8, &qword_C3E10);
    sub_927D0();
    sub_92B24();
    sub_B71A0();
    v22 = sub_A8CC(&qword_F2718, &qword_F2710, &qword_C3D20, &protocol conformance descriptor for Menu<A, B>);
    v23 = v67;
    v24 = v70;
    sub_B73D0();
    (*(v12 + 8))(v14, v24);
    v25 = v68;
    v26 = v72;
    v68[2](v20, v23, v72);
    swift_storeEnumTagMultiPayload();
    *v85 = v24;
    *&v85[8] = v22;
    swift_getOpaqueTypeConformance2();
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2728, &qword_C3D30);
    v28 = sub_A8CC(&qword_F2738, &qword_F2730, &unk_C3D38, &protocol conformance descriptor for Button<A>);
    v29 = sub_92608();
    *v85 = v75;
    *&v85[8] = &type metadata for ListRowButtonStyle;
    *&v85[16] = v28;
    *&v85[24] = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = sub_97E8();
    v32 = sub_9265C();
    *v85 = v69;
    *&v85[8] = &type metadata for String;
    *&v85[16] = &type metadata for AnyView;
    *&v85[24] = v27;
    v33 = v78;
    *&v85[32] = OpaqueTypeConformance2;
    *&v85[40] = v31;
    *&v85[48] = &protocol witness table for AnyView;
    *&v85[56] = v32;
    swift_getOpaqueTypeConformance2();
    v34 = v73;
    sub_B6F00();
    sub_929DC(v34, v81);
    swift_storeEnumTagMultiPayload();
    sub_923F8();
    sub_B6F00();
    sub_92A4C(v34);
    (v25[1])(v23, v26);
    __swift_destroy_boxed_opaque_existential_0(v86);
  }

  else
  {
    sub_A194(v85, &qword_F2790, &qword_C3DF0);
    sub_A310(a1 + 176, v85, &qword_EFAC0, &qword_BEEB0);
    if (*&v85[8])
    {
      v86[2] = *&v85[32];
      v86[3] = *&v85[48];
      v86[4] = *&v85[64];
      v86[5] = *&v85[80];
      v86[0] = *v85;
      v86[1] = *&v85[16];
      sub_9276C(a1, v85);
      v35 = swift_allocObject();
      v36 = memcpy((v35 + 16), v85, 0x158uLL);
      __chkstk_darwin(v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2798, &qword_C3DF8);
      sub_927D0();
      sub_B7610();
      v37 = sub_A8CC(&qword_F2738, &qword_F2730, &unk_C3D38, &protocol conformance descriptor for Button<A>);
      v69 = v6;
      v38 = v37;
      v39 = sub_92608();
      v68 = v10;
      v40 = v75;
      sub_B7260();
      (*(v64 + 8))(v5, v40);
      v84 = v86[0];
      v41 = *(a1 + 336);
      v82 = *(a1 + 328);
      v83 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C80, &qword_C0680);
      v42 = sub_B75E0();
      v61 = v60;
      v60[3] = v85[16];
      v43 = __chkstk_darwin(v42);
      __chkstk_darwin(v43);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2728, &qword_C3D30);
      *v85 = v40;
      *&v85[8] = &type metadata for ListRowButtonStyle;
      *&v85[16] = v38;
      *&v85[24] = v39;
      v67 = swift_getOpaqueTypeConformance2();
      v75 = sub_97E8();
      v59 = sub_9265C();
      v44 = v69;
      v45 = v62;
      v46 = v66;
      sub_B7320();

      (*(v65 + 8))(v46, v44);
      v47 = v63;
      v48 = v74;
      (*(v63 + 16))(v68, v45, v74);
      swift_storeEnumTagMultiPayload();
      v49 = sub_A8CC(&qword_F2718, &qword_F2710, &qword_C3D20, &protocol conformance descriptor for Menu<A, B>);
      *v85 = v70;
      *&v85[8] = v49;
      swift_getOpaqueTypeConformance2();
      *v85 = v44;
      *&v85[8] = &type metadata for String;
      *&v85[16] = &type metadata for AnyView;
      *&v85[24] = v64;
      *&v85[32] = v67;
      *&v85[40] = v75;
      *&v85[48] = &protocol witness table for AnyView;
      *&v85[56] = v59;
      swift_getOpaqueTypeConformance2();
      v50 = v73;
      sub_B6F00();
      sub_929DC(v50, v81);
      swift_storeEnumTagMultiPayload();
      sub_923F8();
      v33 = v78;
      sub_B6F00();
      sub_92A4C(v50);
      (*(v47 + 8))(v45, v48);
      sub_92AB4(v86);
    }

    else
    {
      sub_A194(v85, &qword_EFAC0, &qword_BEEB0);
      sub_9276C(a1, v85);
      v51 = swift_allocObject();
      v52 = memcpy((v51 + 16), v85, 0x158uLL);
      __chkstk_darwin(v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2798, &qword_C3DF8);
      sub_927D0();
      sub_B7610();
      v53 = sub_A8CC(&qword_F2738, &qword_F2730, &unk_C3D38, &protocol conformance descriptor for Button<A>);
      v54 = sub_92608();
      v55 = v66;
      v56 = v75;
      sub_B7260();
      (*(v64 + 8))(v5, v56);
      v57 = v65;
      (*(v65 + 16))(v81, v55, v6);
      swift_storeEnumTagMultiPayload();
      sub_923F8();
      *v85 = v56;
      *&v85[8] = &type metadata for ListRowButtonStyle;
      *&v85[16] = v53;
      *&v85[24] = v54;
      swift_getOpaqueTypeConformance2();
      v33 = v78;
      sub_B6F00();
      (*(v57 + 8))(v55, v6);
    }
  }

  sub_92888(v33, v76);

  return result;
}

double sub_8ECD8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27D0, &qword_C3E18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2910, &qword_C3F90);
  __chkstk_darwin(v21);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27B8, &qword_C3E10);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  sub_B7A60();
  v22 = sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v15 = *(a1 + 168);
  if (v15)
  {
    v24 = *(a1 + 160);
    v25 = v15;
    __chkstk_darwin(isCurrentExecutor);
    *(&v20 - 2) = a2;
    sub_97E8();

    sub_B7700();
    (*(v6 + 16))(v10, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_92BB0();
    sub_B6F00();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v16 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    __chkstk_darwin(v16);
    (*(v18 + 16))(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    *v10 = sub_B76A0();
    swift_storeEnumTagMultiPayload();
    sub_92BB0();
    sub_B6F00();
  }

  sub_AB00(v13, v23, &qword_F27B8, &qword_C3E10);

  return result;
}

void sub_8F0B4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __chkstk_darwin(v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_B76A0();

  *a2 = v7;
}

double sub_8F1FC(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C80, &qword_C0680);
  sub_B75C0();
  sub_B75D0();

  return result;
}

void sub_8F304(double *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27B0, &unk_C3E00);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2798, &qword_C3DF8);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_B6E30();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27D8, &qword_C3E20);
  sub_8F900(a1, &v7[*(v11 + 44)]);
  v12 = sub_B70D0();
  v13 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v12)
  {
    v13 = sub_B70F0();
  }

  sub_B6A10();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_AB00(v7, v10, &qword_F27B0, &unk_C3E00);
  v22 = &v10[*(v8 + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  sub_AB00(v10, a3, &qword_F2798, &qword_C3DF8);
}

void sub_8F540(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = __swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  __chkstk_darwin(v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_B76A0();

  *a2 = v7;
}

void sub_8F688(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_A310(a1 + 16, &v8, &qword_F2790, &qword_C3DF0);
  if (v9)
  {
    sub_92AE4(&v8, v10);
    v4 = __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    __chkstk_darwin(v4);
    (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = sub_B76A0();
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_A194(&v8, &qword_F2790, &qword_C3DF0);

    v7 = 0;
  }

  *a2 = v7;
}

double sub_8F83C(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(a1 + 96);

    v2(a1);
    sub_C618(v2, v3);
  }

  return result;
}

double sub_8F900@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27E0, &qword_C3E28);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_B6EB0();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27E8, &qword_C3E30);
  sub_8FABC(a1, &v9[*(v10 + 44)]);
  sub_A310(v9, v7, &qword_F27E0, &qword_C3E28);
  sub_A310(v7, a2, &qword_F27E0, &qword_C3E28);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27F0, &qword_C3E38) + 48);
  *v11 = 0;
  *(v11 + 8) = 0;
  sub_A194(v9, &qword_F27E0, &qword_C3E28);
  sub_A194(v7, &qword_F27E0, &qword_C3E28);

  return result;
}

void sub_8FABC(double *a1@<X0>, void *a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27F8, &qword_C3E40);
  __chkstk_darwin(v3 - 8);
  v5 = &v71 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2800, &qword_C3E48);
  __chkstk_darwin(v71);
  v7 = &v71 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2808, &qword_C3E50);
  __chkstk_darwin(v77);
  v9 = &v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2810, &qword_C3E58);
  v11 = __chkstk_darwin(v10 - 8);
  v86 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = &v71 - v13;
  sub_B7A60();
  v88 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = [objc_opt_self() separatorColor];
  v84 = sub_B7530();
  sub_B7760();
  sub_B6B10();
  v95 = v156;
  v15 = v157;
  v16 = v159;
  v82 = v158;
  v83 = v160;
  v97 = v161;
  sub_B7760();
  sub_B6C90();
  v145 = v15;
  v96 = v16;
  v144 = v16;
  v94 = sub_B70E0();
  sub_B6A10();
  v92 = v17;
  v80 = v19;
  v81 = v18;
  v79 = v20;
  v146 = 0;
  v93 = sub_B7100();
  sub_B6A10();
  v78 = v21;
  v90 = v23;
  v91 = v22;
  v89 = v24;
  v147 = 0;
  v25 = sub_B70D0();
  v26 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v25)
  {
    v26 = sub_B70F0();
  }

  v76 = v26;
  sub_B6A10();
  v74 = v28;
  v75 = v27;
  v72 = v30;
  v73 = v29;
  v148 = 0;
  *v5 = sub_B6E30();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2818, &unk_C3E60);
  sub_90360(a1, &v5[*(v31 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_BD800;
  v33 = sub_B70E0();
  *(v32 + 32) = v33;
  v34 = sub_B7100();
  *(v32 + 33) = v34;
  v35 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v33)
  {
    v35 = sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v34)
  {
    v35 = sub_B70F0();
  }

  sub_B6A10();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_AB00(v5, v7, &qword_F27F8, &qword_C3E40);
  v44 = &v7[*(v71 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = sub_B70D0();
  sub_B6A10();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_AB00(v7, v9, &qword_F2800, &qword_C3E48);
  v54 = &v9[*(v77 + 36)];
  *v54 = v45;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_92C40();
  v55 = v85;
  sub_B7360();
  sub_A194(v9, &qword_F2808, &qword_C3E50);
  v56 = v86;
  sub_A310(v55, v86, &qword_F2810, &qword_C3E58);
  v58 = v83;
  v57 = v84;
  v98[0] = v84;
  v98[1] = v95;
  LOBYTE(v98[2]) = v15;
  *(&v98[2] + 1) = *v155;
  HIDWORD(v98[2]) = *&v155[3];
  LODWORD(v77) = v15;
  v59 = v82;
  v98[3] = v82;
  LOBYTE(v98[4]) = v96;
  *(&v98[4] + 1) = *v154;
  HIDWORD(v98[4]) = *&v154[3];
  v98[5] = v83;
  v98[6] = v97;
  *&v98[11] = v139;
  *&v98[9] = v138;
  *&v98[7] = v137;
  *&v98[19] = v143;
  *&v98[17] = v142;
  *&v98[15] = v141;
  *&v98[13] = v140;
  LOBYTE(v98[21]) = v94;
  HIDWORD(v98[21]) = *&v153[3];
  *(&v98[21] + 1) = *v153;
  v61 = v80;
  v60 = v81;
  v98[22] = v92;
  v98[23] = v81;
  v63 = v78;
  v62 = v79;
  v98[24] = v80;
  v98[25] = v79;
  LOBYTE(v98[26]) = 0;
  HIDWORD(v98[26]) = *&v152[3];
  *(&v98[26] + 1) = *v152;
  LOBYTE(v98[27]) = v93;
  HIDWORD(v98[27]) = *&v151[3];
  *(&v98[27] + 1) = *v151;
  v98[28] = v78;
  v98[29] = v91;
  v98[30] = v90;
  v98[31] = v89;
  LOBYTE(v98[32]) = 0;
  *(&v98[32] + 1) = *v150;
  HIDWORD(v98[32]) = *&v150[3];
  v64 = v76;
  LOBYTE(v98[33]) = v76;
  *(&v98[33] + 1) = *v149;
  HIDWORD(v98[33]) = *&v149[3];
  v66 = v74;
  v65 = v75;
  v98[34] = v75;
  v98[35] = v74;
  v68 = v72;
  v67 = v73;
  v98[36] = v73;
  v98[37] = v72;
  LOBYTE(v98[38]) = 0;
  v69 = v87;
  memcpy(v87, v98, 0x131uLL);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2838, &qword_C3E70);
  sub_A310(v56, v69 + *(v70 + 48), &qword_F2810, &qword_C3E58);
  sub_A310(v98, v99, &qword_F2840, &qword_C3E78);
  sub_A194(v55, &qword_F2810, &qword_C3E58);
  sub_A194(v56, &qword_F2810, &qword_C3E58);
  v99[0] = v57;
  v99[1] = v95;
  v100 = v77;
  *v101 = *v155;
  *&v101[3] = *&v155[3];
  v102 = v59;
  v103 = v96;
  *v104 = *v154;
  *&v104[3] = *&v154[3];
  v105 = v58;
  v106 = v97;
  v109 = v139;
  v108 = v138;
  v107 = v137;
  v113 = v143;
  v112 = v142;
  v111 = v141;
  v110 = v140;
  v114 = v94;
  *&v115[3] = *&v153[3];
  *v115 = *v153;
  v116 = v92;
  v117 = v60;
  v118 = v61;
  v119 = v62;
  v120 = 0;
  *&v121[3] = *&v152[3];
  *v121 = *v152;
  v122 = v93;
  *&v123[3] = *&v151[3];
  *v123 = *v151;
  v124 = v63;
  v125 = v91;
  v126 = v90;
  v127 = v89;
  v128 = 0;
  *v129 = *v150;
  *&v129[3] = *&v150[3];
  v130 = v64;
  *v131 = *v149;
  *&v131[3] = *&v149[3];
  v132 = v65;
  v133 = v66;
  v134 = v67;
  v135 = v68;
  v136 = 0;
  sub_A194(v99, &qword_F2840, &qword_C3E78);
}

void sub_90360(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2848, &unk_C3E80);
  __chkstk_darwin(v80);
  v74 = (&v72 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2690, &qword_C38E0);
  v5 = __chkstk_darwin(v4 - 8);
  v73 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v72 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2850, &qword_C3E90);
  __chkstk_darwin(v78);
  v79 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2858, &qword_C3E98);
  __chkstk_darwin(v9);
  v77 = (&v72 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2860, &qword_C3EA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2868, &qword_C3EA8);
  v15 = __chkstk_darwin(v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v72 - v19;
  __chkstk_darwin(v18);
  v76 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2870, &qword_C3EB0);
  v23 = __chkstk_darwin(v22 - 8);
  v85 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v84 = &v72 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2878, &qword_C3EB8);
  v27 = __chkstk_darwin(v26 - 8);
  v83 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v72 - v29;
  sub_B7A60();
  v81 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v30 = sub_B6EB0();
  *(v30 + 1) = 0;
  v30[16] = 0;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2880, &qword_C3EC0) + 44);
  v82 = v30;
  sub_90D34(a1, &v30[v31]);
  v32 = *(a1 + 112);
  if (v32)
  {
    v33 = *(a1 + 104);
    *v13 = sub_B6E30();
    *(v13 + 1) = 0x4000000000000000;
    v13[16] = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28B0, &qword_C3EE0);
    sub_913C4(v33, v32, &v13[*(v34 + 44)]);
    v35 = 304;
    if (*(a1 + 80))
    {
      v35 = 296;
    }

    v36 = *(a1 + v35);
    sub_AB00(v13, v20, &qword_F2860, &qword_C3EA0);
    *&v20[*(v14 + 36)] = v36;
    v37 = v76;
    sub_AB00(v20, v76, &qword_F2868, &qword_C3EA8);
    sub_A310(v37, v17, &qword_F2868, &qword_C3EA8);
    v38 = v77;
    *v77 = 0;
    *(v38 + 8) = 1;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28B8, &qword_C3EE8);
    sub_A310(v17, v38 + *(v39 + 48), &qword_F2868, &qword_C3EA8);
    sub_A194(v17, &qword_F2868, &qword_C3EA8);
    sub_A310(v38, v79, &qword_F2858, &qword_C3E98);
    swift_storeEnumTagMultiPayload();
    sub_A8CC(&qword_F28A0, &qword_F2858, &qword_C3E98, &protocol conformance descriptor for TupleView<A>);
    sub_A8CC(&qword_F28A8, &qword_F2848, &unk_C3E80, &protocol conformance descriptor for TupleView<A>);
    v40 = v84;
    sub_B6F00();
    sub_A194(v38, &qword_F2858, &qword_C3E98);
    v41 = v37;
    v42 = &qword_F2868;
    v43 = &qword_C3EA8;
  }

  else
  {
    v44 = *(a1 + 72);
    v45 = 1;
    if (!v44)
    {
      v40 = v84;
      goto LABEL_10;
    }

    v87 = *(a1 + 64);
    v88 = v44;
    sub_97E8();

    v46 = sub_B7200();
    v48 = v47;
    v50 = v49;
    sub_B7120();
    v51 = sub_B71E0();
    v53 = v52;
    v77 = v9;
    v55 = v54;

    sub_9C84(v46, v48, v50 & 1);

    LODWORD(v87) = sub_B6FA0();
    v56 = sub_B71C0();
    v58 = v57;
    LOBYTE(v46) = v59;
    v61 = v60;
    sub_9C84(v51, v53, v55 & 1);

    v87 = v56;
    v88 = v58;
    v89 = v46 & 1;
    v90 = v61;
    v62 = v75;
    sub_B7360();
    sub_9C84(v56, v58, v46 & 1);

    v63 = v73;
    sub_A310(v62, v73, &qword_F2690, &qword_C38E0);
    v64 = v74;
    *v74 = 0;
    *(v64 + 8) = 1;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2898, &qword_C3ED8);
    sub_A310(v63, v64 + *(v65 + 48), &qword_F2690, &qword_C38E0);
    sub_A194(v63, &qword_F2690, &qword_C38E0);
    sub_A310(v64, v79, &qword_F2848, &unk_C3E80);
    swift_storeEnumTagMultiPayload();
    sub_A8CC(&qword_F28A0, &qword_F2858, &qword_C3E98, &protocol conformance descriptor for TupleView<A>);
    sub_A8CC(&qword_F28A8, &qword_F2848, &unk_C3E80, &protocol conformance descriptor for TupleView<A>);
    v40 = v84;
    sub_B6F00();
    sub_A194(v64, &qword_F2848, &unk_C3E80);
    v41 = v75;
    v42 = &qword_F2690;
    v43 = &qword_C38E0;
  }

  sub_A194(v41, v42, v43);
  v45 = 0;
LABEL_10:
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2888, &qword_C3EC8);
  (*(*(v66 - 8) + 56))(v40, v45, 1, v66);
  v68 = v82;
  v67 = v83;
  sub_A310(v82, v83, &qword_F2878, &qword_C3EB8);
  v69 = v85;
  sub_A310(v40, v85, &qword_F2870, &qword_C3EB0);
  v70 = v86;
  sub_A310(v67, v86, &qword_F2878, &qword_C3EB8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2890, &qword_C3ED0);
  sub_A310(v69, v70 + *(v71 + 48), &qword_F2870, &qword_C3EB0);
  sub_A194(v40, &qword_F2870, &qword_C3EB0);
  sub_A194(v68, &qword_F2878, &qword_C3EB8);
  sub_A194(v69, &qword_F2870, &qword_C3EB0);
  sub_A194(v67, &qword_F2878, &qword_C3EB8);
}

double sub_90D34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28E0, &qword_C3F70);
  v4 = __chkstk_darwin(v3 - 8);
  v69 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28E8, &qword_C3F78);
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = __chkstk_darwin(v7);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v62 = &v58 - v11;
  __chkstk_darwin(v10);
  v70 = &v58 - v12;
  sub_B7A60();
  v65 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 24);
  v71 = *(a1 + 16);
  v72 = v13;
  v14 = sub_97E8();

  v61 = v14;
  v15 = sub_B7200();
  v17 = v16;
  v19 = v18;
  LOBYTE(v71) = *(a1 + 32);
  v71 = sub_91318(&v71, &static HierarchicalShapeStyle.primary.getter);
  v20 = sub_B71C0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_9C84(v15, v17, v19 & 1);

  if (*(a1 + 80))
  {
    v27 = 296;
  }

  else
  {
    v27 = 304;
  }

  v28 = *(a1 + v27);
  v71 = v20;
  v72 = v22;
  v73 = v24 & 1;
  v74 = v26;
  v75 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28F0, &qword_C3F80);
  v30 = sub_92E7C();
  sub_B7360();
  sub_9C84(v20, v22, v24 & 1);

  v31 = *(a1 + 48);
  if (v31)
  {
    v71 = *(a1 + 40);
    v72 = v31;

    v32 = sub_B7200();
    v34 = v33;
    v36 = v35;
    sub_B7110();
    v61 = v30;
    v37 = sub_B71E0();
    v59 = v27;
    v60 = v29;
    v39 = v38;
    v41 = v40;

    sub_9C84(v32, v34, v36 & 1);

    LOBYTE(v71) = *(a1 + 56);
    v71 = sub_91318(&v71, &static HierarchicalShapeStyle.secondary.getter);
    v42 = sub_B71C0();
    v44 = v43;
    LOBYTE(v34) = v45;
    v47 = v46;
    sub_9C84(v37, v39, v41 & 1);

    v48 = *(a1 + v59);
    v71 = v42;
    v72 = v44;
    v73 = v34 & 1;
    v74 = v47;
    v75 = v48;
    v49 = v62;
    sub_B7360();
    sub_9C84(v42, v44, v34 & 1);

    v50 = v67;
    sub_AB00(v49, v67, &qword_F28E8, &qword_C3F78);
    v51 = 0;
  }

  else
  {
    v51 = 1;
    v50 = v67;
  }

  (*(v63 + 56))(v50, v51, 1, v64);
  v52 = v70;
  v53 = v66;
  sub_A310(v70, v66, &qword_F28E8, &qword_C3F78);
  v54 = v69;
  sub_A310(v50, v69, &qword_F28E0, &qword_C3F70);
  v55 = v68;
  sub_A310(v53, v68, &qword_F28E8, &qword_C3F78);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2900, &qword_C3F88);
  sub_A310(v54, v55 + *(v56 + 48), &qword_F28E0, &qword_C3F70);
  sub_A194(v50, &qword_F28E0, &qword_C3F70);
  sub_A194(v52, &qword_F28E8, &qword_C3F78);
  sub_A194(v54, &qword_F28E0, &qword_C3F70);
  sub_A194(v53, &qword_F28E8, &qword_C3F78);

  return result;
}

uint64_t sub_91318(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      sub_B7500();
    }

    else
    {
      sub_B74B0();
    }
  }

  else if (*a1)
  {
    sub_B6B80();
    sub_92F00();
  }

  else
  {
    a2();
  }

  return sub_B6B20();
}

double sub_913C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28C0, &qword_C3EF0);
  v5 = __chkstk_darwin(v42);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v42 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2690, &qword_C38E0);
  v10 = __chkstk_darwin(v9 - 8);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = &v42 - v12;
  sub_B7A60();
  v44 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v48 = a1;
  v49 = a2;
  sub_97E8();

  v13 = sub_B7200();
  v15 = v14;
  v17 = v16;
  sub_B7120();
  v18 = sub_B71E0();
  v20 = v19;
  v22 = v21;

  sub_9C84(v13, v15, v17 & 1);

  LODWORD(v48) = sub_B6FA0();
  v23 = sub_B71C0();
  v25 = v24;
  LOBYTE(v15) = v26;
  v28 = v27;
  sub_9C84(v18, v20, v22 & 1);

  v48 = v23;
  v49 = v25;
  v50 = v15 & 1;
  v51 = v28;
  v29 = v43;
  sub_B7360();
  sub_9C84(v23, v25, v15 & 1);

  v30 = sub_B7540();
  sub_B7120();
  sub_B7140();
  v31 = sub_B7150();

  KeyPath = swift_getKeyPath();
  v33 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28C8, &qword_C3F28) + 36));
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28D0, &qword_C3F30) + 28);
  v35 = enum case for Image.Scale.small(_:);
  v36 = sub_B7560();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  *v8 = v30;
  v8[1] = KeyPath;
  v8[2] = v31;
  *(v8 + *(v42 + 36)) = sub_B6F90();
  v37 = v45;
  sub_A310(v29, v45, &qword_F2690, &qword_C38E0);
  v38 = v46;
  sub_A310(v8, v46, &qword_F28C0, &qword_C3EF0);
  v39 = v47;
  sub_A310(v37, v47, &qword_F2690, &qword_C38E0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28D8, &qword_C3F68);
  sub_A310(v38, v39 + *(v40 + 48), &qword_F28C0, &qword_C3EF0);
  sub_A194(v8, &qword_F28C0, &qword_C3EF0);
  sub_A194(v29, &qword_F2690, &qword_C38E0);
  sub_A194(v38, &qword_F28C0, &qword_C3EF0);
  sub_A194(v37, &qword_F2690, &qword_C38E0);

  return result;
}

uint64_t DetailsSectionRowView.State.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PeopleListPersonRow.State.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_918DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_B6E10();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_8DE00(v2, a1);
  v11 = *(v2 + 80);
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = (v11 & 1) == 0;
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26B0, &qword_C3938) + 36));
  *v14 = KeyPath;
  v14[1] = sub_42D18;
  v14[2] = v13;
  sub_B6E00();
  (*(v5 + 16))(v8, v10, v4);
  sub_93100(&qword_F26B8, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v15 = sub_B6B30();
  (*(v5 + 8))(v10, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26C0, &qword_C3940);
  *(a1 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_91AD0@<X0>(uint64_t a1@<X8>)
{
  sub_B6FB0();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2760, &qword_C3DC0) + 36)) = 0;
  v2 = sub_B7760();
  v4 = v3;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_B6FC0())
  {
    v5 = [objc_opt_self() secondarySystemFillColor];
    v6 = sub_B74A0();
  }

  else
  {
    v6 = sub_B74E0();
  }

  v7 = v6;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2768, &qword_C3DC8);
  v9 = (a1 + *(result + 36));
  *v9 = v7;
  v9[1] = v2;
  v9[2] = v4;
  return result;
}

unint64_t sub_91C1C()
{
  result = qword_F26C8;
  if (!qword_F26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F26C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FindMyAppCore21DetailsSectionRowViewV5StateVIeghn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4View_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_13FindMyAppCore21DetailsSectionRowViewV5StateV18ConfirmationDialogVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_91CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 344))
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

uint64_t sub_91D30(uint64_t result, int a2, int a3)
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_91DE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_91E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsSectionRowView.State.TextStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsSectionRowView.State.TextStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_92038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_92080(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_920EC()
{
  result = qword_F26D0;
  if (!qword_F26D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F26C0, &qword_C3940);
    sub_921A4();
    sub_A8CC(&qword_F2750, &qword_F2758, &qword_C3D48, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F26D0);
  }

  return result;
}

unint64_t sub_921A4()
{
  result = qword_F26D8;
  if (!qword_F26D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F26B0, &qword_C3938);
    sub_9225C();
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F26D8);
  }

  return result;
}

unint64_t sub_9225C()
{
  result = qword_F26E0;
  if (!qword_F26E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F26E8, &qword_C3D08);
    sub_922E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F26E0);
  }

  return result;
}

unint64_t sub_922E0()
{
  result = qword_F26F0;
  if (!qword_F26F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F26F8, &qword_C3D10);
    sub_923F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2730, &unk_C3D38);
    sub_A8CC(&qword_F2738, &qword_F2730, &unk_C3D38, &protocol conformance descriptor for Button<A>);
    sub_92608();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F26F0);
  }

  return result;
}

unint64_t sub_923F8()
{
  result = qword_F2700;
  if (!qword_F2700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2708, &qword_C3D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2710, &qword_C3D20);
    sub_A8CC(&qword_F2718, &qword_F2710, &qword_C3D20, &protocol conformance descriptor for Menu<A, B>);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2720, &qword_C3D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2728, &qword_C3D30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2730, &unk_C3D38);
    sub_A8CC(&qword_F2738, &qword_F2730, &unk_C3D38, &protocol conformance descriptor for Button<A>);
    sub_92608();
    swift_getOpaqueTypeConformance2();
    sub_97E8();
    sub_9265C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2700);
  }

  return result;
}

unint64_t sub_92608()
{
  result = qword_F2740;
  if (!qword_F2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2740);
  }

  return result;
}

unint64_t sub_9265C()
{
  result = qword_F2748;
  if (!qword_F2748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2728, &qword_C3D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2748);
  }

  return result;
}

uint64_t sub_926D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_926F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

unint64_t sub_927D0()
{
  result = qword_F27A0;
  if (!qword_F27A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2798, &qword_C3DF8);
    sub_A8CC(&qword_F27A8, &qword_F27B0, &unk_C3E00, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F27A0);
  }

  return result;
}

uint64_t sub_92888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26F8, &qword_C3D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_34Tm()
{

  if (v0[13])
  {
  }

  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  }

  if (v0[25])
  {

    if (v0[29])
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 26);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 31);
  }

  return _swift_deallocObject(v0, 360, 7);
}

uint64_t sub_929DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2708, &qword_C3D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_92A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2708, &qword_C3D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_92AE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_92B24()
{
  result = qword_F27C0;
  if (!qword_F27C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F27B8, &qword_C3E10);
    sub_92BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F27C0);
  }

  return result;
}