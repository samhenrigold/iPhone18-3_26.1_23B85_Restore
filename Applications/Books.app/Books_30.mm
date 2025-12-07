double sub_10041F838()
{
  swift_beginAccess();

  return result;
}

double sub_10041F870(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

void sub_10041F908(void *a1, void (*a2)(void *))
{
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 snapshotViewAfterScreenUpdates:{0, v6}];
  if (v9)
  {
    v10 = v9;
    v26 = a2;
    v11 = [v9 superview];
    if (!v11)
    {
      v11 = v10;
    }

    v12 = objc_opt_self();
    v13 = [v12 currentTraitCollection];
    [v13 displayCornerRadius];
    v15 = v14;

    [v10 _setContinuousCornerRadius:v15];
    v16 = [v10 layer];
    [v16 setMaskedCorners:12];

    v17 = [v12 currentTraitCollection];
    [v17 displayCornerRadius];
    v19 = v18;

    [v11 _setContinuousCornerRadius:v19];
    v20 = [v11 layer];
    [v20 setMaskedCorners:12];

    v27 = v10;
    v26(v10);

    v21 = v27;
  }

  else
  {
    if (qword_100AD19B8 != -1)
    {
      swift_once();
    }

    v22 = qword_100B23750;
    sub_10079ACF4();
    v23 = sub_10079ACC4();
    v24 = sub_1007A29B4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Couldn't get origin snapshot", v25, 2u);
    }

    (*(v5 + 8))(v8, v4);
    a2(0);
  }
}

uint64_t sub_10041FC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a2;
  v47 = sub_1007A1C54();
  v51 = *(v47 - 8);
  __chkstk_darwin(v47);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1007A1CA4();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1007A1CC4();
  v45 = *(v53 - 8);
  __chkstk_darwin(v53);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v39 - v9;
  v10 = _s5StateO7TurningVMa(0);
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10079ACE4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3;
  v52 = *(v3 + 128);
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v18 = qword_100B23750;
  sub_10079ACF4();
  v19 = sub_10079ACC4();
  v20 = sub_1007A29A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v19, v20, "Waiting for displaySnapshot to finish, current stateIndex %ld", v21, 0xCu);
  }

  (*(v14 + 8))(v16, v13);
  v22 = swift_allocObject();
  v23 = v17;
  swift_weakInit();
  sub_100422408(v42, &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s5StateO7TurningVMa);
  v24 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v25 = swift_allocObject();
  v26 = v52;
  v25[2] = v22;
  v25[3] = v26;
  v25[4] = v43;
  v25[5] = a3;
  sub_1004223A0(v12, v25 + v24, _s5StateO7TurningVMa);
  sub_100017E74();

  v43 = sub_1007A2D74();
  v27 = v41;
  sub_1007A1CB4();
  v28 = v44;
  sub_1007A1D24();
  v52 = *(v45 + 1);
  v52(v27, v53);
  v29 = swift_allocObject();
  v45 = sub_100421F08;
  *(v29 + 16) = sub_100421F08;
  *(v29 + 24) = v25;
  aBlock[4] = sub_100421FC4;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1B598;
  v30 = _Block_copy(aBlock);

  v31 = v46;
  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002293C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  v32 = v49;
  v33 = v47;
  sub_1007A3594();
  v34 = v43;
  sub_1007A2D04();
  _Block_release(v30);

  (*(v51 + 8))(v32, v33);
  (*(v48 + 8))(v31, v50);
  v52(v28, v53);
  v35 = swift_allocObject();
  *(v35 + 16) = v45;
  *(v35 + 24) = v25;
  v37 = *(v23 + 88);
  v36 = *(v23 + 96);
  *(v23 + 88) = sub_100422008;
  *(v23 + 96) = v35;
  return sub_100007020(v37, v36);
}

uint64_t sub_1004202DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a2;
  v47 = sub_1007A1C54();
  v51 = *(v47 - 8);
  __chkstk_darwin(v47);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1007A1CA4();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1007A1CC4();
  v45 = *(v53 - 8);
  __chkstk_darwin(v53);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v39 - v9;
  v10 = _s5StateO8DraggingVMa(0);
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10079ACE4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3;
  v52 = *(v3 + 128);
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v18 = qword_100B23750;
  sub_10079ACF4();
  v19 = sub_10079ACC4();
  v20 = sub_1007A29A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v19, v20, "Waiting for displaySnapshot to finish, current stateIndex %ld", v21, 0xCu);
  }

  (*(v14 + 8))(v16, v13);
  v22 = swift_allocObject();
  v23 = v17;
  swift_weakInit();
  sub_100422408(v42, &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s5StateO8DraggingVMa);
  v24 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v25 = swift_allocObject();
  v26 = v52;
  v25[2] = v22;
  v25[3] = v26;
  v25[4] = v43;
  v25[5] = a3;
  sub_1004223A0(v12, v25 + v24, _s5StateO8DraggingVMa);
  sub_100017E74();

  v43 = sub_1007A2D74();
  v27 = v41;
  sub_1007A1CB4();
  v28 = v44;
  sub_1007A1D24();
  v52 = *(v45 + 1);
  v52(v27, v53);
  v29 = swift_allocObject();
  v45 = sub_10042214C;
  *(v29 + 16) = sub_10042214C;
  *(v29 + 24) = v25;
  aBlock[4] = sub_100422584;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A1B6B0;
  v30 = _Block_copy(aBlock);

  v31 = v46;
  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002293C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100234698();
  v32 = v49;
  v33 = v47;
  sub_1007A3594();
  v34 = v43;
  sub_1007A2D04();
  _Block_release(v30);

  (*(v51 + 8))(v32, v33);
  (*(v48 + 8))(v31, v50);
  v52(v28, v53);
  v35 = swift_allocObject();
  *(v35 + 16) = v45;
  *(v35 + 24) = v25;
  v37 = *(v23 + 88);
  v36 = *(v23 + 96);
  *(v23 + 88) = sub_100422588;
  *(v23 + 96) = v35;
  return sub_100007020(v37, v36);
}

void sub_100420978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a1;
  *&v64 = sub_10079ACE4();
  v57 = *(v64 - 8);
  __chkstk_darwin(v64);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1007A1C54();
  v71 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1007A1CA4();
  v62 = *(v68 - 8);
  __chkstk_darwin(v68);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s5StateO9ResettingVMa(0);
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  __chkstk_darwin(v8 - 8);
  v66 = sub_1007A1CC4();
  v70 = *(v66 - 8);
  __chkstk_darwin(v66);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v54 - v13;
  v15 = a2;
  v16 = *(a2 + 48);
  swift_getKeyPath();
  aBlock = v16;
  sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);
  v69 = a3;

  sub_100797A14();

  v17 = sub_10079FE94();
  v19 = v18;
  if (v17 == sub_10079FE94() && v19 == v20)
  {

LABEL_5:
    sub_1003ADD78(2);
    v57 = *(v15 + 128);
    v22 = v57;
    v55 = sub_100017E74();
    v56 = sub_1007A2D74();
    sub_1007A1CB4();
    v65 = v14;
    sub_1007A1D24();
    v54 = *(v70 + 8);
    v70 += 8;
    v23 = v66;
    v54(v11, v66);
    v24 = swift_allocObject();
    v58 = v15;
    swift_weakInit();
    v64 = *(v15 + 16);
    sub_100422408(v60, &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s5StateO9ResettingVMa);
    v25 = v67;
    v26 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = v22;
    sub_1004223A0(&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, _s5StateO9ResettingVMa);
    *(v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v64;
    v76 = sub_100422260;
    v77 = v27;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_1003323D0;
    v75 = &unk_100A1B728;
    v28 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v29 = v61;
    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    v60 = sub_10002293C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v59 = sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    *&v64 = sub_100234698();
    v30 = v63;
    sub_1007A3594();
    v31 = v65;
    v32 = v56;
    sub_1007A2D04();
    _Block_release(v28);

    v33 = *(v71 + 8);
    v71 += 8;
    v56 = v33;
    (v33)(v30, v25);
    v62 = *(v62 + 8);
    (v62)(v29, v68);
    v34 = v54;
    v54(v31, v23);
    v55 = sub_1007A2D74();
    sub_1007A1CB4();
    sub_1003AE058();
    v36 = v35;
    v37 = [objc_allocWithZone(CASpringAnimation) init];
    [v37 setMass:1.0];
    [v37 setStiffness:300.0];
    [v37 setDamping:35.0];
    [v37 setInitialVelocity:v36];
    [v37 settlingDuration];

    sub_1007A1D24();
    v38 = v11;
    v39 = v34;
    v34(v38, v23);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v42 = v57;
    v41[2] = v40;
    v41[3] = v42;
    v43 = v69;
    v41[4] = sub_100422258;
    v41[5] = v43;
    v76 = sub_100422334;
    v77 = v41;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_1003323D0;
    v75 = &unk_100A1B778;
    v44 = _Block_copy(&aBlock);

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    v45 = v67;
    sub_1007A3594();
    v46 = v65;
    v47 = v55;
    sub_1007A2D04();
    _Block_release(v44);

    (v56)(v30, v45);
    (v62)(v29, v68);
    v39(v46, v66);
    goto LABEL_11;
  }

  v21 = sub_1007A3AB4();

  if (v21)
  {
    goto LABEL_5;
  }

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v48 = qword_100B23750;
  v49 = v56;
  sub_10079ACF4();
  v50 = sub_10079ACC4();
  v51 = sub_1007A29A4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_1000070F4(0x3A5F287465736572, 0xEB00000000293A5FLL, &aBlock);
    _os_log_impl(&_mh_execute_header, v50, v51, "%s - slide disabled", v52, 0xCu);
    sub_1000074E0(v53);
  }

  (*(v57 + 8))(v49, v64);
  sub_10041E584(v69);
LABEL_11:
}

double sub_1004213F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = sub_1001F1160(&qword_100AD8A80, &qword_1008246B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v32 = sub_10079ACE4();
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = *(a2 + 48);
  swift_getKeyPath();
  v34 = v14;
  sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);

  sub_100797A14();

  v15 = sub_10079FE94();
  v17 = v16;
  if (v15 == sub_10079FE94() && v17 == v18)
  {

    goto LABEL_5;
  }

  v19 = sub_1007A3AB4();

  if (v19)
  {
LABEL_5:
    if (*(v33 + *(_s5StateO8DraggingVMa(0) + 32)))
    {
      if (qword_100AD19B8 != -1)
      {
        swift_once();
      }

      v20 = qword_100B23750;
      sub_10079ACF4();
      v21 = sub_10079ACC4();
      v22 = sub_1007A29A4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Ignoring DisplayingDragSnapshot change because it's just a translation update", v23, 2u);
      }

      (*(v8 + 8))(v13, v32);
    }

    else
    {
      sub_1004202DC(v33, sub_10042212C, a3);
    }

    goto LABEL_17;
  }

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v24 = qword_100B23750;
  sub_10079ACF4();
  v25 = sub_10079ACC4();
  v26 = sub_1007A29A4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1000070F4(0xD000000000000022, 0x80000001008D3BB0, &v34);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s - slide disabled", v27, 0xCu);
    sub_1000074E0(v28);
  }

  (*(v8 + 8))(v10, v32);
  sub_100422408(v33, v7, _s5StateO8DraggingVMa);
  v29 = _s5StateO8DraggingVMa(0);
  (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
  sub_10041D948(v7, a3, 5u);
  sub_100007840(v7, &qword_100AD8A80, &qword_1008246B0);
LABEL_17:

  return result;
}

void sub_1004218D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v5 = sub_1001F1160(&qword_100AD8A80, &qword_1008246B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = sub_10079ACE4();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s5StateO21CapturingDragSnapshotVMa(0);
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 48);
  swift_getKeyPath();
  v44 = v14;
  sub_10002293C(&qword_100AD9690, type metadata accessor for PageTurnViewModel, &unk_1008200C4);

  sub_100797A14();

  v15 = sub_10079FE94();
  v17 = v16;
  if (v15 == sub_10079FE94() && v17 == v18)
  {

LABEL_5:
    v20 = *(v43 + v10[5]);
    sub_100422408(v43, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s5StateO21CapturingDragSnapshotVMa);
    v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_100422054;
    *(v22 + 24) = a3;
    sub_1004223A0(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, _s5StateO21CapturingDragSnapshotVMa);

    sub_10041F908(v20, sub_100422074);

    goto LABEL_11;
  }

  v19 = sub_1007A3AB4();

  if (v19)
  {
    goto LABEL_5;
  }

  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v23 = qword_100B23750;
  v24 = v40;
  sub_10079ACF4();
  v25 = sub_10079ACC4();
  v26 = sub_1007A29A4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v44 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1000070F4(0xD000000000000022, 0x80000001008D3B80, &v44);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s - slide disabled", v27, 0xCu);
    sub_1000074E0(v28);
  }

  (*(v41 + 8))(v24, v42);
  v29 = v43;
  sub_100422408(v43, v13, _s5StateO21CapturingDragSnapshotVMa);
  v30 = *(v29 + v10[5]);
  v31 = sub_1007A0F74();
  (*(*(v31 - 8) + 16))(v7, v13, v31);
  v32 = v10[6];
  v33 = *&v13[v10[5]];
  v34 = _s5StateO8DraggingVMa(0);
  sub_1000077D8(&v13[v32], &v7[v34[7]], &qword_100AD8770, &qword_1008246E0);
  v35 = *&v13[v10[7]];
  v36 = *&v13[v10[8]];
  v37 = v30;
  v38 = v33;
  sub_100422340(v13, _s5StateO21CapturingDragSnapshotVMa);
  *&v7[v34[5]] = v37;
  *&v7[v34[6]] = v38;
  *&v7[v34[8]] = 0;
  *&v7[v34[9]] = v35;
  *&v7[v34[10]] = v36;
  (*(*(v34 - 1) + 56))(v7, 0, 1, v34);
  sub_10041D948(v7, a3, 4u);
  sub_100007840(v7, &qword_100AD8A80, &qword_1008246B0);
LABEL_11:
}

