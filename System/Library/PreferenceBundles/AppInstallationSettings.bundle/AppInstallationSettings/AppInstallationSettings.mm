void sub_1CD0()
{
  v1 = v0;
  v2 = sub_1E1E8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1E148();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E958();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1E158();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for AppInstallationSettingsController();
  v48.receiver = v0;
  v48.super_class = v9;
  objc_msgSendSuper2(&v48, "viewDidLoad");
  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v10 = sub_286C(v3, qword_2D318);
  (*(v4 + 16))(v6, v10, v3);
  sub_1E1D8();
  sub_1E178();
  sub_1E988();
  v11 = sub_1E968();

  [v0 setTitle:v11];

  v46[1] = sub_3BD4;
  v46[2] = 0;
  v47 = 0;
  v12 = objc_allocWithZone(sub_27F0(&qword_2CA30, &qword_1F378));
  v13 = sub_1E5E8();
  [v1 addChildViewController:v13];
  [v13 willMoveToParentViewController:v1];
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = [v13 view];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  [v15 addSubview:v16];

  [v13 didMoveToParentViewController:v1];
  v18 = [v13 view];

  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_27F0(&qword_2CA38, &unk_1F380);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1F300;
  v20 = [v13 view];

  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = [v20 topAnchor];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v19 + 32) = v25;
  v26 = [v13 view];

  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = [v26 bottomAnchor];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v19 + 40) = v31;
  v32 = [v13 view];

  if (!v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = [v32 leadingAnchor];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v19 + 48) = v37;
  v38 = [v13 view];

  if (!v38)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = [v38 trailingAnchor];

  v40 = [v1 view];
  if (v40)
  {
    v41 = v40;
    v42 = objc_opt_self();
    v43 = [v41 trailingAnchor];

    v44 = [v39 constraintEqualToAnchor:v43];
    *(v19 + 56) = v44;
    sub_28A4();
    isa = sub_1E9C8().super.isa;

    [v42 activateConstraints:isa];

    return;
  }

LABEL_25:
  __break(1u);
}

