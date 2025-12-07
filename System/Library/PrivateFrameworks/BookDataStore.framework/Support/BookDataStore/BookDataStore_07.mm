uint64_t sub_1001078C4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_1001C4748();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_1001C47C8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = sub_1001C47E8();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100107A48, 0, 0);
}

uint64_t sub_100107A48()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v21 = v0[20];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];
  v23 = v0[15];
  v24 = v0[16];
  v25 = v0[14];
  v0[24] = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:"PriceTrackerCreateCardManager"];
  v7 = [objc_opt_self() books];
  v22 = [v7 userDefaults];
  v0[25] = v22;

  v8 = sub_1001C6018();
  v19 = v9;
  v20 = v8;
  v0[26] = v9;
  sub_1001C4828();
  swift_allocObject();
  v10 = sub_1001C4818();
  v0[27] = v10;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.millisecondsSince1970(_:), v3);
  sub_1001C47F8();
  sub_100084528(&qword_1002712D8, &qword_1001F3A28);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001F0660;
  sub_1001C4798();
  sub_1001C47B8();
  v0[11] = v11;
  sub_10010E44C(&qword_1002712E0, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100084528(&qword_1002712E8, &qword_1001F3A30);
  sub_1000885F4(&qword_1002712F0, &qword_1002712E8, &qword_1001F3A30, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  v12 = sub_1001C47D8();
  sub_10010C034(v21, v5);
  v13 = *(v4 + 8);
  v13(v5, v6);
  v13(v21, v6);
  v12(v0 + 7, 0);
  sub_1001C4788();
  swift_allocObject();
  v14 = sub_1001C4778();
  v0[28] = v14;
  (*(v23 + 104))(v24, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v25);
  sub_1001C4758();
  v0[2] = v22;
  v0[3] = v10;
  v0[4] = v14;
  v0[5] = v20;
  v0[6] = v19;
  v15 = v22;

  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  v16[1] = sub_100107DE8;
  v17 = v0[12];

  return sub_10012D168(v17);
}

uint64_t sub_100107DE8()
{

  return _swift_task_switch(sub_100107EE4, 0, 0);
}

uint64_t sub_100107EE4()
{
  v1 = v0[25];
  v2 = v0[24];

  [v2 endTransaction];

  v3 = v1;

  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_100107FFC;
  v5 = v0[13];

  return sub_10010FB28(0xD000000000000014, 0x8000000100201E30, v5, (v0 + 2));
}

uint64_t sub_100107FFC()
{
  v1 = *(*v0 + 200);

  return _swift_task_switch(sub_10010816C, 0, 0);
}

uint64_t sub_10010816C()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] cardListTask ended", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001082E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10009ADF0(a3, v25 - v10, &unk_100270A00, &qword_1001F3120);
  v12 = sub_1001C6348();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10008875C(v11, &unk_100270A00, &qword_1001F3120);
  }

  else
  {
    sub_1001C6338();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1001C6308();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1001C60A8() + 32;
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

uint64_t sub_1001085A0()
{
  v1 = v0;
  v2 = sub_100084528(&qword_100271360, &qword_1001F3AA8);
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v35 = sub_100084528(&qword_100271358, &qword_1001F3AA0);
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v30 - v7;
  v9 = sub_100084528(&qword_100271350, &qword_1001F3A98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_100084528(&qword_100271348, &qword_1001F3A90);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v34 = OBJC_IVAR___BDSPriceTracker_persistentStateContinuation;
  sub_10009ADF0(v1 + OBJC_IVAR___BDSPriceTracker_persistentStateContinuation, &v30 - v14, &qword_100271348, &qword_1001F3A90);
  v16 = sub_100084528(&qword_100271270, &qword_1001F3920);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10008875C(v15, &qword_100271348, &qword_1001F3A90);
  }

  else
  {
    sub_1001C6378();
    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v10 + 16);
  v33 = OBJC_IVAR___BDSPriceTracker_schedulerConfigContinuation;
  v18(v12, v1 + OBJC_IVAR___BDSPriceTracker_schedulerConfigContinuation, v9);
  sub_1001C6378();
  v32 = *(v10 + 8);
  v32(v12, v9);
  v19 = *(v6 + 16);
  v31 = OBJC_IVAR___BDSPriceTracker_activeNotificationsContinuation;
  v20 = v35;
  v19(v8, v1 + OBJC_IVAR___BDSPriceTracker_activeNotificationsContinuation, v35);
  sub_1001C6378();
  v30 = *(v6 + 8);
  v30(v8, v20);
  v21 = OBJC_IVAR___BDSPriceTracker_cardListContinuation;
  v22 = v36;
  v23 = v37;
  (*(v37 + 16))(v5, v1 + OBJC_IVAR___BDSPriceTracker_cardListContinuation, v36);
  sub_1001C6378();
  v24 = *(v23 + 8);
  v37 = v23 + 8;
  v24(v5, v22);
  if (*(v1 + OBJC_IVAR___BDSPriceTracker_streamTask))
  {

    sub_1001C63A8();
  }

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v25 = sub_1001C5148();
  sub_100083274(v25, qword_100281898);
  v26 = sub_1001C5128();
  v27 = sub_1001C65B8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "[PriceTracker] Stopped", v28, 2u);
  }

  sub_10008875C(v1 + v34, &qword_100271348, &qword_1001F3A90);
  v32((v1 + v33), v9);
  v30((v1 + v31), v35);
  v24((v1 + v21), v36);

  sub_10010E494(v1 + OBJC_IVAR___BDSPriceTracker_state, _s5StateVMa);
  sub_100110154(*(v1 + OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService), *(v1 + OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService + 8));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100108B1C()
{
  sub_1001085A0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100108B70(uint64_t a1)
{
  v138 = a1;
  v2 = sub_100084528(&qword_100271328, &qword_1001F3A70);
  v128 = *(v2 - 8);
  v129 = v2;
  __chkstk_darwin(v2);
  v127 = &v106 - v3;
  v4 = sub_100084528(&qword_100271330, &qword_1001F3A78);
  v125 = *(v4 - 8);
  v126 = v4;
  __chkstk_darwin(v4);
  v124 = &v106 - v5;
  v6 = sub_100084528(&qword_100271338, &qword_1001F3A80);
  v131 = *(v6 - 8);
  v132 = v6;
  __chkstk_darwin(v6);
  v130 = &v106 - v7;
  v8 = sub_1001C4CA8();
  v135 = *(v8 - 8);
  v136 = v8;
  __chkstk_darwin(v8);
  v134 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_100271340, &qword_1001F3A88);
  v122 = *(v10 - 8);
  v123 = v10;
  __chkstk_darwin(v10);
  v121 = &v106 - v11;
  v12 = _s5StateVMa(0);
  __chkstk_darwin(v12);
  v14 = (&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = _s15PersistentStateO2V1VMa(0);
  v16 = __chkstk_darwin(v15);
  v18 = (&v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v133 = (&v106 - v19);
  v20 = sub_100084528(&qword_100271348, &qword_1001F3A90);
  __chkstk_darwin(v20 - 8);
  v22 = &v106 - v21;
  v23 = sub_100084528(&qword_100271270, &qword_1001F3920);
  __chkstk_darwin(v23);
  v137 = &v106 - v24;
  v26 = v25;
  v28 = v27;
  sub_10009ADF0(v1 + OBJC_IVAR___BDSPriceTracker_persistentStateContinuation, v22, &qword_100271348, &qword_1001F3A90);
  if ((*(v28 + 48))(v22, 1, v26) == 1)
  {
    sub_10008875C(v22, &qword_100271348, &qword_1001F3A90);
    v29 = v134;
    v30 = v1;
  }

  else
  {
    v118 = v28;
    (*(v28 + 32))(v137, v22, v26);
    v31 = OBJC_IVAR___BDSPriceTracker_state;
    swift_beginAccess();
    v117 = _s5StateVMa;
    v120 = v1;
    sub_100110C34(v1 + v31, v14, _s5StateVMa);
    v32 = v14[1];
    v111 = *v14;
    v33 = v15[6];
    v34 = v12[6];
    v116 = _s14UpdateScheduleVMa;
    v35 = v133;
    sub_100110C34(v14 + v34, v133 + v33, _s14UpdateScheduleVMa);
    updated = _s14UpdateScheduleVMa(0);
    v36 = *(updated - 8);
    v113 = *(v36 + 56);
    v115 = v36 + 56;
    v113(v35 + v33, 0, 1, updated);
    sub_10009ADF0(v14 + v12[7], v35 + v15[7], &qword_1002712C8, &qword_1001F3A18);
    v37 = v12[9];
    v38 = v12[10];
    v39 = (v14 + v12[11]);
    v40 = v39[4];
    v41 = v39[5];
    v42 = v39[2];
    v143 = v39[3];
    v144 = v40;
    v145 = v41;
    v43 = v39[1];
    v140 = *v39;
    v44 = (v14 + v37);
    v45 = *v44;
    v46 = v44[1];
    v47 = v14 + v38;
    v119 = v26;
    v49 = *(v14 + v38);
    v48 = *(v47 + 1);
    v107 = v45;
    v108 = v48;
    v141 = v43;
    v142 = v42;
    v50 = *(v14 + v12[12]);
    v109 = v49;
    v110 = v50;

    v51 = v111;

    sub_10009ADF0(&v140, &v146, &qword_1002712D0, &qword_1001F3A20);
    v112 = _s5StateVMa;
    sub_10010E494(v14, _s5StateVMa);
    *v35 = v51;
    v35[1] = v32;
    v52 = (v35 + v15[8]);
    *v52 = v107;
    v52[1] = v46;
    v53 = v35 + v15[9];
    v54 = v108;
    *v53 = v109;
    *(v53 + 1) = v54;
    v53[16] = 0;
    v55 = (v35 + v15[10]);
    v56 = v143;
    v57 = v144;
    v58 = v141;
    v55[2] = v142;
    v55[3] = v56;
    v59 = v145;
    v55[4] = v57;
    v55[5] = v59;
    *v55 = v140;
    v55[1] = v58;
    v60 = v35 + v15[11];
    *v60 = v110;
    v60[8] = 0;
    sub_100110C34(v138, v14, v117);
    v61 = *v14;
    v62 = v14[1];
    v63 = v15[6];
    sub_100110C34(v14 + v12[6], v18 + v63, v116);
    v113(v18 + v63, 0, 1, updated);
    sub_10009ADF0(v14 + v12[7], v18 + v15[7], &qword_1002712C8, &qword_1001F3A18);
    v64 = (v14 + v12[9]);
    v65 = *v64;
    v66 = v64[1];
    v67 = v14 + v12[10];
    v69 = *v67;
    v68 = *(v67 + 1);
    v117 = v69;
    v115 = v65;
    v116 = v68;
    v70 = (v14 + v12[11]);
    v71 = v70[5];
    v150 = v70[4];
    v151 = v71;
    v72 = v70[3];
    v148 = v70[2];
    v149 = v72;
    v73 = v70[1];
    v146 = *v70;
    v147 = v73;
    v74 = *(v14 + v12[12]);

    sub_10009ADF0(&v146, &v139, &qword_1002712D0, &qword_1001F3A20);
    sub_10010E494(v14, v112);
    *v18 = v61;
    v18[1] = v62;
    v75 = v119;
    v76 = (v18 + v15[8]);
    *v76 = v115;
    v76[1] = v66;
    v77 = v18 + v15[9];
    v78 = v116;
    *v77 = v117;
    *(v77 + 1) = v78;
    v77[16] = 0;
    v79 = (v18 + v15[10]);
    v80 = v149;
    v79[2] = v148;
    v79[3] = v80;
    v81 = v151;
    v79[4] = v150;
    v79[5] = v81;
    v82 = v147;
    *v79 = v146;
    v79[1] = v82;
    v83 = v18 + v15[11];
    *v83 = v74;
    v83[8] = 0;
    LOBYTE(v61) = sub_100120104(v18, v35);
    sub_10010E494(v18, _s15PersistentStateO2V1VMa);
    if ((v61 & 1) == 0)
    {
      sub_100110C34(v35, v18, _s15PersistentStateO2V1VMa);
      v84 = v121;
      sub_1001C6368();
      v35 = v133;
      (*(v122 + 8))(v84, v123);
    }

    sub_10010E494(v35, _s15PersistentStateO2V1VMa);
    (*(v118 + 8))(v137, v75);
    v30 = v120;
    v29 = v134;
  }

  sub_1001C4C98();
  v85 = OBJC_IVAR___BDSPriceTracker_state;
  swift_beginAccess();
  sub_100110C34(v30 + v85, v14, _s5StateVMa);
  v86 = COERCE_DOUBLE(sub_10019EDB4());
  v88 = v87;
  v90 = v89;
  sub_10010E494(v14, _s5StateVMa);
  v91 = v138;
  v92 = COERCE_DOUBLE(sub_10019EDB4());
  if ((v94 & 1) == 0)
  {
    if ((v90 & 1) == 0 && v92 == v86 && v93 == v88)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v90 & 1) == 0)
  {
LABEL_10:
    *&v140 = v86;
    *(&v140 + 1) = v88;
    LOBYTE(v141) = v90 & 1;
    sub_100084528(&qword_100271350, &qword_1001F3A98);
    v95 = v130;
    sub_1001C6368();
    (*(v131 + 8))(v95, v132);
  }

LABEL_11:
  sub_100110C34(v30 + v85, v14, _s5StateVMa);
  v96 = sub_1001A6D74(v14[1]);
  __chkstk_darwin(v96);
  *(&v106 - 2) = v14;
  v97 = sub_100102B88(sub_1001112FC, (&v106 - 4), v96);

  sub_10010E494(v14, _s5StateVMa);
  v98 = sub_1001A6D74(*(v91 + 8));
  __chkstk_darwin(v98);
  *(&v106 - 2) = v91;
  v99 = sub_100102B88(sub_1001112FC, (&v106 - 4), v98);

  LOBYTE(v98) = sub_100194EFC(v99, v97);

  if (v98)
  {
  }

  else
  {
    *&v140 = v97;
    sub_100084528(&qword_100271358, &qword_1001F3AA0);
    v100 = v124;
    sub_1001C6368();
    (*(v125 + 8))(v100, v126);
  }

  sub_100110C34(v30 + v85, v14, _s5StateVMa);
  v101 = sub_10019EE64();
  sub_10010E494(v14, _s5StateVMa);
  v102 = sub_10019EE64();
  v103 = sub_100194320(v102, v101);

  if (v103)
  {
  }

  else
  {
    *&v140 = v101;
    sub_100084528(&qword_100271360, &qword_1001F3AA8);
    v104 = v127;
    sub_1001C6368();
    (*(v128 + 8))(v104, v129);
  }

  return (*(v135 + 8))(v29, v136);
}

uint64_t sub_100109954(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100109A00;

  return sub_100109B3C(2);
}

uint64_t sub_100109A00()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100109B3C(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 257) = a1;
  v3 = sub_1001C4CA8();
  *(v2 + 96) = v3;
  *(v2 + 104) = *(v3 - 8);
  *(v2 + 112) = swift_task_alloc();
  _s5StateVMa(0);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  *(v2 + 136) = swift_task_alloc();
  updated = _s6UpdateVMa(0);
  *(v2 + 144) = updated;
  *(v2 + 152) = *(updated - 8);
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_100109CE4, v1, 0);
}

uint64_t sub_100109CE4()
{
  v47 = v0;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  *(v0 + 184) = sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 257);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46 = v6;
    *v5 = 136315138;
    *(v0 + 256) = v4;
    v7 = sub_1001C6078();
    v9 = sub_1001874E8(v7, v8, &v46);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] updateTrackedPrices(schedulePolicy: %s)", v5, 0xCu);
    sub_10008E7BC(v6);
  }

  v44 = *(v0 + 152);
  v45 = *(v0 + 144);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v14 = *(v0 + 104);
  v43 = *(v0 + 96);
  v15 = *(v0 + 88);
  v16 = OBJC_IVAR___BDSPriceTracker_state;
  *(v0 + 192) = OBJC_IVAR___BDSPriceTracker_state;
  v17 = *(v0 + 257);
  swift_beginAccess();
  sub_100110C34(v15 + v16, v10, _s5StateVMa);
  sub_1001C4C98();
  sub_10019F4E8(v17, v13, v11);
  (*(v14 + 8))(v13, v43);
  sub_100110C34(v15 + v16, v12, _s5StateVMa);
  swift_beginAccess();
  sub_10010E5F0(v10, v15 + v16, _s5StateVMa);
  swift_endAccess();
  sub_100103198(v12);
  sub_10010E494(v12, _s5StateVMa);
  sub_10010E494(v10, _s5StateVMa);
  if ((*(v44 + 48))(v11, 1, v45) == 1)
  {
    sub_10008875C(*(v0 + 136), &qword_1002712C8, &qword_1001F3A18);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 168);
    v21 = *(v0 + 176);
    v22 = *(v0 + 160);
    sub_100110AC0(*(v0 + 136), v21, _s6UpdateVMa);
    sub_100110C34(v21, v20, _s6UpdateVMa);
    sub_100110C34(v21, v22, _s6UpdateVMa);
    v23 = sub_1001C5128();
    v24 = sub_1001C65B8();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 160);
    v27 = *(v0 + 168);
    if (v25)
    {
      v28 = *(v0 + 144);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 134218242;
      v31 = *(*(v27 + *(v28 + 20)) + 16);
      sub_10010E494(v27, _s6UpdateVMa);
      *(v29 + 4) = v31;
      *(v29 + 12) = 2080;
      sub_100110100();
      v32 = sub_1001C63F8();
      v34 = v33;
      sub_10010E494(v26, _s6UpdateVMa);
      v35 = sub_1001874E8(v32, v34, &v46);

      *(v29 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v23, v24, "[PriceTracker] Price-update started with %ld items: %s", v29, 0x16u);
      sub_10008E7BC(v30);
    }

    else
    {
      sub_10010E494(*(v0 + 168), _s6UpdateVMa);

      sub_10010E494(v26, _s6UpdateVMa);
    }

    v36 = *(v0 + 176);
    v37 = *(v0 + 144);
    v38 = sub_1001033B8();
    v40 = v39;
    *(v0 + 200) = v38;
    *(v0 + 208) = v39;
    v41 = *(v36 + *(v37 + 20));
    v42 = swift_task_alloc();
    *(v0 + 216) = v42;
    *v42 = v0;
    v42[1] = sub_10010A288;

    return sub_10019ABB8(v41, v38, v40);
  }
}