uint64_t sub_1004220A0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_100422260()
{
  v1 = *(_s5StateO9ResettingVMa(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_10041EEDC(v3, v4, v0 + v2, v6, v7);
}

uint64_t sub_1004222F4()
{

  return swift_deallocObject();
}

uint64_t sub_100422340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004223A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100422408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100422470(uint64_t a1)
{
  v4 = *(_s5StateO7TurningVMa(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_10041C414(a1, v6, v7, v8, v1 + v5);
}

__n128 sub_1004225C8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1004225F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10042263C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for ScrubPageContentView(uint64_t a1)
{
  result = qword_100AE2958;
  if (!qword_100AE2958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042271C(uint64_t a1)
{
  type metadata accessor for ChromeStyle(319);
  if (v1 <= 0x3F)
  {
    sub_10024BC28();
    if (v2 <= 0x3F)
    {
      sub_1004227D0(319);
      if (v3 <= 0x3F)
      {
        sub_10079ACE4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004227D0(uint64_t a1)
{
  if (!qword_100AE2968)
  {
    type metadata accessor for PageSnapshotLoader(255);
    sub_1004239FC(&unk_100AE2970, type metadata accessor for PageSnapshotLoader, &protocol conformance descriptor for PageSnapshotLoader);
    v1 = sub_10079C054();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE2968);
    }
  }
}

__n128 sub_100422880@<Q0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_100009864(v1 + 8, v20);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 112);
  v16 = *(v1 + 96);
  v17 = *(v1 + 80);
  sub_100423498(v1, &v18);
  *a1 = v3;
  sub_100009864(v20, (a1 + 1));
  v7 = sub_1001F1160(qword_100AE29A8, &qword_100824878);
  v8 = (a1 + v7[10]);
  v9 = v18;
  sub_100009864(&v19, (v8 + 1));
  *v8 = v9;
  type metadata accessor for PageSnapshotLoader(0);
  sub_1004239FC(&unk_100AE2970, type metadata accessor for PageSnapshotLoader, &protocol conformance descriptor for PageSnapshotLoader);
  v10 = v3;
  v11 = v9;

  v8[6] = sub_10079C024();
  v8[7] = v12;
  type metadata accessor for ScrubPageContentView(0);
  sub_10001389C();
  sub_1007A33F4();
  sub_1004234D0(&v18);
  sub_1000074E0(v20);
  v13 = (a1 + v7[11]);
  *v13 = v4;
  v13[1] = v5;
  v14 = (a1 + v7[12]);
  result = v17;
  *v14 = v17;
  v14[1] = v16;
  *(a1 + v7[13]) = v6;
  return result;
}

uint64_t sub_100422A24(uint64_t a1)
{
  sub_10000E3E8((v1 + 8), *(v1 + 32));
  if (swift_weakLoadStrong())
  {
    sub_10079F714();
    swift_getObjectType();
    sub_10079F6C4();

    swift_unknownObjectRelease();
  }

  CGRectGetMinY(*(v1 + *(a1 + 48)));
  sub_10000E3E8((v1 + 8), *(v1 + 32));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10079F714();
    swift_getObjectType();
    sub_10079F694();

    Strong = swift_unknownObjectRelease();
  }

  __chkstk_darwin(Strong);
  sub_10079E474();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_100423A9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100423AF0();
  swift_getWitnessTable();
  return sub_10079E194();
}

uint64_t sub_100422C84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v50 = a4;
  v39 = a2;
  v15 = sub_10079C2A4();
  v46 = *(v15 - 8);
  __chkstk_darwin(v15);
  v51 = &v39 - v16;
  v17 = sub_10079C2A4();
  v48 = *(v17 - 8);
  __chkstk_darwin(v17);
  v43 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v44 = &v39 - v20;
  v21 = sub_10079C2A4();
  v49 = *(v21 - 8);
  __chkstk_darwin(v21);
  v45 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v47 = &v39 - v24;
  v40 = type metadata accessor for ScrubFramedOuterPageView(0, a2, a3, v25);
  v41 = a1;
  v42 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v54);

  sub_100666FB0(v54[0], v39, a3, a5, a6, a7, a8);

  sub_10079E474();
  v26 = sub_100423A9C();
  v54[4] = a3;
  v54[5] = v26;
  WitnessTable = swift_getWitnessTable();
  v28 = v43;
  v29 = v51;
  sub_10079DB14();
  (*(v46 + 8))(v29, v15);
  sub_10079DD64();
  v54[2] = WitnessTable;
  v54[3] = &protocol witness table for _FrameLayout;
  v30 = swift_getWitnessTable();
  v31 = v44;
  sub_1006DB0A0(v17, v44);

  v32 = *(v48 + 8);
  v32(v28, v17);
  v33 = *(v41 + *(v40 + 52));
  v54[0] = v42;
  v54[1] = v33;
  v34 = v45;
  sub_10079DC04();
  v32(v31, v17);
  v35 = sub_100423AF0();
  v52 = v30;
  v53 = v35;
  swift_getWitnessTable();
  v36 = v47;
  sub_10039232C();
  v37 = *(v49 + 8);
  v37(v34, v21);
  sub_10039232C();
  return (v37)(v36, v21);
}

void sub_10042316C(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = type metadata accessor for SnapshotImageView(0);
  __chkstk_darwin(v18);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v1 + 56);
  type metadata accessor for PageSnapshotLoader(0);
  sub_1004239FC(&unk_100AE2970, type metadata accessor for PageSnapshotLoader, &protocol conformance descriptor for PageSnapshotLoader);
  sub_10079C034();
  swift_getKeyPath();
  sub_10079C044();

  v5 = v21;
  v6 = v22;
  v7 = v23;
  v8 = *(v4 + 72);
  v9 = *v1;
  sub_10000E3E8((v1 + 8), *(v1 + 32));
  Strong = swift_weakLoadStrong();
  v11 = v9;
  if (Strong)
  {
    sub_10079F714();
    swift_getObjectType();
    sub_10079F694();
    v13 = v12;
    v15 = v14;

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  v3[3] = v8;
  v3[4] = v11;
  v3[5] = v13;
  v3[6] = v15;
  sub_10001389C();
  sub_1007A33F4();
  sub_10079DD94();

  sub_100423500(v3, v19);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1007A3744(36);

  v21 = 0xD00000000000001FLL;
  v22 = 0x80000001008D3C70;
  v20 = *(v4 + 72);
  v24._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v24);

  v25._countAndFlagsBits = 32;
  v25._object = 0xE100000000000000;
  sub_1007A23D4(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v20);

  if (v20)
  {

    v16 = 0xE600000000000000;
    v17._countAndFlagsBits = 0x444544414F4CLL;
  }

  else
  {
    v16 = 0xE700000000000000;
    v17._countAndFlagsBits = 0x676E6964616F6CLL;
  }

  v17._object = v16;
  sub_1007A23D4(v17);
}

uint64_t sub_100423500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100423564(uint64_t a1)
{
  type metadata accessor for ChromeStyle(319);
  if (v1 <= 0x3F)
  {
    sub_10024BC28();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGRect(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10042363C(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 48) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 40) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_10042379C(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 40) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_100423998()
{
  result = qword_100AE2A30;
  if (!qword_100AE2A30)
  {
    sub_1001F1234(qword_100AE29A8, &qword_100824878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A30);
  }

  return result;
}

uint64_t sub_1004239FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100423A9C()
{
  result = qword_100AE2A40;
  if (!qword_100AE2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A40);
  }

  return result;
}

unint64_t sub_100423AF0()
{
  result = qword_100AE2A48;
  if (!qword_100AE2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A48);
  }

  return result;
}

Class sub_100423B44()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v76 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v76 - v12;
  v92 = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  sub_1007A2154();
  sub_100796C94();
  v14 = *(v8 + 16);
  v96 = v8 + 16;
  v98 = v14;
  v15 = v7;
  v14(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v94 = ObjCClassFromMetadata;
  v88 = objc_opt_self();
  v17 = [v88 bundleForClass:ObjCClassFromMetadata];
  v97 = *(v1 + 16);
  v85 = v1 + 16;
  v95 = v3;
  v87 = v0;
  v97(v3, v6, v0);
  sub_1007A22D4(v10, 0, 0, v17, v3, "Controls -> Pause", 17, 2);
  v18 = *(v1 + 8);
  v86 = v1 + 8;
  v91 = v18;
  v18(v6, v0);
  v93 = *(v8 + 8);
  v90 = v8 + 8;
  v93(v13, v15);
  v19 = sub_1007A2214();
  v89 = objc_opt_self();
  v20 = [v89 systemImageNamed:v19];

  v99 = 0u;
  v100 = 0u;
  v83 = sub_1007A2964();
  sub_1007A2154();
  sub_100796C94();
  v21 = v10;
  v84 = v10;
  v22 = v10;
  v23 = v13;
  v24 = v15;
  v98(v22, v13, v15);
  v25 = v94;
  v26 = [v88 bundleForClass:v94];
  v27 = v95;
  v28 = v87;
  v97(v95, v6, v87);
  v82 = sub_1007A22D4(v21, 0, 0, v26, v27, "Controls -> Stop", 16, 2);
  v81 = v29;
  v91(v6, v28);
  v30 = v93;
  v93(v23, v24);
  v31 = sub_1007A2214();
  v32 = [v89 systemImageNamed:v31];

  v99 = 0u;
  v100 = 0u;
  v82 = sub_1007A2964();
  sub_1007A2154();
  sub_100796C94();
  v33 = v84;
  v34 = v23;
  v77 = v24;
  v98(v84, v23, v24);
  v35 = [v88 bundleForClass:v25];
  v36 = v95;
  v37 = v6;
  v38 = v87;
  v97(v95, v6, v87);
  sub_1007A22D4(v33, 0, 0, v35, v36, "Controls -> Skip Forward", 24, 2);
  v91(v6, v38);
  v30(v34, v24);
  v39 = sub_1007A2214();
  v40 = [v89 systemImageNamed:v39];

  v79 = UIKeyInputRightArrow;
  sub_1007A2254();
  v99 = 0u;
  v100 = 0u;
  v81 = sub_1007A2964();
  [v81 setAllowsAutomaticMirroring:0];
  sub_1007A2154();
  sub_100796C94();
  v41 = v84;
  v76 = v34;
  v42 = v77;
  v98(v84, v34, v77);
  v43 = v88;
  v44 = [v88 bundleForClass:v94];
  v45 = v95;
  v46 = v87;
  v97(v95, v37, v87);
  sub_1007A22D4(v41, 0, 0, v44, v45, "Controls -> Skip Back", 21, 2);
  v80 = v47;
  v48 = v91;
  v91(v37, v46);
  v49 = v34;
  v50 = v42;
  v93(v49, v42);
  v51 = sub_1007A2214();
  v52 = [v89 systemImageNamed:v51];

  v78 = UIKeyInputLeftArrow;
  sub_1007A2254();
  v99 = 0u;
  v100 = 0u;
  v80 = sub_1007A2964();
  [v80 setAllowsAutomaticMirroring:0];
  v53 = v76;
  sub_1007A2154();
  sub_100796C94();
  v54 = v84;
  v55 = v50;
  v98(v84, v53, v50);
  v56 = [v43 bundleForClass:v94];
  v57 = v95;
  v58 = v87;
  v97(v95, v37, v87);
  sub_1007A22D4(v54, 0, 0, v56, v57, "Controls -> Next Track menu item title", 38, 2);
  v48(v37, v58);
  v59 = v55;
  v93(v53, v55);
  v60 = sub_1007A2214();
  v61 = v89;
  v62 = [v89 systemImageNamed:v60];

  sub_1007A2254();
  v99 = 0u;
  v100 = 0u;
  v63 = sub_1007A2964();
  [v63 setAllowsAutomaticMirroring:0];
  sub_1007A2154();
  sub_100796C94();
  v98(v54, v53, v59);
  v64 = [v88 bundleForClass:v94];
  v65 = v95;
  v97(v95, v37, v58);
  sub_1007A22D4(v54, 0, 0, v64, v65, "Controls -> Previous Track menu item title", 42, 2);
  v91(v37, v58);
  v93(v53, v59);
  v66 = sub_1007A2214();
  v67 = [v61 systemImageNamed:v66];

  sub_1007A2254();
  v99 = 0u;
  v100 = 0u;
  v68 = sub_1007A2964();
  [v68 setAllowsAutomaticMirroring:0];
  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_10081F2E0;
  v70 = v82;
  *(v69 + 32) = v83;
  *(v69 + 40) = v70;
  v71 = v80;
  *(v69 + 48) = v81;
  *(v69 + 56) = v71;
  *(v69 + 64) = v63;
  *(v69 + 72) = v68;
  v74 = v69;
  v102._countAndFlagsBits = 0;
  v102._object = 0xE000000000000000;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v101.value.super.isa = 0;
  v101.is_nil = 0;
  v72.value = 1;
  return sub_1007A30C4(v102, v103, v101, v72, 0xFFFFFFFFFFFFFFFFLL, v74, v75).super.super.isa;
}

Class sub_100424820()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v60 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  v65 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1007A2154();
  sub_100796C94();
  v14 = *(v8 + 16);
  v77 = v8 + 16;
  v70 = v14;
  v14(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v79 = ObjCClassFromMetadata;
  v72 = objc_opt_self();
  v16 = [v72 bundleForClass:ObjCClassFromMetadata];
  v17 = *(v1 + 16);
  v76 = v1 + 16;
  v80 = v17;
  v69 = v3;
  v17(v3, v6, v0);
  v64 = sub_1007A22D4(v10, 0, 0, v16, v3, "Controls -> Playback Speed", 26, 2);
  v63 = v18;
  v19 = *(v1 + 8);
  v74 = v1 + 8;
  v78 = v19;
  v19(v6, v0);
  v20 = *(v8 + 8);
  v75 = v8 + 8;
  v73 = v20;
  v20(v13, v7);
  v21 = sub_1007A2214();
  v62 = [objc_opt_self() systemImageNamed:v21];

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_10081F2E0;
  v68 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  sub_1007A2154();
  sub_100796C94();
  v22 = v10;
  v23 = v70;
  v70(v10, v13, v7);
  v24 = [v72 bundleForClass:v79];
  v25 = v69;
  v67 = v0;
  v80(v69, v6, v0);
  sub_1007A22D4(v22, 0, 0, v24, v25, "Controls -> Playback Speed -> 0.75x", 35, 2);
  v26 = v6;
  v78(v6, v0);
  v27 = v7;
  v73(v13, v7);
  v81 = 0u;
  v82 = 0u;
  *(v71 + 32) = sub_1007A3414();
  v28 = v13;
  sub_1007A2154();
  v29 = v26;
  sub_100796C94();
  v66 = v22;
  v23(v22, v28, v7);
  v30 = [v72 bundleForClass:v79];
  v31 = v69;
  v32 = v67;
  v80(v69, v29, v67);
  sub_1007A22D4(v22, 0, 0, v30, v31, "Controls -> Playback Speed -> 1x", 32, 2);
  v78(v29, v32);
  v33 = v27;
  v73(v28, v27);
  v81 = 0u;
  v82 = 0u;
  *(v71 + 40) = sub_1007A3414();
  v34 = v28;
  sub_1007A2154();
  v35 = v29;
  sub_100796C94();
  v36 = v66;
  v70(v66, v34, v33);
  v37 = [v72 bundleForClass:v79];
  v38 = v69;
  v80(v69, v35, v32);
  v39 = v38;
  sub_1007A22D4(v36, 0, 0, v37, v38, "Controls -> Playback Speed -> 1.25x", 35, 2);
  v78(v35, v32);
  v40 = v73;
  v73(v34, v33);
  v81 = 0u;
  v82 = 0u;
  *(v71 + 48) = sub_1007A3414();
  v61 = v34;
  sub_1007A2154();
  sub_100796C94();
  v41 = v66;
  v42 = v33;
  v43 = v33;
  v44 = v70;
  v70(v66, v34, v42);
  v45 = v72;
  v46 = [v72 bundleForClass:v79];
  v47 = v67;
  v80(v39, v35, v67);
  sub_1007A22D4(v41, 0, 0, v46, v39, "Controls -> Playback Speed -> 1.5x", 34, 2);
  v78(v35, v47);
  v48 = v61;
  v49 = v43;
  v40(v61, v43);
  v81 = 0u;
  v82 = 0u;
  v50 = sub_1007A3414();
  v51 = v71;
  *(v71 + 56) = v50;
  sub_1007A2154();
  sub_100796C94();
  v52 = v66;
  v44(v66, v48, v49);
  v53 = [v45 bundleForClass:v79];
  v54 = v69;
  v55 = v67;
  v80(v69, v35, v67);
  sub_1007A22D4(v52, 0, 0, v53, v54, "Controls -> Playback Speed -> 1.75x", 35, 2);
  v78(v35, v55);
  v73(v48, v49);
  v81 = 0u;
  v82 = 0u;
  *(v51 + 64) = sub_1007A3414();
  sub_1007A2154();
  sub_100796C94();
  v70(v52, v48, v49);
  v56 = [v72 bundleForClass:v79];
  v80(v54, v35, v55);
  sub_1007A22D4(v52, 0, 0, v56, v54, "Controls -> Playback Speed -> 2x", 32, 2);
  v78(v35, v55);
  v73(v48, v49);
  v81 = 0u;
  v82 = 0u;
  *(v51 + 72) = sub_1007A3414();
  v84._countAndFlagsBits = v64;
  v84._object = v63;
  v85.value._countAndFlagsBits = 0;
  v85.value._object = 0;
  v83.value.super.isa = v62;
  v83.is_nil = 0;
  v57.value = 0;
  return sub_1007A30C4(v84, v85, v83, v57, 0xFFFFFFFFFFFFFFFFLL, v51, v59).super.super.isa;
}

Class sub_100425398()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v97 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v97 - v12;
  v104 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1007A2154();
  sub_100796C94();
  v110 = *(v8 + 16);
  v119 = v8 + 16;
  v110(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v121 = ObjCClassFromMetadata;
  v108 = objc_opt_self();
  v15 = [v108 bundleForClass:ObjCClassFromMetadata];
  v16 = *(v1 + 16);
  v120 = v1 + 16;
  v115 = v16;
  v111 = v3;
  v107 = v0;
  v16(v3, v6, v0);
  v102 = sub_1007A22D4(v10, 0, 0, v15, v3, "Controls -> Sleep Timer", 23, 2);
  v101 = v17;
  v18 = *(v1 + 8);
  v109 = v1 + 8;
  v114 = v18;
  v18(v6, v0);
  v112 = *(v8 + 8);
  v113 = v8 + 8;
  v112(v13, v7);
  v19 = sub_1007A2214();
  v100 = [objc_opt_self() systemImageNamed:v19];

  v99 = sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v103 = swift_allocObject();
  v117 = xmmword_100811360;
  *(v103 + 16) = xmmword_100811360;
  v116 = swift_allocObject();
  *(v116 + 16) = v117;
  *&v117 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  sub_1007A2154();
  sub_100796C94();
  v20 = v10;
  v118 = v10;
  v21 = v10;
  v22 = v7;
  v23 = v110;
  v110(v21, v13, v7);
  v24 = v108;
  v25 = [v108 bundleForClass:v121];
  v26 = v111;
  v27 = v107;
  v115(v111, v6, v107);
  sub_1007A22D4(v20, 0, 0, v25, v26, "Controls -> Sleep Timer -> Off", 30, 2);
  v28 = v6;
  v114(v6, v27);
  v106 = v22;
  v29 = v112;
  v112(v13, v22);
  v122 = 0u;
  v123 = 0u;
  *(v116 + 32) = sub_1007A3414();
  v105 = v13;
  sub_1007A2154();
  sub_100796C94();
  v30 = v118;
  v23(v118, v13, v22);
  v31 = [v24 bundleForClass:v121];
  v32 = v111;
  v33 = v28;
  v34 = v28;
  v35 = v107;
  v115(v111, v34, v107);
  sub_1007A22D4(v30, 0, 0, v31, v32, "Controls -> Sleep Timer -> When current chapter ends", 52, 2);
  v36 = v33;
  v114(v33, v35);
  v37 = v105;
  v38 = v106;
  v29(v105, v106);
  v122 = 0u;
  v123 = 0u;
  v39 = sub_1007A3414();
  v40 = v116;
  *(v116 + 40) = v39;
  v127._countAndFlagsBits = 0;
  v127._object = 0xE000000000000000;
  v130.value._countAndFlagsBits = 0;
  v130.value._object = 0;
  v124.value.super.isa = 0;
  v124.is_nil = 0;
  v41.value = 1;
  v42.super.super.isa = sub_1007A30C4(v127, v130, v124, v41, 0xFFFFFFFFFFFFFFFFLL, v40, v94).super.super.isa;
  *(v103 + 32) = v42;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_10081F2E0;
  sub_1007A2154();
  v43 = v36;
  sub_100796C94();
  v44 = v118;
  v23(v118, v37, v38);
  v45 = v108;
  v46 = [v108 bundleForClass:v121];
  v47 = v111;
  v98 = v43;
  v48 = v115;
  v115(v111, v43, v35);
  sub_1007A22D4(v44, 0, 0, v46, v47, "Controls -> Sleep Timer -> 5 minutes", 36, 2);
  v114(v43, v35);
  v49 = v105;
  v50 = v106;
  v51 = v112;
  v112(v105, v106);
  v122 = 0u;
  v123 = 0u;
  *(v116 + 32) = sub_1007A3414();
  v52 = v49;
  sub_1007A2154();
  v53 = v98;
  sub_100796C94();
  v54 = v118;
  v23(v118, v52, v50);
  v55 = [v45 bundleForClass:v121];
  v56 = v111;
  v48(v111, v53, v35);
  sub_1007A22D4(v54, 0, 0, v55, v56, "Controls -> Sleep Timer -> 10 minutes", 37, 2);
  v57 = v53;
  v58 = v35;
  v59 = v114;
  v114(v53, v58);
  v60 = v105;
  v51(v105, v50);
  v122 = 0u;
  v123 = 0u;
  *(v116 + 40) = sub_1007A3414();
  sub_1007A2154();
  sub_100796C94();
  v61 = v118;
  v62 = v50;
  v110(v118, v60, v50);
  v63 = [v108 bundleForClass:v121];
  v64 = v111;
  v65 = v107;
  v115(v111, v57, v107);
  sub_1007A22D4(v61, 0, 0, v63, v64, "Controls -> Sleep Timer -> 15 minutes", 37, 2);
  v59(v57, v65);
  v112(v60, v62);
  v122 = 0u;
  v123 = 0u;
  *(v116 + 48) = sub_1007A3414();
  v66 = v60;
  sub_1007A2154();
  sub_100796C94();
  v67 = v118;
  v110(v118, v60, v62);
  v68 = v108;
  v69 = [v108 bundleForClass:v121];
  v70 = v64;
  v71 = v64;
  v72 = v57;
  v73 = v57;
  v74 = v107;
  v75 = v115;
  v115(v71, v72, v107);
  sub_1007A22D4(v67, 0, 0, v69, v70, "Controls -> Sleep Timer -> 30 minutes", 37, 2);
  v114(v73, v74);
  v112(v66, v62);
  v122 = 0u;
  v123 = 0u;
  *(v116 + 56) = sub_1007A3414();
  v76 = v66;
  sub_1007A2154();
  sub_100796C94();
  v77 = v118;
  v78 = v106;
  v110(v118, v66, v106);
  v79 = [v68 bundleForClass:v121];
  v80 = v111;
  v81 = v107;
  v75(v111, v73, v107);
  sub_1007A22D4(v77, 0, 0, v79, v80, "Controls -> Sleep Timer -> 45 minutes", 37, 2);
  v82 = v81;
  v83 = v81;
  v84 = v114;
  v114(v73, v82);
  v112(v66, v78);
  v122 = 0u;
  v123 = 0u;
  *(v116 + 64) = sub_1007A3414();
  sub_1007A2154();
  sub_100796C94();
  v85 = v118;
  v110(v118, v66, v78);
  v86 = [v108 bundleForClass:v121];
  v115(v80, v73, v83);
  sub_1007A22D4(v85, 0, 0, v86, v80, "Controls -> Sleep Timer -> 1 hour", 33, 2);
  v84(v73, v83);
  v112(v76, v78);
  v122 = 0u;
  v123 = 0u;
  v87 = sub_1007A3414();
  v88 = v116;
  *(v116 + 72) = v87;
  v128._countAndFlagsBits = 0;
  v128._object = 0xE000000000000000;
  v131.value._countAndFlagsBits = 0;
  v131.value._object = 0;
  v125.value.super.isa = 0;
  v125.is_nil = 0;
  v89.value = 1;
  v90.super.super.isa = sub_1007A30C4(v128, v131, v125, v89, 0xFFFFFFFFFFFFFFFFLL, v88, v95).super.super.isa;
  v91 = v103;
  *(v103 + 40) = v90;
  v129._countAndFlagsBits = v102;
  v129._object = v101;
  v132.value._countAndFlagsBits = 0;
  v132.value._object = 0;
  v126.value.super.isa = v100;
  v126.is_nil = 0;
  v92.value = 0;
  return sub_1007A30C4(v129, v132, v126, v92, 0xFFFFFFFFFFFFFFFFLL, v91, v96).super.super.isa;
}

Class sub_1004262F0()
{
  v61 = sub_100796CF4();
  v0 = *(v61 - 8);
  __chkstk_darwin(v61);
  v2 = v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v47 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v47 - v11;
  v47[2] = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100816E30;
  v55 = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  sub_1007A2154();
  sub_100796C94();
  v13 = *(v7 + 16);
  v50 = v7 + 16;
  v51 = v13;
  v48 = v9;
  v14 = v6;
  v13(v9, v12, v6);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v53 = ObjCClassFromMetadata;
  v54 = v16;
  v17 = [v16 bundleForClass:ObjCClassFromMetadata];
  v18 = *(v0 + 16);
  v59 = v0 + 16;
  v60 = v18;
  v19 = v2;
  v49 = v2;
  v20 = v2;
  v21 = v61;
  v18(v20, v5, v61);
  sub_1007A22D4(v9, 0, 0, v17, v19, "Controls -> Next Chapter", 24, 2);
  v22 = *(v0 + 8);
  v57 = v0 + 8;
  v58 = v22;
  v22(v5, v21);
  v23 = *(v7 + 8);
  v47[1] = v7 + 8;
  v56 = v23;
  v23(v12, v14);
  sub_1007A2254();
  v62 = 0u;
  v63 = 0u;
  v24 = sub_1007A2964();
  [v24 setAllowsAutomaticMirroring:0];
  v25 = v52;
  *(v52 + 32) = v24;
  v26 = v12;
  sub_1007A2154();
  sub_100796C94();
  v27 = v48;
  v28 = v12;
  v29 = v51;
  v51(v48, v28, v14);
  v30 = [v54 bundleForClass:ObjCClassFromMetadata];
  v31 = v49;
  v47[0] = v5;
  v32 = v61;
  v60(v49, v5, v61);
  sub_1007A22D4(v27, 0, 0, v30, v31, "Controls -> Previous Chapter", 28, 2);
  v58(v5, v32);
  v56(v26, v14);
  sub_1007A2254();
  v62 = 0u;
  v63 = 0u;
  v33 = sub_1007A2964();
  [v33 setAllowsAutomaticMirroring:0];
  *(v25 + 40) = v33;
  sub_1007A2154();
  v34 = v47[0];
  sub_100796C94();
  v35 = v48;
  v29(v48, v26, v14);
  v36 = [v54 bundleForClass:v53];
  v37 = v49;
  v38 = v61;
  v60(v49, v34, v61);
  v39 = v35;
  sub_1007A22D4(v35, 0, 0, v36, v37, "'(Go to) End of Chapter' action", 31, 2);
  v58(v34, v38);
  v56(v26, v14);
  sub_1007A2254();
  v62 = 0u;
  v63 = 0u;
  v40 = sub_1007A2964();
  v41 = v52;
  *(v52 + 48) = v40;
  sub_1007A2154();
  sub_100796C94();
  v51(v39, v26, v14);
  v42 = [v54 bundleForClass:v53];
  v43 = v61;
  v60(v37, v34, v61);
  sub_1007A22D4(v39, 0, 0, v42, v37, "'(Go to) Beginning of Chapter' action", 37, 2);
  v58(v34, v43);
  v56(v26, v14);
  sub_1007A2254();
  v62 = 0u;
  v63 = 0u;
  *(v41 + 56) = sub_1007A2964();
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  v66.value._countAndFlagsBits = 0;
  v66.value._object = 0;
  v64.value.super.isa = 0;
  v64.is_nil = 0;
  v44.value = 1;
  return sub_1007A30C4(v65, v66, v64, v44, 0xFFFFFFFFFFFFFFFFLL, v41, v46).super.super.isa;
}

void sub_100426AF0(void *a1, void *a2)
{
  v63 = a2;
  v64 = a1;
  v65 = sub_100796CF4();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v47 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v62 = sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100816E30;
  *(v15 + 32) = sub_100423B44();
  v61 = sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100811360;
  *(v16 + 32) = sub_100424820();
  *(v16 + 40) = sub_100425398();
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  v74.value._countAndFlagsBits = 0;
  v74.value._object = 0;
  v68.value.super.isa = 0;
  v68.is_nil = 0;
  v17.value = 1;
  v18.super.super.isa = sub_1007A30C4(v71, v74, v68, v17, 0xFFFFFFFFFFFFFFFFLL, v16, v44).super.super.isa;
  v60 = v15;
  *(v15 + 40) = v18;
  *(v15 + 48) = sub_1004262F0();
  v51 = sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  v48 = v14;
  sub_1007A2154();
  sub_100796C94();
  v59 = *(v9 + 16);
  v49 = v11;
  v59(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = ObjCClassFromMetadata;
  v57 = objc_opt_self();
  v20 = [v57 bundleForClass:ObjCClassFromMetadata];
  v56 = *(v2 + 16);
  v50 = v4;
  v21 = v7;
  v22 = v7;
  v23 = v65;
  v56(v4, v22, v65);
  sub_1007A22D4(v11, 0, 0, v20, v4, "Controls -> Back", 16, 2);
  v24 = *(v2 + 8);
  v54 = v2 + 8;
  v55 = v24;
  v25 = v21;
  v24(v21, v23);
  v26 = *(v9 + 8);
  v52 = v9 + 8;
  v53 = v26;
  v27 = v48;
  v26(v48, v8);
  v66 = 0u;
  v67 = 0u;
  v28 = sub_1007A2964();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100811390;
  *(v29 + 32) = v28;
  v43 = v29;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v75.value._countAndFlagsBits = 0;
  v75.value._object = 0;
  v69.value.super.isa = 0;
  v69.is_nil = 0;
  v30.value = 1;
  v31.super.super.isa = sub_1007A30C4(v72, v75, v69, v30, 0xFFFFFFFFFFFFFFFFLL, v43, v45).super.super.isa;
  v32 = v60;
  v60[7].super.super.isa = v31.super.super.isa;
  sub_1007A2154();
  sub_100796C94();
  v33 = v49;
  v59(v49, v27, v8);
  v34 = [v57 bundleForClass:v58];
  v35 = v50;
  v36 = v65;
  v56(v50, v25, v65);
  v37 = sub_1007A22D4(v33, 0, 0, v34, v35, "macOS Menu: Controls", 20, 2);
  v39 = v38;
  v55(v25, v36);
  v53(v27, v8);
  LOBYTE(v36) = v63;
  v40 = v63;
  v73._countAndFlagsBits = v37;
  v73._object = v39;
  v76.value._countAndFlagsBits = 0;
  v76.value._object = 0;
  v70.value.super.isa = 0;
  v70.is_nil = v36;
  v41.value = 0;
  isa = sub_1007A30C4(v73, v76, v70, v41, 0xFFFFFFFFFFFFFFFFLL, v32, v46).super.super.isa;
  [v64 insertSiblingMenu:isa afterMenuForIdentifier:UIMenuView];
}

id sub_10042720C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AlwaysPassthroughView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10042727C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004276AC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1004272E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004276AC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100427344(uint64_t a1)
{
  sub_1004276AC();
  sub_10079CC64();
  __break(1u);
}

unint64_t sub_100427370()
{
  result = qword_100AE2A78;
  if (!qword_100AE2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A78);
  }

  return result;
}

id sub_1004273C4()
{
  v0 = [objc_allocWithZone(type metadata accessor for BackdropView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = sub_1007A2684().super.super.isa;
  v5 = sub_1007A2214();
  [v3 setValue:isa forKey:v5];

  v6 = sub_1007A27B4().super.super.isa;
  v7 = sub_1007A2214();
  [v3 setValue:v6 forKey:v7];

  v8 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v9 = sub_1007A27B4().super.super.isa;
  v10 = sub_1007A2214();
  [v8 setValue:v9 forKey:v10];

  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10080EFF0;
  v12 = sub_100427660();
  *(v11 + 32) = v3;
  *(v11 + 88) = v12;
  *(v11 + 56) = v12;
  *(v11 + 64) = v8;
  v13 = v1;
  v14 = v3;
  v15 = v8;
  v16 = sub_1007A25D4().super.isa;

  [v2 setFilters:v16];

  [v2 setScale:0.25];
  return v0;
}

unint64_t sub_100427660()
{
  result = qword_100AE2A80;
  if (!qword_100AE2A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE2A80);
  }

  return result;
}

unint64_t sub_1004276AC()
{
  result = qword_100AE2A88;
  if (!qword_100AE2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2A88);
  }

  return result;
}

id CloseBookAnimator.coverImage.getter()
{
  v1 = (v0 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent);
  if (*(v0 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 16))
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

double CloseBookAnimator.coverImage.setter(uint64_t result)
{
  if (result)
  {
    v2 = v1 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent;
    v4 = *(v1 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent);
    v3 = *(v1 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 8);
    *v2 = result;
    *(v2 + 8) = 0;
    v5 = *(v2 + 16);
    *(v2 + 16) = 0;
    return sub_100427848(v4, v3, v5);
  }

  return v6;
}

double sub_100427848(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

double (*CloseBookAnimator.coverImage.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR___BKCloseBookAnimator_crossFadeContent;
  a1[1] = v1;
  a1[2] = v3;
  v4 = v1 + v3;
  if (*(v4 + 16))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
    v6 = *v4;
  }

  *a1 = v5;
  return sub_1004278D0;
}

double sub_1004278D0(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = *(a1 + 8) + *(a1 + 16);
      v5 = *v4;
      v6 = *(v4 + 8);
      *v4 = v3;
      *(v4 + 8) = 0;
      v7 = *(v4 + 16);
      *(v4 + 16) = 0;
      v14 = v3;
      sub_100427848(v5, v6, v7);
      v8 = v14;
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v3)
  {
    v10 = *(a1 + 8) + *(a1 + 16);
    v11 = *v10;
    v12 = *(v10 + 8);
    *v10 = v3;
    *(v10 + 8) = 0;
    v13 = *(v10 + 16);
    *(v10 + 16) = 0;

    return sub_100427848(v11, v12, v13);
  }

  return result;
}

uint64_t CloseBookAnimator.spreadSnapshot.getter()
{
  if (*(v0 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 16) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent);

  return v1;
}

double sub_100427ABC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1003C7E70, v4);

  return result;
}