id sub_2458(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppInstallationSettingsController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_248C(uint64_t *a1)
{
  if (sub_1DC40(2, 26, 0, 0))
  {
    sub_1E618();

    return sub_1E4A8();
  }

  else
  {
    sub_1E4D8();
    swift_getWitnessTable();
    sub_1E608();
    sub_1E4A8();
    sub_1EAB8();
    swift_getWitnessTable();
    sub_1E4D8();
    swift_getWitnessTable();
    sub_1E608();
    return sub_1E4A8();
  }
}

uint64_t sub_25F0(uint64_t *a1)
{
  if (sub_1DC40(2, 26, 0, 0))
  {
    sub_1E618();
    sub_1E4A8();
  }

  else
  {
    sub_1E4D8();
    swift_getWitnessTable();
    sub_1E608();
    sub_1E4A8();
    sub_1EAB8();
    swift_getWitnessTable();
    sub_1E4D8();
    swift_getWitnessTable();
    sub_1E608();
    sub_1E4A8();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_27F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2838(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_286C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_28A4()
{
  result = qword_2CA40;
  if (!qword_2CA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2CA40);
  }

  return result;
}

void sub_28F0()
{
  v0 = sub_1E968();
  v1 = sub_1E968();
  v2 = [objc_opt_self() bagForProfile:v0 profileVersion:v1];

  qword_2CA48 = v2;
}

unint64_t sub_29B8()
{
  result = qword_2CAF8;
  if (!qword_2CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CAF8);
  }

  return result;
}

uint64_t sub_2A28()
{
  v0 = sub_1E1E8();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1E148();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E958();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1E158();
  __chkstk_darwin(v6 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14[1] = sub_3BD4;
  v14[2] = 0;
  v15 = 0;
  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v7 = sub_286C(v1, qword_2D318);
  (*(v2 + 16))(v4, v7, v1);
  sub_1E1D8();
  sub_1E178();
  v8 = sub_1E688();
  v10 = v9;
  v12 = v11;
  sub_2DE8();
  sub_1E718();
  sub_2E3C(v8, v10, v12 & 1);
}

uint64_t sub_2D4C()
{
  sub_27F0(&qword_2CB00, &qword_1F468);
  sub_2DE8();
  swift_getOpaqueTypeConformance2();
  return sub_1E8E8();
}

unint64_t sub_2DE8()
{
  result = qword_2CB08;
  if (!qword_2CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CB08);
  }

  return result;
}

uint64_t sub_2E3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2E60()
{
  result = qword_2CB10;
  if (!qword_2CB10)
  {
    sub_2EC4(&qword_2CB18, &qword_1F470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CB10);
  }

  return result;
}

uint64_t sub_2EC4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2F0C()
{
  v0 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - v1;
  if (byte_2CA58 != 1)
  {
    v8 = qword_2CA50;
LABEL_15:
    v9 = [objc_opt_self() stringFromByteCount:v8 countStyle:2];
    goto LABEL_16;
  }

  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_1E968();
  v5 = [v3 initWithSuiteName:v4];

  if (v5)
  {
    v6 = sub_1E968();
    v7 = [v5 objectForKey:v6];

    if (v7)
    {
      sub_1EAC8();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      if (swift_dynamicCast())
      {
        v8 = v19;
        if (v19 > 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_BCF4(v22, &qword_2CCE8, &qword_1FA60);
    }

    v8 = 200000000;
LABEL_14:
    qword_2CA50 = v8;
    byte_2CA58 = 0;
    v10 = sub_1EA68();
    (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1EA48();
    v12 = v5;

    v13 = sub_1EA38();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    v14[5] = v11;

    sub_F71C(0, 0, v2, &unk_1FA70, v14);

    goto LABEL_15;
  }

  v9 = [objc_opt_self() stringFromByteCount:200000000 countStyle:2];
LABEL_16:
  v15 = v9;
  v16 = sub_1E978();

  return v16;
}

uint64_t sub_322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  sub_27F0(&qword_2CBF8, &qword_1FED0);
  v5[28] = swift_task_alloc();
  v6 = sub_1E388();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = sub_27F0(&qword_2CCF0, &qword_1FA78);
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = sub_1EA48();
  v5[36] = sub_1EA38();
  v9 = sub_1E9F8();
  v5[37] = v9;
  v5[38] = v8;

  return _swift_task_switch(sub_33C4, v9, v8);
}

uint64_t sub_33C4()
{
  v1 = objc_opt_self();
  v2 = sub_1E968();
  if (qword_2C9E8 != -1)
  {
    swift_once();
  }

  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = [v1 networkConstraintsForMediaType:v2 withBag:{qword_2CA48, v0 + 10}];
  v0[39] = v6;

  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_3618;
  swift_continuation_init();
  v0[17] = v5;
  v7 = sub_B0E4(v0 + 14);
  sub_B76C(0, &qword_2CCF8, AMSNetworkConstraints_ptr);
  sub_27F0(&qword_2CC10, &unk_1F910);
  sub_1EA08();
  (*(v4 + 32))(v7, v3, v5);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_3BC0;
  v0[13] = &unk_29498;
  [v6 resultWithCompletion:?];
  (*(v4 + 8))(v7, v5);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_3618()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);
  if (v2)
  {
    v5 = sub_3990;
  }

  else
  {
    v5 = sub_3748;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_3748()
{
  v1 = v0[39];

  v2 = v0[24];

  v3 = [v2 sizeLimitForNetworkType:AMSNetworkTypeCellular];
  v4 = v3;
  if ((byte_2CA58 & 1) != 0 || v3 != qword_2CA50)
  {
    v7 = v0[26];
    isa = sub_1EB68().super.super.isa;
    v9 = sub_1E968();
    [v7 setObject:isa forKey:v9];

    v5 = byte_2CA58;
    v6 = qword_2CA50;
  }

  else
  {
    v5 = 0;
    v6 = v3;
  }

  v10 = 200000000;
  if (v4 > 0)
  {
    v10 = v4;
  }

  if (((v5 & 1) != 0 || v10 != v6) && (qword_2CA50 = v10, byte_2CA58 = 0, swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v12 = Strong;
    v13 = v0[28];
    v14 = sub_1EA68();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = v12;
    v16 = sub_1EA38();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v15;
    sub_F71C(0, 0, v13, &unk_1FA80, v17);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_3990()
{
  v18 = v0;
  v1 = v0[39];

  swift_willThrow();

  sub_1E378();
  swift_errorRetain();
  v2 = sub_1E368();
  v3 = sub_1EA78();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[30];
    v16 = v0[31];
    v5 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1EB58();
    v10 = sub_A864(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v2, v3, "Error when fetching network constraints: %s", v6, 0xCu);
    sub_B1BC(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[29];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14();
}

id sub_3BD4()
{
  v0 = objc_allocWithZone(type metadata accessor for AppInstallationSettingsViewModel(0));

  return [v0 init];
}

__n128 sub_3C18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_3C2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_3C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_3CE4@<X0>(uint64_t a3@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppInstallationSettingsViewModel(0);
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
  v19 = sub_1E528();
  v5 = v4;
  v6 = sub_1E528();
  v8 = v7;
  v9 = sub_1E528();
  v11 = v10;
  v12 = sub_1E528();
  v14 = v13;
  v15 = sub_1E528();
  v17 = v16;
  sub_1E798();
  *a3 = v19;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v11;
  *(a3 + 48) = v12;
  *(a3 + 56) = v14;
  *(a3 + 64) = v15;
  *(a3 + 72) = v17;
  *(a3 + 80) = v20;
  *(a3 + 88) = v21;
}

uint64_t sub_3E98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_27F0(&qword_2CB20, &qword_1F570);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = *v1;
  v12[0] = v1[1];
  v12[1] = v7;
  *a1 = sub_1E5C8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_27F0(&qword_2CB28, &qword_1F578);
  sub_27F0(&qword_2CB30, &qword_1F580);
  sub_BC44(&qword_2CB38, &qword_2CB30, &qword_1F580, &protocol conformance descriptor for TupleView<A>);
  sub_1E658();
  sub_BC44(&qword_2CB40, &qword_2CB20, &qword_1F570, &protocol conformance descriptor for List<A, B>);
  sub_1E6A8();
  (*(v4 + 8))(v6, v3);

  type metadata accessor for AppInstallationSettingsViewModel(0);
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
  v8 = sub_1E438();
  v9 = sub_1E398();
  result = sub_27F0(&qword_2CB50, &qword_1F588);
  v11 = (a1 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

__n128 sub_4150(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_415C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_41B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_421C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_4260(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_42BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_4320()
{
  result = qword_2CB58;
  if (!qword_2CB58)
  {
    sub_2EC4(&qword_2CB50, &qword_1F588);
    sub_BC44(&qword_2CB60, &qword_2CB68, &qword_1F680, &protocol conformance descriptor for VStack<A>);
    sub_BC44(&qword_2CB70, &qword_2CB78, qword_1F688, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CB58);
  }

  return result;
}

uint64_t sub_4420@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_1E158();
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27F0(&qword_2CD48, &qword_1FAE0);
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v40 = a1;
  v41 = a2;
  v36 = a2;
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B294(v7);
  v46 = sub_1E988();
  v47 = v11;
  sub_AE7C();
  v12 = sub_1E698();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v46 = v12;
  v47 = v14;
  v48 = v16 & 1;
  v49 = v18;
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = a1;
    sub_1E3C8();

    if (v42)
    {
      sub_1B5BC(v7);
      v42 = sub_1E988();
      v43 = v20;
      v21 = sub_1E698();
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28 = v25 & 1;
    }

    else
    {

      v21 = 0;
      v23 = 0;
      v28 = 0;
      v27 = 0;
    }

    v42 = v21;
    v43 = v23;
    v44 = v28;
    v45 = v27;
    sub_27F0(&qword_2CD50, &qword_1FB30);
    sub_27F0(&qword_2CD58, &qword_1FB38);
    sub_BC44(&qword_2CD60, &qword_2CD50, &qword_1FB30, &protocol conformance descriptor for TupleView<A>);
    sub_BAF0();
    sub_1E868();
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v19;
    sub_1E3C8();

    v30 = v46;
    KeyPath = swift_getKeyPath();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    v33 = v39;
    (*(v37 + 32))(v39, v10, v38);
    result = sub_27F0(&qword_2CD70, &qword_1FB40);
    v35 = (v33 + *(result + 36));
    *v35 = KeyPath;
    v35[1] = sub_C344;
    v35[2] = v32;
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel(0);
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_48D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v48 = sub_27F0(&qword_2CD78, &qword_1FB48);
  v5 = *(v48 - 8);
  v6 = __chkstk_darwin(v48);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v39 - v10;
  __chkstk_darwin(v9);
  v13 = v39 - v12;
  v14 = sub_27F0(&qword_2CD80, &qword_1FB50);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v39 - v18;
  sub_1EA48();
  v42 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = [objc_opt_self() sharedConnection];
  v45 = v8;
  v46 = a3;
  v43 = v17;
  v44 = v11;
  if (!v20)
  {
    goto LABEL_11;
  }

  v21 = v20;
  if (![v20 isAppInstallationAllowed] || !objc_msgSend(v21, "isAutomaticAppUpdatesAllowed"))
  {

    goto LABEL_11;
  }

  v22 = [v21 isAutomaticAppDownloadsAllowed];

  if (!v22)
  {
LABEL_11:
    (*(v5 + 56))(v19, 1, 1, v48);
    v24 = v47;
LABEL_12:
    type metadata accessor for AppInstallationSettingsViewModel(0);
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
    v25 = sub_1E4F8();
    swift_getKeyPath();
    sub_1E518();

    __chkstk_darwin(v26);
    *&v39[-4] = a1;
    *&v39[-2] = v24;
    sub_27F0(&qword_2CD88, &qword_1FB80);
    sub_BC44(&qword_2CD90, &qword_2CD88, &qword_1FB80, &protocol conformance descriptor for VStack<A>);
    v27 = v44;
    sub_1E828();
    v28 = v43;
    sub_BC8C(v19, v43, &qword_2CD80, &qword_1FB50);
    v29 = *(v5 + 16);
    v30 = v45;
    v31 = v48;
    v29(v45, v27, v48);
    v32 = v46;
    sub_BC8C(v28, v46, &qword_2CD80, &qword_1FB50);
    v33 = sub_27F0(&qword_2CD98, &qword_1FB88);
    v29((v32 + *(v33 + 48)), v30, v31);
    v34 = *(v5 + 8);
    v34(v27, v31);
    sub_BCF4(v19, &qword_2CD80, &qword_1FB50);
    v34(v30, v31);
    sub_BCF4(v28, &qword_2CD80, &qword_1FB50);
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = a1;
    sub_1E3C8();

    if (v50)
    {
      v49 = 0;
      v23 = sub_1E838();
    }

    else
    {
      type metadata accessor for AppInstallationSettingsViewModel(0);
      sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
      v36 = sub_1E4F8();
      swift_getKeyPath();
      sub_1E518();
    }

    v40 = v51;
    v41 = v50;
    v39[1] = v52;
    __chkstk_darwin(v23);
    v37 = v47;
    *&v39[-4] = a1;
    *&v39[-2] = v37;
    sub_27F0(&qword_2CD88, &qword_1FB80);
    sub_BC44(&qword_2CD90, &qword_2CD88, &qword_1FB80, &protocol conformance descriptor for VStack<A>);
    sub_1E828();
    v38 = v48;
    (*(v5 + 32))(v19, v13, v48);
    (*(v5 + 56))(v19, 0, 1, v38);
    v24 = v37;
    goto LABEL_12;
  }

  type metadata accessor for AppInstallationSettingsViewModel(0);
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
  result = sub_1E508();
  __break(1u);
  return result;
}

uint64_t sub_4FE4@<X0>(uint64_t a6@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a6 = sub_1E5D8();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_27F0(&qword_2CDA0, &qword_1FBB8);
  __chkstk_darwin(v7);
  sub_27F0(&qword_2CDA8, &qword_1FBC0);
  sub_BC44(&qword_2CDB0, &qword_2CDA8, &qword_1FBC0, &protocol conformance descriptor for TupleView<A>);
  sub_1E418();
}

uint64_t sub_51A0@<X0>(void *a1@<X0>, void (*a4)(uint64_t)@<X3>, void (*a5)(uint64_t)@<X4>, void *a6@<X8>)
{
  v57 = a5;
  v60 = a6;
  v8 = sub_1E158();
  __chkstk_darwin(v8 - 8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EA48();
  v61 = sub_1EA38();
  sub_1E9F8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a4(isCurrentExecutor);
  v101 = sub_1E988();
  v102 = v12;
  v13 = sub_AE7C();
  v14 = sub_1E698();
  if (a1)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
    swift_getKeyPath();
    swift_getKeyPath();
    v56 = a1;
    sub_1E3C8();

    v55[0] = v10;
    v55[1] = v13;
    if (v101)
    {
      sub_1E768();
      v20 = sub_1E778();
    }

    else
    {
      v21 = [objc_opt_self() labelColor];
      v20 = sub_1E748();
    }

    v101 = v20;
    v22 = sub_1E668();
    v24 = v23;
    v26 = v25;
    sub_2E3C(v17, v18, v19 & 1);

    sub_1E638();
    v58 = sub_1E678();
    v59 = v27;
    v63 = v28;
    v30 = v29;

    sub_2E3C(v22, v24, v26 & 1);

    sub_1E898();
    v31 = sub_1E4E8();
    v62 = v30 & 1;
    v123 = v30 & 1;
    v57(v31);
    v101 = sub_1E988();
    v102 = v32;
    v33 = sub_1E698();
    v35 = v34;
    v37 = v36;
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v56;
    sub_1E3C8();

    if (v101 == 1)
    {
      sub_1E768();
      v39 = sub_1E778();
    }

    else
    {
      v39 = sub_1E788();
    }

    v101 = v39;
    v40 = sub_1E668();
    v42 = v41;
    v44 = v43;
    sub_2E3C(v33, v35, v37 & 1);

    sub_1E648();
    v45 = sub_1E678();
    v47 = v46;
    v49 = v48;
    v51 = v50;

    sub_2E3C(v40, v42, v44 & 1);

    sub_1E898();
    sub_1E4E8();
    LOBYTE(v40) = v49 & 1;
    v114 = v49 & 1;
    v53 = v58;
    v52 = v59;
    *&v72 = v58;
    *(&v72 + 1) = v63;
    LOBYTE(v73) = v62;
    *(&v73 + 1) = *v122;
    DWORD1(v73) = *&v122[3];
    *(&v73 + 1) = v59;
    v78 = v119;
    v79 = v120;
    v80 = v121;
    v74 = v115;
    v75 = v116;
    v76 = v117;
    v77 = v118;
    v64[6] = v119;
    v64[7] = v120;
    v64[2] = v115;
    v64[3] = v116;
    v64[4] = v117;
    v64[5] = v118;
    v64[0] = v72;
    v64[1] = v73;
    *&v81 = v45;
    *(&v81 + 1) = v47;
    LOBYTE(v82) = v40;
    *(&v82 + 1) = *v113;
    DWORD1(v82) = *&v113[3];
    *(&v82 + 1) = v51;
    v87 = v69;
    v88 = v70;
    v89 = v71;
    v83 = v65;
    v84 = v66;
    v85 = v67;
    v86 = v68;
    v64[12] = v66;
    v64[13] = v67;
    v64[10] = v82;
    v64[11] = v65;
    v64[14] = v68;
    v64[15] = v69;
    v64[16] = v70;
    v64[17] = v71;
    v64[8] = v121;
    v64[9] = v81;
    memcpy(v60, v64, 0x120uLL);
    v90[0] = v45;
    v90[1] = v47;
    v91 = v40;
    *v92 = *v113;
    *&v92[3] = *&v113[3];
    v93 = v51;
    v98 = v69;
    v99 = v70;
    v100 = v71;
    v94 = v65;
    v95 = v66;
    v96 = v67;
    v97 = v68;
    sub_BC8C(&v72, &v101, &qword_2CDB8, &qword_1FBC8);
    sub_BC8C(&v81, &v101, &qword_2CDB8, &qword_1FBC8);
    sub_BCF4(v90, &qword_2CDB8, &qword_1FBC8);
    v101 = v53;
    v102 = v63;
    v103 = v62;
    *v104 = *v122;
    *&v104[3] = *&v122[3];
    v105 = v52;
    v110 = v119;
    v111 = v120;
    v112 = v121;
    v106 = v115;
    v107 = v116;
    v108 = v117;
    v109 = v118;
    sub_BCF4(&v101, &qword_2CDB8, &qword_1FBC8);
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel(0);
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_58B4@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1E158();
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27F0(&qword_2CCA0, &qword_1F9F0);
  v9 = __chkstk_darwin(v8);
  v12 = &v24 - v11;
  if (a1)
  {
    if (*&a1[OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel_telephonyClient])
    {
      v25 = a3;
      v26 = v10;
      v24 = &v24;
      __chkstk_darwin(v9);
      sub_1EA48();
      sub_1EA38();
      sub_1E9F8();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_1B8E4(v7);
      *&v27 = sub_1E988();
      *(&v27 + 1) = v13;
      sub_AE7C();
      v14 = sub_1E698();
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v28 = v14;
      v29 = v16;
      v30 = v18 & 1;
      v31 = v20;
      sub_6D4C(a1, &v27);
      sub_27F0(&qword_2CCA8, &qword_1F9F8);
      sub_27F0(&qword_2CCB0, &unk_1FA00);
      sub_BC44(&qword_2CCB8, &qword_2CCA8, &qword_1F9F8, &protocol conformance descriptor for TupleView<A>);
      sub_B4E8();
      sub_1E868();
      v21 = v25;
      (*(v26 + 32))(v25, v12, v8);
      return (*(v26 + 56))(v21, 0, 1, v8);
    }

    else
    {
      v23 = *(v10 + 56);

      return v23(a3, 1, 1, v8);
    }
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel(0);
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_5C6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v38 = a3;
  v5 = sub_27F0(&qword_2CD08, &qword_1FA90);
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = __chkstk_darwin(v5);
  v43 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v42 = v35 - v8;
  v37 = sub_27F0(&qword_2CC90, &qword_1F9C0);
  v9 = *(v37 - 8);
  v10 = __chkstk_darwin(v37);
  v36 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v35 - v12;
  sub_1EA48();
  v35[1] = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppInstallationSettingsViewModel(0);
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
  v14 = sub_1E4F8();
  swift_getKeyPath();
  sub_1E518();

  v41 = v13;
  v15 = sub_1E828();
  v35[0] = v35;
  __chkstk_darwin(v15);
  v35[-2] = a1;
  v35[-1] = a2;
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_1E528();
  if (a1)
  {
    v18 = v16;
    v19 = v17;
    v20 = a1;
    v21 = sub_1E398();

    v44 = v18;
    v45 = v19;
    v46 = v21;
    v47 = a1;
    sub_27F0(&qword_2CD10, &qword_1FAC0);
    sub_27F0(&qword_2CD18, &qword_1FAC8);
    sub_BC44(&qword_2CD20, &qword_2CD10, &qword_1FAC0, &protocol conformance descriptor for HStack<A>);
    sub_B8BC();
    v22 = v42;
    sub_1E498();
    v23 = *(v9 + 16);
    v25 = v36;
    v24 = v37;
    v23(v36, v41, v37);
    v27 = v39;
    v26 = v40;
    v28 = *(v39 + 16);
    v28(v43, v22, v40);
    v29 = v38;
    v23(v38, v25, v24);
    v30 = &v29[*(sub_27F0(&qword_2CD38, &qword_1FAD0) + 48)];
    v31 = v43;
    v28(v30, v43, v26);
    v32 = *(v27 + 8);
    v32(v42, v26);
    v33 = *(v9 + 8);
    v33(v41, v24);
    v32(v31, v26);
    v33(v25, v24);
  }

  else
  {
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

double sub_61C0@<D0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1E5B8();
  v20 = 1;
  sub_6344(a1, &v13);
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v21 = v13;
  v22 = v14;
  v27[2] = v15;
  v27[3] = v16;
  v27[4] = v17;
  v27[5] = v18;
  v27[0] = v13;
  v27[1] = v14;
  sub_BC8C(&v21, &v12, &qword_2CD40, &qword_1FAD8);
  sub_BCF4(v27, &qword_2CD40, &qword_1FAD8);

  *&v19[87] = v26;
  *&v19[71] = v25;
  *&v19[55] = v24;
  *&v19[39] = v23;
  *&v19[23] = v22;
  *&v19[7] = v21;
  v7 = *&v19[32];
  *(a4 + 65) = *&v19[48];
  v8 = *&v19[80];
  *(a4 + 81) = *&v19[64];
  *(a4 + 97) = v8;
  result = *v19;
  v10 = *&v19[16];
  *(a4 + 17) = *v19;
  *(a4 + 33) = v10;
  v11 = v20;
  *a4 = v6;
  *(a4 + 8) = 0;
  *(a4 + 16) = v11;
  *(a4 + 112) = *&v19[95];
  *(a4 + 49) = v7;
  return result;
}

uint64_t sub_6344@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1E158();
  __chkstk_darwin(v5 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EA48();
  v24[1] = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BC10(v7);
  *&v28 = sub_1E988();
  *(&v28 + 1) = v8;
  sub_AE7C();
  v24[0] = sub_1E698();
  v25 = v9;
  v11 = v10;
  v13 = v12;
  sub_65AC(a1, &v28);
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v17 = v32;
  v18 = v31;
  v19 = sub_1E788();
  v11 &= 1u;
  LOBYTE(v28) = v11;
  v27 = 1;
  v26 = v17;
  v20 = v24[0];
  v21 = v25;
  *a3 = v24[0];
  *(a3 + 8) = v21;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v14;
  *(a3 + 64) = v15;
  *(a3 + 72) = v16;
  *(a3 + 80) = v18;
  *(a3 + 81) = v17;
  *(a3 + 88) = v19;
  v22 = v20;
  sub_2838(v20, v21, v11);

  sub_BA48(v14, *(&v14 + 1), v15, v16, v18, v17, sub_B9C8, sub_BA04);

  sub_BA48(v14, *(&v14 + 1), v15, v16, v18, v17, sub_BA60, sub_BA9C);

  sub_2E3C(v22, v25, v11);
}

uint64_t sub_65AC@<X0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  v5 = sub_1E158();
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E318();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EA48();
  v12 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = a1;
    sub_1E3C8();

    v14 = (*(v9 + 88))(v11, v8);
    v46 = v12;
    v47 = a3;
    if (v14 == enum case for CellularSettings.Prompt.always(_:))
    {

      sub_1C2F8(v7);
      *&v51 = sub_1E988();
      *(&v51 + 1) = v15;
      sub_AE7C();
      v16 = sub_1E698();
      v18 = v17;
      *&v48 = v16;
      *(&v48 + 1) = v17;
      v20 = v19 & 1;
      *&v49 = v19 & 1;
      *(&v49 + 1) = v21;
      LOBYTE(v50) = 0;
      sub_2838(v16, v17, v19 & 1);

      sub_1E5F8();
      v48 = v51;
      v49 = v52;
      LOBYTE(v50) = v53;
      HIBYTE(v50) = 1;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    else
    {
      if (v14 != enum case for CellularSettings.Prompt.overLimit(_:))
      {
        v35 = enum case for CellularSettings.Prompt.never(_:);
        v36 = v14;

        if (v36 != v35)
        {
          v48 = 0u;
          v49 = 0u;
          LOBYTE(v50) = 1;
          sub_1E5F8();
          v48 = v51;
          v49 = v52;
          LOBYTE(v50) = v53;
          HIBYTE(v50) = 1;
          sub_27F0(&qword_2CCD0, &unk_20360);
          sub_27F0(&qword_2CCE0, &qword_1FA10);
          sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
          sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
          sub_1E5F8();
          v44 = v52;
          v45 = v51;
          v32 = v53;
          v33 = v54;
          (*(v9 + 8))(v11, v8);

          v31 = v44;
          v30 = v45;
          goto LABEL_10;
        }

        sub_1BF38(v7);
        *&v51 = sub_1E988();
        *(&v51 + 1) = v37;
        sub_AE7C();
        v38 = sub_1E698();
        v40 = v39;
        *&v48 = v38;
        *(&v48 + 1) = v39;
        v42 = v41 & 1;
        *&v49 = v41 & 1;
        *(&v49 + 1) = v43;
        LOBYTE(v50) = 0;
        sub_2838(v38, v39, v41 & 1);

        sub_1E5F8();
        v48 = v51;
        v49 = v52;
        v50 = v53;
        sub_27F0(&qword_2CCD0, &unk_20360);
        sub_27F0(&qword_2CCE0, &qword_1FA10);
        sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
        sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
        sub_1E5F8();
        sub_2E3C(v38, v40, v42);

LABEL_9:

        v30 = v51;
        v31 = v52;
        v32 = v53;
        v33 = v54;
LABEL_10:
        v34 = v47;
        *v47 = v30;
        v34[1] = v31;
        *(v34 + 32) = v32;
        *(v34 + 33) = v33;
        return result;
      }

      v22 = sub_2F0C();
      v24 = v23;

      sub_1BF58(v22, v24, v7);

      *&v51 = sub_1E988();
      *(&v51 + 1) = v25;
      sub_AE7C();
      v16 = sub_1E698();
      v18 = v26;
      v20 = v27 & 1;
      *&v48 = v16;
      *(&v48 + 1) = v26;
      *&v49 = v27 & 1;
      *(&v49 + 1) = v28;
      LOBYTE(v50) = 1;
      sub_2838(v16, v26, v27 & 1);

      sub_1E5F8();
      v48 = v51;
      v49 = v52;
      v50 = v53;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    sub_1E5F8();
    sub_2E3C(v16, v18, v20);

    goto LABEL_9;
  }

  type metadata accessor for AppInstallationSettingsViewModel(0);
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
  result = sub_1E508();
  __break(1u);
  return result;
}

uint64_t sub_6D4C@<X0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  v5 = sub_1E158();
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E318();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EA48();
  v12 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = a1;
    sub_1E3C8();

    v14 = (*(v9 + 88))(v11, v8);
    v43 = v12;
    v44 = a3;
    if (v14 == enum case for CellularSettings.Prompt.always(_:))
    {

      sub_1C62C(v7);
      *&v48 = sub_1E988();
      *(&v48 + 1) = v15;
      sub_AE7C();
      v16 = sub_1E698();
      v18 = v17;
      *&v45 = v16;
      *(&v45 + 1) = v17;
      v20 = v19 & 1;
      *&v46 = v19 & 1;
      *(&v46 + 1) = v21;
      LOBYTE(v47) = 0;
      sub_2838(v16, v17, v19 & 1);

      sub_1E5F8();
      v45 = v48;
      v46 = v49;
      v47 = v50;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    else if (v14 == enum case for CellularSettings.Prompt.overLimit(_:))
    {
      v22 = sub_2F0C();
      v24 = v23;

      sub_1C954(v22, v24, v7);

      *&v48 = sub_1E988();
      *(&v48 + 1) = v25;
      sub_AE7C();
      v16 = sub_1E698();
      v18 = v26;
      v20 = v27 & 1;
      *&v45 = v16;
      *(&v45 + 1) = v26;
      *&v46 = v27 & 1;
      *(&v46 + 1) = v28;
      LOBYTE(v47) = 1;
      sub_2838(v16, v26, v27 & 1);

      sub_1E5F8();
      v45 = v48;
      v46 = v49;
      v47 = v50;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    else
    {
      v29 = enum case for CellularSettings.Prompt.never(_:);
      v30 = v14;

      if (v30 != v29)
      {
        v45 = 0u;
        v46 = 0u;
        LOBYTE(v47) = 1;
        sub_1E5F8();
        v45 = v48;
        v46 = v49;
        LOBYTE(v47) = v50;
        HIBYTE(v47) = 1;
        sub_27F0(&qword_2CCD0, &unk_20360);
        sub_27F0(&qword_2CCE0, &qword_1FA10);
        sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
        sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
        sub_1E5F8();
        v41 = v49;
        v42 = v48;
        v38 = v50;
        v39 = v51;
        (*(v9 + 8))(v11, v8);

        v37 = v41;
        v36 = v42;
        goto LABEL_11;
      }

      sub_1CCF0(v7);
      *&v48 = sub_1E988();
      *(&v48 + 1) = v31;
      sub_AE7C();
      v16 = sub_1E698();
      v18 = v32;
      *&v45 = v16;
      *(&v45 + 1) = v32;
      v20 = v33 & 1;
      *&v46 = v33 & 1;
      *(&v46 + 1) = v34;
      LOBYTE(v47) = 0;
      sub_2838(v16, v32, v33 & 1);

      sub_1E5F8();
      v45 = v48;
      v46 = v49;
      LOBYTE(v47) = v50;
      HIBYTE(v47) = 1;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    sub_1E5F8();
    sub_2E3C(v16, v18, v20);

    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
LABEL_11:
    v40 = v44;
    *v44 = v36;
    v40[1] = v37;
    *(v40 + 32) = v38;
    *(v40 + 33) = v39;
    return result;
  }

  type metadata accessor for AppInstallationSettingsViewModel(0);
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
  result = sub_1E508();
  __break(1u);
  return result;
}

uint64_t sub_74F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppInstallationSettingsViewModel(0);
  sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
  v3 = sub_1E4F8();
  swift_getKeyPath();
  sub_1E518();

  sub_1E828();
}

uint64_t sub_766C@<X0>(void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1E158();
  __chkstk_darwin(v5 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
  sub_1E988();
  sub_AE7C();
  v7 = sub_1E698();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11 & 1;
  *(a3 + 24) = v13;
  return result;
}

uint64_t sub_77A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1E8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1E148();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E958();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1E158();
  __chkstk_darwin(v8 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v9 = sub_286C(v3, qword_2D318);
  (*(v4 + 16))(v6, v9, v3);
  sub_1E1D8();
  sub_1E178();
  v19[1] = sub_1E988();
  v19[2] = v10;
  sub_AE7C();
  v11 = sub_1E698();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_7A98()
{
  sub_77A8(v1);
  sub_27F0(&qword_2CC90, &qword_1F9C0);
  sub_BC44(&qword_2CC98, &qword_2CC90, &qword_1F9C0, &protocol conformance descriptor for Toggle<A>);
  return sub_1E888();
}

uint64_t sub_7B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_27F0(&qword_2CC40, &qword_1F920);
  v14 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(sub_1E258() + 16);

  if (v9)
  {
    __chkstk_darwin(v10);
    *(&v13 - 2) = a1;
    *(&v13 - 1) = a2;
    sub_856C(v15);
    sub_27F0(&qword_2CC48, &qword_1F928);
    sub_B308();
    sub_1E858();
    (*(v14 + 32))(a3, v8, v6);
    return (*(v14 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v12 = *(v14 + 56);

    return v12(a3, 1, 1, v6);
  }
}

uint64_t sub_7D6C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = a1;
    sub_1E3C8();

    swift_getKeyPath();
    sub_27F0(&qword_2CC70, &qword_1F9B0);
    sub_27F0(&qword_2CC78, &qword_1F9B8);
    sub_BC44(&qword_2CC80, &qword_2CC70, &qword_1F9B0, &protocol conformance descriptor for [A]);
    sub_2EC4(&qword_2CC58, &qword_1F930);
    sub_1E4C8();
    sub_BC44(&qword_2CC60, &qword_2CC58, &qword_1F930, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_B488(&qword_2CC68, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1E848();
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel(0);
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_8034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1E4C8();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E288();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ApprovedDeveloperView(0);
  __chkstk_darwin(v20);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27F0(&qword_2CC58, &qword_1F930);
  v22 = *(v11 - 8);
  v23 = v11;
  __chkstk_darwin(v11);
  v13 = v18 - v12;
  sub_1EA48();
  v21 = sub_1EA38();
  sub_1E9F8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v18[1] = v18;
  __chkstk_darwin(isCurrentExecutor);
  v18[-2] = a1;
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v8, a1, v19);
  sub_11AF8(v8, v10);

  sub_B488(&qword_2CC88, type metadata accessor for ApprovedDeveloperView, &unk_20108);
  sub_1E498();
  sub_1E4B8();
  sub_BC44(&qword_2CC60, &qword_2CC58, &qword_1F930, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_B488(&qword_2CC68, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v15 = v23;
  v16 = v26;
  sub_1E6D8();
  (*(v25 + 8))(v5, v16);
  (*(v22 + 8))(v13, v15);
}

uint64_t sub_8488@<X0>(uint64_t a3@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E278();
  sub_AE7C();
  v4 = sub_1E698();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_856C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1E8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1E148();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E958();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1E158();
  __chkstk_darwin(v8 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v9 = sub_286C(v3, qword_2D318);
  (*(v4 + 16))(v6, v9, v3);
  sub_1E1D8();
  sub_1E178();
  v19[1] = sub_1E988();
  v19[2] = v10;
  sub_AE7C();
  v11 = sub_1E698();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_8880@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a2;
  v9 = sub_27F0(&qword_2CB80, &qword_1F820);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = a1;
    sub_1E3C8();

    if (v19)
    {
      v15 = 1;
    }

    else
    {
      __chkstk_darwin(v14);
      v16 = v18;
      *(&v18 - 4) = a1;
      *(&v18 - 3) = v16;
      *(&v18 - 16) = a3 & 1;
      *(&v18 - 1) = a4;
      sub_27F0(&qword_2CB88, &qword_1F870);
      sub_A75C();
      sub_1E878();
      (*(v10 + 32))(a5, v12, v9);
      v15 = 0;
    }

    return (*(v10 + 56))(a5, v15, 1, v9);
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel(0);
    sub_B488(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_8AD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v6 & 1;
  *(v10 + 40) = a4;
  __chkstk_darwin(v10);

  v11 = a1;
  sub_27F0(&qword_2CBB8, &qword_1F888);
  sub_BC44(&qword_2CBC0, &qword_2CBB8, &qword_1F888, &protocol conformance descriptor for HStack<A>);
  sub_1E7E8();
  sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7A8();
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v16;

  result = sub_27F0(&qword_2CB88, &qword_1F870);
  v15 = (a5 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_AE64;
  v15[2] = v13;
  return result;
}

uint64_t sub_8D08(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17[-v9];
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a3 & 1;
  v17[16] = v11;
  v18 = a4;
  v17[15] = 1;
  sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7B8();
  v12 = sub_1EA68();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);

  v13 = a1;
  v14 = sub_1EA38();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = v11;
  *(v15 + 56) = a4;
  sub_F71C(0, 0, v10, &unk_1F8F8, v15);
}

uint64_t sub_8EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 360) = a5;
  *(v7 + 368) = a7;
  *(v7 + 569) = a6;
  *(v7 + 352) = a4;
  v8 = sub_1E8B8();
  *(v7 + 376) = v8;
  *(v7 + 384) = *(v8 - 8);
  *(v7 + 392) = swift_task_alloc();
  v9 = sub_1E8D8();
  *(v7 + 400) = v9;
  *(v7 + 408) = *(v9 - 8);
  *(v7 + 416) = swift_task_alloc();
  v10 = sub_27F0(&qword_2CC00, &qword_1F900);
  *(v7 + 424) = v10;
  *(v7 + 432) = *(v10 - 8);
  *(v7 + 440) = swift_task_alloc();
  v11 = sub_27F0(&qword_2CC08, &qword_1F908);
  *(v7 + 448) = v11;
  *(v7 + 456) = *(v11 - 8);
  *(v7 + 464) = swift_task_alloc();
  v12 = sub_1E1C8();
  *(v7 + 472) = v12;
  *(v7 + 480) = *(v12 - 8);
  *(v7 + 488) = swift_task_alloc();
  sub_1EA48();
  *(v7 + 496) = sub_1EA38();
  v14 = sub_1E9F8();
  *(v7 + 504) = v14;
  *(v7 + 512) = v13;

  return _swift_task_switch(sub_917C, v14, v13);
}

uint64_t sub_917C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[61];
  v5 = v0[58];
  v8 = v0 + 56;
  v6 = v0[56];
  v7 = v8[1];
  v14 = objc_opt_self();
  v9 = objc_allocWithZone(ASDSystemAppMetadata);
  v10 = sub_1E968();
  v11 = [v9 initWithBundleID:v10];
  v1[65] = v11;

  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_9398;
  swift_continuation_init();
  v1[25] = v6;
  v12 = sub_B0E4(v1 + 22);
  v1[66] = sub_27F0(&qword_2CC10, &unk_1F910);
  sub_1EA08();
  (*(v7 + 32))(v12, v5, v6);
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_9F58;
  v1[21] = &unk_293A8;
  [v14 installApp:v11 withCompletionHandler:v3];
  (*(v7 + 8))(v12, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_9398()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 536) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_99D0;
  }

  else
  {
    v5 = sub_94C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_94C8()
{
  v1 = *(v0 + 520);
  (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));

  v2 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 544) = v2;
  if (v2)
  {
    v3 = v2;
    v5 = *(v0 + 432);
    v4 = *(v0 + 440);
    v6 = *(v0 + 424);
    v7 = sub_1E968();
    *(v0 + 552) = v7;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 344;
    *(v0 + 88) = sub_97B0;
    swift_continuation_init();
    *(v0 + 264) = v6;
    v8 = sub_B0E4((v0 + 240));
    sub_B76C(0, &qword_2CC38, BSProcessHandle_ptr);
    sub_1EA08();
    (*(v5 + 32))(v8, v4, v6);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_A04C;
    *(v0 + 232) = &unk_29420;
    [v3 openApplication:v7 withOptions:0 completion:?];
    (*(v5 + 8))(v8, v6);

    return _swift_continuation_await(v0 + 80);
  }

  else
  {

    v9 = *(v0 + 368);
    *(v0 + 320) = *(v0 + 569);
    *(v0 + 328) = v9;
    *(v0 + 568) = 0;
    sub_27F0(&qword_2CBC8, &qword_1F890);
    sub_1E7B8();

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_97B0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 560) = v2;
  v3 = *(v1 + 512);
  v4 = *(v1 + 504);
  if (v2)
  {
    v5 = sub_9C90;
  }

  else
  {
    v5 = sub_98E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_98E0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);

  v3 = *(v0 + 368);
  *(v0 + 320) = *(v0 + 569);
  *(v0 + 328) = v3;
  *(v0 + 568) = 0;
  sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7B8();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_99D0()
{
  v1 = v0[65];

  swift_willThrow();

  v14 = v0[52];
  v16 = v0[51];
  v2 = v0[49];
  v17 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[45];
  v6 = v0[46];
  v7 = *(v0 + 569);
  v8 = v0[44];
  sub_B76C(0, &qword_2CC18, OS_dispatch_queue_ptr);
  v15 = sub_1EA98();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  v0[38] = sub_B248;
  v0[39] = v9;
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_F9DC;
  v0[37] = &unk_293F8;
  v10 = _Block_copy(v0 + 34);

  v11 = v8;
  sub_1E8C8();
  v0[42] = _swiftEmptyArrayStorage;
  sub_B488(&qword_2CC20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_27F0(&qword_2CC28, &unk_1FFB0);
  sub_BC44(&qword_2CC30, &qword_2CC28, &unk_1FFB0, &protocol conformance descriptor for [A]);
  sub_1EAD8();
  sub_1EAA8();
  _Block_release(v10);

  (*(v4 + 8))(v2, v3);
  (*(v16 + 8))(v14, v17);

  v12 = v0[1];

  return v12();
}

uint64_t sub_9C90()
{
  v1 = v0[69];
  v2 = v0[68];

  swift_willThrow();

  v15 = v0[52];
  v17 = v0[51];
  v3 = v0[49];
  v18 = v0[50];
  v4 = v0[47];
  v5 = v0[48];
  v6 = v0[45];
  v7 = v0[46];
  v8 = *(v0 + 569);
  v9 = v0[44];
  sub_B76C(0, &qword_2CC18, OS_dispatch_queue_ptr);
  v16 = sub_1EA98();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v6;
  *(v10 + 32) = v8;
  *(v10 + 40) = v7;
  v0[38] = sub_B248;
  v0[39] = v10;
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_F9DC;
  v0[37] = &unk_293F8;
  v11 = _Block_copy(v0 + 34);

  v12 = v9;
  sub_1E8C8();
  v0[42] = _swiftEmptyArrayStorage;
  sub_B488(&qword_2CC20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_27F0(&qword_2CC28, &unk_1FFB0);
  sub_BC44(&qword_2CC30, &qword_2CC28, &unk_1FFB0, &protocol conformance descriptor for [A]);
  sub_1EAD8();
  sub_1EAA8();
  _Block_release(v11);

  (*(v5 + 8))(v3, v4);
  (*(v17 + 8))(v15, v18);

  v13 = v0[1];

  return v13();
}

void sub_9F58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E1C8();
  __chkstk_darwin(v5 - 8);
  sub_B2BC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    sub_27F0(&qword_2CC08, &qword_1F908);
    sub_1EA18();
  }

  else
  {
    sub_1E1B8();
    sub_27F0(&qword_2CC08, &qword_1F908);
    sub_1EA28();
  }
}

void sub_A060(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  sub_B2BC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    sub_27F0(a4, a5);
    sub_1EA18();
  }

  else if (a2)
  {
    v10 = a2;
    sub_27F0(a4, a5);
    sub_1EA28();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A110@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a5 = sub_1E5B8();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v8 = sub_27F0(&qword_2CBD0, &qword_1F8C8);
  sub_A204(v6 & 1, a4, a5 + *(v8 + 44));
}

uint64_t sub_A204@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v39 = a2;
  v38 = a1;
  v4 = sub_27F0(&qword_2CBD8, &qword_1F8D0);
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v36 = &v35 - v5;
  v6 = sub_27F0(&qword_2CBE0, &qword_1F8D8);
  v7 = __chkstk_darwin(v6 - 8);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = sub_1E1E8();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1E148();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E958();
  __chkstk_darwin(v16 - 8);
  v17 = sub_1E158();
  __chkstk_darwin(v17 - 8);
  sub_1EA48();
  v37 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v18 = sub_286C(v12, qword_2D318);
  (*(v13 + 16))(v15, v18, v12);
  sub_1E1D8();
  sub_1E178();
  v44 = sub_1E988();
  v45 = v19;
  sub_AE7C();
  v20 = sub_1E698();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v44) = v38 & 1;
  v45 = v39;
  sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7A8();
  v27 = 1;
  v29 = v40;
  v28 = v41;
  if (v43 == 1)
  {
    v30 = v36;
    sub_1E458();
    (*(v29 + 32))(v10, v30, v28);
    v27 = 0;
  }

  (*(v29 + 56))(v10, v27, 1, v28);
  v31 = v42;
  sub_BC8C(v10, v42, &qword_2CBE0, &qword_1F8D8);
  *a3 = v20;
  *(a3 + 8) = v22;
  v32 = v24 & 1;
  *(a3 + 16) = v32;
  *(a3 + 24) = v26;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  v33 = sub_27F0(&qword_2CBF0, &unk_1F8E0);
  sub_BC8C(v31, a3 + *(v33 + 64), &qword_2CBE0, &qword_1F8D8);
  sub_2838(v20, v22, v32);

  sub_BCF4(v10, &qword_2CBE0, &qword_1F8D8);
  sub_BCF4(v31, &qword_2CBE0, &qword_1F8D8);
  sub_2E3C(v20, v22, v32);
}

unint64_t sub_A75C()
{
  result = qword_2CB90;
  if (!qword_2CB90)
  {
    sub_2EC4(&qword_2CB88, &qword_1F870);
    sub_BC44(&qword_2CB98, &qword_2CBA0, &qword_1F878, &protocol conformance descriptor for Button<A>);
    sub_BC44(&qword_2CBA8, &qword_2CBB0, &qword_1F880, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CB90);
  }

  return result;
}

unint64_t sub_A864(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_A930(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_B158(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_B1BC(v11);
  return v7;
}

unint64_t sub_A930(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_AA3C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1EB18();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_AA3C(uint64_t a1, unint64_t a2)
{
  v3 = sub_AA88(a1, a2);
  sub_ABB8(&off_28FE8);
  return v3;
}

void *sub_AA88(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_ACA4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1EB18();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E9B8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_ACA4(v10, 0);
        result = sub_1EAE8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_ABB8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_AD18(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_ACA4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_27F0(&qword_2CD00, &qword_1FA88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_AD18(char *result, int64_t a2, char a3, char *a4)
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
    sub_27F0(&qword_2CD00, &qword_1FA88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_AE0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E558();
  *a1 = result & 1;
  return result;
}

unint64_t sub_AE7C()
{
  result = qword_2CBE8;
  if (!qword_2CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CBE8);
  }

  return result;
}

uint64_t sub_AED0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_AF18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_AFF0;

  return sub_8EF8(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_AFF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_B0E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_B158(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_B1BC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_B208()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B2A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_B2BC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_B308()
{
  result = qword_2CC50;
  if (!qword_2CC50)
  {
    sub_2EC4(&qword_2CC48, &qword_1F928);
    sub_2EC4(&qword_2CC58, &qword_1F930);
    sub_1E4C8();
    sub_BC44(&qword_2CC60, &qword_2CC58, &qword_1F930, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_B488(&qword_2CC68, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CC50);
  }

  return result;
}

uint64_t sub_B454@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E268();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_B488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_B4E8()
{
  result = qword_2CCC0;
  if (!qword_2CCC0)
  {
    sub_2EC4(&qword_2CCB0, &unk_1FA00);
    sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
    sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CCC0);
  }

  return result;
}

uint64_t sub_B5B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2EC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B62C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B664()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_B6AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_C338;

  return sub_322C(a1, v4, v5, v7, v6);
}

uint64_t sub_B76C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_B7B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B7F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_C338;

  return sub_D700(a1, v4, v5, v6);
}

unint64_t sub_B8BC()
{
  result = qword_2CD28;
  if (!qword_2CD28)
  {
    sub_2EC4(&qword_2CD18, &qword_1FAC8);
    sub_B974();
    sub_BC44(&qword_2CB70, &qword_2CB78, qword_1F688, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CD28);
  }

  return result;
}

unint64_t sub_B974()
{
  result = qword_2CD30;
  if (!qword_2CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CD30);
  }

  return result;
}

uint64_t sub_B9C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2838(a1, a2, a3 & 1);
}

uint64_t sub_BA04(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_2838(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a5 & 1;
  if (a6)
  {
    return a8(a1, a2, a3, a4, v8);
  }

  else
  {
    return a7(a1, a2, a3, a4, v8);
  }
}

uint64_t sub_BA60(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2E3C(a1, a2, a3 & 1);
}

uint64_t sub_BA9C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_2E3C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_BAF0()
{
  result = qword_2CD68;
  if (!qword_2CD68)
  {
    sub_2EC4(&qword_2CD58, &qword_1FB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CD68);
  }

  return result;
}

uint64_t sub_BC44(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2EC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_BC8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_27F0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_BCF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_27F0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_BDE0()
{
  result = qword_2CDD0;
  if (!qword_2CDD0)
  {
    sub_2EC4(&qword_2CB80, &qword_1F820);
    sub_A75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CDD0);
  }

  return result;
}

unint64_t sub_BEB4()
{
  result = qword_2CDE8;
  if (!qword_2CDE8)
  {
    sub_2EC4(&qword_2CC40, &qword_1F920);
    sub_B308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CDE8);
  }

  return result;
}

unint64_t sub_BF50()
{
  result = qword_2CDF0;
  if (!qword_2CDF0)
  {
    sub_2EC4(&qword_2CDF8, &qword_1FBE0);
    sub_BC44(&qword_2CC98, &qword_2CC90, &qword_1F9C0, &protocol conformance descriptor for Toggle<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CDF0);
  }

  return result;
}

uint64_t sub_C058(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2EC4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_C0D4()
{
  result = qword_2CE10;
  if (!qword_2CE10)
  {
    sub_2EC4(&qword_2CCA0, &qword_1F9F0);
    sub_BC44(&qword_2CCB8, &qword_2CCA8, &qword_1F9F8, &protocol conformance descriptor for TupleView<A>);
    sub_B4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CE10);
  }

  return result;
}

unint64_t sub_C19C()
{
  result = qword_2CE18;
  if (!qword_2CE18)
  {
    sub_2EC4(&qword_2CD70, &qword_1FB40);
    sub_C254();
    sub_BC44(&qword_2CBA8, &qword_2CBB0, &qword_1F880, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CE18);
  }

  return result;
}

unint64_t sub_C254()
{
  result = qword_2CE20;
  if (!qword_2CE20)
  {
    sub_2EC4(&qword_2CD48, &qword_1FAE0);
    sub_BC44(&qword_2CD60, &qword_2CD50, &qword_1FB30, &protocol conformance descriptor for TupleView<A>);
    sub_BAF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CE20);
  }

  return result;
}

uint64_t sub_C43C(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8;
  v9 = sub_1E3D8();
  return a7(v9);
}

void sub_C4D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1E968();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_1E968();
    [v2 setBool:v4 forKey:v3];
  }
}

void sub_C5F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1E968();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_1E968();
    [v2 setBool:v4 forKey:v3];
  }
}

void sub_C710()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1E968();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_1E968();
    [v2 setBool:v4 forKey:v3];
  }
}

uint64_t sub_C82C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();
}

uint64_t sub_C8A4(uint64_t a1)
{
  v3 = sub_1E318();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v6, a1, v3);
  v1;
  sub_1E3D8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  swift_beginAccess();
  sub_1E2F8();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void sub_CA4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1E968();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_1E968();
    [v2 setBool:v4 forKey:v3];
  }
}

uint64_t sub_CB68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  return v1;
}

uint64_t sub_CBF0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  return v3;
}

char *sub_CC5C()
{
  v1 = sub_1E2D8();
  __chkstk_darwin(v1 - 8);
  v68[2] = v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_27F0(&qword_2CEB8, &qword_1FF08);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = v68 - v4;
  v5 = sub_27F0(&qword_2CEC0, &qword_1FF10);
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin(v5);
  v7 = v68 - v6;
  v8 = sub_1E318();
  v77 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v74 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75 = v68 - v11;
  v12 = sub_27F0(&qword_2CEC8, &qword_1FF18);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v68 - v14;
  v16 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__isLowPowerMode;
  v17 = [objc_opt_self() processInfo];
  v18 = [v17 isLowPowerModeEnabled];

  LOBYTE(v79) = v18;
  sub_1E3B8();
  v19 = *(v13 + 32);
  v78 = v12;
  v19(&v0[v16], v15, v12);
  v20 = objc_allocWithZone(NSUserDefaults);
  v21 = sub_1E968();
  v22 = [v20 initWithSuiteName:v21];

  if (v22)
  {
    v23 = sub_1E968();
    v24 = [v22 BOOLForKey:v23];
  }

  else
  {
    v24 = 1;
  }

  v25 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__autoUpdatesEnabled;
  LOBYTE(v79) = v24;
  sub_1E3B8();
  v26 = v78;
  v19(&v0[v25], v15, v78);
  v27 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__autoBackgroundAssetsEnabled;
  LOBYTE(v79) = sub_F570() & 1;
  sub_1E3B8();
  v76 = v19;
  v19(&v0[v27], v15, v26);
  v28 = objc_allocWithZone(NSUserDefaults);
  v29 = sub_1E968();
  v30 = [v28 initWithSuiteName:v29];

  if (v30)
  {
    v31 = sub_1E968();
    v32 = [v30 BOOLForKey:v31];
  }

  else
  {
    v32 = 1;
  }

  v33 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__cellularAutoDownloadsEnabled;
  LOBYTE(v79) = v32;
  sub_1E3B8();
  v76(&v0[v33], v15, v78);
  v34 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__cellularAutoDownloadPrompt;
  v35 = v77;
  v36 = v75;
  (*(v77 + 104))(v75, enum case for CellularSettings.Prompt.overLimit(_:), v8);
  v68[0] = *(v35 + 16);
  v68[1] = v35 + 16;
  (v68[0])(v74, v36, v8);
  sub_1E3B8();
  v37 = *(v35 + 8);
  v77 = v35 + 8;
  v37(v36, v8);
  (*(v69 + 32))(&v0[v34], v7, v70);
  v38 = objc_allocWithZone(NSUserDefaults);
  v39 = sub_1E968();
  v40 = [v38 initWithSuiteName:v39];

  if (v40)
  {
    v41 = sub_1E968();
    v42 = [v40 BOOLForKey:v41];
  }

  else
  {
    v42 = 0;
  }

  v70 = v8;
  v43 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__offloadUnusedAppsEnabled;
  LOBYTE(v79) = v42;
  sub_1E3B8();
  v44 = v78;
  v45 = v76;
  v76(&v0[v43], v15, v78);
  v46 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__approvedDevelopers;
  v79 = sub_1E258();
  sub_27F0(&qword_2CC70, &qword_1F9B0);
  v47 = v71;
  sub_1E3B8();
  (*(v72 + 32))(&v0[v46], v47, v73);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v49 = result;
    v73 = v37;
    v50 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel__isAppStoreInstalled;
    v51 = sub_1E968();
    v52 = [v49 applicationIsInstalled:v51];

    LOBYTE(v79) = v52;
    sub_1E3B8();
    v45(&v0[v50], v15, v44);
    v53 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel_telephonyClient;
    *&v0[OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel_telephonyClient] = 0;
    sub_1E2C8();
    sub_1E308();
    v54 = sub_F1E8();
    v55 = *&v0[v53];
    *&v0[v53] = v54;

    v56 = type metadata accessor for AppInstallationSettingsViewModel(0);
    v80.receiver = v0;
    v80.super_class = v56;
    v57 = objc_msgSendSuper2(&v80, "init");
    v58 = *&v57[OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel_telephonyClient];
    if (v58)
    {
      [v58 setDelegate:v57];
    }

    swift_beginAccess();
    v59 = v75;
    sub_1E2E8();
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    v60 = v70;
    (v68[0])(v74, v59, v70);
    v61 = v57;
    sub_1E3D8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1E3C8();

    swift_beginAccess();
    sub_1E2F8();
    swift_endAccess();
    v73(v59, v60);
    v62 = objc_opt_self();
    v63 = [v62 defaultCenter];
    [v63 addObserver:v61 selector:"lowPowerModeChanged" name:NSProcessInfoPowerStateDidChangeNotification object:0];

    v64 = [v62 defaultCenter];
    [v64 addObserver:v61 selector:"appWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    v65 = [v62 defaultCenter];
    v66 = v61;
    v67 = sub_1E228();
    [v65 addObserver:v66 selector:"appDistributorsOrTrustedDevelopersChanged" name:v67 object:0];

    return v66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_D700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_1E318();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v6 = sub_1E328();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_1EA48();
  v4[16] = sub_1EA38();
  v8 = sub_1E9F8();

  return _swift_task_switch(sub_D85C, v8, v7);
}

uint64_t sub_D85C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[9];
  v12 = v0[10];
  v7 = v0[8];

  v8 = OBJC_IVAR____TtC23AppInstallationSettings32AppInstallationSettingsViewModel_cellularSettings;
  swift_beginAccess();
  (*(v3 + 16))(v1, &v7[v8], v2);
  sub_1E2E8();
  (*(v3 + 8))(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v12 + 16))(v4, v5, v6);
  v9 = v7;
  sub_1E3D8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  swift_beginAccess();
  sub_1E2F8();
  swift_endAccess();
  (*(v12 + 8))(v5, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_DA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1EA48();
  *(v4 + 24) = sub_1EA38();
  v6 = sub_1E9F8();

  return _swift_task_switch(sub_DAF8, v6, v5);
}

uint64_t sub_DAF8()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v3;
  v4 = v1;
  sub_1E3D8();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_DD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1EA48();
  v5[5] = sub_1EA38();
  v7 = sub_1E9F8();

  return _swift_task_switch(sub_DDAC, v7, v6);
}

uint64_t sub_DDAC()
{
  v3 = *(v0 + 24);

  *(swift_task_alloc() + 16) = v3;
  sub_1E8A8();
  sub_1E488();

  v1 = *(v0 + 8);

  return v1();
}

id sub_DE84(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v5 = result;
    v6 = sub_1E968();
    [v5 applicationIsInstalled:v6];

    swift_getKeyPath();
    swift_getKeyPath();
    v7 = a1;
    sub_1E3D8();
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;

    sub_1E3D8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1EA48();
  v5[5] = sub_1EA38();
  v7 = sub_1E9F8();

  return _swift_task_switch(sub_E0E0, v7, v6);
}

uint64_t sub_E0E0()
{
  v3 = *(v0 + 24);

  *(swift_task_alloc() + 16) = v3;
  sub_1E8A8();
  sub_1E488();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E1B8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;

  sub_1E3D8();
}

void sub_E2C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = a1;
  v10 = sub_1E258();
  v11 = sub_1EA68();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_1EA48();
  v12 = v9;
  v13 = sub_1EA38();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = v10;
  sub_F71C(0, 0, v8, a4, v14);
}

id sub_E404()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppInstallationSettingsViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppInstallationSettingsViewModel(uint64_t a1)
{
  result = qword_2CE90;
  if (!qword_2CE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E690(uint64_t a1)
{
  sub_E7E0();
  if (v1 <= 0x3F)
  {
    sub_E830(319);
    if (v2 <= 0x3F)
    {
      sub_E888(319);
      if (v3 <= 0x3F)
      {
        sub_1E328();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_E7E0()
{
  if (!qword_2CEA0)
  {
    v0 = sub_1E3E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2CEA0);
    }
  }
}

void sub_E830(uint64_t a1)
{
  if (!qword_2CEA8)
  {
    sub_1E318();
    v1 = sub_1E3E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2CEA8);
    }
  }
}

void sub_E888(uint64_t a1)
{
  if (!qword_2CEB0)
  {
    sub_2EC4(&qword_2CC70, &qword_1F9B0);
    v1 = sub_1E3E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2CEB0);
    }
  }
}

uint64_t sub_E8F8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppInstallationSettingsViewModel(0);
  result = sub_1E3A8();
  *a2 = result;
  return result;
}

uint64_t sub_E938()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();
}

uint64_t sub_E9B4(uint64_t a1)
{
  v2 = sub_1E318();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_C8A4(v4);
}

uint64_t sub_EAA8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  *a1 = v3;
  return result;
}

uint64_t sub_EB28(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1E3D8();
}

uint64_t sub_EBB4@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  *a3 = v5;
  return result;
}

uint64_t sub_EC6C(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_1E3D8();
}

uint64_t sub_EEF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_C338;

  return sub_E044(a1, v4, v5, v7, v6);
}