uint64_t sub_10010A288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 208);
  v8[28] = v3;

  swift_unknownObjectRelease();

  v10 = v8[11];
  if (v3)
  {
    v11 = sub_10010A670;
  }

  else
  {
    v8[29] = a3;
    v8[30] = a2;
    v8[31] = a1;
    v11 = sub_10010A414;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_10010A414()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[31];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[16];
  v16 = v0[15];
  v7 = v0[11];
  v8 = sub_1001C63B8();
  sub_100110C34(v7 + v4, v6, _s5StateVMa);
  v9 = v8 & 1;
  sub_1001A04F0(v5, v9, v3, v1, v2);
  sub_1001100BC(v3, v1, v2);
  sub_100110C34(v7 + v4, v16, _s5StateVMa);
  swift_beginAccess();
  sub_10010E5F0(v6, v7 + v4, _s5StateVMa);
  swift_endAccess();
  sub_100103198(v16);
  sub_10010E494(v16, _s5StateVMa);
  sub_10010E494(v6, _s5StateVMa);
  v10 = sub_1001C5128();
  v11 = sub_1001C65B8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "[PriceTracker] Price-update finished (cancelled? %{BOOL}d)", v12, 8u);
  }

  v13 = v0[22];

  sub_10010E494(v13, _s6UpdateVMa);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10010A670()
{
  swift_errorRetain();
  v1 = sub_1001C5128();
  v2 = sub_1001C6598();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[PriceTracker] Failed to fetch pricing information: %@", v3, 0xCu);
    sub_10008875C(v4, &unk_1002718E0, &qword_1001F31F0);
  }

  else
  {
  }

  v6 = v0[24];
  v7 = v0[22];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[11];
  v11 = sub_1001C63B8();
  sub_100110C34(v10 + v6, v8, _s5StateVMa);
  v12 = v11 & 1;
  sub_1001A04F0(v7, v12, 0, 0, 0);
  sub_1001100BC(0, 0, 0);
  sub_100110C34(v10 + v6, v9, _s5StateVMa);
  swift_beginAccess();
  sub_10010E5F0(v8, v10 + v6, _s5StateVMa);
  swift_endAccess();
  sub_100103198(v9);
  sub_10010E494(v9, _s5StateVMa);
  sub_10010E494(v8, _s5StateVMa);
  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "[PriceTracker] Price-update finished (cancelled? %{BOOL}d)", v15, 8u);
  }

  v16 = v0[22];

  sub_10010E494(v16, _s6UpdateVMa);

  v17 = v0[1];

  return v17();
}

void sub_10010A9DC(uint64_t a1)
{
  sub_10010AC1C(319, &qword_100271268, &qword_100271270, &qword_1001F3920, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10010AC1C(319, &qword_100271278, &qword_100271280, &qword_1001F3928, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      sub_10010AC1C(319, &qword_100271288, &qword_10026F268, &qword_1001F0C80, &type metadata accessor for AsyncStream.Continuation);
      if (v3 <= 0x3F)
      {
        sub_100110E68(319, &qword_100271290, &_s8CardListVN, &type metadata accessor for AsyncStream.Continuation);
        if (v4 <= 0x3F)
        {
          _s5StateVMa(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_10010AC1C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000885AC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10010AC80(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = _s5StateVMa(0);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  _s14UpdateScheduleVMa(0);
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_10010AD4C, v1, 0);
}

uint64_t sub_10010AD4C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v3 = sub_10011B294();
  v4 = [v2 updateScheduleSteps];
  sub_100088714(0, &qword_100271310, off_10023DD30);
  v5 = sub_1001C6298();

  sub_10011B534(v5, v1);
  v7 = sub_10011B44C();
  v9 = v8;
  v10 = [*(v0 + 256) notification];
  if (v10)
  {
    v11 = v10;
    sub_10011B8E8(v10, (v0 + 16));
    v31 = *(v0 + 32);
    v32 = *(v0 + 16);
    v29 = *(v0 + 64);
    v30 = *(v0 + 48);
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
  }

  v12 = *(v0 + 288);
  v13 = *(v0 + 296);
  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  v16 = *(v0 + 264);
  v17 = [*(v0 + 256) cardLimit];
  v26 = [v17 integerValue];

  v18 = OBJC_IVAR___BDSPriceTracker_state;
  swift_beginAccess();
  sub_100110C34(v16 + v18, v12, _s5StateVMa);
  sub_1001A378C(v3);

  sub_10010E5F0(v13, v12 + v15[6], _s14UpdateScheduleVMa);
  v19 = (v12 + v15[10]);
  *v19 = v7;
  *(v19 + 1) = v9;
  v20 = (v12 + v15[11]);
  v21 = v20[2];
  v22 = v20[3];
  v23 = v20[5];
  *(v0 + 176) = v20[4];
  *(v0 + 192) = v23;
  *(v0 + 144) = v21;
  *(v0 + 160) = v22;
  v24 = v20[1];
  *(v0 + 112) = *v20;
  *(v0 + 128) = v24;
  sub_10008875C(v0 + 112, &qword_1002712D0, &qword_1001F3A20);
  *v20 = v32;
  v20[1] = v31;
  v20[2] = v30;
  v20[3] = v29;
  v20[4] = v28;
  v20[5] = v27;
  *(v12 + v15[12]) = v26;
  sub_100110C34(v16 + v18, v14, _s5StateVMa);
  swift_beginAccess();
  sub_10010E5F0(v12, v16 + v18, _s5StateVMa);
  swift_endAccess();
  sub_100103198(v14);
  sub_10010E494(v14, _s5StateVMa);
  sub_10010E494(v13, _s14UpdateScheduleVMa);
  sub_10010E494(v12, _s5StateVMa);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10010B258(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10010B31C;

  return sub_10010AC80(v5);
}

uint64_t sub_10010B31C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = sub_1001C4A18();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10010B4BC()
{
  v1[36] = v0;
  v2 = sub_1001C47C8();
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v3 = sub_1001C47E8();
  v1[41] = v3;
  v1[42] = *(v3 - 8);
  v1[43] = swift_task_alloc();
  v4 = sub_1001C4CA8();
  v1[44] = v4;
  v1[45] = *(v4 - 8);
  v1[46] = swift_task_alloc();
  sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v1[47] = swift_task_alloc();
  v1[48] = _s5StateVMa(0);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = _s15PersistentStateO2V1VMa(0);
  v1[53] = swift_task_alloc();
  _s15PersistentStateOMa(0);
  v1[54] = swift_task_alloc();
  v1[55] = type metadata accessor for PriceTracker.Envelope(0);
  v1[56] = swift_task_alloc();

  return _swift_task_switch(sub_10010B74C, v0, 0);
}

void sub_10010B74C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v60 = *(v0 + 432);
  v61 = *(v0 + 400);
  v4 = *(v0 + 384);
  v58 = *(v0 + 376);
  v64 = *(v0 + 392);
  v66 = *(v0 + 368);
  v5 = *(v0 + 288) + OBJC_IVAR___BDSPriceTracker_state;
  v68 = *(v0 + 360);
  v69 = *(v0 + 352);
  swift_beginAccess();
  sub_100110C34(v5, v2, _s5StateVMa);
  v7 = *v2;
  v6 = v2[1];
  v8 = v3[6];
  sub_100110C34(v2 + v4[6], &v1[v8], _s14UpdateScheduleVMa);
  updated = _s14UpdateScheduleVMa(0);
  (*(*(updated - 8) + 56))(&v1[v8], 0, 1, updated);
  sub_10009ADF0(v2 + v4[7], &v1[v3[7]], &qword_1002712C8, &qword_1001F3A18);
  v10 = (v2 + v4[9]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (v2 + v4[10]);
  v55 = v13[1];
  v56 = *v13;
  v14 = (v2 + v4[11]);
  v15 = v14[1];
  *(v0 + 16) = *v14;
  *(v0 + 32) = v15;
  v16 = v14[5];
  v17 = v14[2];
  v18 = v14[3];
  *(v0 + 80) = v14[4];
  *(v0 + 96) = v16;
  *(v0 + 48) = v17;
  *(v0 + 64) = v18;
  v54 = *(v2 + v4[12]);

  sub_10009ADF0(v0 + 16, v0 + 112, &qword_1002712D0, &qword_1001F3A20);
  sub_10010E494(v2, _s5StateVMa);
  *v1 = v7;
  *(v1 + 1) = v6;
  v19 = &v1[v3[8]];
  *v19 = v12;
  *(v19 + 1) = v11;
  v20 = &v1[v3[9]];
  *v20 = v56;
  *(v20 + 1) = v55;
  v20[16] = 0;
  v21 = &v1[v3[10]];
  v23 = *(v0 + 80);
  v22 = *(v0 + 96);
  v24 = *(v0 + 64);
  *(v21 + 2) = *(v0 + 48);
  *(v21 + 3) = v24;
  *(v21 + 4) = v23;
  *(v21 + 5) = v22;
  v25 = *(v0 + 32);
  *v21 = *(v0 + 16);
  *(v21 + 1) = v25;
  v26 = &v1[v3[11]];
  *v26 = v54;
  v26[8] = 0;
  sub_100110AC0(v1, v60, _s15PersistentStateO2V1VMa);
  sub_10009ADF0(v5 + v4[8], v58, &qword_1002712C8, &qword_1001F3A18);
  sub_100110C34(v5, v61, _s5StateVMa);
  v27 = sub_1001A6D74(*(v61 + 8));
  v28 = swift_task_alloc();
  *(v28 + 16) = v61;
  v29 = sub_100102B88(sub_10010E430, v28, v27);

  sub_10010E494(v61, _s5StateVMa);
  sub_100110C34(v5, v64, _s5StateVMa);
  v30 = sub_10019EE64();
  sub_10010E494(v64, _s5StateVMa);
  sub_100110C34(v5, v2, _s5StateVMa);
  sub_1001C4C98();
  v31 = sub_10019EDB4();
  v33 = v32;
  LOBYTE(v6) = v34;
  (*(v68 + 8))(v66, v69);
  sub_10010E494(v2, _s5StateVMa);
  v35 = 0;
  v36 = 0;
  if ((v6 & 1) == 0)
  {
    v37 = round(v33);
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v37 > -9.22337204e18)
    {
      if (v37 < 9.22337204e18)
      {
        *(v0 + 272) = v37;
        v70 = sub_1001C6CC8();
        v71 = v38;
        v73._countAndFlagsBits = 47;
        v73._object = 0xE100000000000000;
        sub_1001C6138(v73);
        v39 = round(*&v31);
        if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v39 > -9.22337204e18)
          {
            if (v39 < 9.22337204e18)
            {
              *(v0 + 280) = v39;
              v74._countAndFlagsBits = sub_1001C6CC8();
              sub_1001C6138(v74);

              v35 = v70;
              v36 = v71;
              goto LABEL_9;
            }

LABEL_17:
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

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v57 = v35;
  v40 = v30;
  v41 = *(v0 + 440);
  v42 = *(v0 + 448);
  v43 = *(v0 + 376);
  v45 = *(v0 + 336);
  v44 = *(v0 + 344);
  v59 = *(v0 + 328);
  v67 = *(v0 + 320);
  v46 = *(v0 + 304);
  v62 = *(v0 + 312);
  v65 = *(v0 + 296);
  sub_100110AC0(*(v0 + 432), v42, _s15PersistentStateOMa);
  sub_10009AE58(v43, v42 + v41[5], &qword_1002712C8, &qword_1001F3A18);
  *(v42 + v41[6]) = v29;
  *(v42 + v41[7]) = v40;
  v47 = (v42 + v41[8]);
  *v47 = v57;
  v47[1] = v36;
  sub_1001C4828();
  swift_allocObject();
  sub_1001C4818();
  (*(v45 + 104))(v44, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v59);
  sub_1001C47F8();
  sub_100084528(&qword_1002712D8, &qword_1001F3A28);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1001F0680;
  sub_1001C4798();
  sub_1001C47B8();
  sub_1001C47A8();
  *(v0 + 264) = v48;
  sub_10010E44C(&qword_1002712E0, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100084528(&qword_1002712E8, &qword_1001F3A30);
  sub_1000885F4(&qword_1002712F0, &qword_1002712E8, &qword_1001F3A30, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  v49 = sub_1001C47D8();
  sub_10010C034(v67, v62);
  v50 = *(v46 + 8);
  v50(v62, v65);
  v50(v67, v65);
  v49(v0 + 208, 0);
  sub_10010E44C(&qword_1002712F8, type metadata accessor for PriceTracker.Envelope, &unk_1001F3C24);
  v51 = sub_1001C4808();
  v63 = v52;
  sub_10010E494(*(v0 + 448), type metadata accessor for PriceTracker.Envelope);

  v53 = *(v0 + 8);

  v53(v51, v63);
}

uint64_t sub_10010C034(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_100084528(&qword_100271300, &qword_1001F3A38);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_1001C47C8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_10010E44C(&qword_1002712E0, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_1001C68A8();
  v16 = v26;
  sub_10010E44C(&qword_100271308, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  v24 = a2;
  v17 = sub_1001C5FD8();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    sub_1001C68B8();
  }

  v20 = v27;
  sub_10009AE58(v7, v27, &qword_100271300, &qword_1001F3A38);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10010C4B0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10010C558;

  return sub_10010B4BC();
}

uint64_t sub_10010C558(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *v3;

  if (v4)
  {
    v9 = sub_1001C4A18();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    isa = sub_1001C4B98().super.isa;
    sub_1000887D0(a1, a2);
    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v7 + 24);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_10010C6F0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  _s5StateVMa(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10010C78C, v1, 0);
}

uint64_t sub_10010C78C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = [v3 adamID];
  v6 = sub_1001C6018();
  v8 = v7;

  LODWORD(v3) = [v3 isAudiobook];
  v9 = OBJC_IVAR___BDSPriceTracker_state;
  swift_beginAccess();
  sub_100110C34(v4 + v9, v2, _s5StateVMa);
  sub_1001A0F34(v6, v8, v3);

  sub_100110C34(v4 + v9, v1, _s5StateVMa);
  swift_beginAccess();
  sub_10010E5F0(v2, v4 + v9, _s5StateVMa);
  swift_endAccess();
  sub_100103198(v1);
  sub_10010E494(v1, _s5StateVMa);
  sub_10010E494(v2, _s5StateVMa);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10010CAC0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10010CB84;

  return sub_10010C6F0(v5);
}

uint64_t sub_10010CB84()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10010CCE0(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  _s5StateVMa(0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_1001C4CC8();
  v2[19] = swift_task_alloc();
  v3 = sub_100084528(&qword_1002712B0, &qword_1001F39C0);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10010CE10, v1, 0);
}

void sub_10010CE10()
{
  v1 = *(v0 + 120);
  v2 = sub_100119324(_swiftEmptyArrayStorage);
  v3 = *(v0 + 120);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1001C6AE8();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v1 = v4 | 0x8000000000000000;
  }

  else
  {
    v5 = v3 + 64;
    v8 = -1 << *(v3 + 32);
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 64);
  }

  v11 = (v6 + 64) >> 6;
  v63 = (*(v0 + 168) + 8);

  v12 = 0;
  v65 = v5;
  v66 = v1;
  v62 = v0;
  v64 = v11;
  while (1)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v23 = sub_1001C6B18();
      if (!v23 || (v25 = v24, *(v0 + 96) = v23, sub_100088714(0, &qword_100271298, off_10023DD28), swift_dynamicCast(), v21 = *(v0 + 88), *(v0 + 112) = v25, sub_100088714(0, &qword_1002712A0, NSNumber_ptr), swift_dynamicCast(), v22 = *(v0 + 104), v16 = v12, v17 = v7, !v21))
      {
LABEL_45:
        v57 = *(v0 + 144);
        v59 = *(v0 + 128);
        v58 = *(v0 + 136);
        sub_100005064(v66);
        v60 = OBJC_IVAR___BDSPriceTracker_state;
        swift_beginAccess();
        sub_100110C34(v59 + v60, v57, _s5StateVMa);
        sub_1001A0DE8(v2);

        sub_100110C34(v59 + v60, v58, _s5StateVMa);
        swift_beginAccess();
        sub_10010E5F0(v57, v59 + v60, _s5StateVMa);
        swift_endAccess();
        sub_100103198(v58);
        sub_10010E494(v58, _s5StateVMa);
        sub_10010E494(v57, _s5StateVMa);

        v61 = *(v0 + 8);

        v61();
        return;
      }
    }

    else
    {
      v14 = v12;
      v15 = v7;
      v16 = v12;
      if (!v7)
      {
        while (1)
        {
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v16 >= v11)
          {
            goto LABEL_45;
          }

          v15 = *(v5 + 8 * v16);
          ++v14;
          if (v15)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return;
      }

LABEL_15:
      v17 = (v15 - 1) & v15;
      v18 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
      v19 = *(*(v1 + 48) + v18);
      v20 = *(*(v1 + 56) + v18);
      v21 = v19;
      v22 = v20;
      if (!v21)
      {
        goto LABEL_45;
      }
    }

    v67 = v17;
    v26 = v21;
    v27 = [v26 adamID];
    v70 = sub_1001C6018();
    v71 = v28;

    v69 = [v26 isAudiobook];
    v29 = v22;
    [v29 doubleValue];
    v31 = v30;
    v68 = v29;
    if (v30 == 0.0)
    {

      v32 = 0;
      v33 = 0;
    }

    else
    {
      v34 = *(v0 + 176);
      v35 = *(v0 + 160);
      *(v0 + 80) = v30;
      sub_1001C4CB8();
      sub_10010E25C();
      sub_1001C4A38();
      sub_1000885F4(&qword_1002712C0, &qword_1002712B0, &qword_1001F39C0, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Currency);
      sub_1001C5ED8();
      (*v63)(v34, v35);
      v36 = *(v0 + 72);
      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v38 = 0;
        v39 = 4 * v37;
        while (sub_1001C61E8() != 36 || v40 != 0xE100000000000000)
        {
          v41 = sub_1001C6D08();

          if (v41)
          {
            goto LABEL_32;
          }

          v38 = sub_1001C6108() >> 14;
          if (v38 == v39)
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        if (v39 < v38)
        {
          goto LABEL_54;
        }
      }

LABEL_33:
      sub_1001C6208();

      v32 = sub_1001C60B8();
      v33 = v42;

      v0 = v62;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = sub_100187C98(v70, v71, v69);
    v46 = v2[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_52;
    }

    v49 = v44;
    if (v2[3] < v48)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v44)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10018B31C();
      if (v49)
      {
LABEL_8:

        v13 = (v2[7] + 24 * v45);
        *v13 = v31;
        *(v13 + 1) = v32;
        *(v13 + 2) = v33;

        goto LABEL_9;
      }
    }

LABEL_41:
    v2[(v45 >> 6) + 8] |= 1 << v45;
    v52 = v2[6] + 24 * v45;
    *v52 = v70;
    *(v52 + 8) = v71;
    *(v52 + 16) = v69;
    v53 = (v2[7] + 24 * v45);
    *v53 = v31;
    *(v53 + 1) = v32;
    *(v53 + 2) = v33;

    v54 = v2[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_53;
    }

    v2[2] = v56;
LABEL_9:
    v12 = v16;
    v1 = v66;
    v7 = v67;
    v11 = v64;
    v5 = v65;
  }

  sub_1001894E8(v48, isUniquelyReferenced_nonNull_native);
  v50 = sub_100187C98(v70, v71, v69);
  if ((v49 & 1) == (v51 & 1))
  {
    v45 = v50;
    if (v49)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

  sub_1001C6D68();
}

uint64_t sub_10010D6CC(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100088714(0, &qword_100271298, off_10023DD28);
  sub_100088714(0, &qword_1002712A0, NSNumber_ptr);
  sub_10010E0FC();
  v4 = sub_1001C5F08();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_10010D7E0;

  return sub_10010CCE0(v4);
}

uint64_t sub_10010D7E0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10010DAB8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1001112F4;

  return sub_100109B3C(1);
}

uint64_t sub_10010DB64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_10010DAB8(v2, v3);
}

uint64_t sub_10010DC10(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100271498, &qword_1001F3C50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10009BB74(a1, a1[3]);
  sub_100110EB8();
  sub_1001C6E78();
  LOBYTE(v12) = 0;
  _s15PersistentStateOMa(0);
  sub_10010E44C(&qword_1002714A8, _s15PersistentStateOMa, &unk_1001F4B58);
  sub_1001C6CA8();
  if (!v2)
  {
    v9 = type metadata accessor for PriceTracker.Envelope(0);
    LOBYTE(v12) = 1;
    _s6UpdateVMa(0);
    sub_10010E44C(&qword_1002714B0, _s6UpdateVMa, &unk_1001F8850);
    sub_1001C6C58();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    sub_100084528(&qword_10026F268, &qword_1001F0C80);
    sub_100110F0C();
    sub_1001C6CA8();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    sub_100110FC0();
    sub_1001C6CA8();
    LOBYTE(v12) = 4;
    sub_1001C6C38();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10010DEE0()
{
  v1 = *v0;
  v2 = 1635017060;
  v3 = 0xD000000000000013;
  v4 = 0x7473694C64726163;
  if (v1 != 3)
  {
    v4 = 0x656C756465686373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x55746E6572727563;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10010DF90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10011112C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10010DFB8(uint64_t a1)
{
  v2 = sub_100110EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010DFF4(uint64_t a1)
{
  v2 = sub_100110EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10010E048()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_10010D6CC(v2, v3, v4);
}

unint64_t sub_10010E0FC()
{
  result = qword_1002712A8;
  if (!qword_1002712A8)
  {
    sub_100088714(255, &qword_100271298, off_10023DD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002712A8);
  }

  return result;
}

uint64_t sub_10010E164(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001112F8;

  return v6(a1);
}

unint64_t sub_10010E25C()
{
  result = qword_1002712B8;
  if (!qword_1002712B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002712B8);
  }

  return result;
}

uint64_t sub_10010E2B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_10010CAC0(v2, v3, v4);
}

uint64_t sub_10010E364()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_10010C4B0(v2, v3);
}

uint64_t sub_10010E44C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010E494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10010E4F4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10010E53C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_10010B258(v2, v3, v4);
}

uint64_t sub_10010E5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010E658(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 232) = a6;
  *(v7 + 240) = v6;
  *(v7 + 65) = a4;
  *(v7 + 216) = a3;
  *(v7 + 224) = a5;
  *(v7 + 200) = a1;
  *(v7 + 208) = a2;
  *(v7 + 248) = _s9SchedulerC5StateOMa(0);
  *(v7 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_10010E6F8, 0, 0);
}

uint64_t sub_10010E6F8()
{
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[25];
  swift_defaultActor_initialize();
  swift_storeEnumTagMultiPayload();
  v1[17] = sub_100088714(0, &qword_1002713C8, BGSystemTaskScheduler_ptr);
  v1[18] = &off_100249020;
  v1[14] = v4;
  v1[19] = v3;
  v1[20] = v2;
  v5 = v4;

  return _swift_task_switch(sub_10010E7D0, v1, 0);
}

uint64_t sub_10010E7D0()
{
  v38 = v0;
  v1 = 0xD00000000000002CLL;
  v2 = v0[25];
  v3 = 0x8000000100200320;
  v4 = swift_allocObject();
  swift_weakInit();

  v5 = sub_1001C5FE8();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100110A0C;
  *(v6 + 24) = v4;
  v0[20] = sub_100110A14;
  v0[21] = v6;
  v0[16] = _NSConcreteStackBlock;
  v0[17] = 1107296256;
  v0[18] = sub_1000C775C;
  v0[19] = &unk_1002484F8;
  v7 = _Block_copy(v0 + 16);

  LODWORD(v2) = [v2 registerForTaskWithIdentifier:v5 usingQueue:0 launchHandler:v7];
  _Block_release(v7);

  if (v2)
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v8 = sub_1001C5148();
    sub_100083274(v8, qword_100281898);
    v9 = sub_1001C5128();
    v10 = sub_1001C65B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100200320, &v37);
      v13 = "[Scheduler] Registered system task handler for %{public}s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, v10, v13, v11, 0xCu);
      sub_10008E7BC(v12);
    }
  }

  else
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v14 = sub_1001C5148();
    sub_100083274(v14, qword_100281898);
    v9 = sub_1001C5128();
    v10 = sub_1001C6598();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100200320, &v37);
      v13 = "[Scheduler] Failed to register system task handler for %{public}s -- Scheduling will probably not work";
      goto LABEL_10;
    }
  }

  v15 = v0[25];
  v16 = sub_1001C5FE8();
  v17 = [v15 taskRequestForIdentifier:v16];

  v18 = v17;
  v19 = v0[25];
  if (v18)
  {
    sub_10011D2BC(v18, (v0 + 9));

    v20 = v0[10];
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = v0[32];
    v22 = v0[30];
    *v21 = v0[9];
    *(v21 + 8) = v20;
    v23 = *(v0 + 11);
    v24 = *(v0 + 13);
    *(v21 + 48) = *(v0 + 120);
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    swift_storeEnumTagMultiPayload();
    v25 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
    swift_beginAccess();
    sub_100110A5C(v21, v22 + v25);
    swift_endAccess();
    sub_100110C34(v22 + v25, v21, _s9SchedulerC5StateOMa);
    v26 = sub_1000D9A88();
    v28 = v27;
    sub_10010E494(v21, _s9SchedulerC5StateOMa);
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v29 = sub_1001C5148();
    sub_100083274(v29, qword_100281898);

    v19 = sub_1001C5128();
    v30 = sub_1001C65B8();

    if (os_log_type_enabled(v19, v30))
    {
      v31 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v31 = 136446466;
      *(v31 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100200320, &v37);
      *(v31 + 12) = 2082;
      v32 = sub_1001874E8(v26, v28, &v37);

      *(v31 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v19, v30, "[Scheduler] Found existing task request for %{public}s, assuming %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

LABEL_19:
  if (*(v0 + 65))
  {
    v1 = 0;
    v3 = 0;
    v33 = 0uLL;
    v34 = 0uLL;
  }

  else
  {
    v33 = xmmword_1001F38D0;
    v34 = *(v0 + 13);
  }

  v0[33] = v3;
  v0[2] = v1;
  v0[3] = v3;
  *(v0 + 2) = v33;
  *(v0 + 3) = vextq_s8(v34, v34, 8uLL);
  *(v0 + 64) = 0;
  v35 = swift_task_alloc();
  v0[34] = v35;
  *v35 = v0;
  v35[1] = sub_10010EE10;

  return sub_1000DA5D4((v0 + 2));
}

uint64_t sub_10010EE10()
{
  v1 = *v0;
  v5 = *v0;

  sub_10010E44C(&qword_100270878, _s9SchedulerCMa, &unk_1001F30D0);

  v2 = *(v5 + 8);
  v3 = *(v1 + 240);

  return v2(v3);
}

uint64_t sub_10010EF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_100084528(&qword_1002713C0, &qword_1001F3BD8);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10010F060, 0, 0);
}

