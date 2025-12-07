uint64_t sub_1000A4F58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  __chkstk_darwin(v3 - 8);
  v68 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v55 - v6;
  v74 = sub_1000C0BC8();
  v7 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0AF8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v55 - v14;
  __chkstk_darwin(v15);
  v60 = &v55 - v16;
  __chkstk_darwin(v17);
  v66 = &v55 - v18;
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  v22 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v70 = *(v22 - 8);
  __chkstk_darwin(v22);
  v61 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
  v69 = *(v1 + *(result + 24));
  v65 = *(v69 + 16);
  if (v65)
  {
    v55 = v22;
    v56 = a1;
    v25 = 0;
    v71 = (v7 + 8);
    v72 = (v10 + 8);
    v57 = (v10 + 48);
    v58 = (v10 + 32);
    v59 = v12;
    v26 = v61;
    v27 = v69;
    v64 = v21;
    while (v25 < *(v27 + 16))
    {
      sub_1000A5D58(v27 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v25, v26);
      sub_1000C0AB8();
      v38 = *(v26 + 8);
      if (!v38)
      {
        (*v72)(v21, v9);
LABEL_20:
        a1 = v56;
        sub_100085E30(v26, v56);
        v54 = 0;
LABEL_22:
        v22 = v55;
        return (*(v70 + 56))(a1, v54, 1, v22);
      }

      v39 = v38;
      v40 = [v39 isAllDay];
      v75 = v39;
      if (v40)
      {
        v28 = v73;
        sub_1000C0B98();
        v29 = [v39 date];
        v30 = v60;
        sub_1000C0AA8();

        v31 = v9;
        v32 = v66;
        sub_1000C0B78();
        v33 = *v72;
        (*v72)(v30, v31);
        v63 = v25;
        v34 = *v71;
        v35 = v74;
        (*v71)(v28, v74);
        sub_1000C0B98();
        sub_1000C0B78();
        v36 = v28;
        v21 = v64;
        v34(v36, v35);
        v25 = v63;
        LOBYTE(v29) = sub_1000C0A98();

        v33(v30, v31);
        v37 = v32;
        v9 = v31;
        v26 = v61;
        v33(v37, v9);
        v33(v21, v9);
        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v41 = [v39 date];
        v42 = v66;
        sub_1000C0AA8();

        v43 = v73;
        sub_1000C0B98();
        v44 = v62;
        sub_1000C0A38();
        v45 = v44;
        v46 = *v71;
        (*v71)(v43, v74);
        v47 = *v72;
        (*v72)(v42, v9);
        v48 = *v57;
        if ((*v57)(v45, 1, v9) == 1)
        {
          sub_1000C09F8();
          if (v48(v45, 1, v9) != 1)
          {
            sub_1000A5DBC(v62);
          }
        }

        else
        {
          (*v58)(v67, v45, v9);
        }

        v49 = v73;
        sub_1000C0B98();
        sub_1000C0A38();
        v50 = v68;
        v46(v49, v74);
        if (v48(v50, 1, v9) == 1)
        {
          v51 = v59;
          sub_1000C09F8();
          if (v48(v50, 1, v9) != 1)
          {
            sub_1000A5DBC(v50);
          }
        }

        else
        {
          v51 = v59;
          (*v58)(v59, v50, v9);
        }

        v52 = v67;
        v53 = sub_1000C0A98();

        v47(v51, v9);
        v47(v52, v9);
        v47(v21, v9);
        if ((v53 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      ++v25;
      result = sub_100028560(v26);
      v27 = v69;
      if (v65 == v25)
      {
        v54 = 1;
        a1 = v56;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v54 = 1;
    return (*(v70 + 56))(a1, v54, 1, v22);
  }

  return result;
}

uint64_t sub_1000A568C()
{
  v1 = v0;
  v2 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  __chkstk_darwin(v2 - 8);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v60 - v6;
  v75 = sub_1000C0BC8();
  v7 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0AF8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v60 - v13;
  __chkstk_darwin(v14);
  v64 = &v60 - v15;
  __chkstk_darwin(v16);
  v70 = &v60 - v17;
  __chkstk_darwin(v18);
  v71 = &v60 - v19;
  v20 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20 - 8);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v1 + *(type metadata accessor for TTRTodayComplicationWidgetViewModel(0) + 24));
  v25 = *(v24 + 16);
  if (!v25)
  {
    return 0;
  }

  v26 = v24 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v76 = *(v21 + 72);
  v72 = 0;
  v73 = (v7 + 8);
  v27 = (v10 + 8);
  v60 = (v10 + 32);
  v61 = (v10 + 48);
  v28 = v71;
  v67 = (v10 + 8);
  v68 = v23;
  v62 = v4;
  while (1)
  {
    sub_1000A5D58(v26, v23);
    sub_1000C0AB8();
    v29 = *(v23 + 1);
    if (v29)
    {
      break;
    }

    (*v27)(v28, v9);
    sub_100028560(v23);
LABEL_4:
    v26 += v76;
    if (!--v25)
    {
      return v72;
    }
  }

  v30 = v29;
  v31 = [v30 isAllDay];
  v77 = v30;
  v78 = v27 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v31)
  {
    v32 = v74;
    sub_1000C0B98();
    v33 = [v30 date];
    v34 = v64;
    sub_1000C0AA8();

    v35 = v9;
    v36 = v70;
    sub_1000C0B78();
    v66 = v25;
    v37 = *v27;
    (*v27)(v34, v35);
    v38 = *v73;
    v39 = v75;
    (*v73)(v32, v75);
    sub_1000C0B98();
    sub_1000C0B78();
    v40 = v32;
    v4 = v62;
    v41 = v39;
    v27 = v67;
    v38(v40, v41);
    v42 = v37;
    v25 = v66;
    v43 = sub_1000C0A98();

    v42(v34, v35);
    v44 = v36;
    v9 = v35;
    v28 = v71;
  }

  else
  {
    v45 = [v30 date];
    v46 = v70;
    sub_1000C0AA8();

    v47 = v74;
    sub_1000C0B98();
    v48 = v65;
    sub_1000C0A38();
    v49 = v48;
    v50 = v27;
    v51 = *v73;
    (*v73)(v47, v75);
    v66 = *v50;
    (v66)(v46, v9);
    v52 = *v61;
    if ((*v61)(v49, 1, v9) == 1)
    {
      sub_1000C09F8();
      v53 = v9;
      if (v52(v49, 1, v9) != 1)
      {
        sub_1000A5DBC(v49);
      }
    }

    else
    {
      (*v60)(v69, v49, v9);
      v53 = v9;
    }

    v54 = v74;
    sub_1000C0B98();
    sub_1000C0A38();
    v51(v54, v75);
    v9 = v53;
    if (v52(v4, 1, v53) == 1)
    {
      v55 = v63;
      sub_1000C09F8();
      v56 = v52(v4, 1, v9);
      v27 = v67;
      if (v56 != 1)
      {
        sub_1000A5DBC(v4);
      }
    }

    else
    {
      v55 = v63;
      (*v60)(v63, v4, v9);
      v27 = v67;
    }

    v57 = v69;
    v43 = sub_1000C0A98();

    v42 = v66;
    (v66)(v55, v9);
    v44 = v57;
  }

  v42(v44, v9);
  v42(v28, v9);
  v23 = v68;
  sub_100028560(v68);
  if ((v43 & 1) == 0)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v72++, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
  return 0;
}

uint64_t sub_1000A5D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A5DBC(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EE300, &unk_1000C6370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A5E28()
{
  result = qword_1000F0660;
  if (!qword_1000F0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0660);
  }

  return result;
}

uint64_t sub_1000A5EC0()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C0888();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C0728();
  sub_10000D9B0(v10, qword_1000FAB90);
  sub_10000D978(v10, qword_1000FAB90);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C0718();
}

uint64_t sub_1000A619C@<X0>(uint64_t a1@<X8>)
{
  v22[3] = a1;
  v1 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  __chkstk_darwin(v1 - 8);
  v23 = v22 - v2;
  v3 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v3 - 8);
  v22[0] = v22 - v4;
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22[2] = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v22[1] = v22 - v15;
  sub_1000C2618();
  sub_1000C0B58();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  v18 = v22[0];
  sub_1000C08A8();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = v23;
  sub_1000C05F8();
  v20 = sub_1000C0608();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
  *(swift_allocObject() + 16) = xmmword_1000C3590;
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_1000A66D0()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FABA8);
  sub_10000D978(v0, qword_1000FABA8);
  return sub_1000C0878();
}

uint64_t sub_1000A6734()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v14[0] = sub_1000C0888();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  sub_10000D9B0(v10, qword_1000FABC0);
  v11 = sub_10000D978(v10, qword_1000FABC0);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  sub_1000C0588();
  v12 = sub_1000C0578();
  return (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
}

uint64_t sub_1000A6A64()
{
  result = swift_getKeyPath();
  qword_1000FABD8 = result;
  return result;
}

uint64_t sub_1000A6A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100004D04(&qword_1000ED110, &unk_1000C8A60);
  v3[10] = swift_task_alloc();
  sub_100004D04(&qword_1000ED118, &qword_1000C4400);
  v3[11] = swift_task_alloc();
  sub_100004D04(&qword_1000F0798, &qword_1000C99D8);
  v3[12] = swift_task_alloc();
  v4 = sub_1000C0318();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100004D04(&qword_1000F07A0, &qword_1000C99E0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000A6C6C, 0, 0);
}

uint64_t sub_1000A6C6C()
{
  sub_1000C0368();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_1000A7E54();
  *v1 = v0;
  v1[1] = sub_1000A6D3C;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_1000AA4F4, 0, &type metadata for IncludeDueTodayEntity, v2);
}

uint64_t sub_1000A6D3C()
{

  return _swift_task_switch(sub_1000A6E38, 0, 0);
}

uint64_t sub_1000A6E38()
{
  sub_1000C0368();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_1000C0368();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000EC9F8 != -1)
  {
    swift_once();
  }

  v2 = qword_1000FABD8;
  *(v0 + 176) = qword_1000FABD8;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_100008478(&qword_1000F0788, &qword_1000F0790, &qword_1000C99C8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_1000A6F98;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_1000A6F98()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100009CB4;
  }

  else
  {
    v2 = sub_1000A70EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A70EC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_1000C0368();
  v0[6] = v0[5];
  v6 = sub_1000C06F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_1000C0738();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1000A5E28();
  sub_1000A8068();
  sub_1000C02E8();
  (*(v2 + 16))(v10, v1, v3);
  sub_1000C0308();
  sub_1000C0328();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000A7358()
{
  v0 = sub_100004D04(&qword_1000F07A8, &qword_1000C99E8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000EC9F8 != -1)
  {
    swift_once();
  }

  sub_1000C05D8();

  sub_1000A8068();
  sub_100008478(&qword_1000F07B0, &qword_1000F07A8, &qword_1000C99E8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000C05C8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_1000A74CC(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_100009FE8;
}

uint64_t (*sub_1000A7540(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_1000A75B4()
{
  if (qword_1000EC9F8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000A7614()
{
  result = qword_1000F0678;
  if (!qword_1000F0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0678);
  }

  return result;
}

unint64_t sub_1000A766C()
{
  result = qword_1000F0680;
  if (!qword_1000F0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0680);
  }

  return result;
}

uint64_t sub_1000A7744@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000EC9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  v3 = sub_10000D978(v2, qword_1000FABC0);

  return sub_10000DA20(v3, a1);
}

uint64_t sub_1000A77C8(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_1000A6A8C(a1, v5, v4);
}

uint64_t sub_1000A7874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A9B00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000A78BC()
{
  result = qword_1000F0688;
  if (!qword_1000F0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0688);
  }

  return result;
}

unint64_t sub_1000A7914()
{
  result = qword_1000F0690;
  if (!qword_1000F0690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0690);
  }

  return result;
}

uint64_t sub_1000A7988()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  v3 = [v2 shouldIncludeRemindersDueTodayInBadgeCount];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000A7A50()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  [v2 setShouldIncludeRemindersDueTodayInBadgeCount:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000A7AE8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000C0898();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000A7B78, 0, 0);
}

uint64_t sub_1000A7B78()
{
  v1 = *(v0 + 16);
  sub_100004D04(&qword_1000F0670, qword_1000C9110);
  sub_1000C0878();
  sub_100008478(&qword_1000F0788, &qword_1000F0790, &qword_1000C99C8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_1000C0768();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1000A7C9C()
{
  result = qword_1000F0698;
  if (!qword_1000F0698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0698);
  }

  return result;
}

uint64_t sub_1000A7CF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000A81FC();
  *v4 = v2;
  v4[1] = sub_10000A8F8;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000A7DA4()
{
  result = qword_1000F06A0;
  if (!qword_1000F06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06A0);
  }

  return result;
}

unint64_t sub_1000A7DFC()
{
  result = qword_1000F06A8;
  if (!qword_1000F06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06A8);
  }

  return result;
}

unint64_t sub_1000A7E54()
{
  result = qword_1000F06B0;
  if (!qword_1000F06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06B0);
  }

  return result;
}

uint64_t sub_1000A7EA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000A81FC();
  *v5 = v2;
  v5[1] = sub_10000DCD8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000A7F5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000A81FC();
  *v4 = v2;
  v4[1] = sub_10000DCA4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000A8010()
{
  result = qword_1000F06B8;
  if (!qword_1000F06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06B8);
  }

  return result;
}

unint64_t sub_1000A8068()
{
  result = qword_1000F06C0;
  if (!qword_1000F06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06C0);
  }

  return result;
}

unint64_t sub_1000A80C0()
{
  result = qword_1000F06C8;
  if (!qword_1000F06C8)
  {
    sub_100005334(&qword_1000F06D0, qword_1000C93B0);
    sub_1000A8068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06C8);
  }

  return result;
}

uint64_t sub_1000A8144(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000A7C9C();
  *v5 = v2;
  v5[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000A81FC()
{
  result = qword_1000F06D8;
  if (!qword_1000F06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06D8);
  }

  return result;
}

uint64_t sub_1000A8250()
{
  v0 = qword_1000F0640;

  return v0;
}

unint64_t sub_1000A828C()
{
  result = qword_1000F06E0;
  if (!qword_1000F06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06E0);
  }

  return result;
}

unint64_t sub_1000A82E4()
{
  result = qword_1000F06E8;
  if (!qword_1000F06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06E8);
  }

  return result;
}

unint64_t sub_1000A833C()
{
  result = qword_1000F06F0;
  if (!qword_1000F06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06F0);
  }

  return result;
}

unint64_t sub_1000A8394()
{
  result = qword_1000F06F8;
  if (!qword_1000F06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F06F8);
  }

  return result;
}

unint64_t sub_1000A83EC()
{
  result = qword_1000F0700;
  if (!qword_1000F0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0700);
  }

  return result;
}

unint64_t sub_1000A8444()
{
  result = qword_1000F0708;
  if (!qword_1000F0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0708);
  }

  return result;
}