uint64_t sub_EFD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_F018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_C338;

  return sub_DD10(a1, v4, v5, v7, v6);
}

uint64_t sub_F0F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_F134(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_AFF0;

  return sub_DA60(a1, v4, v5, v6);
}

void *sub_F1E8()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  wifiCapability = MobileGestalt_get_wifiCapability();

  if (!wifiCapability)
  {
    return 0;
  }

  sub_B76C(0, &qword_2CC18, OS_dispatch_queue_ptr);
  v3 = sub_1EA98();
  v4 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v3];

  v25 = 0;
  v5 = v4;
  v6 = [v4 getSubscriptionInfoWithError:&v25];
  if (v6)
  {
    v7 = v6;
    v8 = v25;
    v9 = [v7 subscriptions];

    if (!v9)
    {
      goto LABEL_29;
    }

    sub_B76C(0, &qword_2CED0, CTXPCServiceSubscriptionContext_ptr);
    v10 = sub_1E9D8();

    if (v10 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1EB38())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = sub_1EB08();
        }

        else
        {
          if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_26;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([v13 slotID] == &dword_0 + 1)
        {

          v17 = sub_1E968();
          v18 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
          v25 = 0;
          v19 = [v5 copyCarrierBundleValue:v14 key:v17 bundleType:v18 error:&v25];

          v20 = v25;
          if (v19)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              LOBYTE(v25) = 2;
              v21 = v20;
              sub_1E9E8();

              if (v25 != 2 && (v25 & 1) == 0)
              {
LABEL_29:

                return 0;
              }
            }

            else
            {
              v23 = v20;
            }
          }

          else
          {
            v22 = v25;
            sub_1E138();

            swift_willThrow();
          }

          return v5;
        }

        ++v12;
        if (v15 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    goto LABEL_29;
  }

  v16 = v25;
  sub_1E138();

  swift_willThrow();

  return 0;
}