uint64_t sub_10010F060()
{
  sub_100084528(&qword_100271398, &qword_1001F3B00);
  sub_1001C6388();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_10010F12C;
  v2 = *(v0 + 128);

  return AsyncStream.Iterator.next(isolation:)(v0 + 72, 0, 0, v2);
}

uint64_t sub_10010F12C()
{

  return _swift_task_switch(sub_10010F228, 0, 0);
}

uint64_t sub_10010F228()
{
  if (*(v0 + 89))
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128), *(v0 + 72));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v9 = *(v0 + 72);
    v3 = *(v0 + 88);
    *(v0 + 160) = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:sub_1001C60A8() + 32];

    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0uLL;
      v7 = 0uLL;
    }

    else
    {
      v6 = xmmword_1001F38D0;
      v5 = 0x8000000100200320;
      v4 = 0xD00000000000002CLL;
      v7 = v9;
    }

    *(v0 + 168) = v5;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v6;
    *(v0 + 48) = vextq_s8(v7, v7, 8uLL);
    *(v0 + 64) = 0;
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    *v8 = v0;
    v8[1] = sub_10010F3BC;

    return sub_1000DA5D4(v0 + 16);
  }
}

uint64_t sub_10010F3BC()
{

  return _swift_task_switch(sub_10010F4D4, 0, 0);
}

uint64_t sub_10010F4D4()
{
  v1 = v0[20];
  [v1 endTransaction];

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_10010F12C;
  v3 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v0 + 9, 0, 0, v3);
}

uint64_t sub_10010F594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_100084528(&qword_1002713B8, &qword_1001F3BB8);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10010F664, 0, 0);
}

uint64_t sub_10010F664()
{
  sub_100084528(&qword_100271388, &qword_1001F3AF0);
  sub_1001C6388();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10010F730;
  v2 = *(v0 + 56);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v2);
}

uint64_t sub_10010F730()
{

  return _swift_task_switch(sub_10010F82C, 0, 0);
}

uint64_t sub_10010F82C()
{
  v1 = v0[2];
  v0[11] = v1;
  if (v1)
  {
    v0[12] = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:sub_1001C60A8() + 32];

    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_10010F964;

    return sub_100088CB4(v1);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10010F964()
{

  return _swift_task_switch(sub_10010FA60, 0, 0);
}

uint64_t sub_10010FA60()
{
  v1 = v0[12];
  [v1 endTransaction];

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10010F730;
  v3 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v3);
}

uint64_t sub_10010FB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_100084528(&qword_1002713B0, &qword_1001F3BA0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10010FBF8, 0, 0);
}

uint64_t sub_10010FBF8()
{
  sub_100084528(&qword_100271378, &qword_1001F3AE0);
  sub_1001C6388();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10010FCC4;
  v2 = *(v0 + 56);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v2);
}

uint64_t sub_10010FCC4()
{

  return _swift_task_switch(sub_10010FDC0, 0, 0);
}

uint64_t sub_10010FDC0()
{
  v1 = v0[2];
  v0[11] = v1;
  if (v1)
  {
    v0[12] = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:sub_1001C60A8() + 32];

    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_10010FEF8;

    return sub_10012D168(v1);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10010FEF8()
{

  return _swift_task_switch(sub_10010FFF4, 0, 0);
}

uint64_t sub_10010FFF4()
{
  v1 = v0[12];
  [v1 endTransaction];

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_10010FCC4;
  v3 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v3);
}

void sub_1001100BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

unint64_t sub_100110100()
{
  result = qword_100271318;
  if (!qword_100271318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271318);
  }

  return result;
}

void sub_100110154(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

id sub_100110194(id result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return a2;
  }

  return result;
}

uint64_t sub_1001101D4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100110214()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_100109954(v2, v3);
}

uint64_t sub_1001102C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10009AAEC;

  return sub_100105230(v0);
}

uint64_t sub_100110350(uint64_t a1)
{
  v2 = *(sub_100084528(&qword_100271368, &qword_1001F3AD0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_100084528(&qword_1002713A8, &qword_1001F3B10) - 8);
  v14 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = (v14 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100084528(&qword_100271398, &qword_1001F3B00);
  sub_100084528(&qword_100271388, &qword_1001F3AF0);
  sub_100084528(&qword_100271378, &qword_1001F3AE0);
  v12 = *(v1 + 24);
  v13 = *(v1 + 16);
  v7 = *(v1 + v6 + 8);
  v11 = *(v1 + v6);
  v8 = *(v1 + v6 + 16);
  v9 = swift_task_alloc();
  *(v15 + 16) = v9;
  *v9 = v15;
  v9[1] = sub_10009B25C;

  return sub_10010573C(a1, v13, v12, v1 + v3, v1 + v14, v11, v7, v8);
}

uint64_t sub_100110678(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009B25C;

  return sub_10010E164(a1, v4);
}

uint64_t sub_100110730(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009B25C;

  return sub_100105CCC(a1, v5, v4);
}

uint64_t sub_1001107DC(uint64_t a1)
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
  v10[1] = sub_10009AAEC;

  return sub_100106A98(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001108B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009B25C;

  return sub_1001071F0(a1, v5, v4);
}

uint64_t sub_100110960(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009B25C;

  return sub_100107828(a1, v5, v4);
}

uint64_t sub_100110A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100110A5C(uint64_t a1, uint64_t a2)
{
  v4 = _s9SchedulerC5StateOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100110AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100110B28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009B25C;

  return sub_100106268(a1, v4);
}

uint64_t sub_100110BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100110C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100110CC4(uint64_t a1)
{
  _s15PersistentStateOMa(319);
  if (v1 <= 0x3F)
  {
    sub_100110E04(319, &qword_100271450, _s6UpdateVMa, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100110E04(319, &unk_100271458, _s21PriceDropNotificationVMa, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100110E68(319, &qword_10026F9F0, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100110E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100110E68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100110EB8()
{
  result = qword_1002714A0;
  if (!qword_1002714A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714A0);
  }

  return result;
}

unint64_t sub_100110F0C()
{
  result = qword_1002714B8;
  if (!qword_1002714B8)
  {
    sub_1000885AC(&qword_10026F268, &qword_1001F0C80);
    sub_10010E44C(&qword_1002714C0, _s21PriceDropNotificationVMa, &unk_1001F2CDC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714B8);
  }

  return result;
}

unint64_t sub_100110FC0()
{
  result = qword_1002714C8;
  if (!qword_1002714C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714C8);
  }

  return result;
}

unint64_t sub_100111028()
{
  result = qword_1002714D0;
  if (!qword_1002714D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714D0);
  }

  return result;
}

unint64_t sub_100111080()
{
  result = qword_1002714D8;
  if (!qword_1002714D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714D8);
  }

  return result;
}

unint64_t sub_1001110D8()
{
  result = qword_1002714E0;
  if (!qword_1002714E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714E0);
  }

  return result;
}

uint64_t sub_10011112C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55746E6572727563 && a2 == 0xED00006574616470 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100201F10 == a2 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694C64726163 && a2 == 0xE800000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEF6769666E6F4372)
  {

    return 4;
  }

  else
  {
    v6 = sub_1001C6D08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void *ReadingGoalsController.__allocating_init(dataSource:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10009D148(a1, v3);
  v6 = sub_100112868(v5, v1, v3, v4);
  sub_10008E7BC(a1);
  return v6;
}

Swift::Void __swiftcall ReadingGoalsController.changeBooksFinishedGoal(to:)(Swift::Int to)
{
  swift_beginAccess();
  sub_1000B3A90(v1 + 16, &aBlock);
  v3 = v14;
  v4 = v15;
  sub_10009BB74(&aBlock, v14);
  (*(v4 + 5))(to, v3, v4);
  sub_10008E7BC(&aBlock);
  v5 = *(v1 + 56);
  sub_1001C6688();
  v17[1] = v12;
  v17[0] = to;
  v10[2] = v17;
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v7[2] = sub_100112D80;
  v7[3] = v10;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000BB828;
  *(v8 + 24) = v7;
  v15 = sub_1000B2E48;
  v16 = v8;
  aBlock = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000906F4;
  v14 = &unk_100248600;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ReadingGoalsController.changeDailyGoal(to:)(Swift::Double to)
{
  swift_beginAccess();
  sub_1000B3A90(v1 + 16, aBlock);
  v3 = v12;
  v4 = v13;
  sub_10009BB74(aBlock, v12);
  (*(v4 + 6))(v3, v4, to);
  sub_10008E7BC(aBlock);
  v5 = *(v1 + 56);
  sub_1001C6688();
  v15[0] = aBlock[0];
  *&v15[1] = to;
  v10[2] = v15;
  v6 = *(v5 + 16);
  v7 = swift_allocObject();
  v7[2] = sub_10011296C;
  v7[3] = v10;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000BC09C;
  *(v8 + 24) = v7;
  v13 = sub_1000B3DA0;
  v14 = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  v12 = &unk_100248678;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ReadingGoalsController.clearData()()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000B3A90((v0 + 2), aBlock);
  v2 = v22;
  v3 = v23;
  sub_10009BB74(aBlock, v22);
  (*(v3 + 7))(v2, v3);
  sub_10008E7BC(aBlock);
  v4 = v0[5];
  v5 = v0[6];
  v6 = sub_10009BB74(v1 + 2, v1[5]);
  v7 = *(v4 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v9);
  v10 = (*(v5 + 8))(v4, v5);
  v12 = v11;
  (*(v7 + 8))(v9, v4);
  v13 = v1[7];
  v19 = v10;
  v20 = v12;
  v14 = *(v13 + 16);
  v15 = swift_allocObject();
  v15[2] = sub_10011298C;
  v15[3] = v18;
  v15[4] = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000BC09C;
  *(v16 + 24) = v15;
  v23 = sub_1000B3DA0;
  v24 = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  v22 = &unk_1002486F0;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }
}

bookdatastored::ReadingGoals::Goal_optional __swiftcall ReadingGoals.Goal.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = bookdatastored_ReadingGoals_Goal_dailyReading;
  }

  else
  {
    v1.value = bookdatastored_ReadingGoals_Goal_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_100111B68@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL static ReadingGoals.StateChange.Source.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 == 3)
  {
    return 0;
  }

  return a1 == a2;
}

Swift::Int ReadingHistoryBackupManager.BackupError.hashValue.getter(unsigned __int8 a1)
{
  sub_1001C6DF8();
  sub_1001C6E08(a1);
  return sub_1001C6E28();
}

uint64_t static ReadingGoals.StateChange.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  result = 0;
  if (a1 == a3 && a5 == a6)
  {
    if (a2 == 3)
    {
      if (a4 == 3)
      {
        return 1;
      }
    }

    else if (a4 != 3 && a2 == a4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100111CDC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 3)
  {
    if (v5 == 3)
    {
      return 1;
    }
  }

  else if (v5 != 3 && v4 == v5)
  {
    return 1;
  }

  return 0;
}

uint64_t ReadingGoalsController.observable.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  a1[3] = sub_100084528(&qword_10026FAF0, &unk_1001F1950);
  a1[4] = &protocol witness table for <> ObservableContainer<A>;
  *a1 = v3;
}

void *ReadingGoalsController.init(dataSource:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10009D148(a1, v3);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_100112374(v7, v1, v3, v4);
  sub_10008E7BC(a1);
  return v9;
}

