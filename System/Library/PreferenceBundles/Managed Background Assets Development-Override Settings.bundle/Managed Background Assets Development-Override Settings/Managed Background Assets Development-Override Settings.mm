void sub_1270()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_2EB8();
  __chkstk_darwin(v3 - 8);
  v4 = sub_3018();
  __chkstk_darwin(v4 - 8);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidLoad");
  sub_3008();
  sub_2EA8();
  sub_3048();
  v5 = sub_3028();

  [v1 setTitle:v5];

  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = sub_3028();
  [v6 initWithSuiteName:v7];

  v23 = sub_2ED8();
  v8 = objc_allocWithZone(sub_18C0(&qword_8188, &unk_3560));
  v9 = sub_2F18();
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v1 view];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;

  [v11 setFrame:{0.0, 0.0, v15, v17}];
  v18 = [v9 view];
  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v18;
  [v18 setAutoresizingMask:18];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  v22 = [v9 view];

  if (v22)
  {
    [v21 addSubview:v22];

    [v1 addChildViewController:v9];
    [v9 didMoveToParentViewController:v1];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_1864()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_18C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1934(uint64_t a1, uint64_t a2)
{
  sub_3088();
  sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2F08();
  sub_2F58();

  sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2F08();
  sub_2F58();

  sub_18C0(&qword_81D8, &qword_3630);
  sub_2A6C(&qword_81A8, &qword_3610);
  sub_2A6C(&qword_81B0, &qword_3618);
  sub_2A6C(&qword_81B8, &qword_3620);
  sub_2A6C(&qword_81C0, &qword_3628);
  sub_2AB4(&qword_81C8, &qword_81C0, &qword_3628, &protocol conformance descriptor for TextField<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_2FE8();
}

uint64_t sub_1CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v72 = a2;
  v73 = sub_2EF8();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18C0(&qword_81E0, &qword_3638);
  __chkstk_darwin(v3 - 8);
  v69 = v45 - v4;
  v5 = sub_2E28();
  __chkstk_darwin(v5 - 8);
  v68 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E88();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2E68();
  v12 = __chkstk_darwin(v11 - 8);
  v60 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v58 = v45 - v15;
  v16 = __chkstk_darwin(v14);
  v54 = v45 - v17;
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v56 = sub_2E98();
  __chkstk_darwin(v56);
  v57 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18C0(&qword_81E8, &qword_3640);
  __chkstk_darwin(v22 - 8);
  v53 = sub_18C0(&qword_81C0, &qword_3628);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v49 = v45 - v23;
  v59 = sub_18C0(&qword_81B8, &qword_3620);
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v50 = v45 - v24;
  v65 = sub_18C0(&qword_81B0, &qword_3618);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v51 = v45 - v25;
  v66 = sub_18C0(&qword_81A8, &qword_3610);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v52 = v45 - v26;
  sub_3088();
  v61 = sub_3078();
  sub_3068();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v48 = sub_2F08();
  v47 = v27;
  v45[3] = v28;
  v46 = v29;
  sub_18C0(&qword_81F0, &qword_3648);
  sub_2EC8();
  (*(v8 + 104))(v10, enum case for URL.FormatStyle.Component.port(_:), v7);
  sub_2B04(&off_4410);
  sub_2C6C(&unk_4430);
  sub_2E58();

  (*(v8 + 8))(v10, v7);
  sub_2E38();
  sub_2E48();
  sub_2E38();
  sub_2E38();
  sub_2E18();
  sub_2E38();
  sub_2E38();
  sub_2E78();
  sub_2F08();
  sub_2F58();
  sub_2CC0();
  v30 = v49;
  sub_2FF8();
  v31 = sub_2AB4(&qword_81C8, &qword_81C0, &qword_3628, &protocol conformance descriptor for TextField<A>);
  v32 = v50;
  v33 = v53;
  sub_2FC8();
  (*(v55 + 8))(v30, v33);
  v34 = v69;
  sub_2F28();
  v35 = sub_2F38();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v74 = v33;
  v75 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v51;
  v38 = v59;
  sub_2FD8();
  sub_2D18(v34);
  (*(v62 + 8))(v32, v38);
  v74 = v38;
  v75 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v52;
  v41 = v65;
  sub_2FA8();
  (*(v63 + 8))(v37, v41);
  v42 = v70;
  sub_2EE8();
  v74 = v41;
  v75 = v39;
  swift_getOpaqueTypeConformance2();
  v43 = v66;
  sub_2F98();
  (*(v71 + 8))(v42, v73);
  (*(v64 + 8))(v40, v43);
}

uint64_t sub_2740()
{
  v0 = sub_18C0(&qword_8190, &qword_3600);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_18C0(&qword_8198, &qword_3608);
  sub_28A8();
  sub_2F48();
  sub_2AB4(&qword_81D0, &qword_8190, &qword_3600, &protocol conformance descriptor for List<A, B>);
  sub_2F68();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_28A8()
{
  result = qword_81A0;
  if (!qword_81A0)
  {
    sub_2A6C(&qword_8198, &qword_3608);
    sub_2A6C(&qword_81A8, &qword_3610);
    sub_2A6C(&qword_81B0, &qword_3618);
    sub_2A6C(&qword_81B8, &qword_3620);
    sub_2A6C(&qword_81C0, &qword_3628);
    sub_2AB4(&qword_81C8, &qword_81C0, &qword_3628, &protocol conformance descriptor for TextField<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81A0);
  }

  return result;
}

uint64_t sub_2A6C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2AB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2A6C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_2B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_18C0(&unk_8200, &qword_3650);
    v3 = sub_3098();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_30B8();

      sub_3058();
      result = sub_30C8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_30A8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_2CC0()
{
  result = qword_81F8;
  if (!qword_81F8)
  {
    sub_2E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81F8);
  }

  return result;
}

uint64_t sub_2D18(uint64_t a1)
{
  v2 = sub_18C0(&qword_81E0, &qword_3638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2D80()
{
  sub_2A6C(&qword_8190, &qword_3600);
  sub_2AB4(&qword_81D0, &qword_8190, &qword_3600, &protocol conformance descriptor for List<A, B>);
  return swift_getOpaqueTypeConformance2();
}