double sub_100427C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100201C54;
  v7[3] = &unk_100A1BBC0;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);

  return result;
}

double CloseBookAnimator.spreadSnapshot.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = v2 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent;
    v4 = *(v2 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent);
    v5 = *(v2 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 8);
    *v3 = a1;
    *(v3 + 8) = a2;
    v6 = *(v3 + 16);
    *(v3 + 16) = 1;
    return sub_100427848(v4, v5, v6);
  }

  return result;
}

void (*CloseBookAnimator.spreadSnapshot.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR___BKCloseBookAnimator_crossFadeContent;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  if (*(v4 + 16) == 1)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_100427D78;
}

void sub_100427D78(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = a1[1];
    if (v2)
    {
      v4 = a1[2] + a1[3];
      v5 = *v4;
      v6 = *(v4 + 8);
      *v4 = v2;
      *(v4 + 8) = v3;
      v7 = *(v4 + 16);
      *(v4 + 16) = 1;

      sub_100427848(v5, v6, v7);
    }

    sub_100007020(v2, v3);
  }

  else if (v2)
  {
    v8 = a1[1];
    v9 = a1[2] + a1[3];
    v10 = *v9;
    v11 = *(v9 + 8);
    *v9 = v2;
    *(v9 + 8) = v8;
    v12 = *(v9 + 16);
    *(v9 + 16) = 1;

    sub_100427848(v10, v11, v12);
  }
}

uint64_t CloseBookAnimator.animationComplete.getter()
{
  v1 = (v0 + OBJC_IVAR___BKCloseBookAnimator_animationComplete);
  swift_beginAccess();
  v2 = *v1;
  sub_1000260E8(*v1, v1[1]);
  return v2;
}

uint64_t CloseBookAnimator.animationComplete.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BKCloseBookAnimator_animationComplete);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100007020(v6, v7);
}

id CloseBookAnimator.__allocating_init(contentHelper:coverSource:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___BKCloseBookAnimator_crossFadeContent];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 2;
  v7 = &v5[OBJC_IVAR___BKCloseBookAnimator_animationComplete];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v5[OBJC_IVAR___BKCloseBookAnimator_contentHelper] = a1;
  *&v5[OBJC_IVAR___BKCloseBookAnimator_coverSource] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, "init");
}

id CloseBookAnimator.init(contentHelper:coverSource:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___BKCloseBookAnimator_crossFadeContent];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 2;
  v4 = &v2[OBJC_IVAR___BKCloseBookAnimator_animationComplete];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v2[OBJC_IVAR___BKCloseBookAnimator_contentHelper] = a1;
  *&v2[OBJC_IVAR___BKCloseBookAnimator_coverSource] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CloseBookAnimator();
  return objc_msgSendSuper2(&v6, "init");
}

void CloseBookAnimator.animateTransition(using:)(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v4 = v3;
  if (!v3)
  {
    aBlock = 0u;
    v134 = 0u;
LABEL_21:
    sub_1000230BC(&aBlock);
    goto LABEL_22;
  }

  if ([v3 im_firstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKBookOpenTransitioning])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    *v137 = 0u;
    v138 = 0u;
  }

  aBlock = *v137;
  v134 = v138;
  if (!*(&v138 + 1))
  {
    goto LABEL_21;
  }

  sub_1001F1160(&qword_100AE2AB8, &unk_100824AC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    [a1 completeTransition:{objc_msgSend(a1, "transitionWasCancelled") ^ 1}];

    return;
  }

  v5 = [v137[0] transitionContentView];
  if (!v5)
  {

    goto LABEL_22;
  }

  v6 = v5;
  v7 = [v5 snapshotViewAfterScreenUpdates:0];
  if (!v7)
  {

    goto LABEL_22;
  }

  v132 = v7;
  v8 = objc_opt_self();
  v9 = [v8 shared];
  if (!v9)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = v9;
  [v9 postEvent:kBETestDriverOpenAnimationStart sender:v1];

  v122 = v8;
  v11 = [v8 shared];
  if (!v11)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v12 = v11;
  [v11 postEvent:kBETestDriverOpenAnimationSetupStart sender:v1];

  v13 = [a1 viewForKey:UITransitionContextToViewKey];
  v14 = [v13 snapshotViewAfterScreenUpdates:0];
  v15 = *(v1 + OBJC_IVAR___BKCloseBookAnimator_coverSource);
  if (v15)
  {
    [v15 coverAnimationSourcePrepare];
  }

  [v6 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v130 = v6;
  [v6 _continuousCornerRadius];
  v25 = v24;
  v26 = [a1 containerView];
  v27 = v26;
  if (v13)
  {
    [v26 addSubview:v13];
  }

  v131 = v13;
  v129 = v137[0];
  if (v14)
  {
    v28 = v14;
    [v28 frame];
    [v28 setFrame:?];
    [v28 frame];
    [v28 setFrame:?];
    [v27 center];
    [v28 setCenter:?];
    [v27 addSubview:v28];
  }

  v125 = v14;
  v29 = [objc_opt_self() effectWithStyle:16];
  v30 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v29];

  v31 = v30;
  [v27 bounds];
  [v31 setFrame:?];

  [v27 addSubview:v31];
  [v132 setFrame:{v17, v19, v21, v23}];
  [v132 _setContinuousCornerRadius:v25];
  [v132 setClipsToBounds:1];
  [v27 addSubview:v132];
  if (!*(v1 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 16))
  {
    v118 = *(v1 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 8);
    v120 = *(v1 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent);
    v40 = v120;
    [v40 size];
    v43 = sub_100429CB0(a1, v131, v41, v42, 0);
    v45 = v44;
    v47 = v46;
    v116 = v48;
    v49 = [objc_allocWithZone(UIImageView) initWithImage:v40];
    [v49 setContentMode:1];
    [v49 setFrame:{v17, v19, v21, v23}];
    [v49 setAlpha:0.0];
    [v49 _setContinuousCornerRadius:v25];
    [v49 setClipsToBounds:1];
    [v27 addSubview:v49];
    v50 = [v122 shared];
    if (v50)
    {
      v51 = v50;
      [v50 postEvent:kBETestDriverOpenAnimationSetupEnd sender:v1];

      LOBYTE(v137[0]) = 1;
      v52 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:325.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      v53 = [v122 shared];
      if (v53)
      {
        v54 = v53;
        [v53 postEvent:kBETestDriverOpenAnimationRevealStart sender:v1];

        v55 = [v122 shared];
        if (v55)
        {
          v56 = v55;
          [v55 postEvent:kBETestDriverOpenAnimationRevealEnd sender:v1];

          v57 = [v122 shared];
          if (v57)
          {
            v58 = v57;
            [v57 postEvent:kBETestDriverOpenAnimationZoomStart sender:v1];

            v123 = objc_opt_self();
            [v52 settlingDuration];
            v60 = v59;
            [v52 mass];
            v62 = v61;
            [v52 stiffness];
            v64 = v63;
            [v52 damping];
            v66 = v65;
            v67 = swift_allocObject();
            *(v67 + 16) = v125;
            *(v67 + 24) = v27;
            *(v67 + 32) = v31;
            *(v67 + 40) = v132;
            *(v67 + 48) = v43;
            *(v67 + 56) = v45;
            *(v67 + 64) = v47;
            *(v67 + 72) = v116;
            *(v67 + 80) = 0u;
            *(v67 + 96) = 0u;
            *(v67 + 112) = 0;
            *(v67 + 120) = v137[0];
            *(v67 + 128) = v49;
            v135 = sub_10042A360;
            v136 = v67;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v134 = sub_1003323D0;
            *(&v134 + 1) = &unk_100A1BA40;
            v117 = _Block_copy(&aBlock);
            v127 = v125;
            v68 = v31;
            v69 = v49;
            v70 = v27;
            v71 = v132;

            v72 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v73 = swift_allocObject();
            *(v73 + 16) = v72;
            *(v73 + 24) = a1;
            v135 = sub_10042A388;
            v136 = v73;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v134 = sub_10021B6B0;
            *(&v134 + 1) = &unk_100A1BA90;
            v74 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();

            [v123 _animateUsingSpringWithDuration:0 delay:v117 options:v74 mass:v60 stiffness:0.0 damping:v62 initialVelocity:v64 animations:v66 completion:0.0];
            _Block_release(v74);
            _Block_release(v117);

            sub_100427848(v120, v118, 0);
            return;
          }

          goto LABEL_48;
        }

        goto LABEL_46;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (*(v1 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 16) == 1)
  {
    v32 = *(v1 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent);
    v33 = *(v1 + OBJC_IVAR___BKCloseBookAnimator_crossFadeContent + 8);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 2) = v34;
    v35[3] = v17;
    v35[4] = v19;
    v35[5] = v21;
    v35[6] = v23;
    v35[7] = v25;
    *(v35 + 8) = v27;
    *(v35 + 9) = a1;
    *(v35 + 10) = v131;
    *(v35 + 11) = v125;
    *(v35 + 12) = v31;
    *(v35 + 13) = v132;
    v126 = v125;
    v36 = v31;
    sub_10042A068(v32, v33, 1);
    v37 = v27;
    v38 = v132;
    swift_unknownObjectRetain();

    v39 = v131;
    (v32)(sub_10042A048, v35);

    sub_100427848(v32, v33, 1);
    return;
  }

  v75 = [v122 shared];
  if (!v75)
  {
    goto LABEL_43;
  }

  v76 = v75;
  [v75 postEvent:kBETestDriverOpenAnimationSetupEnd sender:v1];

  v77 = *(v1 + OBJC_IVAR___BKCloseBookAnimator_contentHelper);
  if (v77)
  {
    [v77 openAnimationSourceRect];
    MidX = v78;
    MidY = v80;
    v83 = v82;
    v85 = v84;
  }

  else
  {
    MidX = 0.0;
    MidY = 0.0;
    v83 = 0.0;
    v85 = 0.0;
  }

  v142.origin.x = 0.0;
  v142.origin.y = 0.0;
  v142.size.width = 0.0;
  v142.size.height = 0.0;
  v139.origin.x = MidX;
  v139.origin.y = MidY;
  v139.size.width = v83;
  v139.size.height = v85;
  if (CGRectEqualToRect(v139, v142))
  {
    v86 = [a1 containerView];
    [v86 bounds];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;

    v140.origin.x = v88;
    v140.origin.y = v90;
    v140.size.width = v92;
    v140.size.height = v94;
    MidX = CGRectGetMidX(v140);
    v141.origin.x = v88;
    v141.origin.y = v90;
    v141.size.width = v92;
    v141.size.height = v94;
    MidY = CGRectGetMidY(v141);
    v83 = 0.0;
    v85 = 0.0;
  }

  LOBYTE(v137[0]) = 1;
  v121 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:325.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  v95 = [v122 shared];
  if (!v95)
  {
    goto LABEL_45;
  }

  v96 = v95;
  [v95 postEvent:kBETestDriverOpenAnimationRevealStart sender:v1];

  v97 = [v122 shared];
  if (!v97)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v98 = v97;
  [v97 postEvent:kBETestDriverOpenAnimationRevealEnd sender:v1];

  v99 = [v122 shared];
  if (v99)
  {
    v100 = v99;
    [v99 postEvent:kBETestDriverOpenAnimationZoomStart sender:v1];

    v124 = objc_opt_self();
    [v121 settlingDuration];
    v102 = v101;
    [v121 mass];
    v104 = v103;
    [v121 stiffness];
    v106 = v105;
    [v121 damping];
    v108 = v107;
    v109 = swift_allocObject();
    *(v109 + 16) = v125;
    *(v109 + 24) = v27;
    *(v109 + 32) = v31;
    *(v109 + 40) = v132;
    *(v109 + 48) = MidX;
    *(v109 + 56) = MidY;
    *(v109 + 64) = v83;
    *(v109 + 72) = v85;
    *(v109 + 80) = 0u;
    *(v109 + 96) = 0u;
    *(v109 + 112) = 0;
    *(v109 + 120) = v137[0];
    *(v109 + 128) = 0;
    v135 = sub_10042A034;
    v136 = v109;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_1003323D0;
    *(&v134 + 1) = &unk_100A1B950;
    v119 = _Block_copy(&aBlock);
    v128 = v125;
    v110 = v31;
    v111 = v27;
    v112 = v132;

    v113 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v114 = swift_allocObject();
    *(v114 + 16) = v113;
    *(v114 + 24) = a1;
    v135 = sub_10042A040;
    v136 = v114;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_10021B6B0;
    *(&v134 + 1) = &unk_100A1B9C8;
    v115 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v124 _animateUsingSpringWithDuration:0 delay:v119 options:v115 mass:v102 stiffness:0.0 damping:v104 initialVelocity:v106 animations:v108 completion:0.0];
    _Block_release(v115);
    _Block_release(v119);

    return;
  }

LABEL_49:
  __break(1u);
}

void sub_1004291E4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, double a11, double a12, double a13)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = [objc_allocWithZone(UIImageView) initWithImage:a1];
    [v26 setContentMode:1];
    [v26 setFrame:{a9, a10, a11, a12}];
    [v26 setAlpha:0.0];
    [v26 _setContinuousCornerRadius:a13];
    [v26 setClipsToBounds:1];
    [a3 addSubview:v26];
    v27 = sub_100429CB0(a4, a5, 0, 0, 1);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [a1 bk_frameForImageFittedInFrame:?];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = objc_opt_self();
    v43 = [v42 shared];
    if (v43)
    {
      v44 = v43;
      [v43 postEvent:kBETestDriverOpenAnimationSetupEnd sender:v25];

      v78 = 0;
      v45 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:325.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      v46 = [v42 shared];
      if (v46)
      {
        v47 = v46;
        [v46 postEvent:kBETestDriverOpenAnimationRevealStart sender:v25];

        v48 = [v42 shared];
        if (v48)
        {
          v49 = v48;
          [v48 postEvent:kBETestDriverOpenAnimationRevealEnd sender:v25];

          v50 = [v42 shared];
          if (v50)
          {
            v51 = v50;
            [v50 postEvent:kBETestDriverOpenAnimationZoomStart sender:v25];

            v70 = objc_opt_self();
            [v45 settlingDuration];
            v69 = v52;
            [v45 mass];
            v68 = v53;
            [v45 stiffness];
            v67 = v54;
            [v45 damping];
            v66 = v55;
            v56 = swift_allocObject();
            *(v56 + 16) = a6;
            *(v56 + 24) = a3;
            *(v56 + 32) = a7;
            *(v56 + 40) = a8;
            *(v56 + 48) = v27;
            *(v56 + 56) = v29;
            *(v56 + 64) = v31;
            *(v56 + 72) = v33;
            *(v56 + 80) = v26;
            *(v56 + 88) = v35;
            *(v56 + 96) = v37;
            *(v56 + 104) = v39;
            *(v56 + 112) = v41;
            *(v56 + 120) = v78;
            *(v56 + 128) = 0;
            v76 = sub_10042A360;
            v77 = v56;
            aBlock = _NSConcreteStackBlock;
            v73 = 1107296256;
            v74 = sub_1003323D0;
            v75 = &unk_100A1BC60;
            v57 = _Block_copy(&aBlock);
            v58 = a6;
            v59 = a3;
            v60 = a7;
            v61 = a8;
            v62 = v26;

            v63 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v64 = swift_allocObject();
            *(v64 + 16) = v63;
            *(v64 + 24) = a4;
            v76 = sub_10042A388;
            v77 = v64;
            aBlock = _NSConcreteStackBlock;
            v73 = 1107296256;
            v74 = sub_10021B6B0;
            v75 = &unk_100A1BCB0;
            v65 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();

            [v70 _animateUsingSpringWithDuration:0 delay:v57 options:v65 mass:v69 stiffness:0.0 damping:v68 initialVelocity:v67 animations:v66 completion:0.0];
            _Block_release(v65);
            _Block_release(v57);

            return;
          }

LABEL_11:
          __break(1u);
          return;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }
}

id sub_100429768(void *a1, id a2, id a3, void *a4, void *a5, uint64_t a6, void *a7, double a8, double a9, double a10, double a11)
{
  v20 = *a6;
  v21 = *(a6 + 8);
  v22 = *(a6 + 16);
  v23 = *(a6 + 24);
  if (a1)
  {
    [a2 bounds];
    [a1 setFrame:?];
    [a2 center];
    [a1 setCenter:?];
  }

  [a3 setEffect:0];
  [a4 setFrame:{a8, a9, a10, a11}];
  [a4 _setContinuousCornerRadius:0.0];
  if (a5)
  {
    if (*(a6 + 32))
    {
      v26 = a8;
    }

    else
    {
      v26 = v20;
    }

    if (*(a6 + 32))
    {
      v27 = a9;
    }

    else
    {
      v27 = v21;
    }

    if (*(a6 + 32))
    {
      v28 = a10;
    }

    else
    {
      v28 = v22;
    }

    if (*(a6 + 32))
    {
      v29 = a11;
    }

    else
    {
      v29 = v23;
    }

    [a5 setFrame:{v26, v27, v28, v29}];
    [a5 setAlpha:1.0];
    [a5 _setContinuousCornerRadius:0.0];
  }

  result = [a7 setFrame:{a8, a9, a10, a11}];
  if (a7)
  {
    [a7 setAlpha:1.0];

    return [a7 _setContinuousCornerRadius:0.0];
  }

  return result;
}

void sub_100429938(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10042A32C;
  *(v6 + 24) = a2;
  v8[4] = sub_10025D79C;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100685954;
  v8[3] = &unk_100A1BD00;
  v7 = _Block_copy(v8);

  [v5 performWithoutAnimation:v7];
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    [a3 completeTransition:{objc_msgSend(a3, "transitionWasCancelled") ^ 1}];
  }
}