void *sub_100111E7C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      v19 = v3;
      swift_once();
      v3 = v19;
    }

    sub_1001C5118(v3, &_mh_execute_header, qword_1002711E8, "ReadingGoalsController - received onRemoteChange", 48, 2, _swiftEmptyArrayStorage);
    swift_beginAccess();
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_10009BB74(v2 + 2, v4);
    v7 = *(v4 - 8);
    __chkstk_darwin(v6);
    v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = (*(v5 + 8))(v4, v5);
    v12 = v11;
    v13 = (*(v7 + 8))(v9, v4);
    v14 = v2[7];
    __chkstk_darwin(v13);
    v20[2] = v10;
    v20[3] = v12;
    v15 = *(v14 + 16);
    v16 = swift_allocObject();
    v16[2] = sub_100112D84;
    v16[3] = v20;
    v16[4] = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1000BC09C;
    *(v17 + 24) = v16;
    aBlock[4] = sub_1000B3DA0;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_100248B20;
    v18 = _Block_copy(aBlock);

    dispatch_sync(v15, v18);
    _Block_release(v18);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001121B4(uint64_t result, uint64_t a2, double a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = 3;
  return result;
}

uint64_t ReadingGoalsController.deinit()
{
  sub_10008E7BC((v0 + 16));

  return v0;
}

uint64_t ReadingGoalsController.__deallocating_deinit()
{
  sub_10008E7BC((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100112298@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 56);
  a1[3] = sub_100084528(&qword_10026FAF0, &unk_1001F1950);
  a1[4] = &protocol witness table for <> ObservableContainer<A>;
  *a1 = v3;
}

uint64_t sub_1001122F8(uint64_t result, uint64_t a2, double a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = 0;
  return result;
}

void *sub_100112374(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v47[3] = a3;
  v47[4] = a4;
  v8 = sub_1000B3C78(v47);
  (*(*(a3 - 8) + 32))(v8, a1, a3);
  sub_1000B3A90(v47, (a2 + 2));
  v39 = *(a4 + 8);
  v40 = v8;
  v9 = v39(a3, a4);
  v11 = v10;
  v12 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v35 = v12;
    swift_once();
    v12 = v35;
  }

  v38 = qword_1002711E8;
  sub_1001C5118(v12, &_mh_execute_header, qword_1002711E8, "ReadingGoalsController - loaded state", 37, 2, _swiftEmptyArrayStorage);
  sub_100084528(&qword_10026FAF0, &unk_1001F1950);
  swift_allocObject();
  a2[7] = sub_100098A20(v9, 2, v11);
  v13 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v15 = a2[5];
  v14 = a2[6];
  sub_10009D148((a2 + 2), v15);
  v16 = *(v14 + 24);

  v16(sub_1000BBFA8, v13, v15, v14);
  swift_endAccess();

  sub_1001C6688();
  if (aBlock == v39(a3, a4) && *&v42 == v17 || (v18 = sub_1001C65B8(), sub_1001C5118(v18, &_mh_execute_header, v38, "ReadingGoalsController - state change before onRemoteChange is registered", 73, 2, _swiftEmptyArrayStorage), v19 = a2[5], v20 = a2[6], v21 = sub_10009BB74(a2 + 2, v19), v22 = *(v19 - 8), __chkstk_darwin(v21), v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), (*(v22 + 16))(v24), v25 = (*(v20 + 8))(v19, v20), v27 = v26, v28 = (*(v22 + 8))(v24, v19), v29 = a2[7], __chkstk_darwin(v28), v36[2] = v25, v36[3] = v27, v30 = *(v29 + 16), v31 = swift_allocObject(), v31[2] = sub_100112D50, v31[3] = v36, v31[4] = v29, v32 = swift_allocObject(), *(v32 + 16) = sub_1000BC09C, *(v32 + 24) = v31, v45 = sub_1000B3DA0, v46 = v32, aBlock = _NSConcreteStackBlock, v42 = 1107296256, v43 = sub_1000906F4, v44 = &unk_100248AA8, v33 = _Block_copy(&aBlock), , , , dispatch_sync(v30, v33), _Block_release(v33), LOBYTE(v29) = swift_isEscapingClosureAtFileLocation(), , result = , (v29 & 1) == 0))
  {
    sub_10008E7BC(v47);
    return a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100112868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_100112374(v9, v10, a3, a4);
}

uint64_t sub_100112954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10011296C(uint64_t a1)
{
  v2 = *(v1 + 16);
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  *(a1 + 16) = 1;
  return result;
}

double sub_10011298C(uint64_t a1)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

unint64_t sub_1001129A8()
{
  result = qword_1002714E8;
  if (!qword_1002714E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714E8);
  }

  return result;
}

unint64_t sub_100112A00()
{
  result = qword_1002714F0;
  if (!qword_1002714F0)
  {
    sub_1000885AC(&qword_1002714F8, &qword_1001F3E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714F0);
  }

  return result;
}

unint64_t sub_100112A68()
{
  result = qword_100271500;
  if (!qword_100271500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271500);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.StateChange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.StateChange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.StateChange.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.StateChange.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100112CE8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100112CFC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

double sub_100112D50(uint64_t a1)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = result;
  *(a1 + 16) = 3;
  return result;
}

uint64_t ModelState.LoadedState.description.getter(char a1)
{
  if (a1)
  {
    return 0x7964616572;
  }

  else
  {
    return 0x676E6964616F6CLL;
  }
}

uint64_t ModelState.Source.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = (*(v2 + 48))(v7, 2, v1);
  if (v9)
  {
    if (v9 == 1)
    {
      return 0x6C61636F6CLL;
    }

    else
    {
      return 0x6465726F7473;
    }
  }

  else
  {
    (*(v2 + 32))(v5, v7, v1);
    v12[0] = 0x2865746F6D6572;
    v12[1] = 0xE700000000000000;
    v13._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    sub_1001C6138(v14);
    v11 = v12[0];
    (*(v2 + 8))(v5, v1);
    return v11;
  }
}

uint64_t ModelState.updating(model:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 24))(v3, a1, v6);
  v7 = *(a3 + 48);
  v8 = type metadata accessor for ModelState.Source(0, v6, *(a3 + 24), *(a3 + 32));
  v9 = *(*(v8 - 8) + 24);

  return v9(v3 + v7, a2, v8);
}

uint64_t ModelState.init(model:loaded:source:revisionInfo:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for ModelState(0, a5, a6, a7);
  v17 = v16[13];
  v18 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v18 - 8) + 56))(a8 + v17, 1, 1, v18);
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  *(a8 + v16[11]) = a2 & 1;
  v19 = v16[12];
  v20 = type metadata accessor for ModelState.Source(0, a5, a6, a7);
  (*(*(v20 - 8) + 32))(a8 + v19, a3, v20);

  return sub_10009AC98(a4, a8 + v17);
}

uint64_t ModelState.updating(model:source:revisionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ModelState.updating(model:source:)(a1, a2, a4);
  v7 = v4 + *(a4 + 52);

  return sub_10009AFA8(a3, v7);
}

uint64_t static ModelState.Source.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = __chkstk_darwin(a1);
  v37 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v35[1] = v9;
  v36 = v35 - v10;
  v13 = type metadata accessor for ModelState.Source(0, v11, v9, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v38 = v35 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  v17 = __chkstk_darwin(TupleTypeMetadata2);
  v19 = v35 - v18;
  v39 = v14;
  v40 = v17;
  v20 = *(v17 + 48);
  v21 = *(v14 + 16);
  v21(v35 - v18, a1, v13);
  v21(&v19[v20], a2, v13);
  v22 = *(v6 + 48);
  v23 = a3;
  v24 = v22(v19, 2, a3);
  if (v24)
  {
    if (v24 == 1)
    {
      if (v22(&v19[v20], 2, a3) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v22(&v19[v20], 2, a3) == 2)
    {
LABEL_8:
      v26 = 1;
      v27 = v39;
      goto LABEL_10;
    }

LABEL_9:
    v26 = 0;
    v13 = v40;
    v27 = v41;
    goto LABEL_10;
  }

  v35[0] = v6;
  v25 = v38;
  v21(v38, v19, v13);
  if (v22(&v19[v20], 2, a3))
  {
    (*(v35[0] + 8))(v25, a3);
    goto LABEL_9;
  }

  v29 = v35[0];
  v30 = *(v35[0] + 32);
  v31 = v36;
  v30(v36, v25, v23);
  v32 = &v19[v20];
  v33 = v37;
  v30(v37, v32, v23);
  if (sub_1001C5C38())
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1001C5C38() ^ 1;
  }

  v34 = *(v29 + 8);
  v34(v33, v23);
  v34(v31, v23);
  v27 = v39;
LABEL_10:
  (*(v27 + 8))(v19, v13);
  return v26 & 1;
}

uint64_t ModelState.lastSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for ModelState.Source(0, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ModelState.lastSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for ModelState.Source(0, *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100113858(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static ModelState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CRDTModelRevisionInfo(0);
  v27 = *(v10 - 8);
  __chkstk_darwin(v10);
  v26 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v12 - 8);
  v14 = (&v26 - v13);
  v15 = sub_100084528(&qword_10026FAE0, &unk_1001F1930);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v18 = type metadata accessor for ModelState(0, a3, a4, a5);
  if (*(a1 + *(v18 + 44)) != *(a2 + *(v18 + 44)))
  {
    return 0;
  }

  v19 = v18;
  if (static ModelState.Source.== infix(_:_:)(a1 + *(v18 + 48), a2 + *(v18 + 48), a3) & 1) == 0 || (sub_1001C5C38() & 1) != 0 || (sub_1001C5C38())
  {
    return 0;
  }

  v20 = *(v19 + 52);
  v21 = *(v15 + 48);
  sub_100113858(a1 + v20, v17);
  sub_100113858(a2 + v20, &v17[v21]);
  v22 = *(v27 + 48);
  if (v22(v17, 1, v10) != 1)
  {
    sub_100113858(v17, v14);
    if (v22(&v17[v21], 1, v10) != 1)
    {
      v25 = v26;
      sub_100113C14(&v17[v21], v26);
      v23 = _s14bookdatastored21CRDTModelRevisionInfoV23__derived_struct_equalsySbAC_ACtFZ_0(v14, v25);
      sub_1000B6930(v25);
      sub_1000B6930(v14);
      sub_10008875C(v17, &unk_10026F410, &unk_1001F0E40);
      return v23;
    }

    sub_1000B6930(v14);
    goto LABEL_10;
  }

  if (v22(&v17[v21], 1, v10) != 1)
  {
LABEL_10:
    sub_10008875C(v17, &qword_10026FAE0, &unk_1001F1930);
    return 0;
  }

  sub_10008875C(v17, &unk_10026F410, &unk_1001F0E40);
  return 1;
}

uint64_t sub_100113C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ModelState.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1001C69C8(45);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = sub_1001C6CC8();
  v11 = v10;

  v22 = v9;
  v23 = v11;
  v24._countAndFlagsBits = 0x646564616F6C202CLL;
  v24._object = 0xE90000000000003DLL;
  sub_1001C6138(v24);
  v12 = *(a1 + 24);
  if (*(v2 + *(a1 + 44)))
  {
    v13._countAndFlagsBits = 0x7964616572;
  }

  else
  {
    v13._countAndFlagsBits = 0x676E6964616F6CLL;
  }

  if (*(v2 + *(a1 + 44)))
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  v13._object = v14;
  sub_1001C6138(v13);

  v25._countAndFlagsBits = 0x6F537473616C202CLL;
  v25._object = 0xED00003D65637275;
  sub_1001C6138(v25);
  v15 = type metadata accessor for ModelState.Source(0, v7, v12, v8);
  v26._countAndFlagsBits = ModelState.Source.description.getter(v15);
  sub_1001C6138(v26);

  v27._countAndFlagsBits = 0x697369766572202CLL;
  v27._object = 0xEF3D6F666E496E6FLL;
  sub_1001C6138(v27);
  sub_100113858(v2 + *(a1 + 52), v6);
  v16 = type metadata accessor for CRDTModelRevisionInfo(0);
  if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
  {
    sub_10008875C(v6, &unk_10026F410, &unk_1001F0E40);
    v17 = 0xE300000000000000;
    v18._countAndFlagsBits = 7104878;
  }

  else
  {
    v19 = CRDTModelRevisionInfo.description.getter();
    v17 = v20;
    sub_1000B6930(v6);
    v18._countAndFlagsBits = v19;
  }

  v18._object = v17;
  sub_1001C6138(v18);

  return v22;
}

void sub_100113F18(void *a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    v5 = a1[4];
    v6 = v2;
    type metadata accessor for ModelState.LoadedState(319, v2, v4, v5);
    if (v7 <= 0x3F)
    {
      type metadata accessor for ModelState.Source(319, v6, v4, v5);
      if (v8 <= 0x3F)
      {
        sub_1001149B4(319);
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100113FF8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 - 2;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(sub_1001C4CA8() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 - 1;
  if (v9 > v14)
  {
    v14 = v9;
  }

  v15 = *(v6 + 64);
  v16 = v15;
  if (v7 <= 1)
  {
    if (v15 <= 3)
    {
      v18 = (~(-1 << (8 * v15)) - v7 + 2) >> (8 * v15);
      if (v18 > 0xFFFE)
      {
        v17 = 4;
      }

      else
      {
        v19 = 1;
        if (v18 >= 0xFF)
        {
          v19 = 2;
        }

        if (v18)
        {
          v17 = v19;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }

    v16 = v17 + v15;
  }

  if (v11)
  {
    v20 = -2;
  }

  else
  {
    v20 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v6 + 80);
  v22 = *(v10 + 80);
  v23 = v22 | 7;
  if (a2 > v14)
  {
    v24 = v20 + *(v10 + 64) - ((-33 - v22) | v22) - ((((-2 - v15 - v21) | v21) - (v16 + v23)) | v23);
    v25 = 8 * v24;
    if (v24 > 3)
    {
      goto LABEL_31;
    }

    v27 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v27 <= 0xFF)
      {
        if (v27 < 2)
        {
          goto LABEL_51;
        }

LABEL_31:
        v26 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          goto LABEL_51;
        }

LABEL_38:
        v28 = (v26 - 1) << v25;
        if (v24 > 3)
        {
          v28 = 0;
        }

        if (v24)
        {
          if (v24 <= 3)
          {
            v29 = v24;
          }

          else
          {
            v29 = 4;
          }

          if (v29 > 2)
          {
            if (v29 == 3)
            {
              v30 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v30 = *a1;
            }
          }

          else if (v29 == 1)
          {
            v30 = *a1;
          }

          else
          {
            v30 = *a1;
          }
        }

        else
        {
          v30 = 0;
        }

        return v14 + (v30 | v28) + 1;
      }

      v26 = *(a1 + v24);
      if (*(a1 + v24))
      {
        goto LABEL_38;
      }
    }
  }

LABEL_51:
  if (v7 == v14)
  {
    v31 = *(v6 + 48);

    return v31(a1, v7, v5);
  }

  v33 = (a1 + v15 + v21 + 1) & ~v21;
  if (v8 == v14)
  {
    if (v7)
    {
      v34 = (*(v6 + 48))(v33, v7, v5);
      v35 = v34 >= 2;
      result = v34 - 2;
      if (result != 0 && v35)
      {
        return result;
      }
    }

    return 0;
  }

  if (v7 <= 1)
  {
    if (v15 <= 3)
    {
      v37 = (~(-1 << (8 * v15)) - v7 + 2) >> (8 * v15);
      v38 = 1;
      if (v37 >= 0xFF)
      {
        v38 = 2;
      }

      if (!v37)
      {
        v38 = 0;
      }

      if (v37 <= 0xFFFE)
      {
        v36 = v38;
      }

      else
      {
        v36 = 4;
      }
    }

    else
    {
      v36 = 1;
    }

    v15 += v36;
  }

  if (v12 > 0x7FFFFFFE)
  {
    v40 = (*(v10 + 48))((v22 + ((((v23 + v33 + v15) & ~v23) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22);
    LODWORD(v39) = v40 - 1;
  }

  else
  {
    v39 = *(((v23 + v33 + v15) & ~v23) + 8);
    if (v39 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    v40 = v39 + 1;
  }

  if (v40 < 2)
  {
    LODWORD(v39) = 0;
  }

  if (v39 >= 2)
  {
    return (v39 - 1);
  }

  else
  {
    return 0;
  }
}

void sub_1001143E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v52 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 - 2;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(sub_1001C4CA8() - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v11 <= v16 - 1)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = v11;
  }

  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  if (v9 <= 1)
  {
    if (v14 <= 3)
    {
      v21 = (~(-1 << (8 * v14)) - v9 + 2) >> (8 * v14);
      v22 = 1;
      if (v21 >= 0xFF)
      {
        v22 = 2;
      }

      if (!v21)
      {
        v22 = 0;
      }

      if (v21 <= 0xFFFE)
      {
        v20 = v22;
      }

      else
      {
        v20 = 4;
      }
    }

    else
    {
      v20 = 1;
    }

    v19 = v20 + v14;
  }

  v23 = *(v12 + 80);
  v24 = (v19 + (v23 | 7) + ((v14 + v18 + 1) & ~v18)) & ~(v23 | 7);
  v25 = *(v12 + 64);
  if (!v13)
  {
    ++v25;
  }

  v26 = ((v23 + 32) & ~v23) + v25;
  v27 = v24 + v26;
  if (a3 <= v17)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 - v17 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    if (v27 >= 4)
    {
      bzero(a1, v27);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_36;
      }

      goto LABEL_81;
    }

    v30 = (v29 >> (8 * v27)) + 1;
    if (v27)
    {
      v33 = v29 & ~(-1 << (8 * v27));
      bzero(a1, v27);
      if (v27 != 3)
      {
        if (v27 == 2)
        {
          *a1 = v33;
          if (v28 > 1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          *a1 = v29;
          if (v28 > 1)
          {
LABEL_36:
            if (v28 == 2)
            {
              *&a1[v27] = v30;
            }

            else
            {
              *&a1[v27] = v30;
            }

            return;
          }
        }

LABEL_81:
        if (v28)
        {
          a1[v27] = v30;
        }

        return;
      }

      *a1 = v33;
      a1[2] = BYTE2(v33);
    }

    if (v28 > 1)
    {
      goto LABEL_36;
    }

    goto LABEL_81;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    }

    *&a1[v27] = 0;
  }

  else if (v28)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_57;
  }

  if (!a2)
  {
    return;
  }

LABEL_57:
  if (v9 == v17)
  {
    v34 = *(v52 + 56);
    v35 = a1;
    v36 = a2;
LABEL_59:

    v34(v35, v36, v9, v7);
    return;
  }

  v37 = &a1[v14 + 1 + v18] & ~v18;
  if (v10 == v17)
  {
    if (a2 + 2 <= v9)
    {
      if (a2 == -2)
      {
        return;
      }

      v34 = *(v52 + 56);
      v35 = v37;
      v36 = (a2 + 2);
      goto LABEL_59;
    }

    if (v14 <= 3)
    {
      v38 = ~(-1 << (8 * v14));
    }

    else
    {
      v38 = -1;
    }

    if (!v14)
    {
      return;
    }

    v39 = v38 & (a2 - v9 + 1);
    if (v14 <= 3)
    {
      v40 = v14;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
LABEL_115:
    bzero(v41, v14);
    if (v40 > 2)
    {
      if (v40 == 3)
      {
        *v37 = v39;
        *(v37 + 2) = BYTE2(v39);
      }

      else
      {
        *v37 = v39;
      }
    }

    else if (v40 == 1)
    {
      *v37 = v39;
    }

    else
    {
      *v37 = v39;
    }

    return;
  }

  if (v9 <= 1)
  {
    if (v14 <= 3)
    {
      v43 = (~(-1 << (8 * v14)) - v9 + 2) >> (8 * v14);
      v44 = 1;
      if (v43 >= 0xFF)
      {
        v44 = 2;
      }

      if (!v43)
      {
        v44 = 0;
      }

      if (v43 <= 0xFFFE)
      {
        v42 = v44;
      }

      else
      {
        v42 = 4;
      }
    }

    else
    {
      v42 = 1;
    }

    v14 += v42;
  }

  v37 = ((v23 | 7) + v37 + v14) & ~(v23 | 7);
  if (v16 - 1 < a2)
  {
    if (v26 <= 3)
    {
      v45 = ~(-1 << (8 * v26));
    }

    else
    {
      v45 = -1;
    }

    if (!v26)
    {
      return;
    }

    v39 = v45 & (a2 - v16);
LABEL_111:
    if (v26 <= 3)
    {
      v40 = v26;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
    v14 = v26;
    goto LABEL_115;
  }

  v46 = a2 >= v16;
  v47 = a2 - v16;
  if (v46)
  {
    if (v26 <= 3)
    {
      v48 = ~(-1 << (8 * v26));
    }

    else
    {
      v48 = -1;
    }

    if (!v26)
    {
      return;
    }

    v39 = v48 & v47;
    goto LABEL_111;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFD)
    {
      *v37 = 0;
      *(v37 + 8) = 0;
      *v37 = a2 - 2147483646;
    }

    else
    {
      *(v37 + 8) = (a2 + 1);
    }

    return;
  }

  v37 = (v23 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23;
  v49 = a2 - v15;
  if (a2 >= v15)
  {
    if (v25 <= 3)
    {
      v51 = ~(-1 << (8 * v25));
    }

    else
    {
      v51 = -1;
    }

    if (!v25)
    {
      return;
    }

    v39 = v51 & v49;
    if (v25 <= 3)
    {
      v40 = v25;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
    v14 = v25;
    goto LABEL_115;
  }

  v50 = *(v12 + 56);

  v50(v37, (a2 + 2));
}

void sub_1001149B4(uint64_t a1)
{
  if (!qword_100271630[0])
  {
    type metadata accessor for CRDTModelRevisionInfo(255);
    v1 = sub_1001C67F8();
    if (!v2)
    {
      atomic_store(v1, qword_100271630);
    }
  }
}

uint64_t sub_100114A0C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100114A68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 > v6)
  {
    v12 = 8 * v7;
    if (v7 <= 3)
    {
      v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v7);
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_35:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_36;
      }
    }

    v13 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_35;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v7 > 3)
    {
      v15 = 0;
    }

    if (v7)
    {
      if (v7 <= 3)
      {
        v16 = v7;
      }

      else
      {
        v16 = 4;
      }

      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v17 = *a1;
        }
      }

      else if (v16 == 1)
      {
        v17 = *a1;
      }

      else
      {
        v17 = *a1;
      }
    }

    else
    {
      v17 = 0;
    }

    return v6 + (v17 | v15) + 1;
  }