uint64_t sub_F570()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1E968();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_9:
    sub_F6B4(&v8);
    return 1;
  }

  v3 = sub_1E968();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_1EAC8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  return 1;
}

uint64_t sub_F6B4(uint64_t a1)
{
  v2 = sub_27F0(&qword_2CCE8, &qword_1FA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_11018(a3, v25 - v10);
  v12 = sub_1EA68();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_11088(v11);
  }

  else
  {
    sub_1EA58();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E9F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E998() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_11088(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_11088(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_F9DC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_FA20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  return v1;
}

uint64_t sub_FA94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_27F0(&qword_2D098, &qword_20048);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = OBJC_IVAR____TtC23AppInstallationSettings26ApprovedDeveloperViewModel__installedApps;
  v23[1] = _swiftEmptyArrayStorage;
  sub_27F0(&unk_2CFB8, &qword_1FF70);
  sub_1E3B8();
  (*(v8 + 32))(v2 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC23AppInstallationSettings26ApprovedDeveloperViewModel_approvedDeveloper;
  v13 = sub_1E288();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a1, v13);
  v15 = sub_1EA68();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_1EA48();

  v16 = sub_1EA38();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v2;
  sub_F71C(0, 0, v6, &unk_20050, v17);

  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 addObserver:v2 selector:"appWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  v20 = [v18 defaultCenter];

  v21 = sub_1E228();
  [v20 addObserver:v2 selector:"distributorsOrDevelopersChanged" name:v21 object:0];

  (*(v14 + 8))(a1, v13);
  return v2;
}

uint64_t sub_FDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_1EA48();
  v4[5] = sub_1EA38();
  v5 = sub_1E9F8();
  v4[6] = v5;
  v4[7] = v6;

  return _swift_task_switch(sub_FE9C, v5, v6);
}

uint64_t sub_FE9C()
{
  sub_1E218();
  sub_1E268();
  v1 = sub_1E208();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    v4 = _swiftEmptyArrayStorage;
    v21 = v0;
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = objc_allocWithZone(LSApplicationRecord);

      v9 = sub_1E968();
      *(v0 + 16) = 0;
      v10 = [v8 initWithBundleIdentifier:v9 allowPlaceholder:0 error:v0 + 16];

      v11 = *(v0 + 16);
      if (v10)
      {
        v12 = v11;
        v13 = [v10 localizedName];
        v14 = sub_1E978();
        v16 = v15;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1158C(0, v4[2] + 1, 1, v4);
        }

        v18 = v4[2];
        v17 = v4[3];
        if (v18 >= v17 >> 1)
        {
          v4 = sub_1158C((v17 > 1), v18 + 1, 1, v4);
        }

        v4[2] = v18 + 1;
        v19 = &v4[4 * v18];
        v19[4] = v14;
        v19[5] = v16;
        v19[6] = v7;
        v19[7] = v6;
        v0 = v21;
      }

      else
      {
        v5 = v11;

        sub_1E138();

        swift_willThrow();
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  *(v0 + 64) = v4;

  return _swift_task_switch(sub_100F4, 0, 0);
}

uint64_t sub_100F4(uint64_t a1)
{
  *(v1 + 72) = sub_1EA38();
  v3 = sub_1E9F8();

  return _swift_task_switch(sub_101B4, v3, v2);
}

uint64_t sub_101B4()
{

  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = v0[8];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  sub_1E3D8();

  v2 = v0[6];
  v3 = v0[7];

  return _swift_task_switch(sub_10308, v2, v3);
}

uint64_t sub_10308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_103A0(uint64_t a1)
{
  v2 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_1EA68();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  v6 = sub_1EA38();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_F71C(0, 0, v4, &unk_20040, v7);
}

uint64_t sub_1053C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1EA38();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_116EC();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1EAF8(66);
    v12._object = 0x8000000000022840;
    v12._countAndFlagsBits = 0xD00000000000003FLL;
    sub_1E9A8(v12);
    v13._countAndFlagsBits = sub_1EB78();
    sub_1E9A8(v13);

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    sub_1E9A8(v14);
    result = sub_1EB28();
    __break(1u);
  }

  return result;
}