void sub_100429AAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR___BKCloseBookAnimator_coverSource);
    v3 = Strong;
    swift_unknownObjectRetain();

    if (v2)
    {
      [v2 coverAnimationSourceFinalize];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4 + OBJC_IVAR___BKCloseBookAnimator_animationComplete;
    v6 = v4;
    swift_beginAccess();
    v8 = *v5;
    v7 = *(v5 + 8);
    sub_1000260E8(v8, v7);

    if (v8)
    {
      v8();
      sub_100007020(v8, v7);
    }
  }

  v9 = objc_opt_self();
  v10 = [v9 shared];
  if (v10)
  {
    v11 = v10;
    v12 = kBETestDriverOpenAnimationZoomEnd;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = v12;
    [v11 postEvent:v14 sender:v13];

    v15 = [v9 shared];
    if (v15)
    {
      v16 = v15;
      v17 = kBETestDriverOpenAnimationEnd;
      swift_beginAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      v19 = v17;
      [v16 postEvent:v19 sender:v18];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_100429CB0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + OBJC_IVAR___BKCloseBookAnimator_contentHelper);
  if (v7)
  {
    [v7 openAnimationSourceRect];
    MidX = v8;
    v11 = v10;
    width = v12;
    height = v14;
  }

  else
  {
    v26 = *(v5 + OBJC_IVAR___BKCloseBookAnimator_coverSource);
    MidX = 0.0;
    v11 = 0.0;
    width = 0.0;
    height = 0.0;
    if (v26 && a2)
    {
      v27 = a5;
      swift_unknownObjectRetain();
      v29 = a2;
      [v26 coverAnimationSourceInvalidateFrame];
      [v26 coverAnimationSourceFrame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = [v26 coverAnimationSourceReferenceView];
      v64.origin.x = 0.0;
      v64.origin.y = 0.0;
      v64.size.width = 0.0;
      v64.size.height = 0.0;
      v57.origin.x = v31;
      v57.origin.y = v33;
      v57.size.width = v35;
      v57.size.height = v37;
      if (!CGRectEqualToRect(v57, v64))
      {
        if (!v38 || (sub_10025D2FC(), v39 = v29, v40 = v38, v41 = sub_1007A3184(), v40, v39, (v41 & 1) == 0))
        {
          [v29 convertRect:v38 fromView:{v31, v33, v35, v37}];
          v31 = v42;
          v33 = v43;
          v35 = v44;
          v37 = v45;
        }
      }

      width = v35;
      height = v37;
      v11 = v33;
      MidX = v31;
      if ((v27 & 1) == 0)
      {
        CGRectFitRectInRect();
        x = v58.origin.x;
        v53 = v37;
        v47 = v35;
        y = v58.origin.y;
        width = v58.size.width;
        height = v58.size.height;
        MidX = v31 + CGRectGetMinX(v58);
        v59.origin.x = x;
        v59.origin.y = y;
        v35 = v47;
        v37 = v53;
        v59.size.width = width;
        v59.size.height = height;
        v11 = v33 + CGRectGetMinY(v59);
      }

      if ([v26 coverAnimationSourceAlignment] == 2)
      {
        v60.origin.x = v31;
        v60.origin.y = v33;
        v60.size.width = v35;
        v60.size.height = v37;
        MaxY = CGRectGetMaxY(v60);
        v61.origin.x = MidX;
        v61.origin.y = v11;
        v61.size.width = width;
        v61.size.height = height;
        v50 = MaxY - CGRectGetHeight(v61);
        v62.origin.x = MidX;
        v62.origin.y = v11;
        v62.size.width = width;
        v62.size.height = height;
        MinY = CGRectGetMinY(v62);
        swift_unknownObjectRelease();

        v52 = sub_10042A334(v50 - MinY);
        if (v52 > 0.0)
        {
          v11 = v11 + v52;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = 0.0;
  v63.size.height = 0.0;
  v54.origin.x = MidX;
  v54.origin.y = v11;
  v54.size.width = width;
  v54.size.height = height;
  if (CGRectEqualToRect(v54, v63))
  {
    v16 = [a1 containerView];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v55.origin.x = v18;
    v55.origin.y = v20;
    v55.size.width = v22;
    v55.size.height = v24;
    MidX = CGRectGetMidX(v55);
    v56.origin.x = v18;
    v56.origin.y = v20;
    v56.size.width = v22;
    v56.size.height = v24;
    CGRectGetMidY(v56);
  }

  return MidX;
}

double sub_10042A068(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    v3 = a1;
  }

  return result;
}

id CloseBookAnimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloseBookAnimator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10042A194(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10042A1B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10042A1F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_10042A23C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10042A26C()
{

  return swift_deallocObject();
}

uint64_t sub_10042A2EC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_10042A38C(uint64_t a1, double a2)
{
  v3 = a1;
  if (a2 == 0.0)
  {
    if (a1)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    [*&v2[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_separator] setAlpha:v4];
    v10 = sub_10042A7DC();
    [v10 setAlpha:v4];
  }

  else
  {
    type metadata accessor for AudiobookTOCHeaderView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v3 & 1;
    aBlock[4] = sub_10042D9F8;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A1BD50;
    v8 = _Block_copy(aBlock);
    v9 = v2;

    [ObjCClassFromMetadata animateWithDuration:v8 animations:a2];
    _Block_release(v8);
  }
}

double sub_10042A4FC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_100AE2AE8 = 1.0 / v2;
  return result;
}

id sub_10042A5A4(uint64_t a1, double *a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:17.0 weight:*a2];
  *a3 = result;
  return result;
}

void sub_10042A5F4()
{
  v0 = [objc_opt_self() defaultFontSpec];
  if (v0)
  {
    v1 = UIFontTextStyleFootnote;
    v2 = [v0 fontSpecWithTextStyle:v1];

    if (v2)
    {
      v0 = [v2 font];
    }

    else
    {
      v0 = 0;
    }
  }

  qword_100AE2B08 = v0;
}

void sub_10042A6B0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = UIContentSizeCategoryAccessibilityLarge;
  v3 = [v0 _preferredFontForTextStyle:v1 maximumContentSizeCategory:v2];

  if (v3)
  {
    qword_100AE2B10 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10042A748(uint64_t a1)
{
  result = _UISolariumEnabled();
  v2 = 64.0;
  if (result)
  {
    v2 = 74.0;
  }

  qword_100AE2B18 = *&v2;
  return result;
}

id sub_10042A798(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_10042A7DC()
{
  v1 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView____lazy_storage___effectView;
  v2 = *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView____lazy_storage___effectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView____lazy_storage___effectView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle:10];
    v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];
    [v5 setAutoresizingMask:18];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10042A8A8()
{
  v0 = [objc_allocWithZone(CAGradientLayer) init];
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100812CF0;
  if (qword_100AD15A8 != -1)
  {
    swift_once();
  }

  v2 = qword_100AE2AF0;
  v3 = [qword_100AE2AF0 CGColor];
  type metadata accessor for CGColor(0);
  v5 = v4;
  *(v1 + 56) = v4;
  *(v1 + 32) = v3;
  v6 = [v2 CGColor];
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  v7 = [objc_opt_self() clearColor];
  v8 = [v7 CGColor];

  *(v1 + 120) = v5;
  *(v1 + 96) = v8;
  isa = sub_1007A25D4().super.isa;

  [v0 setColors:isa];

  [v0 setStartPoint:{0.0, 0.0}];
  [v0 setEndPoint:{1.0, 0.0}];
  return v0;
}

id sub_10042AA54()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  v1 = [v0 layer];
  [v1 setCornerRadius:2.0];

  v2 = [v0 layer];
  [v2 setMasksToBounds:1];

  v3 = [v0 layer];
  [v3 setMinificationFilter:kCAFilterTrilinear];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAccessibilityIgnoresInvertColors:1];

  return v0;
}

id sub_10042AB58()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  v2 = [v0 layer];
  if (qword_100AD15D8 != -1)
  {
    swift_once();
  }

  v3 = [qword_100AE2B20 CGColor];
  [v2 setShadowColor:v3];

  v4 = [v0 layer];
  LODWORD(v5) = 0.5;
  [v4 setShadowOpacity:v5];

  v6 = [v0 layer];
  [v6 setShadowRadius:5.0];

  v7 = [v0 layer];
  [v7 setShadowOffset:{0.0, 4.0}];

  v8 = [v0 layer];
  [v8 setShouldRasterize:1];

  v9 = [v0 layer];
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  [v9 setRasterizationScale:v12];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_10042AD98(double a1)
{
  v1 = sub_1007A3204();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007A32B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_1007A3274();
  v12 = _UISolariumEnabled();
  v13 = &enum case for UIButton.Configuration.CornerStyle.capsule(_:);
  if (!v12)
  {
    v13 = &enum case for UIButton.Configuration.CornerStyle.large(_:);
  }

  (*(v2 + 104))(v4, *v13, v1);
  sub_1007A3214();
  v14 = sub_1007A2214();
  v15 = [objc_opt_self() systemImageNamed:v14];

  if (v15)
  {
    if (qword_100AD15C8 != -1)
    {
      swift_once();
    }

    v16 = [objc_opt_self() configurationWithFont:qword_100AE2B10];
    sub_1007A31E4();
    v17 = v15;
    sub_1007A3284();
  }

  type metadata accessor for SupplementalContentButton();
  (*(v6 + 16))(v8, v11, v5);
  v18 = sub_1007A32C4();
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setHidden:1];

  (*(v6 + 8))(v11, v5);
  return v18;
}

char *sub_10042B08C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImage] = 0;
  v9 = &v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_title];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_author];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentCount] = 0;
  v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_compactMode] = 0;
  *&v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView____lazy_storage___effectView] = 0;
  v12 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel;
  v13 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD15B0 != -1)
  {
    swift_once();
  }

  [v13 setFont:qword_100AE2AF8];
  [v13 setLineBreakMode:2];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleGradientLayer;
  *&v4[v14] = sub_10042A8A8();
  v15 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel;
  v16 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD15B8 != -1)
  {
    swift_once();
  }

  [v16 setFont:qword_100AE2B00];
  v17 = objc_opt_self();
  v18 = [v17 bc_booksSecondaryLabelColor];
  [v16 setTextColor:v18];

  [v16 setLineBreakMode:2];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v15] = v16;
  v19 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorGradientLayer;
  *&v4[v19] = sub_10042A8A8();
  v20 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel;
  v21 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD15C0 != -1)
  {
    swift_once();
  }

  [v21 setFont:qword_100AE2B08];
  v22 = [v17 bc_booksSecondaryLabelColor];
  [v21 setTextColor:v22];

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v20] = v21;
  v23 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImageView;
  *&v4[v23] = sub_10042AA54();
  v24 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverView;
  *&v4[v24] = sub_10042AB58();
  v25 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_separator;
  v26 = [objc_allocWithZone(UIView) init];
  v27 = [v17 separatorColor];
  [v26 setBackgroundColor:v27];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v25] = v26;
  v28 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentButton;
  *&v4[v28] = sub_10042AD98(v29);
  *&v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementaryContentHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementaryContentVisibleConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_cachedGroupedLabelsAXElement] = 0;
  v129.receiver = v4;
  v129.super_class = type metadata accessor for AudiobookTOCHeaderView();
  v30 = objc_msgSendSuper2(&v129, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v17 clearColor];
  [v30 setBackgroundColor:v31];

  v127 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel;
  v32 = [*&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel] layer];
  [v32 setMask:*&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleGradientLayer]];

  v126 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel;
  v33 = [*&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel] layer];
  [v33 setMask:*&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorGradientLayer]];

  v124 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentButton;
  v34 = *&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentButton];
  [v34 addTarget:v30 action:"didSelectSupplementalContent" forControlEvents:64];

  v35 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverView;
  v36 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImageView;
  [*&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverView] addSubview:*&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImageView]];
  v37 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100811360;
  v39 = [*&v30[v36] widthAnchor];
  v40 = [*&v30[v35] widthAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 multiplier:1.0];

  *(v38 + 32) = v41;
  v42 = [*&v30[v36] heightAnchor];
  v43 = [*&v30[v35] heightAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 multiplier:1.0];

  *(v38 + 40) = v44;
  sub_10000A7C4(0, &qword_100AE9010, NSLayoutConstraint_ptr);
  isa = sub_1007A25D4().super.isa;

  v128 = v37;
  [v37 activateConstraints:isa];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v46 = sub_10042A7DC();
    [v30 addSubview:v46];
  }

  [v30 addSubview:*&v30[v127]];
  [v30 addSubview:*&v30[v126]];
  v47 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel]];
  [v30 addSubview:*&v30[v35]];
  [v30 addSubview:*&v30[v124]];
  v125 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_separator;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_separator]];
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100811360;
  v49 = [*&v30[v35] centerYAnchor];
  v50 = [v30 centerYAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v48 + 32) = v51;
  v52 = [*&v30[v47] bottomAnchor];
  v53 = [v30 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-25.0];

  *(v48 + 40) = v54;
  *&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementaryContentHiddenConstraints] = v48;

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_100811380;
  *(v55 + 32) = [v37 constraintWithItem:*&v30[v35] attribute:10 relatedBy:0 toItem:*&v30[v124] attribute:3 multiplier:0.5 constant:0.0];
  v56 = [*&v30[v47] bottomAnchor];
  v57 = [*&v30[v124] topAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:-25.0];

  *(v55 + 40) = v58;
  v59 = [*&v30[v124] leadingAnchor];
  v60 = [v30 safeAreaLayoutGuide];
  v61 = [v60 leadingAnchor];

  v62 = [v59 constraintEqualToAnchor:v61 constant:25.0];
  *(v55 + 48) = v62;
  v63 = [*&v30[v124] trailingAnchor];
  v64 = [v30 safeAreaLayoutGuide];
  v65 = [v64 trailingAnchor];

  v66 = [v63 constraintEqualToAnchor:v65 constant:-25.0];
  *(v55 + 56) = v66;
  v67 = [*&v30[v124] bottomAnchor];
  v68 = [v30 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:-25.0];

  *(v55 + 64) = v69;
  *&v30[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementaryContentVisibleConstraints] = v55;

  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_100824BA0;
  v71 = [*&v30[v35] leadingAnchor];
  v72 = [v30 safeAreaLayoutGuide];
  v73 = [v72 leadingAnchor];

  v74 = [v71 constraintEqualToAnchor:v73 constant:25.0];
  *(v70 + 32) = v74;
  v75 = [*&v30[v35] widthAnchor];
  v76 = [v75 constraintEqualToConstant:60.0];

  *(v70 + 40) = v76;
  v77 = [*&v30[v35] heightAnchor];
  v78 = [v77 constraintEqualToConstant:60.0];

  *(v70 + 48) = v78;
  v79 = [*&v30[v127] topAnchor];
  v80 = [v30 topAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:25.0];

  *(v70 + 56) = v81;
  v82 = [*&v30[v127] leadingAnchor];
  v83 = [*&v30[v35] trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:13.0];

  *(v70 + 64) = v84;
  v85 = [*&v30[v127] trailingAnchor];
  v86 = [v30 trailingAnchor];
  if (qword_100AD15D0 != -1)
  {
    swift_once();
  }

  v87 = -*&qword_100AE2B18;
  v88 = [v85 constraintEqualToAnchor:v86 constant:-*&qword_100AE2B18];

  *(v70 + 72) = v88;
  v89 = [*&v30[v127] trailingAnchor];
  v90 = [v30 trailingAnchor];
  v91 = [v89 constraintEqualToAnchor:v90 constant:v87];

  *(v70 + 80) = v91;
  v92 = [*&v30[v126] topAnchor];
  v93 = [*&v30[v127] bottomAnchor];
  v94 = [v92 constraintGreaterThanOrEqualToAnchor:v93 constant:2.0];

  *(v70 + 88) = v94;
  v95 = [*&v30[v126] leadingAnchor];
  v96 = [*&v30[v127] leadingAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];

  *(v70 + 96) = v97;
  v98 = [*&v30[v126] trailingAnchor];
  v99 = [*&v30[v127] trailingAnchor];
  v100 = [v98 constraintEqualToAnchor:v99];

  *(v70 + 104) = v100;
  v101 = [*&v30[v47] topAnchor];
  v102 = [*&v30[v126] bottomAnchor];
  v103 = [v101 constraintGreaterThanOrEqualToAnchor:v102 constant:2.0];

  *(v70 + 112) = v103;
  v104 = [*&v30[v47] leadingAnchor];
  v105 = [*&v30[v127] leadingAnchor];
  v106 = [v104 constraintEqualToAnchor:v105];

  *(v70 + 120) = v106;
  v107 = [*&v30[v47] trailingAnchor];
  v108 = [*&v30[v127] trailingAnchor];
  v109 = [v107 constraintEqualToAnchor:v108];

  *(v70 + 128) = v109;
  v110 = [*&v30[v125] heightAnchor];
  if (qword_100AD15A0 != -1)
  {
    swift_once();
  }

  v111 = [v110 constraintEqualToConstant:*&qword_100AE2AE8];

  *(v70 + 136) = v111;
  v112 = [*&v30[v125] leadingAnchor];
  v113 = [v30 leadingAnchor];
  v114 = [v112 constraintEqualToAnchor:v113];

  *(v70 + 144) = v114;
  v115 = [*&v30[v125] bottomAnchor];
  v116 = [v30 bottomAnchor];
  v117 = [v115 constraintEqualToAnchor:v116];

  *(v70 + 152) = v117;
  v118 = [*&v30[v125] trailingAnchor];
  v119 = [v30 trailingAnchor];

  v120 = [v118 constraintEqualToAnchor:v119];
  *(v70 + 160) = v120;
  v121 = sub_1007A25D4().super.isa;

  [v128 activateConstraints:v121];

  v122 = sub_1007A25D4().super.isa;

  [v128 activateConstraints:v122];

  sub_10000A7C4(0, &qword_100AE15B0, UITraitCollection_ptr);
  sub_1007A2E04();
  sub_1007A3104();

  swift_unknownObjectRelease();

  return v30;
}

void sub_10042C298(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for AudiobookTOCHeaderView();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel];
  [v2 bounds];
  if (v3 <= 0.0)
  {
    v4 = 0.9;
  }

  else
  {
    v4 = (v3 + -28.0) / v3;
  }

  v5 = *&v1[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleGradientLayer];
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100811370;
  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  *(v6 + 32) = sub_1007A3154(0);
  v7 = objc_allocWithZone(NSNumber);
  *&v8 = v4;
  *(v6 + 40) = [v7 initWithFloat:v8];
  *(v6 + 48) = sub_1007A3154(1);
  isa = sub_1007A25D4().super.isa;

  [v5 setLocations:isa];

  [v2 bounds];
  [v5 setFrame:?];
  v10 = *&v1[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel];
  [v10 bounds];
  if (v11 <= 0.0)
  {
    v12 = 0.9;
  }

  else
  {
    v12 = (v11 + -28.0) / v11;
  }

  v13 = *&v1[OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorGradientLayer];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100811370;
  *(v14 + 32) = sub_1007A3154(0);
  v15 = objc_allocWithZone(NSNumber);
  *&v16 = v12;
  *(v14 + 40) = [v15 initWithFloat:v16];
  *(v14 + 48) = sub_1007A3154(1);
  v17 = sub_1007A25D4().super.isa;

  [v13 setLocations:v17];

  [v10 bounds];
  [v13 setFrame:?];
  sub_10042CFD8();
}

id sub_10042C670()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel);
  [v1 setMarqueeEnabled:0];
  [v1 setMarqueeEnabled:1];
  [v1 setMarqueeRunning:1];
  v2 = *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel);
  [v2 setMarqueeEnabled:0];
  [v2 setMarqueeEnabled:1];
  [v2 setMarqueeRunning:1];
  v3 = *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel);
  [v3 setMarqueeEnabled:0];
  [v3 setMarqueeEnabled:1];

  return [v3 setMarqueeRunning:1];
}

double sub_10042C75C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) viewSupplementalContentWithViewController:Strong];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_10042C840()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = sub_1007A21D4();
  *&v46 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v47 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentCount;
  v15 = *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentCount);
  v16 = *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentButton);
  v17 = [v16 isHidden];
  if (v15 < 1)
  {
    if ((v17 & 1) == 0)
    {
      [v16 setHidden:1];
      v39 = objc_opt_self();
      sub_10000A7C4(0, &qword_100AE9010, NSLayoutConstraint_ptr);

      isa = sub_1007A25D4().super.isa;

      [v39 deactivateConstraints:isa];

      v41 = sub_1007A25D4().super.isa;

      [v39 activateConstraints:v41];
    }
  }

  else if (v17)
  {
    [v16 setHidden:0];
    v44 = v2;
    v18 = objc_opt_self();
    v43 = v1;
    v19 = v18;
    sub_10000A7C4(0, &qword_100AE9010, NSLayoutConstraint_ptr);

    v20.super.isa = sub_1007A25D4().super.isa;
    v45 = v16;
    v21 = v20.super.isa;

    [v19 deactivateConstraints:v21];

    v22 = sub_1007A25D4().super.isa;

    [v19 activateConstraints:v22];

    sub_1007A2154();
    sub_100796C94();
    v23 = v46;
    (*(v46 + 16))(v10, v14, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v27 = v43;
    v26 = v44;
    (*(v44 + 16))(v4, v7, v43);
    sub_1007A22D4(v10, 0, 0, v25, v4, "Supplemental content item in audiobook TOC", 42, 2);
    (*(v26 + 8))(v7, v27);
    (*(v23 + 8))(v14, v8);
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v28 = swift_allocObject();
    v46 = xmmword_10080B690;
    v29 = *(v0 + v47);
    *(v28 + 16) = xmmword_10080B690;
    *(v28 + 56) = &type metadata for Int;
    *(v28 + 64) = &protocol witness table for Int;
    *(v28 + 32) = v29;
    sub_1007A2284();

    sub_1001F1160(qword_100AEFD60, qword_100836260);
    inited = swift_initStackObject();
    *(inited + 16) = v46;
    *(inited + 32) = NSFontAttributeName;
    v31 = qword_100AD15C8;
    v32 = NSFontAttributeName;
    if (v31 != -1)
    {
      swift_once();
    }

    v33 = qword_100AE2B10;
    *(inited + 64) = sub_10000A7C4(0, &unk_100AEB3C0, UIFont_ptr);
    *(inited + 40) = v33;
    v34 = v33;
    sub_1001ED420(inited);
    swift_setDeallocating();
    sub_10039FAF4(inited + 32);
    v35 = objc_allocWithZone(NSAttributedString);
    v36 = sub_1007A2214();

    type metadata accessor for Key(0);
    sub_100282B6C();
    v37 = sub_1007A2024().super.isa;

    v38 = [v35 initWithString:v36 attributes:v37];

    [v45 setAttributedTitle:v38 forState:0];
  }

  sub_10042CFD8();
}

void sub_10042CED0()
{
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10080B690;
  sub_10042CFD8();
  v2 = *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_cachedGroupedLabelsAXElement);
  if (v2)
  {
    *(v1 + 56) = sub_10000A7C4(0, &unk_100AEDDA0, UIAccessibilityElement_ptr);
    *(v1 + 32) = v2;
    if (*(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentCount) < 1)
    {
      v7 = v2;
    }

    else
    {
      v3 = *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentButton);
      v8[3] = type metadata accessor for SupplementalContentButton();
      v8[0] = v3;
      v4 = v2;
      v5 = v3;
      v6 = sub_10066A640(1, 2, 1, v1);
      *(v6 + 2) = 2;
      sub_1000076D4(v8, (v6 + 64));
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10042CFD8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_cachedGroupedLabelsAXElement;
  if (!*(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_cachedGroupedLabelsAXElement))
  {
    v3 = [objc_allocWithZone(UIAccessibilityElement) initWithAccessibilityContainer:v0];
    v4 = *(v0 + v2);
    *(v0 + v2) = v3;
    v5 = v3;

    if (v5)
    {
      [v5 setAccessibilityTraits:UIAccessibilityTraitHeader];
    }
  }

  v6 = *(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_title + 8);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_title);

    v8 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_10000B3D8((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[16 * v10];
    *(v11 + 4) = v7;
    *(v11 + 5) = v6;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v12 = *(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_author + 8);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_author);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10000B3D8(0, *(v8 + 2) + 1, 1, v8);
    }

    v15 = *(v8 + 2);
    v14 = *(v8 + 3);
    if (v15 >= v14 >> 1)
    {
      v8 = sub_10000B3D8((v14 > 1), v15 + 1, 1, v8);
    }

    *(v8 + 2) = v15 + 1;
    v16 = &v8[16 * v15];
    *(v16 + 4) = v13;
    *(v16 + 5) = v12;
  }

  v17 = *(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining + 8);
  if (v17)
  {
    v18 = *(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10000B3D8(0, *(v8 + 2) + 1, 1, v8);
    }

    v20 = *(v8 + 2);
    v19 = *(v8 + 3);
    if (v20 >= v19 >> 1)
    {
      v8 = sub_10000B3D8((v19 > 1), v20 + 1, 1, v8);
    }

    *(v8 + 2) = v20 + 1;
    v21 = &v8[16 * v20];
    *(v21 + 4) = v18;
    *(v21 + 5) = v17;
  }

  v22 = *(v1 + v2);
  if (v22)
  {
    if (*(v8 + 2))
    {
      v23 = v22;
      sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
      sub_10000B4E4();
      sub_1007A20B4();

      v24 = sub_1007A2214();
    }

    else
    {
      v23 = v22;

      v24 = 0;
    }

    [v23 setAccessibilityLabel:v24];

    v25 = *(v1 + v2);
    if (v25)
    {
      goto LABEL_28;
    }
  }

  else
  {

    v25 = *(v1 + v2);
    if (v25)
    {
LABEL_28:
      v26 = *(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel);
      v27 = v25;
      [v26 accessibilityFrame];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      [*(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel) accessibilityFrame];
      v62.origin.x = v36;
      v62.origin.y = v37;
      v62.size.width = v38;
      v62.size.height = v39;
      v56.origin.x = v29;
      v56.origin.y = v31;
      v56.size.width = v33;
      v56.size.height = v35;
      v57 = CGRectUnion(v56, v62);
      x = v57.origin.x;
      y = v57.origin.y;
      width = v57.size.width;
      height = v57.size.height;
      [*(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel) accessibilityFrame];
      v63.origin.x = v44;
      v63.origin.y = v45;
      v63.size.width = v46;
      v63.size.height = v47;
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      v59 = CGRectUnion(v58, v63);
      v48 = v59.origin.x;
      v49 = v59.origin.y;
      v50 = v59.size.width;
      v51 = v59.size.height;
      [*(v1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImageView) accessibilityFrame];
      v64.origin.x = v52;
      v64.origin.y = v53;
      v64.size.width = v54;
      v64.size.height = v55;
      v60.origin.x = v48;
      v60.origin.y = v49;
      v60.size.width = v50;
      v60.size.height = v51;
      v61 = CGRectUnion(v60, v64);
      [v27 setAccessibilityFrame:{v61.origin.x, v61.origin.y, v61.size.width, v61.size.height}];
    }
  }
}