uint64_t sub_1000A8498@<X0>(uint64_t *a2@<X8>)
{
  sub_1000A7914();
  result = sub_1000C0348();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000A8554(uint64_t a1)
{
  v2 = sub_1000A7E54();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000A85A4()
{
  result = qword_1000F0720;
  if (!qword_1000F0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0720);
  }

  return result;
}

uint64_t sub_1000A85FC(uint64_t a1)
{
  v2 = sub_1000A8444();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000A864C()
{
  result = qword_1000F0728;
  if (!qword_1000F0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0728);
  }

  return result;
}

uint64_t sub_1000A86A0(uint64_t a1)
{
  if (qword_1000EC8C8 != -1)
  {
    swift_once();
  }

  sub_1000C26D8(xmmword_1000FAAA8);
  v2 = sub_1000A7E54();

  return _EntityURLRepresentation.init(_:)(0xD000000000000041, 0x80000001000CBC20, a1, v2);
}

uint64_t sub_1000A8760(uint64_t a1)
{
  sub_1000AA468();
  v2 = sub_1000C0668();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000A87D0()
{
  result = qword_1000F0730;
  if (!qword_1000F0730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0730);
  }

  return result;
}

uint64_t sub_1000A8824()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FABE0);
  sub_10000D978(v0, qword_1000FABE0);
  return sub_1000C0878();
}

uint64_t sub_1000A8888@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_1000C0588();
  v13 = sub_1000C0578();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*sub_1000A8B84(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

unint64_t sub_1000A8BF8()
{
  result = qword_1000F0738;
  if (!qword_1000F0738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0738);
  }

  return result;
}

uint64_t sub_1000A8C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AA3C0();
  v5 = sub_1000AA468();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000A8CB8()
{
  v0 = qword_1000F0650;

  return v0;
}

unint64_t sub_1000A8CF4()
{
  result = qword_1000F0740;
  if (!qword_1000F0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0740);
  }

  return result;
}

unint64_t sub_1000A8D4C()
{
  result = qword_1000F0748;
  if (!qword_1000F0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0748);
  }

  return result;
}

uint64_t sub_1000A8E48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000AA3C0();
  v7 = sub_1000AA414();
  v8 = sub_1000AA468();
  *v5 = v2;
  v5[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_1000A8F1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A9F64();
  *a1 = result;
  return result;
}

uint64_t sub_1000A8F44(uint64_t a1)
{
  v2 = sub_1000A8BF8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000A9048@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100004D04(&qword_1000ED148, &qword_1000C44B0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100004D04(&qword_1000ED150, &qword_1000C44B8);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100004D04(&qword_1000ED158, &qword_1000C44C0);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v23 = &v23 - v10;
  v11 = sub_100004D04(&qword_1000ED160, &qword_1000C44C8);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v24 = &v23 - v13;
  swift_getKeyPath();
  sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  sub_100004D04(&qword_1000ED170, qword_1000C44D8);
  sub_1000A7914();
  sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0, &protocol conformance descriptor for Label<A, B>);
  sub_10000DABC();
  sub_1000C2398();
  sub_1000C19E8();
  v14 = sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0, &protocol conformance descriptor for ControlToggle<A>);
  sub_1000C1AB8();

  (*(v25 + 8))(v3, v1);
  sub_1000C19E8();
  v33 = v1;
  v34 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v23;
  v17 = v26;
  sub_1000C1A78();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_1000C1AD8();
  (*(v29 + 8))(v16, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000C1A98();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_1000A95AC()
{
  v0 = sub_1000C19E8();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000A961C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C0888();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  __chkstk_darwin(v8 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C08A8();
  result = sub_1000C1DD8();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

double sub_1000A9830@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0888();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000C2628();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C0898();
  __chkstk_darwin(v10 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000C08A8();
  v17[1] = sub_1000C1DD8();
  v17[2] = v11;
  v17[3] = v12 & 1;
  v17[4] = v13;
  v18 = (a1 & 1) == 0;
  sub_1000C1AE8();
  result = *&v19;
  v15 = v20;
  v16 = v21;
  *a2 = v19;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_1000A9B00()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C0658();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C0898();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100004D04(&qword_1000F0768, &qword_1000C99B0);
  sub_1000C0878();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C0318();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v7, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000A7E54();
  v23 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000C2808();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C0398();
  return v23;
}

uint64_t sub_1000A9F64()
{
  v0 = sub_1000C0658();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v21 - v5;
  v7 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_1000C0888();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C0B68();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000C2628();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_100004D04(&qword_1000F0768, &qword_1000C99B0);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_1000C08A8();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_1000C0318();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_1000A7E54();
  return sub_1000C0388();
}

unint64_t sub_1000AA3C0()
{
  result = qword_1000F0770;
  if (!qword_1000F0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0770);
  }

  return result;
}

unint64_t sub_1000AA414()
{
  result = qword_1000F0778;
  if (!qword_1000F0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0778);
  }

  return result;
}

unint64_t sub_1000AA468()
{
  result = qword_1000F0780;
  if (!qword_1000F0780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0780);
  }

  return result;
}

unint64_t sub_1000AA518()
{
  result = qword_1000F07D8;
  if (!qword_1000F07D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F07D8);
  }

  return result;
}

uint64_t sub_1000AA5B0()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C0888();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C0728();
  sub_10000D9B0(v10, qword_1000FABF8);
  sub_10000D978(v10, qword_1000FABF8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C0718();
}

uint64_t sub_1000AA894@<X0>(uint64_t a1@<X8>)
{
  v22[3] = a1;
  v1 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  __chkstk_darwin(v1 - 8);
  v23 = v22 - v2;
  v3 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v3 - 8);
  v22[0] = v22 - v4;
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22[2] = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v22[1] = v22 - v15;
  sub_1000C2618();
  sub_1000C0B58();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  v18 = v22[0];
  sub_1000C08A8();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = v23;
  sub_1000C05F8();
  v20 = sub_1000C0608();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
  *(swift_allocObject() + 16) = xmmword_1000C3590;
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_1000AADCC()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAC10);
  sub_10000D978(v0, qword_1000FAC10);
  return sub_1000C0878();
}

uint64_t sub_1000AAE30()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v14[0] = sub_1000C0888();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  sub_10000D9B0(v10, qword_1000FAC28);
  v11 = sub_10000D978(v10, qword_1000FAC28);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  sub_1000C0588();
  v12 = sub_1000C0578();
  return (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
}

uint64_t sub_1000AB160()
{
  result = swift_getKeyPath();
  qword_1000FAC40 = result;
  return result;
}

uint64_t sub_1000AB188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100004D04(&qword_1000ED110, &unk_1000C8A60);
  v3[10] = swift_task_alloc();
  sub_100004D04(&qword_1000ED118, &qword_1000C4400);
  v3[11] = swift_task_alloc();
  sub_100004D04(&qword_1000F0910, &qword_1000CA348);
  v3[12] = swift_task_alloc();
  v4 = sub_1000C0318();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100004D04(&qword_1000F0918, &qword_1000CA350);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000AB368, 0, 0);
}

uint64_t sub_1000AB368()
{
  sub_1000C0368();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_1000AC55C();
  *v1 = v0;
  v1[1] = sub_1000AB438;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_1000AEC04, 0, &type metadata for ShowAsOverdueEntity, v2);
}

uint64_t sub_1000AB438()
{

  return _swift_task_switch(sub_1000AB534, 0, 0);
}

uint64_t sub_1000AB534()
{
  sub_1000C0368();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_1000C0368();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000ECA20 != -1)
  {
    swift_once();
  }

  v2 = qword_1000FAC40;
  *(v0 + 176) = qword_1000FAC40;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_100008478(&qword_1000F0900, &qword_1000F0908, &qword_1000CA338, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_1000AB694;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_1000AB694()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100009CB4;
  }

  else
  {
    v2 = sub_1000AB7E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AB7E8()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_1000C0368();
  v0[6] = v0[5];
  v6 = sub_1000C06F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_1000C0738();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1000AA518();
  sub_1000AC770();
  sub_1000C02E8();
  (*(v2 + 16))(v10, v1, v3);
  sub_1000C0308();
  sub_1000C0328();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000ABA54()
{
  v0 = sub_100004D04(&qword_1000F0920, &qword_1000CA358);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000ECA20 != -1)
  {
    swift_once();
  }

  sub_1000C05D8();

  sub_1000AC770();
  sub_100008478(&qword_1000F0928, &qword_1000F0920, &qword_1000CA358, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000C05C8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_1000ABBC8(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_100009FE8;
}

uint64_t (*sub_1000ABC3C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_1000ABCB0()
{
  if (qword_1000ECA20 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000ABD10()
{
  result = qword_1000F07F0;
  if (!qword_1000F07F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F07F0);
  }

  return result;
}

unint64_t sub_1000ABD68()
{
  result = qword_1000F07F8;
  if (!qword_1000F07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F07F8);
  }

  return result;
}

uint64_t sub_1000ABE40@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000ECA18 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  v3 = sub_10000D978(v2, qword_1000FAC28);

  return sub_10000DA20(v3, a1);
}

uint64_t sub_1000ABEC4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_1000AB188(a1, v5, v4);
}

uint64_t sub_1000ABF70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000AE210();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000ABFB8()
{
  result = qword_1000F0800;
  if (!qword_1000F0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0800);
  }

  return result;
}

unint64_t sub_1000AC010()
{
  result = qword_1000F0808;
  if (!qword_1000F0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0808);
  }

  return result;
}

uint64_t sub_1000AC084()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  v3 = [v2 showRemindersAsOverdueWithShouldBypassCache:1];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000AC150()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  [v2 setShowRemindersAsOverdue:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000AC1E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000C0898();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000AC278, 0, 0);
}

uint64_t sub_1000AC278()
{
  v1 = *(v0 + 16);
  sub_100004D04(&qword_1000F07E8, qword_1000C9A80);
  sub_1000C0878();
  sub_100008478(&qword_1000F0900, &qword_1000F0908, &qword_1000CA338, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_1000C0768();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1000AC3A4()
{
  result = qword_1000F0810;
  if (!qword_1000F0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0810);
  }

  return result;
}

uint64_t sub_1000AC3F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000AC904();
  *v4 = v2;
  v4[1] = sub_10000A8F8;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000AC4AC()
{
  result = qword_1000F0818;
  if (!qword_1000F0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0818);
  }

  return result;
}

unint64_t sub_1000AC504()
{
  result = qword_1000F0820;
  if (!qword_1000F0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0820);
  }

  return result;
}

unint64_t sub_1000AC55C()
{
  result = qword_1000F0828;
  if (!qword_1000F0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0828);
  }

  return result;
}

uint64_t sub_1000AC5B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000AC904();
  *v5 = v2;
  v5[1] = sub_10000DCD8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000AC664(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000AC904();
  *v4 = v2;
  v4[1] = sub_10000DCA4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000AC718()
{
  result = qword_1000F0830;
  if (!qword_1000F0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0830);
  }

  return result;
}

unint64_t sub_1000AC770()
{
  result = qword_1000F0838;
  if (!qword_1000F0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0838);
  }

  return result;
}

unint64_t sub_1000AC7C8()
{
  result = qword_1000F0840;
  if (!qword_1000F0840)
  {
    sub_100005334(&qword_1000F0848, qword_1000C9D20);
    sub_1000AC770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0840);
  }

  return result;
}

uint64_t sub_1000AC84C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000AC3A4();
  *v5 = v2;
  v5[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000AC904()
{
  result = qword_1000F0850;
  if (!qword_1000F0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0850);
  }

  return result;
}

uint64_t sub_1000AC958()
{
  v0 = qword_1000F07B8;

  return v0;
}

unint64_t sub_1000AC994()
{
  result = qword_1000F0858;
  if (!qword_1000F0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0858);
  }

  return result;
}

unint64_t sub_1000AC9EC()
{
  result = qword_1000F0860;
  if (!qword_1000F0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0860);
  }

  return result;
}

unint64_t sub_1000ACA44()
{
  result = qword_1000F0868;
  if (!qword_1000F0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0868);
  }

  return result;
}

unint64_t sub_1000ACA9C()
{
  result = qword_1000F0870;
  if (!qword_1000F0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0870);
  }

  return result;
}

unint64_t sub_1000ACAF4()
{
  result = qword_1000F0878;
  if (!qword_1000F0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0878);
  }

  return result;
}

unint64_t sub_1000ACB4C()
{
  result = qword_1000F0880;
  if (!qword_1000F0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0880);
  }

  return result;
}

uint64_t sub_1000ACBA0@<X0>(uint64_t *a2@<X8>)
{
  sub_1000AC010();
  result = sub_1000C0348();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000ACC5C(uint64_t a1)
{
  v2 = sub_1000AC55C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000ACCAC()
{
  result = qword_1000F0898;
  if (!qword_1000F0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0898);
  }

  return result;
}

uint64_t sub_1000ACD04(uint64_t a1)
{
  v2 = sub_1000ACB4C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000ACD54()
{
  result = qword_1000F08A0;
  if (!qword_1000F08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08A0);
  }

  return result;
}

uint64_t sub_1000ACDA8(uint64_t a1)
{
  if (qword_1000EC8D8 != -1)
  {
    swift_once();
  }

  sub_1000C26D8(xmmword_1000FAAC8);
  v2 = sub_1000AC55C();

  return _EntityURLRepresentation.init(_:)(0xD000000000000041, 0x80000001000CBC20, a1, v2);
}

uint64_t sub_1000ACE68(uint64_t a1)
{
  sub_1000AEB78();
  v2 = sub_1000C0668();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000ACED8()
{
  result = qword_1000F08A8;
  if (!qword_1000F08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08A8);
  }

  return result;
}

uint64_t sub_1000ACF2C()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAC48);
  sub_10000D978(v0, qword_1000FAC48);
  return sub_1000C0878();
}

uint64_t sub_1000ACF90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_1000C0588();
  v13 = sub_1000C0578();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*sub_1000AD28C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

unint64_t sub_1000AD300()
{
  result = qword_1000F08B0;
  if (!qword_1000F08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08B0);
  }

  return result;
}

uint64_t sub_1000AD354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000AEAD0();
  v5 = sub_1000AEB78();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000AD3C0()
{
  v0 = qword_1000F07C8;

  return v0;
}

unint64_t sub_1000AD3FC()
{
  result = qword_1000F08B8;
  if (!qword_1000F08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08B8);
  }

  return result;
}

unint64_t sub_1000AD454()
{
  result = qword_1000F08C0;
  if (!qword_1000F08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08C0);
  }

  return result;
}