uint64_t sub_10750()
{
  v1 = sub_1E8B8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E8D8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10E38();
  v9 = sub_1EA98();
  aBlock[4] = sub_10E84;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_F9DC;
  aBlock[3] = &unk_29598;
  v10 = _Block_copy(aBlock);

  sub_1E8C8();
  v12[1] = _swiftEmptyArrayStorage;
  sub_10EA4();
  sub_27F0(&qword_2CC28, &unk_1FFB0);
  sub_10EFC();
  sub_1EAD8();
  sub_1EAA8();
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_109BC(uint64_t a1)
{
  v2 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_1EA68();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  v6 = sub_1EA38();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_F71C(0, 0, v4, &unk_1FFC8, v7);
}

uint64_t sub_10B8C()
{
  v1 = OBJC_IVAR____TtC23AppInstallationSettings26ApprovedDeveloperViewModel__installedApps;
  v2 = sub_27F0(&qword_2D098, &qword_20048);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23AppInstallationSettings26ApprovedDeveloperViewModel_approvedDeveloper;
  v4 = sub_1E288();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for ApprovedDeveloperViewModel(uint64_t a1)
{
  result = qword_2CFA0;
  if (!qword_2CFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10CC8(uint64_t a1)
{
  sub_10D94(319);
  if (v1 <= 0x3F)
  {
    sub_1E288();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10D94(uint64_t a1)
{
  if (!qword_2CFB0)
  {
    sub_2EC4(&unk_2CFB8, &qword_1FF70);
    v1 = sub_1E3E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2CFB0);
    }
  }
}

uint64_t sub_10DF8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ApprovedDeveloperViewModel(0);
  result = sub_1E3A8();
  *a2 = result;
  return result;
}

unint64_t sub_10E38()
{
  result = qword_2CC18;
  if (!qword_2CC18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2CC18);
  }

  return result;
}

uint64_t sub_10E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10EA4()
{
  result = qword_2CC20;
  if (!qword_2CC20)
  {
    sub_1E8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CC20);
  }

  return result;
}

unint64_t sub_10EFC()
{
  result = qword_2CC30;
  if (!qword_2CC30)
  {
    sub_2EC4(&qword_2CC28, &unk_1FFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CC30);
  }

  return result;
}

uint64_t sub_10F64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_C338;

  return sub_FDCC(a1, v4, v5, v6);
}

uint64_t sub_11018(uint64_t a1, uint64_t a2)
{
  v4 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11088(uint64_t a1)
{
  v2 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_110F0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  *a1 = v3;
  return result;
}

uint64_t sub_11170(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E3D8();
}

uint64_t sub_111EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_112E4;

  return v6(a1);
}

uint64_t sub_112E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_113DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_11414(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_C338;

  return sub_111EC(a1, v4);
}

uint64_t sub_114CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_AFF0;

  return sub_111EC(a1, v4);
}

void *sub_1158C(void *result, int64_t a2, char a3, void *a4)
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
    sub_27F0(&qword_2D088, &qword_20030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_27F0(&qword_2D090, &qword_20038);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_11714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_AFF0;

  return sub_FDCC(a1, v4, v5, v6);
}