id sub_10042D3F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AudiobookTOCHeaderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10042D5A8(uint64_t a1, char a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_separator);
  if (a2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];
  v4 = sub_10042A7DC();
  [v4 setAlpha:v3];
}

void sub_10042D62C()
{
  *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImage) = 0;
  v1 = (v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_author);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemaining);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentCount) = 0;
  *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_compactMode) = 0;
  *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView____lazy_storage___effectView) = 0;
  v4 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleLabel;
  v5 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD15B0 != -1)
  {
    swift_once();
  }

  [v5 setFont:qword_100AE2AF8];
  [v5 setLineBreakMode:2];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_titleGradientLayer;
  *(v0 + v6) = sub_10042A8A8();
  v7 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorLabel;
  v8 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD15B8 != -1)
  {
    swift_once();
  }

  [v8 setFont:qword_100AE2B00];
  v9 = objc_opt_self();
  v10 = [v9 bc_booksSecondaryLabelColor];
  [v8 setTextColor:v10];

  [v8 setLineBreakMode:2];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v7) = v8;
  v11 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_authorGradientLayer;
  *(v0 + v11) = sub_10042A8A8();
  v12 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_timeRemainingLabel;
  v13 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD15C0 != -1)
  {
    swift_once();
  }

  [v13 setFont:qword_100AE2B08];
  v14 = [v9 bc_booksSecondaryLabelColor];
  [v13 setTextColor:v14];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v12) = v13;
  v15 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverImageView;
  *(v0 + v15) = sub_10042AA54();
  v16 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_coverView;
  *(v0 + v16) = sub_10042AB58();
  v17 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_separator;
  v18 = [objc_allocWithZone(UIView) init];
  v19 = [v9 separatorColor];
  [v18 setBackgroundColor:v19];

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v17) = v18;
  v20 = OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementalContentButton;
  *(v0 + v20) = sub_10042AD98(v21);
  *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementaryContentHiddenConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_supplementaryContentVisibleConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Books22AudiobookTOCHeaderView_cachedGroupedLabelsAXElement) = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t type metadata accessor for DownloadActionItem(uint64_t a1)
{
  result = qword_100AE2C48;
  if (!qword_100AE2C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042DA80(uint64_t a1)
{
  sub_1001FEBC8(319, &unk_100AE9C00, &protocol descriptor for ContextActionDataProtocol);
  if (v1 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0, &protocol descriptor for ContextMenuPresentationContextProtocol);
    if (v2 <= 0x3F)
    {
      sub_1001FEB70(319);
      if (v3 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10, &protocol descriptor for FigaroProviding);
        if (v4 <= 0x3F)
        {
          sub_1001FEBC8(319, &unk_100AE2C58, &protocol descriptor for MenuAssetDownloadManaging);
          if (v5 <= 0x3F)
          {
            sub_100797144();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

id sub_10042DBA4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v21);
  sub_100009864(a2, v20);
  sub_100009864(a4, v19);
  v10 = [objc_opt_self() defaultManager];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = &type metadata for MenuAssetDownloadManager;
    v18 = &off_100A13238;
    *&v15 = v10;
    *(&v15 + 1) = result;
    v16 = [objc_opt_self() defaultHelper];
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v12 = *(type metadata accessor for DownloadActionItem(0) + 36);
    v13 = enum case for ContextActionType.download(_:);
    v14 = sub_100797144();
    (*(*(v14 - 8) + 104))(a5 + v12, v13, v14);
    sub_1000077C0(v21, a5);
    sub_1000077C0(v20, a5 + 40);
    *(a5 + 80) = a3;
    sub_1000077C0(v19, a5 + 88);
    return sub_1000077C0(&v15, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10042DD40()
{
  sub_10025FCD8(&v3);
  if (!v4)
  {
    sub_1001FF760(&v3);
    goto LABEL_8;
  }

  sub_1001FF7C8(&v3, &v5);
  sub_10000E3E8(&v5, v6);
  sub_1007976B4();
  if (sub_1007972D4() & 1) != 0 || (sub_10000E3E8(&v5, v6), sub_1007976B4(), (sub_1007972D4()) || (sub_10000E3E8(v0, v0[3]), (sub_100797794() & 1) == 0))
  {
    sub_1000074E0(&v5);
LABEL_8:
    v1 = 0;
    return v1 & 1;
  }

  sub_10000E3E8(&v5, v6);
  v1 = sub_1002C5798();
  sub_1000074E0(&v5);
  return v1 & 1;
}

uint64_t sub_10042DE48()
{
  v1[26] = v0;
  v2 = sub_10079ACE4();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  sub_1007A26F4();
  v1[32] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[33] = v4;
  v1[34] = v3;

  return _swift_task_switch(sub_10042DF54, v4, v3);
}

uint64_t sub_10042DF54()
{
  sub_10025FCD8((v0 + 64));
  if (*(v0 + 88))
  {
    sub_1001FF7C8((v0 + 64), (v0 + 16));
    sub_10000E3E8((v0 + 16), *(v0 + 40));
    v1 = sub_100797694();
    if (v1 == 2 || (v1 & 1) == 0)
    {
      v7 = *(v0 + 208);
      v8 = sub_10000E3E8(v7 + 16, v7[19]);
      v9 = v7[10];
      v10 = *v8;
      v11 = v8[1];
      v12 = v8[2];
      v13 = swift_task_alloc();
      *(v0 + 280) = v13;
      *v13 = v0;
      v13[1] = sub_10042E2C4;

      return sub_1002B7D74(v0 + 16, (v7 + 5), v9, v10, v11, v12);
    }

    else
    {
      sub_10000E3E8((*(v0 + 208) + 128), *(*(v0 + 208) + 152));
      sub_10000E3E8((v0 + 16), *(v0 + 40));
      v2 = sub_100797674();
      v4 = v3;
      *(v0 + 296) = v3;
      v5 = swift_task_alloc();
      *(v0 + 304) = v5;
      *v5 = v0;
      v5[1] = sub_10042E690;

      return (sub_1002BA2AC)(v2, v4, &type metadata for MenuAssetDownloadManager, &off_100A13238);
    }
  }

  else
  {

    sub_1001FF760(v0 + 64);
    sub_10079AC44();
    v14 = sub_10079ACC4();
    v15 = sub_1007A29B4();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 216);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Action doesn't have sufficient information to handle action.", v20, 2u);
    }

    (*(v18 + 8))(v17, v19);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10042E2C4()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_10042E484;
  }

  else
  {
    v5 = sub_10042E400;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10042E400()
{

  sub_1000074E0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10042E484()
{
  v19 = v0;

  sub_10079AC44();
  sub_1002B0670((v0 + 2), (v0 + 14));
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[31];
  v5 = v0[27];
  v6 = v0[28];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v17 = v5;
    v18 = v8;
    sub_10000E3E8(v0 + 14, v0[17]);
    v16 = v4;
    v9 = sub_1007976A4();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    sub_1000074E0(v0 + 14);
    v13 = sub_1000070F4(v11, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to download the sample with storeID %s", v7, 0xCu);
    sub_1000074E0(v8);

    (*(v6 + 8))(v16, v17);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
    sub_1000074E0(v0 + 14);
  }

  sub_1000074E0(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10042E690(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 312) = a1;

  v3 = *(v2 + 272);
  v4 = *(v2 + 264);

  return _swift_task_switch(sub_10042E7DC, v4, v3);
}

uint64_t sub_10042E7DC()
{
  v19 = v0;
  v1 = v0[39];

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10079AC44();
    sub_1002B0670((v0 + 2), (v0 + 20));
    v2 = sub_10079ACC4();
    v3 = sub_1007A29B4();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[30];
    v7 = v0[27];
    v6 = v0[28];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      sub_10000E3E8(v0 + 20, v0[23]);
      v17 = v5;
      v10 = sub_1007976A4();
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      sub_1000074E0(v0 + 20);
      v14 = sub_1000070F4(v12, v13, &v18);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to download libraryAsset with storeID %s", v8, 0xCu);
      sub_1000074E0(v9);

      (*(v6 + 8))(v17, v7);
    }

    else
    {

      (*(v6 + 8))(v5, v7);
      sub_1000074E0(v0 + 20);
    }
  }

  sub_1000074E0(v0 + 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10042E9F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_10042DE48();
}

uint64_t sub_10042EA84()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v24[-v6];
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v24[-v13];
  v25 = *(v0 + 32);
  v26 = *(v0 + 48);
  sub_1001F1160(&qword_100AF10C0, &qword_100824EC8);
  sub_10079E1C4();
  v15 = (v9 + 16);
  v16 = (v2 + 16);
  if (v24[15] == 1)
  {
    sub_1007A2154();
    sub_100796C94();
    (*v15)(v11, v14, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*v16)(v4, v7, v1);
    v19 = sub_1007A22D4(v11, 0, 0, v18, v4, "Themes & Settings scrolling button text", 39, 2);
  }

  else
  {
    sub_1007A2154();
    sub_100796C94();
    (*v15)(v11, v14, v8);
    type metadata accessor for BundleFinder();
    v20 = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:v20];
    (*v16)(v4, v7, v1);
    v19 = sub_1007A22D4(v11, 0, 0, v21, v4, "Themes & Settings paging button text", 36, 2);
  }

  v22 = v19;
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  return v22;
}

uint64_t sub_10042EDF0@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v67 = sub_1001F1160(&qword_100AE1108, &qword_100831A20);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v52 - v2;
  v3 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v3 - 8);
  v59 = &v52 - v4;
  v58 = sub_10079D4D4();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10079C434();
  v6 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AE2C98, &qword_100824EA8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v57 = sub_1001F1160(&qword_100AE2CA0, &qword_100824EB0);
  __chkstk_darwin(v57);
  v14 = &v52 - v13;
  v63 = sub_1001F1160(&qword_100AE2CA8, &qword_100824EB8);
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v52 - v15;
  v64 = sub_1001F1160(&qword_100AE2CB0, &qword_100824EC0);
  __chkstk_darwin(v64);
  v61 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v52 - v18;
  v73 = *(v1 + 32);
  v19 = *(v1 + 48);
  v54 = v1;
  LOBYTE(v74) = v19;
  sub_1001F1160(&qword_100AF10C0, &qword_100824EC8);
  sub_10079E1F4();
  v72 = v1;
  sub_1001F1160(&qword_100AE2CB8, &qword_100824ED0);
  sub_100430328();
  sub_10079E154();
  sub_10079C424();
  sub_100005920(&qword_100AE2CC8, &qword_100AE2C98, &qword_100824EA8, &protocol conformance descriptor for Toggle<A>);
  sub_1004308DC(&qword_100AE2CD0, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
  v20 = v53;
  sub_10079D734();
  (*(v6 + 8))(v8, v20);
  (*(v10 + 8))(v12, v9);
  v21 = v56;
  v22 = v55;
  v23 = v58;
  (*(v56 + 104))(v55, enum case for Font.TextStyle.callout(_:), v58);
  v24 = sub_10079D3A4();
  v25 = v59;
  (*(*(v24 - 8) + 56))(v59, 1, 1, v24);
  sub_10079D434();
  sub_100007840(v25, &unk_100AD1FC0, &unk_10080B850);
  (*(v21 + 8))(v22, v23);
  sub_10079D3F4();
  v26 = sub_10079D464();

  KeyPath = swift_getKeyPath();
  v28 = *(sub_1001F1160(&qword_100AE2CD8, &qword_100824F08) + 36);
  v52 = v14;
  v29 = &v14[v28];
  *v29 = KeyPath;
  v29[1] = v26;
  v30 = v57;
  v31 = &v14[*(v57 + 36)];
  v32 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v33 = enum case for Image.Scale.large(_:);
  v34 = sub_10079DF84();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  sub_10079E414();
  v35 = v66;
  sub_10079C9F4();
  v36 = v54;
  v71 = v54;
  v37 = sub_1001F1160(&qword_100AE2CE0, &qword_100824F40);
  v38 = sub_1004303B4();
  *&v73 = &type metadata for Solarium;
  *(&v73 + 1) = &protocol witness table for Solarium;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = sub_1004305E4();
  v40 = v60;
  v41 = v67;
  v42 = v52;
  sub_10079DC64();
  (*(v68 + 8))(v35, v41);
  sub_100007840(v42, &qword_100AE2CA0, &qword_100824EB0);
  v78 = *(v36 + 56);
  *&v73 = v30;
  *(&v73 + 1) = v41;
  v74 = v37;
  v75 = v38;
  v76 = OpaqueTypeConformance2;
  v77 = v51;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v43 = v61;
  v44 = v63;
  sub_10079D8E4();
  (*(v65 + 8))(v40, v44);
  *&v73 = sub_10042EA84();
  *(&v73 + 1) = v45;
  v46 = v62;
  sub_10079C1E4();

  sub_100007840(v43, &qword_100AE2CB0, &qword_100824EC0);
  v70 = v36;
  sub_1001F1160(&qword_100AE2D20, &qword_100831AA0);
  sub_10043075C();
  sub_100005920(&qword_100AE2D30, &qword_100AE2D20, &qword_100831AA0, &protocol conformance descriptor for VStack<A>);
  v47 = v69;
  sub_10079DAC4();
  sub_100007840(v46, &qword_100AE2CB0, &qword_100824EC0);
  v48 = swift_getKeyPath();
  result = sub_1001F1160(&qword_100AE2D38, &unk_100824F80);
  v50 = v47 + *(result + 36);
  *v50 = v48;
  *(v50 + 8) = 0;
  return result;
}

double sub_10042F80C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079AA44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v18 - v9;
  if (*(a1 + 49))
  {
    if (qword_100AD1C38 != -1)
    {
      swift_once();
    }

    v11 = qword_100B23BF0;
  }

  else
  {
    if (qword_100AD1C50 != -1)
    {
      swift_once();
    }

    v11 = qword_100B23C38;
  }

  v12 = sub_100008B98(v4, v11);
  (*(v5 + 16))(v7, v12, v4);
  (*(v5 + 32))(v10, v7, v4);
  v13 = sub_10079DFB4();
  sub_10079E474();
  sub_10079C414();
  v14 = v18[2];
  *(a2 + 56) = v18[3];
  v15 = v18[5];
  *(a2 + 72) = v18[4];
  *(a2 + 88) = v15;
  *(a2 + 104) = v18[6];
  result = *v18;
  v17 = v18[1];
  *(a2 + 8) = v18[0];
  *(a2 + 24) = v17;
  *a2 = v13;
  *(a2 + 40) = v14;
  return result;
}

uint64_t sub_10042FA2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10079C824();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + 8);
  v10 = *a2;
  v22 = v10;
  v11 = v23;

  v12 = v10;
  if ((v11 & 1) == 0)
  {
    v13 = sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v22, &qword_100AD8538, &qword_10083FC00);
    (*(v7 + 8))(v9, v6);
    v12 = v21;
  }

  sub_100039BB4(a1, a3);
  v15 = a3 + *(sub_1001F1160(&qword_100AE2D08, &qword_100824F48) + 36);
  *v15 = v12;
  *(v15 + 8) = 256;

  if ((v11 & 1) == 0)
  {
    v16 = sub_1007A29C4();
    v17 = sub_10079D244();
    sub_10079AB44(v16, &_mh_execute_header, v17, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    sub_100007840(&v22, &qword_100AD8538, &qword_10083FC00);
    (*(v7 + 8))(v9, v6);
    v10 = v21;
  }

  result = sub_1001F1160(&qword_100AE2CE0, &qword_100824F40);
  v19 = a3 + *(result + 36);
  *v19 = v10;
  *(v19 + 8) = 0;
  return result;
}

__n128 sub_10042FC98@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = sub_10079CB24();
  sub_10042FD14(a1, &v9);
  v5 = v9;
  v6 = v11;
  v7 = v12;
  result = v10;
  a2->n128_u64[0] = v4;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = 1;
  a2[1].n128_u64[1] = v5;
  a2[2] = result;
  a2[3].n128_u8[0] = v6;
  a2[3].n128_u64[1] = v7;
  return result;
}

double sub_10042FD14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10079AA44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  if (*(a1 + 49))
  {
    if (qword_100AD1C38 != -1)
    {
      swift_once();
    }

    v11 = qword_100B23BF0;
  }

  else
  {
    if (qword_100AD1C50 != -1)
    {
      swift_once();
    }

    v11 = qword_100B23C38;
  }

  v12 = sub_100008B98(v4, v11);
  (*(v5 + 16))(v7, v12, v4);
  (*(v5 + 32))(v10, v7, v4);
  v13 = sub_10079DFB4();
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v23[0] = v14;
  v23[1] = v15;
  sub_100206ECC();

  v16 = sub_10079D5D4();
  v18 = v17;
  *a2 = v13;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  v20 = v19 & 1;
  *(a2 + 24) = v19 & 1;
  *(a2 + 32) = v21;

  sub_1001F1894(v16, v18, v20);

  sub_10020B430(v16, v18, v20);

  return result;
}

uint64_t sub_10042FF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v32 = a2;
  v6 = sub_100796CF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = sub_1007A21D4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  KeyPath = swift_getKeyPath();
  v36 = 0;
  v29 = swift_getKeyPath();
  v35 = 0;
  sub_1007A2154();
  sub_100796C94();
  (*(v14 + 16))(v16, v19, v13);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v7 + 16))(v9, v12, v6);
  v22 = sub_1007A22D4(v16, 0, 0, v21, v9, "Accessibility label for a button that toggles between paging and scrolling layouts", 82, 2);
  v24 = v23;
  (*(v7 + 8))(v12, v6);
  result = (*(v14 + 8))(v19, v13);
  v26 = v36;
  v27 = v35;
  *a5 = KeyPath;
  *(a5 + 8) = v26;
  *(a5 + 16) = v29;
  *(a5 + 24) = v27;
  v28 = v32;
  *(a5 + 32) = v31;
  *(a5 + 40) = v28;
  LOBYTE(v28) = v34;
  *(a5 + 48) = v33;
  *(a5 + 49) = v28;
  *(a5 + 56) = v22;
  *(a5 + 64) = v24;
  return result;
}

uint64_t sub_10043025C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004302A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100430328()
{
  result = qword_100AE2CC0;
  if (!qword_100AE2CC0)
  {
    sub_1001F1234(&qword_100AE2CB8, &qword_100824ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2CC0);
  }

  return result;
}

unint64_t sub_1004303B4()
{
  result = qword_100AE2CE8;
  if (!qword_100AE2CE8)
  {
    sub_1001F1234(&qword_100AE2CA0, &qword_100824EB0);
    sub_10043046C();
    sub_100005920(&unk_100AD1D00, &qword_100AEE3C0, &qword_1008173A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2CE8);
  }

  return result;
}

unint64_t sub_10043046C()
{
  result = qword_100AE2CF0;
  if (!qword_100AE2CF0)
  {
    sub_1001F1234(&qword_100AE2CD8, &qword_100824F08);
    sub_1001F1234(&qword_100AE2C98, &qword_100824EA8);
    sub_10079C434();
    sub_100005920(&qword_100AE2CC8, &qword_100AE2C98, &qword_100824EA8, &protocol conformance descriptor for Toggle<A>);
    sub_1004308DC(&qword_100AE2CD0, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0, &unk_10080B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2CF0);
  }

  return result;
}

unint64_t sub_1004305E4()
{
  result = qword_100AE2CF8;
  if (!qword_100AE2CF8)
  {
    sub_1001F1234(&qword_100AE2CE0, &qword_100824F40);
    sub_10043069C();
    sub_100005920(&qword_100AE2D10, &qword_100AE2D18, &qword_10083FB80, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2CF8);
  }

  return result;
}

unint64_t sub_10043069C()
{
  result = qword_100AE2D00;
  if (!qword_100AE2D00)
  {
    sub_1001F1234(&qword_100AE2D08, &qword_100824F48);
    sub_1004303B4();
    sub_100005920(&qword_100ADC320, &qword_100ADC300, &unk_100831A50, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2D00);
  }

  return result;
}

unint64_t sub_10043075C()
{
  result = qword_100AE2D28;
  if (!qword_100AE2D28)
  {
    sub_1001F1234(&qword_100AE2CB0, &qword_100824EC0);
    sub_1001F1234(&qword_100AE2CA0, &qword_100824EB0);
    sub_1001F1234(&qword_100AE1108, &qword_100831A20);
    sub_1001F1234(&qword_100AE2CE0, &qword_100824F40);
    sub_1004303B4();
    swift_getOpaqueTypeConformance2();
    sub_1004305E4();
    swift_getOpaqueTypeConformance2();
    sub_1004308DC(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2D28);
  }

  return result;
}

uint64_t sub_1004308DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100430924()
{
  result = qword_100AE2D40;
  if (!qword_100AE2D40)
  {
    sub_1001F1234(&qword_100AE2D38, &unk_100824F80);
    sub_1001F1234(&qword_100AE2CB0, &qword_100824EC0);
    sub_1001F1234(&qword_100AE2D20, &qword_100831AA0);
    sub_10043075C();
    sub_100005920(&qword_100AE2D30, &qword_100AE2D20, &qword_100831AA0, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD53F8, &qword_100ADB9B0, &qword_10081A210, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2D40);
  }

  return result;
}