uint64_t sub_1000AD550(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000AEAD0();
  v7 = sub_1000AEB24();
  v8 = sub_1000AEB78();
  *v5 = v2;
  v5[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_1000AD624@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000AE674();
  *a1 = result;
  return result;
}

uint64_t sub_1000AD64C(uint64_t a1)
{
  v2 = sub_1000AD300();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000AD750@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100004D04(&qword_1000ED148, &qword_1000C44B0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100004D04(&qword_1000ED150, &qword_1000C44B8);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100004D04(&qword_1000ED158, &qword_1000C44C0);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v23 = &v23 - v10;
  v11 = sub_100004D04(&qword_1000ED160, &qword_1000C44C8);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v24 = &v23 - v13;
  swift_getKeyPath();
  sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  sub_100004D04(&qword_1000ED170, qword_1000C44D8);
  sub_1000AC010();
  sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0, &protocol conformance descriptor for Label<A, B>);
  sub_10000DABC();
  sub_1000C2398();
  sub_1000C19E8();
  v14 = sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0, &protocol conformance descriptor for ControlToggle<A>);
  sub_1000C1AB8();

  (*(v25 + 8))(v3, v1);
  sub_1000C19E8();
  v33 = v1;
  v34 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v23;
  v17 = v26;
  sub_1000C1A78();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_1000C1AD8();
  (*(v29 + 8))(v16, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000C1A98();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_1000ADCB4()
{
  v0 = sub_1000C19E8();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000ADD2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C0888();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  __chkstk_darwin(v8 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C08A8();
  result = sub_1000C1DD8();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

double sub_1000ADF40@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0888();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000C2628();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C0898();
  __chkstk_darwin(v10 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000C08A8();
  v17[1] = sub_1000C1DD8();
  v17[2] = v11;
  v17[3] = v12 & 1;
  v17[4] = v13;
  v18 = (a1 & 1) == 0;
  sub_1000C1AE8();
  result = *&v19;
  v15 = v20;
  v16 = v21;
  *a2 = v19;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_1000AE210()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C0658();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C0898();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100004D04(&qword_1000F08E0, &qword_1000CA320);
  sub_1000C0878();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C0318();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v7, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000AC55C();
  v23 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000C2808();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C0398();
  return v23;
}

uint64_t sub_1000AE674()
{
  v0 = sub_1000C0658();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v21 - v5;
  v7 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_1000C0888();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C0B68();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000C2628();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_100004D04(&qword_1000F08E0, &qword_1000CA320);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_1000C08A8();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_1000C0318();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_1000AC55C();
  return sub_1000C0388();
}

unint64_t sub_1000AEAD0()
{
  result = qword_1000F08E8;
  if (!qword_1000F08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08E8);
  }

  return result;
}

unint64_t sub_1000AEB24()
{
  result = qword_1000F08F0;
  if (!qword_1000F08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08F0);
  }

  return result;
}

unint64_t sub_1000AEB78()
{
  result = qword_1000F08F8;
  if (!qword_1000F08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F08F8);
  }

  return result;
}

uint64_t sub_1000AEC24()
{
  v0 = sub_100004D04(&qword_1000F0A38, &qword_1000CA688);
  v1 = *(v0 - 8);
  v17 = v0;
  v18 = v1;
  __chkstk_darwin(v0);
  v3 = &v13 - v2;
  v4 = sub_100004D04(&qword_1000F0A40, &qword_1000CA690);
  __chkstk_darwin(v4);
  sub_10008811C();
  sub_1000C0518();
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_1000C0508(v19);
  swift_getKeyPath();
  sub_1000B2AD0();
  sub_1000C0428();

  sub_1000C04F8();

  v20._countAndFlagsBits = 0xD000000000000025;
  v20._object = 0x80000001000CED80;
  sub_1000C0508(v20);
  sub_1000C0528();
  v16 = sub_1000C0458();
  v5 = v17;
  v14 = *(v18 + 8);
  v18 += 8;
  v14(v3, v17);
  sub_1000C0518();
  v21._countAndFlagsBits = 0x206E727554;
  v21._object = 0xE500000000000000;
  sub_1000C0508(v21);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v22._countAndFlagsBits = 0xD000000000000022;
  v22._object = 0x80000001000CEDB0;
  sub_1000C0508(v22);
  sub_1000C0528();
  v15 = sub_1000C0458();
  v6 = v5;
  v7 = v14;
  v14(v3, v6);
  sub_1000C0518();
  v23._countAndFlagsBits = 0x656B696C20642749;
  v23._object = 0xEF206562206F7420;
  sub_1000C0508(v23);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v24._object = 0x80000001000CEDE0;
  v24._countAndFlagsBits = 0xD000000000000014;
  sub_1000C0508(v24);
  sub_1000C0528();
  v8 = sub_1000C0458();
  v7(v3, v17);
  sub_100004D04(&qword_1000F0A48, &qword_1000CA698);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000C4500;
  v10 = v15;
  *(v9 + 32) = v16;
  *(v9 + 40) = v10;
  *(v9 + 48) = v8;
  v11 = sub_1000C0448();

  return v11;
}

uint64_t sub_1000AF0A4()
{
  v0 = sub_1000C0478();
  v1 = sub_1000C0478();
  v2 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000C4500;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_1000C0468();

  return v4;
}

uint64_t sub_1000AF158()
{
  v0 = sub_100004D04(&qword_1000F0A20, &qword_1000CA648);
  v1 = *(v0 - 8);
  v20 = v0;
  v21 = v1;
  __chkstk_darwin(v0);
  v3 = &v16 - v2;
  v4 = sub_1000C0438();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004D04(&qword_1000F0A28, &qword_1000CA650);
  __chkstk_darwin(v8);
  sub_1000A5E28();
  sub_1000C0518();
  v22._countAndFlagsBits = 0x20656B614DLL;
  v22._object = 0xE500000000000000;
  sub_1000C0508(v22);
  (*(v5 + 104))(v7, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v4);
  sub_1000C04E8();
  (*(v5 + 8))(v7, v4);
  v23._countAndFlagsBits = 0x6320656764616220;
  v23._object = 0xED000020746E756FLL;
  sub_1000C0508(v23);
  swift_getKeyPath();
  v16 = sub_1000B2AD0();
  sub_1000C0428();

  sub_1000C04F8();

  v24._object = 0x80000001000CED00;
  v24._countAndFlagsBits = 0xD000000000000015;
  sub_1000C0508(v24);
  sub_1000C0528();
  v19 = sub_1000C0458();
  v9 = v20;
  v17 = *(v21 + 8);
  v21 += 8;
  v17(v3, v20);
  sub_1000C0518();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_1000C0508(v25);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v26._countAndFlagsBits = 0xD000000000000022;
  v26._object = 0x80000001000CED20;
  sub_1000C0508(v26);
  sub_1000C0528();
  v18 = sub_1000C0458();
  v10 = v17;
  v17(v3, v9);
  sub_1000C0518();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1000C0508(v27);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v28._countAndFlagsBits = 0xD000000000000024;
  v28._object = 0x80000001000CED50;
  sub_1000C0508(v28);
  sub_1000C0528();
  v11 = sub_1000C0458();
  v10(v3, v9);
  sub_100004D04(&qword_1000F0A30, &qword_1000CA658);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C4500;
  v13 = v18;
  *(v12 + 32) = v19;
  *(v12 + 40) = v13;
  *(v12 + 48) = v11;
  v14 = sub_1000C0448();

  return v14;
}

uint64_t sub_1000AF6D4(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000F0A08, &qword_1000CA608);
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_100004D04(&qword_1000F0A10, &qword_1000CA610);
  __chkstk_darwin(v6);
  sub_1000B293C();
  sub_1000C0518();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_1000C0508(v25);
  swift_getKeyPath();
  v22 = sub_1000B2AD0();
  v17 = a1;
  sub_1000C0428();

  sub_1000C04F8();

  v26._countAndFlagsBits = 0xD000000000000035;
  v26._object = 0x80000001000CEC10;
  sub_1000C0508(v26);
  sub_1000C0528();
  v7 = sub_1000C0458();
  v8 = v23;
  v9 = *(v24 + 8);
  v20 = v7;
  v21 = v9;
  v24 += 8;
  v9(v5, v23);
  sub_1000C0518();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_1000C0508(v27);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v28._countAndFlagsBits = 0xD000000000000031;
  v28._object = 0x80000001000CEC50;
  sub_1000C0508(v28);
  sub_1000C0528();
  v19 = sub_1000C0458();
  v10 = v21;
  v21(v5, v8);
  sub_1000C0518();
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_1000C0508(v29);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v30._object = 0x80000001000CEC90;
  v30._countAndFlagsBits = 0xD00000000000002ELL;
  sub_1000C0508(v30);
  sub_1000C0528();
  v18 = sub_1000C0458();
  v11 = v23;
  v10(v5, v23);
  sub_1000C0518();
  v31._countAndFlagsBits = 8265;
  v31._object = 0xE200000000000000;
  sub_1000C0508(v31);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v32._countAndFlagsBits = 0xD000000000000032;
  v32._object = 0x80000001000CECC0;
  sub_1000C0508(v32);
  sub_1000C0528();
  v12 = sub_1000C0458();
  v21(v5, v11);
  sub_100004D04(&qword_1000F0A18, &qword_1000CA618);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000C5A40;
  v14 = v19;
  *(v13 + 32) = v20;
  *(v13 + 40) = v14;
  *(v13 + 48) = v18;
  *(v13 + 56) = v12;
  v15 = sub_1000C0448();

  return v15;
}

uint64_t sub_1000AFC14()
{
  v0 = sub_1000C0478();
  v1 = sub_1000C0478();
  v2 = sub_1000C0478();
  v3 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C5A40;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1000C0468();

  return v5;
}

uint64_t sub_1000AFCFC(uint64_t a1)
{
  v19 = sub_100004D04(&qword_1000F09F0, &qword_1000CA5C8);
  v22 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = &v15 - v2;
  v4 = sub_100004D04(&qword_1000F09F8, &qword_1000CA5D0);
  __chkstk_darwin(v4);
  sub_1000AA518();
  sub_1000C0518();
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_1000C0508(v23);
  swift_getKeyPath();
  sub_1000B2AD0();
  v17 = a1;
  sub_1000C0428();

  sub_1000C04F8();

  v20 = " suggestions when adding ";
  v24._object = 0x80000001000CEBD0;
  v24._countAndFlagsBits = 0xD000000000000016;
  sub_1000C0508(v24);
  sub_1000C0528();
  v5 = sub_1000C0458();
  v16 = *(v22 + 8);
  v21 = v5;
  v22 += 8;
  v6 = v19;
  v16(v3, v19);
  sub_1000C0518();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_1000C0508(v25);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v26._object = 0x80000001000CEBF0;
  v26._countAndFlagsBits = 0xD000000000000016;
  sub_1000C0508(v26);
  sub_1000C0528();
  v18 = sub_1000C0458();
  v7 = v6;
  v8 = v6;
  v9 = v16;
  v16(v3, v7);
  sub_1000C0518();
  v27._countAndFlagsBits = 0x656B696C20642749;
  v27._object = 0xEC000000206F7420;
  sub_1000C0508(v27);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v28._object = (v20 | 0x8000000000000000);
  v28._countAndFlagsBits = 0xD000000000000016;
  sub_1000C0508(v28);
  sub_1000C0528();
  v10 = sub_1000C0458();
  v9(v3, v8);
  sub_100004D04(&qword_1000F0A00, &qword_1000CA5D8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000C4500;
  v12 = v18;
  *(v11 + 32) = v21;
  *(v11 + 40) = v12;
  *(v11 + 48) = v10;
  v13 = sub_1000C0448();

  return v13;
}

uint64_t sub_1000B018C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000C0478();
  v4 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000C44F0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  v6 = sub_1000C0468();

  return v6;
}

uint64_t sub_1000B0214(uint64_t a1)
{
  v33 = a1;
  v1 = sub_100004D04(&qword_1000F09D8, &qword_1000CA588);
  v2 = *(v1 - 8);
  v39 = v1;
  v40 = v2;
  __chkstk_darwin(v1);
  v36 = &v23 - v3;
  v4 = sub_1000C0438();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004D04(&qword_1000F09E0, &qword_1000CA590);
  __chkstk_darwin(v8);
  v9 = sub_100008750();
  sub_1000C0518();
  v41._countAndFlagsBits = 0x206E6F206E727554;
  v41._object = 0xE800000000000000;
  sub_1000C0508(v41);
  swift_getKeyPath();
  v32 = sub_1000B2AD0();
  sub_1000C0428();

  sub_1000C04F8();

  v26 = "I want to see all ";
  v42._object = 0x80000001000CEB90;
  v42._countAndFlagsBits = 0xD000000000000011;
  sub_1000C0508(v42);
  v10 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = *(v5 + 104);
  v31 = v5 + 104;
  v38 = v11;
  v34 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11(v7, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v4);
  sub_1000C04E8();
  v12 = *(v5 + 8);
  v30 = v5 + 8;
  v37 = v12;
  v12(v7, v4);
  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  sub_1000C0508(v43);
  v13 = v36;
  sub_1000C0528();
  v29 = v9;
  v28 = sub_1000C0458();
  v35 = *(v40 + 8);
  v40 += 8;
  v35(v13, v39);
  sub_1000C0518();
  v44._countAndFlagsBits = 0x7420746E61772049;
  v44._object = 0xEA0000000000206FLL;
  sub_1000C0508(v44);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v25 = " suggestions for ";
  v45._countAndFlagsBits = 0xD000000000000019;
  v45._object = 0x80000001000CEBB0;
  sub_1000C0508(v45);
  v24 = v4;
  v38(v7, v10, v4);
  sub_1000C04E8();
  v37(v7, v4);
  v46._countAndFlagsBits = 46;
  v46._object = 0xE100000000000000;
  sub_1000C0508(v46);
  v14 = v36;
  sub_1000C0528();
  v27 = sub_1000C0458();
  v35(v14, v39);
  sub_1000C0518();
  v47._countAndFlagsBits = 0x66666F206E727554;
  v47._object = 0xE900000000000020;
  sub_1000C0508(v47);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v48._object = (v26 | 0x8000000000000000);
  v48._countAndFlagsBits = 0xD000000000000011;
  sub_1000C0508(v48);
  v15 = v24;
  v38(v7, v34, v24);
  sub_1000C04E8();
  v37(v7, v15);
  v49._countAndFlagsBits = 46;
  v49._object = 0xE100000000000000;
  sub_1000C0508(v49);
  v16 = v36;
  sub_1000C0528();
  v26 = sub_1000C0458();
  v17 = v35;
  v35(v16, v39);
  sub_1000C0518();
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_1000C0508(v50);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v51._countAndFlagsBits = 0xD000000000000019;
  v51._object = (v25 | 0x8000000000000000);
  sub_1000C0508(v51);
  v38(v7, v34, v15);
  sub_1000C04E8();
  v37(v7, v15);
  v52._countAndFlagsBits = 46;
  v52._object = 0xE100000000000000;
  sub_1000C0508(v52);
  sub_1000C0528();
  v18 = sub_1000C0458();
  v17(v16, v39);
  sub_100004D04(&qword_1000F09E8, &qword_1000CA598);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000C5A40;
  v20 = v27;
  *(v19 + 32) = v28;
  *(v19 + 40) = v20;
  *(v19 + 48) = v26;
  *(v19 + 56) = v18;
  v21 = sub_1000C0448();

  return v21;
}

uint64_t sub_1000B099C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000C0478();
  v5 = sub_1000C0478();
  v6 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000C4500;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  v8 = sub_1000C0468();

  return v8;
}

uint64_t sub_1000B0A44(uint64_t a1)
{
  v18 = a1;
  v17 = sub_100004D04(&qword_1000F09B8, &qword_1000CA548);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = &v15 - v2;
  v4 = sub_1000C0438();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004D04(&qword_1000F09C0, &qword_1000CA550);
  __chkstk_darwin(v8);
  sub_100010EE0();
  sub_1000C0518();
  v19._object = 0x80000001000CEB70;
  v19._countAndFlagsBits = 0xD000000000000012;
  sub_1000C0508(v19);
  (*(v5 + 104))(v7, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v4);
  sub_1000C04E8();
  (*(v5 + 8))(v7, v4);
  v20._countAndFlagsBits = 0x676E697474657320;
  v20._object = 0xEA00000000002E73;
  sub_1000C0508(v20);
  sub_1000C0528();
  v16 = sub_1000C0458();
  v9 = *(v1 + 8);
  v10 = v17;
  v9(v3, v17);
  sub_1000C0518();
  v21._countAndFlagsBits = 0x206E65704FLL;
  v21._object = 0xE500000000000000;
  sub_1000C0508(v21);
  swift_getKeyPath();
  sub_10000FF04();
  sub_1000C0428();

  sub_1000C04F8();

  v22._countAndFlagsBits = 0x676E697474657320;
  v22._object = 0xEA00000000002E73;
  sub_1000C0508(v22);
  sub_1000C0528();
  v11 = sub_1000C0458();
  v9(v3, v10);
  sub_100004D04(&qword_1000F09C8, &qword_1000CA558);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C44F0;
  *(v12 + 32) = v16;
  *(v12 + 40) = v11;
  v13 = sub_1000C0448();

  return v13;
}