LABEL_36:
  if (!v5)
  {
    return 0;
  }

  v18 = (*(v4 + 48))(a1, v5);
  v19 = v18 >= 2;
  result = v18 - 2;
  if (result == 0 || !v19)
  {
    return 0;
  }

  return result;
}

void sub_100114C38(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 2;
  v10 = v8;
  if (v7 <= 1)
  {
    v9 = 0;
    if (v8 <= 3)
    {
      v12 = (~(-1 << (8 * v8)) - v7 + 2) >> (8 * v8);
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  v14 = a3 >= v9;
  v15 = a3 - v9;
  if (v15 != 0 && v14)
  {
    v16 = 1;
    if (v10 <= 3)
    {
      v17 = ((v15 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      v18 = HIWORD(v17);
      if (v17 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v16 = 4;
      }

      else
      {
        v16 = v20;
      }
    }

    if (v9 >= a2)
    {
LABEL_29:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *&a1[v10] = 0;
      }

      else if (v16)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (a2 + 2 <= v7)
        {
          v27 = *(v6 + 56);

          v27();
        }

        else
        {
          if (v8 <= 3)
          {
            v24 = ~(-1 << (8 * v8));
          }

          else
          {
            v24 = -1;
          }

          if (v8)
          {
            v25 = v24 & (a2 - v7 + 1);
            if (v8 <= 3)
            {
              v26 = v8;
            }

            else
            {
              v26 = 4;
            }

            bzero(a1, v8);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *a1 = v25;
                a1[2] = BYTE2(v25);
              }

              else
              {
                *a1 = v25;
              }
            }

            else if (v26 == 1)
            {
              *a1 = v25;
            }

            else
            {
              *a1 = v25;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v16 = 0;
    if (v9 >= a2)
    {
      goto LABEL_29;
    }
  }

  v21 = ~v9 + a2;
  if (v10 >= 4)
  {
    bzero(a1, v10);
    *a1 = v21;
    v22 = 1;
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v10)) + 1;
  if (!v10)
  {
LABEL_58:
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v10));
  bzero(a1, v10);
  if (v10 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v10 == 2)
  {
    *a1 = v23;
    if (v16 > 1)
    {
LABEL_62:
      if (v16 == 2)
      {
        *&a1[v10] = v22;
      }

      else
      {
        *&a1[v10] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v16 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v16)
  {
    a1[v10] = v22;
  }
}

uint64_t sub_100114F48(void *a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100271760, &qword_1001F4288);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10009BB74(a1, a1[3]);
  sub_1001154BC();
  sub_1001C6E78();
  v9[1] = a2;
  sub_100084528(&qword_100271748, &qword_1001F4280);
  sub_100115510(&qword_100271768, &qword_100271770, &unk_1001F1B0C, &protocol conformance descriptor for <A> [A]);
  sub_1001C6CA8();
  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_1001150DC()
{
  sub_1001C6DF8();
  sub_1001C6E08(0);
  return sub_1001C6E28();
}

Swift::Int sub_100115148(uint64_t a1)
{
  sub_1001C6DF8();
  sub_1001C6E08(0);
  return sub_1001C6E28();
}

uint64_t sub_1001151A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D65744964726163 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1001C6D08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100115234(uint64_t a1)
{
  v2 = sub_1001154BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100115270(uint64_t a1)
{
  v2 = sub_1001154BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001152B8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100115300(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_100115300(void *a1)
{
  v3 = sub_100084528(&qword_100271738, &qword_1001F4278);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10009BB74(a1, a1[3]);
  sub_1001154BC();
  sub_1001C6E58();
  if (v1)
  {
    sub_10008E7BC(a1);
  }

  else
  {
    sub_100084528(&qword_100271748, &qword_1001F4280);
    sub_100115510(&qword_100271750, &qword_100271758, &unk_1001F1B34, &protocol conformance descriptor for <A> [A]);
    sub_1001C6C28();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10008E7BC(a1);
  }

  return v7;
}

unint64_t sub_1001154BC()
{
  result = qword_100271740;
  if (!qword_100271740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271740);
  }

  return result;
}

uint64_t sub_100115510(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(&qword_100271748, &qword_1001F4280);
    sub_100115598(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100115598(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s8CardItemVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s8CardListV10CodingKeysOwet(unsigned int *a1, int a2)
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

_WORD *_s8CardListV10CodingKeysOwst(_WORD *result, int a2, int a3)
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

unint64_t sub_1001156C0()
{
  result = qword_100271778;
  if (!qword_100271778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271778);
  }

  return result;
}

unint64_t sub_100115718()
{
  result = qword_100271780;
  if (!qword_100271780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271780);
  }

  return result;
}

unint64_t sub_100115770()
{
  result = qword_100271788;
  if (!qword_100271788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271788);
  }

  return result;
}

id CloudSyncDiagnosticService.__allocating_init(cloudKitController:entityServiceProviders:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1001C5138();
  *&v5[OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController] = a1;
  *&v5[OBJC_IVAR___BDSCloudSyncDiagnosticService_entityServiceProviders] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id CloudSyncDiagnosticService.init(cloudKitController:entityServiceProviders:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1001C5138();
  *&v2[OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController] = a1;
  *&v2[OBJC_IVAR___BDSCloudSyncDiagnosticService_entityServiceProviders] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100115A30()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController) privateCloudDatabaseController];
  [v1 detach];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100115C38(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100115CB0, 0, 0);
}

uint64_t sub_100115CB0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [*&v2[OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController] privateCloudDatabaseController];
  [v3 detach];

  v1[2](v1, 0);
  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100115D88()
{
  v1 = sub_100115DF0(0);
  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_100115DF0(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Reading diagnosticInfo", v5, 2u);
  }

  v6 = *(v2 + OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController);
  v7 = [v6 enableCloudSync];
  v8 = [v6 currentStatus];
  v9 = [v6 container];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    sub_1001C6018();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 gettingAccountInfo];
  v15 = [v6 privateCloudDatabaseController];
  v16 = [v15 diagnosticDatabaseInfo];
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v17 = static BDSSyncEngine.shared;
  v18 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v19 = *(v17 + v18);
  if (v19)
  {
    v20 = [v19 establishedSalt];
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(BDSCloudSyncDiagnosticSyncEngineInfo) initWithEstablishedSalt:v20];
  sub_100116374(*(v2 + OBJC_IVAR___BDSCloudSyncDiagnosticService_entityServiceProviders), v27 & 1);
  if (v13)
  {
    v22 = sub_1001C5FE8();
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_allocWithZone(BDSCloudSyncDiagnosticInfo);
  sub_100088714(0, &qword_1002718F0, off_10023DD20);
  isa = sub_1001C6288().super.isa;

  v25 = [v23 initWithEnabledSync:v7 accountStatus:v8 container:v22 gettingAccountInfo:v14 privateDatabaseInfo:v16 privateDatabaseSyncEngineInfo:v21 entityInfos:isa];

  return v25;
}

uint64_t sub_100116264(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1001162DC, 0, 0);
}

uint64_t sub_1001162DC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_100115DF0(0);

  (v1)[2](v1, v3, 0);
  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

void *sub_100116374(unint64_t isUniquelyReferenced_nonNull_bridgeObject, char a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = _swiftEmptyArrayStorage;
    v28 = v2;
    while (v32)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_1001C69F8();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_40;
      }

LABEL_9:
      v7 = [v5 diagnosticEntityInfos:{a2 & 1, v27}];
      sub_100088714(0, &qword_1002718F0, off_10023DD20);
      v8 = sub_1001C6298();
      swift_unknownObjectRelease();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1001C6B38();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v4 >> 62;
      if (v4 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1001C6B38();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = v10;
      v6 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (v6)
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_1001C6B38();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

      v13 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = v4;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1001C6A08();
      v34 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        v17 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1001C6B38();
        v13 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v15 >> 1) - v14) < v36)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v14 + 32;
          v29 = v13;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_10011A3A0();
            for (i = 0; i != v16; ++i)
            {
              sub_100084528(&qword_1002718F8, &qword_1001F4570);
              v20 = sub_10017C3BC(v35, i, v8);
              v22 = *v21;
              (v20)(v35, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v2 = v28;
          v4 = v34;
          if (v36 >= 1)
          {
            v23 = *(v29 + 16);
            v6 = __OFADD__(v23, v36);
            v24 = v23 + v36;
            if (v6)
            {
              goto LABEL_45;
            }

            *(v29 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_26;
        }
      }

      v4 = v34;
      if (v36 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v3 == v2)
      {
        return v4;
      }
    }

    if (v3 >= *(v31 + 16))
    {
      goto LABEL_41;
    }

    v5 = *(v30 + 8 * v3);
    isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
    v6 = __OFADD__(v3++, 1);
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_40:
    __break(1u);
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
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v2 = sub_1001C6B38();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t CloudSyncDiagnosticService.findLocalIdDupes()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100106B64;

  return sub_10011678C();
}

uint64_t sub_1001167AC()
{
  v1 = [objc_msgSend(*(v0[2] + OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController) "configuration")];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_1001C6298();
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v0[3] = v2;
  v3 = v2[2];
  v0[4] = v3;
  if (v3)
  {
    v0[5] = 0;
    v4 = v2[4];
    v5 = v2[5];
    v0[6] = v5;

    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_10011695C;
    v7 = v4;
    v8 = v5;
  }

  else
  {

    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_100116BBC;
    v8 = 0xEE00656E6F5A6E6FLL;
    v7 = 0x697463656C6C6F43;
  }

  return sub_1001176C0(v7, v8);
}

uint64_t sub_10011695C()
{

  return _swift_task_switch(sub_100116A74, 0, 0);
}

uint64_t sub_100116A74()
{
  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_100116BBC;
    v3 = 0xEE00656E6F5A6E6FLL;
    v4 = 0x697463656C6C6F43;
  }

  else
  {
    v0[5] = v1;
    v5 = v0[3] + 16 * v1;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v0[6] = v6;

    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_10011695C;
    v4 = v7;
    v3 = v6;
  }

  return sub_1001176C0(v4, v3);
}

uint64_t sub_100116BBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100116E24(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100116ECC;

  return sub_10011678C();
}

uint64_t sub_100116ECC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1, 0);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t CloudSyncDiagnosticService.stateForLog()()
{
  v0 = sub_100115DF0(1);
  sub_100084528(&qword_1002717A0, &qword_1001F43E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  strcpy((inited + 32), "diagnosticInfo");
  *(inited + 47) = -18;
  v2 = [v0 stateForLog];
  v3 = sub_1001C5F08();

  *(inited + 72) = sub_100084528(&qword_1002717A8, &qword_1001F43E8);
  *(inited + 48) = v3;
  v4 = sub_100119458(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_1002717B0, &qword_1001F43F0);

  return v4;
}

uint64_t CloudSyncDiagnosticService.fetchRemoteChanges()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000F9958;

  return sub_100119898();
}

uint64_t sub_1001174EC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100117594;

  return sub_100119898();
}

uint64_t sub_100117594(void *a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1001176C0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_1001176E4, 0, 0);
}

uint64_t sub_1001176E4()
{
  v17 = v0;
  *(v0 + 80) = OBJC_IVAR___BDSCloudSyncDiagnosticService_logger;

  v1 = sub_1001C5128();
  v2 = sub_1001C65B8();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1001874E8(v4, v3, &v16);
    _os_log_impl(&_mh_execute_header, v1, v2, "_findLocalIdDupes(%{public}s)", v5, 0xCu);
    sub_10008E7BC(v6);
  }

  v7 = [*(*(v0 + 72) + OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController) privateCloudDatabaseController];
  *(v0 + 88) = v7;
  v8 = type metadata accessor for CloudSyncDiagnosticCloudFetcher(0);
  v9 = objc_allocWithZone(v8);
  v10 = v7;
  sub_1001C5138();
  *&v9[OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController] = v10;
  *(v0 + 40) = v9;
  *(v0 + 48) = v8;
  *(v0 + 96) = objc_msgSendSuper2((v0 + 40), "init");
  v11 = swift_allocObject();
  *(v0 + 104) = v11;
  *(v11 + 16) = &_swiftEmptyDictionarySingleton;

  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_100117978;
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);

  return CloudSyncDiagnosticCloudFetcher.fetchZone(zoneName:recordBlock:)(v14, v13, sub_10011A398, v11);
}

uint64_t sub_100117978()
{

  return _swift_task_switch(sub_100117A90, 0, 0);
}