uint64_t sub_100430A78()
{
  sub_100430BF4(v0 + 16);

  swift_unknownObjectWeakDestroy();
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100430AEC()
{
  swift_unknownObjectUnownedDestroy();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100430B58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100430BA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100430C24()
{
  v0 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1007967F4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100796CF4();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = sub_100796814();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_100796314();
  sub_100009A38(v18, qword_100B23338);
  v21[1] = sub_100008B98(v18, qword_100B23338);
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100796834();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_100796304();
}

uint64_t sub_10043103C()
{
  v0 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v0 - 8);
  v117 = &v96 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v2 - 8);
  v116 = &v96 - v3;
  v4 = sub_1007967F4();
  v5 = *(v4 - 8);
  v138 = v4;
  v139 = v5;
  __chkstk_darwin(v4);
  v127 = (&v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = sub_100796CF4();
  v132 = *(v123 - 8);
  __chkstk_darwin(v123);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v96 - v10;
  v12 = sub_1007A21D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v96 - v17;
  v134 = sub_100796814();
  v118 = *(v134 - 8);
  v133 = v118;
  __chkstk_darwin(v134);
  v125 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v115 = &v96 - v21;
  sub_1001F1160(&qword_100AE2F30, &qword_100825368);
  v22 = sub_1001F1160(&qword_100AD3AB0, &qword_10080CCB0);
  v113 = v22;
  v23 = *(v22 - 8);
  v107 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v108 = v25;
  *(v25 + 16) = xmmword_10080EFF0;
  v110 = v25 + v24;
  v106 = *(v22 + 48);
  *(v25 + v24) = 0;
  v26 = v18;
  sub_1007A2154();
  sub_100796C94();
  v27 = *(v13 + 16);
  v122 = v13 + 16;
  v128 = v27;
  v120 = v15;
  v28 = v18;
  v29 = v12;
  v27(v15, v28, v12);
  v30 = v132;
  v137 = *(v132 + 16);
  v129 = v132 + 16;
  v121 = v8;
  v31 = v123;
  v137(v8, v11, v123);
  v126 = type metadata accessor for BundleFinder();
  v32 = v127;
  *v127 = v126;
  v136 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v33 = *(v139 + 104);
  v139 += 104;
  v124 = v33;
  v33(v32);
  sub_100796834();
  v34 = *(v30 + 8);
  v132 = v30 + 8;
  v135 = v34;
  v35 = v11;
  v34(v11, v31);
  v36 = *(v13 + 8);
  v130 = v13 + 8;
  v131 = v36;
  v36(v26, v29);
  v37 = v133;
  v38 = *(v133 + 56);
  v104 = v133 + 56;
  v105 = v38;
  v38(v116, 1, 1, v134);
  sub_1007960E4();
  v103 = sub_1001F1160(&qword_100AD4A80, &qword_1008119B0);
  v111 = *(v118 + 72);
  v102 = *(v37 + 80);
  v39 = (v102 + 32) & ~v102;
  v99 = v39;
  v112 = 2 * v111;
  v101 = 3 * v111;
  v40 = swift_allocObject();
  v100 = xmmword_100812CF0;
  v98 = v40;
  *(v40 + 16) = xmmword_100812CF0;
  v41 = v40 + v39;
  v114 = v40 + v39;
  sub_1007A2154();
  sub_100796C94();
  v42 = v26;
  v128(v120, v26, v29);
  v43 = v35;
  v44 = v35;
  v45 = v123;
  v137(v121, v43, v123);
  v46 = v127;
  *v127 = v126;
  v124(v46, v136, v138);
  v47 = v125;
  sub_100796834();
  v135(v44, v45);
  v109 = v29;
  v131(v42, v29);
  v118 = *(v133 + 32);
  v133 += 32;
  v48 = v47;
  v49 = v134;
  (v118)(v41, v48, v134);
  v119 = v42;
  sub_1007A2154();
  v50 = v44;
  sub_100796C94();
  v51 = v128;
  v128(v120, v42, v29);
  v52 = v121;
  v53 = v45;
  v137(v121, v44, v45);
  *v46 = v126;
  v54 = v124;
  v124(v46, v136, v138);
  v55 = v125;
  sub_100796834();
  v135(v44, v53);
  v56 = v119;
  v57 = v109;
  v131(v119, v109);
  v58 = v49;
  v59 = v118;
  (v118)(v114 + v111, v55, v58);
  sub_1007A2154();
  sub_100796C94();
  v51(v120, v56, v57);
  v60 = v50;
  v61 = v123;
  v137(v52, v50, v123);
  v62 = v126;
  v63 = v127;
  *v127 = v126;
  v54(v63, v136, v138);
  v64 = v125;
  sub_100796834();
  v65 = v60;
  v135(v60, v61);
  v66 = v119;
  v131(v119, v57);
  v59(v114 + v112, v64, v134);
  v67 = v110;
  v68 = v116;
  sub_100796114();
  v106 = (v67 + v107);
  v107 = *(v113 + 48);
  *v106 = 1;
  sub_1007A2154();
  v97 = v65;
  sub_100796C94();
  v69 = v120;
  v128(v120, v66, v57);
  v70 = v123;
  v137(v121, v65, v123);
  v71 = v127;
  *v127 = v62;
  v72 = v124;
  v124(v71, v136, v138);
  sub_100796834();
  v73 = v97;
  v135(v97, v70);
  v74 = v119;
  v131(v119, v57);
  v105(v68, 1, 1, v134);
  sub_1007960E4();
  v75 = v99;
  v76 = swift_allocObject();
  v105 = v76;
  *(v76 + 16) = v100;
  v114 = v76 + v75;
  sub_1007A2154();
  sub_100796C94();
  v77 = v74;
  v78 = v57;
  v128(v69, v77, v57);
  v137(v121, v73, v70);
  v79 = v127;
  *v127 = v126;
  v80 = v138;
  v72(v79, v136, v138);
  v81 = v125;
  sub_100796834();
  v135(v73, v70);
  v82 = v119;
  v83 = v78;
  v84 = v78;
  v85 = v131;
  v131(v119, v84);
  (v118)(v114, v81, v134);
  sub_1007A2154();
  sub_100796C94();
  v86 = v120;
  v128(v120, v82, v83);
  v87 = v121;
  v88 = v123;
  v137(v121, v73, v123);
  v89 = v127;
  *v127 = v126;
  v124(v89, v136, v80);
  v90 = v125;
  sub_100796834();
  v91 = v88;
  v135(v73, v88);
  v92 = v119;
  v93 = v109;
  v85(v119, v109);
  (v118)(v114 + v111, v90, v134);
  sub_1007A2154();
  sub_100796C94();
  v128(v86, v92, v93);
  v137(v87, v73, v91);
  *v89 = v126;
  v124(v89, v136, v138);
  sub_100796834();
  v135(v73, v91);
  v131(v92, v93);
  (v118)(v114 + v112, v90, v134);
  sub_100796114();
  v94 = sub_1001EE5E0(v108);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B23350 = v94;
  return result;
}

uint64_t sub_100432048(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6573616572636564;
  }

  else
  {
    v3 = 0x6573616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1007A3AB4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1004320C8()
{
  result = qword_100AE2EC8;
  if (!qword_100AE2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2EC8);
  }

  return result;
}

Swift::Int sub_10043211C()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

double sub_100432188(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return result;
}

Swift::Int sub_1004321D8(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

void sub_100432240(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100A0D0A8;
  v7._object = v3;
  v5 = sub_1007A3964(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1004322A0(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6573616572636564;
  }

  else
  {
    v2 = 0x6573616572636E69;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

unint64_t sub_1004322D0()
{
  result = qword_100AE2ED0;
  if (!qword_100AE2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2ED0);
  }

  return result;
}

unint64_t sub_100432328()
{
  result = qword_100AE2ED8;
  if (!qword_100AE2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2ED8);
  }

  return result;
}

unint64_t sub_100432380()
{
  result = qword_100AE2EE0;
  if (!qword_100AE2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2EE0);
  }

  return result;
}

unint64_t sub_1004323D8()
{
  result = qword_100AE2EE8;
  if (!qword_100AE2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2EE8);
  }

  return result;
}

unint64_t sub_10043242C()
{
  result = qword_100AE2EF0;
  if (!qword_100AE2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2EF0);
  }

  return result;
}

unint64_t sub_100432480()
{
  result = qword_100AE2EF8;
  if (!qword_100AE2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2EF8);
  }

  return result;
}

unint64_t sub_1004324D8()
{
  result = qword_100AE2F00;
  if (!qword_100AE2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2F00);
  }

  return result;
}

uint64_t sub_10043252C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD15E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100796314();
  v3 = sub_100008B98(v2, qword_100B23338);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100432624(uint64_t a1)
{
  v2 = sub_100408C54();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100432674()
{
  result = qword_100AE2F08;
  if (!qword_100AE2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2F08);
  }

  return result;
}

unint64_t sub_1004326CC()
{
  result = qword_100AE2F10;
  if (!qword_100AE2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2F10);
  }

  return result;
}

unint64_t sub_100432724()
{
  result = qword_100AE2F18;
  if (!qword_100AE2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2F18);
  }

  return result;
}