uint64_t sub_117C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_11808(char *result, int64_t a2, char a3, char *a4)
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
    sub_27F0(&qword_2D0A0, &qword_201C0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_11914(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_27F0(&qword_2D0A8, &qword_20060);
  v10 = *(sub_1E288() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1E288() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_11AF8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1E288();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  *a2 = swift_getKeyPath();
  sub_27F0(&qword_2D0B0, &qword_200A0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for ApprovedDeveloperView(0);
  v8 = v7[5];
  *&a2[v8] = swift_getKeyPath();
  sub_27F0(&qword_2D0B8, &qword_200D8);
  swift_storeEnumTagMultiPayload();
  v9 = &a2[v7[7]];
  v24 = 0;
  sub_1E798();
  v10 = v26;
  *v9 = v25;
  *(v9 + 1) = v10;
  v11 = &a2[v7[8]];
  v24 = 0;
  sub_1E798();
  v12 = v26;
  *v11 = v25;
  *(v11 + 1) = v12;
  sub_1E378();
  v13 = v7[11];
  v14 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v15 = [objc_opt_self() mainScreen];
  [v15 scale];
  v17 = v16;

  [v14 setScale:v17];
  [v14 setDrawBorder:1];
  *&a2[v13] = v14;
  (*(v5 + 16))(&a2[v7[9]], a1, v4);
  v18 = *(v5 + 32);
  v18(&v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  result = (v18)(v20 + v19, &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v22 = &a2[v7[6]];
  *v22 = sub_16D78;
  *(v22 + 1) = v20;
  v22[16] = 0;
  return result;
}

uint64_t sub_11E10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E588();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27F0(&qword_2D0B0, &qword_200A0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_BC8C(v2, &v14 - v9, &qword_2D0B0, &qword_200A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E478();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1EA88();
    v13 = sub_1E628();
    sub_1E358();

    sub_1E578();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_12010@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E588();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_27F0(&qword_2D0B8, &qword_200D8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ApprovedDeveloperView(0);
  sub_BC8C(v1 + *(v10 + 20), v9, &qword_2D0B8, &qword_200D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E2A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1EA88();
    v13 = sub_1E628();
    sub_1E358();

    sub_1E578();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_12218(uint64_t a1)
{
  v2 = sub_1E288();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  type metadata accessor for ApprovedDeveloperViewModel(0);
  swift_allocObject();
  return sub_FA94(v4);
}

uint64_t sub_122F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_1E158();
  __chkstk_darwin(v3 - 8);
  v47 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27F0(&qword_2D1A8, &qword_20158);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v34 - v7;
  v42 = sub_27F0(&qword_2D1B0, &qword_20160);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = v34 - v9;
  v44 = sub_27F0(&qword_2D1B8, &qword_20168);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v49 = v34 - v10;
  v52 = v1;
  sub_27F0(&qword_2D1C0, &unk_20170);
  v48 = &protocol conformance descriptor for TupleView<A>;
  sub_BC44(&qword_2D1C8, &qword_2D1C0, &unk_20170, &protocol conformance descriptor for TupleView<A>);
  sub_1E658();
  v11 = type metadata accessor for ApprovedDeveloperView(0);
  v12 = *(v11 + 36);
  v41 = v11;
  v40 = v12;
  v53 = sub_1E278();
  v54 = v13;
  v14 = sub_BC44(&qword_2D1D0, &qword_2D1A8, &qword_20158, &protocol conformance descriptor for List<A, B>);
  v35 = sub_AE7C();
  sub_1E728();

  (*(v6 + 8))(v8, v5);
  v15 = sub_1E278();
  sub_1D878(v15, v16);

  v63 = sub_1E988();
  v64 = v17;
  v18 = (v1 + *(v11 + 28));
  v19 = *v18;
  v20 = *(v18 + 1);
  v61 = v19;
  v62 = v20;
  v38 = sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7C8();
  v34[1] = v55;
  v51 = v1;
  v36 = sub_27F0(&qword_2D1D8, &qword_20180);
  v53 = v5;
  v54 = &type metadata for String;
  v55 = v14;
  v21 = v35;
  v56 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_BC44(&qword_2D1E0, &qword_2D1D8, &qword_20180, v48);
  v23 = v42;
  v24 = v39;
  sub_1E738();

  (*(v43 + 8))(v24, v23);
  v25 = sub_1E278();
  sub_1D878(v25, v26);

  v63 = sub_1E988();
  v64 = v27;
  v28 = (v2 + *(v41 + 32));
  v29 = *v28;
  v30 = *(v28 + 1);
  v61 = v29;
  v62 = v30;
  sub_1E7C8();
  LODWORD(v47) = v55;
  v50 = v2;
  sub_27F0(&qword_2D1E8, &qword_20188);
  v53 = v23;
  v54 = &type metadata for String;
  v55 = v36;
  v56 = &type metadata for Text;
  v57 = OpaqueTypeConformance2;
  v58 = v21;
  v59 = v37;
  v60 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  sub_BC44(&qword_2D1F0, &qword_2D1E8, &qword_20188, v48);
  v31 = v44;
  v32 = v49;
  sub_1E738();

  return (*(v45 + 8))(v32, v31);
}

uint64_t sub_12A18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v72 = a2;
  v3 = sub_27F0(&qword_2D218, &qword_201E0);
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v62 = v61 - v4;
  v5 = sub_27F0(&qword_2D220, &qword_201E8);
  v6 = __chkstk_darwin(v5 - 8);
  v75 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = v61 - v8;
  v9 = sub_27F0(&qword_2D228, &qword_201F0);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = __chkstk_darwin(v9);
  v74 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = v61 - v12;
  v13 = sub_1E158();
  __chkstk_darwin(v13 - 8);
  v14 = sub_27F0(&qword_2D230, &qword_201F8);
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = __chkstk_darwin(v14);
  v73 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v61 - v17;
  sub_1EA48();
  v64 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v61[1] = *(type metadata accessor for ApprovedDeveloperView(0) + 36);
  v19 = sub_1E278();
  sub_1D344(v19, v20);

  v77 = sub_1E988();
  v78 = v21;
  v61[0] = sub_AE7C();
  v22 = sub_1E698();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v77 = v22;
  v78 = v24;
  v79 = v26 & 1;
  v80 = v28;
  v29 = sub_1E888();
  __chkstk_darwin(v29);
  v61[-2] = a1;
  sub_27F0(&qword_2D200, &qword_20198);
  sub_BC44(&qword_2D238, &qword_2D200, &qword_20198, &protocol conformance descriptor for Button<A>);
  sub_1E878();
  type metadata accessor for ApprovedDeveloperViewModel(0);
  sub_18570(&qword_2D150, type metadata accessor for ApprovedDeveloperViewModel, &unk_1FF78);
  sub_1E438();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  v30 = *(v77 + 16);

  if (v30)
  {
    __chkstk_darwin(v31);
    v61[-2] = a1;
    sub_1EA38();
    sub_1E9F8();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v32 = sub_1E278();
    sub_1D5DC(v32, v33);

    v77 = sub_1E988();
    v78 = v34;
    v35 = sub_1E698();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v77 = v35;
    v78 = v37;
    v79 = v39 & 1;
    v80 = v41;
    sub_27F0(&qword_2D240, &qword_20248);
    sub_183C8();
    v42 = v62;
    sub_1E858();
    v43 = v67;
    v44 = v68;
    v45 = v42;
    v46 = v69;
    (*(v68 + 32))(v67, v45, v69);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v43 = v67;
    v44 = v68;
    v46 = v69;
  }

  (*(v44 + 56))(v43, v47, 1, v46);
  v48 = v65;
  v49 = v66;
  v50 = *(v65 + 16);
  v51 = v73;
  v63 = v18;
  v50(v73, v18, v66);
  v52 = v70;
  v53 = v71;
  v69 = *(v70 + 16);
  v69(v74, v76, v71);
  sub_BC8C(v43, v75, &qword_2D220, &qword_201E8);
  v54 = v72;
  v50(v72, v51, v49);
  v55 = sub_27F0(&qword_2D260, &qword_20258);
  v56 = v74;
  v69(&v54[*(v55 + 48)], v74, v53);
  v57 = v75;
  sub_BC8C(v75, &v54[*(v55 + 64)], &qword_2D220, &qword_201E8);
  sub_18478(v43);
  v58 = *(v52 + 8);
  v58(v76, v53);
  v59 = *(v48 + 8);
  v59(v63, v49);
  sub_18478(v57);
  v58(v56, v53);
  v59(v73, v49);
}

uint64_t sub_132B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_13348(uint64_t a1)
{
  v2 = type metadata accessor for ApprovedDeveloperView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_17450(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_174BC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1E7E8();
}

uint64_t sub_134DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ApprovedDeveloperView(0);
  type metadata accessor for ApprovedDeveloperViewModel(0);
  sub_18570(&qword_2D150, type metadata accessor for ApprovedDeveloperViewModel, &unk_1FF78);
  sub_1E438();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  sub_27F0(&qword_2CBC8, &qword_1F890);
  sub_1E7B8();
}

uint64_t sub_136A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1E8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1E148();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E958();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1E158();
  __chkstk_darwin(v8 - 8);
  sub_1EA48();
  v24[1] = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v9 = sub_286C(v3, qword_2D318);
  (*(v4 + 16))(v6, v9, v3);
  sub_1E1D8();
  sub_1E178();
  v25 = sub_1E988();
  v26 = v10;
  sub_AE7C();
  v11 = sub_1E698();
  v13 = v12;
  v15 = v14;
  v25 = sub_1E758();
  v16 = sub_1E668();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_2E3C(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_139F8(uint64_t a1)
{
  v2 = type metadata accessor for ApprovedDeveloperView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ApprovedDeveloperViewModel(0);
  sub_18570(&qword_2D150, type metadata accessor for ApprovedDeveloperViewModel, &unk_1FF78);
  sub_1E438();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E3C8();

  swift_getKeyPath();
  sub_17450(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_174BC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_27F0(&unk_2CFB8, &qword_1FF70);
  sub_27F0(&qword_2D258, &qword_20250);
  sub_BC44(&qword_2D268, &unk_2CFB8, &qword_1FF70, &protocol conformance descriptor for [A]);
  sub_BC44(&qword_2D250, &qword_2D258, &qword_20250, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_1E848();
}

uint64_t sub_13D00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a3;
  v12 = sub_1E348();
  __chkstk_darwin(v12);
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v11[1] = v11;
  __chkstk_darwin(isCurrentExecutor);
  v11[-6] = v5;
  v11[-5] = v6;
  v11[-4] = v7;
  v11[-3] = v8;
  v11[-2] = a2;
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E338();

  sub_27F0(&qword_2D270, &qword_20288);
  sub_BC44(&qword_2D278, &qword_2D270, &qword_20288, &protocol conformance descriptor for HStack<A>);
  sub_18570(&qword_2D280, &type metadata accessor for ApplicationSettingsView, &protocol conformance descriptor for ApplicationSettingsView);
  sub_1E498();
}

uint64_t sub_13F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a6 = sub_1E5B8();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v10 = sub_27F0(&qword_2D288, &qword_20290);
  sub_14064(a1, a2, a5, (a6 + *(v10 + 44)));
}

uint64_t sub_14064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v39 = a5;
  v41 = sub_27F0(&qword_2D290, &qword_20298);
  v8 = *(v41 - 8);
  v9 = __chkstk_darwin(v41);
  v40 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v36[-v11];
  sub_1EA48();
  v38 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = objc_allocWithZone(ISIcon);
  v14 = sub_1E968();
  [v13 initWithBundleIdentifier:v14];

  v15 = *(a4 + *(type metadata accessor for ApprovedDeveloperView(0) + 44));
  sub_1E2B8();
  v42 = a1;
  v43 = a2;
  sub_AE7C();

  v16 = sub_1E698();
  v18 = v17;
  v20 = v19;
  v21 = [objc_opt_self() labelColor];
  v42 = sub_1E748();
  v22 = sub_1E668();
  v24 = v23;
  v37 = v25;
  v27 = v26;
  sub_2E3C(v16, v18, v20 & 1);

  v28 = *(v8 + 16);
  v30 = v40;
  v29 = v41;
  v28(v40, v12, v41);
  v31 = v39;
  v28(v39, v30, v29);
  v32 = &v31[*(sub_27F0(&qword_2D298, &unk_202A0) + 48)];
  *v32 = v22;
  *(v32 + 1) = v24;
  v33 = v37;
  LOBYTE(v16) = v37 & 1;
  v32[16] = v37 & 1;
  *(v32 + 3) = v27;
  sub_2838(v22, v24, v33 & 1);
  v34 = *(v8 + 8);

  v34(v12, v29);
  sub_2E3C(v22, v24, v16);

  v34(v30, v29);
}

uint64_t sub_143B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a1;
  v60 = a2;
  v2 = sub_27F0(&qword_2D1F8, &qword_20190);
  __chkstk_darwin(v2 - 8);
  v59 = v48 - v3;
  v4 = type metadata accessor for ApprovedDeveloperView(0);
  v52 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v63 = v5;
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1E8();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1E148();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E958();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1E158();
  __chkstk_darwin(v13 - 8);
  v50 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_27F0(&qword_2D200, &qword_20198);
  v53 = *(v51 - 8);
  v15 = __chkstk_darwin(v51);
  v58 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v57 = v48 - v18;
  v19 = __chkstk_darwin(v17);
  v56 = v48 - v20;
  v21 = __chkstk_darwin(v19);
  v54 = v48 - v22;
  v23 = __chkstk_darwin(v21);
  v64 = v48 - v24;
  __chkstk_darwin(v23);
  v65 = v48 - v25;
  sub_1EA48();
  v55 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v26 = sub_286C(v8, qword_2D318);
  v27 = *(v9 + 16);
  v48[1] = v9 + 16;
  v61 = v27;
  v27(v11, v26, v8);
  sub_1E1D8();
  sub_1E178();
  v66 = sub_1E988();
  v67 = v28;
  sub_17450(v62, v6);
  v49 = v8;
  v29 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v30 = swift_allocObject();
  sub_174BC(v6, v30 + v29);
  v52 = sub_AE7C();
  sub_1E808();
  sub_1E8F8();
  v61(v11, v26, v8);
  sub_1E1D8();
  sub_1E178();
  v66 = sub_1E988();
  v67 = v31;
  sub_17450(v62, v6);
  v32 = swift_allocObject();
  sub_174BC(v6, v32 + v29);
  v33 = v64;
  sub_1E808();
  sub_1E8F8();
  v61(v11, v26, v49);
  sub_1E1D8();
  sub_1E178();
  v66 = sub_1E988();
  v67 = v34;
  v35 = v59;
  sub_1E3F8();
  v36 = sub_1E408();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = v54;
  sub_1E7F8();
  v38 = v53;
  v39 = *(v53 + 16);
  v40 = v56;
  v41 = v51;
  v39(v56, v65, v51);
  v42 = v57;
  v39(v57, v33, v41);
  v43 = v58;
  v39(v58, v37, v41);
  v44 = v60;
  v39(v60, v40, v41);
  v45 = sub_27F0(&qword_2D210, &qword_201C8);
  v39(&v44[*(v45 + 48)], v42, v41);
  v39(&v44[*(v45 + 64)], v43, v41);
  v46 = *(v38 + 8);
  v46(v37, v41);
  v46(v64, v41);
  v46(v65, v41);
  v46(v43, v41);
  v46(v42, v41);
  v46(v40, v41);
}

uint64_t sub_14C64(uint64_t a1)
{
  v2 = type metadata accessor for ApprovedDeveloperView(0);
  v17[0] = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  v5 = v17 - v4;
  v6 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  sub_1EA48();
  v17[1] = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E268();
  sub_1E248();

  v9 = sub_1E268();
  v11 = v10;
  v12 = sub_1EA68();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_17450(a1, v5);
  v13 = sub_1EA38();
  v14 = (*(v17[0] + 80) + 49) & ~*(v17[0] + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = v9;
  *(v15 + 40) = v11;
  *(v15 + 48) = 1;
  sub_174BC(v5, v15 + v14);
  sub_F71C(0, 0, v8, &unk_201D0, v15);
}

uint64_t sub_15094@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1E8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1E148();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E958();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1E158();
  __chkstk_darwin(v8 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v9 = sub_286C(v3, qword_2D318);
  (*(v4 + 16))(v6, v9, v3);
  sub_1E1D8();
  sub_1E178();
  v19[1] = sub_1E988();
  v19[2] = v10;
  sub_AE7C();
  v11 = sub_1E698();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_15384@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a1;
  v52 = a2;
  v2 = sub_27F0(&qword_2D1F8, &qword_20190);
  __chkstk_darwin(v2 - 8);
  v51 = &v39 - v3;
  v4 = type metadata accessor for ApprovedDeveloperView(0);
  v43 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v42 = v5;
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1E8();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1E148();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E958();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1E158();
  __chkstk_darwin(v13 - 8);
  v14 = sub_27F0(&qword_2D200, &qword_20198);
  v46 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v50 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v49 = &v39 - v18;
  v19 = __chkstk_darwin(v17);
  v47 = &v39 - v20;
  __chkstk_darwin(v19);
  v45 = &v39 - v21;
  sub_1EA48();
  v48 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v22 = sub_286C(v8, qword_2D318);
  v40 = *(v9 + 16);
  v41 = v22;
  v40(v11, v22, v8);
  sub_1E1D8();
  sub_1E178();
  v53 = sub_1E988();
  v54 = v23;
  sub_17450(v44, v6);
  v24 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v25 = swift_allocObject();
  sub_174BC(v6, v25 + v24);
  sub_AE7C();
  v26 = v45;
  sub_1E808();
  sub_1E8F8();
  v40(v11, v41, v8);
  sub_1E1D8();
  sub_1E178();
  v53 = sub_1E988();
  v54 = v27;
  v28 = v51;
  sub_1E3F8();
  v29 = sub_1E408();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  v30 = v47;
  sub_1E7F8();
  v31 = v46;
  v32 = *(v46 + 16);
  v33 = v49;
  v32(v49, v26, v14);
  v34 = v50;
  v32(v50, v30, v14);
  v35 = v52;
  v32(v52, v33, v14);
  v36 = sub_27F0(&qword_2D208, &unk_201A0);
  v32(&v35[*(v36 + 48)], v34, v14);
  v37 = *(v31 + 8);
  v37(v30, v14);
  v37(v26, v14);
  v37(v34, v14);
  v37(v33, v14);
}

uint64_t sub_15A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a3;
  v21 = a4;
  v5 = type metadata accessor for ApprovedDeveloperView(0);
  v20[0] = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v9 = sub_27F0(&qword_2CBF8, &qword_1FED0);
  __chkstk_darwin(v9 - 8);
  v11 = v20 - v10;
  sub_1EA48();
  v22 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E268();
  sub_1E248();

  v12 = sub_1E268();
  v14 = v13;
  v15 = sub_1EA68();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_17450(a1, v8);
  v16 = sub_1EA38();
  v17 = (*(v20[0] + 80) + 49) & ~*(v20[0] + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = &protocol witness table for MainActor;
  *(v18 + 32) = v12;
  *(v18 + 40) = v14;
  *(v18 + 48) = 0;
  sub_174BC(v8, v18 + v17);
  sub_F71C(0, 0, v11, v21, v18);
}

uint64_t sub_15E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_15F2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E1E8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1E148();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E958();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1E158();
  __chkstk_darwin(v8 - 8);
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E8F8();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v9 = sub_286C(v3, qword_2D318);
  (*(v4 + 16))(v6, v9, v3);
  sub_1E1D8();
  sub_1E178();
  v19[1] = sub_1E988();
  v19[2] = v10;
  sub_AE7C();
  v11 = sub_1E698();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_1621C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 32) = a5;
  *(v7 + 40) = a7;
  *(v7 + 216) = a6;
  *(v7 + 24) = a4;
  v8 = sub_1E478();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  v9 = sub_1E2A8();
  *(v7 + 72) = v9;
  *(v7 + 80) = *(v9 - 8);
  *(v7 + 88) = swift_task_alloc();
  v10 = sub_1E288();
  *(v7 + 96) = v10;
  *(v7 + 104) = *(v10 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = sub_1EA48();
  *(v7 + 128) = sub_1EA38();
  v12 = sub_1E9F8();
  *(v7 + 136) = v12;
  *(v7 + 144) = v11;

  return _swift_task_switch(sub_163D4, v12, v11);
}

uint64_t sub_163D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  *(v0 + 16) = sub_1E238();

  v3 = sub_179A0((v0 + 16), v1, v2);

  v4 = *(v0 + 16);
  v5 = v4[2];
  if (v3 > v5)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v3 < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (__OFADD__(v5, v3 - v5))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    v3 = sub_11808(0, *(v3 + 16) + 1, 1, v3);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v3 > v4[3] >> 1)
  {
    if (v5 <= v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = v5;
    }

    v4 = sub_11914(isUniquelyReferenced_nonNull_native, v7, 1, v4);
    *(v0 + 16) = v4;
  }

  *(v0 + 152) = v4;
  sub_17DD8(v3, v5, 0);
  *(v0 + 160) = v4[2];
  v8 = sub_1E238();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v0 + 104);
    sub_176B0(0, v9, 0);
    v3 = _swiftEmptyArrayStorage;
    v11 = *(v10 + 16);
    v10 += 16;
    v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v41 = *(v10 + 56);
    v42 = v11;
    v13 = (v10 - 8);
    do
    {
      v42(*(v0 + 112), v12, *(v0 + 96));
      sub_1EA38();
      sub_1E9F8();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v14 = *(v0 + 112);
      v15 = *(v0 + 96);
      v16 = sub_1E268();
      v18 = v17;
      (*v13)(v14, v15);

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_176B0((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
      v12 += v41;
      --v9;
    }

    while (v9);
  }

  else
  {

    v3 = _swiftEmptyArrayStorage;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_20:
  v22 = *(v3 + 16);
  *(v0 + 168) = v22;
  v23 = *(v3 + 24);
  v24 = v22 + 1;
  if (v22 >= v23 >> 1)
  {
    v3 = sub_11808((v23 > 1), v22 + 1, 1, v3);
  }

  *(v0 + 176) = v3;
  v26 = *(v0 + 24);
  v25 = *(v0 + 32);
  *(v3 + 16) = v24;
  v27 = v3 + 16 * v22;
  *(v27 + 32) = v26;
  *(v27 + 40) = v25;
  *(v0 + 217) = 0;
  *(v0 + 184) = 0;
  v28 = *(v0 + 176);
  if (*(v28 + 16))
  {
    v29 = 0;
    while (1)
    {
      v30 = *(v0 + 216);
      v31 = v28 + 16 * v29;
      v24 = *(v31 + 32);
      v3 = *(v31 + 40);
      *(v0 + 192) = v3;
      if ((v30 & 1) == 0)
      {
        break;
      }

      if (v24 != *(v0 + 24) || v3 != *(v0 + 32))
      {
        if ((sub_1EB48() & 1) == 0)
        {
          break;
        }

        v29 = *(v0 + 184);
      }

      if (v29 == *(v0 + 168))
      {
        v34 = *(v0 + 217);
        v35 = *(v0 + 160);

        if ((v34 & 1) != 0 || v35)
        {
          v36 = (v0 + 64);
          sub_11E10(*(v0 + 64));
          sub_1E468();
          v37 = 48;
          v38 = 56;
        }

        else
        {
          v36 = (v0 + 88);
          sub_12010(*(v0 + 88));
          sub_1E298();
          v37 = 72;
          v38 = 80;
        }

        (*(*(v0 + v38) + 8))(*v36, *(v0 + v37));

        v39 = *(v0 + 8);

        return v39();
      }

      *(v0 + 184) = ++v29;
      v28 = *(v0 + 176);
      if (v29 >= *(v28 + 16))
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_33:
    __break(1u);
  }

  sub_1E218();

  v33 = swift_task_alloc();
  *(v0 + 200) = v33;
  *v33 = v0;
  v33[1] = sub_168B8;

  return static AppLibrary.associatedApps(developerID:)(v24, v3);
}

uint64_t sub_168B8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return _swift_task_switch(sub_16A04, v4, v3);
}

uint64_t sub_16A04()
{
  v1 = *(*(v0 + 208) + 16);

  if (!v1)
  {
    goto LABEL_13;
  }

  v4 = *(v0 + 184);
  if (v4 == *(v0 + 168))
  {
  }

  else
  {
    *(v0 + 217) = 1;
    do
    {
      v8 = v4 + 1;
      *(v0 + 184) = v8;
      v9 = *(v0 + 176);
      if (v8 >= *(v9 + 16))
      {
        __break(1u);
        return static AppLibrary.associatedApps(developerID:)(v2, v3);
      }

      v10 = *(v0 + 216);
      v11 = v9 + 16 * v8;
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);
      *(v0 + 192) = v12;
      if ((v10 & 1) == 0 || (v13 == *(v0 + 24) ? (v14 = v12 == *(v0 + 32)) : (v14 = 0), !v14 && (v2 = sub_1EB48(), (v2 & 1) == 0)))
      {
        sub_1E218();

        v19 = swift_task_alloc();
        *(v0 + 200) = v19;
        *v19 = v0;
        v19[1] = sub_168B8;
        v2 = v13;
        v3 = v12;

        return static AppLibrary.associatedApps(developerID:)(v2, v3);
      }

LABEL_13:
      v4 = *(v0 + 184);
    }

    while (v4 != *(v0 + 168));
    v15 = *(v0 + 217);
    v16 = *(v0 + 160);

    if ((v15 & 1) == 0 && !v16)
    {
      v5 = (v0 + 88);
      sub_12010(*(v0 + 88));
      sub_1E298();
      v6 = 72;
      v7 = 80;
      goto LABEL_17;
    }
  }

  v5 = (v0 + 64);
  sub_11E10(*(v0 + 64));
  sub_1E468();
  v6 = 48;
  v7 = 56;
LABEL_17:
  (*(*(v0 + v7) + 8))(*v5, *(v0 + v6));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t type metadata accessor for ApprovedDeveloperView(uint64_t a1)
{
  result = qword_2D128;
  if (!qword_2D128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_16CF0()
{
  v1 = sub_1E288();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_16D78()
{
  v1 = *(sub_1E288() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_12218(v2);
}

uint64_t sub_16DEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_27F0(&qword_2D0C0, &qword_200E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_27F0(&qword_2D0C8, &qword_200E8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1E288();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v15 = sub_1E388();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[10];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[11]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_16FB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_27F0(&qword_2D0C0, &qword_200E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_27F0(&qword_2D0C8, &qword_200E8);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1E288();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[9];
      }

      else
      {
        result = sub_1E388();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[10];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_17164(uint64_t a1)
{
  sub_17298(319, &qword_2D138, &type metadata accessor for DismissAction);
  if (v1 <= 0x3F)
  {
    sub_17298(319, &qword_2D140, &type metadata accessor for ClearSettingsNavigationPathAction);
    if (v2 <= 0x3F)
    {
      sub_172EC(319);
      if (v3 <= 0x3F)
      {
        sub_17380();
        if (v4 <= 0x3F)
        {
          sub_1E288();
          if (v5 <= 0x3F)
          {
            sub_1E388();
            if (v6 <= 0x3F)
            {
              sub_173D0();
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

void sub_17298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E428();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_172EC(uint64_t a1)
{
  if (!qword_2D148)
  {
    type metadata accessor for ApprovedDeveloperViewModel(255);
    sub_18570(&qword_2D150, type metadata accessor for ApprovedDeveloperViewModel, &unk_1FF78);
    v1 = sub_1E448();
    if (!v2)
    {
      atomic_store(v1, &qword_2D148);
    }
  }
}

void sub_17380()
{
  if (!qword_2D158)
  {
    v0 = sub_1E7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2D158);
    }
  }
}

unint64_t sub_173D0()
{
  result = qword_2D160;
  if (!qword_2D160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2D160);
  }

  return result;
}

uint64_t sub_17450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApprovedDeveloperView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_174BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApprovedDeveloperView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_17544(uint64_t a1)
{
  v2 = type metadata accessor for ApprovedDeveloperView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_175A4(uint64_t a1)
{
  v4 = *(type metadata accessor for ApprovedDeveloperView(0) - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_C338;

  return sub_1621C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

char *sub_176B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_176D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_176D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_27F0(&qword_2D0A0, &qword_201C0);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_177F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v6 = *(sub_1E288() - 8);
  v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v6 + 72);
  sub_1EA48();
  v8 = 0;
  while (1)
  {
    sub_1EA38();
    sub_1E9F8();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (sub_1E268() == a2 && v9 == a3)
    {
      break;
    }

    v10 = sub_1EB48();

    if (v10)
    {
      return v8;
    }

    ++v8;
    v7 += v12;
    if (v13 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_179A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E288();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - v12;
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = *a1;
  v17 = v58;
  result = sub_177F0(*a1, a2, a3);
  if (!v17)
  {
    v20 = v16;
    v58 = v15;
    v55 = a2;
    v56 = a3;
    v47 = 0;
    if (v19)
    {
      return *(v16 + 16);
    }

    v45 = v10;
    v46 = v13;
    v44 = a1;
    v49 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v20;
      v24 = (v20 + 16);
      v23 = *(v20 + 16);
      v25 = v58;
      if (v21 == v23)
      {
        return v49;
      }

      v50 = v7;
      v51 = (v7 + 8);
      v43 = (v7 + 40);
      v48 = v7 + 16;
      while (v21 < v23)
      {
        v52 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v26 = *(v7 + 72);
        v27 = *(v7 + 16);
        v57 = v26 * v21;
        v53 = v27;
        v54 = v22 + v52;
        v27(v25, v22 + v52 + v26 * v21, v6);
        sub_1EA48();
        sub_1EA38();
        sub_1E9F8();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v25 = v58;
        if (sub_1E268() == v55 && v28 == v56)
        {

          result = (*v51)(v25, v6);
          v7 = v50;
        }

        else
        {
          v29 = v22;
          v30 = sub_1EB48();

          result = (*v51)(v25, v6);
          if (v30)
          {
            v7 = v50;
            v25 = v58;
            v22 = v29;
          }

          else
          {
            v31 = v49;
            if (v21 == v49)
            {
              v7 = v50;
            }

            else
            {
              if ((v49 & 0x8000000000000000) != 0)
              {
                goto LABEL_29;
              }

              v32 = *v24;
              if (v49 >= *v24)
              {
                goto LABEL_30;
              }

              v33 = v29;
              v34 = v26 * v49;
              v36 = v53;
              v35 = v54;
              v37 = v46;
              result = (v53)(v46, v54 + v34, v6);
              if (v21 >= v32)
              {
                goto LABEL_31;
              }

              v38 = v35 + v57;
              v39 = v45;
              v36(v45, v38, v6);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_177DC(v33);
              }

              v7 = v50;
              v29 = v33;
              v40 = v33 + v52;
              v41 = *v43;
              result = (*v43)(&v40[v34], v39, v6);
              if (v21 >= v29[2])
              {
                goto LABEL_32;
              }

              result = v41(&v40[v57], v37, v6);
              *v44 = v29;
              v31 = v49;
            }

            v25 = v58;
            v22 = v29;
            v49 = v31 + 1;
          }
        }

        ++v21;
        v24 = v22 + 2;
        v23 = v22[2];
        if (v21 == v23)
        {
          return v49;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_17DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1E288();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_17FDC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ApprovedDeveloperView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_18050(uint64_t a1)
{
  v4 = *(type metadata accessor for ApprovedDeveloperView(0) - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_AFF0;

  return sub_1621C(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1815C()
{
  v1 = type metadata accessor for ApprovedDeveloperView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  sub_27F0(&qword_2D0B0, &qword_200A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E478();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_27F0(&qword_2D0B8, &qword_200D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E2A8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_174B4(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v9 = v1[9];
  v10 = sub_1E288();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[10];
  v12 = sub_1E388();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_183C8()
{
  result = qword_2D248;
  if (!qword_2D248)
  {
    sub_2EC4(&qword_2D240, &qword_20248);
    sub_BC44(&qword_2D250, &qword_2D258, &qword_20250, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D248);
  }

  return result;
}

uint64_t sub_18478(uint64_t a1)
{
  v2 = sub_27F0(&qword_2D220, &qword_201E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_184E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ApprovedDeveloperView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_13D00(a1, v6, a2);
}

uint64_t sub_18570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_185B8()
{
  v1 = type metadata accessor for ApprovedDeveloperView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_27F0(&qword_2D0B0, &qword_200A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E478();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_27F0(&qword_2D0B8, &qword_200D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E2A8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_174B4(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v9 = v1[9];
  v10 = sub_1E288();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[10];
  v12 = sub_1E388();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_18814()
{
  sub_2EC4(&qword_2D1B8, &qword_20168);
  sub_2EC4(&qword_2D1E8, &qword_20188);
  sub_2EC4(&qword_2D1B0, &qword_20160);
  sub_2EC4(&qword_2D1D8, &qword_20180);
  sub_2EC4(&qword_2D1A8, &qword_20158);
  sub_BC44(&qword_2D1D0, &qword_2D1A8, &qword_20158, &protocol conformance descriptor for List<A, B>);
  sub_AE7C();
  swift_getOpaqueTypeConformance2();
  sub_BC44(&qword_2D1E0, &qword_2D1D8, &qword_20180, &protocol conformance descriptor for TupleView<A>);
  swift_getOpaqueTypeConformance2();
  sub_BC44(&qword_2D1F0, &qword_2D1E8, &qword_20188, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18A40(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1EA48();
  sub_1EA38();
  sub_1E9F8();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_19940(a1, v6);
  sub_27F0(&qword_2D2D8, &qword_20370);
  sub_27F0(&qword_2CCB0, &unk_1FA00);
  sub_2EC4(&qword_2D2B8, &qword_20348);
  sub_2EC4(&qword_2D2C0, &unk_20350);
  sub_1E5A8();
  sub_BC44(&qword_2D2C8, &qword_2D2C0, &unk_20350, &protocol conformance descriptor for Picker<A, B, C>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_B4E8();
  sub_1E888();
}

uint64_t sub_18C50@<X0>(uint64_t a3@<X8>)
{
  v33 = a3;
  v3 = sub_1E5A8();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27F0(&qword_2D2E0, &qword_203C0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v25 = sub_27F0(&qword_2D2C0, &unk_20350);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v24 - v11;
  v13 = sub_27F0(&qword_2D2B8, &qword_20348);
  v28 = *(v13 - 8);
  v29 = v13;
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  sub_1EA48();
  v26 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppInstallationSettingsViewModel(0);
  sub_1A498(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
  v16 = sub_1E4F8();
  swift_getKeyPath();
  sub_1E518();

  v24 = &v24;
  __chkstk_darwin(v17);
  sub_1A428(v10, v8);
  sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E318();
  sub_27F0(&qword_2D2E8, &qword_203C8);
  sub_1A498(&qword_2D2F0, &type metadata accessor for CellularSettings.Prompt, &protocol conformance descriptor for CellularSettings.Prompt);
  sub_BC44(&qword_2D2F8, &qword_2D2E8, &qword_203C8, &protocol conformance descriptor for TupleView<A>);
  sub_1E818();
  sub_1A4E0(v10);
  v18 = v30;
  sub_1E598();
  v19 = sub_BC44(&qword_2D2C8, &qword_2D2C0, &unk_20350, &protocol conformance descriptor for Picker<A, B, C>);
  v20 = v25;
  v21 = v32;
  sub_1E6E8();
  (*(v31 + 8))(v18, v21);
  (*(v27 + 8))(v12, v20);
  v34 = v20;
  v35 = v21;
  v36 = v19;
  v37 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1E6F8();
  (*(v28 + 8))(v15, v22);
}

uint64_t sub_191E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v78[1] = a2;
  v85 = a1;
  v92 = a3;
  v3 = sub_1E318();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E158();
  v8 = __chkstk_darwin(v7 - 8);
  v84 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v78 - v10;
  v83 = sub_27F0(&qword_2D300, &qword_203D0);
  v88 = *(v83 - 8);
  v12 = __chkstk_darwin(v83);
  v91 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v90 = v78 - v15;
  v16 = __chkstk_darwin(v14);
  v89 = v78 - v17;
  v18 = __chkstk_darwin(v16);
  v87 = v78 - v19;
  v20 = __chkstk_darwin(v18);
  v80 = v78 - v21;
  v22 = __chkstk_darwin(v20);
  v99 = v78 - v23;
  __chkstk_darwin(v22);
  v98 = v78 - v24;
  sub_1EA48();
  v86 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BF38(v11);
  v100 = sub_1E988();
  v101 = v25;
  v82 = sub_AE7C();
  v26 = sub_1E698();
  v79 = v11;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *(v4 + 104);
  v97 = v4 + 104;
  v81 = v33;
  v33(v6, enum case for CellularSettings.Prompt.never(_:), v3);
  v94 = sub_27F0(&qword_2C9F8, &qword_1F318);
  v34 = v6;
  v35 = v3;
  v36 = v98;
  v37 = &v98[*(v94 + 36)];
  v38 = v34;
  v39 = v35;
  v95 = *(v4 + 32);
  v96 = v4 + 32;
  v95(v37);
  v93 = sub_27F0(&qword_2CA00, &unk_1F320);
  v37[*(v93 + 36)] = 1;
  *v36 = v26;
  *(v36 + 1) = v28;
  v36[16] = v30 & 1;
  *(v36 + 3) = v32;
  if (v85)
  {
    v40 = v85;
    v41 = sub_2F0C();
    v43 = v42;

    sub_1BF58(v41, v43, v84);

    v100 = sub_1E988();
    v101 = v44;
    v45 = sub_1E698();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v39;
    v53 = v39;
    v54 = v81;
    v81(v38, enum case for CellularSettings.Prompt.overLimit(_:), v53);
    v55 = v54;
    v56 = v80;
    v57 = &v80[*(v94 + 36)];
    (v95)(v57, v38, v52);
    v57[*(v93 + 36)] = 1;
    *v56 = v45;
    *(v56 + 1) = v47;
    v56[16] = v49 & 1;
    *(v56 + 3) = v51;
    v58 = v88;
    v59 = v56;
    v60 = v83;
    (*(v88 + 32))(v99, v59, v83);
    sub_1C2F8(v79);
    v100 = sub_1E988();
    v101 = v61;
    v62 = sub_1E698();
    v64 = v63;
    LOBYTE(v47) = v65;
    v67 = v66;
    v55(v38, enum case for CellularSettings.Prompt.always(_:), v52);
    v68 = v87;
    v69 = &v87[*(v94 + 36)];
    (v95)(v69, v38, v52);
    v69[*(v93 + 36)] = 1;
    *v68 = v62;
    *(v68 + 1) = v64;
    v68[16] = v47 & 1;
    *(v68 + 3) = v67;
    v70 = *(v58 + 16);
    v71 = v89;
    v70(v89, v98, v60);
    v72 = v90;
    v70(v90, v99, v60);
    v73 = v91;
    v70(v91, v68, v60);
    v74 = v92;
    v70(v92, v71, v60);
    v75 = sub_27F0(&qword_2D308, &qword_203D8);
    v70(&v74[*(v75 + 48)], v72, v60);
    v70(&v74[*(v75 + 64)], v73, v60);
    v76 = *(v58 + 8);
    v76(v68, v60);
    v76(v99, v60);
    v76(v98, v60);
    v76(v73, v60);
    v76(v72, v60);
    v76(v71, v60);
  }

  else
  {
    type metadata accessor for AppInstallationSettingsViewModel(0);
    sub_1A498(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
    result = sub_1E508();
    __break(1u);
  }

  return result;
}

uint64_t sub_19940@<X0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  v5 = sub_1E158();
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E318();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EA48();
  v12 = sub_1EA38();
  sub_1E9F8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = a1;
    sub_1E3C8();

    v14 = (*(v9 + 88))(v11, v8);
    v43 = v12;
    v44 = a3;
    if (v14 == enum case for CellularSettings.Prompt.always(_:))
    {

      sub_1C62C(v7);
      *&v48 = sub_1E988();
      *(&v48 + 1) = v15;
      sub_AE7C();
      v16 = sub_1E698();
      v18 = v17;
      *&v45 = v16;
      *(&v45 + 1) = v17;
      v20 = v19 & 1;
      *&v46 = v19 & 1;
      *(&v46 + 1) = v21;
      LOBYTE(v47) = 0;
      sub_2838(v16, v17, v19 & 1);

      sub_1E5F8();
      v45 = v48;
      v46 = v49;
      v47 = v50;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    else if (v14 == enum case for CellularSettings.Prompt.overLimit(_:))
    {
      v22 = sub_2F0C();
      v24 = v23;

      sub_1C954(v22, v24, v7);

      *&v48 = sub_1E988();
      *(&v48 + 1) = v25;
      sub_AE7C();
      v16 = sub_1E698();
      v18 = v26;
      v20 = v27 & 1;
      *&v45 = v16;
      *(&v45 + 1) = v26;
      *&v46 = v27 & 1;
      *(&v46 + 1) = v28;
      LOBYTE(v47) = 1;
      sub_2838(v16, v26, v27 & 1);

      sub_1E5F8();
      v45 = v48;
      v46 = v49;
      v47 = v50;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    else
    {
      v29 = enum case for CellularSettings.Prompt.never(_:);
      v30 = v14;

      if (v30 != v29)
      {
        v45 = 0u;
        v46 = 0u;
        LOBYTE(v47) = 1;
        sub_1E5F8();
        v45 = v48;
        v46 = v49;
        LOBYTE(v47) = v50;
        HIBYTE(v47) = 1;
        sub_27F0(&qword_2CCD0, &unk_20360);
        sub_27F0(&qword_2CCE0, &qword_1FA10);
        sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
        sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
        sub_1E5F8();
        v41 = v49;
        v42 = v48;
        v38 = v50;
        v39 = v51;
        (*(v9 + 8))(v11, v8);

        v37 = v41;
        v36 = v42;
        goto LABEL_11;
      }

      sub_1CCF0(v7);
      *&v48 = sub_1E988();
      *(&v48 + 1) = v31;
      sub_AE7C();
      v16 = sub_1E698();
      v18 = v32;
      *&v45 = v16;
      *(&v45 + 1) = v32;
      v20 = v33 & 1;
      *&v46 = v33 & 1;
      *(&v46 + 1) = v34;
      LOBYTE(v47) = 0;
      sub_2838(v16, v32, v33 & 1);

      sub_1E5F8();
      v45 = v48;
      v46 = v49;
      LOBYTE(v47) = v50;
      HIBYTE(v47) = 1;
      sub_27F0(&qword_2CCD0, &unk_20360);
      sub_27F0(&qword_2CCE0, &qword_1FA10);
      sub_B5B4(&qword_2CCC8, &qword_2CCD0, &unk_20360);
      sub_B5B4(&qword_2CCD8, &qword_2CCE0, &qword_1FA10);
    }

    sub_1E5F8();
    sub_2E3C(v16, v18, v20);

    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
LABEL_11:
    v40 = v44;
    *v44 = v36;
    v40[1] = v37;
    *(v40 + 32) = v38;
    *(v40 + 33) = v39;
    return result;
  }

  type metadata accessor for AppInstallationSettingsViewModel(0);
  sub_1A498(&qword_2CB48, type metadata accessor for AppInstallationSettingsViewModel, &unk_1FC58);
  result = sub_1E508();
  __break(1u);
  return result;
}

uint64_t sub_1A0C0()
{
  v1 = sub_1E158();
  __chkstk_darwin(v1 - 8);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_27F0(&qword_2D2A0, &qword_20338);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  v11 = *v0;
  sub_27F0(&qword_2D2A8, &qword_20340);
  sub_1A2AC();
  sub_1E658();
  sub_1BC10(v3);
  v12 = sub_1E988();
  v13 = v8;
  sub_BC44(&qword_2D2D0, &qword_2D2A0, &qword_20338, &protocol conformance descriptor for List<A, B>);
  sub_AE7C();
  sub_1E728();
  (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A2AC()
{
  result = qword_2D2B0;
  if (!qword_2D2B0)
  {
    sub_2EC4(&qword_2D2A8, &qword_20340);
    sub_2EC4(&qword_2D2B8, &qword_20348);
    sub_2EC4(&qword_2D2C0, &unk_20350);
    sub_1E5A8();
    sub_BC44(&qword_2D2C8, &qword_2D2C0, &unk_20350, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_B4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D2B0);
  }

  return result;
}

uint64_t sub_1A428(uint64_t a1, uint64_t a2)
{
  v4 = sub_27F0(&qword_2D2E0, &qword_203C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4E0(uint64_t a1)
{
  v2 = sub_27F0(&qword_2D2E0, &qword_203C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A548()
{
  sub_2EC4(&qword_2D2A0, &qword_20338);
  sub_BC44(&qword_2D2D0, &qword_2D2A0, &qword_20338, &protocol conformance descriptor for List<A, B>);
  sub_AE7C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A5F4@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1A91C@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1AC44@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1AF6C@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1B294@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1B5BC@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1B8E4@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1BC10@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1BF58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  v20 = a3;
  v3 = sub_1E1E8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E148();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E958();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1E938();
  __chkstk_darwin(v16 - 8);
  sub_1E928();
  v21._countAndFlagsBits = 0x58585F5245444E55;
  v21._object = 0xED00005F424D5F58;
  sub_1E918(v21);
  sub_1E908(v19);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1E918(v22);
  sub_1E948();
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v17 = sub_1E1A8();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_1E198();
  (*(v12 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v11);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1C314@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a2;
  v18[2] = a3;
  v3 = sub_1E1E8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E148();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E958();
  __chkstk_darwin(v15 - 8);
  sub_1E8F8();
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v16 = sub_1E1A8();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_1E198();
  (*(v12 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v11);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1C62C@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1C954@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  v20 = a3;
  v3 = sub_1E1E8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1E188();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E148();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E958();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1E938();
  __chkstk_darwin(v16 - 8);
  sub_1E928();
  v21._object = 0x8000000000022AD0;
  v21._countAndFlagsBits = 0xD000000000000019;
  sub_1E918(v21);
  sub_1E908(v19);
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1E918(v22);
  sub_1E948();
  (*(v8 + 104))(v10, enum case for URL.DirectoryHint.isDirectory(_:), v7);
  v17 = sub_1E1A8();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  sub_1E198();
  (*(v12 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v11);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1CCF0@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1D01C@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_1E1E8();
  __chkstk_darwin(v1 - 8);
  v2 = sub_27F0(&qword_2D310, &unk_203E0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = sub_1E188();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E148();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E958();
  __chkstk_darwin(v13 - 8);
  sub_1E8F8();
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  v14 = sub_1E1A8();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_1E198();
  (*(v10 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v9);
  sub_1E1D8();
  return sub_1E178();
}

uint64_t sub_1D344(uint64_t a1, void *a2)
{
  v4 = sub_1E1E8();
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1E148();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1E958();
  __chkstk_darwin(v11 - 8);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1E938();
  __chkstk_darwin(v14 - 8);
  sub_1E928();
  v18._object = 0x8000000000022D00;
  v18._countAndFlagsBits = 0xD000000000000023;
  sub_1E918(v18);
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_1E908(v19);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_1E918(v20);
  sub_1E948();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v15 = sub_286C(v7, qword_2D318);
  (*(v8 + 16))(v10, v15, v7);
  sub_1E1D8();
  return sub_1E168("approved.developers.with.web.header%@", 37, 2, v13, 0x617A696C61636F4CLL, 0xEB00000000656C62, v6, v10, 0, 0, 256);
}

uint64_t sub_1D5DC(uint64_t a1, void *a2)
{
  v4 = sub_1E1E8();
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1E148();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1E958();
  __chkstk_darwin(v11 - 8);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1E938();
  __chkstk_darwin(v14 - 8);
  sub_1E928();
  v18._object = 0x8000000000022CB0;
  v18._countAndFlagsBits = 0x1000000000000017;
  sub_1E918(v18);
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_1E908(v19);
  v20._countAndFlagsBits = 10322146;
  v20._object = 0xA300000000000000;
  sub_1E918(v20);
  sub_1E948();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v15 = sub_286C(v7, qword_2D318);
  (*(v8 + 16))(v10, v15, v7);
  sub_1E1D8();
  return sub_1E168("installed.apps%@", 16, 2, v13, 0x617A696C61636F4CLL, 0xEB00000000656C62, v6, v10, 0, 0, 256);
}

uint64_t sub_1D878(uint64_t a1, void *a2)
{
  v4 = sub_1E1E8();
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1E148();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1E958();
  __chkstk_darwin(v11 - 8);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1E938();
  __chkstk_darwin(v14 - 8);
  sub_1E928();
  v18._countAndFlagsBits = 0xE22065766F6D6552;
  v18._object = 0xAA00000000009C80;
  sub_1E918(v18);
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  sub_1E908(v19);
  v20._countAndFlagsBits = 1067286754;
  v20._object = 0xA400000000000000;
  sub_1E918(v20);
  sub_1E948();
  if (qword_2C9F0 != -1)
  {
    swift_once();
  }

  v15 = sub_286C(v7, qword_2D318);
  (*(v8 + 16))(v10, v15, v7);
  sub_1E1D8();
  return sub_1E168("remove.developer.title%@", 24, 2, v13, 0x617A696C61636F4CLL, 0xEB00000000656C62, v6, v10, 0, 0, 256);
}

uint64_t sub_1DB38()
{
  v0 = sub_1E148();
  sub_1DBD4(v0, qword_2D318);
  v1 = sub_286C(v0, qword_2D318);
  *v1 = type metadata accessor for ResourceBundleClass();
  v2 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t *sub_1DBD4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1DC40(int a1, int a2, int a3, int a4)
{
  if (qword_2DB28 == -1)
  {
    if (qword_2DB30)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1E108();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2DB30)
    {
      return _availability_version_check();
    }
  }

  if (qword_2DB20 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1E120();
    a3 = v10;
    a4 = v9;
    v8 = dword_2DB10 < v11;
    if (dword_2DB10 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2DB14 > a3)
      {
        return 1;
      }

      if (dword_2DB14 >= a3)
      {
        return dword_2DB18 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_2DB10 < a2;
  if (dword_2DB10 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1DDD4(uint64_t result)
{
  v1 = qword_2DB30;
  if (qword_2DB30)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_2DB30 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_2DB10, &dword_2DB14, &dword_2DB18);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}