void sub_100117A90()
{
  v80 = v0;
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (63 - v4) >> 6;
  v63 = v2;

  v8 = 0;
  v74 = v0;
  v61 = v7;
  v62 = v3;
  while (v6)
  {
    v9 = v8;
LABEL_12:
    v65 = v9;
    v66 = (v6 - 1) & v6;
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = (*(v63 + 48) + 16 * v10);
    v12 = v11[1];
    v72 = *v11;
    v13 = *(*(v63 + 56) + 8 * v10);
    v68 = v13 + 64;
    v14 = -1 << *(v13 + 32);
    if (-v14 < 64)
    {
      v15 = ~(-1 << -v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v13 + 64);
    v67 = (63 - v14) >> 6;
    v78 = v12;

    v17 = 0;
    v18 = 0;
LABEL_16:
    v20 = v67;
    v19 = v68;
    while (v16)
    {
LABEL_22:
      v22 = __clz(__rbit64(v16)) | (v17 << 6);
      v23 = (*(v13 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v13 + 56) + 8 * v22);
      v27 = v26 >> 62;
      if (v26 >> 62)
      {
        v28 = sub_1001C6B38();
        v20 = v67;
        v19 = v68;
      }

      else
      {
        v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 &= v16 - 1;
      if (v28 >= 2)
      {
        v29 = __OFADD__(v18, 1);
        v30 = v18 + 1;
        if (v29)
        {
          goto LABEL_55;
        }

        v64 = v24;
        v59 = v13;
        v60 = v30;

        v31 = sub_1001C5128();
        v32 = sub_1001C65B8();

        v71 = v26;
        v73 = v25;
        if (os_log_type_enabled(v31, v32))
        {
          v76 = v32;
          v34 = *(v0 + 56);
          v33 = *(v0 + 64);
          v35 = swift_slowAlloc();
          v79[0] = swift_slowAlloc();
          *v35 = 136446978;
          *(v35 + 4) = sub_1001874E8(v34, v33, v79);
          *(v35 + 12) = 2082;
          *(v35 + 14) = sub_1001874E8(v72, v78, v79);
          *(v35 + 22) = 2080;
          *(v35 + 24) = sub_1001874E8(v64, v25, v79);
          *(v35 + 32) = 2048;
          v26 = v71;
          if (v27)
          {
            v36 = sub_1001C6B38();
          }

          else
          {
            v36 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v35 + 34) = v36;
          _os_log_impl(&_mh_execute_header, v31, v76, "_findLocalIdDupes(%{public}s, %{public}s) - Found localId dupes - %s (%ld):", v35, 0x2Au);
          swift_arrayDestroy();

          v0 = v74;
        }

        else
        {
        }

        v37 = v26;
        if (v27)
        {
          v38 = sub_1001C6B38();
          v37 = v26;
          if (!v38)
          {
LABEL_47:

            v13 = v59;
            v18 = v60;
            goto LABEL_16;
          }
        }

        else
        {
          v38 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v38)
          {
            goto LABEL_47;
          }
        }

        if (v38 < 1)
        {
          goto LABEL_56;
        }

        v39 = 0;
        v69 = v37 & 0xC000000000000001;
        v70 = v38;
        do
        {
          v75 = v39;
          if (v69)
          {
            v45 = sub_1001C69F8();
          }

          else
          {
            v45 = *(v37 + 8 * v39 + 32);
          }

          v46 = v45;

          v47 = v46;
          v48 = sub_1001C5128();
          v49 = sub_1001C65B8();

          v77 = v47;

          if (os_log_type_enabled(v48, v49))
          {
            v41 = *(v0 + 56);
            v40 = *(v0 + 64);
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v79[0] = swift_slowAlloc();
            *v42 = 136446978;
            *(v42 + 4) = sub_1001874E8(v41, v40, v79);
            *(v42 + 12) = 2082;
            *(v42 + 14) = sub_1001874E8(v72, v78, v79);
            *(v42 + 22) = 2080;
            *(v42 + 24) = sub_1001874E8(v64, v73, v79);
            *(v42 + 32) = 2112;
            *(v42 + 34) = v77;
            *v43 = v77;
            v44 = v77;
            _os_log_impl(&_mh_execute_header, v48, v49, "_findLocalIdDupes(%{public}s, %{public}s)     - %s: %@", v42, 0x2Au);
            sub_10008875C(v43, &unk_1002718E0, &qword_1001F31F0);

            swift_arrayDestroy();
          }

          else
          {
          }

          v0 = v74;
          v39 = v75 + 1;
          v37 = v71;
        }

        while (v70 != v75 + 1);
        goto LABEL_47;
      }
    }

    while (1)
    {
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v21 >= v20)
      {
        break;
      }

      v16 = *(v19 + 8 * v21);
      ++v17;
      if (v16)
      {
        v17 = v21;
        goto LABEL_22;
      }
    }

    v50 = v18;

    v51 = sub_1001C5128();
    v52 = sub_1001C65B8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(v74 + 64);
      v54 = *(v74 + 56);
      v55 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v55 = 136446722;
      *(v55 + 4) = sub_1001874E8(v54, v53, v79);
      *(v55 + 12) = 2082;
      v56 = sub_1001874E8(v72, v78, v79);

      *(v55 + 14) = v56;
      v0 = v74;
      *(v55 + 22) = 2048;
      *(v55 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v51, v52, "_findLocalIdDupes(%{public}s, %{public}s) - Total localId dupes: %ld", v55, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v8 = v65;
    v6 = v66;
    v7 = v61;
    v3 = v62;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v57 = *(v0 + 88);

      v58 = *(v0 + 8);

      v58();
      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_12;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_100118230(void *a1, uint64_t a2)
{
  v4 = sub_1001C6758();
  v6 = v5;
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (*(v7 + 16) && (v8 = sub_100187B3C(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = &_swiftEmptyDictionarySingleton;
  }

  v11 = [objc_opt_self() localIdentifierFromRecord:a1];
  v12 = sub_1001C6018();
  v14 = v13;

  if (v10[2] && (v15 = sub_100187B3C(v12, v14), (v16 & 1) != 0))
  {
    v25 = *(v10[7] + 8 * v15);
    v17 = a1;

    sub_1001C6278();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1001C62B8();
    }

    sub_1001C62E8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017B2D4(v25, v12, v14, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_100084528(&qword_100270AB0, &qword_1001F52C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001F31C0;
    *(v19 + 32) = a1;
    v20 = a1;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_10017B2D4(v19, v12, v14, v21);
  }

  swift_beginAccess();

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_10017B2A8(v10, v4, v6, v22);

  *(a2 + 16) = v24;
  swift_endAccess();
}

uint64_t sub_1001185A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10009B25C;

  return v6();
}

uint64_t sub_100118688(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10009AAEC;

  return v7();
}

uint64_t sub_100118770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10009ADF0(a3, v23 - v10, &unk_100270A00, &qword_1001F3120);
  v12 = sub_1001C6348();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10008875C(v11, &unk_100270A00, &qword_1001F3120);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1001C6338();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1001C6308();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1001C60A8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);

    return v21;
  }

LABEL_8:
  sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_100118A6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&unk_100271890, &unk_1001F4520);
    v3 = sub_1001C6B78();
    v4 = a1 + 32;

    while (1)
    {
      sub_10009ADF0(v4, v13, &qword_10026F280, &qword_1001F5620);
      result = sub_100187A1C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10011A388(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100118BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_100271850, &qword_1001F4438);
    v3 = sub_1001C6B78();
    v4 = a1 + 32;

    while (1)
    {
      sub_10009ADF0(v4, v13, &qword_10026FC98, &unk_1001F1AB0);
      result = sub_100187A1C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100118CD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_100271888, &qword_1001F4518);
    v3 = sub_1001C6B78();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100187B3C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100118DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_1002718A0, &unk_1001F4530);
    v3 = sub_1001C6B78();
    v4 = a1 + 32;

    while (1)
    {
      sub_10009ADF0(v4, &v16, &qword_1002718A8, &qword_1001F6B10);
      v5 = v16;
      v6 = v17;
      result = sub_100187B3C(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100118F1C(uint64_t a1)
{
  v2 = sub_100084528(&qword_100271878, &qword_1001F4508);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100084528(&qword_100271880, &qword_1001F4510);
    v7 = sub_1001C6B78();
    v23 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_10009ADF0(v8, v5, &qword_100271878, &qword_1001F4508);
      v10 = *v5;
      v11 = *(v5 + 1);
      v12 = v5[16];
      result = sub_100187C98(*v5, v11, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v7[6] + 24 * result;
      *v16 = v10;
      *(v16 + 8) = v11;
      *(v16 + 16) = v12;
      v17 = v7[7];
      v18 = _s14PricingServiceV12FetchedPriceVMa(0);
      result = sub_10011A320(&v5[v23], v17 + *(*(v18 - 8) + 72) * v15, _s14PricingServiceV12FetchedPriceVMa);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100119120(uint64_t a1)
{
  v2 = sub_100084528(&qword_100271868, &qword_1001F44F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100084528(&qword_100271870, &qword_1001F4500);
    v7 = sub_1001C6B78();
    v23 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_10009ADF0(v8, v5, &qword_100271868, &qword_1001F44F8);
      v10 = *v5;
      v11 = *(v5 + 1);
      v12 = v5[16];
      result = sub_100187C98(*v5, v11, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v7[6] + 24 * result;
      *v16 = v10;
      *(v16 + 8) = v11;
      *(v16 + 16) = v12;
      v17 = v7[7];
      v18 = _s11TrackedItemVMa(0);
      result = sub_10011A320(&v5[v23], v17 + *(*(v18 - 8) + 72) * v15, _s11TrackedItemVMa);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100119324(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_100271860, &qword_1001F44F0);
    v3 = sub_1001C6B78();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 24);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_100187C98(v5, v6, v7);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 24 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v7;
      v14 = (v3[7] + 24 * result);
      *v14 = v8;
      v14[1] = v10;
      v14[2] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100119458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_100273260, &qword_1001F4560);
    v3 = sub_1001C6B78();
    v4 = a1 + 32;

    while (1)
    {
      sub_10009ADF0(v4, &v13, &qword_1002717B0, &qword_1001F43F0);
      v5 = v13;
      v6 = v14;
      result = sub_100187B3C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10011A388(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100119588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&unk_1002718B8, &unk_1001F4548);
    v3 = sub_1001C6B78();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100187D2C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100119680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_1002718B0, &qword_1001F4540);
    v3 = sub_1001C6B78();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100187B3C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void __swiftcall _s14bookdatastored26CloudSyncDiagnosticServiceC05clearC8MetadataSo7NSErrorCSgyF_0()
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  sub_100084528(&unk_1002718D0, &qword_1001F4558);
  sub_1001C6688();
  if (v0)
  {
    sub_100084528(&unk_100270F10, &unk_1001F1F70);
    sub_100088714(0, &qword_1002718C8, NSError_ptr);
    swift_dynamicCast();
  }
}

uint64_t sub_100119898()
{
  v1 = sub_1001C52E8();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v2 = sub_1001C5318();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001199B0, 0, 0);
}

uint64_t sub_1001199B0()
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v1 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  v0[10] = v1;
  if (v1)
  {
    (*(v0[5] + 104))(v0[6], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[4]);

    sub_1001C52F8();
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100119B2C;
    v3 = v0[9];

    return CKSyncEngine.fetchChanges(_:)(v3);
  }

  else
  {

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_100119B2C()
{
  v2 = *v1;
  v3 = *v1;
  v2[12] = v0;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {
    (*(v5 + 8))(v2[9], v2[7]);

    return _swift_task_switch(sub_100119D30, 0, 0);
  }

  else
  {

    (*(v5 + 8))(v4, v6);

    v7 = v3[1];

    return v7(0);
  }
}

uint64_t sub_100119D30()
{
  v0[2] = v0[12];
  sub_100084528(&unk_100270F10, &unk_1001F1F70);
  sub_100088714(0, &qword_1002718C8, NSError_ptr);
  if (swift_dynamicCast())
  {
    v1 = v0[3];
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[1];

  return v2(v1);
}

uint64_t type metadata accessor for CloudSyncDiagnosticService(uint64_t a1)
{
  result = qword_1002717E0;
  if (!qword_1002717E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100119E54(uint64_t a1)
{
  result = sub_1001C5148();
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

uint64_t sub_100119F00()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10009B25C;

  return sub_1001174EC(v2);
}

uint64_t sub_100119FAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009B25C;

  return sub_10010E164(a1, v4);
}

uint64_t sub_10011A064(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009AAEC;

  return sub_10010E164(a1, v4);
}

uint64_t sub_10011A11C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_100116E24(v2, v3);
}

uint64_t sub_10011A1C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009AAEC;

  return sub_100116264(v2, v3);
}

uint64_t sub_10011A274()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_100115C38(v2, v3);
}

uint64_t sub_10011A320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_OWORD *sub_10011A388(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10011A3A0()
{
  result = qword_100271900;
  if (!qword_100271900)
  {
    sub_1000885AC(&qword_1002718F8, &qword_1001F4570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271900);
  }

  return result;
}

uint64_t _s11RecentPriceVMa(uint64_t a1)
{
  result = qword_100271968;
  if (!qword_100271968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011A478(uint64_t a1)
{
  result = sub_1001C4CA8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10011A4F4(void *a1)
{
  v3 = sub_100084528(&qword_1002719B0, &qword_1001F4608);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10009BB74(a1, a1[3]);
  sub_10011AB40();
  sub_1001C6E78();
  v8[15] = 0;
  sub_1001C6C88();
  if (!v1)
  {
    _s11RecentPriceVMa(0);
    v8[14] = 1;
    sub_1001C4CA8();
    sub_1000B6E64(&qword_10026F970, &protocol conformance descriptor for Date);
    sub_1001C6CA8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10011A698@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_1001C4CA8();
  v19 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100084528(&qword_1002719A0, &qword_1001F4600);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v16 - v6;
  v8 = _s11RecentPriceVMa(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009BB74(a1, a1[3]);
  sub_10011AB40();
  sub_1001C6E58();
  if (!v2)
  {
    v18 = v8;
    v11 = v21;
    v12 = v22;
    v25 = 0;
    v13 = v23;
    sub_1001C6C08();
    *v10 = v14;
    v24 = 1;
    sub_1000B6E64(&qword_10026F980, &protocol conformance descriptor for Date);
    v17 = v5;
    sub_1001C6C28();
    (*(v11 + 8))(v7, v13);
    (*(v19 + 32))(&v10[*(v18 + 20)], v17, v12);
    sub_10011AB94(v10, v20);
  }

  return sub_10008E7BC(a1);
}

uint64_t sub_10011A968()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_10011A998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10011AA70(uint64_t a1)
{
  v2 = sub_10011AB40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011AAAC(uint64_t a1)
{
  v2 = sub_10011AB40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011AB18(double *a1, double *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_1001C4C68();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10011AB40()
{
  result = qword_1002719A8;
  if (!qword_1002719A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719A8);
  }

  return result;
}

uint64_t sub_10011AB94(uint64_t a1, uint64_t a2)
{
  v4 = _s11RecentPriceVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011AC0C()
{
  result = qword_1002719B8;
  if (!qword_1002719B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719B8);
  }

  return result;
}

unint64_t sub_10011AC64()
{
  result = qword_1002719C0;
  if (!qword_1002719C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719C0);
  }

  return result;
}

unint64_t sub_10011ACBC()
{
  result = qword_1002719C8;
  if (!qword_1002719C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719C8);
  }

  return result;
}

id sub_10011AD10(double *a1)
{
  v2 = sub_10011D550(a1);
  v6 = 0;
  v3 = [v1 submitTaskRequest:v2 error:&v6];

  if (v3)
  {
    return v6;
  }

  v5 = v6;
  sub_1001C4A28();

  return swift_willThrow();
}

id sub_10011ADCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001C5FE8();
  v7 = 0;
  v4 = [v2 cancelTaskRequestWithIdentifier:v3 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  sub_1001C4A28();

  return swift_willThrow();
}

void sub_10011AE88(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1001C5FE8();
  [v3 deregisterTaskWithIdentifier:v4];
}

void sub_10011AEE0(uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = sub_1001C5FE8();
  v7 = [v5 taskRequestForIdentifier:v6];

  if (v7)
  {
    sub_10011D2BC(v7, v12);
    v8 = v12[0];
    v9 = v12[1];
    v10 = v12[2];
    v11 = v13;
  }

  else
  {
    v11 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  *(a3 + 48) = v11;
}

void sub_10011AFC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1000DD4AC;
    v4[3] = &unk_100249078;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setExpirationHandler:v3];
  _Block_release(v3);
}

uint64_t sub_10011B07C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_10011B094()
{
  sub_1001C6DF8();
  sub_1001C60E8();
  return sub_1001C6E28();
}

Swift::Int sub_10011B0E0(uint64_t a1)
{
  sub_1001C6DF8();
  sub_1001C60E8();
  return sub_1001C6E28();
}

unint64_t sub_10011B1EC()
{
  result = qword_1002719D0;
  if (!qword_1002719D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719D0);
  }

  return result;
}

unint64_t sub_10011B240()
{
  result = qword_1002719D8;
  if (!qword_1002719D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719D8);
  }

  return result;
}

char *sub_10011B294()
{
  v1 = [v0 itemIDs];
  sub_10011BB4C();
  v2 = sub_1001C6298();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1001C6B38();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_1000D3980(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_1001C69F8();
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 adamID];
      v9 = sub_1001C6018();
      v11 = v10;

      v12 = [v7 isAudiobook];
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000D3980((v13 > 1), v14 + 1, 1);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[3 * v14];
      v15[4] = v9;
      v15[5] = v11;
      *(v15 + 48) = v12;
    }

    while (v3 != v5);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

double sub_10011B44C()
{
  v1 = [v0 dealAbsoluteThreshold];
  [v1 doubleValue];
  v3 = v2;

  v4 = [v0 dealRelativeThreshold];
  [v4 doubleValue];
  v6 = v5;

  if (v3 < 0.0)
  {
    v6 = v3;
  }

  else if (v6 >= 0.0)
  {
    return v3;
  }

  sub_10011BA50();
  swift_allocError();
  *v7 = v6;
  *(v7 + 8) = v3 >= 0.0;
  swift_willThrow();
  return v3;
}

void sub_10011B534(unint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4C98();
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    while (1)
    {
      v35 = _swiftEmptyArrayStorage;
      sub_1000D3A28(0, v10 & ~(v10 >> 63), 0);
      if (v10 < 0)
      {
        break;
      }

      v27 = a2;
      v28 = v3;
      v29 = v9;
      v30 = v7;
      v11 = 0;
      v33 = a1;
      v34 = a1 & 0xC000000000000001;
      v12 = v35;
      v31 = v6;
      v32 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v3 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v34)
        {
          v13 = sub_1001C69F8();
        }

        else
        {
          if (v11 >= *(v32 + 16))
          {
            goto LABEL_26;
          }

          v13 = *(a1 + 8 * v11 + 32);
        }

        a2 = v13;
        v14 = [v13 duration];
        v15 = [a2 minUpdateInterval];
        v16 = [a2 schedulerConfigMinInterval];
        v17 = [a2 schedulerConfigIdealInterval];
        v18 = v17;
        if (v17 < 300)
        {
          LOBYTE(v9) = 2;
LABEL_21:

          sub_10011BAA4();
          swift_allocError();
          *v24 = v18;
          *(v24 + 8) = v9;
          swift_willThrow();

          (*(v30 + 8))(v29, v31);

          return;
        }

        v19 = v16;
        v9 = 1;
        if (v16 < 300 || v19 > v18)
        {
          v18 = v16;
          goto LABEL_21;
        }

        v20 = v14;
        if (v14 < 1)
        {
          v25 = 1;
LABEL_24:
          sub_10011BAF8();
          swift_allocError();
          *v26 = v20;
          *(v26 + 8) = v25;
          swift_willThrow();
          (*(v30 + 8))(v29, v31);

          return;
        }

        v21 = v15;
        a1 = v33;
        if (v15 < 1)
        {
          v25 = 2;
          v20 = v21;
          goto LABEL_24;
        }

        v35 = v12;
        v7 = v12[2];
        v22 = v12[3];
        v6 = v7 + 1;
        if (v7 >= v22 >> 1)
        {
          sub_1000D3A28((v22 > 1), v7 + 1, 1);
          v12 = v35;
        }

        v12[2] = v6;
        v23 = &v12[4 * v7];
        v23[4] = v20;
        v23[5] = v21;
        v23[6] = v19;
        v23[7] = v18;
        ++v11;
        if (v3 == v10)
        {

          v7 = v30;
          v6 = v31;
          v9 = v29;
          a2 = v27;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v10 = sub_1001C6B38();
      if (!v10)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:

    v12 = _swiftEmptyArrayStorage;
LABEL_29:
    (*(v7 + 32))(a2, v9, v6);
    *&a2[*(_s14UpdateScheduleVMa(0) + 20)] = v12;
  }
}

void sub_10011B8E8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 titleSingleAudiobook];
  v5 = sub_1001C6018();
  v28 = v6;
  v29 = v5;

  v7 = [a1 titleSingleBook];
  v8 = sub_1001C6018();
  v26 = v9;
  v27 = v8;

  v10 = [a1 titleMultiple];
  v11 = sub_1001C6018();
  v13 = v12;

  v14 = [a1 bodySingleAudiobook];
  v15 = sub_1001C6018();
  v17 = v16;

  v18 = [a1 bodySingleBook];
  v19 = sub_1001C6018();
  v21 = v20;

  v22 = [a1 bodyMultiple];
  v23 = sub_1001C6018();
  v25 = v24;

  *a2 = v29;
  a2[1] = v28;
  a2[2] = v27;
  a2[3] = v26;
  a2[4] = v11;
  a2[5] = v13;
  a2[6] = v15;
  a2[7] = v17;
  a2[8] = v19;
  a2[9] = v21;
  a2[10] = v23;
  a2[11] = v25;
}

unint64_t sub_10011BA50()
{
  result = qword_1002719E0;
  if (!qword_1002719E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719E0);
  }

  return result;
}

unint64_t sub_10011BAA4()
{
  result = qword_1002719E8;
  if (!qword_1002719E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719E8);
  }

  return result;
}

unint64_t sub_10011BAF8()
{
  result = qword_1002719F0;
  if (!qword_1002719F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719F0);
  }

  return result;
}

unint64_t sub_10011BB4C()
{
  result = qword_100271298;
  if (!qword_100271298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100271298);
  }

  return result;
}

uint64_t _ReadingHistoryServiceStatus.description.getter(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1001C6138(v2);

  v5._countAndFlagsBits = 125;
  v5._object = 0xE100000000000000;
  sub_1001C6138(v5);
  return 0x6564616F4C73697BLL;
}

uint64_t sub_10011BC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646564616F4C7369 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1001C6D08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10011BCC8(uint64_t a1)
{
  v2 = sub_10011BE70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011BD04(uint64_t a1)
{
  v2 = sub_10011BE70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _ReadingHistoryServiceStatus.encode(to:)(void *a1, uint64_t a2)
{
  v3 = sub_100084528(&qword_100271A00, &qword_1001F4890);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10009BB74(a1, a1[3]);
  sub_10011BE70();
  sub_1001C6E78();
  sub_1001C6C78();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10011BE70()
{
  result = qword_100271A08;
  if (!qword_100271A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A08);
  }

  return result;
}

uint64_t _ReadingHistoryServiceStatus.init(from:)(void *a1)
{
  v3 = sub_100084528(&qword_100271A10, &qword_1001F4898);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10009BB74(a1, a1[3]);
  sub_10011BE70();
  sub_1001C6E58();
  if (!v1)
  {
    v7 = sub_1001C6BF8();
    (*(v4 + 8))(v6, v3);
  }

  sub_10008E7BC(a1);
  return v7 & 1;
}

uint64_t sub_10011C018@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100084528(&qword_100271A10, &qword_1001F4898);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10009BB74(a1, a1[3]);
  sub_10011BE70();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  v9 = sub_1001C6BF8();
  (*(v6 + 8))(v8, v5);
  result = sub_10008E7BC(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_10011C17C(void *a1)
{
  v2 = sub_100084528(&qword_100271A00, &qword_1001F4890);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10009BB74(a1, a1[3]);
  sub_10011BE70();
  sub_1001C6E78();
  sub_1001C6C78();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10011C2B4()
{
  if (*v0)
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_1001C6138(v1);

  v4._countAndFlagsBits = 125;
  v4._object = 0xE100000000000000;
  sub_1001C6138(v4);
  return 0x6564616F4C73697BLL;
}

id ReadingHistoryServiceStatus.__allocating_init(value:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id ReadingHistoryServiceStatus.init(value:)(char a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id ReadingHistoryServiceStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_10011CDC8(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id ReadingHistoryServiceStatus.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_10011CDC8(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id sub_10011C4B8(void *a1)
{
  sub_10011D170();
  v2 = sub_1001C6748();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1001C4BA8();
    v6 = v5;
    v7 = objc_allocWithZone(NSKeyedUnarchiver);
    v8 = sub_10011CD08(v4, v6);
    sub_1000887D0(v4, v6);
    if (v8)
    {
      sub_10011D1BC();
      sub_1001C65E8();
      v10 = v17;
      if (v17)
      {
        v11 = v18;
        v12 = type metadata accessor for ReadingHistoryUpdate();
        v13 = objc_allocWithZone(v12);
        *&v13[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
        v14 = &v13[OBJC_IVAR___BDSReadingHistoryUpdate_value];
        *v14 = v10;
        *(v14 + 1) = v11;
        v16.receiver = v13;
        v16.super_class = v12;
        v15 = objc_msgSendSuper2(&v16, "init");
        [v8 finishDecoding];

        return v15;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

void sub_10011C690(void *a1)
{
  v2 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  sub_10011D210();
  sub_1001C65D8();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1001C5FE8();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_10011C7B0(void *a1)
{
  v2 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  sub_10011D11C();

  sub_1001C65D8();

  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1001C5FE8();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

char *sub_10011C9D4@<X0>(char *a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = v4;
  v7.receiver = v5;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, "init");
  *a2 = result;
  return result;
}

id ReadingHistoryServiceStatus.__allocating_init(isLoaded:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithIsLoaded:a1 & 1];
}

id ReadingHistoryServiceStatus.init(isLoaded:)(char a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(ObjectType);
  v3[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t ReadingHistoryServiceStatus.description.getter()
{
  if (*(v0 + OBJC_IVAR___BDSReadingHistoryServiceStatus_value))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___BDSReadingHistoryServiceStatus_value))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_1001C6138(v1);

  v4._countAndFlagsBits = 125;
  v4._object = 0xE100000000000000;
  sub_1001C6138(v4);
  return 0x6564616F4C73697BLL;
}

id sub_10011CD08(uint64_t a1, uint64_t a2)
{
  isa = sub_1001C4B98().super.isa;
  v8 = 0;
  v4 = [v2 initForReadingFromData:isa error:&v8];

  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    sub_1001C4A28();

    swift_willThrow();
  }

  return v4;
}

id sub_10011CDC8(void *a1)
{
  sub_10011D170();
  v2 = sub_1001C6748();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1001C4BA8();
    v6 = v5;
    v7 = objc_allocWithZone(NSKeyedUnarchiver);
    v8 = sub_10011CD08(v4, v6);
    sub_1000887D0(v4, v6);
    if (v8)
    {
      sub_10011D264();
      sub_1001C65E8();
      if (v14 != 2)
      {
        v10 = type metadata accessor for ReadingHistoryServiceStatus();
        v11 = objc_allocWithZone(v10);
        v11[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = v14 & 1;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, "init");
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for _ReadingHistoryServiceStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10011D018()
{
  result = qword_100271A68;
  if (!qword_100271A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A68);
  }

  return result;
}

unint64_t sub_10011D070()
{
  result = qword_100271A70;
  if (!qword_100271A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A70);
  }

  return result;
}

unint64_t sub_10011D0C8()
{
  result = qword_100271A78;
  if (!qword_100271A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A78);
  }

  return result;
}

unint64_t sub_10011D11C()
{
  result = qword_100271A80;
  if (!qword_100271A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A80);
  }

  return result;
}

unint64_t sub_10011D170()
{
  result = qword_100271A88;
  if (!qword_100271A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100271A88);
  }

  return result;
}

unint64_t sub_10011D1BC()
{
  result = qword_100271A90;
  if (!qword_100271A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A90);
  }

  return result;
}

unint64_t sub_10011D210()
{
  result = qword_100271A98;
  if (!qword_100271A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A98);
  }

  return result;
}

unint64_t sub_10011D264()
{
  result = qword_100271AA0;
  if (!qword_100271AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271AA0);
  }

  return result;
}

void sub_10011D2BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = v4;
  if (v4)
  {
    [v4 interval];
    v7 = round(v6);
    [v5 minDurationBetweenInstances];
    v9 = round(v8);
LABEL_4:
    v10 = v5 == 0;
    v11 = [a1 identifier];
    v12 = sub_1001C6018();
    v14 = v13;

    v15 = [a1 priority];
    v16 = [a1 requiresInexpensiveNetworkConnectivity];
    v17 = [a1 requiresExternalPower];

    v18 = 256;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v18 | v16;
    goto LABEL_7;
  }

  objc_opt_self();
  v7 = 0.0;
  v9 = 0.0;
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v20 = sub_1001C5148();
  sub_100083274(v20, qword_100281898);
  v21 = a1;
  v22 = sub_1001C5128();
  v23 = sub_1001C6598();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136315138;
    swift_getObjectType();
    v26 = sub_1001C6EA8();
    v28 = sub_1001874E8(v26, v27, &v29);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "[Scheduler] Unknown BGSystemTaskRequest type: %s", v24, 0xCu);
    sub_10008E7BC(v25);
  }

  v12 = 0;
  v14 = 0;
  v15 = 0;
  v19 = 0;
  v10 = 0;
LABEL_7:
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v19;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
}

id sub_10011D550(double *a1)
{
  if (a1[6])
  {
    v2 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
    v3 = sub_1001C5FE8();
    v4 = [v2 initWithIdentifier:v3];
  }

  else
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
    v8 = sub_1001C5FE8();
    v4 = [v7 initWithIdentifier:v8];

    [v4 setInterval:v6];
    [v4 setMinDurationBetweenInstances:v5];
  }

  v9 = *(a1 + 2);
  v10 = v4;
  [v10 setPriority:v9];
  [v10 setRequiresInexpensiveNetworkConnectivity:*(a1 + 24)];
  [v10 setRequiresExternalPower:*(a1 + 25)];

  return v10;
}

uint64_t sub_10011D680(uint64_t a1, uint64_t a2)
{
  v4 = _s15PersistentStateO2V1VMa(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_100008CFC);
}

uint64_t sub_10011D6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15PersistentStateO2V1VMa(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_100008D00);
}

uint64_t sub_10011D780(uint64_t a1)
{
  result = _s15PersistentStateO2V1VMa(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_10011D838(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100084528(&qword_100271B10, &qword_1001F4AC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10011D988(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100084528(&qword_100271B10, &qword_1001F4AC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10011DAC4(uint64_t a1)
{
  sub_10011DD0C(319, &qword_100271C20, _s11TrackedItemVMa, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10011DCA8(319);
    if (v2 <= 0x3F)
    {
      sub_10011DD0C(319, &qword_100271C30, _s14UpdateScheduleVMa, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10011DD0C(319, &qword_100271450, _s6UpdateVMa, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10011DD70(319, &qword_100271C38, &_s12StoreFrontIDVN);
          if (v5 <= 0x3F)
          {
            sub_10011DD70(319, &qword_100271C40, &_s9ThresholdVN);
            if (v6 <= 0x3F)
            {
              sub_10011DD70(319, &qword_100271C48, &_s20TemplateNotificationVN);
              if (v7 <= 0x3F)
              {
                sub_10011DD70(319, &unk_100271C50, &type metadata for Int);
                if (v8 <= 0x3F)
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
}

void sub_10011DCA8(uint64_t a1)
{
  if (!qword_100271C28)
  {
    sub_1000885AC(&qword_10026F790, &qword_1001F13C0);
    v1 = sub_1001C67F8();
    if (!v2)
    {
      atomic_store(v1, &qword_100271C28);
    }
  }
}

void sub_10011DD0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10011DD70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1001C67F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10011DDBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v5 = __chkstk_darwin(v4 - 8);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v62 - v7;
  v9 = sub_100084528(&qword_100271B10, &qword_1001F4AC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  updated = _s14UpdateScheduleVMa(0);
  v13 = *(updated - 8);
  v14 = __chkstk_darwin(updated);
  v71 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v62 - v16;
  v18 = _s15PersistentStateO2V1VMa(0);
  __chkstk_darwin(v18);
  v20 = (&v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = _s15PersistentStateOMa(0);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  sub_10011FDB8(a1, v23, _s15PersistentStateOMa);
  sub_10011FE20(v23, v20, _s15PersistentStateO2V1VMa);
  v24 = (v20 + v18[9]);
  v26 = *v24;
  v25 = v24[1];
  v27 = *(v24 + 16);
  sub_10009ADF0(v20 + v18[6], v11, &qword_100271B10, &qword_1001F4AC0);
  v28 = *(v13 + 48);
  if (v28(v11, 1, updated) == 1)
  {
    if (qword_10026EC80 != -1)
    {
      swift_once();
    }

    v29 = sub_100083274(updated, qword_100281A10);
    sub_10011FDB8(v29, v17, _s14UpdateScheduleVMa);
    if (v28(v11, 1, updated) != 1)
    {
      sub_10008875C(v11, &qword_100271B10, &qword_1001F4AC0);
    }
  }

  else
  {
    sub_10011FE20(v11, v17, _s14UpdateScheduleVMa);
  }

  v68 = v17;
  if (v27)
  {
    v25 = 0.0;
    v26 = 0.0;
  }

  v30 = v20[1];
  v67 = *v20;
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v64 = v31;
  v62 = _s14UpdateScheduleVMa;
  sub_10011FDB8(v17, v71, _s14UpdateScheduleVMa);
  sub_10009ADF0(v20 + v18[7], v8, &qword_1002712C8, &qword_1001F3A18);
  v32 = _s6UpdateVMa(0);
  v33 = *(*(v32 - 8) + 56);
  v65 = v8;
  v33(v70, 1, 1, v32);
  v34 = (v20 + v18[8]);
  v35 = v34[1];
  v63 = *v34;
  v36 = (v20 + v18[10]);
  v37 = v36[3];
  v75 = v36[2];
  v76 = v37;
  v38 = v36[5];
  v77 = v36[4];
  v78 = v38;
  v39 = v36[1];
  v73 = *v36;
  v74 = v39;
  v40 = v20 + v18[11];
  if (v40[8])
  {
    v41 = 0;
  }

  else
  {
    v41 = *v40;
  }

  v66 = v41;
  v42 = _s5StateVMa(0);
  v43 = v42[7];
  v33(a2 + v43, 1, 1, v32);
  v44 = v42[8];
  v33(a2 + v44, 1, 1, v32);
  v45 = (a2 + v42[9]);
  v46 = (a2 + v42[11]);
  v46[4] = 0u;
  v46[5] = 0u;
  v46[2] = 0u;
  v46[3] = 0u;
  *v46 = 0u;
  v46[1] = 0u;
  v47 = v64;
  *a2 = _swiftEmptyArrayStorage;
  a2[1] = v47;
  v48 = v71;
  sub_10011FDB8(v71, a2 + v42[6], v62);

  sub_10009ADF0(&v73, v72, &qword_1002712D0, &qword_1001F3A20);
  v49 = a2 + v43;
  v50 = v65;
  sub_100110BC4(v65, v49);
  v51 = a2 + v44;
  v52 = v70;
  sub_100110BC4(v70, v51);
  *v45 = v63;
  v45[1] = v35;
  v53 = (a2 + v42[10]);
  *v53 = v26;
  v53[1] = v25;
  v54 = v46[3];
  v72[2] = v46[2];
  v55 = v46[4];
  v56 = v46[5];
  v72[3] = v54;
  v72[4] = v55;
  v72[5] = v56;
  v57 = v46[1];
  v72[0] = *v46;
  v72[1] = v57;
  sub_10008875C(v72, &qword_1002712D0, &qword_1001F3A20);
  v58 = v76;
  v46[2] = v75;
  v46[3] = v58;
  v59 = v78;
  v46[4] = v77;
  v46[5] = v59;
  v60 = v74;
  *v46 = v73;
  v46[1] = v60;
  *(a2 + v42[12]) = v66;
  sub_1001A30D0(v67);
  sub_100120D10(v69, _s15PersistentStateOMa);
  sub_10008875C(v52, &qword_1002712C8, &qword_1001F3A18);
  sub_10008875C(v50, &qword_1002712C8, &qword_1001F3A18);
  sub_100120D10(v48, _s14UpdateScheduleVMa);
  sub_100120D10(v68, _s14UpdateScheduleVMa);
  return sub_100120D10(v20, _s15PersistentStateO2V1VMa);
}

uint64_t sub_10011E4A4(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100271D10, &qword_1001F4BC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7];
  sub_10009BB74(a1, a1[3]);
  sub_10011FC68();
  sub_1001C6E78();
  *&v29 = *v3;
  LOBYTE(v23) = 0;
  sub_100084528(&qword_100271CB8, &qword_1001F4BB8);
  sub_10011FE88(&qword_100271D18, &qword_100271D20, &unk_1001F8534, &protocol conformance descriptor for <A> [A]);
  sub_1001C6CA8();
  if (!v2)
  {
    *&v29 = v3[1];
    LOBYTE(v23) = 1;
    sub_100084528(&qword_10026F790, &qword_1001F13C0);
    sub_10011FF24(&qword_100271D28, &qword_100271D30, &unk_1001F5340, &protocol conformance descriptor for <A> [A]);
    sub_1001C6C58();
    v9 = _s15PersistentStateO2V1VMa(0);
    LOBYTE(v29) = 2;
    _s14UpdateScheduleVMa(0);
    sub_10011FFC0(&qword_100271D38, _s14UpdateScheduleVMa, &unk_1001F8278);
    sub_1001C6C58();
    LOBYTE(v29) = 3;
    _s6UpdateVMa(0);
    sub_10011FFC0(&qword_1002714B0, _s6UpdateVMa, &unk_1001F8850);
    sub_1001C6C58();
    v29 = *(v3 + v9[8]);
    LOBYTE(v23) = 4;
    sub_100120008();
    sub_1001C6C58();
    v10 = v3 + v9[9];
    v11 = v10[16];
    v36 = *v10;
    v37 = v11;
    v35 = 5;
    sub_10012005C();
    sub_1001C6C58();
    v12 = (v3 + v9[10]);
    v13 = v12[2];
    v14 = v12[4];
    v32 = v12[3];
    v33 = v14;
    v15 = v12[4];
    v34 = v12[5];
    v16 = *v12;
    v17 = v12[2];
    v30 = v12[1];
    v31 = v17;
    v18 = *v12;
    v26 = v32;
    v27 = v15;
    v28 = v12[5];
    v29 = v18;
    v23 = v16;
    v24 = v30;
    v25 = v13;
    v22 = 6;
    sub_10009ADF0(&v29, v21, &qword_1002712D0, &qword_1001F3A20);
    sub_1001200B0();
    sub_1001C6C58();
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[5] = v28;
    v21[0] = v23;
    v21[1] = v24;
    sub_10008875C(v21, &qword_1002712D0, &qword_1001F3A20);
    v20[15] = 7;
    sub_1001C6C48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10011E9A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  __chkstk_darwin(v3 - 8);
  v53 = v50 - v4;
  v5 = sub_100084528(&qword_100271B10, &qword_1001F4AC0);
  __chkstk_darwin(v5 - 8);
  v54 = v50 - v6;
  v7 = sub_100084528(&qword_100271CA8, &qword_1001F4BB0);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = v50 - v8;
  v10 = _s15PersistentStateO2V1VMa(0);
  v11 = __chkstk_darwin(v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 24);
  updated = _s14UpdateScheduleVMa(0);
  v16 = *(*(updated - 8) + 56);
  v59 = v14;
  v16(&v13[v14], 1, 1, updated);
  v17 = *(v10 + 28);
  v18 = _s6UpdateVMa(0);
  v19 = *(*(v18 - 8) + 56);
  v61 = v17;
  v19(&v13[v17], 1, 1, v18);
  v20 = *(v10 + 40);
  v77 = v13;
  v21 = &v13[v20];
  *(v21 + 4) = 0u;
  *(v21 + 5) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = a1[3];
  v60 = a1;
  sub_10009BB74(a1, v22);
  sub_10011FC68();
  v57 = v9;
  v23 = v58;
  sub_1001C6E58();
  if (v23)
  {
    v25 = v59;
    v26 = v77;
    sub_10008E7BC(v60);

    v27 = v61;
    sub_10008875C(v26 + v25, &qword_100271B10, &qword_1001F4AC0);
    sub_10008875C(v26 + v27, &qword_1002712C8, &qword_1001F3A18);

    v28 = *(v21 + 3);
    v73 = *(v21 + 2);
    v74 = v28;
    v29 = *(v21 + 5);
    v75 = *(v21 + 4);
    v76 = v29;
    v30 = *(v21 + 1);
    v71 = *v21;
    v72 = v30;
    return sub_10008875C(&v71, &qword_1002712D0, &qword_1001F3A20);
  }

  else
  {
    v58 = v18;
    v24 = v54;
    v51 = v10;
    sub_100084528(&qword_100271CB8, &qword_1001F4BB8);
    LOBYTE(v69[0]) = 0;
    sub_10011FE88(&qword_100271CC0, &qword_100271CC8, &unk_1001F855C, &protocol conformance descriptor for <A> [A]);
    sub_1001C6C28();
    v31 = v77;
    *v77 = v71;
    sub_100084528(&qword_10026F790, &qword_1001F13C0);
    LOBYTE(v69[0]) = 1;
    sub_10011FF24(&qword_100271CD0, &qword_100271CD8, &unk_1001F5368, &protocol conformance descriptor for <A> [A]);
    sub_1001C6BD8();
    v32 = v59;
    v50[1] = v71;
    v31[1] = v71;
    LOBYTE(v71) = 2;
    sub_10011FFC0(&qword_100271CE0, _s14UpdateScheduleVMa, &unk_1001F82A0);
    sub_1001C6BD8();
    sub_1000B36A8(v24, v31 + v32, &qword_100271B10, &qword_1001F4AC0);
    LOBYTE(v71) = 3;
    sub_10011FFC0(&qword_100271CE8, _s6UpdateVMa, &unk_1001F8878);
    v33 = v53;
    sub_1001C6BD8();
    sub_1000B36A8(v33, v31 + v61, &qword_1002712C8, &qword_1001F3A18);
    LOBYTE(v69[0]) = 4;
    sub_10011FCBC();
    sub_1001C6BD8();
    v34 = (v31 + v51[8]);
    v35 = *(&v71 + 1);
    *v34 = v71;
    v34[1] = v35;
    LOBYTE(v69[0]) = 5;
    sub_10011FD10();
    sub_1001C6BD8();
    v36 = v31 + v51[9];
    v37 = v72;
    *v36 = v71;
    v36[16] = v37;
    v70 = 6;
    sub_10011FD64();
    sub_1001C6BD8();
    v65 = v73;
    v66 = v74;
    v67 = v75;
    v68 = v76;
    v63 = v71;
    v64 = v72;
    v38 = *(v21 + 3);
    v69[2] = *(v21 + 2);
    v69[3] = v38;
    v39 = *(v21 + 5);
    v69[4] = *(v21 + 4);
    v69[5] = v39;
    v40 = *(v21 + 1);
    v69[0] = *v21;
    v69[1] = v40;
    sub_10008875C(v69, &qword_1002712D0, &qword_1001F3A20);
    v41 = v66;
    *(v21 + 2) = v65;
    *(v21 + 3) = v41;
    v42 = v68;
    *(v21 + 4) = v67;
    *(v21 + 5) = v42;
    v43 = v64;
    *v21 = v63;
    *(v21 + 1) = v43;
    v62 = 7;
    v44 = sub_1001C6BC8();
    v46 = v45;
    v47 = v77;
    v48 = v77 + v51[11];
    (*(v55 + 8))(v57, v56);
    *v48 = v44;
    v48[8] = v46 & 1;
    sub_10011FDB8(v47, v52, _s15PersistentStateO2V1VMa);
    sub_10008E7BC(v60);
    return sub_100120D10(v47, _s15PersistentStateO2V1VMa);
  }
}

unint64_t sub_10011F24C()
{
  v1 = *v0;
  v2 = 0x4964656B63617274;
  v3 = 0xD000000000000014;
  if (v1 != 6)
  {
    v3 = 0x696D694C64726163;
  }

  v4 = 0x6F724665726F7473;
  if (v1 != 4)
  {
    v4 = 0x657268546C616564;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6353657461647075;
  if (v1 != 2)
  {
    v5 = 0x616470557473616CLL;
  }

  if (*v0)
  {
    v2 = 0x736C616564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10011F378@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001210E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10011F3AC(uint64_t a1)
{
  v2 = sub_10011FC68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011F3E8(uint64_t a1)
{
  v2 = sub_10011FC68();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10011F458()
{
  sub_1001C6DF8();
  sub_1001C60E8();
  return sub_1001C6E28();
}

Swift::Int sub_10011F4C4(uint64_t a1)
{
  sub_1001C6DF8();
  sub_1001C60E8();
  return sub_1001C6E28();
}

uint64_t sub_10011F514@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100242358;
  v7._object = v3;
  v5 = sub_1001C6BA8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10011F59C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_100242390;
  v8._object = a2;
  v6 = sub_1001C6BA8(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10011F5F4(uint64_t a1)
{
  v2 = sub_10011FC14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011F630(uint64_t a1)
{
  v2 = sub_10011FC14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011F66C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v4 = _s15PersistentStateOMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&qword_100271C98, &qword_1001F4BA8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  sub_10009BB74(a1, a1[3]);
  sub_10011FC14();
  sub_1001C6E58();
  if (!v2)
  {
    v21 = v6;
    v11 = v24;
    v12 = sub_1001C6BE8();
    v15 = v13;
    v16 = v12 == 3157553 && v13 == 0xE300000000000000;
    if (v16 || (v20 = v12, (sub_1001C6D08() & 1) != 0))
    {

      sub_1000B3A90(a1, &v22);
      v17 = v21;
      sub_10011E9A0(&v22, v21);
      (*(v8 + 8))(v10, v7);
      sub_10011FE20(v17, v11, _s15PersistentStateOMa);
    }

    else
    {
      v24 = sub_10009BB74(a1, a1[3]);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1001C69C8(41);

      v22 = 0xD000000000000027;
      v23 = 0x8000000100202180;
      v25._countAndFlagsBits = v20;
      v25._object = v15;
      sub_1001C6138(v25);

      sub_1001C6A28();
      swift_allocError();
      sub_100145220(v18);

      swift_willThrow();
      (*(v8 + 8))(v10, v7);
    }
  }

  return sub_10008E7BC(a1);
}

uint64_t sub_10011F96C(void *a1)
{
  v2 = _s15PersistentStateO2V1VMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15PersistentStateOMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_100271D08, &qword_1001F4BC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - v10;
  sub_10009BB74(a1, a1[3]);
  sub_10011FC14();
  sub_1001C6E78();
  sub_10011FDB8(v14[1], v7, _s15PersistentStateOMa);
  sub_10011FE20(v7, v4, _s15PersistentStateO2V1VMa);
  v12 = v14[3];
  sub_1001C6C68();
  if (!v12)
  {
    sub_10011E4A4(a1);
  }

  sub_100120D10(v4, _s15PersistentStateO2V1VMa);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_10011FC14()
{
  result = qword_100271CA0;
  if (!qword_100271CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271CA0);
  }

  return result;
}

unint64_t sub_10011FC68()
{
  result = qword_100271CB0;
  if (!qword_100271CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271CB0);
  }

  return result;
}

unint64_t sub_10011FCBC()
{
  result = qword_100271CF0;
  if (!qword_100271CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271CF0);
  }

  return result;
}

unint64_t sub_10011FD10()
{
  result = qword_100271CF8;
  if (!qword_100271CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271CF8);
  }

  return result;
}

unint64_t sub_10011FD64()
{
  result = qword_100271D00;
  if (!qword_100271D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D00);
  }

  return result;
}

uint64_t sub_10011FDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011FE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011FE88(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(&qword_100271CB8, &qword_1001F4BB8);
    sub_10011FFC0(a2, _s11TrackedItemVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011FF24(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(&qword_10026F790, &qword_1001F13C0);
    sub_10011FFC0(a2, _s4DealVMa, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011FFC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100120008()
{
  result = qword_100271D40;
  if (!qword_100271D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D40);
  }

  return result;
}

unint64_t sub_10012005C()
{
  result = qword_100271D48;
  if (!qword_100271D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D48);
  }

  return result;
}

unint64_t sub_1001200B0()
{
  result = qword_100271D50;
  if (!qword_100271D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D50);
  }

  return result;
}

BOOL sub_100120104(uint64_t *a1, uint64_t *a2)
{
  updated = _s6UpdateVMa(0);
  *(&v92 + 1) = *(updated - 8);
  *&v93 = updated;
  __chkstk_darwin(updated);
  v91 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  __chkstk_darwin(v6 - 8);
  *&v92 = &v80 - v7;
  v8 = sub_100084528(&qword_100271D58, &qword_1001F4BD0);
  __chkstk_darwin(v8);
  *(&v93 + 1) = &v80 - v9;
  v10 = _s14UpdateScheduleVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100084528(&qword_100271B10, &qword_1001F4AC0);
  __chkstk_darwin(v14 - 8);
  v16 = &v80 - v15;
  v17 = sub_100084528(&qword_100271D60, &qword_1001F4BD8);
  __chkstk_darwin(v17);
  v19 = &v80 - v18;
  if ((sub_1001945AC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v89 = a2;
  v90 = a1;
  v20 = a1[1];
  v21 = a2[1];
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    v22 = sub_100194BA4(v20, v21);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v88 = _s15PersistentStateO2V1VMa(0);
  v23 = v88[6];
  v24 = *(v17 + 48);
  sub_10009ADF0(v90 + v23, v19, &qword_100271B10, &qword_1001F4AC0);
  v25 = v89 + v23;
  v26 = v24;
  sub_10009ADF0(v25, &v19[v24], &qword_100271B10, &qword_1001F4AC0);
  v27 = *(v11 + 48);
  if (v27(v19, 1, v10) == 1)
  {
    if (v27(&v19[v26], 1, v10) == 1)
    {
      sub_10008875C(v19, &qword_100271B10, &qword_1001F4AC0);
      goto LABEL_10;
    }

LABEL_21:
    v41 = &qword_100271D60;
    v42 = &qword_1001F4BD8;
    v43 = v19;
    goto LABEL_30;
  }

  sub_10009ADF0(v19, v16, &qword_100271B10, &qword_1001F4AC0);
  if (v27(&v19[v26], 1, v10) == 1)
  {
    sub_100120D10(v16, _s14UpdateScheduleVMa);
    goto LABEL_21;
  }

  sub_10011FE20(&v19[v26], v13, _s14UpdateScheduleVMa);
  if ((sub_1001C4C68() & 1) == 0)
  {
    sub_100120D10(v13, _s14UpdateScheduleVMa);
    sub_100120D10(v16, _s14UpdateScheduleVMa);
    v41 = &qword_100271B10;
    v42 = &qword_1001F4AC0;
    v43 = v19;
    goto LABEL_30;
  }

  v44 = sub_100194E78(*&v16[*(v10 + 20)], *&v13[*(v10 + 20)]);
  sub_100120D10(v13, _s14UpdateScheduleVMa);
  sub_100120D10(v16, _s14UpdateScheduleVMa);
  sub_10008875C(v19, &qword_100271B10, &qword_1001F4AC0);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v28 = v88;
  v29 = v88[7];
  v30 = *(v8 + 48);
  v31 = v90;
  v32 = *(&v93 + 1);
  sub_10009ADF0(v90 + v29, *(&v93 + 1), &qword_1002712C8, &qword_1001F3A18);
  v33 = v89;
  sub_10009ADF0(v89 + v29, v32 + v30, &qword_1002712C8, &qword_1001F3A18);
  v34 = v93;
  v35 = *(*(&v92 + 1) + 48);
  if (v35(v32, 1, v93) == 1)
  {
    if (v35(v32 + v30, 1, v34) == 1)
    {
      sub_10008875C(v32, &qword_1002712C8, &qword_1001F3A18);
      goto LABEL_13;
    }

    goto LABEL_27;
  }

  v45 = v92;
  sub_10009ADF0(v32, v92, &qword_1002712C8, &qword_1001F3A18);
  if (v35(v32 + v30, 1, v34) == 1)
  {
    sub_100120D10(v45, _s6UpdateVMa);
LABEL_27:
    v41 = &qword_100271D58;
    v42 = &qword_1001F4BD0;
LABEL_28:
    v43 = v32;
    goto LABEL_30;
  }

  v47 = v32 + v30;
  v48 = v91;
  sub_10011FE20(v47, v91, _s6UpdateVMa);
  if ((sub_1001C4C68() & 1) == 0)
  {
    sub_100120D10(v48, _s6UpdateVMa);
    sub_100120D10(v45, _s6UpdateVMa);
    v41 = &qword_1002712C8;
    v42 = &qword_1001F3A18;
    goto LABEL_28;
  }

  v49 = sub_10019E694(*(v45 + *(v34 + 20)), *(v48 + *(v34 + 20)));
  sub_100120D10(v48, _s6UpdateVMa);
  sub_100120D10(v45, _s6UpdateVMa);
  sub_10008875C(v32, &qword_1002712C8, &qword_1001F3A18);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v36 = v28[8];
  v37 = (v31 + v36);
  v38 = *(v31 + v36 + 8);
  v39 = (v33 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_1001C6D08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  v50 = v28[9];
  v51 = (v31 + v50);
  v52 = *(v31 + v50 + 16);
  v53 = (v33 + v50);
  if (v52)
  {
    if ((v53[2] & 1) == 0)
    {
      return 0;
    }

LABEL_44:
    v54 = (v31 + v28[10]);
    v55 = v54[3];
    v117 = v54[2];
    v118 = v55;
    v56 = v54[5];
    v119 = v54[4];
    v120 = v56;
    v57 = v54[1];
    v115 = *v54;
    v116 = v57;
    v58 = (v33 + v28[10]);
    v59 = v58[1];
    v121[0] = *v58;
    v121[1] = v59;
    v60 = v58[5];
    v121[4] = v58[4];
    v121[5] = v60;
    v61 = v58[3];
    v121[2] = v58[2];
    v121[3] = v61;
    v62 = v115;
    v63 = *(&v57 + 1);
    v64 = v57;
    v66 = *(&v120 + 1);
    v65 = v120;
    if (*(&v115 + 1))
    {
      if (*(&v121[0] + 1))
      {
        v86 = *(&v116 + 1);
        v87 = v119;
        v93 = v117;
        v92 = v118;
        v91 = *(&v119 + 1);
        v84 = *(&v120 + 1);
        v85 = v120;
        v103 = v121[0];
        v67 = v58[2];
        v104 = v58[1];
        v105 = v67;
        v68 = v58[4];
        v106 = v58[3];
        v107 = v68;
        v108 = v58[5];
        v69 = v104;
        v70 = v105;
        v71 = v106;
        v82 = *(&v68 + 1);
        v83 = v68;
        v80 = *(&v108 + 1);
        v81 = v108;
        if (v121[0] == v115 || (sub_1001C6D08()) && (__PAIR128__(v86, v64) == v69 || (sub_1001C6D08()) && (v93 == v70 || (sub_1001C6D08()) && (v92 == v71 || (sub_1001C6D08()))
        {
          v66 = v84;
          v33 = v89;
          v65 = v85;
          if (v87 == v83 && v91 == v82 || (sub_1001C6D08() & 1) != 0)
          {
            v63 = v86;
            if (v65 == v81 && v66 == v80)
            {
              sub_10009ADF0(&v115, &v94, &qword_1002712D0, &qword_1001F3A20);
              sub_10009ADF0(v121, &v94, &qword_1002712D0, &qword_1001F3A20);
              sub_10008875C(&v103, &qword_1002712D0, &qword_1001F3A20);
LABEL_65:
              v103 = v62;
              *&v104 = v64;
              *(&v104 + 1) = v63;
              v105 = v93;
              v106 = v92;
              *&v107 = v87;
              *(&v107 + 1) = v91;
              *&v108 = v65;
              *(&v108 + 1) = v66;
              sub_10008875C(&v103, &qword_1002712D0, &qword_1001F3A20);
              v74 = v88[11];
              v75 = (v90 + v74);
              v76 = *(v90 + v74 + 8);
              v77 = (v33 + v74);
              v78 = *(v33 + v74 + 8);
              if ((v76 & 1) == 0)
              {
                if (*v75 != *v77)
                {
                  LOBYTE(v78) = 1;
                }

                return (v78 & 1) == 0;
              }

              return v78 != 0;
            }

            v79 = sub_1001C6D08();
            sub_10009ADF0(&v115, &v94, &qword_1002712D0, &qword_1001F3A20);
            sub_10009ADF0(v121, &v94, &qword_1002712D0, &qword_1001F3A20);
            sub_10008875C(&v103, &qword_1002712D0, &qword_1001F3A20);
            if (v79)
            {
              v65 = v85;
              goto LABEL_65;
            }

            v94 = v62;
            v95 = v64;
            v96 = v63;
            v97 = v93;
            v98 = v92;
            v99 = v87;
            v100 = v91;
            v101 = v85;
            v102 = v66;
            v41 = &qword_1002712D0;
            v42 = &qword_1001F3A20;
            v43 = &v94;
LABEL_30:
            sub_10008875C(v43, v41, v42);
            return 0;
          }

          sub_10009ADF0(&v115, &v94, &qword_1002712D0, &qword_1001F3A20);
          sub_10009ADF0(v121, &v94, &qword_1002712D0, &qword_1001F3A20);
        }

        else
        {
          sub_10009ADF0(&v115, &v94, &qword_1002712D0, &qword_1001F3A20);
          sub_10009ADF0(v121, &v94, &qword_1002712D0, &qword_1001F3A20);
          v66 = v84;
          v65 = v85;
        }

        sub_10008875C(&v103, &qword_1002712D0, &qword_1001F3A20);
        v94 = v62;
        v95 = v64;
        v96 = v86;
        v97 = v93;
        v98 = v92;
        v99 = v87;
        v100 = v91;
        v101 = v65;
        v102 = v66;
        v43 = &v94;
        v41 = &qword_1002712D0;
        v42 = &qword_1001F3A20;
        goto LABEL_30;
      }
    }

    else if (!*(&v121[0] + 1))
    {
      v93 = v117;
      v92 = v118;
      v91 = *(&v119 + 1);
      v87 = v119;
      sub_10009ADF0(&v115, &v103, &qword_1002712D0, &qword_1001F3A20);
      sub_10009ADF0(v121, &v103, &qword_1002712D0, &qword_1001F3A20);
      goto LABEL_65;
    }

    v103 = v115;
    v104 = v57;
    v105 = v117;
    v106 = v118;
    v107 = v119;
    v108 = v120;
    v109 = v121[0];
    v72 = v58[4];
    v112 = v58[3];
    v113 = v72;
    v114 = v58[5];
    v73 = v58[2];
    v110 = v58[1];
    v111 = v73;
    sub_10009ADF0(&v115, &v94, &qword_1002712D0, &qword_1001F3A20);
    sub_10009ADF0(v121, &v94, &qword_1002712D0, &qword_1001F3A20);
    v41 = &unk_100271D68;
    v42 = &unk_1001F4BE0;
    v43 = &v103;
    goto LABEL_30;
  }

  if (v53[2])
  {
    return 0;
  }

  result = 0;
  if (*v51 == *v53 && v51[1] == v53[1])
  {
    goto LABEL_44;
  }

  return result;
}