uint64_t sub_1000B0E54()
{
  v0 = sub_1000C0478();
  v1 = sub_1000C0478();
  v2 = sub_1000C0478();
  v3 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C5A40;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1000C0468();

  return v5;
}

uint64_t sub_1000B0F54(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_100004D04(&qword_1000F09B8, &qword_1000CA548);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_100004D04(&qword_1000F09C0, &qword_1000CA550);
  __chkstk_darwin(v4);
  sub_100010EE0();
  sub_1000C0518();
  v14._object = 0x80000001000CEB30;
  v14._countAndFlagsBits = 0xD000000000000016;
  sub_1000C0508(v14);
  swift_getKeyPath();
  sub_10000FF04();
  sub_1000C0428();

  sub_1000C04F8();

  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  sub_1000C0508(v15);
  sub_1000C0528();
  v12 = sub_1000C0458();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_1000C0518();
  v16._countAndFlagsBits = 0x20656D20776F6853;
  v16._object = 0xEB0000000020796DLL;
  sub_1000C0508(v16);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1000C0508(v17);
  sub_1000C0528();
  v7 = sub_1000C0458();
  v5(v3, v6);
  sub_100004D04(&qword_1000F09C8, &qword_1000CA558);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C44F0;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_1000C0448();

  return v9;
}

uint64_t sub_1000B12D4()
{
  v0 = sub_1000C0478();
  v1 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000C44F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_1000C0468();

  return v3;
}

uint64_t sub_1000B1384(uint64_t a1)
{
  v19 = a1;
  v1 = sub_100004D04(&qword_1000F09A0, &qword_1000CA508);
  __chkstk_darwin(v1);
  v2 = sub_100004D04(&qword_1000F09A8, &qword_1000CA510);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  sub_10008B458();
  sub_1000C04D8();
  v22 = sub_1000C0458();
  v6 = *(v3 + 8);
  v17 = v2;
  v6(v5, v2);
  v24 = v3 + 8;
  v16 = v6;
  sub_1000C04D8();
  v21 = sub_1000C0458();
  v6(v5, v2);
  sub_1000C0518();
  v25._object = 0x80000001000CEA70;
  v25._countAndFlagsBits = 0xD000000000000022;
  sub_1000C0508(v25);
  swift_getKeyPath();
  v23 = sub_10008A894();
  sub_1000C0428();

  sub_1000C04F8();

  v26._countAndFlagsBits = 46;
  v26._object = 0xE100000000000000;
  sub_1000C0508(v26);
  sub_1000C0528();
  v20 = sub_1000C0458();
  v8 = v16;
  v7 = v17;
  v16(v5, v17);
  sub_1000C0518();
  v27._countAndFlagsBits = 0xD000000000000036;
  v27._object = 0x80000001000CEAA0;
  sub_1000C0508(v27);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  sub_1000C0508(v28);
  sub_1000C0528();
  v18 = sub_1000C0458();
  v8(v5, v7);
  sub_1000C0518();
  v29._countAndFlagsBits = 0xD00000000000002ELL;
  v29._object = 0x80000001000CEAE0;
  sub_1000C0508(v29);
  swift_getKeyPath();
  sub_1000C0428();

  sub_1000C04F8();

  v30._countAndFlagsBits = 46;
  v30._object = 0xE100000000000000;
  sub_1000C0508(v30);
  sub_1000C0528();
  v9 = sub_1000C0458();
  v8(v5, v7);
  sub_100004D04(&qword_1000F09B0, &qword_1000CA518);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000CA3F0;
  v11 = v21;
  *(v10 + 32) = v22;
  *(v10 + 40) = v11;
  v12 = v18;
  *(v10 + 48) = v20;
  *(v10 + 56) = v12;
  *(v10 + 64) = v9;
  v13 = sub_1000C0448();

  return v13;
}

uint64_t sub_1000B18AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = sub_1000C04C8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_1000C0428();

  a4(v11);
  sub_1000C04B8();
  v12 = sub_1000C04A8();
  (*(v8 + 8))(v10, v7);
  sub_100004D04(&qword_1000F0998, &qword_1000CA500);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000C3590;
  *(v13 + 32) = v12;
  v14 = sub_1000C0498();

  return v14;
}

uint64_t sub_1000B1A50()
{
  v0 = sub_100004D04(&qword_1000F0988, &qword_1000CA4C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_1000AD300();
  sub_1000C04D8();
  v4 = sub_1000C0458();
  (*(v1 + 8))(v3, v0);
  sub_100004D04(&qword_1000F0990, &qword_1000CA4D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000C3590;
  *(v5 + 32) = v4;
  v6 = sub_1000C0448();

  return v6;
}

uint64_t sub_1000B1BB8()
{
  v0 = sub_100004D04(&qword_1000F0978, &qword_1000CA4B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_1000A8BF8();
  sub_1000C04D8();
  v4 = sub_1000C0458();
  (*(v1 + 8))(v3, v0);
  sub_100004D04(&qword_1000F0980, &qword_1000CA4C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000C3590;
  *(v5 + 32) = v4;
  v6 = sub_1000C0448();

  return v6;
}

uint64_t sub_1000B1D1C()
{
  v0 = sub_100004D04(&qword_1000F0968, &qword_1000CA4A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_1000B2990();
  sub_1000C04D8();
  v4 = sub_1000C0458();
  (*(v1 + 8))(v3, v0);
  sub_100004D04(&qword_1000F0970, &qword_1000CA4B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000C3590;
  *(v5 + 32) = v4;
  v6 = sub_1000C0448();

  return v6;
}

uint64_t sub_1000B1E80()
{
  v0 = sub_100004D04(&qword_1000F0958, &qword_1000CA498);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10000BD00();
  sub_1000C04D8();
  v4 = sub_1000C0458();
  (*(v1 + 8))(v3, v0);
  sub_100004D04(&qword_1000F0960, &qword_1000CA4A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000C3590;
  *(v5 + 32) = v4;
  v6 = sub_1000C0448();

  return v6;
}

uint64_t sub_1000B1FE4()
{
  v0 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000C3590;
  *(v1 + 32) = v0;
  v2 = sub_1000C0468();

  return v2;
}

uint64_t sub_1000B2068()
{
  v0 = sub_1000C0478();
  sub_100004D04(&qword_1000F0938, &qword_1000CA488);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000C3590;
  *(v1 + 32) = v0;
  v2 = sub_1000C0468();

  return v2;
}

uint64_t sub_1000B2108()
{
  v0 = sub_1000C0558();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10008C360();
  v29 = v4;
  sub_10008811C();
  sub_1000C0568();
  v27 = sub_1000C0548();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v28 = sub_1000A9B00();
  v29 = v6;
  sub_1000A5E28();
  sub_1000C0568();
  v26 = sub_1000C0548();
  v5(v3, v0);
  v28 = sub_1000B6830();
  v29 = v7;
  sub_1000B293C();
  sub_1000C0568();
  v25 = sub_1000C0548();
  v5(v3, v0);
  v28 = sub_1000AE210();
  v29 = v8;
  sub_1000AA518();
  sub_1000C0568();
  v24 = sub_1000C0548();
  v5(v3, v0);
  v28 = sub_10000CFBC();
  v29 = v9;
  sub_100008750();
  sub_1000C0568();
  v23 = sub_1000C0548();
  v5(v3, v0);
  v28 = sub_1000122B8();
  sub_100010EE0();
  sub_1000C0568();
  v22 = sub_1000C0548();
  v5(v3, v0);
  v28 = sub_1000122B8();
  sub_1000C0568();
  v10 = sub_1000C0548();
  v5(v3, v0);
  v28 = sub_10008C7C4();
  sub_10008B458();
  sub_1000C0568();
  v11 = sub_1000C0548();
  v5(v3, v0);
  v28 = sub_1000AE674();
  sub_1000AD300();
  sub_1000C0568();
  v12 = sub_1000C0548();
  v5(v3, v0);
  v28 = sub_1000A9F64();
  sub_1000A8BF8();
  sub_1000C0568();
  v13 = sub_1000C0548();
  v5(v3, v0);
  v28 = sub_1000B6C94();
  sub_1000B2990();
  sub_1000C0568();
  v14 = sub_1000C0548();
  v5(v3, v0);
  v28 = sub_10000D420();
  sub_10000BD00();
  sub_1000C0568();
  v15 = sub_1000C0548();
  v5(v3, v0);
  sub_100004D04(&qword_1000F0950, &qword_1000CA490);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000CA400;
  v17 = v26;
  *(v16 + 32) = v27;
  *(v16 + 40) = v17;
  v18 = v24;
  *(v16 + 48) = v25;
  *(v16 + 56) = v18;
  v19 = v22;
  *(v16 + 64) = v23;
  *(v16 + 72) = v19;
  *(v16 + 80) = v10;
  *(v16 + 88) = v11;
  *(v16 + 96) = v12;
  *(v16 + 104) = v13;
  *(v16 + 112) = v14;
  *(v16 + 120) = v15;
  v20 = sub_1000C0538();

  return v20;
}

uint64_t sub_1000B27A0()
{
  v0 = sub_1000C0418();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008B458();
  sub_1000C0408();
  v4 = sub_1000C03F8();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_10008811C();
  sub_1000C0408();
  v6 = sub_1000C03F8();
  v5(v3, v0);
  sub_100004D04(&qword_1000F0930, &qword_1000CA480);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000C44F0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_1000C03E8();

  return v8;
}

unint64_t sub_1000B293C()
{
  result = qword_1000F0940;
  if (!qword_1000F0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0940);
  }

  return result;
}

unint64_t sub_1000B2990()
{
  result = qword_1000F0948;
  if (!qword_1000F0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0948);
  }

  return result;
}

void *sub_1000B29E4@<X0>(void *a1@<X8>)
{
  result = sub_1000C0368();
  *a1 = v3;
  return result;
}

void *sub_1000B2A5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C0368();
  *a1 = v3;
  return result;
}

unint64_t sub_1000B2AD0()
{
  result = qword_1000F09D0;
  if (!qword_1000F09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F09D0);
  }

  return result;
}

void *sub_1000B2B2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C0368();
  *a1 = v3;
  return result;
}

uint64_t sub_1000B2C40()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C0888();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C0728();
  sub_10000D9B0(v10, qword_1000FAC60);
  sub_10000D978(v10, qword_1000FAC60);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C0718();
}

uint64_t sub_1000B2F1C@<X0>(uint64_t a1@<X8>)
{
  v22[2] = a1;
  v1 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  __chkstk_darwin(v1 - 8);
  v24 = v22 - v2;
  v3 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v3 - 8);
  v23 = v22 - v4;
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22[1] = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v22[0] = v22 - v15;
  sub_1000C2618();
  sub_1000C0B58();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v6 + 104);
  v17(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  v18 = v23;
  sub_1000C08A8();
  (*(v12 + 56))(v18, 0, 1, v11);
  v19 = v24;
  sub_1000C05F8();
  v20 = sub_1000C0608();
  (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
  *(swift_allocObject() + 16) = xmmword_1000C3590;
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v17(v8, v16, v5);
  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_1000B344C()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAC78);
  sub_10000D978(v0, qword_1000FAC78);
  return sub_1000C0878();
}

uint64_t sub_1000B34B0()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v14[0] = sub_1000C0888();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  sub_10000D9B0(v10, qword_1000FAC90);
  v11 = sub_10000D978(v10, qword_1000FAC90);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_1000C08A8();
  (*(v9 + 56))(v2, 1, 1, v8);
  sub_1000C0588();
  v12 = sub_1000C0578();
  return (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
}

uint64_t sub_1000B37E0()
{
  result = swift_getKeyPath();
  qword_1000FACA8 = result;
  return result;
}

uint64_t sub_1000B3808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_100004D04(&qword_1000ED110, &unk_1000C8A60);
  v3[10] = swift_task_alloc();
  sub_100004D04(&qword_1000ED118, &qword_1000C4400);
  v3[11] = swift_task_alloc();
  sub_100004D04(&qword_1000F0C30, &qword_1000CAFC8);
  v3[12] = swift_task_alloc();
  v4 = sub_1000C0318();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_100004D04(&qword_1000F0C38, &qword_1000CAFD0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000B39E8, 0, 0);
}

uint64_t sub_1000B39E8()
{
  sub_1000C0368();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  v2 = sub_1000B4BD8();
  *v1 = v0;
  v1[1] = sub_1000B3AB8;
  v3 = *(v0 + 152);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v3, v0 + 16, sub_1000B7224, 0, &type metadata for MuteNotificationsEntity, v2);
}

uint64_t sub_1000B3AB8()
{

  return _swift_task_switch(sub_1000B3BB4, 0, 0);
}

uint64_t sub_1000B3BB4()
{
  sub_1000C0368();
  v1 = *(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 168) = v1;
  sub_1000C0368();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000ECA48 != -1)
  {
    swift_once();
  }

  v2 = qword_1000FACA8;
  *(v0 + 176) = qword_1000FACA8;

  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  v4 = sub_100008478(&qword_1000F0C20, &qword_1000F0C28, &qword_1000CAFA8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v3 = v0;
  v3[1] = sub_1000B3D14;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v2, &type metadata for Bool, v4);
}

uint64_t sub_1000B3D14()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100009CB4;
  }

  else
  {
    v2 = sub_1000B3E68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B3E68()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_1000C0368();
  v0[6] = v0[5];
  v6 = sub_1000C06F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_1000C0738();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1000B293C();
  sub_1000B4DEC();
  sub_1000C02E8();
  (*(v2 + 16))(v10, v1, v3);
  sub_1000C0308();
  sub_1000C0328();
  (*(v12 + 8))(v11, v13);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000B40D4()
{
  v0 = sub_100004D04(&qword_1000F0C40, &qword_1000CAFD8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  if (qword_1000ECA48 != -1)
  {
    swift_once();
  }

  sub_1000C05D8();

  sub_1000B4DEC();
  sub_100008478(&qword_1000F0C48, &qword_1000F0C40, &qword_1000CAFD8, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1000C05C8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t (*sub_1000B4248(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_100009FE8;
}

uint64_t (*sub_1000B42BC(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_1000B4330()
{
  if (qword_1000ECA48 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000B4390()
{
  result = qword_1000F0B18;
  if (!qword_1000F0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B18);
  }

  return result;
}

unint64_t sub_1000B43E8()
{
  result = qword_1000F0B20;
  if (!qword_1000F0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B20);
  }

  return result;
}

uint64_t sub_1000B44C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000ECA40 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  v3 = sub_10000D978(v2, qword_1000FAC90);

  return sub_10000DA20(v3, a1);
}

uint64_t sub_1000B4544(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_1000B3808(a1, v5, v4);
}

uint64_t sub_1000B45F0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000B6830();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1000B4638()
{
  result = qword_1000F0B28;
  if (!qword_1000F0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B28);
  }

  return result;
}

unint64_t sub_1000B4690()
{
  result = qword_1000F0B30;
  if (!qword_1000F0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B30);
  }

  return result;
}

uint64_t sub_1000B4704()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  v3 = [v2 enableAssignmentNotifications];

  *v1 = v3 ^ 1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000B47D0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  [v2 setEnableAssignmentNotifications:(v1 & 1) == 0];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000B486C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1000C0898();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000B48FC, 0, 0);
}

uint64_t sub_1000B48FC()
{
  v1 = *(v0 + 16);
  sub_100004D04(&qword_1000F0B10, qword_1000CA6F0);
  sub_1000C0878();
  sub_100008478(&qword_1000F0C20, &qword_1000F0C28, &qword_1000CAFA8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v1 = sub_1000C0768();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1000B4A20()
{
  result = qword_1000F0B38;
  if (!qword_1000F0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B38);
  }

  return result;
}

uint64_t sub_1000B4A74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000B4F80();
  *v4 = v2;
  v4[1] = sub_10000A8F8;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_1000B4B28()
{
  result = qword_1000F0B40;
  if (!qword_1000F0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B40);
  }

  return result;
}

unint64_t sub_1000B4B80()
{
  result = qword_1000F0B48;
  if (!qword_1000F0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B48);
  }

  return result;
}

unint64_t sub_1000B4BD8()
{
  result = qword_1000F0B50;
  if (!qword_1000F0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B50);
  }

  return result;
}