double sub_100432778()
{
  if (qword_100AD15E8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1004327D4(uint64_t a1)
{
  v2 = sub_1004324D8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100432824()
{
  result = qword_100AE2F20;
  if (!qword_100AE2F20)
  {
    sub_1001F1234(&qword_100AE2F28, &qword_100825308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2F20);
  }

  return result;
}

uint64_t type metadata accessor for GiftActionItem(uint64_t a1)
{
  result = qword_100AE2F90;
  if (!qword_100AE2F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100432924(uint64_t a1)
{
  sub_1001FEBC8(319, &qword_100AD4AF0, &protocol descriptor for ContextMenuPresentationContextProtocol);
  if (v1 <= 0x3F)
  {
    sub_1001FEBC8(319, &unk_100AE9C00, &protocol descriptor for ContextActionDataProtocol);
    if (v2 <= 0x3F)
    {
      sub_1001FEB70(319);
      if (v3 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10, &protocol descriptor for FigaroProviding);
        if (v4 <= 0x3F)
        {
          sub_100797144();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

BOOL sub_100432A28()
{
  v1 = v0;
  v2 = sub_1007971A4();
  v51 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v49 = &v46[-v5];
  v6 = sub_100799424();
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  __chkstk_darwin(v6);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1001F1160(&qword_100AE2FD8, &unk_100825460);
  __chkstk_darwin(v10);
  v12 = &v46[-v11];
  v13 = sub_1001F1160(&qword_100AE2FE0, &qword_100835F30);
  __chkstk_darwin(v13 - 8);
  v15 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v46[-v17];
  __chkstk_darwin(v19);
  v21 = &v46[-v20];
  sub_10000E3E8(v0 + 5, v0[8]);
  sub_1007977A4();
  if (v56)
  {
    sub_1001FF70C(&v54);
    return 0;
  }

  v48 = v2;
  sub_1000077C0(&v54, v57);
  sub_1000077C0(v57, &v54);
  sub_10000E3E8(&v54, v55);
  v22 = sub_1007976A4();
  if (!v23 || (*&v57[0] = v22, *(&v57[0] + 1) = v23, sub_1002060B4(), v24 = sub_1007A28A4(), , (v24 & 1) == 0) || (v25 = [objc_msgSend(objc_opt_self() "sharedInstance")], swift_unknownObjectRelease(), !v25) || (v26 = objc_msgSend(objc_opt_self(), "sharedProvider"), v27 = objc_msgSend(v26, "isStoreAccountManagedAppleID"), v26, (v27 & 1) != 0))
  {
LABEL_13:
    sub_1000074E0(&v54);
    return 0;
  }

  sub_10000E3E8(&v54, v55);
  sub_1007976C4();
  v28 = v52;
  v29 = v53;
  (*(v53 + 104))(v18, enum case for MAsset.OfferType.buy(_:), v52);
  (*(v29 + 56))(v18, 0, 1, v28);
  v30 = *(v10 + 48);
  v31 = v28;
  sub_100433EB0(v21, v12);
  sub_100433EB0(v18, &v12[v30]);
  v32 = *(v29 + 48);
  if (v32(v12, 1, v31) == 1)
  {
    sub_100007840(v18, &qword_100AE2FE0, &qword_100835F30);
    sub_100007840(v21, &qword_100AE2FE0, &qword_100835F30);
    if (v32(&v12[v30], 1, v31) == 1)
    {
      sub_100007840(v12, &qword_100AE2FE0, &qword_100835F30);
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  sub_100433EB0(v12, v15);
  if (v32(&v12[v30], 1, v31) == 1)
  {
    sub_100007840(v18, &qword_100AE2FE0, &qword_100835F30);
    sub_100007840(v21, &qword_100AE2FE0, &qword_100835F30);
    (*(v53 + 8))(v15, v31);
LABEL_12:
    sub_100007840(v12, &qword_100AE2FD8, &unk_100825460);
    goto LABEL_13;
  }

  v34 = v53;
  (*(v53 + 32))(v9, &v12[v30], v31);
  sub_100433F20();
  v47 = sub_1007A2124();
  v35 = *(v34 + 8);
  v35(v9, v31);
  sub_100007840(v18, &qword_100AE2FE0, &qword_100835F30);
  sub_100007840(v21, &qword_100AE2FE0, &qword_100835F30);
  v35(v15, v31);
  sub_100007840(v12, &qword_100AE2FE0, &qword_100835F30);
  if ((v47 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (*(v1 + *(type metadata accessor for GiftActionItem(0) + 36)) == 1)
  {
    sub_1000074E0(&v54);
    return 1;
  }

  else
  {
    sub_10000E3E8(v1 + 5, v1[8]);
    v36 = v49;
    sub_100797784();
    v38 = v50;
    v37 = v51;
    v39 = *(v51 + 104);
    v40 = v48;
    v39(v50, enum case for ContextActionSource.productPage(_:), v48);
    v41 = sub_100797184();
    v42 = *(v37 + 8);
    v42(v38, v40);
    v42(v36, v40);
    if (v41 & 1) != 0 || (v43 = v1[8], v53 = v1[9], sub_10000E3E8(v1 + 5, v43), sub_100797784(), v39(v38, enum case for ContextActionSource.unifiedProductItem(_:), v40), LOBYTE(v43) = sub_100797184(), v42(v38, v40), v42(v36, v40), (v43))
    {
      sub_10000E3E8(&v54, v55);
      v44 = *(sub_1007975C4() + 16);

      v45 = v44 < 2;
    }

    else
    {
      v45 = 0;
    }

    sub_1000074E0(&v54);
    return v45;
  }
}

uint64_t sub_1004331A4()
{
  v31 = sub_1007971A4();
  v0 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v28 = &v28 - v3;
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v5 + 16))(v7, v10, v4);
  v20 = sub_1007A22D4(v14, 0, 0, v19, v7, "Context Menu: Gift action menu item title", 41, 2);
  (*(v5 + 8))(v10, v4);
  (*(v12 + 8))(v17, v11);
  v21 = v30;
  sub_10000E3E8((v30 + 40), *(v30 + 64));
  v22 = v28;
  sub_100797784();
  v23 = v29;
  v24 = v31;
  (*(v0 + 104))(v29, enum case for ContextActionSource.sendGiftActionItem(_:), v31);
  LOBYTE(v4) = sub_100797184();
  v25 = *(v0 + 8);
  v25(v23, v24);
  v25(v22, v24);
  if (v4)
  {
    sub_10000E3E8((v21 + 40), *(v21 + 64));
    sub_1007977A4();
    if (v33 == 1)
    {
      sub_1001FF70C(v32);
    }

    else
    {

      sub_1000077C0(v32, v34);
      sub_1000077C0(v34, v35);
      sub_10000E3E8((v21 + 40), *(v21 + 64));
      if (sub_100797774())
      {
        v26 = sub_100797804();
      }

      else
      {
        sub_10000E3E8(v35, v35[3]);
        v26 = sub_100797574();
      }

      v20 = v26;
      sub_1000074E0(v35);
    }
  }

  return v20;
}

uint64_t sub_100433620()
{
  v1 = v0;
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  sub_10000E3E8((v0 + 40), *(v0 + 64));
  if ((sub_100797774() & 1) == 0)
  {
    return 0;
  }

  sub_10000E3E8((v0 + 40), *(v0 + 64));
  sub_100797784();
  (*(v3 + 104))(v5, enum case for ContextActionSource.sendGiftActionItem(_:), v2);
  v9 = sub_100797184();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_10000E3E8((v1 + 40), *(v1 + 64));
  sub_1007977A4();
  if (v15 != 1)
  {
    sub_1000077C0(v14, v16);
    sub_1000077C0(v16, v17);
    sub_10000E3E8(v17, v18);
    sub_1007976B4();
    if (sub_1007972D4())
    {
      v12 = sub_1007977E4();
    }

    else
    {
      sub_10000E3E8(v17, v18);
      sub_1007976B4();
      if ((sub_1007972D4() & 1) == 0)
      {
        sub_1000074E0(v17);
        return 0;
      }

      v12 = sub_1007977F4();
    }

    v13 = v12;
    sub_1000074E0(v17);
    return v13;
  }

  sub_1001FF70C(v14);
  return 0;
}

uint64_t sub_100433894()
{
  v1[12] = v0;
  sub_1007A26F4();
  v1[13] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_10043392C, v3, v2);
}

uint64_t sub_10043392C()
{
  sub_10000E3E8((*(v0 + 96) + 40), *(*(v0 + 96) + 64));
  v1 = sub_100797704();
  if (*(v1 + 16))
  {
    sub_100009864(v1 + 32, v0 + 56);

    sub_1000077C0((v0 + 56), v0 + 16);
    sub_10079AE34();
    *(v0 + 128) = sub_10079AE04();
    sub_10000E3E8((v0 + 16), *(v0 + 40));
    v2 = sub_100797674();
    v4 = v3;
    *(v0 + 136) = v3;
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_100433AAC;

    return AccountController.presentGiftViewController(for:with:)(v2, v4, 0);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100433AAC()
{
  v1 = *v0;
  v2 = *(*v0 + 128);

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return _swift_task_switch(sub_100433C08, v4, v3);
}

uint64_t sub_100433C08()
{

  sub_1000074E0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100433C7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100433894();
}

uint64_t sub_100433D08@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a5 + 32);
  v13 = enum case for ContextActionType.gift(_:);
  v14 = sub_100797144();
  (*(*(v14 - 8) + 104))(a6 + v12, v13, v14);
  sub_1000077C0(a1, a6 + 40);
  sub_1000077C0(a2, a6);
  *(a6 + 80) = a3;
  result = sub_1000077C0(a4, a6 + 88);
  *(a6 + *(a5 + 36)) = 0;
  return result;
}

uint64_t sub_100433DDC@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a6 + 32);
  v15 = enum case for ContextActionType.gift(_:);
  v16 = sub_100797144();
  (*(*(v16 - 8) + 104))(a7 + v14, v15, v16);
  sub_1000077C0(a1, a7 + 40);
  sub_1000077C0(a2, a7);
  *(a7 + 80) = a3;
  result = sub_1000077C0(a4, a7 + 88);
  *(a7 + *(a6 + 36)) = a5;
  return result;
}

uint64_t sub_100433EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE2FE0, &qword_100835F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100433F20()
{
  result = qword_100AE2FE8;
  if (!qword_100AE2FE8)
  {
    sub_100799424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE2FE8);
  }

  return result;
}

id sub_100433FE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookNowPlayingTouchViewControllerCoverSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id AudiobookNowPlayingTouchViewController.coverAnimationHostSource(forItem:)()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for AudiobookNowPlayingTouchViewControllerCoverSource();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC5Books49AudiobookNowPlayingTouchViewControllerCoverSource_view] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10043422C(uint64_t a1)
{
  sub_10000AE20(a1, v4);
  if (v5)
  {
    sub_1002BACBC();
    if (swift_dynamicCast())
    {
      v1 = [v3 contentType];

      return v1 == 3;
    }
  }

  else
  {
    sub_1000230BC(v4);
  }

  return 1;
}

uint64_t sub_100434438(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1001F1160(&qword_100AE3160, &qword_100825538);
  v2[13] = swift_task_alloc();
  v3 = sub_100799BB4();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10043453C, 0, 0);
}

uint64_t sub_10043453C()
{
  swift_getObjectType();
  v1 = sub_1004073B4();
  v2 = objc_allocWithZone(type metadata accessor for AMDGenreRecommendationService.Event());
  v3 = sub_100435444(v1);
  *(v0 + 144) = v3;

  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_100434688;

  return sub_100372DAC(v0 + 16, v3);
}

uint64_t sub_100434688()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100434BA4;
  }

  else
  {
    v2 = sub_10043479C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10043479C()
{
  sub_100007484((v0 + 2), (v0 + 6));
  sub_1001F1160(&qword_100AE3168, &unk_100825540);
  if (swift_dynamicCast())
  {
    v1 = v0[15];
    v2 = v0[10];
    v5 = *(v2 + 64);
    v4 = v2 + 64;
    v3 = v5;
    v6 = -1;
    v7 = -1 << *(v0[10] + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & v3;
    v9 = (63 - v7) >> 6;
    v37 = (v1 + 48);
    v38 = v0[10];
    v34 = v0[15];
    v35 = (v1 + 32);
    v10 = v0[20];

    v11 = 0;
    v36 = _swiftEmptyArrayStorage;
    while (1)
    {
      v12 = v11;
      if (!v8)
      {
        break;
      }

LABEL_9:
      v13 = v0[13];
      v14 = v0[11];
      v15 = (*(v38 + 48) + 16 * (__clz(__rbit64(v8)) | (v11 << 6)));
      v17 = *v15;
      v16 = v15[1];

      sub_100434C2C(v17, v16, v14, v13);
      if (v10)
      {
        v33 = v0[18];

        sub_1000074E0(v0 + 2);

        goto LABEL_18;
      }

      v8 &= v8 - 1;
      v19 = v0[13];
      v18 = v0[14];

      if ((*v37)(v19, 1, v18) == 1)
      {
        sub_100007840(v0[13], &qword_100AE3160, &qword_100825538);
        v10 = 0;
      }

      else
      {
        v21 = v0[16];
        v20 = v0[17];
        v22 = v0[14];
        v23 = *v35;
        (*v35)(v20, v0[13], v22);
        v23(v21, v20, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_10066BAD4(0, v36[2] + 1, 1, v36);
        }

        v25 = v36[2];
        v24 = v36[3];
        if (v25 >= v24 >> 1)
        {
          v36 = sub_10066BAD4((v24 > 1), v25 + 1, 1, v36);
        }

        v26 = v0[16];
        v27 = v0[14];
        v36[2] = v25 + 1;
        v23(v36 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25, v26, v27);
        v10 = 0;
      }
    }

    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v4 + 8 * v11);
      ++v12;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    v31 = v0[18];

    sub_1000074E0(v0 + 2);

    v32 = v0[1];

    v32(v36);
  }

  else
  {
    v28 = v0[18];
    sub_1004355C0();
    swift_allocError();
    *v29 = 0;
    v29[1] = 0;
    swift_willThrow();

    sub_1000074E0(v0 + 2);
LABEL_18:

    v30 = v0[1];

    v30();
  }
}

uint64_t sub_100434BA4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100434C2C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a4;
  v8 = sub_1001F1160(&qword_100AE3178, &qword_10082F8F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v63[-v9];
  v11 = sub_10079A854();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1001F1160(&qword_100AE3180, &unk_100825550);
  __chkstk_darwin(v12 - 8);
  v14 = &v63[-v13];
  v15 = sub_10079A734();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v20 = &v63[-v18];
  v21 = HIBYTE(a2) & 0xF;
  v22 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v23 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v69[0] = a1;
      v69[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v21)
        {
          if (--v21)
          {
            v36 = 0;
            v37 = v69 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              if (!is_mul_ok(v36, 0xAuLL))
              {
                break;
              }

              v29 = __CFADD__(10 * v36, v38);
              v36 = 10 * v36 + v38;
              if (v29)
              {
                break;
              }

              ++v37;
              if (!--v21)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_75:
        __break(1u);
        return;
      }

      if (a1 != 45)
      {
        if (v21)
        {
          v41 = 0;
          v42 = v69;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            if (!is_mul_ok(v41, 0xAuLL))
            {
              break;
            }

            v29 = __CFADD__(10 * v41, v43);
            v41 = 10 * v41 + v43;
            if (v29)
            {
              break;
            }

            ++v42;
            if (!--v21)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v21)
      {
        if (--v21)
        {
          v30 = 0;
          v31 = v69 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            if (!is_mul_ok(v30, 0xAuLL))
            {
              break;
            }

            v29 = 10 * v30 >= v32;
            v30 = 10 * v30 - v32;
            if (!v29)
            {
              break;
            }

            ++v31;
            if (!--v21)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v24 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v61 = &v63[-v18];
        v65 = a3;
        v62 = v19;
        v24 = sub_1007A37B4();
        v19 = v62;
        v20 = v61;
      }

      v25 = *v24;
      if (v25 == 43)
      {
        if (v22 >= 1)
        {
          v21 = v22 - 1;
          if (v22 != 1)
          {
            v33 = 0;
            if (v24)
            {
              v34 = v24 + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v33, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v29 = __CFADD__(10 * v33, v35);
                v33 = 10 * v33 + v35;
                if (v29)
                {
                  goto LABEL_63;
                }

                ++v34;
                if (!--v21)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_74;
      }

      if (v25 != 45)
      {
        if (v22)
        {
          v39 = 0;
          if (v24)
          {
            while (1)
            {
              v40 = *v24 - 48;
              if (v40 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v39, 0xAuLL))
              {
                goto LABEL_63;
              }

              v29 = __CFADD__(10 * v39, v40);
              v39 = 10 * v39 + v40;
              if (v29)
              {
                goto LABEL_63;
              }

              ++v24;
              if (!--v22)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        LOBYTE(v21) = 1;
LABEL_64:
        v70 = v21;
        if (v21)
        {
LABEL_65:
          sub_1004355C0();
          swift_allocError();
          *v44 = a1;
          v44[1] = a2;

LABEL_69:
          swift_willThrow();
          return;
        }

        goto LABEL_67;
      }

      if (v22 >= 1)
      {
        v21 = v22 - 1;
        if (v22 != 1)
        {
          v26 = 0;
          if (v24)
          {
            v27 = v24 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v26, 0xAuLL))
              {
                goto LABEL_63;
              }

              v29 = 10 * v26 >= v28;
              v26 = 10 * v26 - v28;
              if (!v29)
              {
                goto LABEL_63;
              }

              ++v27;
              if (!--v21)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v21) = 0;
          goto LABEL_64;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v67 = &v63[-v18];
  v65 = a3;
  v45 = v19;

  sub_10063E4AC(a1, a2, 10);
  v64 = v46;

  v19 = v45;
  v20 = v67;
  if (v64)
  {
    goto LABEL_65;
  }

LABEL_67:
  v47 = v19;
  v48 = v20;
  sub_100799FA4();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100007840(v14, &qword_100AE3180, &unk_100825550);
    sub_1004355C0();
    swift_allocError();
    *v49 = xmmword_1008254B0;
    goto LABEL_69;
  }

  v50 = *(v16 + 32);
  v67 = v48;
  v50(v48, v14, v15);
  v51 = *(v16 + 16);
  v66 = v47;
  v51(v47, v48, v15);
  sub_1001F1160(&unk_100AD6740, &qword_100812D98);
  v52 = v16;
  v53 = sub_10079A1E4();
  v54 = *(v53 - 8);
  v55 = *(v54 + 80);
  v65 = v15;
  v56 = v68;
  v57 = (v55 + 32) & ~v55;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_10080B690;
  (*(v54 + 104))(v58 + v57, enum case for RecommendationSource.siri(_:), v53);
  v59 = sub_10079A834();
  (*(*(v59 - 8) + 56))(v10, 1, 1, v59);
  sub_10079A814();
  sub_100799B84();
  (*(v52 + 8))(v67, v65);
  v60 = sub_100799BB4();
  (*(*(v60 - 8) + 56))(v56, 0, 1, v60);
}

uint64_t sub_1004353AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002104D8;

  return sub_100434438(a1);
}

id sub_100435444(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCC5Books29AMDGenreRecommendationServiceP33_62C9D66230C56EEE80751242C5DC77115Event_data;
  *&v1[OBJC_IVAR____TtCC5Books29AMDGenreRecommendationServiceP33_62C9D66230C56EEE80751242C5DC77115Event_data] = 0;
  v5 = OBJC_IVAR____TtCC5Books29AMDGenreRecommendationServiceP33_62C9D66230C56EEE80751242C5DC77115Event_engagementData;
  *&v1[OBJC_IVAR____TtCC5Books29AMDGenreRecommendationServiceP33_62C9D66230C56EEE80751242C5DC77115Event_engagementData] = 0;
  sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x80000001008D4B10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1684632420;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 120) = sub_10023A724();
  *(inited + 96) = a1;
  v7 = a1;
  v8 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  swift_arrayDestroy();
  sub_10058096C(v8);
  *&v1[v4] = v9;

  sub_10058096C(v8);
  v11 = v10;

  *&v1[v5] = v11;

  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

unint64_t sub_1004355C0()
{
  result = qword_100AE3170;
  if (!qword_100AE3170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE3170);
  }

  return result;
}

uint64_t sub_100435614(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10043562C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100435680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1004356DC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1004357B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1001F1160(&qword_100AE3540, &unk_100825880);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12, a1, v6, v11);
  (v14)(v9, v13, v6);
  swift_beginAccess();
  sub_1001F1160(&qword_100ADEA18, &qword_10081E7B0);
  sub_10079B984();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_1004359B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1001F1160(&qword_100AE3538, &qword_100825878);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12, a1, v6, v11);
  (v14)(v9, v13, v6);
  swift_beginAccess();
  sub_1001F1160(&qword_100AE31A0, &qword_1008256D0);
  sub_10079B984();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

void sub_100435BB8(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v5);

  *a4 = v5;
}

uint64_t sub_100435C48(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_100435CCC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  sub_1001F1160(a5, a6);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t sub_100435D64(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_1001F1160(a2, a3);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t sub_100435DDC()
{
  v1 = v0;
  v2 = sub_1007A2E74();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AE31A0, &qword_1008256D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v8 = sub_1001F1160(&qword_100ADEA18, &qword_10081E7B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = OBJC_IVAR____TtC5Books22BookOrientationTracker__previousInterfaceOrientation;
  v31[0] = 0;
  type metadata accessor for UIInterfaceOrientation(0);
  sub_10079B964();
  v13 = *(v9 + 32);
  v13(v1 + v12, v11, v8);
  v14 = OBJC_IVAR____TtC5Books22BookOrientationTracker__currentInterfaceOrientation;
  v31[0] = 0;
  sub_10079B964();
  v13(v1 + v14, v11, v8);
  v15 = OBJC_IVAR____TtC5Books22BookOrientationTracker__currentDeviceOrientation;
  v31[0] = 0;
  type metadata accessor for UIDeviceOrientation(0);
  sub_10079B964();
  v16 = *(v5 + 32);
  v16(v1 + v15, v7, v4);
  v17 = OBJC_IVAR____TtC5Books22BookOrientationTracker__previousDeviceOrientation;
  v31[0] = 0;
  sub_10079B964();
  v16(v1 + v17, v7, v4);
  *(v1 + OBJC_IVAR____TtC5Books22BookOrientationTracker_cancellables) = &_swiftEmptySetSingleton;
  v18 = [objc_opt_self() _applicationKeyWindow];
  if (v18 && (v19 = v18, v20 = [v18 windowScene], v19, v20))
  {
    v21 = [v20 interfaceOrientation];
  }

  else
  {
    v21 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v31[0] = v21;

  sub_10079B9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v31);

  v22 = v31[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v31[0] = v22;

  sub_10079B9B4();
  v23 = [objc_opt_self() currentDevice];
  [v23 beginGeneratingDeviceOrientationNotifications];

  v24 = [objc_opt_self() defaultCenter];
  v25 = v28;
  sub_1007A2E84();

  swift_allocObject();
  swift_weakInit();
  sub_100438038(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v26 = v30;
  sub_10079BB04();

  (*(v29 + 8))(v25, v26);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  sub_10043662C();
  return v1;
}

double sub_10043632C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100436474();
    sub_10043662C();
  }

  return result;
}

Swift::Void __swiftcall BookOrientationTracker.resetInterfaceOrientation()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  if ((v1 - 1) >= 4)
  {
    v0 = 0;
  }

  else
  {
    v0 = v1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  if (v0 != v1)
  {
    [objc_opt_self() attemptRotationToDeviceOrientation];
    sub_100436474();
  }
}

void sub_100436474()
{
  v0 = [objc_opt_self() _applicationKeyWindow];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 windowScene];

    if (v2)
    {
      v3 = [v2 interfaceOrientation];

      if (v3)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4(&v5);

        if (v3 != v5)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10079B9A4(&v5);

          v4 = v5;
          swift_getKeyPath();
          swift_getKeyPath();
          v5 = v4;

          sub_10079B9B4();
          swift_getKeyPath();
          swift_getKeyPath();
          v5 = v3;

          sub_10079B9B4();
        }
      }
    }
  }
}

void sub_10043662C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 orientation];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v4);

  if (v1 != v4 && (v1 > 6 || ((1 << v1) & 0x61) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v4);

    v3 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;

    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v1;

    sub_10079B9B4();
  }
}

uint64_t BookOrientationTracker.deinit()
{
  v1 = OBJC_IVAR____TtC5Books22BookOrientationTracker__previousInterfaceOrientation;
  v2 = sub_1001F1160(&qword_100ADEA18, &qword_10081E7B0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC5Books22BookOrientationTracker__currentInterfaceOrientation, v2);
  v4 = OBJC_IVAR____TtC5Books22BookOrientationTracker__currentDeviceOrientation;
  v5 = sub_1001F1160(&qword_100AE31A0, &qword_1008256D0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC5Books22BookOrientationTracker__previousDeviceOrientation, v5);

  return v0;
}

uint64_t BookOrientationTracker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC5Books22BookOrientationTracker__previousInterfaceOrientation;
  v2 = sub_1001F1160(&qword_100ADEA18, &qword_10081E7B0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC5Books22BookOrientationTracker__currentInterfaceOrientation, v2);
  v4 = OBJC_IVAR____TtC5Books22BookOrientationTracker__currentDeviceOrientation;
  v5 = sub_1001F1160(&qword_100AE31A0, &qword_1008256D0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC5Books22BookOrientationTracker__previousDeviceOrientation, v5);

  return swift_deallocClassInstance();
}

BOOL BookReaderStateManager.statusBarHidden.getter()
{
  v0 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v2);

  v3 = *v2;
  sub_100437D94(v2);
  return (v3 & 1) == 0;
}

uint64_t BookReaderStateManager.statusBarStyle.getter()
{
  v1 = v0;
  v2 = sub_10079EF54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (!v7 || (v8 = [objc_opt_self() sharedApplication], v9 = UIApplication.isSplitOrSlideOver.getter(), v8, (v9)) && (*(v1 + 16))
  {
    v10 = 0;
  }

  else
  {
    swift_unknownObjectUnownedLoadStrong();
    swift_getObjectType();
    sub_1007A1344();
    swift_unknownObjectRelease();
    v11 = sub_10079EE44();
    (*(v3 + 8))(v5, v2);
    v10 = v11 ^ 1;
  }

  return v10 & 1;
}

id UIApplication.isSplitOrSlideOver.getter()
{
  result = [v0 delegate];
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector:"window"])
    {
      v3 = [v2 window];
      swift_unknownObjectRelease();
      if (v3)
      {
        [v3 frame];
        Width = CGRectGetWidth(v15);
        v5 = [v3 screen];
        [v5 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        v16.origin.x = v7;
        v16.origin.y = v9;
        v16.size.width = v11;
        v16.size.height = v13;
        v14 = CGRectGetWidth(v16);

        return (vabdd_f64(Width, v14) >= 0.00999999978);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

double BookReaderStateManager.statusBarStateChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

uint64_t (*BookReaderStateManager.statusBarStateChangeHandler.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100436FB4;
}

void sub_100436FB8()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1007A2214();
  [v2 BOOLForKey:v3];

  sub_10079B914();
  v4 = sub_1007A2214();
  v5 = [v2 integerForKey:v4];

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    swift_beginAccess();
    *(v1 + 40) = v5;
    return;
  }

  __break(1u);
}

double sub_1004370DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 64);

    if (v4)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_100437188(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 24);
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = [v8 readerShowStatusBar];

    v10 = OBJC_IVAR____TtC5Books26BookReaderChromeController_state;
    swift_beginAccess();
    sub_10043809C(v7 + v10, v4, type metadata accessor for State);
    v4[1] = v9;
    sub_100444C5C(v4);
  }

  return result;
}

void BookReaderStateManager.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 88);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10079B884();
    sub_100438038(&qword_100AE1500, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    sub_1007A2864();
    v4 = v18;
    v3 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_10004DC54(v4);

      *(v1 + 88) = &_swiftEmptySetSingleton;

      sub_10002B130(v1 + 56);
      sub_10002B130(v1 + 72);

      sub_100039DA8(v1 + 96);
      sub_100039DA8(v1 + 112);
      return;
    }

    while (1)
    {
      sub_10079B874();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1007A3654())
      {
        sub_10079B884();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t BookReaderStateManager.__deallocating_deinit()
{
  BookReaderStateManager.deinit();

  return swift_deallocClassInstance();
}

double sub_10043757C(char a1)
{
  *(v1 + 16) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 64);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall BookReaderStateManager.closeMenu()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10043765C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BookReaderStateManager();
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

uint64_t BookReaderStateManager.isOrientationLockedPublisher.getter()
{
  sub_1001F1160(&unk_100AD1E40, &unk_10080B800);
  sub_100437DF0();
  return sub_10079BA14();
}

Swift::Void __swiftcall BookReaderStateManager.toggleOrientationLock()()
{
  v0 = sub_10079B904();
  if (v1 == 1)
  {
    sub_100437748(v0);
  }

  else
  {
    sub_1004378E0(v0);
  }
}

void sub_100437748(uint64_t a1)
{
  sub_10079E514();
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    sub_10079BF94();
    goto LABEL_5;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_5:

    goto LABEL_6;
  }

  v2 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  (*(v2 + 8))(ObjectType, v2);

  swift_unknownObjectRelease();
LABEL_6:
  sub_10079B914();
  swift_beginAccess();
  *(v1 + 40) = 0;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_10079B904();
  v5 = sub_1007A2214();
  [v4 setBool:v8 forKey:v5];

  v6 = *(v1 + 40);
  v7 = sub_1007A2214();
  [v4 setInteger:v6 forKey:v7];
}

void sub_1004378E0(uint64_t a1)
{
  sub_10079E514();
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    sub_10079BF94();
    goto LABEL_5;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_5:

    goto LABEL_6;
  }

  v2 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  (*(v2 + 8))(ObjectType, v2);

  swift_unknownObjectRelease();
LABEL_6:
  swift_beginAccess();
  *(v1 + 40) = 1;
  sub_10079B914();
  v4 = [objc_opt_self() standardUserDefaults];
  sub_10079B904();
  v5 = sub_1007A2214();
  [v4 setBool:1 forKey:v5];

  v6 = *(v1 + 40);
  v7 = sub_1007A2214();
  [v4 setInteger:v6 forKey:v7];
}

double sub_100437A7C(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(a1 + 80);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_100437AE8(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10043810C;
}

void sub_100437B7C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
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
  }

  free(v3);
}

double sub_100437C00@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a2);

  return result;
}

uint64_t sub_100437C7C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for BookReaderChromeState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_10043809C(a1, &v10 - v7, type metadata accessor for BookReaderChromeState);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10043809C(v8, v5, type metadata accessor for BookReaderChromeState);

  sub_10079B9B4();
  return sub_100437D94(v8);
}