uint64_t sub_1000B4C2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000B4F80();
  *v5 = v2;
  v5[1] = sub_10000DCD8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_1000B4CE0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000B4F80();
  *v4 = v2;
  v4[1] = sub_10000DCA4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_1000B4D94()
{
  result = qword_1000F0B58;
  if (!qword_1000F0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B58);
  }

  return result;
}

unint64_t sub_1000B4DEC()
{
  result = qword_1000F0B60;
  if (!qword_1000F0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B60);
  }

  return result;
}

unint64_t sub_1000B4E44()
{
  result = qword_1000F0B68;
  if (!qword_1000F0B68)
  {
    sub_100005334(&qword_1000F0B70, qword_1000CA990);
    sub_1000B4DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B68);
  }

  return result;
}

uint64_t sub_1000B4EC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000B4A20();
  *v5 = v2;
  v5[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_1000B4F80()
{
  result = qword_1000F0B78;
  if (!qword_1000F0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B78);
  }

  return result;
}

uint64_t sub_1000B4FD4()
{
  v0 = qword_1000F0AE8;

  return v0;
}

unint64_t sub_1000B5010()
{
  result = qword_1000F0B80;
  if (!qword_1000F0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B80);
  }

  return result;
}

unint64_t sub_1000B5068()
{
  result = qword_1000F0B88;
  if (!qword_1000F0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B88);
  }

  return result;
}

unint64_t sub_1000B50C0()
{
  result = qword_1000F0B90;
  if (!qword_1000F0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B90);
  }

  return result;
}

unint64_t sub_1000B5118()
{
  result = qword_1000F0B98;
  if (!qword_1000F0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0B98);
  }

  return result;
}

unint64_t sub_1000B5170()
{
  result = qword_1000F0BA0;
  if (!qword_1000F0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BA0);
  }

  return result;
}

unint64_t sub_1000B51C8()
{
  result = qword_1000F0BA8;
  if (!qword_1000F0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BA8);
  }

  return result;
}

uint64_t sub_1000B521C@<X0>(uint64_t *a2@<X8>)
{
  sub_1000B4690();
  result = sub_1000C0348();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000B52D8(uint64_t a1)
{
  v2 = sub_1000B4BD8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000B5328()
{
  result = qword_1000F0BC0;
  if (!qword_1000F0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BC0);
  }

  return result;
}

uint64_t sub_1000B5380(uint64_t a1)
{
  v2 = sub_1000B51C8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000B53D0()
{
  result = qword_1000F0BC8;
  if (!qword_1000F0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BC8);
  }

  return result;
}

uint64_t sub_1000B5424(uint64_t a1)
{
  if (qword_1000EC8D0 != -1)
  {
    swift_once();
  }

  sub_1000C26D8(xmmword_1000FAAB8);
  v2 = sub_1000B4BD8();

  return _EntityURLRepresentation.init(_:)(0xD000000000000041, 0x80000001000CBC20, a1, v2);
}

uint64_t sub_1000B54E4(uint64_t a1)
{
  sub_1000B7198();
  v2 = sub_1000C0668();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000B5554()
{
  result = qword_1000F0BD0;
  if (!qword_1000F0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BD0);
  }

  return result;
}

uint64_t sub_1000B55A8()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FACB0);
  sub_10000D978(v0, qword_1000FACB0);
  return sub_1000C0878();
}

uint64_t sub_1000B560C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1000C0888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000C0B68();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C2628();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000C0898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_1000C08A8();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_1000C0588();
  v13 = sub_1000C0578();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*sub_1000B5908(uint64_t *a1))()
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
  *(v2 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_1000B597C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B70F0();
  v5 = sub_1000B7198();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000B59E8()
{
  v0 = qword_1000F0AF8;

  return v0;
}

unint64_t sub_1000B5A24()
{
  result = qword_1000F0BD8;
  if (!qword_1000F0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BD8);
  }

  return result;
}

unint64_t sub_1000B5A7C()
{
  result = qword_1000F0BE0;
  if (!qword_1000F0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0BE0);
  }

  return result;
}

uint64_t sub_1000B5B78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000B70F0();
  v7 = sub_1000B7144();
  v8 = sub_1000B7198();
  *v5 = v2;
  v5[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_1000B5C4C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1000B6C94();
  *a2 = result;
  return result;
}

uint64_t sub_1000B5C74(uint64_t a1)
{
  v2 = sub_1000B2990();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000B5D78@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_100004D04(&qword_1000ED148, &qword_1000C44B0);
  v25 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = sub_100004D04(&qword_1000ED150, &qword_1000C44B8);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_100004D04(&qword_1000ED158, &qword_1000C44C0);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v23 = &v23 - v10;
  v11 = sub_100004D04(&qword_1000ED160, &qword_1000C44C8);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v24 = &v23 - v13;
  swift_getKeyPath();
  sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  sub_100004D04(&qword_1000ED170, qword_1000C44D8);
  sub_1000B4690();
  sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0, &protocol conformance descriptor for Label<A, B>);
  sub_10000DABC();
  sub_1000C2398();
  sub_1000C19E8();
  v14 = sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0, &protocol conformance descriptor for ControlToggle<A>);
  sub_1000C1AB8();

  (*(v25 + 8))(v3, v1);
  sub_1000C19E8();
  v33 = v1;
  v34 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v23;
  v17 = v26;
  sub_1000C1A78();

  (*(v27 + 8))(v7, v17);
  v33 = v17;
  v34 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v24;
  v20 = v28;
  sub_1000C1AD8();
  (*(v29 + 8))(v16, v20);
  v33 = v20;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1000C1A98();
  return (*(v31 + 8))(v19, v21);
}

uint64_t sub_1000B62DC()
{
  v0 = sub_1000C19E8();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000B634C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C0888();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0B68();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000C2628();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C0898();
  __chkstk_darwin(v8 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C08A8();
  result = sub_1000C1DD8();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

double sub_1000B6560@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0888();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000C2628();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C0898();
  __chkstk_darwin(v10 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v5 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000C08A8();
  v17[1] = sub_1000C1DD8();
  v17[2] = v11;
  v17[3] = v12 & 1;
  v17[4] = v13;
  v18 = (a1 & 1) == 0;
  sub_1000C1AE8();
  result = *&v19;
  v15 = v20;
  v16 = v21;
  *a2 = v19;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_1000B6830()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C0658();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C0898();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100004D04(&qword_1000F0C00, &qword_1000CAF90);
  sub_1000C0878();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C0318();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v7, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000B4BD8();
  v23 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000C2808();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C0398();
  return v23;
}

uint64_t sub_1000B6C94()
{
  v0 = sub_1000C0658();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v21 - v5;
  v7 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_1000C0888();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C0B68();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000C2628();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_100004D04(&qword_1000F0C00, &qword_1000CAF90);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_1000C08A8();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_1000C0318();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_1000B4BD8();
  return sub_1000C0388();
}

unint64_t sub_1000B70F0()
{
  result = qword_1000F0C08;
  if (!qword_1000F0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C08);
  }

  return result;
}

unint64_t sub_1000B7144()
{
  result = qword_1000F0C10;
  if (!qword_1000F0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C10);
  }

  return result;
}

unint64_t sub_1000B7198()
{
  result = qword_1000F0C18;
  if (!qword_1000F0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C18);
  }

  return result;
}

void sub_1000B7244(uint64_t *a1@<X8>)
{
  v53 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
  __chkstk_darwin(v53);
  v52 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v54 = &v52 - v4;
  v5 = sub_1000C1388();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004D04(&qword_1000EFB88, &qword_1000C7C40);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - v10;
  v12 = [objc_allocWithZone(REMStore) init];
  v13 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v14 = sub_1000C1468();
  (*(*(v14 - 8) + 104))(v11, v13, v14);
  v15 = enum case for REMRemindersListDataView.SortingStyle.displayDate(_:);
  v16 = sub_1000C1338();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v11, v15, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  sub_1000C0FB8();
  v18 = v12;
  v19 = sub_1000C0FA8();
  type metadata accessor for TTRNewWidgetInteractor(0);
  v20 = swift_allocObject();
  v20[2] = 0x4000000000000000;
  v20[3] = v18;
  v55 = v18;
  v20[4] = v19;
  sub_1000A0B24(v11, v20 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_sortingStyle);
  type metadata accessor for TTRNewWidgetInteractor.CompletedCache();
  v21 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000A0B94(v11);
  *(v21 + 112) = 0x4000000000000000;
  *(v21 + 120) = &_swiftEmptyDictionarySingleton;
  *(v20 + OBJC_IVAR____TtC24RemindersWidgetExtension22TTRNewWidgetInteractor_completedCache) = v21;
  v22 = type metadata accessor for TTRNewWidgetRouter();
  v23 = swift_allocObject();
  (*(v6 + 104))(v8, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v5);
  v59[3] = v22;
  v59[4] = &off_1000E99A8;
  v59[0] = v23;
  type metadata accessor for TTRNewWidgetPresenter(0);
  v24 = swift_allocObject();
  v25 = sub_1000A1230(v59, v22);
  v26 = __chkstk_darwin(v25);
  v28 = (&v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = *v28;
  v57 = v22;
  v58 = &off_1000E99A8;
  *&v56 = v30;
  v31 = (v24 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_moreFormatString);

  v60._countAndFlagsBits = 0x65726F4D2040252BLL;
  v61._object = 0x80000001000CDDD0;
  v60._object = 0xE800000000000000;
  v61._countAndFlagsBits = 0xD00000000000001BLL;
  *v31 = sub_1000C0D78(v60, v61);
  v31[1] = v32;
  *(v24 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_relevantTimeDeltaLowerBound) = 0xC0AC200000000000;
  *(v24 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_timeDelta) = xmmword_1000C8D90;
  *(v24 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_overlapDelta) = 0x406E000000000000;
  *(v24 + 16) = v20;
  *(v24 + 24) = &off_1000E8C60;
  sub_100004E0C(&v56, v24 + 32);
  (*(v6 + 32))(v24 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_fetchSubtasks, v8, v5);
  v33 = v53;
  v34 = v24 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_shareeInfoStyle;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0;
  *(v24 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForBaseReminder) = 1;
  *(v24 + OBJC_IVAR____TtC24RemindersWidgetExtension21TTRNewWidgetPresenter_displayDateStyleForInterestingReminder) = 1;
  sub_10002285C(v59);
  *a1 = v24;
  v35 = *(v33 + 20);
  v36 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
  v37 = sub_1000C10B8();
  (*(*(v37 - 8) + 104))(a1 + v35, v36, v37);
  v38 = enum case for REMNavigationSpecifier.today(_:);
  v39 = sub_1000C1118();
  (*(*(v39 - 8) + 104))(a1 + v35, v38, v39);
  if (qword_1000ECA58 != -1)
  {
    swift_once();
  }

  v40 = sub_1000C1568();
  sub_10000D978(v40, qword_1000F0C50);
  v41 = v54;
  sub_1000B7A98(a1, v54);
  v42 = sub_1000C1558();
  v43 = sub_1000C2968();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v44 = 136446466;
    *&v56 = &type metadata for TTRTodayComplicationWidgetAssembly;
    sub_100004D04(&qword_1000F0C68, &qword_1000CB078);
    v45 = sub_1000C26A8();
    v47 = sub_1000B7B58(v45, v46, v59);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    sub_1000B7A98(v41, v52);
    v48 = sub_1000C26A8();
    v50 = v49;
    sub_1000B7AFC(v41);
    v51 = sub_1000B7B58(v48, v50, v59);

    *(v44 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s: Created provider %s", v44, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000B7AFC(v41);
  }
}

uint64_t sub_1000B79D0()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000F0C50);
  v1 = sub_10000D978(v0, qword_1000F0C50);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B7A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7AFC(uint64_t a1)
{
  v2 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B7B58(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000B7C24(v11, 0, 0, 1, a1, a2);
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
    sub_1000B8100(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10002285C(v11);
  return v7;
}

unint64_t sub_1000B7C24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000B7D30(a5, a6);
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
    result = sub_1000C2B58();
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

void *sub_1000B7D30(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000B7D7C(a1, a2);
  sub_1000B7EAC(&off_1000E7788);
  return v3;
}

void *sub_1000B7D7C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000B7F98(v5, 0);
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

  result = sub_1000C2B58();
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
        v10 = sub_1000C26E8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000B7F98(v10, 0);
        result = sub_1000C2B38();
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

void sub_1000B7EAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1000B800C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1000B7F98(uint64_t a1, uint64_t a2)
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

  sub_100004D04(&qword_1000F0C70, &unk_1000CB080);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000B800C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000F0C70, &unk_1000CB080);
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

uint64_t sub_1000B8100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1000B816C(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000C2BF8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_1000BA534(0, v2 & ~(v2 >> 63), 0);
    v3 = _swiftEmptyArrayStorage;
    if (v32)
    {
      v4 = sub_1000C2BA8();
    }

    else
    {
      v4 = sub_1000C2A88();
      v5 = *(v1 + 36);
    }

    v35 = v4;
    v36 = v5;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v2;
      v31 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }

        v14 = v35;
        v15 = v37;
        v33 = v36;
        sub_1000BB254(v34, v35, v36, v37, v1);
        v16 = v34[0];
        v18 = v17;
        v19 = [v16 title];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 string];

          v22 = sub_1000C2678();
          v24 = v23;
        }

        else
        {

          v22 = 0;
          v24 = 0xE000000000000000;
        }

        v25 = v3;
        v38 = v3;
        v26 = v3[2];
        v27 = v25[3];
        if (v26 >= v27 >> 1)
        {
          sub_1000BA534((v27 > 1), v26 + 1, 1);
          v25 = v38;
        }

        v25[2] = v26 + 1;
        v28 = &v25[3 * v26];
        v28[4] = v18;
        v28[5] = v22;
        v28[6] = v24;
        if (v32)
        {
          v1 = v31;
          if (!v15)
          {
            goto LABEL_29;
          }

          v3 = v25;
          if (sub_1000C2BC8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          v13 = v6 + 1;
          sub_100004D04(&qword_1000F0D40, &qword_1000CB650);
          v29 = sub_1000C2588();
          sub_1000C2C28();
          v29(v34, 0);
        }

        else
        {
          v3 = v25;
          v1 = v31;
          sub_1000BB0F0(v14, v33, v15, v31);
          v8 = v7;
          v10 = v9;
          v12 = v11;
          sub_1000BC2E8(v14, v33, v15);
          v35 = v8;
          v36 = v10;
          v37 = v12 & 1;
          v2 = v30;
          v13 = v6 + 1;
        }

        ++v6;
        if (v13 == v2)
        {
          sub_1000BC2E8(v35, v36, v37);
          return;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1000B8480()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000F0C78);
  v1 = sub_10000D978(v0, qword_1000F0C78);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B8548()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FACC8);
  sub_10000D978(v0, qword_1000FACC8);
  return sub_1000C0878();
}

uint64_t sub_1000B85AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_1000C0AF8();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8670, 0, 0);
}

uint64_t sub_1000B8670()
{
  if (qword_1000ECA60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000C1568();
  sub_10000D978(v1, qword_1000F0C78);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v2 = sub_1000C1558();
  v3 = sub_1000C2968();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412546;
    sub_1000C0368();
    v6 = *(v0 + 104);

    *(v4 + 4) = v6;
    *v5 = v6;
    *(v4 + 12) = 1024;
    sub_1000C0368();

    *(v4 + 14) = *(v0 + 233);

    _os_log_impl(&_mh_execute_header, v2, v3, "ReminderSetCompletedIntent reminder %@ setting completed %{BOOL}d", v4, 0x12u);
    sub_1000084C0(v5, &qword_1000F0280, &qword_1000C8CF0);
  }

  else
  {
  }

  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);
  sub_1000BBE30();
  sub_1000C01B8();
  *(v0 + 184) = sub_100026D74((v0 + 16), *(v0 + 40));
  sub_1000C0368();
  *(v0 + 192) = *(v0 + 56);

  sub_1000C0368();
  *(v0 + 234) = *(v0 + 232);
  sub_1000C0AE8();
  *(v0 + 80) = v9;
  *(v0 + 88) = v8;
  *(v0 + 96) = v7;
  sub_1000C2848();
  *(v0 + 200) = sub_1000C2838();
  v11 = sub_1000C2818();

  return _swift_task_switch(sub_1000B8948, v11, v10);
}

uint64_t sub_1000B8948()
{

  sub_1000BC2F4();
  v1 = sub_1000C03C8();
  *(v0 + 208) = v1;
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = sub_1000B8A20;
  v3 = *(v0 + 234);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);

  return sub_100078F74(v4, v3, v5, v1);
}

uint64_t sub_1000B8A20()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  *(*v1 + 224) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_1000B8C44;
  }

  else
  {
    v7 = sub_1000B8BC8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000B8BC8()
{
  sub_10002285C((v0 + 16));
  sub_1000C0338();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B8C44()
{
  sub_10002285C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B8CEC(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DC8C;

  return sub_1000B85AC(a1, v4, v5, v6);
}

uint64_t sub_1000B8DA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BB980();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1000B8DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000DC8C;

  return _UndoableIntent.configuration()(a1, a2, a3);
}

uint64_t sub_1000B8E80(uint64_t a1)
{
  v2 = sub_10001C6DC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000B8EBC()
{
  v0 = sub_1000C0728();
  sub_10000D9B0(v0, qword_1000FACE0);
  sub_10000D978(v0, qword_1000FACE0);
  return sub_1000C0708();
}

id sub_1000B8F20@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1000B8F64@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000D978(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1000B900C(uint64_t a1)
{
  v2 = sub_1000B9D00();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000B9058()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);

  return DisplayRepresentation.init(stringLiteral:)(v2, v1, v3);
}

uint64_t sub_1000B90A8(uint64_t a1)
{
  v2 = sub_1000B9AD4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

id sub_1000B90F4()
{
  result = [objc_allocWithZone(REMStore) initUserInteractive:1];
  qword_1000F0C90 = result;
  return result;
}

uint64_t sub_1000B912C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DCD8;

  return sub_1000BC03C(a1);
}

uint64_t sub_1000B91D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000B028;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1000B9288(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000B9940();
  *v5 = v2;
  v5[1] = sub_10000DC8C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000B933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000DC8C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t REMObjectID.entityIdentifierString.getter()
{
  v1 = sub_1000C0938();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 urlRepresentation];
  sub_1000C0908();

  v7 = sub_1000C08E8();
  (*(v2 + 8))(v5, v1);
  return v7;
}

id static REMObjectID.entityIdentifier(for:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1000C0938();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C0918();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000084C0(v4, &qword_1000ECCE0, &qword_1000C4EF0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1000C08F8(v10);
    v12 = v11;
    v13 = [swift_getObjCClassFromMetadata() objectIDWithURL:v11];

    (*(v6 + 8))(v8, v5);
    return v13;
  }
}

unint64_t sub_1000B96C0()
{
  result = qword_1000F0C98;
  if (!qword_1000F0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0C98);
  }

  return result;
}

unint64_t sub_1000B9718()
{
  result = qword_1000F0CA0;
  if (!qword_1000F0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CA0);
  }

  return result;
}

unint64_t sub_1000B97DC()
{
  result = qword_1000F0CA8;
  if (!qword_1000F0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CA8);
  }

  return result;
}

unint64_t sub_1000B9838()
{
  result = qword_1000F0CB0;
  if (!qword_1000F0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CB0);
  }

  return result;
}

unint64_t sub_1000B9890()
{
  result = qword_1000F0CB8;
  if (!qword_1000F0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CB8);
  }

  return result;
}

unint64_t sub_1000B98E8()
{
  result = qword_1000F0CC0;
  if (!qword_1000F0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CC0);
  }

  return result;
}

unint64_t sub_1000B9940()
{
  result = qword_1000F0CC8;
  if (!qword_1000F0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CC8);
  }

  return result;
}

unint64_t sub_1000B99CC()
{
  result = qword_1000F0CD8;
  if (!qword_1000F0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CD8);
  }

  return result;
}

unint64_t sub_1000B9A24()
{
  result = qword_1000F0CE0;
  if (!qword_1000F0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CE0);
  }

  return result;
}

unint64_t sub_1000B9A7C()
{
  result = qword_1000F0CE8;
  if (!qword_1000F0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CE8);
  }

  return result;
}

unint64_t sub_1000B9AD4()
{
  result = qword_1000F0CF0;
  if (!qword_1000F0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0CF0);
  }

  return result;
}

uint64_t sub_1000B9B5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10007E3A8(255, &qword_1000EFB58, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B9BF8()
{
  result = qword_1000F0D08;
  if (!qword_1000F0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D08);
  }

  return result;
}

unint64_t sub_1000B9C50()
{
  result = qword_1000F0D10;
  if (!qword_1000F0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D10);
  }

  return result;
}

unint64_t sub_1000B9CA8()
{
  result = qword_1000F0D18;
  if (!qword_1000F0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D18);
  }

  return result;
}

unint64_t sub_1000B9D00()
{
  result = qword_1000F0D20;
  if (!qword_1000F0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D20);
  }

  return result;
}

unint64_t sub_1000B9D58()
{
  result = qword_1000F0D28;
  if (!qword_1000F0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D28);
  }

  return result;
}

unint64_t sub_1000B9DB0()
{
  result = qword_1000F0D30;
  if (!qword_1000F0D30)
  {
    sub_100005334(&qword_1000F0D38, qword_1000CB498);
    sub_1000B9A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D30);
  }

  return result;
}

uint64_t sub_1000B9E34()
{
  v1 = sub_1000C0938();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v0 urlRepresentation];
  sub_1000C0908();

  v7 = sub_1000C08E8();
  (*(v2 + 8))(v5, v1);
  return v7;
}

id sub_1000B9F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = static REMObjectID.entityIdentifier(for:)(a1, a2);
  *a3 = result;
  return result;
}

double destroy for TTRReminderAppEntity(id *a1)
{

  return result;
}