uint64_t sub_100437D94(uint64_t a1)
{
  v2 = type metadata accessor for BookReaderChromeState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100437DF0()
{
  result = qword_100AF2870;
  if (!qword_100AF2870)
  {
    sub_1001F1234(&unk_100AD1E40, &unk_10080B800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2870);
  }

  return result;
}

uint64_t type metadata accessor for BookOrientationTracker(uint64_t a1)
{
  result = qword_100AE31E0;
  if (!qword_100AE31E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100437EA8(uint64_t a1)
{
  sub_100437FB8(319, &qword_100ADEA78, type metadata accessor for UIInterfaceOrientation);
  if (v1 <= 0x3F)
  {
    sub_100437FB8(319, &unk_100AE31F0, type metadata accessor for UIDeviceOrientation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100437FB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10079B9D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100438038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10043809C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CenteringHStackLayout(uint64_t a1)
{
  result = qword_100AE35B8;
  if (!qword_100AE35B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10043819C(uint64_t a1)
{
  result = sub_10079C104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10043820C()
{
  result = qword_100AE35F0;
  if (!qword_100AE35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE35F0);
  }

  return result;
}

uint64_t sub_100438260()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE3548);
  sub_100008B98(v0, qword_100AE3548);
  sub_10001389C();
  return sub_1007A3404();
}

void sub_1004382D4(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, double *a9)
{
  v124 = a1;
  v123 = sub_10079C104();
  v14 = *(v123 - 8);
  __chkstk_darwin(v123);
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = COERCE_DOUBLE(sub_1001F1160(&qword_100AE0C00, &unk_1008214B0));
  v18 = *(v17 - 8);
  v135 = *&v17;
  v136 = v18;
  __chkstk_darwin(v17);
  v20 = (&v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v134 = (&v120 - v22);
  v137 = sub_10079BF44();
  v126 = *(v137 - 8);
  __chkstk_darwin(v137);
  v24 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v128 = &v120 - v26;
  __chkstk_darwin(v27);
  v127 = &v120 - v28;
  sub_10079BFC4();
  sub_10043944C(&qword_100AE3600, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1007A2894();
  sub_1007A28D4();
  if (sub_1007A28C4() != 3)
  {
LABEL_56:
    v138[0] = 0;
    v138[1] = 0xE000000000000000;
    sub_1007A3744(92);
    v141._countAndFlagsBits = 0xD000000000000033;
    v141._object = 0x80000001008D4DB0;
    sub_1007A23D4(v141);
    sub_1007A2894();
    sub_1007A28D4();
    *v140 = sub_1007A28C4();
    v142._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v142);

    v143._object = 0x80000001008D4DF0;
    v143._countAndFlagsBits = 0xD000000000000027;
    sub_1007A23D4(v143);
    sub_1007A38A4();
    __break(1u);

    __break(1u);
    return;
  }

  if (a2)
  {
    if (qword_100AD15F0 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_4;
  }

  v121 = v16;
  MaxX = v14;
  v33 = v127;
  sub_10079BFD4();
  sub_10079BFD4();
  sub_10079BFD4();
  sub_1001F1160(&qword_100AE3608, &qword_100825978);
  v125 = v24;
  v34 = sub_1001F1160(&qword_100AD4078, &qword_10080E4F0);
  v35 = *(*(v34 - 8) + 72);
  v36 = (*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80);
  v37 = 2 * v35;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100812CF0;
  v39 = (v38 + v36);
  v40 = *(v34 + 48);
  sub_10079E644();
  *v39 = v41;
  *(v39 + 1) = v42;
  v43 = *(v126 + 16);
  v44 = v33;
  v45 = v137;
  v43(&v39[v40], v44, v137);
  v46 = &v39[v35];
  v47 = *(v34 + 48);
  sub_10079E654();
  *v46 = v48;
  *(v46 + 1) = v49;
  v43(&v46[v47], v125, v45);
  v50 = &v39[v37];
  v51 = *(v34 + 48);
  sub_10079E634();
  *v50 = v52;
  *(v50 + 1) = v53;
  v43(&v39[v37 + v51], v128, v45);
  v54 = sub_1001EE7C8(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v55 = *(v54 + 16);
  v122 = v54;
  if (v55)
  {
    v56 = sub_1005D6640(v55, 0);
    sub_1005D6D90(v138, v56 + ((*(*&v136 + 80) + 32) & ~*(*&v136 + 80)), v55, v54);
    v58 = v57;
    v59 = v138[0];

    sub_10004DC54(v59);
    if (v58 == v55)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v56 = _swiftEmptyArrayStorage;
LABEL_11:
  v138[0] = v56;
  sub_100439494(v138);
  v60 = MaxX;
  v61 = v138[0];
  v62 = sub_1001EE9C0(_swiftEmptyArrayStorage);
  v140[0] = 0;
  MidY = *(v61 + 16);
  if (MidY == 0.0)
  {
LABEL_27:
    sub_10079E644();
    if (v62[2])
    {
      v89 = sub_1002ECC48(v87, v88);
      if (v90)
      {
        v91 = *(v62[7] + 8 * v89);
        sub_10079E654();
        if (v62[2])
        {
          v94 = sub_1002ECC48(v92, v93);
          if (v95)
          {
            v96 = *(v62[7] + 8 * v94);
            sub_10079E634();
            if (v62[2])
            {
              v99 = sub_1002ECC48(v97, v98);
              v101 = v100;

              if (v101)
              {
                v134 = *(v62[7] + 8 * v99);
                v135 = *&v124;
                v144.origin.x = a3;
                v144.origin.y = a4;
                v144.size.width = a5;
                v144.size.height = a6;
                MinX = CGRectGetMinX(v144);
                v145.origin.x = a3;
                v145.origin.y = a4;
                v145.size.width = a5;
                v145.size.height = a6;
                CGRectGetMidY(v145);
                v136 = v96;
                v146.origin.x = a3;
                v146.origin.y = a4;
                v146.size.width = a5;
                v146.size.height = a6;
                MaxX = CGRectGetMaxX(v146);
                v147.origin.x = a3;
                v147.origin.y = a4;
                v147.size.width = a5;
                v147.size.height = a6;
                MidY = CGRectGetMidY(v147);
                sub_10079E644();
                v148.origin.x = a3;
                v148.origin.y = a4;
                v148.size.width = a5;
                v148.size.height = a6;
                CGRectGetHeight(v148);
                LOBYTE(v138[0]) = 0;
                LOBYTE(v139) = 0;
                v102 = v136;
                sub_10079BF24();
                sub_10079E654();
                v149.origin.x = a3;
                v149.origin.y = a4;
                v149.size.width = a5;
                v149.size.height = a6;
                CGRectGetHeight(v149);
                LOBYTE(v138[0]) = 0;
                LOBYTE(v139) = 0;
                sub_10079BF24();
                if (v91 + v102 + *&v134 >= v135)
                {
                  v105 = enum case for LayoutDirection.leftToRight(_:);
                  v106 = *(*&v60 + 104);
                  v107 = v121;
                  v108 = v123;
                  v106(v121, enum case for LayoutDirection.leftToRight(_:), v123);
                  v109 = sub_10079C0F4();
                  v110 = *(*&v60 + 8);
                  v110(v107, v108);
                  if (v109)
                  {
                    type metadata accessor for CenteringHStackLayout(0);
                    v106(v107, v105, v108);
                    sub_10079C0F4();
                    v110(v107, v108);
                    v155.origin.x = a3;
                    v155.origin.y = a4;
                    v155.size.width = a5;
                    v155.size.height = a6;
                    CGRectGetMinX(v155);
                  }

                  else
                  {
                    v111 = enum case for LayoutDirection.rightToLeft(_:);
                    v106(v107, enum case for LayoutDirection.rightToLeft(_:), v108);
                    v112 = sub_10079C0F4();
                    v136 = *&v110;
                    v110(v107, v108);
                    v103 = v128;
                    if ((v112 & 1) == 0)
                    {
LABEL_43:
                      v118 = *(v126 + 8);
                      v119 = v137;
                      v118(v125, v137);
                      v118(v103, v119);
                      v118(v127, v119);

                      return;
                    }

                    type metadata accessor for CenteringHStackLayout(0);
                    v106(v107, v111, v108);
                    v113 = sub_10079C0F4();
                    (*&v136)(v107, v108);
                    v114 = a3;
                    v115 = a4;
                    v116 = a5;
                    v117 = a6;
                    if (v113)
                    {
                      CGRectGetMinX(*&v114);
                    }

                    else
                    {
                      CGRectGetMaxX(*&v114);
                    }
                  }

                  v156.origin.x = a3;
                  v156.origin.y = a4;
                  v156.size.width = a5;
                  v156.size.height = a6;
                  CGRectGetMidY(v156);
                  v157.origin.x = a3;
                  v157.origin.y = a4;
                  v157.size.width = a5;
                  v157.size.height = a6;
                  CGRectGetHeight(v157);
                  LOBYTE(v138[0]) = 0;
                  LOBYTE(v139) = 0;
                  v103 = v128;
                }

                else
                {
                  v150.origin.x = a3;
                  v150.origin.y = a4;
                  v150.size.width = a5;
                  v150.size.height = a6;
                  CGRectGetMidX(v150);
                  v151.origin.x = a3;
                  v151.origin.y = a4;
                  v151.size.width = a5;
                  v151.size.height = a6;
                  CGRectGetMinX(v151);
                  v135 = a3;
                  v152.origin.x = a3;
                  v152.origin.y = a4;
                  v152.size.width = a5;
                  v152.size.height = a6;
                  CGRectGetMaxX(v152);
                  v103 = v128;
                  v104 = v135;
                  v153.origin.x = v135;
                  v153.origin.y = a4;
                  v153.size.width = a5;
                  v153.size.height = a6;
                  v136 = CGRectGetMidY(v153);
                  sub_10079E644();
                  v154.origin.x = v104;
                  v154.origin.y = a4;
                  v154.size.width = a5;
                  v154.size.height = a6;
                  CGRectGetHeight(v154);
                  LOBYTE(v138[0]) = 0;
                  LOBYTE(v139) = 0;
                }

                sub_10079BF24();
                goto LABEL_43;
              }

              goto LABEL_53;
            }

LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            sub_1007A3B24();
            __break(1u);
            goto LABEL_56;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_50;
  }

  v63 = 0;
  MinX = a6;
  v64 = *(*&v136 + 80);
  v130 = *(*&v135 + 48);
  v129 = v61 + ((v64 + 32) & ~v64);
  v65 = (v126 + 32);
  v66 = a5;
  while (v63 < *(v61 + 16))
  {
    v67 = v134;
    sub_10043AA90(v129 + *(*&v136 + 72) * v63, v134);
    v68 = *v67;
    v69 = v67[1];
    v70 = *(*&v135 + 48);
    *v20 = *v67;
    v20[1] = v69;
    (*v65)(v20 + v70, v67 + v130, v137);
    v71 = v140[0];
    LOBYTE(v138[0]) = v140[0];
    LOBYTE(v139) = 0;
    sub_10079BF14();
    v73 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v138[0] = v62;
    v76 = sub_1002ECC48(v68, v69);
    v77 = v62[2];
    v78 = (v75 & 1) == 0;
    v79 = v77 + v78;
    if (__OFADD__(v77, v78))
    {
      goto LABEL_45;
    }

    v80 = v75;
    if (v62[3] >= v79)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v62 = v138[0];
        if (v75)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_1002F1C94();
        v62 = v138[0];
        if (v80)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_1003D5918(v79, isUniquelyReferenced_nonNull_native);
      v81 = sub_1002ECC48(v68, v69);
      if ((v80 & 1) != (v82 & 1))
      {
        goto LABEL_55;
      }

      v76 = v81;
      v62 = v138[0];
      if (v80)
      {
LABEL_21:
        *(v62[7] + 8 * v76) = v73;
        goto LABEL_25;
      }
    }

    v62[(v76 >> 6) + 8] |= 1 << v76;
    v83 = (v62[6] + 16 * v76);
    *v83 = v68;
    v83[1] = v69;
    *(v62[7] + 8 * v76) = v73;
    v84 = v62[2];
    v85 = __OFADD__(v84, 1);
    v86 = v84 + 1;
    if (v85)
    {
      goto LABEL_46;
    }

    v62[2] = v86;
LABEL_25:
    v60 = MaxX;
    if (v71)
    {
      goto LABEL_54;
    }

    ++v63;
    sub_10043AB00(v20);
    v66 = v66 - v73;
    if (*&MidY == v63)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  swift_once();
LABEL_4:
  v29 = sub_10079ACE4();
  sub_100008B98(v29, qword_100AE3548);
  v30 = sub_10079ACC4();
  v31 = sub_1007A29B4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Cannot center anything with no proposed size", v32, 2u);
  }
}

double sub_100439294(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_100439378(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10079BB24();
  return sub_100283EC4;
}

uint64_t sub_10043944C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100439494(uint64_t *a1)
{
  v2 = *(sub_1001F1160(&qword_100AE0C00, &unk_1008214B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1007859A0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100439548(v5);
  *a1 = v3;
}

void sub_100439548(int64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1007A3A64(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1001F1160(&qword_100AE0C00, &unk_1008214B0);
        v6 = sub_1007A2634();
        v6[2] = v5;
      }

      v7 = *(sub_1001F1160(&qword_100AE0C00, &unk_1008214B0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004399A0(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10043968C(0, v2, 1, a1);
  }
}

void sub_10043968C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1001F1160(&qword_100AE0C00, &unk_1008214B0);
  __chkstk_darwin(v8);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v51 = &v40 - v11;
  __chkstk_darwin(v12);
  v50 = &v40 - v13;
  __chkstk_darwin(v14);
  v55 = &v40 - v15;
  __chkstk_darwin(v16);
  v54 = &v40 - v18;
  v42 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v47 = -v20;
    v48 = v19;
    v22 = a1 - a3;
    v41 = v20;
    v23 = v19 + v20 * a3;
    v53 = v8;
LABEL_5:
    v45 = v21;
    v46 = a3;
    v43 = v23;
    v44 = v22;
    v24 = v23;
    v52 = v22;
    while (1)
    {
      v25 = v54;
      sub_10043AA90(v24, v54);
      sub_10043AA90(v21, v55);
      v26 = v50;
      sub_10043AA90(v25, v50);
      v27 = *(v8 + 48);
      sub_10079BF34();
      v29 = v28;
      v30 = sub_10079BF44();
      v31 = *(*(v30 - 8) + 8);
      v31(v26 + v27, v30);
      v32 = v55;
      v33 = v51;
      sub_10043AA90(v55, v51);
      v34 = *(v53 + 48);
      sub_10079BF34();
      v36 = v35;
      v37 = v30;
      v8 = v53;
      v31(v33 + v34, v37);
      sub_10043AB00(v32);
      sub_10043AB00(v54);
      if (v36 >= v29)
      {
LABEL_4:
        a3 = v46 + 1;
        v21 = v45 + v41;
        v22 = v44 - 1;
        v23 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v38 = v49;
      sub_10043AB68(v24, v49);
      swift_arrayInitWithTakeFrontToBack();
      sub_10043AB68(v38, v21);
      v21 += v47;
      v24 += v47;
      if (__CFADD__(v52++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004399A0(unint64_t *a1, uint64_t a2, int64_t *a3, int64_t a4)
{
  v5 = v4;
  v145 = a1;
  v160 = sub_1001F1160(&qword_100AE0C00, &unk_1008214B0);
  v8 = *(v160 - 8);
  __chkstk_darwin(v160);
  v140 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v156 = &v140 - v11;
  __chkstk_darwin(v12);
  v159 = &v140 - v13;
  __chkstk_darwin(v14);
  v158 = &v140 - v15;
  __chkstk_darwin(v16);
  v157 = &v140 - v17;
  __chkstk_darwin(v18);
  v162 = &v140 - v19;
  v20 = a3[1];
  v147 = a3;
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    a4 = *v145;
    if (!*v145)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_98:
      v163 = v22;
      v136 = *(v22 + 2);
      if (v136 >= 2)
      {
        do
        {
          v137 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          a3 = *&v22[16 * v136];
          v138 = *&v22[16 * v136 + 24];
          sub_10043A464(v137 + *(v8 + 72) * a3, v137 + *(v8 + 72) * *&v22[16 * v136 + 16], v137 + *(v8 + 72) * v138, a4);
          if (v5)
          {
            break;
          }

          if (v138 < a3)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_100784A7C(v22);
          }

          if (v136 - 2 >= *(v22 + 2))
          {
            goto LABEL_122;
          }

          v139 = &v22[16 * v136];
          *v139 = a3;
          *(v139 + 1) = v138;
          v163 = v22;
          sub_1007849F0(v136 - 1);
          v22 = v163;
          v136 = *(v163 + 2);
          a3 = v147;
        }

        while (v136 > 1);
      }

LABEL_106:

      return;
    }

LABEL_128:
    v22 = sub_100784A7C(v22);
    goto LABEL_98;
  }

  v141 = a4;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v142 = v8;
  while (1)
  {
    v23 = v21;
    if (v21 + 1 >= v20)
    {
      v44 = v21 + 1;
    }

    else
    {
      v153 = v20;
      v143 = v22;
      v144 = v5;
      v24 = v21;
      v146 = v21;
      v161 = *a3;
      v25 = v161;
      v26 = *(v8 + 72);
      v27 = v161 + v26 * (v21 + 1);
      v28 = v162;
      sub_10043AA90(v27, v162);
      v29 = v157;
      sub_10043AA90(v25 + v26 * v24, v157);
      v30 = v28;
      v31 = v158;
      sub_10043AA90(v30, v158);
      v32 = *(v160 + 48);
      sub_10079BF34();
      v34 = v33;
      v35 = sub_10079BF44();
      v36 = *(v35 - 8);
      v37 = *(v36 + 8);
      v38 = v36 + 8;
      v37(v31 + v32, v35);
      v39 = v159;
      sub_10043AA90(v29, v159);
      a4 = *(v160 + 48);
      sub_10079BF34();
      v41 = v40;
      v150 = v37;
      v151 = v35;
      v149 = v38;
      v37(v39 + a4, v35);
      sub_10043AB00(v29);
      sub_10043AB00(v162);
      v42 = v146 + 2;
      v152 = v26;
      v43 = v161 + v26 * (v146 + 2);
      while (1)
      {
        v44 = v153;
        if (v153 == v42)
        {
          break;
        }

        LODWORD(v155) = v41 < v34;
        v45 = v162;
        v161 = v42;
        sub_10043AA90(v43, v162);
        v154 = v27;
        v46 = v157;
        sub_10043AA90(v27, v157);
        v47 = v158;
        sub_10043AA90(v45, v158);
        v48 = v160;
        v49 = *(v160 + 48);
        sub_10079BF34();
        v51 = v50;
        v52 = v150;
        a4 = v151;
        (v150)(v47 + v49, v151);
        v53 = v159;
        sub_10043AA90(v46, v159);
        v54 = *(v48 + 48);
        sub_10079BF34();
        v56 = v55;
        v52(v53 + v54, a4);
        sub_10043AB00(v46);
        sub_10043AB00(v162);
        v42 = v161 + 1;
        v43 += v152;
        v27 = v154 + v152;
        if (((v155 ^ (v56 >= v51)) & 1) == 0)
        {
          v44 = v161;
          break;
        }
      }

      v5 = v144;
      v8 = v142;
      v22 = v143;
      v23 = v146;
      a3 = v147;
      if (v41 < v34)
      {
        v57 = v140;
        if (v44 < v146)
        {
          goto LABEL_125;
        }

        if (v146 < v44)
        {
          v58 = v152 * (v44 - 1);
          v59 = v44 * v152;
          v153 = v44;
          v60 = v146;
          v61 = v146 * v152;
          do
          {
            if (v60 != --v44)
            {
              v62 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              a4 = v62 + v61;
              sub_10043AB68(v62 + v61, v57);
              if (v61 < v58 || a4 >= (v62 + v59))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v61 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10043AB68(v57, v62 + v58);
            }

            ++v60;
            v58 -= v152;
            v59 -= v152;
            v61 += v152;
          }

          while (v60 < v44);
          v5 = v144;
          v8 = v142;
          v22 = v143;
          v23 = v146;
          v44 = v153;
        }
      }
    }

    v63 = a3[1];
    if (v44 >= v63)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v44, v23))
    {
      goto LABEL_124;
    }

    if (v44 - v23 >= v141)
    {
LABEL_32:
      a4 = v44;
      if (v44 < v23)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, v141))
    {
      goto LABEL_126;
    }

    if (v23 + v141 >= v63)
    {
      a4 = a3[1];
    }

    else
    {
      a4 = v23 + v141;
    }

    if (a4 < v23)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v44 == a4)
    {
      goto LABEL_32;
    }

    v143 = v22;
    v144 = v5;
    v111 = *a3;
    v112 = *(v8 + 72);
    v113 = *a3 + v112 * (v44 - 1);
    v154 = -v112;
    v155 = v111;
    v146 = v23;
    v114 = v23 - v44;
    v148 = v112;
    v149 = a4;
    v115 = (v111 + v44 * v112);
    v116 = v160;
LABEL_87:
    v152 = v113;
    v153 = v44;
    v150 = v115;
    v151 = v114;
    v117 = v115;
    v118 = v114;
    v119 = v113;
LABEL_88:
    v161 = v118;
    v120 = v162;
    sub_10043AA90(v117, v162);
    v121 = v157;
    sub_10043AA90(v119, v157);
    v122 = v158;
    sub_10043AA90(v120, v158);
    v123 = *(v116 + 48);
    sub_10079BF34();
    v125 = v124;
    v126 = sub_10079BF44();
    v127 = v116;
    v128 = *(*(v126 - 8) + 8);
    v128(v122 + v123, v126);
    v129 = v159;
    sub_10043AA90(v121, v159);
    v130 = *(v127 + 48);
    sub_10079BF34();
    v132 = v131;
    v128(v129 + v130, v126);
    sub_10043AB00(v121);
    sub_10043AB00(v162);
    if (v132 < v125)
    {
      break;
    }

    v116 = v160;
LABEL_86:
    v44 = v153 + 1;
    a4 = v149;
    v113 = v152 + v148;
    v114 = v151 - 1;
    v115 = &v150[v148];
    if (v153 + 1 != v149)
    {
      goto LABEL_87;
    }

    v5 = v144;
    v23 = v146;
    a3 = v147;
    v8 = v142;
    v22 = v143;
    if (v149 < v146)
    {
      goto LABEL_123;
    }

LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149 = a4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_10066B274(0, *(v22 + 2) + 1, 1, v22);
    }

    a4 = *(v22 + 2);
    v65 = *(v22 + 3);
    v66 = a4 + 1;
    if (a4 >= v65 >> 1)
    {
      v22 = sub_10066B274((v65 > 1), a4 + 1, 1, v22);
    }

    *(v22 + 2) = v66;
    v67 = &v22[16 * a4];
    v68 = v149;
    *(v67 + 4) = v23;
    *(v67 + 5) = v68;
    if (!*v145)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      v69 = *v145;
      while (1)
      {
        a4 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v70 = *(v22 + 4);
          v71 = *(v22 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_53:
          if (v73)
          {
            goto LABEL_112;
          }

          v86 = &v22[16 * v66];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_115;
          }

          v92 = &v22[16 * a4 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_119;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              a4 = v66 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v96 = &v22[16 * v66];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_67:
        if (v91)
        {
          goto LABEL_114;
        }

        v99 = &v22[16 * a4];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_117;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_74:
        v107 = a4 - 1;
        if (a4 - 1 >= v66)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v108 = *&v22[16 * v107 + 32];
        v109 = *&v22[16 * a4 + 40];
        sub_10043A464(*a3 + *(v8 + 72) * v108, *a3 + *(v8 + 72) * *&v22[16 * a4 + 32], *a3 + *(v8 + 72) * v109, v69);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v109 < v108)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100784A7C(v22);
        }

        if (v107 >= *(v22 + 2))
        {
          goto LABEL_109;
        }

        v110 = &v22[16 * v107];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        v163 = v22;
        sub_1007849F0(a4);
        v22 = v163;
        v66 = *(v163 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v22[16 * v66 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_110;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_111;
      }

      v81 = &v22[16 * v66];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_113;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_116;
      }

      if (v85 >= v77)
      {
        v103 = &v22[16 * a4 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_120;
        }

        if (v72 < v106)
        {
          a4 = v66 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v149;
    if (v149 >= v20)
    {
      goto LABEL_96;
    }
  }

  v133 = v161;
  if (v155)
  {
    v134 = v156;
    sub_10043AB68(v117, v156);
    v116 = v160;
    swift_arrayInitWithTakeFrontToBack();
    sub_10043AB68(v134, v119);
    v119 += v154;
    v117 += v154;
    v135 = __CFADD__(v133, 1);
    v118 = v133 + 1;
    if (v135)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_10043A464(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = sub_1001F1160(&qword_100AE0C00, &unk_1008214B0);
  __chkstk_darwin(v75);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v60 - v10;
  __chkstk_darwin(v11);
  v67 = &v60 - v12;
  __chkstk_darwin(v13);
  v71 = &v60 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v78 = a1;
  v77 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v20;
    if (v20 >= 1)
    {
      v39 = -v16;
      v40 = v38;
      v72 = a4;
      v73 = a1;
      v63 = v39;
      v41 = v67;
      while (2)
      {
        while (1)
        {
          v61 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v74 = v43;
          v64 = v42;
          while (1)
          {
            if (v42 <= a1)
            {
              v78 = v42;
              v76 = v61;
              goto LABEL_59;
            }

            v62 = v38;
            v70 = a3 + v39;
            v44 = v40 + v39;
            v45 = v71;
            v66 = a3;
            sub_10043AA90(v44, v71);
            v65 = v40;
            sub_10043AA90(v43, v41);
            v46 = v68;
            sub_10043AA90(v45, v68);
            v47 = v75;
            v48 = *(v75 + 48);
            sub_10079BF34();
            v50 = v49;
            v51 = sub_10079BF44();
            v52 = *(*(v51 - 8) + 8);
            v52(v46 + v48, v51);
            v53 = v69;
            sub_10043AA90(v41, v69);
            v54 = *(v47 + 48);
            sub_10079BF34();
            v56 = v55;
            v52(v53 + v54, v51);
            sub_10043AB00(v41);
            sub_10043AB00(v71);
            if (v56 < v50)
            {
              break;
            }

            v38 = v44;
            a3 = v70;
            v57 = v72;
            v58 = v44;
            if (v66 < v65 || v70 >= v65)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v73;
              v43 = v74;
              v39 = v63;
            }

            else
            {
              a1 = v73;
              v43 = v74;
              v39 = v63;
              if (v66 != v65)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v38;
            v42 = v64;
            if (v58 <= v57)
            {
              a2 = v64;
              goto LABEL_58;
            }
          }

          v40 = v65;
          a3 = v70;
          v59 = v72;
          if (v66 < v64 || v70 >= v64)
          {
            break;
          }

          a1 = v73;
          a2 = v74;
          v38 = v62;
          v39 = v63;
          if (v66 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v59)
          {
            goto LABEL_58;
          }
        }

        a2 = v74;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v38 = v62;
        v39 = v63;
        if (v40 > v59)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v38;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v19;
    v76 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v70 = a3;
      v65 = v16;
      do
      {
        v73 = a1;
        v74 = a2;
        v72 = a4;
        v22 = v71;
        sub_10043AA90(a2, v71);
        v23 = v67;
        sub_10043AA90(a4, v67);
        v24 = v68;
        sub_10043AA90(v22, v68);
        v25 = v75;
        v26 = *(v75 + 48);
        sub_10079BF34();
        v28 = v27;
        v29 = sub_10079BF44();
        v30 = *(*(v29 - 8) + 8);
        v30(v24 + v26, v29);
        v31 = v69;
        sub_10043AA90(v23, v69);
        v32 = *(v25 + 48);
        sub_10079BF34();
        v34 = v33;
        v30(v31 + v32, v29);
        sub_10043AB00(v23);
        sub_10043AB00(v22);
        if (v34 >= v28)
        {
          v36 = v73;
          a2 = v74;
          v35 = v65;
          a4 = v72 + v65;
          if (v73 < v72 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v70;
          }

          else
          {
            v37 = v70;
            if (v73 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v77 = a4;
        }

        else
        {
          v35 = v65;
          v36 = v73;
          a2 = v74 + v65;
          a4 = v72;
          if (v73 < v74 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v70;
          }

          else
          {
            v37 = v70;
            if (v73 != v74)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 = v36 + v35;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v37);
    }
  }

LABEL_59:
  sub_1006D5E0C(&v78, &v77, &v76);
}