void *sub_1000B9FAC(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for TTRReminderAppEntity(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

__n128 initializeWithTake for TTRReminderAppEntity(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRReminderAppEntity(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t destroy for TTRReminderSetCompletedIntent(void *a1)
{
}

uint64_t *sub_1000BA10C(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t *assignWithCopy for TTRReminderSetCompletedIntent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for TTRReminderSetCompletedIntent(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t sub_1000BA224(uint64_t *a1, int a2)
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

uint64_t sub_1000BA26C(uint64_t result, int a2, int a3)
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

char *sub_1000BA300(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BA554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000BA320(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BA648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000BA340(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BADF4(a1, a2, a3, *v3, &qword_1000ECB68, &unk_1000C3680, &type metadata accessor for WidgetFamily);
  *v3 = result;
  return result;
}

void *sub_1000BA384(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BA884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000BA3A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BA9B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000BA3C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BADF4(a1, a2, a3, *v3, &qword_1000ED9A0, &unk_1000C5760, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
  *v3 = result;
  return result;
}

void *sub_1000BA408(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BAB00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000BA428(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BACF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000BA448(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BA73C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000BA468(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BADF4(a1, a2, a3, *v3, &qword_1000ED970, &qword_1000C5730, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  *v3 = result;
  return result;
}

void *sub_1000BA4AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BADF4(a1, a2, a3, *v3, &qword_1000ED980, &qword_1000C5740, type metadata accessor for TTRNewWidgetPresenter.Division);
  *v3 = result;
  return result;
}

void *sub_1000BA4F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BADF4(a1, a2, a3, *v3, &qword_1000EFF98, &unk_1000C8180, type metadata accessor for TTRNewWidgetTimelineEntry);
  *v3 = result;
  return result;
}

char *sub_1000BA534(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BAFD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000BA554(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000F0D70, &qword_1000CB698);
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

char *sub_1000BA648(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000F0D68, &qword_1000CB690);
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

void *sub_1000BA73C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004D04(&qword_1000ED940, &unk_1000C56D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_100004D04(&qword_1000ED948, &unk_1000C7D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000BA884(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004D04(&qword_1000F0D80, &qword_1000CB6B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100004D04(&qword_1000F0D88, &qword_1000CB6B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000BA9B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004D04(&qword_1000F0D90, &qword_1000CB6C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_100004D04(&qword_1000EFC10, &qword_1000C7D90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000BAB00(void *result, int64_t a2, char a3, void *a4)
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

  sub_100004D04(&qword_1000F0D78, &unk_1000CB6A0);
  v10 = *(sub_100004D04(&qword_1000ED918, &qword_1000C56A8) - 8);
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
  v15 = *(sub_100004D04(&qword_1000ED918, &qword_1000C56A8) - 8);
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

char *sub_1000BACF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000F0D98, &qword_1000CB6C8);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000BADF4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004D04(a5, a6);
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

char *sub_1000BAFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000F0D48, &qword_1000CB658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void sub_1000BB0F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1000C2BD8() == *(a4 + 36))
    {
      sub_1000C2BE8();
      sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
      swift_dynamicCast();
      sub_1000799F0(v6);
      v5 = v4;

      if (v5)
      {
        sub_1000C2BB8();
        sub_1000C2C08();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1000C2A98();
}

void sub_1000BB254(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_1000C2C18();
      sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
      swift_dynamicCast();
      sub_10007E3A8(0, &qword_1000EFB90, REMReminder_ptr);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_1000C2BD8() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1000C2BE8();
  sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
  swift_dynamicCast();
  a2 = sub_1000799F0(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

uint64_t sub_1000BB438(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a4;
  *(&v38 + 1) = a2;
  v39 = a3;
  *&v38 = a1;
  v4 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  __chkstk_darwin(v4 - 8);
  v37 = &v29 - v5;
  v41 = sub_1000C0658();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v29 = &v29 - v16;
  v18 = sub_1000C0898();
  v35 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v36 = sub_100004D04(&qword_1000F0D50, &unk_1000CB668);
  sub_1000C0878();
  v34 = *(v19 + 56);
  v34(v17, 1, 1, v18);
  v20 = sub_1000C0318();
  *&v43 = 0;
  v42 = 0uLL;
  v21 = *(*(v20 - 8) + 56);
  v30 = v14;
  v21(v14, 1, 1, v20);
  v21(v11, 1, 1, v20);
  v33 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v6 + 104);
  v31 = v6 + 104;
  v32 = v22;
  v22(v8);
  sub_1000B9D00();
  v23 = v29;
  v36 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);

  sub_1000C0878();
  v34(v23, 1, 1, v35);
  LOBYTE(v42) = 2;
  v24 = sub_1000C2808();
  (*(*(v24 - 8) + 56))(v37, 1, 1, v24);
  v21(v30, 1, 1, v20);
  v32(v8, v33, v41);
  sub_1000C0398();
  sub_100004D04(&qword_1000F0D58, &qword_1000CB678);
  sub_1000C0218();
  v42 = 0u;
  v43 = 0u;
  v44 = 0;

  sub_1000C0208();
  sub_1000C01C8();
  v25 = v38;
  v42 = v38;
  *&v43 = v39;

  v26 = v25;

  v27 = v36;
  sub_1000C0378();
  LOBYTE(v42) = v40;
  sub_1000C0378();

  return v27;
}

uint64_t sub_1000BB980()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C0658();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v23 = &v22 - v12;
  v14 = sub_1000C0898();
  v28 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v29 = sub_100004D04(&qword_1000F0D50, &unk_1000CB668);
  sub_1000C0878();
  v27 = *(v15 + 56);
  v27(v13, 1, 1, v14);
  v16 = sub_1000C0318();
  *&v33 = 0;
  v32 = 0uLL;
  v17 = *(*(v16 - 8) + 56);
  v17(v10, 1, 1, v16);
  v17(v7, 1, 1, v16);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v18 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v18;
  v18(v4);
  sub_1000B9D00();
  v19 = v23;
  v29 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v27(v19, 1, 1, v28);
  LOBYTE(v32) = 2;
  v20 = sub_1000C2808();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v17(v10, 1, 1, v16);
  v25(v4, v26, v31);
  sub_1000C0398();
  sub_100004D04(&qword_1000F0D58, &qword_1000CB678);
  sub_1000C0218();
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  sub_1000C0208();
  sub_1000C01C8();
  return v29;
}

uint64_t sub_1000BBE30()
{
  v0 = sub_1000C0FE8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1028();
  sub_1000C1018();
  v4 = enum case for REMRemindersWidgetUserOperation.completeReminder(_:);
  v5 = sub_1000C1538();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = *(v1 + 104);
  v6(v3, enum case for REMAnalyticsEvent.remindersWidgetUserOperation(_:), v0);
  sub_1000C1008();

  v7 = *(v1 + 8);
  v7(v3, v0);
  sub_1000C1018();
  *v3 = 0xD00000000000001DLL;
  *(v3 + 1) = 0x80000001000CB600;
  *(v3 + 2) = 0x746567646977;
  *(v3 + 3) = 0xE600000000000000;
  *(v3 + 4) = 0x704163696C627570;
  *(v3 + 5) = 0xEF746E65746E4970;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  v6(v3, enum case for REMAnalyticsEvent.appIntents(_:), v0);
  sub_1000C1008();

  return (v7)(v3, v0);
}

uint64_t sub_1000BC03C(uint64_t a1)
{
  *(v1 + 24) = a1;

  return _swift_task_switch(sub_1000BC0CC, 0, 0);
}

uint64_t sub_1000BC0CC()
{
  if (qword_1000ECA78 != -1)
  {
    swift_once();
  }

  v1 = qword_1000F0C90;
  sub_10007E3A8(0, &qword_1000EFB58, REMObjectID_ptr);
  isa = sub_1000C27A8().super.isa;
  *(v0 + 16) = 0;
  v3 = [v1 fetchRemindersWithObjectIDs:isa error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    sub_10007E3A8(0, &qword_1000EFB90, REMReminder_ptr);
    sub_1000B9B5C(&qword_1000EFB60, &protocol conformance descriptor for NSObject);
    v5 = sub_1000C2578();
    v6 = v4;

    sub_1000B816C(v5);
    v8 = v7;

    v9 = *(v0 + 8);

    return v9(v8);
  }

  else
  {
    v11 = v4;
    sub_1000C0868();

    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

double sub_1000BC2E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1000BC2F4()
{
  result = qword_1000F0D60;
  if (!qword_1000F0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0D60);
  }

  return result;
}

uint64_t sub_1000BC38C@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v48 = sub_1000C0888();
  v1 = *(v48 - 8);
  __chkstk_darwin(v48);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C0B68();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000C2628();
  __chkstk_darwin(v5 - 8);
  v52 = sub_1000C0898();
  v43 = *(v52 - 8);
  __chkstk_darwin(v52);
  v38 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100004D04(&qword_1000F0DA0, &qword_1000CB730);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = v34 - v7;
  v9 = sub_100004D04(&qword_1000F0DA8, &qword_1000CB738);
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  __chkstk_darwin(v9);
  v37 = v34 - v11;
  v12 = sub_100004D04(&qword_1000F0DB0, &qword_1000CB740);
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  __chkstk_darwin(v12);
  v40 = v34 - v14;
  v15 = sub_100004D04(&qword_1000F0DB8, &qword_1000CB748);
  v16 = *(v15 - 8);
  v49 = v15;
  v50 = v16;
  __chkstk_darwin(v15);
  v42 = v34 - v17;
  sub_100004D04(&qword_1000F0DC0, &unk_1000CB750);
  sub_100008478(&qword_1000F0DC8, &qword_1000F0DC0, &unk_1000CB750, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_1000C24C8();
  sub_1000C2618();
  sub_1000C0B58();
  v36 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v18 = *(v1 + 104);
  v34[1] = v1 + 104;
  v35 = v18;
  v19 = v3;
  v20 = v3;
  v21 = v48;
  v18(v20);
  v22 = v38;
  sub_1000C08A8();
  v23 = sub_100008478(&qword_1000F0DD0, &qword_1000F0DA0, &qword_1000CB730, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v24 = v39;
  sub_1000C1B78();
  v43 = *(v43 + 8);
  (v43)(v22, v52);
  (*(v41 + 8))(v8, v24);
  sub_1000C2618();
  sub_1000C0B58();
  v35(v19, v36, v21);
  sub_1000C08A8();
  v53 = v24;
  v54 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v40;
  v27 = v44;
  v28 = v37;
  sub_1000C1B68();
  (v43)(v22, v52);
  (*(v45 + 8))(v28, v27);
  v53 = v27;
  v54 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v42;
  v31 = v46;
  sub_1000C1B98();
  (*(v47 + 8))(v26, v31);
  v53 = v31;
  v54 = v29;
  swift_getOpaqueTypeConformance2();
  v32 = v49;
  sub_1000C1B88();
  return (*(v50 + 8))(v30, v32);
}

uint64_t sub_1000BCAE8()
{
  v0 = sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  v1 = sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0, &protocol conformance descriptor for Label<A, B>);
  v2 = sub_1000A1674();

  return ControlWidgetButton.init<>(action:label:)(v2, sub_1000BCBA0, 0, v0, &type metadata for CreateQuickReminderIntent, v1, v2);
}

uint64_t sub_1000BCBF4@<X0>(uint64_t a1@<X8>)
{
  v6._countAndFlagsBits = 0x696D65522077654ELL;
  v6._object = 0xEC0000007265646ELL;
  v7._object = 0x80000001000CF4B0;
  v7._countAndFlagsBits = 0xD000000000000032;
  sub_1000C0D78(v6, v7);
  sub_100012814();
  result = sub_1000C1DE8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000BCC80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C2038();
  *a1 = result;
  return result;
}

uint64_t sub_1000BCCC4()
{
  sub_100005334(&qword_1000F0DB8, &qword_1000CB748);
  sub_100005334(&qword_1000F0DB0, &qword_1000CB740);
  sub_100005334(&qword_1000F0DA8, &qword_1000CB738);
  sub_100005334(&qword_1000F0DA0, &qword_1000CB730);
  sub_100008478(&qword_1000F0DD0, &qword_1000F0DA0, &qword_1000CB730, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t *sub_1000BCE18(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;
    v28 = v27 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = sub_1000C2378();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v71 = a1;
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    *(v9 + 1) = *(a2 + v8 + 16);
    *(v9 + 4) = *(a2 + v8 + 32);
    v12 = type metadata accessor for TTRNewWidgetViewModel(0);
    v13 = v12[7];
    v14 = sub_1000C0E58();
    v15 = *(*(v14 - 8) + 16);

    v15(&v9[v13], &v10[v13], v14);
    v16 = v12[8];
    v17 = &v9[v16];
    v18 = &v10[v16];
    v19 = *(v18 + 1);
    *v17 = *v18;
    *(v17 + 1) = v19;
    v20 = v12[9];
    v21 = &v9[v20];
    v22 = &v10[v20];
    v23 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v24 = *(v23 - 1);
    v25 = *(v24 + 48);

    if (v25(v22, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v21, v22, *(*(v26 - 8) + 64));
    }

    else
    {
      v69 = v24;
      v29 = *v22;
      v30 = v22[1];
      *v21 = *v22;
      v21[1] = v30;
      v67 = v23[6];
      v31 = sub_1000C0818();
      v64 = *(v31 - 8);
      v65 = *(v64 + 48);
      v32 = v29;
      v33 = v30;
      if (v65(v22 + v67, 1, v31))
      {
        v34 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v21 + v67, v22 + v67, *(*(v34 - 8) + 64));
      }

      else
      {
        (*(v64 + 16))(v21 + v67, v22 + v67, v31);
        (*(v64 + 56))(v21 + v67, 0, 1, v31);
      }

      v35 = v23[7];
      v36 = sub_1000C0938();
      (*(*(v36 - 8) + 16))(v21 + v35, v22 + v35, v36);
      v37 = v23[8];
      v38 = *(v22 + v37);
      *(v21 + v37) = v38;
      *(v21 + v23[9]) = *(v22 + v23[9]);
      *(v21 + v23[10]) = *(v22 + v23[10]);
      *(v21 + v23[11]) = *(v22 + v23[11]);
      v39 = *(v69 + 56);
      v40 = v38;
      v39(v21, 0, 1, v23);
    }

    v41 = v12[10];
    v70 = *&v10[v41];
    *&v9[v41] = v70;
    v42 = v12[11];
    v43 = &v9[v42];
    v44 = &v10[v42];
    v45 = *(v44 + 1);
    *v43 = *v44;
    *(v43 + 1) = v45;
    v46 = v12[12];
    v68 = *&v10[v46];
    *&v9[v46] = v68;
    v47 = v12[13];
    v48 = &v9[v47];
    v49 = &v10[v47];
    v50 = *(v49 + 1);
    *v48 = *v49;
    *(v48 + 1) = v50;
    v51 = v12[14];
    v52 = &v9[v51];
    v53 = &v10[v51];
    v54 = *(v53 + 1);
    *v52 = *v53;
    *(v52 + 1) = v54;
    v9[v12[15]] = v10[v12[15]];
    v55 = v12[16];
    v56 = &v9[v55];
    v57 = &v10[v55];
    v58 = *(v57 + 1);
    *v56 = *v57;
    *(v56 + 1) = v58;
    *&v9[v12[17]] = *&v10[v12[17]];
    v59 = v12[18];
    v60 = sub_1000C0938();
    v66 = *(*(v60 - 8) + 16);
    v61 = v70;

    v62 = v68;

    v66(&v9[v59], &v10[v59], v60);
    *&v9[v12[19]] = *&v10[v12[19]];
    v9[v12[20]] = v10[v12[20]];

    return v71;
  }

  return v28;
}

double sub_1000BD2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C2378();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a1 + *(a2 + 20);

  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = (v5 + v6[9]);
  v10 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {

    v11 = v10[6];
    v12 = sub_1000C0818();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }

    v14 = v10[7];
    v15 = sub_1000C0938();
    (*(*(v15 - 8) + 8))(v9 + v14, v15);
  }

  v16 = v6[18];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);

  return result;
}

uint64_t sub_1000BD59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C2378();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v69 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a2 + v7);
  v11 = *(v9 + 8);
  *v8 = v10;
  *(v8 + 8) = v11;
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 32) = *(v9 + 32);
  v12 = type metadata accessor for TTRNewWidgetViewModel(0);
  v13 = v12[7];
  v14 = sub_1000C0E58();
  v15 = *(*(v14 - 8) + 16);

  v15(v8 + v13, v9 + v13, v14);
  v16 = v12[8];
  v17 = (v8 + v16);
  v18 = (v9 + v16);
  v19 = v18[1];
  *v17 = *v18;
  v17[1] = v19;
  v20 = v12[9];
  v21 = (v8 + v20);
  v22 = (v9 + v20);
  v23 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v24 = *(v23 - 1);
  v25 = *(v24 + 48);

  if (v25(v22, 1, v23))
  {
    v26 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v21, v22, *(*(v26 - 8) + 64));
  }

  else
  {
    v67 = v24;
    v27 = *v22;
    v28 = v22[1];
    *v21 = *v22;
    v21[1] = v28;
    v65 = v23[6];
    v29 = sub_1000C0818();
    v62 = *(v29 - 8);
    v63 = *(v62 + 48);
    v30 = v27;
    v31 = v28;
    if (v63(v22 + v65, 1, v29))
    {
      v32 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v21 + v65, v22 + v65, *(*(v32 - 8) + 64));
    }

    else
    {
      (*(v62 + 16))(v21 + v65, v22 + v65, v29);
      (*(v62 + 56))(v21 + v65, 0, 1, v29);
    }

    v33 = v23[7];
    v34 = sub_1000C0938();
    (*(*(v34 - 8) + 16))(v21 + v33, v22 + v33, v34);
    v35 = v23[8];
    v36 = *(v22 + v35);
    *(v21 + v35) = v36;
    *(v21 + v23[9]) = *(v22 + v23[9]);
    *(v21 + v23[10]) = *(v22 + v23[10]);
    *(v21 + v23[11]) = *(v22 + v23[11]);
    v37 = *(v67 + 56);
    v38 = v36;
    v37(v21, 0, 1, v23);
  }

  v39 = v12[10];
  v68 = *(v9 + v39);
  *(v8 + v39) = v68;
  v40 = v12[11];
  v41 = (v8 + v40);
  v42 = (v9 + v40);
  v43 = v42[1];
  *v41 = *v42;
  v41[1] = v43;
  v44 = v12[12];
  v66 = *(v9 + v44);
  *(v8 + v44) = v66;
  v45 = v12[13];
  v46 = (v8 + v45);
  v47 = (v9 + v45);
  v48 = v47[1];
  *v46 = *v47;
  v46[1] = v48;
  v49 = v12[14];
  v50 = (v8 + v49);
  v51 = (v9 + v49);
  v52 = v51[1];
  *v50 = *v51;
  v50[1] = v52;
  *(v8 + v12[15]) = *(v9 + v12[15]);
  v53 = v12[16];
  v54 = (v8 + v53);
  v55 = (v9 + v53);
  v56 = v55[1];
  *v54 = *v55;
  v54[1] = v56;
  *(v8 + v12[17]) = *(v9 + v12[17]);
  v57 = v12[18];
  v58 = sub_1000C0938();
  v64 = *(*(v58 - 8) + 16);
  v59 = v68;

  v60 = v66;

  v64(v8 + v57, v9 + v57, v58);
  *(v8 + v12[19]) = *(v9 + v12[19]);
  *(v8 + v12[20]) = *(v9 + v12[20]);

  return v69;
}

uint64_t sub_1000BDA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C2378();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v84 = a1;
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *(a2 + v7);
  *(v8 + 1) = *(a2 + v7 + 8);

  *(v8 + 2) = *(v9 + 2);
  *(v8 + 3) = *(v9 + 3);
  *(v8 + 4) = *(v9 + 4);

  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = v10[7];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v13 = v10[8];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  *(v14 + 1) = *(v15 + 1);

  v16 = v10[9];
  v17 = &v8[v16];
  v18 = &v9[v16];
  v19 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 48);
  v22 = v21(v17, 1, v19);
  v23 = v21(v18, 1, v19);
  if (!v22)
  {
    if (v23)
    {
      sub_1000BFAC8(v17, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v30 = *v18;
    v31 = *v17;
    *v17 = *v18;
    v32 = v30;

    v33 = *(v17 + 1);
    v34 = *(v18 + 1);
    *(v17 + 1) = v34;
    v35 = v34;

    v36 = v19[6];
    v37 = sub_1000C0818();
    v80 = *(v37 - 8);
    v38 = *(v80 + 48);
    v82 = v38(&v17[v36], 1, v37);
    v39 = v38(&v18[v36], 1, v37);
    if (v82)
    {
      if (!v39)
      {
        (*(v80 + 16))(&v17[v36], &v18[v36], v37);
        (*(v80 + 56))(&v17[v36], 0, 1, v37);
        goto LABEL_18;
      }

      v40 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v41 = &v17[v36];
      v42 = &v18[v36];
    }

    else
    {
      if (!v39)
      {
        (*(v80 + 24))(&v17[v36], &v18[v36], v37);
        goto LABEL_18;
      }

      (*(v80 + 8))(&v17[v36], v37);
      v40 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v41 = &v17[v36];
      v42 = &v18[v36];
    }

    memcpy(v41, v42, v40);
LABEL_18:
    v49 = v19[7];
    v50 = sub_1000C0938();
    (*(*(v50 - 8) + 24))(&v17[v49], &v18[v49], v50);
    v51 = v19[8];
    v52 = *&v17[v51];
    v53 = *&v18[v51];
    *&v17[v51] = v53;
    v54 = v53;

    *&v17[v19[9]] = *&v18[v19[9]];
    v17[v19[10]] = v18[v19[10]];
    v17[v19[11]] = v18[v19[11]];
    goto LABEL_19;
  }

  if (v23)
  {
LABEL_7:
    v29 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v17, v18, *(*(v29 - 8) + 64));
    goto LABEL_19;
  }

  v24 = *v18;
  *v17 = *v18;
  v81 = *(v18 + 1);
  *(v17 + 1) = v81;
  v83 = v19[6];
  v25 = sub_1000C0818();
  v78 = *(v25 - 8);
  v79 = *(v78 + 48);
  v26 = v24;
  v27 = v81;
  if (v79(&v18[v83], 1, v25))
  {
    v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v17[v83], &v18[v83], *(*(v28 - 8) + 64));
  }

  else
  {
    (*(v78 + 16))(&v17[v83], &v18[v83], v25);
    (*(v78 + 56))(&v17[v83], 0, 1, v25);
  }

  v43 = v19[7];
  v44 = sub_1000C0938();
  (*(*(v44 - 8) + 16))(&v17[v43], &v18[v43], v44);
  v45 = v19[8];
  v46 = *&v18[v45];
  *&v17[v45] = v46;
  *&v17[v19[9]] = *&v18[v19[9]];
  v17[v19[10]] = v18[v19[10]];
  v17[v19[11]] = v18[v19[11]];
  v47 = *(v20 + 56);
  v48 = v46;
  v47(v17, 0, 1, v19);
LABEL_19:
  v55 = v10[10];
  v56 = *&v9[v55];
  v57 = *&v8[v55];
  *&v8[v55] = v56;
  v58 = v56;

  v59 = v10[11];
  v60 = &v8[v59];
  v61 = &v9[v59];
  *v60 = *v61;
  *(v60 + 1) = *(v61 + 1);

  v62 = v10[12];
  v63 = *&v8[v62];
  v64 = *&v9[v62];
  *&v8[v62] = v64;
  v65 = v64;

  v66 = v10[13];
  v67 = &v8[v66];
  v68 = &v9[v66];
  *v67 = *v68;
  *(v67 + 1) = *(v68 + 1);

  v69 = v10[14];
  v70 = &v8[v69];
  v71 = &v9[v69];
  *v70 = *v71;
  *(v70 + 1) = *(v71 + 1);

  v8[v10[15]] = v9[v10[15]];
  v72 = v10[16];
  v73 = &v8[v72];
  v74 = &v9[v72];
  *v73 = *v74;
  *(v73 + 1) = *(v74 + 1);

  *&v8[v10[17]] = *&v9[v10[17]];

  v75 = v10[18];
  v76 = sub_1000C0938();
  (*(*(v76 - 8) + 24))(&v8[v75], &v9[v75], v76);
  *&v8[v10[19]] = *&v9[v10[19]];

  v8[v10[20]] = v9[v10[20]];
  return v84;
}

uint64_t sub_1000BE190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C2378();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  *(v8 + 16) = *(a2 + v7 + 16);
  *(v8 + 24) = *(a2 + v7 + 24);
  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = v10[7];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 32))(v8 + v11, v9 + v11, v12);
  *(v8 + v10[8]) = *(v9 + v10[8]);
  v13 = v10[9];
  v14 = (v8 + v13);
  v15 = (v9 + v13);
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    v18 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v29 = a1;
    v19 = v15[1];
    *v14 = *v15;
    v14[1] = v19;
    v20 = v16[6];
    v21 = sub_1000C0818();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v15 + v20, 1, v21))
    {
      v23 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v14 + v20, v15 + v20, *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v22 + 32))(v14 + v20, v15 + v20, v21);
      (*(v22 + 56))(v14 + v20, 0, 1, v21);
    }

    v24 = v16[7];
    v25 = sub_1000C0938();
    (*(*(v25 - 8) + 32))(v14 + v24, v15 + v24, v25);
    *(v14 + v16[8]) = *(v15 + v16[8]);
    *(v14 + v16[9]) = *(v15 + v16[9]);
    *(v14 + v16[10]) = *(v15 + v16[10]);
    *(v14 + v16[11]) = *(v15 + v16[11]);
    (*(v17 + 56))(v14, 0, 1, v16);
    a1 = v29;
  }

  *(v8 + v10[10]) = *(v9 + v10[10]);
  *(v8 + v10[11]) = *(v9 + v10[11]);
  *(v8 + v10[12]) = *(v9 + v10[12]);
  *(v8 + v10[13]) = *(v9 + v10[13]);
  *(v8 + v10[14]) = *(v9 + v10[14]);
  *(v8 + v10[15]) = *(v9 + v10[15]);
  *(v8 + v10[16]) = *(v9 + v10[16]);
  *(v8 + v10[17]) = *(v9 + v10[17]);
  v26 = v10[18];
  v27 = sub_1000C0938();
  (*(*(v27 - 8) + 32))(v8 + v26, v9 + v26, v27);
  *(v8 + v10[19]) = *(v9 + v10[19]);
  *(v8 + v10[20]) = *(v9 + v10[20]);
  return a1;
}

uint64_t sub_1000BE564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C2378();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v77 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a2 + v7 + 8);
  *v8 = *(a2 + v7);
  *(v8 + 8) = v10;

  *(v8 + 16) = *(v9 + 16);
  *(v8 + 32) = *(v9 + 32);

  v11 = type metadata accessor for TTRNewWidgetViewModel(0);
  v12 = v11[7];
  v13 = sub_1000C0E58();
  (*(*(v13 - 8) + 40))(v8 + v12, v9 + v12, v13);
  v14 = v11[8];
  v15 = (v8 + v14);
  v16 = (v9 + v14);
  v18 = *v16;
  v17 = v16[1];
  *v15 = v18;
  v15[1] = v17;

  v19 = v11[9];
  v20 = (v8 + v19);
  v21 = (v9 + v19);
  v22 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v23 = *(v22 - 1);
  v24 = *(v23 + 48);
  v25 = v24(v20, 1, v22);
  v26 = v24(v21, 1, v22);
  if (!v25)
  {
    if (v26)
    {
      sub_1000BFAC8(v20, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v33 = *v20;
    *v20 = *v21;

    v34 = *(v20 + 1);
    *(v20 + 1) = *(v21 + 1);

    v35 = v22[6];
    v36 = sub_1000C0818();
    v75 = *(v36 - 8);
    v37 = *(v75 + 48);
    v76 = v37(&v20[v35], 1, v36);
    v38 = v37(&v21[v35], 1, v36);
    if (v76)
    {
      if (!v38)
      {
        (*(v75 + 32))(&v20[v35], &v21[v35], v36);
        (*(v75 + 56))(&v20[v35], 0, 1, v36);
        goto LABEL_18;
      }

      v39 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v40 = &v20[v35];
      v41 = &v21[v35];
    }

    else
    {
      if (!v38)
      {
        (*(v75 + 40))(&v20[v35], &v21[v35], v36);
        goto LABEL_18;
      }

      (*(v75 + 8))(&v20[v35], v36);
      v39 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v40 = &v20[v35];
      v41 = &v21[v35];
    }

    memcpy(v40, v41, v39);
LABEL_18:
    v44 = v22[7];
    v45 = sub_1000C0938();
    (*(*(v45 - 8) + 40))(&v20[v44], &v21[v44], v45);
    v46 = v22[8];
    v47 = *&v20[v46];
    *&v20[v46] = *&v21[v46];

    *&v20[v22[9]] = *&v21[v22[9]];
    v20[v22[10]] = v21[v22[10]];
    v20[v22[11]] = v21[v22[11]];
    goto LABEL_19;
  }

  if (v26)
  {
LABEL_7:
    v32 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v20, v21, *(*(v32 - 8) + 64));
    goto LABEL_19;
  }

  v27 = *(v21 + 1);
  *v20 = *v21;
  *(v20 + 1) = v27;
  v28 = v22[6];
  v29 = sub_1000C0818();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(&v21[v28], 1, v29))
  {
    v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v20[v28], &v21[v28], *(*(v31 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(&v20[v28], &v21[v28], v29);
    (*(v30 + 56))(&v20[v28], 0, 1, v29);
  }

  v42 = v22[7];
  v43 = sub_1000C0938();
  (*(*(v43 - 8) + 32))(&v20[v42], &v21[v42], v43);
  *&v20[v22[8]] = *&v21[v22[8]];
  *&v20[v22[9]] = *&v21[v22[9]];
  v20[v22[10]] = v21[v22[10]];
  v20[v22[11]] = v21[v22[11]];
  (*(v23 + 56))(v20, 0, 1, v22);
LABEL_19:
  v48 = v11[10];
  v49 = *(v8 + v48);
  *(v8 + v48) = *(v9 + v48);

  v50 = v11[11];
  v51 = (v8 + v50);
  v52 = (v9 + v50);
  v54 = *v52;
  v53 = v52[1];
  *v51 = v54;
  v51[1] = v53;

  v55 = v11[12];
  v56 = *(v8 + v55);
  *(v8 + v55) = *(v9 + v55);

  v57 = v11[13];
  v58 = (v8 + v57);
  v59 = (v9 + v57);
  v61 = *v59;
  v60 = v59[1];
  *v58 = v61;
  v58[1] = v60;

  v62 = v11[14];
  v63 = (v8 + v62);
  v64 = (v9 + v62);
  v66 = *v64;
  v65 = v64[1];
  *v63 = v66;
  v63[1] = v65;

  *(v8 + v11[15]) = *(v9 + v11[15]);
  v67 = v11[16];
  v68 = (v8 + v67);
  v69 = (v9 + v67);
  v71 = *v69;
  v70 = v69[1];
  *v68 = v71;
  v68[1] = v70;

  *(v8 + v11[17]) = *(v9 + v11[17]);

  v72 = v11[18];
  v73 = sub_1000C0938();
  (*(*(v73 - 8) + 40))(v8 + v72, v9 + v72, v73);
  *(v8 + v11[19]) = *(v9 + v11[19]);

  *(v8 + v11[20]) = *(v9 + v11[20]);
  return v77;
}

uint64_t sub_1000BEC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C2378();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TTRNewWidgetViewModel(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000BED30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C2378();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TTRNewWidgetViewModel(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t _s10WidgetViewVMa_0(uint64_t a1)
{
  result = qword_1000F0E30;
  if (!qword_1000F0E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BEE78(uint64_t a1)
{
  result = sub_1000C2378();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRNewWidgetViewModel(319);
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000BEF5C()
{
  sub_1000C18C8();
  sub_1000BFB28(&qword_1000F0EA0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_1000C1948();
  return v1;
}

void *sub_1000BEFD8@<X0>(_BYTE *a1@<X8>)
{
  sub_1000C18C8();
  sub_1000BFB28(&qword_1000F0EA0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_1000C1948();
  *a1 = v3;
  return result;
}

uint64_t sub_1000BF068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = type metadata accessor for TTRIAnyListComplicationWidgetView(0);
  __chkstk_darwin(v38);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100004D04(&qword_1000F0E68, &qword_1000CB7C0);
  __chkstk_darwin(v40);
  v5 = &v36 - v4;
  v37 = sub_100004D04(&qword_1000F0E70, &qword_1000CB7C8);
  __chkstk_darwin(v37);
  v7 = &v36 - v6;
  v39 = sub_100004D04(&qword_1000F0E78, &qword_1000CB7D0);
  __chkstk_darwin(v39);
  v9 = &v36 - v8;
  v10 = type metadata accessor for TTRAnyListWidget.SystemWidgetView(0);
  __chkstk_darwin(v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000C2378();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v36 - v19;
  (*(v14 + 16))(&v36 - v19, a1, v13, v18);
  v21 = (*(v14 + 88))(v20, v13);
  if (v21 == enum case for WidgetFamily.systemSmall(_:))
  {
    v22 = 0;
LABEL_7:
    v23 = _s10WidgetViewVMa_0(0);
    sub_1000BFA60(a1 + *(v23 + 20), &v12[v10[5]], type metadata accessor for TTRNewWidgetViewModel);
    *v12 = v22;
    v24 = v10[6];
    *&v12[v24] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
    swift_storeEnumTagMultiPayload();
    v25 = &v12[v10[7]];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    v26 = v10[8];
    *&v12[v26] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    v27 = v10[9];
    *&v12[v27] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    sub_1000BFA60(v12, v7, type metadata accessor for TTRAnyListWidget.SystemWidgetView);
    swift_storeEnumTagMultiPayload();
    sub_1000BFB28(&qword_1000F0E90, type metadata accessor for TTRAnyListWidget.SystemWidgetView, &unk_1000C6560);
    sub_1000BFB28(&qword_1000F0E98, type metadata accessor for TTRIAnyListComplicationWidgetView, &unk_1000C4E24);
    sub_1000C1AE8();
    sub_1000BF974(v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_1000BF888();
    sub_1000C1AE8();
    sub_1000BF9E4(v9);
    v28 = type metadata accessor for TTRAnyListWidget.SystemWidgetView;
    v29 = v12;
    return sub_1000BFAC8(v29, v28);
  }

  if (v21 == enum case for WidgetFamily.systemMedium(_:))
  {
    v22 = 1;
    goto LABEL_7;
  }

  if (v21 == enum case for WidgetFamily.systemLarge(_:))
  {
    v22 = 2;
    goto LABEL_7;
  }

  v31 = enum case for WidgetFamily.accessoryRectangular(_:);
  if (v21 != enum case for WidgetFamily.systemExtraLarge(_:) && v21 != enum case for WidgetFamily.accessoryCircular(_:) && v21 != enum case for WidgetFamily.accessoryRectangular(_:) && v21 != enum case for WidgetFamily.accessoryInline(_:))
  {
    (*(v14 + 8))(v20, v13);
  }

  (*(v14 + 104))(v16, v31, v13);
  sub_1000BFB28(&qword_1000F0E80, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_1000C2788();
  sub_1000C2788();
  (*(v14 + 8))(v16, v13);
  if (v43 != v42)
  {
    v44._countAndFlagsBits = 0x7070755320746F4ELL;
    v44._object = 0xED0000646574726FLL;
    v45._object = 0x80000001000CF4F0;
    v45._countAndFlagsBits = 0xD000000000000033;
    *v5 = sub_1000C0D78(v44, v45);
    *(v5 + 1) = v35;
    v5[16] = 0;
    *(v5 + 3) = _swiftEmptyArrayStorage;
    swift_storeEnumTagMultiPayload();
    sub_1000BF888();
    return sub_1000C1AE8();
  }

  v32 = a1 + *(_s10WidgetViewVMa_0(0) + 20);
  v33 = v36;
  sub_1000BFA60(v32, v36, type metadata accessor for TTRNewWidgetViewModel);
  v34 = v38;
  *(v33 + *(v38 + 20)) = 3;
  *(v33 + *(v34 + 24)) = 1;
  sub_1000BFA60(v33, v7, type metadata accessor for TTRIAnyListComplicationWidgetView);
  swift_storeEnumTagMultiPayload();
  sub_1000BFB28(&qword_1000F0E90, type metadata accessor for TTRAnyListWidget.SystemWidgetView, &unk_1000C6560);
  sub_1000BFB28(&qword_1000F0E98, type metadata accessor for TTRIAnyListComplicationWidgetView, &unk_1000C4E24);
  sub_1000C1AE8();
  sub_1000BF974(v9, v5);
  swift_storeEnumTagMultiPayload();
  sub_1000BF888();
  sub_1000C1AE8();
  sub_1000BF9E4(v9);
  v28 = type metadata accessor for TTRIAnyListComplicationWidgetView;
  v29 = v33;
  return sub_1000BFAC8(v29, v28);
}

unint64_t sub_1000BF888()
{
  result = qword_1000F0E88;
  if (!qword_1000F0E88)
  {
    sub_100005334(&qword_1000F0E78, &qword_1000CB7D0);
    sub_1000BFB28(&qword_1000F0E90, type metadata accessor for TTRAnyListWidget.SystemWidgetView, &unk_1000C6560);
    sub_1000BFB28(&qword_1000F0E98, type metadata accessor for TTRIAnyListComplicationWidgetView, &unk_1000C4E24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0E88);
  }

  return result;
}

uint64_t sub_1000BF974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000F0E78, &qword_1000CB7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BF9E4(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000F0E78, &qword_1000CB7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BFA60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000BFAC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000BFB28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000BFB74()
{
  result = qword_1000F0EA8;
  if (!qword_1000F0EA8)
  {
    sub_100005334(&qword_1000F0EB0, &qword_1000CB870);
    sub_1000BFBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0EA8);
  }

  return result;
}

unint64_t sub_1000BFBF8()
{
  result = qword_1000F0EB8;
  if (!qword_1000F0EB8)
  {
    sub_100005334(&qword_1000F0EC0, &qword_1000CB878);
    sub_1000BF888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0EB8);
  }

  return result;
}

uint64_t sub_1000BFCB0(int a1, int a2, int a3, int a4)
{
  if (qword_1000FA9F0 == -1)
  {
    if (qword_1000FA9F8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000C0178();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000FA9F8)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000FA9E8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000C0190();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000FA9D8 < v11;
    if (dword_1000FA9D8 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000FA9DC > a3)
      {
        return 1;
      }

      if (dword_1000FA9DC >= a3)
      {
        return dword_1000FA9E0 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000FA9D8 < a2;
  if (dword_1000FA9D8 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000BFE44(uint64_t result)
{
  v1 = qword_1000FA9F8;
  if (qword_1000FA9F8)
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
      qword_1000FA9F8 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_1000FA9D8, &dword_1000FA9DC, &dword_1000FA9E0);
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