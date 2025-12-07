uint64_t sub_65B364()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65B6D4;
  }

  else
  {
    v2 = sub_65B478;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65B478()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB20, &qword_B18440);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB20, &qword_B18440);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB20, &qword_B18440);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65B6D4()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB20, &qword_B18440);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB20, &qword_B18440);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB20, &qword_B18440);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65B9C0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65BAF0, 0, 0);
}

uint64_t sub_65BAF0()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB18, &qword_B18400);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB18, &qword_B18400);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB18, &qword_B18400);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210, &qword_B16F00);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB18, &qword_B18400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
  sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65C018;

  return v37(v0 + 128);
}

uint64_t sub_65C018()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65C388;
  }

  else
  {
    v2 = sub_65C12C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65C12C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB18, &qword_B18400);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB18, &qword_B18400);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB18, &qword_B18400);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65C388()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB18, &qword_B18400);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB18, &qword_B18400);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB18, &qword_B18400);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65C674(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v4 + 904) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 912) = v6;
  *(v4 + 920) = *(v6 - 8);
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = swift_task_alloc();
  *(v4 + 944) = swift_task_alloc();
  v7 = a4[3];
  *(v4 + 144) = a4[2];
  *(v4 + 160) = v7;
  v8 = a4[5];
  *(v4 + 176) = a4[4];
  *(v4 + 192) = v8;
  v9 = a4[1];
  *(v4 + 112) = *a4;
  *(v4 + 128) = v9;

  return _swift_task_switch(sub_65C79C, 0, 0);
}

uint64_t sub_65C79C()
{
  v38 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 952) = v4;
  v5 = *(v2 + 16);
  *(v0 + 960) = v5;
  *(v0 + 968) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v6;
  v7 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v7;
  v8 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v8;
  sub_15F84(v0 + 16, v0 + 208, &qword_E0EB70, &qword_B184E0);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 944);
  v13 = *(v0 + 920);
  v14 = *(v0 + 912);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 48));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB70, &qword_B184E0);
    v20 = sub_500C84(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB70, &qword_B184E0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 904);
  sub_13C80(0, &qword_E0E218, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210, &qword_B16F00);
  *(v0 + 880) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 888) = v25;
  v26 = *(v0 + 160);
  *(v0 + 336) = *(v0 + 144);
  *(v0 + 352) = v26;
  v27 = *(v0 + 192);
  *(v0 + 368) = *(v0 + 176);
  *(v0 + 384) = v27;
  v28 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v28;
  v29 = *(v0 + 384);
  v30 = swift_allocObject();
  v31 = *(v0 + 160);
  v30[3] = *(v0 + 144);
  v30[4] = v31;
  v32 = *(v0 + 192);
  v30[5] = *(v0 + 176);
  v30[6] = v32;
  v33 = *(v0 + 128);
  v30[1] = *(v0 + 112);
  v30[2] = v33;
  sub_15F84(v0 + 304, v0 + 400, &qword_E0EB70, &qword_B184E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
  sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 976) = sub_AB55C0();

  v36 = (v29 + *v29);
  v34 = swift_task_alloc();
  *(v0 + 984) = v34;
  *v34 = v0;
  v34[1] = sub_65CCAC;

  return v36(v0 + 112);
}

uint64_t sub_65CCAC()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_65D014;
  }

  else
  {
    v2 = sub_65CDC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65CDC0()
{
  v24 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 720) = *(v0 + 144);
  *(v0 + 736) = v5;
  v6 = *(v0 + 192);
  *(v0 + 752) = *(v0 + 176);
  *(v0 + 768) = v6;
  v7 = *(v0 + 128);
  *(v0 + 688) = *(v0 + 112);
  *(v0 + 704) = v7;
  sub_15F84(v0 + 688, v0 + 784, &qword_E0EB70, &qword_B184E0);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 936);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  if (v10)
  {
    v22 = *(v0 + 936);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 720));
    v18 = v17;
    sub_12E1C(v0 + 688, &qword_E0EB70, &qword_B184E0);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 688, &qword_E0EB70, &qword_B184E0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65D014()
{
  v28 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 928);
  v4 = *(v0 + 912);

  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 528) = *(v0 + 144);
  *(v0 + 544) = v5;
  v6 = *(v0 + 192);
  *(v0 + 560) = *(v0 + 176);
  *(v0 + 576) = v6;
  v7 = *(v0 + 128);
  *(v0 + 496) = *(v0 + 112);
  *(v0 + 512) = v7;
  sub_15F84(v0 + 496, v0 + 592, &qword_E0EB70, &qword_B184E0);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 992);
    v26 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    sub_12E1C(v0 + 496, &qword_E0EB70, &qword_B184E0);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 896) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 928);
    v22 = *(v0 + 920);
    v23 = *(v0 + 912);

    sub_12E1C(v0 + 496, &qword_E0EB70, &qword_B184E0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65D2F8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65D428, 0, 0);
}

uint64_t sub_65D428()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB50, &qword_B184B0);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB50, &qword_B184B0);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB50, &qword_B184B0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210, &qword_B16F00);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB50, &qword_B184B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
  sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65D950;

  return v37(v0 + 128);
}

uint64_t sub_65D950()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65DCC0;
  }

  else
  {
    v2 = sub_65DA64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65DA64()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB50, &qword_B184B0);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB50, &qword_B184B0);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB50, &qword_B184B0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65DCC0()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB50, &qword_B184B0);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB50, &qword_B184B0);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB50, &qword_B184B0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65DFAC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65E0DC, 0, 0);
}

uint64_t sub_65E0DC()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB48, &qword_B1F260);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB48, &qword_B1F260);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB48, &qword_B1F260);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210, &qword_B16F00);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB48, &qword_B1F260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
  sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65E604;

  return v37(v0 + 128);
}

uint64_t sub_65E604()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65E974;
  }

  else
  {
    v2 = sub_65E718;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65E718()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB48, &qword_B1F260);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB48, &qword_B1F260);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB48, &qword_B1F260);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65E974()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB48, &qword_B1F260);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB48, &qword_B1F260);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB48, &qword_B1F260);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65EC60(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65ED90, 0, 0);
}

uint64_t sub_65ED90()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB40, &unk_B18490);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB40, &unk_B18490);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB40, &unk_B18490);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210, &qword_B16F00);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB40, &unk_B18490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
  sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65F2B8;

  return v37(v0 + 128);
}

uint64_t sub_65F2B8()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_65F628;
  }

  else
  {
    v2 = sub_65F3CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_65F3CC()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB40, &unk_B18490);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB40, &unk_B18490);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB40, &unk_B18490);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_65F628()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB40, &unk_B18490);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB40, &unk_B18490);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB40, &unk_B18490);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_65F914(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_AB4BC0();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_65FA44, 0, 0);
}

uint64_t sub_65FA44()
{
  v39 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_15F84(v0 + 16, v0 + 240, &qword_E0EB38, &qword_B1F2B0);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_12E1C(v0 + 16, &qword_E0EB38, &qword_B1F2B0);
    v20 = sub_500C84(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EB38, &qword_B1F2B0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_13C80(0, &qword_E0E218, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v21, &qword_E0E210, &qword_B16F00);
  *(v0 + 1024) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_15F84(v0 + 352, v0 + 464, &qword_E0EB38, &qword_B1F2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
  sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_AB55C0();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_65FF6C;

  return v37(v0 + 128);
}

uint64_t sub_65FF6C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_6602DC;
  }

  else
  {
    v2 = sub_660080;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_660080()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_AB5450();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_15F84(v0 + 800, v0 + 912, &qword_E0EB38, &qword_B1F2B0);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_12E1C(v0 + 800, &qword_E0EB38, &qword_B1F2B0);
    v19 = sub_500C84(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish success", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_12E1C(v0 + 800, &qword_E0EB38, &qword_B1F2B0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_6602DC()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_15F84(v0 + 576, v0 + 688, &qword_E0EB38, &qword_B1F2B0);
  swift_errorRetain();
  v8 = sub_AB4BA0();
  v9 = sub_AB9F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_12E1C(v0 + 576, &qword_E0EB38, &qword_B1F2B0);
    v17 = sub_500C84(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_12E1C(v0 + 576, &qword_E0EB38, &qword_B1F2B0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_6605C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1064) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  *(v5 + 1072) = swift_task_alloc();
  v7 = sub_AB4BC0();
  *(v5 + 1080) = v7;
  *(v5 + 1088) = *(v7 - 8);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1176) = a5;

  return _swift_task_switch(sub_6606E0, 0, 0);
}

uint64_t sub_6606E0()
{
  v32 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1064);
  v5 = __swift_project_value_buffer(v3, qword_E0E1F8);
  *(v0 + 1120) = v5;
  v6 = *(v2 + 16);
  *(v0 + 1128) = v6;
  *(v0 + 1136) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  sub_15F84(v4, v0 + 16, &qword_E0EEA8, &qword_B18DC8);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1112);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1080);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446210;
    v15 = *(v0 + 208);
    sub_12E1C(v0 + 16, &qword_E0EEA8, &qword_B18DC8);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_500C84(v16, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: finishing…", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_12E1C(v0 + 16, &qword_E0EEA8, &qword_B18DC8);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 1144) = v19;
  v20 = *(v0 + 1072);
  v21 = *(v0 + 1064);
  sub_13C80(0, &qword_E0E218, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_ABA930();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = sub_ABA730();

  sub_12E1C(v20, &qword_E0E210, &qword_B16F00);
  *(v0 + 1040) = v24;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_AB54B0();

  *(v0 + 1048) = v25;
  sub_15F84(v21, v0 + 272, &qword_E0EEA8, &qword_B18DC8);
  v26 = swift_allocObject();
  sub_36B0C(v0 + 272, v26 + 16, &qword_E0EEA8, &qword_B18DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
  sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1152) = sub_AB55C0();

  v30 = (*(v21 + 240) + **(v21 + 240));
  v27 = swift_task_alloc();
  *(v0 + 1160) = v27;
  *v27 = v0;
  v27[1] = sub_660BC8;
  v28 = *(v0 + 1064);

  return v30(v28, v0 + 1176);
}

uint64_t sub_660BC8()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_660F2C;
  }

  else
  {
    v2 = sub_660CDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_660CDC()
{
  v23 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);
  sub_AB5450();
  v1(v3, v2, v4);
  sub_15F84(v5, v0 + 784, &qword_E0EEA8, &qword_B18DC8);
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1080);
  if (v8)
  {
    v21 = *(v0 + 1144);
    v12 = swift_slowAlloc();
    v20 = v10;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = *(v0 + 976);
    sub_12E1C(v0 + 784, &qword_E0EEA8, &qword_B18DC8);
    v15 = ActionType.rawValue.getter(v14);
    v17 = sub_500C84(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v6, v7, "%{public}s: finish success", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);

    v21(v20, v11);
  }

  else
  {
    sub_12E1C(v0 + 784, &qword_E0EEA8, &qword_B18DC8);

    v9(v10, v11);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_660F2C()
{
  v26 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);

  v1(v3, v2, v4);
  sub_15F84(v5, v0 + 528, &qword_E0EEA8, &qword_B18DC8);
  swift_errorRetain();
  v6 = sub_AB4BA0();
  v7 = sub_AB9F30();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1168);
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1144);
    v9 = *(v0 + 1080);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    sub_12E1C(v0 + 528, &qword_E0EEA8, &qword_B18DC8);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_500C84(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1056) = v8;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v15 = sub_AB9350();
    v17 = sub_500C84(v15, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_0, v6, v7, "%{public}s: finish failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1144);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1080);
    sub_12E1C(v0 + 528, &qword_E0EEA8, &qword_B18DC8);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_661200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E210, &qword_B16F00);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30, &unk_B1F190);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_AB4BC0();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_6613A4, 0, 0);
}

uint64_t sub_6613A4()
{
  v37 = v0;
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = __swift_project_value_buffer(v2, qword_E0E1F8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_15F84(v5, v4, &qword_E0EC30, &unk_B1F190);
  v8 = sub_AB4BA0();
  v9 = sub_AB9F50();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    sub_12E1C(v14, &qword_E0EC30, &unk_B1F190);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_500C84(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_12E1C(v0[13], &qword_E0EC30, &unk_B1F190);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_13C80(0, &qword_E0E218, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_ABA930();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_ABA730();

  sub_12E1C(v23, &qword_E0E210, &qword_B16F00);
  v0[2] = v28;
  sub_ABA720();
  sub_673544(&qword_E0E220, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = sub_AB54B0();

  v0[3] = v29;
  sub_15F84(v25, v21, &qword_E0EC30, &unk_B1F190);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_36B0C(v21, v31 + v30, &qword_E0EC30, &unk_B1F190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E228, &qword_B16F08);
  sub_36A00(&qword_E0E230, &qword_E0E228, &qword_B16F08, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = sub_AB55C0();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_6618A8;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_6618A8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_661C1C;
  }

  else
  {
    v2 = sub_6619BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6619BC()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_AB5450();
  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EC30, &unk_B1F190);
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_12E1C(v13, &qword_E0EC30, &unk_B1F190);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_500C84(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: finish success", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_12E1C(v0[11], &qword_E0EC30, &unk_B1F190);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_661C1C()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_15F84(v6, v5, &qword_E0EC30, &unk_B1F190);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_12E1C(v12, &qword_E0EC30, &unk_B1F190);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_500C84(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v18 = sub_AB9350();
    v20 = sub_500C84(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    sub_12E1C(v0[10], &qword_E0EC30, &unk_B1F190);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_661F10(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_AB4BC0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_E0E1F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_15F84(a2, v21, &qword_E0EAA8, &qword_B1F440);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 72));
    v17 = v16;
    sub_12E1C(a2, &qword_E0EAA8, &qword_B1F440);
    v18 = sub_500C84(v15, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, v20, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_12E1C(a2, &qword_E0EAA8, &qword_B1F440);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_66216C(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_AB4BC0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_E0E1F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_15F84(a2, v22, &qword_E0EB70, &qword_B184E0);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 32));
    v17 = v16;
    sub_12E1C(a2, &qword_E0EB70, &qword_B184E0);
    v18 = sub_500C84(v15, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_12E1C(a2, &qword_E0EB70, &qword_B184E0);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_6623C8(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_AB4BC0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CB90 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_E0E1F8);
  (*(v6 + 16))(v8, v9, v5);
  sub_15F84(a2, v23, &qword_E0EEA8, &qword_B18DC8);
  v10 = sub_AB4BA0();
  v11 = sub_AB9F50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = v23[192];
    sub_12E1C(v23, &qword_E0EEA8, &qword_B18DC8);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_500C84(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_12E1C(v23, &qword_E0EEA8, &qword_B18DC8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_662620(uint64_t a1, char a2)
{
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v5 = (&v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_673A10(v5, type metadata accessor for Notice);
  }

  v7 = Strong;
  sub_720A4C(v12);

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v9 + 8))(v5, a2 & 1, v8, v9);
    sub_673A10(v5, type metadata accessor for Notice);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_673A10(v5, type metadata accessor for Notice);
    return sub_12E1C(v12, &qword_E0EB30, &qword_B18450);
  }
}

uint64_t MusicLibrary.ActionableState.description.getter(uint64_t a1, unsigned __int16 a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11AA0, &unk_B1EEA0) - 8);
  __chkstk_darwin();
  v7 = v18 - v6;
  if (!(a2 >> 14))
  {
    v9 = a1;
    v10 = 0xE000000000000000;
    if (v9 == 5)
    {
      v11._countAndFlagsBits = 0;
LABEL_31:
      v20 = 0x6164644120959EE2;
      v21 = 0xAB00000000656C62;
      v11._object = v10;
      sub_AB94A0(v11);

      return v20;
    }

    v14 = 0xD000000000000016;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_ABAD90(29);

    v20 = 0xD00000000000001BLL;
    v21 = 0x8000000000B6F6B0;
    if (v9 <= 1)
    {
      if (v9)
      {
        v15 = "Cloud Library Initial Import";
        v14 = 0xD00000000000001FLL;
        goto LABEL_30;
      }

      v17 = "Cloud Library Required";
    }

    else
    {
      if (v9 == 2)
      {
        v15 = "Unadded Tracks Present";
        v14 = 0xD00000000000001CLL;
        goto LABEL_30;
      }

      if (v9 == 3)
      {
        v15 = "ubscriptionStatus8@NSError16";
        v14 = 0xD000000000000015;
LABEL_30:
        v19._countAndFlagsBits = v14;
        v19._object = (v15 | 0x8000000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0, &qword_B196A0);
        v23._countAndFlagsBits = sub_AB9350();
        sub_AB94A0(v23);

        v11._countAndFlagsBits = v20;
        v10 = v21;
        goto LABEL_31;
      }

      v17 = "Unadded Tracks Present";
    }

    v15 = (v17 - 32);
    goto LABEL_30;
  }

  if (a2 >> 14 == 1)
  {
    if ((a2 & 0x100) != 0)
    {
      v8 = 9;
      return v8 | 0x1000000000000014;
    }

    if (a2)
    {
      v8 = 10;
      return v8 | 0x1000000000000014;
    }

    v20 = 0;
    v21 = 0xE000000000000000;
    v16 = v5;
    sub_ABAD90(24);

    v20 = 0x1000000000000014;
    v21 = 0x8000000000B6F630;
    v18[1] = a1;
    sub_AB34F0();
    sub_662C00();
    sub_AB3070();
    sub_36A00(&qword_E11AB0, &qword_E11AA0, &unk_B1EEA0, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
    sub_AB8FC0();
    (*(v4 + 8))(v7, v16);
    sub_AB94A0(v19);

    v22._countAndFlagsBits = 8233;
    v22._object = 0xE200000000000000;
    sub_AB94A0(v22);
    return v20;
  }

  if (!(a1 | a2 ^ 0x8000))
  {
    return 1701736270;
  }

  if (a2 == 0x8000 && a1 == 1)
  {
    return 0x1000000000000013;
  }

  else
  {
    return 0x1000000000000014;
  }
}

unint64_t MusicLibrary.ActionableState.AddOverride.description.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001CLL;
  v3 = 0xD000000000000015;
  if (a1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_662C00()
{
  result = qword_E11AA8;
  if (!qword_E11AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11AA8);
  }

  return result;
}

uint64_t MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1496) = v8;
  *(v9 + 1488) = v24;
  *(v9 + 1480) = a8;
  *(v9 + 1472) = a7;
  *(v9 + 1464) = a6;
  *(v9 + 1456) = a5;
  *(v9 + 1448) = a4;
  *(v9 + 1440) = a3;
  *(v9 + 1402) = a2;
  *(v9 + 1432) = a1;
  v10 = *a4;
  *(v9 + 1504) = *a4;
  v11 = sub_AB8CB0();
  *(v9 + 1512) = v11;
  *(v9 + 1520) = *(v11 - 8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F288, &qword_B19688);
  *(v9 + 1544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F158, &unk_B1EEC0);
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  *(v9 + 1568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00, &qword_B1A0A0);
  *(v9 + 1576) = swift_task_alloc();
  v12 = sub_AB8E20();
  *(v9 + 1584) = v12;
  *(v9 + 1592) = *(v12 - 8);
  *(v9 + 1600) = swift_task_alloc();
  v13 = sub_AB8230();
  *(v9 + 1608) = v13;
  *(v9 + 1616) = *(v13 - 8);
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();
  *(v9 + 1640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0, &unk_B182A0);
  *(v9 + 1648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348, &unk_B17520);
  *(v9 + 1656) = swift_task_alloc();
  *(v9 + 1664) = swift_task_alloc();
  *(v9 + 1672) = swift_task_alloc();
  *(v9 + 1680) = swift_task_alloc();
  *(v9 + 1688) = swift_task_alloc();
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  *(v9 + 1720) = type metadata accessor for MetricsEvent.Click(0);
  *(v9 + 1728) = swift_task_alloc();
  *(v9 + 1736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  *(v9 + 1744) = swift_task_alloc();
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = type metadata accessor for Notice.Variant(0);
  *(v9 + 1776) = swift_task_alloc();
  v14 = sub_AB3470();
  *(v9 + 1784) = v14;
  *(v9 + 1792) = *(v14 - 8);
  *(v9 + 1800) = swift_task_alloc();
  sub_AB35C0();
  *(v9 + 1808) = swift_task_alloc();
  v15 = sub_AB9250();
  *(v9 + 1816) = v15;
  *(v9 + 1824) = *(v15 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v16 = sub_AB8420();
  *(v9 + 1848) = v16;
  *(v9 + 1856) = *(v16 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  v17 = sub_AB8240();
  *(v9 + 1888) = v17;
  *(v9 + 1896) = *(v17 - 8);
  *(v9 + 1904) = swift_task_alloc();
  *(v9 + 1912) = swift_task_alloc();
  v18 = sub_AB8440();
  *(v9 + 1920) = v18;
  *(v9 + 1928) = *(v18 - 8);
  *(v9 + 1936) = swift_task_alloc();
  *(v9 + 1944) = swift_task_alloc();
  v19 = *(v10 + class metadata base offset for MusicLibrary.ItemState);
  *(v9 + 1952) = v19;
  *(v9 + 1960) = *(v19 - 8);
  *(v9 + 1968) = swift_task_alloc();
  *(v9 + 1976) = swift_task_alloc();
  *(v9 + 1984) = swift_task_alloc();
  *(v9 + 1992) = swift_task_alloc();
  *(v9 + 2000) = swift_task_alloc();
  *(v9 + 2008) = sub_AB9940();
  *(v9 + 2016) = sub_AB9930();
  v21 = sub_AB98B0();
  *(v9 + 2024) = v21;
  *(v9 + 2032) = v20;

  return _swift_task_switch(sub_6633B4, v21, v20);
}

uint64_t sub_6633B4()
{
  v553 = v0;
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2000);
  v2 = *(v0 + 1960);
  v3 = *(v0 + 1952);
  v4 = *(v0 + 1440);
  v518 = sub_AB4BC0();
  *(v0 + 2040) = __swift_project_value_buffer(v518, static Logger.libraryActionableState);
  v5 = *(v2 + 16);
  *(v0 + 2048) = v5;
  *(v0 + 2056) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v5)(v1, v4, v3);
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2000);
  v524 = v5;
  if (v8)
  {
    v10 = *(v0 + 1992);
    v11 = *(v0 + 1960);
    v12 = *(v0 + 1952);
    v13 = swift_slowAlloc();
    v514 = v0;
    v14 = swift_slowAlloc();
    v552[0] = v14;
    *v13 = 136446210;
    (v5)(v10, v9, v12);
    v15 = sub_AB9350();
    v17 = v16;
    (*(v11 + 8))(v9, v12);
    v18 = sub_500C84(v15, v17, v552);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v6, v7, "╭ Performing action for item: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v0 = v514;
  }

  else
  {
    v19 = *(v0 + 1960);
    v20 = *(v0 + 1952);

    (*(v19 + 8))(v9, v20);
  }

  v21 = sub_AB4BA0();
  v22 = sub_AB9F50();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1432);
    v24 = *(v0 + 1402);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v552[0] = v26;
    *v25 = 136446210;
    v27 = MusicLibrary.ActionableState.description.getter(v23, v24);
    v29 = sub_500C84(v27, v28, v552);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_0, v21, v22, "| Actionable state: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  v30 = sub_AB4BA0();
  v31 = sub_AB9F50();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 1944);
    v33 = *(v0 + 1928);
    v34 = *(v0 + 1920);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v552[0] = v36;
    *v35 = 136446210;
    sub_AB84B0();
    sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v37 = sub_ABB330();
    v39 = v38;
    (*(v33 + 8))(v32, v34);
    v40 = sub_500C84(v37, v39, v552);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_0, v30, v31, "| Add status: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  v41 = sub_AB4BA0();
  v42 = sub_AB9F50();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1912);
    v44 = *(v0 + 1896);
    v45 = *(v0 + 1888);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v552[0] = v47;
    *v46 = 136446210;
    sub_AB8460();
    sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v48 = sub_ABB330();
    v50 = v49;
    (*(v44 + 8))(v43, v45);
    v51 = sub_500C84(v48, v50, v552);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_0, v41, v42, "| Download status: %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
  }

  v52 = sub_AB4BA0();
  v53 = sub_AB9F50();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v552[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = sub_AB8380();
    v57 = sub_500C84(v55, v56, v552);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v58 = sub_AB8350();
    v60 = sub_500C84(v58, v59, v552);

    *(v54 + 14) = v60;
    _os_log_impl(&dword_0, v52, v53, "| Library: %{public}s (%{public}s)", v54, 0x16u);
    swift_arrayDestroy();
  }

  v61 = *(v0 + 1402);
  if (v61 >> 14)
  {
    if (v61 >> 14 == 1)
    {
      if ((v61 & 0x100) == 0)
      {
        v62 = sub_AB4BA0();
        v63 = sub_AB9F50();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_0, v62, v63, "|—● Cancelling download", v64, 2u);
        }

        v65 = swift_task_alloc();
        *(v0 + 2184) = v65;
        *v65 = v0;
        v65[1] = sub_668098;
        v66 = *(v0 + 1952);
        v67 = *(v0 + 1488);
        v68 = *(v0 + 1440);

        return MusicLibrary.cancelDownload<A>(_:)(v68, v66, v67);
      }

      v113 = sub_AB4BA0();
      v114 = sub_AB9F50();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&dword_0, v113, v114, "|—● Download is paused: Checking for reasons…", v115, 2u);
      }

      v116 = *(v0 + 1904);
      v117 = *(v0 + 1896);
      v118 = *(v0 + 1888);

      sub_AB8460();
      v119 = (*(v117 + 88))(v116, v118);
      v120 = *(v0 + 1904);
      v121 = *(v0 + 1896);
      v122 = *(v0 + 1888);
      if (v119 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        v123 = *(v0 + 1640);
        v124 = *(v0 + 1616);
        v125 = *(v0 + 1608);
        (*(v121 + 96))(*(v0 + 1904), v122);
        (*(v124 + 32))(v123, v120, v125);
        MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter((v0 + 1120));
        v126 = *(v0 + 1176);
        v127 = *(v0 + 1640);
        v128 = *(v0 + 1616);
        v129 = *(v0 + 1608);
        if (v126)
        {
          v130 = *(v0 + 1632);
          v131 = *(v0 + 1184);
          v132 = *(v0 + 1136);
          *(v0 + 1048) = *(v0 + 1120);
          *(v0 + 1064) = v132;
          *(v0 + 1080) = *(v0 + 1152);
          *(v0 + 1096) = *(v0 + 1168);
          *(v0 + 1104) = v126;
          *(v0 + 1112) = v131;
          (*(v128 + 16))(v130, v127, v129);
          v133 = sub_AB4BA0();
          v134 = sub_AB9F50();
          v135 = os_log_type_enabled(v133, v134);
          v136 = *(v0 + 1632);
          v137 = *(v0 + 1616);
          v138 = *(v0 + 1608);
          if (v135)
          {
            v531 = swift_slowAlloc();
            v538 = swift_slowAlloc();
            v552[0] = v538;
            *v531 = 136446210;
            sub_673544(&qword_E11AD0, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v526 = v134;
            v139 = sub_ABB330();
            v141 = v140;
            v519 = v133;
            v142 = *(v137 + 8);
            v142(v136, v138);
            v143 = v142;
            v144 = sub_500C84(v139, v141, v552);

            *(v531 + 4) = v144;
            _os_log_impl(&dword_0, v519, v526, "|—| Showing alert for reason: %{public}s", v531, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v538);
          }

          else
          {

            v448 = *(v137 + 8);
            v448(v136, v138);
            v143 = v448;
          }

          v449 = *(v0 + 1640);
          v450 = *(v0 + 1608);
          v451 = sub_5B4DF0((v0 + 1048), 0, 1);
          PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v451, *(v0 + 1080), 1, 0, 0);

          sub_12E1C(v0 + 1120, &qword_E0F9B0, &qword_B1EF00);
          v143(v449, v450);
        }

        else
        {
          (*(v128 + 16))(*(v0 + 1624), v127, v129);
          v401 = sub_AB4BA0();
          v402 = sub_AB9F30();
          v403 = os_log_type_enabled(v401, v402);
          v404 = *(v0 + 1640);
          v405 = *(v0 + 1624);
          v406 = *(v0 + 1616);
          v407 = *(v0 + 1608);
          if (v403)
          {
            v547 = *(v0 + 1640);
            v408 = swift_slowAlloc();
            v535 = swift_slowAlloc();
            v552[0] = v535;
            *v408 = 136446210;
            sub_673544(&qword_E11AD0, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v409 = sub_ABB330();
            v411 = v410;
            v412 = *(v406 + 8);
            v412(v405, v407);
            v413 = sub_500C84(v409, v411, v552);

            *(v408 + 4) = v413;
            _os_log_impl(&dword_0, v401, v402, "|—| Unhandled alert for reason: %{public}s", v408, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v535);

            v412(v547, v407);
          }

          else
          {

            v460 = *(v406 + 8);
            v460(v405, v407);
            v460(v404, v407);
          }
        }
      }

      else
      {
        v239 = *(v121 + 8);
        v239(*(v0 + 1904), v122);

        v240 = sub_AB4BA0();
        v241 = sub_AB9F50();

        if (os_log_type_enabled(v240, v241))
        {
          v242 = *(v0 + 1912);
          v243 = *(v0 + 1888);
          v244 = swift_slowAlloc();
          v542 = swift_slowAlloc();
          v552[0] = v542;
          *v244 = 136446210;
          sub_AB8460();
          sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
          v245 = sub_ABB330();
          v247 = v246;
          v239(v242, v243);
          v248 = sub_500C84(v245, v247, v552);

          *(v244 + 4) = v248;
          _os_log_impl(&dword_0, v240, v241, "|—| No reasons found, download status does not match UI state %{public}s", v244, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v542);
        }
      }

      goto LABEL_145;
    }

    v96 = *(v0 + 1432);
    if (v96 | v61 ^ 0x8000)
    {
      if (*(v0 + 1402) == 0x8000 && v96 == 1)
      {
        v98 = sub_AB4BA0();
        v99 = sub_AB9F50();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&dword_0, v98, v99, "|—● Triggering download", v100, 2u);
        }

        v101 = *(v0 + 1992);
        v102 = *(v0 + 1952);
        v103 = *(v0 + 1648);
        v104 = *(v0 + 1504);
        v105 = *(v0 + 1496);
        v536 = *(v0 + 1488);
        v106 = *(v0 + 1480);
        v107 = *(v0 + 1456);
        v108 = *(v0 + 1440);

        (v524)(v101, v108, v102);
        sub_15F28(v107, v0 + 688);
        sub_672900(v106, v103);
        v109 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v109 - 8) + 56))(v103, 0, 1, v109);
        v110 = *(v104 + class metadata base offset for MusicLibrary.ItemState + 8);

        Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v101, v105, v0 + 688, v103, v102, v536, v110, &v549);
        *(v0 + 2144) = *(&v549 + 1);
        *(v0 + 2152) = *(&v550 + 1);
        *(v0 + 2160) = *(&v551 + 1);
        v111 = v550;
        *(v0 + 384) = v549;
        *(v0 + 400) = v111;
        *(v0 + 416) = v551;
        *(v0 + 432) = 1;
        *(v0 + 440) = sub_53842C;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0x4014000000000000;
        *(v0 + 464) = &unk_B18E38;
        v537 = sub_640458;
        *(v0 + 472) = 0;
        *(v0 + 480) = &unk_B18E40;
        *(v0 + 488) = 0;

        v112 = swift_task_alloc();
        *(v0 + 2168) = v112;
        *v112 = v0;
        v112[1] = sub_667BFC;
        goto LABEL_36;
      }

      v215 = sub_AB4BA0();
      v216 = sub_AB9F50();
      if (os_log_type_enabled(v215, v216))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&dword_0, v215, v216, "|—● Is Downloaded: Prompting for delete/remove alert", v218, 2u);
      }

      v219 = *(v0 + 1984);
      v220 = *(v0 + 1952);
      v221 = *(v0 + 1592);
      v222 = *(v0 + 1440);

      (v524)(v219, v222, v220);
      v223 = swift_dynamicCast();
      v224 = *(v221 + 56);
      if ((v223 & 1) == 0)
      {
        v359 = *(v0 + 1576);
        v224(v359, 1, 1, *(v0 + 1584));
        sub_12E1C(v359, &qword_E10B00, &qword_B1A0A0);
        v238 = v524;
LABEL_134:
        v437 = *(v0 + 1992);
        v438 = *(v0 + 1952);
        v439 = *(v0 + 1648);
        v440 = *(v0 + 1504);
        v441 = *(v0 + 1488);
        v442 = *(v0 + 1480);
        v443 = *(v0 + 1456);
        (v238)(v437, *(v0 + 1440), v438);
        sub_15F28(v443, v0 + 496);
        sub_672900(v442, v439);
        v444 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v444 - 8) + 56))(v439, 0, 1, v444);
        sub_AB8510();
        v445 = sub_AB8500();
        Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v437, v445, v0 + 496, v439, v438, v441, *(v440 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 16));
        v446 = swift_allocObject();
        *(v446 + 16) = &unk_B18AE0;
        *(v446 + 24) = 0;
        *(v0 + 208) = 51;
        *(v0 + 224) = 0;
        *(v0 + 232) = 0x403E000000000000;
        *(v0 + 216) = sub_54E2E4;
        *(v0 + 240) = &unk_B18AF8;
        *(v0 + 248) = v446;
        *(v0 + 256) = &unk_B18AE8;
        *(v0 + 264) = 0;
        v447 = swift_task_alloc();
        *(v0 + 2216) = v447;
        *v447 = v0;
        v447[1] = sub_668994;

        return sub_64FE74(0);
      }

      v225 = *(v0 + 1600);
      v226 = *(v0 + 1592);
      v227 = *(v0 + 1584);
      v228 = *(v0 + 1576);
      v522 = *(v0 + 1568);
      v229 = *(v0 + 1560);
      v230 = *(v0 + 1544);
      v541 = *(v0 + 1536);
      v231 = *(v0 + 1520);
      v232 = *(v0 + 1512);
      v224(v228, 0, 1, v227);
      (*(v226 + 32))(v225, v228, v227);
      v233 = v230;
      sub_AB8CD0();
      (*(v231 + 104))(v229, enum case for Playlist.Variant.favoriteSongs(_:), v232);
      (*(v231 + 56))(v229, 0, 1, v232);
      v234 = *(v541 + 12);
      sub_15F84(v522, v230, &qword_E0F158, &unk_B1EEC0);
      sub_15F84(v229, v230 + v234, &qword_E0F158, &unk_B1EEC0);
      v235 = *(v231 + 48);
      if (v235(v233, 1, v232) == 1)
      {
        v236 = *(v0 + 1568);
        v237 = *(v0 + 1512);
        sub_12E1C(*(v0 + 1560), &qword_E0F158, &unk_B1EEC0);
        sub_12E1C(v236, &qword_E0F158, &unk_B1EEC0);
        if (v235(v233 + v234, 1, v237) == 1)
        {
          sub_12E1C(*(v0 + 1544), &qword_E0F158, &unk_B1EEC0);
          v238 = v524;
LABEL_152:
          v466 = *(v0 + 1992);
          v467 = *(v0 + 1952);
          v468 = *(v0 + 1648);
          v469 = *(v0 + 1504);
          v470 = *(v0 + 1488);
          v471 = *(v0 + 1480);
          v472 = *(v0 + 1456);
          (v238)(v466, *(v0 + 1440), v467);
          sub_15F28(v472, v0 + 592);
          sub_672900(v471, v468);
          v473 = type metadata accessor for Actions.MetricsReportingContext(0);
          (*(*(v473 - 8) + 56))(v468, 0, 1, v473);
          sub_AB8510();
          v474 = sub_AB8500();
          Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v466, v474, 1, v0 + 592, v468, v467, v470, *(v469 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 272));
          *(v0 + 320) = 48;
          *(v0 + 328) = sub_53842C;
          *(v0 + 336) = 0;
          *(v0 + 344) = 0x4014000000000000;
          *(v0 + 352) = &unk_B191A0;
          v537 = sub_641938;
          *(v0 + 360) = 0;
          *(v0 + 368) = &unk_B191A8;
          *(v0 + 376) = 0;
          v475 = swift_task_alloc();
          *(v0 + 2200) = v475;
          *v475 = v0;
          v475[1] = sub_6684F8;
LABEL_36:

          return v537();
        }
      }

      else
      {
        v430 = *(v0 + 1512);
        sub_15F84(*(v0 + 1544), *(v0 + 1552), &qword_E0F158, &unk_B1EEC0);
        v431 = v235(v233 + v234, 1, v430);
        v432 = *(v0 + 1568);
        v433 = *(v0 + 1560);
        v434 = *(v0 + 1552);
        if (v431 != 1)
        {
          v548 = *(v0 + 1544);
          v461 = *(v0 + 1528);
          v462 = *(v0 + 1520);
          v463 = *(v0 + 1512);
          (*(v462 + 32))(v461, v233 + v234, v463);
          sub_673544(&qword_E103A0, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
          v464 = sub_AB91C0();
          v465 = *(v462 + 8);
          v465(v461, v463);
          sub_12E1C(v433, &qword_E0F158, &unk_B1EEC0);
          sub_12E1C(v432, &qword_E0F158, &unk_B1EEC0);
          v465(v434, v463);
          sub_12E1C(v548, &qword_E0F158, &unk_B1EEC0);
          v238 = v524;
          if (v464)
          {
            goto LABEL_152;
          }

          goto LABEL_133;
        }

        v435 = *(v0 + 1520);
        v436 = *(v0 + 1512);
        sub_12E1C(*(v0 + 1560), &qword_E0F158, &unk_B1EEC0);
        sub_12E1C(v432, &qword_E0F158, &unk_B1EEC0);
        (*(v435 + 8))(v434, v436);
      }

      sub_12E1C(*(v0 + 1544), &qword_E0F288, &qword_B19688);
      v238 = v524;
LABEL_133:
      (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
      goto LABEL_134;
    }

    v178 = sub_AB4BA0();
    v179 = sub_AB9F50();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&dword_0, v178, v179, "|—● Nothing to Perform: Actionable State is unknown", v180, 2u);
    }

    sub_6728AC();
    v181 = swift_allocError();
    swift_willThrow();
    goto LABEL_54;
  }

  v69 = *(v0 + 1936);
  v70 = *(v0 + 1928);
  v71 = *(v0 + 1920);
  sub_AB84B0();
  if ((*(v70 + 88))(v69, v71) == enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    v72 = *(v0 + 1936);
    v73 = *(v0 + 1880);
    v74 = *(v0 + 1856);
    v75 = *(v0 + 1848);
    (*(*(v0 + 1928) + 96))(v72, *(v0 + 1920));
    (*(v74 + 32))(v73, v72, v75);
    v76 = sub_AB4BA0();
    v77 = sub_AB9F50();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "|—● Unaddable", v78, 2u);
    }

    v79 = *(v0 + 1880);
    v80 = *(v0 + 1872);
    v81 = *(v0 + 1856);
    v82 = *(v0 + 1848);

    v83 = *(v81 + 16);
    v83(v80, v79, v82);
    v84 = sub_AB4BA0();
    v85 = sub_AB9F50();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 1872);
    v88 = *(v0 + 1856);
    v89 = *(v0 + 1848);
    if (v86)
    {
      v530 = v83;
      v90 = swift_slowAlloc();
      v525 = swift_slowAlloc();
      v552[0] = v525;
      *v90 = 136446210;
      sub_673544(&qword_E0EC88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
      v515 = v85;
      v91 = sub_ABB330();
      v93 = v92;
      v94 = *(v88 + 8);
      (v94)(v87, v89);
      v95 = sub_500C84(v91, v93, v552);

      *(v90 + 4) = v95;
      _os_log_impl(&dword_0, v84, v515, "|—| Reason: %{public}s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v525);

      v83 = v530;
    }

    else
    {

      v94 = *(v88 + 8);
      (v94)(v87, v89);
    }

    v543 = v94;
    *(v0 + 2064) = v94;
    v249 = *(v0 + 1864);
    v250 = *(v0 + 1856);
    v251 = *(v0 + 1848);
    v83(v249, *(v0 + 1880), v251);
    v252 = (*(v250 + 88))(v249, v251);
    if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {

      v253 = sub_AB4BA0();
      v254 = sub_AB9F50();
      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        *v255 = 0;
        _os_log_impl(&dword_0, v253, v254, "|—| Presenting Explicit Restriction alert", v255, 2u);
      }

      v256 = *(v0 + 1456);

      sub_5FEC68(0, v0 + 1192);
      v257 = sub_5B4DF0((v0 + 1192), 0, 1);
      v258 = v257;
      v259 = *(v0 + 1224);
      v260 = *(v256 + 80);
      if (v260)
      {
        v261 = *(v256 + 88);
        v262 = qword_E0CF08;

        if (v262 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v518, qword_E14920);
        v263 = sub_AB4BA0();
        v264 = sub_AB9F50();
        if (os_log_type_enabled(v263, v264))
        {
          v265 = swift_slowAlloc();
          *v265 = 0;
          _os_log_impl(&dword_0, v263, v264, "Deferring presentation…", v265, 2u);
        }

        v532 = *(v0 + 1880);
        v266 = *(v0 + 1848);
        v267 = *(v0 + 1456);

        v268 = objc_allocWithZone(MSVBlockGuard);
        *(v0 + 1344) = sub_71E354;
        *(v0 + 1352) = 0;
        *(v0 + 1312) = _NSConcreteStackBlock;
        *(v0 + 1320) = 1107296256;
        *(v0 + 1328) = sub_71F2F4;
        *(v0 + 1336) = &block_descriptor_16_4;
        v269 = _Block_copy((v0 + 1312));
        v270 = [v268 initWithTimeout:v269 interruptionHandler:10.0];
        _Block_release(v269);

        sub_15F28(v267, v0 + 880);
        v271 = swift_allocObject();
        *(v271 + 16) = v270;
        sub_17704(v0 + 880, v271 + 24);
        *(v271 + 120) = v258;
        *(v271 + 128) = v259;
        *(v271 + 129) = 1;
        *(v271 + 136) = 0;
        *(v271 + 144) = 0;
        v272 = v270;
        v273 = v258;
        v260(v267, v273, sub_5488D0, v271);
        sub_17654(v260, v261);

        sub_111904(v0 + 1192);
        v274 = v532;
        v275 = v266;
        goto LABEL_144;
      }

      v414 = *(v0 + 1880);
      v415 = *(v0 + 1848);
      sub_71C834(v257, *(v0 + 1224), &dword_0 + 1, 0, 0);

      sub_111904(v0 + 1192);
      v274 = v414;
LABEL_143:
      v275 = v415;
LABEL_144:
      (v543)(v274, v275);
LABEL_145:
      v456 = sub_AB4BA0();
      v457 = sub_AB9F50();
      if (os_log_type_enabled(v456, v457))
      {
        v458 = swift_slowAlloc();
        *v458 = 0;
        _os_log_impl(&dword_0, v456, v457, "╰ ✅ Succeeded", v458, 2u);
      }

      v459 = *(v0 + 8);

      return v459();
    }

    if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
    {
      if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
      {

        v360 = sub_AB4BA0();
        v361 = sub_AB9F50();
        if (os_log_type_enabled(v360, v361))
        {
          v362 = swift_slowAlloc();
          *v362 = 0;
          _os_log_impl(&dword_0, v360, v361, "|—| Presenting library import in progress alert", v362, 2u);
        }

        v363 = *(v0 + 1840);
        v364 = *(v0 + 1832);
        v365 = *(v0 + 1824);
        v366 = *(v0 + 1816);

        sub_AB91E0();
        v509 = *(v365 + 16);
        v509(v364, v363, v366);
        if (qword_E0CB80 != -1)
        {
          swift_once();
        }

        v367 = *(v0 + 1840);
        v368 = *(v0 + 1832);
        v369 = *(v0 + 1824);
        v370 = *(v0 + 1816);
        v505 = *(v0 + 1800);
        v513 = *(v0 + 1792);
        v517 = *(v0 + 1784);
        v545 = *(v0 + 1456);
        v371 = qword_E71B20;
        sub_AB3550();
        v372 = v371;
        v373 = sub_AB9320();
        v529 = v374;
        v533 = v373;
        v375 = *(v369 + 8);
        v375(v367, v370);
        sub_AB91E0();
        v509(v368, v367, v370);
        sub_AB3550();
        v376 = sub_AB9320();
        v496 = v377;
        v501 = v376;
        v375(v367, v370);
        sub_AB91E0();
        v509(v368, v367, v370);
        sub_AB3550();
        v378 = sub_AB9320();
        v380 = v379;
        v375(v367, v370);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v381 = sub_AB3440();
        v383 = v382;
        (*(v513 + 8))(v505, v517);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
        v384 = swift_allocObject();
        *(v384 + 16) = xmmword_AF4EC0;
        *(v384 + 32) = v381;
        *(v384 + 40) = v383;
        *(v384 + 48) = v378;
        *(v384 + 56) = v380;
        *(v384 + 64) = 2;
        *(v384 + 72) = 0;
        *(v384 + 80) = 0;
        LOBYTE(v552[0]) = 1;
        *(v0 + 976) = v533;
        *(v0 + 984) = v529;
        *(v0 + 992) = v501;
        *(v0 + 1000) = v496;
        *(v0 + 1008) = 0;
        *(v0 + 1016) = 0;
        *(v0 + 1024) = 1;
        *(v0 + 1032) = v384;
        *(v0 + 1040) = 0;

        v385 = sub_5B4DF0((v0 + 976), 0, 1);
        v386 = v385;
        v387 = *(v545 + 10);
        if (v387)
        {
          v388 = *(v545 + 11);
          v389 = qword_E0CF08;

          if (v389 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v518, qword_E14920);
          v390 = sub_AB4BA0();
          v391 = sub_AB9F50();
          if (os_log_type_enabled(v390, v391))
          {
            v392 = swift_slowAlloc();
            *v392 = 0;
            _os_log_impl(&dword_0, v390, v391, "Deferring presentation…", v392, 2u);
          }

          v393 = *(v0 + 1856);
          v534 = *(v0 + 1848);
          v546 = *(v0 + 1880);
          v394 = *(v0 + 1456);

          v395 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 1296) = sub_71E354;
          *(v0 + 1304) = 0;
          *(v0 + 1264) = _NSConcreteStackBlock;
          *(v0 + 1272) = 1107296256;
          *(v0 + 1280) = sub_71F2F4;
          *(v0 + 1288) = &block_descriptor_187;
          v396 = _Block_copy((v0 + 1264));
          v397 = [v395 initWithTimeout:v396 interruptionHandler:10.0];
          _Block_release(v396);

          sub_15F28(v394, v0 + 784);
          v398 = swift_allocObject();
          *(v398 + 16) = v397;
          sub_17704(v0 + 784, v398 + 24);
          *(v398 + 120) = v386;
          *(v398 + 128) = 257;
          *(v398 + 136) = 0;
          *(v398 + 144) = 0;
          v399 = v397;
          v400 = v386;
          v387(v394, v400, sub_5487D4, v398);
          sub_17654(v387, v388);

          sub_111904(v0 + 976);

          (*(v393 + 8))(v546, v534);
        }

        else
        {
          v482 = *(v0 + 1880);
          v483 = *(v0 + 1856);
          v484 = *(v0 + 1848);
          sub_71C834(v385, &dword_0 + 1, &dword_0 + 1, 0, 0);

          sub_111904(v0 + 976);

          (*(v483 + 8))(v482, v484);
        }

        goto LABEL_145;
      }

      if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v476 = sub_AB4BA0();
        v477 = sub_AB9F10();
        if (os_log_type_enabled(v476, v477))
        {
          v478 = swift_slowAlloc();
          *v478 = 0;
          _os_log_impl(&dword_0, v476, v477, "|—| Unaddable reason is not supported by the UI", v478, 2u);
        }

        v479 = *(v0 + 1880);
        v480 = *(v0 + 1864);
        v481 = *(v0 + 1848);

        sub_6728AC();
        v181 = swift_allocError();
        swift_willThrow();
        (v543)(v479, v481);
        (v543)(v480, v481);
LABEL_54:
        *(v0 + 2232) = v181;
        *(v0 + 1408) = v181;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
        v182 = swift_dynamicCast();
        v183 = *(v0 + 2048);
        v184 = *(v0 + 1952);
        v185 = *(v0 + 1440);
        if (v182)
        {
          v186 = *(v0 + 1976);

          v183(v186, v185, v184);

          v187 = sub_AB4BA0();
          v188 = sub_AB9F30();

          if (os_log_type_enabled(v187, v188))
          {
            v511 = *(v0 + 2048);
            v503 = *(v0 + 1992);
            v507 = *(v0 + 1976);
            v521 = *(v0 + 1960);
            v189 = *(v0 + 1944);
            v190 = *(v0 + 1928);
            v191 = *(v0 + 1920);
            v192 = *(v0 + 1912);
            v193 = *(v0 + 1896);
            v494 = *(v0 + 1888);
            v499 = *(v0 + 1952);
            v540 = v188;
            v194 = *(v0 + 1432);
            v195 = *(v0 + 1402);
            v527 = v187;
            v196 = swift_slowAlloc();
            v552[0] = swift_slowAlloc();
            *v196 = 136447234;
            v197 = MusicLibrary.ActionableState.description.getter(v194, v195);
            v199 = sub_500C84(v197, v198, v552);

            *(v196 + 4) = v199;
            *(v196 + 12) = 2082;
            sub_AB84B0();
            sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v200 = sub_ABB330();
            v202 = v201;
            (*(v190 + 8))(v189, v191);
            v203 = sub_500C84(v200, v202, v552);

            *(v196 + 14) = v203;
            *(v196 + 22) = 2082;
            sub_AB8460();
            sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v204 = sub_ABB330();
            v206 = v205;
            (*(v193 + 8))(v192, v494);
            v207 = sub_500C84(v204, v206, v552);

            *(v196 + 24) = v207;
            *(v196 + 32) = 2082;
            v511(v503, v507, v499);
            v208 = sub_AB9350();
            v210 = v209;
            (*(v521 + 8))(v507, v499);
            v211 = sub_500C84(v208, v210, v552);

            *(v196 + 34) = v211;
            *(v196 + 42) = 2082;
            v212 = sub_AB9350();
            v214 = sub_500C84(v212, v213, v552);

            *(v196 + 44) = v214;
            _os_log_impl(&dword_0, v527, v540, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v196, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v416 = *(v0 + 1976);
            v417 = *(v0 + 1960);
            v418 = *(v0 + 1952);

            (*(v417 + 8))(v416, v418);
          }

          *(v0 + 2240) = sub_6728AC();
          v419 = swift_allocError();
          *(v0 + 2248) = v419;
          v420 = swift_task_alloc();
          *(v0 + 2256) = v420;
          *v420 = v0;
          v420[1] = sub_668AC8;
          v421 = *(v0 + 1456);
          v422 = *(v0 + 1448);
          v423 = *(v0 + 1432);
          v424 = *(v0 + 1402);
          v425 = v419;
        }

        else
        {
          v332 = *(v0 + 1968);

          v183(v332, v185, v184);

          swift_errorRetain();
          v333 = sub_AB4BA0();
          v334 = sub_AB9F30();

          if (os_log_type_enabled(v333, v334))
          {
            v512 = *(v0 + 2048);
            v504 = *(v0 + 1992);
            v508 = *(v0 + 1968);
            v523 = *(v0 + 1960);
            v335 = *(v0 + 1944);
            v336 = *(v0 + 1928);
            v337 = *(v0 + 1920);
            v495 = *(v0 + 1896);
            v500 = *(v0 + 1952);
            v490 = *(v0 + 1912);
            v492 = *(v0 + 1888);
            v544 = v334;
            v338 = *(v0 + 1432);
            v339 = *(v0 + 1402);
            v528 = v333;
            v340 = swift_slowAlloc();
            v552[0] = swift_slowAlloc();
            *v340 = 136447234;
            v341 = MusicLibrary.ActionableState.description.getter(v338, v339);
            v343 = sub_500C84(v341, v342, v552);

            *(v340 + 4) = v343;
            *(v340 + 12) = 2082;
            sub_AB84B0();
            sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v344 = sub_ABB330();
            v346 = v345;
            (*(v336 + 8))(v335, v337);
            v347 = sub_500C84(v344, v346, v552);

            *(v340 + 14) = v347;
            *(v340 + 22) = 2082;
            sub_AB8460();
            sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v348 = sub_ABB330();
            v350 = v349;
            (*(v495 + 8))(v490, v492);
            v351 = sub_500C84(v348, v350, v552);

            *(v340 + 24) = v351;
            *(v340 + 32) = 2082;
            v512(v504, v508, v500);
            v352 = sub_AB9350();
            v354 = v353;
            (*(v523 + 8))(v508, v500);
            v355 = sub_500C84(v352, v354, v552);

            *(v340 + 34) = v355;
            *(v340 + 42) = 2082;
            *(v0 + 1416) = v181;
            swift_errorRetain();
            v356 = sub_AB9350();
            v358 = sub_500C84(v356, v357, v552);

            *(v340 + 44) = v358;
            _os_log_impl(&dword_0, v528, v544, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v340, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v426 = *(v0 + 1968);
            v427 = *(v0 + 1960);
            v428 = *(v0 + 1952);

            (*(v427 + 8))(v426, v428);
          }

          v429 = swift_task_alloc();
          *(v0 + 2264) = v429;
          *v429 = v0;
          v429[1] = sub_668F58;
          v421 = *(v0 + 1456);
          v422 = *(v0 + 1448);
          v423 = *(v0 + 1432);
          v424 = *(v0 + 1402);
          v425 = v181;
        }

        return sub_66BF80(v425, v423, v424, v422, v421);
      }

      v452 = sub_AB4BA0();
      v453 = sub_AB9F50();
      if (os_log_type_enabled(v452, v453))
      {
        v454 = swift_slowAlloc();
        *v454 = 0;
        _os_log_impl(&dword_0, v452, v453, "|—| Presenting upsell", v454, 2u);
      }

      v455 = *(v0 + 1880);
      v415 = *(v0 + 1848);

      *(v0 + 1392) = 0;
      *(v0 + 1360) = 0u;
      *(v0 + 1376) = 0u;
      *(v0 + 1400) = -1;
      _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 1360);
      sub_53EE90(v0 + 1360);
      v274 = v455;
      goto LABEL_143;
    }

    v283 = sub_AB4BA0();
    v284 = sub_AB9F50();
    if (os_log_type_enabled(v283, v284))
    {
      v285 = swift_slowAlloc();
      *v285 = 0;
      _os_log_impl(&dword_0, v283, v284, "|—| Presenting Cloud Library Requirement alert", v285, 2u);
    }

    *(v0 + 2072) = sub_AB9930();
    v287 = sub_AB98B0();
    *(v0 + 2080) = v287;
    *(v0 + 2088) = v286;

    return _swift_task_switch(sub_667118, v287, v286);
  }

  else
  {
    v145 = sub_AB4BA0();
    v146 = sub_AB9F50();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&dword_0, v145, v146, "|—● Adding to library", v147, 2u);
    }

    v148 = *(v0 + 1464);

    if (v148)
    {
      v149 = *(v0 + 1472);
      ObjectType = swift_getObjectType();
      (*(v149 + 8))(0, ObjectType, v149);
    }

    v151 = *(v0 + 1952);
    v152 = *(v0 + 1776);
    v153 = *(v0 + 1760);
    v154 = *(v0 + 1728);
    v155 = *(v0 + 1720);
    v493 = *(v0 + 1752);
    v497 = *(v0 + 1712);
    v502 = *(v0 + 1704);
    v156 = *(v0 + 1480);
    swift_storeEnumTagMultiPayload();
    sub_662620(v152, 0);
    sub_673A10(v152, type metadata accessor for Notice.Variant);
    v157 = MusicItem.metricsTargetIdentifier.getter(v151);
    v488 = v158;
    v489 = v157;
    v159 = sub_AB31C0();
    v486 = *(*(v159 - 8) + 56);
    v487 = v159;
    v486(v153, 1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8, &qword_B18DA0);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_AF85F0;
    *(v160 + 32) = MusicItem.metricsContentType.getter(v151);
    *(v160 + 40) = v161;
    *(v160 + 48) = 0;
    *(v160 + 56) = 0;
    *(v160 + 64) = 0;
    *(v160 + 72) = 1;
    v510 = sub_51717C(v160);
    v520 = v162;
    v539 = v163;
    v516 = v164;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_15F84(v153, v493, &qword_E0DC30, &unk_B15160);
    v165 = type metadata accessor for Actions.MetricsReportingContext(0);
    v166 = *(v156 + v165[7]);
    v168 = *v156;
    v167 = v156[1];
    sub_15F84(v156 + v165[5], v497, &qword_E0E348, &unk_B17520);
    v506 = v165;
    v491 = *(v156 + v165[8]);
    *(v154 + v155[19]) = 0;
    v169 = (v154 + v155[20]);
    *v169 = 0;
    v169[1] = 0;
    *v154 = v489;
    *(v154 + 8) = v488;
    *(v154 + 16) = 773;
    sub_36B0C(v493, v154 + v155[7], &qword_E0DC30, &unk_B15160);
    *(v154 + v155[8]) = v166;
    v170 = (v154 + v155[9]);
    *v170 = v168;
    v170[1] = v167;
    v171 = v154 + v155[10];
    *v171 = v510;
    *(v171 + 8) = v520;
    *(v171 + 16) = v539;
    *(v171 + 24) = v516;
    sub_15F84(v497, v502, &qword_E0E348, &unk_B17520);
    v172 = type metadata accessor for MetricsEvent.Page(0);
    v498 = *(*(v172 - 1) + 48);
    v173 = v498(v502, 1, v172);
    v174 = *(v0 + 1704);
    if (v173 == 1)
    {

      sub_512C64(v168, v167);

      v175 = v510;
      sub_513BF8(v510, v520, v539, v516, SBYTE1(v516));
      sub_12E1C(v174, &qword_E0E348, &unk_B17520);
      v176 = 0;
      v177 = 0;
    }

    else
    {
      v176 = *v174;
      v177 = v174[1];

      sub_512C64(v168, v167);

      v175 = v510;
      sub_513BF8(v510, v520, v539, v516, SBYTE1(v516));

      sub_673A10(v174, type metadata accessor for MetricsEvent.Page);
    }

    v276 = *(v0 + 1712);
    v277 = *(v0 + 1696);
    v278 = (*(v0 + 1728) + *(*(v0 + 1720) + 48));
    *v278 = v176;
    v278[1] = v177;
    sub_15F84(v276, v277, &qword_E0E348, &unk_B17520);
    v279 = v498(v277, 1, v172);
    v280 = *(v0 + 1696);
    if (v279 == 1)
    {
      sub_12E1C(*(v0 + 1696), &qword_E0E348, &unk_B17520);
      v281 = 0;
      v282 = 0;
    }

    else
    {
      v281 = *(v280 + 16);
      v282 = *(v280 + 24);

      sub_673A10(v280, type metadata accessor for MetricsEvent.Page);
    }

    v288 = *(v0 + 1712);
    v289 = *(v0 + 1688);
    v290 = (*(v0 + 1728) + *(*(v0 + 1720) + 52));
    *v290 = v281;
    v290[1] = v282;
    sub_15F84(v288, v289, &qword_E0E348, &unk_B17520);
    v291 = v498(v289, 1, v172);
    v292 = *(v0 + 1744);
    v293 = *(v0 + 1688);
    if (v291 == 1)
    {
      sub_12E1C(*(v0 + 1688), &qword_E0E348, &unk_B17520);
      (v486)(v292, 1, 1, v487);
    }

    else
    {
      sub_15F84(v293 + v172[6], *(v0 + 1744), &qword_E0DC30, &unk_B15160);
      sub_673A10(v293, type metadata accessor for MetricsEvent.Page);
    }

    v294 = *(v0 + 1712);
    v295 = *(v0 + 1680);
    sub_36B0C(*(v0 + 1744), *(v0 + 1728) + *(*(v0 + 1720) + 56), &qword_E0DC30, &unk_B15160);
    sub_15F84(v294, v295, &qword_E0E348, &unk_B17520);
    v296 = v498(v295, 1, v172);
    v297 = *(v0 + 1680);
    if (v296 == 1)
    {
      sub_12E1C(*(v0 + 1680), &qword_E0E348, &unk_B17520);
      v298 = 0;
    }

    else
    {
      v298 = *(v297 + v172[7]);

      sub_673A10(v297, type metadata accessor for MetricsEvent.Page);
    }

    v299 = *(v0 + 1712);
    v300 = *(v0 + 1672);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 60)) = v298;
    sub_15F84(v299, v300, &qword_E0E348, &unk_B17520);
    v301 = v498(v300, 1, v172);
    v302 = *(v0 + 1672);
    if (v301 == 1)
    {
      sub_12E1C(v302, &qword_E0E348, &unk_B17520);
      v303 = 1;
    }

    else
    {
      v303 = *(v302 + v172[9]);
      sub_673A10(v302, type metadata accessor for MetricsEvent.Page);
    }

    v304 = *(v0 + 1712);
    v305 = *(v0 + 1664);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 64)) = v303;
    sub_15F84(v304, v305, &qword_E0E348, &unk_B17520);
    v306 = v498(v305, 1, v172);
    v307 = *(v0 + 1664);
    if (v306 == 1)
    {
      sub_12E1C(*(v0 + 1664), &qword_E0E348, &unk_B17520);
      v308 = 0;
      v309 = 0;
    }

    else
    {
      v310 = (v307 + v172[8]);
      v308 = *v310;
      v309 = v310[1];

      sub_673A10(v307, type metadata accessor for MetricsEvent.Page);
    }

    v311 = *(v0 + 1712);
    v312 = *(v0 + 1656);
    v313 = (*(v0 + 1728) + *(*(v0 + 1720) + 72));
    *v313 = v308;
    v313[1] = v309;
    sub_36B0C(v311, v312, &qword_E0E348, &unk_B17520);
    v314 = v498(v312, 1, v172);
    v315 = *(v0 + 1656);
    if (v314 == 1)
    {
      sub_12E1C(v315, &qword_E0E348, &unk_B17520);
      v316 = 2;
    }

    else
    {
      v316 = *(v315 + v172[11]);
      sub_673A10(v315, type metadata accessor for MetricsEvent.Page);
    }

    v317 = *(v0 + 1736);
    v318 = *(v0 + 1728);
    v319 = *(v0 + 1720);
    *(v318 + *(v319 + 68)) = v316;
    *(v318 + *(v319 + 44)) = v491;
    sub_513C68(v318, v317);
    if (qword_E0CC50 != -1)
    {
      swift_once();
    }

    v320 = *(v0 + 1952);
    v321 = *(v0 + 1760);
    v322 = *(v0 + 1736);
    v323 = *(v0 + 1480);
    v324 = *(v0 + 1440);
    MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v322, *(v323 + v506[6]), *(v323 + v506[6] + 8), *(v323 + v506[9]), *(v323 + v506[9] + 8), *(v323 + v506[9] + 16));
    sub_53EF4C(v175, v520, v539, v516, SBYTE1(v516));
    sub_673A10(v322, type metadata accessor for MetricsEvent.Click);
    sub_12E1C(v321, &qword_E0DC30, &unk_B15160);
    sub_6717B0(v320, v320);
    swift_allocObject();
    v325 = sub_AB9780();
    *(v0 + 2120) = v325;
    (v524)(v326, v324, v320);
    v327 = sub_AB9870();
    *(v0 + 1424) = v325;
    v328 = swift_task_alloc();
    *(v0 + 2128) = v328;
    WitnessTable = swift_getWitnessTable();
    *v328 = v0;
    v328[1] = sub_667740;
    v330 = *(v0 + 1952);
    v331 = *(v0 + 1488);

    return MusicLibrary.add<A, B>(_:)(v0 + 1424, v327, v330, WitnessTable, v331);
  }
}

uint64_t sub_667118(uint64_t a1)
{
  v2 = v1[182];
  v3 = sub_AB9930();
  v1[262] = v3;
  v4 = swift_task_alloc();
  v1[263] = v4;
  *(v4 + 16) = 1;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[264] = v5;
  *v5 = v1;
  v5[1] = sub_66722C;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 1401, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000000B6A730, sub_53F124, v4, &type metadata for Bool);
}

uint64_t sub_66722C()
{
  v1 = *v0;

  v2 = *(v1 + 2088);
  v3 = *(v1 + 2080);

  return _swift_task_switch(sub_66738C, v3, v2);
}

uint64_t sub_66738C()
{

  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  return _swift_task_switch(sub_6673F4, v2, v1);
}

uint64_t sub_6673F4()
{
  v1 = v0[258];
  v2 = v0[235];
  v3 = v0[231];

  v1(v2, v3);
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_667740(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 2136) = v1;

  if (v1)
  {
    v4 = *(v3 + 2032);
    v5 = *(v3 + 2024);
    v6 = sub_6693A4;
  }

  else
  {

    v4 = *(v3 + 2032);
    v5 = *(v3 + 2024);
    v6 = sub_667884;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_667884()
{
  v1 = v0[183];

  if (v1)
  {
    v2 = v0[184];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  (*(v0[241] + 8))(v0[242], v0[240]);
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_667BFC()
{
  v2 = *v1;
  v2[272] = v0;

  sub_12E1C((v2 + 48), &qword_E0EB08, &qword_B1EF10);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_669C60;
  }

  else
  {
    v5 = sub_667D50;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_667D50()
{

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_668098()
{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  v3 = *(v2 + 2032);
  v4 = *(v2 + 2024);
  if (v0)
  {
    v5 = sub_66A520;
  }

  else
  {
    v5 = sub_6681D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6681D4()
{

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_6684F8()
{
  v2 = *v1;
  v2[276] = v0;

  sub_12E1C((v2 + 34), &qword_E0EB00, &qword_B183C0);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_66ADC0;
  }

  else
  {
    v5 = sub_66864C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_66864C()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];

  (*(v2 + 8))(v1, v3);
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_668994()
{
  v2 = *v1;
  v2[278] = v0;

  sub_12E1C((v2 + 2), &qword_E0EEA8, &qword_B18DC8);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_66B67C;
  }

  else
  {
    v5 = sub_675AB0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_668AC8()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_668C0C, v3, v2);
}

uint64_t sub_668C0C()
{

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_allocError();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_668F58()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_669078, v3, v2);
}

uint64_t sub_669078()
{

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_6693A4()
{
  v96 = v0;
  (*(*(v0 + 1928) + 8))(*(v0 + 1936), *(v0 + 1920));
  v1 = *(v0 + 2136);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_500C84(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_ABB330();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_500C84(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_ABB330();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_500C84(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_AB9350();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_500C84(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_AB9350();
      v34 = sub_500C84(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&dword_0, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_6728AC();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_668AC8;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_500C84(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_ABB330();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_500C84(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_ABB330();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_500C84(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_AB9350();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_500C84(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&dword_0, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_668F58;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_66BF80(v71, v69, v70, v68, v67);
}

uint64_t sub_669C60()
{
  v96 = v0;

  v1 = *(v0 + 2176);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_500C84(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_ABB330();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_500C84(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_ABB330();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_500C84(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_AB9350();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_500C84(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_AB9350();
      v34 = sub_500C84(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&dword_0, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_6728AC();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_668AC8;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_500C84(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_ABB330();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_500C84(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_ABB330();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_500C84(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_AB9350();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_500C84(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&dword_0, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_668F58;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_66BF80(v71, v69, v70, v68, v67);
}

uint64_t sub_66A520()
{
  v96 = v0;
  v1 = *(v0 + 2192);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_500C84(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_ABB330();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_500C84(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_ABB330();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_500C84(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_AB9350();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_500C84(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_AB9350();
      v34 = sub_500C84(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&dword_0, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_6728AC();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_668AC8;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_500C84(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_ABB330();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_500C84(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_ABB330();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_500C84(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_AB9350();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_500C84(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&dword_0, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_668F58;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_66BF80(v71, v69, v70, v68, v67);
}

uint64_t sub_66ADC0()
{
  v96 = v0;
  (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
  v1 = *(v0 + 2208);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_500C84(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_ABB330();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_500C84(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_ABB330();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_500C84(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_AB9350();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_500C84(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_AB9350();
      v34 = sub_500C84(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&dword_0, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_6728AC();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_668AC8;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_500C84(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_ABB330();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_500C84(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_ABB330();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_500C84(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_AB9350();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_500C84(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&dword_0, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_668F58;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_66BF80(v71, v69, v70, v68, v67);
}

uint64_t sub_66B67C()
{
  v96 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_AB4BA0();
    v8 = sub_AB9F30();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_500C84(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_ABB330();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_500C84(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_ABB330();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_500C84(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_AB9350();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_500C84(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_AB9350();
      v34 = sub_500C84(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&dword_0, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_6728AC();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_668AC8;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_500C84(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_AB84B0();
      sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_ABB330();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_500C84(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_AB8460();
      sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_ABB330();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_500C84(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_AB9350();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_500C84(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_AB9350();
      v61 = sub_500C84(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&dword_0, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_668F58;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_66BF80(v71, v69, v70, v68, v67);
}

uint64_t Logger.libraryActionableState.unsafeMutableAddressor()
{
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();

  return __swift_project_value_buffer(v0, static Logger.libraryActionableState);
}

uint64_t sub_66BF80(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 384) = a3;
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  *(v5 + 288) = *a4;
  v6 = sub_AB3470();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  v7 = sub_AB31C0();
  *(v5 + 320) = v7;
  v8 = *(v7 - 8);
  *(v5 + 328) = v8;
  *(v5 + 336) = *(v8 + 64);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  sub_AB9940();
  *(v5 + 376) = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_66C158, v10, v9);
}

uint64_t sub_66C158()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 384);

  sub_ABAD90(91);
  v70._countAndFlagsBits = 0xD000000000000032;
  v70._object = 0x8000000000B6F840;
  sub_AB94A0(v70);
  *(v0 + 232) = v3;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  v71._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v71);

  v72._object = 0x8000000000B6F880;
  v72._countAndFlagsBits = 0xD000000000000014;
  sub_AB94A0(v72);
  v73._countAndFlagsBits = MusicLibrary.ActionableState.description.getter(v2, v4);
  sub_AB94A0(v73);

  v74._countAndFlagsBits = 0x53206D6574490A0ALL;
  v74._object = 0xEE00203A65746174;
  sub_AB94A0(v74);
  *(v0 + 240) = v1;
  sub_AB84C0();

  v75._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v75);

  v76._countAndFlagsBits = 10;
  v76._object = 0xE100000000000000;
  sub_AB94A0(v76);
  v5 = sub_52A450(_swiftEmptyArrayStorage);
  if (qword_E0D528 != -1)
  {
    v56 = v5;
    swift_once();
    v5 = v56;
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    sub_62DE74(0xD00000000000001DLL, 0x8000000000B6F820, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v5, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v6, 1u);

    sub_15F84(v6, v7, &qword_E0DC30, &unk_B15160);
    if ((*(v8 + 48))(v7, 1, v9) == 1)
    {
      v10 = *(v0 + 360);
      sub_12E1C(*(v0 + 368), &qword_E0DC30, &unk_B15160);
      sub_12E1C(v10, &qword_E0DC30, &unk_B15160);
    }

    else
    {
      v13 = *(*(v0 + 328) + 32);
      v13(*(v0 + 352), *(v0 + 360), *(v0 + 320));
      v14 = [objc_opt_self() sharedApplication];
      sub_AB30F0(v15);
      v17 = v16;
      v18 = [v14 canOpenURL:v16];

      v19 = *(v0 + 368);
      v20 = *(v0 + 352);
      if (v18)
      {
        v64 = *(v0 + 368);
        v21 = *(v0 + 344);
        v67 = (v0 + 112);
        v23 = *(v0 + 320);
        v22 = *(v0 + 328);
        v24 = *(v0 + 304);
        v25 = *(v0 + 312);
        v63 = *(v0 + 296);
        (*(v22 + 16))(v21, v20, v23);
        v61 = v13;
        v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
        v66 = swift_allocObject();
        v61(v66 + v26, v21, v23);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v60 = sub_AB3440();
        v28 = v27;
        v62 = *(v24 + 8);
        v62(v25, v63);
        (*(v22 + 8))(v20, v23);
        sub_12E1C(v64, &qword_E0DC30, &unk_B15160);
        if (qword_E0CE10 != -1)
        {
          swift_once();
        }

        v65 = v28;
        v57 = sub_AB4BC0();
        __swift_project_value_buffer(v57, static Logger.libraryActionableState);
        v29 = sub_AB4BA0();
        v30 = sub_AB9F50();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_0, v29, v30, "|—● Presenting Tap-To-Radar alert", v31, 2u);
        }

        v32 = *(v0 + 312);
        v33 = *(v0 + 296);
        v59 = *(v0 + 280);
        v34 = *(v0 + 256);

        *(v0 + 248) = v34;
        swift_errorRetain();
        v68 = sub_AB9350();
        v58 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E040, &qword_B16BE0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_AF85F0;
        *(v36 + 32) = v60;
        *(v36 + 40) = v65;
        strcpy((v36 + 48), "File a Radar");
        *(v36 + 61) = 0;
        *(v36 + 62) = -5120;
        *(v36 + 64) = 2;
        *(v36 + 72) = &unk_B1F200;
        *(v36 + 80) = v66;

        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v37 = sub_AB3440();
        v39 = v38;
        v62(v32, v33);
        *(v36 + 88) = v37;
        *(v36 + 96) = v39;
        *(v36 + 104) = 19279;
        *(v36 + 112) = 0xE200000000000000;
        *(v36 + 120) = 2;
        *(v36 + 128) = 0;
        *(v36 + 136) = 0;
        *(v0 + 112) = xmmword_B13C70;
        *(v0 + 128) = v68;
        *(v0 + 136) = v58;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 1;
        *(v0 + 168) = v36;
        *(v0 + 176) = 0;
        v40 = sub_5B4DF0(v67, 0, 1);
        v41 = v40;
        v42 = *(v59 + 80);
        if (v42)
        {
          v43 = *(v0 + 144);
          v44 = *(v59 + 88);
          v45 = qword_E0CF08;

          if (v45 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v57, qword_E14920);
          v46 = sub_AB4BA0();
          v47 = sub_AB9F50();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_0, v46, v47, "Deferring presentation…", v48, 2u);
          }

          v49 = *(v0 + 280);

          v50 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 216) = sub_71E354;
          *(v0 + 224) = 0;
          *(v0 + 184) = _NSConcreteStackBlock;
          *(v0 + 192) = 1107296256;
          *(v0 + 200) = sub_71F2F4;
          *(v0 + 208) = &block_descriptor_114_2;
          v51 = _Block_copy((v0 + 184));
          v52 = [v50 initWithTimeout:v51 interruptionHandler:10.0];
          _Block_release(v51);

          sub_15F28(v49, v0 + 16);
          v53 = swift_allocObject();
          *(v53 + 16) = v52;
          sub_17704(v0 + 16, v53 + 24);
          *(v53 + 120) = v41;
          *(v53 + 128) = v43;
          *(v53 + 129) = 1;
          *(v53 + 136) = 0;
          *(v53 + 144) = 0;
          v54 = v52;
          v55 = v41;
          v42(v49, v55, sub_5488D0, v53);
          sub_17654(v42, v44);

          sub_111904(v67);
        }

        else
        {
          sub_71C834(v40, *(v0 + 144), &dword_0 + 1, 0, 0);

          sub_111904(v67);
        }
      }

      else
      {
        (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
        sub_12E1C(v19, &qword_E0DC30, &unk_B15160);
      }
    }
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

char *MusicLibrary.ActionableStateController.__allocating_init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = sub_6729B8(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v14;
}

char *MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = sub_6729B8(a1, a2, a3, a4, a5, a6);
  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

uint64_t sub_66CBDC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88, &qword_B1F168);
  __chkstk_darwin();
  v3 = &v9 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90, &unk_B1F170);
  __chkstk_darwin();
  v5 = (&v9 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_AB8440();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = sub_AB8240();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_66E970(v5, v3);

    sub_12E1C(v3, &qword_E11B88, &qword_B1F168);
    return sub_12E1C(v5, &qword_E11B90, &unk_B1F170);
  }

  return result;
}

uint64_t sub_66CD8C(uint64_t a1)
{
  v74 = a1;
  v2 = *v1;
  v85 = sub_AB8770();
  v76 = *(v85 - 8);
  __chkstk_darwin();
  v84 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88, &qword_B1F168);
  __chkstk_darwin();
  v80 = &v66 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90, &unk_B1F170);
  __chkstk_darwin();
  v79 = &v66 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF8, &qword_B18EF8);
  __chkstk_darwin();
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v66 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AF0, &qword_B1F180);
  v77 = *(v88 - 8);
  __chkstk_darwin();
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v66 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00, &qword_B1A0A0);
  __chkstk_darwin();
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v66 - v11;
  v12 = sub_AB8E20();
  __chkstk_darwin();
  v71 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v66 - v14;
  v15 = *(v2 + 80);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v66 - v18;
  __chkstk_darwin();
  v20 = &v66 - v19;
  __chkstk_darwin();
  v22 = &v66 - v21;
  v23 = v2;
  v25 = v24;
  v26 = *(v23 + 128);
  swift_beginAccess();
  v27 = *(v16 + 16);
  v27(v22, &v1[v26], v15);
  sub_AB8490();
  v87 = v1;
  v82 = v26;
  v28 = &v1[v26];
  v29 = v86;
  v90 = v27;
  v91 = v16 + 16;
  v27(v20, v28, v15);
  v89 = v15;
  v30 = swift_dynamicCast();
  v31 = *(v25 + 56);
  if ((v30 & 1) == 0)
  {
    v31(v29, 1, 1, v12);
    v35 = &qword_E10B00;
    v36 = &qword_B1A0A0;
    goto LABEL_5;
  }

  v31(v29, 0, 1, v12);
  v32 = *(v25 + 32);
  v33 = v81;
  v32(v81, v29, v12);
  v29 = v78;
  sub_AB8E10();
  v34 = v77;
  v86 = *(v77 + 48);
  if ((v86)(v29, 1, v88) == 1)
  {
    (*(v25 + 8))(v33, v12);
    v35 = &qword_E0EEF8;
    v36 = &qword_B18EF8;
LABEL_5:
    v37 = v29;
LABEL_6:
    sub_12E1C(v37, v35, v36);
    v38 = v85;
    v39 = v87;
    goto LABEL_7;
  }

  v67 = v32;
  v68 = v25;
  v46 = *(v34 + 32);
  v47 = v75;
  v78 = (v34 + 32);
  v66 = v46;
  v46(v75, v29, v88);
  v90(v72, v74, v89);
  v48 = v73;
  v49 = v12;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v34 + 8))(v47, v88);
    (*(v68 + 8))(v81, v12);
    v31(v48, 1, 1, v12);
    v35 = &qword_E10B00;
    v36 = &qword_B1A0A0;
    v37 = v48;
    goto LABEL_6;
  }

  v50 = v34;
  v31(v48, 0, 1, v12);
  v51 = v71;
  v67(v71, v48, v12);
  v52 = v70;
  sub_AB8E10();
  v53 = v88;
  if ((v86)(v52, 1, v88) == 1)
  {
    v54 = *(v68 + 8);
    v54(v51, v49);
    (*(v50 + 8))(v75, v53);
    v54(v81, v49);
    v35 = &qword_E0EEF8;
    v36 = &qword_B18EF8;
    v37 = v52;
    goto LABEL_6;
  }

  v55 = v49;
  v56 = v69;
  v66(v69, v52, v53);
  sub_36A00(&qword_E10B20, &qword_E10AF0, &qword_B1F180, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_AB9C60();
  sub_AB9CA0();
  v57 = sub_AB9C90();
  v39 = v87;
  if (!v57 && (sub_AB9C60(), sub_AB9CA0(), sub_AB9C90() > 0) || (sub_AB9C60(), sub_AB9CA0(), sub_AB9C90() >= 1) && (sub_AB9C60(), sub_AB9CA0(), !sub_AB9C90()))
  {
    v60 = sub_AB8440();
    v61 = v79;
    (*(*(v60 - 8) + 56))(v79, 1, 1, v60);
    v62 = sub_AB8240();
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    sub_66E970(v61, v63);
    sub_12E1C(v63, &qword_E11B88, &qword_B1F168);
    sub_12E1C(v61, &qword_E11B90, &unk_B1F170);
    v64 = *(v34 + 8);
    v64(v56, v53);
    v65 = *(v68 + 8);
    v65(v51, v55);
    v64(v75, v53);
    return (v65)(v81, v55);
  }

  v58 = *(v34 + 8);
  v58(v56, v53);
  v59 = *(v68 + 8);
  v59(v51, v55);
  v58(v75, v53);
  v59(v81, v55);
  v38 = v85;
LABEL_7:
  v90(v83, &v39[v82], v89);
  v40 = v84;
  result = swift_dynamicCast();
  if (result)
  {
    (*(v76 + 8))(v40, v38);
    v42 = sub_AB8440();
    v43 = v79;
    (*(*(v42 - 8) + 56))(v79, 1, 1, v42);
    v44 = sub_AB8240();
    v45 = v80;
    (*(*(v44 - 8) + 56))(v80, 1, 1, v44);
    sub_66E970(v43, v45);
    sub_12E1C(v45, &qword_E11B88, &qword_B1F168);
    return sub_12E1C(v43, &qword_E11B90, &unk_B1F170);
  }

  return result;
}

uint64_t MusicLibrary.ActionableStateController.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MusicLibrary.ActionableStateController.item.setter(uint64_t a1)
{
  v3 = *v1;
  sub_672F84(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*MusicLibrary.ActionableStateController.item.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 128);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_66DC7C;
}

void sub_66DC7C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_672F84(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_672F84(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.getter()
{
  v1 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double MusicLibrary.ActionableStateController.onStateUpdate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_66DE94(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v41 - v8;
  v11 = v2 + *(v10 + 152);
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 8);
  if (!(v13 >> 14))
  {
    if (a2 < 0x4000u)
    {
      if (*v11 == 5)
      {
        if (a1 == 5)
        {
          return;
        }
      }

      else if (a1 != 5 && v12 == a1)
      {
        return;
      }
    }

    goto LABEL_37;
  }

  if (v13 >> 14 != 1)
  {
    if (v12 | v13 ^ 0x8000)
    {
      if (*(v11 + 8) == 0x8000 && v12 == 1)
      {
        if ((a2 & 0xC000) != 0x8000 || a1 != 1)
        {
          goto LABEL_37;
        }
      }

      else if ((a2 & 0xC000) != 0x8000 || a1 != 2)
      {
        goto LABEL_37;
      }
    }

    else if ((a2 & 0xC000) != 0x8000 || *&a1 != 0.0)
    {
      goto LABEL_37;
    }

    if (a2 == 0x8000)
    {
      return;
    }

    goto LABEL_37;
  }

  if ((a2 & 0xC000) == 0x4000)
  {
    if (v13)
    {
      if ((a2 & 1) != 0 && (((a2 ^ v13) >> 8) & 1) == 0)
      {
        return;
      }
    }

    else if ((a2 & 1) == 0 && *v11 == *&a1 && (((a2 ^ v13) >> 8) & 1) == 0)
    {
      return;
    }
  }

LABEL_37:
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v16 = sub_AB4BC0();
  __swift_project_value_buffer(v16, static Logger.libraryActionableState);

  v17 = sub_AB4BA0();
  v18 = sub_AB9F50();

  v19 = os_log_type_enabled(v17, v18);
  v43 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v44 = v6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v42 = v7;
    v45[0] = v22;
    *v21 = 136446722;
    v23 = MusicLibrary.ActionableState.description.getter(a1, a2);
    v25 = sub_500C84(v23, v24, v45);
    v41 = a1;
    v26 = v25;

    *(v21 + 4) = v26;
    *(v21 + 12) = 2082;
    v27 = MusicLibrary.ActionableState.description.getter(*v11, *(v11 + 8));
    v29 = sub_500C84(v27, v28, v45);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2082;
    v30 = *(*v3 + 128);
    swift_beginAccess();
    (*(v42 + 16))(v9, v3 + v30, v44);
    v31 = sub_AB9350();
    v33 = sub_500C84(v31, v32, v45);

    *(v21 + 24) = v33;
    v34 = v18;
    v35 = v41;
    _os_log_impl(&dword_0, v17, v34, "State updated from: %{public}s to: %{public}s for item: %{public}s)", v21, 0x20u);
    swift_arrayDestroy();
    v7 = v42;

    v6 = v44;
  }

  else
  {

    v35 = a1;
  }

  v36 = (v3 + *(*v3 + 144));
  swift_beginAccess();
  v37 = *v36;
  v38 = *(*v3 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v38, v6);
  v39 = *v11;
  v40 = *(v11 + 8);

  v37(v9, v35, v43, v39, v40);

  (*(v7 + 8))(v9, v6);
}

uint64_t MusicLibrary.ActionableStateController.currentState.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

void sub_66E3B0(uint64_t a1, __int16 a2)
{
  v5 = v2 + *(*v2 + 152);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = a2;
  sub_66DE94(v6, v7);
}

uint64_t MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v5 = *(v4 + 80);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_AB9940();
  v3[15] = sub_AB9930();
  v7 = sub_AB98B0();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(sub_66E554, v7, v6);
}

uint64_t sub_66E554()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = &v4[*(*v4 + 152)];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(*v4 + 128);
  v8 = *(v5 + 4);
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v7], v3);
  v9 = *&v4[*(*v4 + 136)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v11 = *(v4 + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_66E6DC;
  v13 = v0[14];
  v14 = v0[8];
  v15 = v0[9];

  return MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v6, v8, v13, v9, v14, Strong, v11, v15);
}

uint64_t sub_66E6DC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_66E904;
  }

  else
  {
    v8 = sub_66E898;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_66E898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_66E904()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_66E970(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v228 = a2;
  v223 = a1;
  v4 = *v2;
  v5 = sub_AB8420();
  v214 = *(v5 - 8);
  __chkstk_darwin();
  v209 = &v193[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v213 = &v193[-v7];
  __chkstk_darwin();
  v212 = &v193[-v8];
  __chkstk_darwin();
  v211 = &v193[-v9];
  __chkstk_darwin();
  v217 = &v193[-v10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EEF8, &qword_B18EF8);
  __chkstk_darwin();
  v205 = &v193[-v11];
  v210 = sub_AB8E20();
  v201 = *(v210 - 1);
  __chkstk_darwin();
  v200 = &v193[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v202 = &v193[-v13];
  v207 = sub_AB8770();
  v204 = *(v207 - 8);
  __chkstk_darwin();
  v203 = &v193[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v206 = &v193[-v15];
  v16 = *(v4 + 80);
  v17 = sub_AB8440();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v208 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v222 = &v193[-v18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88, &qword_B1F168);
  __chkstk_darwin();
  v20 = &v193[-v19];
  v21 = sub_AB8240();
  v227 = *(v21 - 8);
  __chkstk_darwin();
  v198 = &v193[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v219 = &v193[-v23];
  __chkstk_darwin();
  v229 = &v193[-v24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90, &unk_B1F170);
  __chkstk_darwin();
  v26 = &v193[-v25];
  v230 = *(v17 - 8);
  __chkstk_darwin();
  v199 = &v193[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v29 = &v193[-v28];
  __chkstk_darwin();
  v232 = &v193[-v30];
  v224 = *(v16 - 8);
  __chkstk_darwin();
  v215 = &v193[-v31];
  v32 = v3 + *(v4 + 152);
  swift_beginAccess();
  v195 = *v32;
  v194 = *(v32 + 8);
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v33 = sub_AB4BC0();
  v34 = __swift_project_value_buffer(v33, static Logger.libraryActionableState);

  v231 = v34;
  v35 = sub_AB4BA0();
  v36 = sub_AB9F50();

  v37 = os_log_type_enabled(v35, v36);
  v225 = v21;
  v226 = v17;
  v216 = v5;
  v221 = v16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v235 = v39;
    *v38 = 136446210;
    v40 = *(*v3 + 128);
    swift_beginAccess();
    (*(v224 + 16))(v215, v3 + v40, v16);
    v41 = sub_AB9350();
    v43 = sub_500C84(v41, v42, &v235);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_0, v35, v36, "╭ Updating state for item: %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v17 = v226;

    v21 = v225;
  }

  sub_15F84(v223, v26, &qword_E11B90, &unk_B1F170);
  v44 = v230;
  v45 = *(v230 + 48);
  v46 = v45(v26, 1, v17);
  v47 = v227;
  if (v46 == 1)
  {
    sub_AB84B0();
    if (v45(v26, 1, v17) != 1)
    {
      sub_12E1C(v26, &qword_E11B90, &unk_B1F170);
    }
  }

  else
  {
    (*(v44 + 32))(v232, v26, v17);
  }

  sub_15F84(v228, v20, &qword_E11B88, &qword_B1F168);
  v48 = *(v47 + 48);
  v49 = v48(v20, 1, v21);
  v228 = v3;
  if (v49 == 1)
  {
    sub_AB8460();
    if (v48(v20, 1, v21) != 1)
    {
      sub_12E1C(v20, &qword_E11B88, &qword_B1F168);
    }
  }

  else
  {
    (*(v47 + 32))(v229, v20, v21);
  }

  v50 = v230;
  v218 = *(v230 + 16);
  v218(v29, v232, v17);
  v51 = sub_AB4BA0();
  v52 = v17;
  v53 = sub_AB9F50();
  if (os_log_type_enabled(v51, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v235 = v55;
    *v54 = 136446210;
    sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v56 = sub_ABB330();
    v58 = v57;
    v223 = *(v50 + 8);
    v223(v29, v52);
    v59 = sub_500C84(v56, v58, &v235);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_0, v51, v53, "| Add Status: %{public}s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    v21 = v225;

    v47 = v227;
  }

  else
  {

    v223 = *(v50 + 8);
    v223(v29, v52);
  }

  v60 = *(v47 + 16);
  v61 = v219;
  v197 = v47 + 16;
  v196 = v60;
  v60(v219, v229, v21);
  v62 = sub_AB4BA0();
  v63 = sub_AB9F50();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v47;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v235 = v66;
    *v65 = 136446210;
    sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v67 = sub_ABB330();
    v69 = v68;
    v219 = *(v64 + 8);
    (v219)(v61, v21);
    v70 = sub_500C84(v67, v69, &v235);

    *(v65 + 4) = v70;
    _os_log_impl(&dword_0, v62, v63, "| Download Status: %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
  }

  else
  {

    v219 = *(v47 + 8);
    (v219)(v61, v21);
  }

  v71 = v221;
  v72 = v224;
  v73 = v228;
  v74 = *(*v228 + 128);
  swift_beginAccess();
  v75 = *(TupleTypeMetadata2 + 48);
  v76 = *(v72 + 16);
  v77 = v222;
  v76(v222, v73 + v74, v71);
  v78 = v226;
  v218(&v77[v75], v232, v226);
  v79 = v230;
  v80 = (*(v230 + 88))(&v77[v75], v78);
  if (v80 == enum case for MusicLibrary.AddStatus.addable(_:))
  {
    v223(&v77[v75], v78);
    v81 = 0;
    v82 = 5;
    goto LABEL_73;
  }

  if (v80 != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    if (v80 != enum case for MusicLibrary.AddStatus.added(_:))
    {

      v130 = sub_AB4BA0();
      v131 = sub_AB9F30();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        v234 = v224;
        *v132 = 136446466;
        v133 = v199;
        sub_AB84B0();
        sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
        v134 = v226;
        v135 = sub_ABB330();
        v137 = v136;
        v223(v133, v134);
        v138 = sub_500C84(v135, v137, &v234);

        *(v132 + 4) = v138;
        *(v132 + 12) = 2082;
        v76(v215, v228 + v74, v221);
        v139 = sub_AB9350();
        v141 = sub_500C84(v139, v140, &v234);

        *(v132 + 14) = v141;
        _os_log_impl(&dword_0, v130, v131, "| Unhandled add status (%{public}s) for item: %{public}s", v132, 0x16u);
        swift_arrayDestroy();

        v77 = v222;
      }

      v82 = 0;
      v81 = 0x8000;
      v72 = v208;
      v71 = TupleTypeMetadata2;
      goto LABEL_73;
    }

    v101 = v206;
    v102 = v207;
    v103 = swift_dynamicCast();
    v104 = v227;
    v105 = v228;
    v106 = v210;
    if (v103)
    {
      v107 = v204;
      v108 = v101;
      v109 = v203;
      (*(v204 + 32))(v203, v108, v102);
      if (Album.childrenAddStatus(_:)(*(v105 + 16)) == 1)
      {
        v110 = sub_AB4BA0();
        v111 = sub_AB9F50();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&dword_0, v110, v111, "| Album is already added but has at least 1 addable track", v112, 2u);
        }

        (*(v204 + 8))(v203, v102);
        v81 = 0;
        v82 = 4;
        goto LABEL_73;
      }

      (*(v107 + 8))(v109, v102);
    }

    v145 = v202;
    if (swift_dynamicCast())
    {
      v146 = v201;
      v147 = v200;
      (*(v201 + 32))(v200, v145, v106);
      v148 = v205;
      sub_AB8E10();
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AF0, &qword_B1F180);
      v150 = v148;
      v151 = v149;
      v152 = *(v149 - 8);
      if ((*(v152 + 48))(v150, 1, v149) == 1)
      {
        (*(v146 + 8))(v147, v106);
        sub_12E1C(v205, &qword_E0EEF8, &qword_B18EF8);
      }

      else
      {
        sub_36A00(&qword_E10B20, &qword_E10AF0, &qword_B1F180, &protocol conformance descriptor for MusicItemCollection<A>);
        v153 = v205;
        sub_AB9C60();
        sub_AB9CA0();
        v155 = v233;
        v154 = v234;
        (*(v152 + 8))(v153, v151);
        if (v154 == v155)
        {
          v156 = sub_AB4BA0();
          v157 = sub_AB9F50();
          v158 = os_log_type_enabled(v156, v157);
          v159 = v201;
          v160 = v200;
          if (v158)
          {
            v161 = swift_slowAlloc();
            *v161 = 0;
            _os_log_impl(&dword_0, v156, v157, "| Playlist is already added but does not have any tracks", v161, 2u);
          }

          (*(v159 + 8))(v160, v210);
          goto LABEL_72;
        }

        (*(v201 + 8))(v200, v210);
      }

      v104 = v227;
    }

    v162 = sub_AB4BA0();
    v163 = sub_AB9F50();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&dword_0, v162, v163, "|—● Item is added", v164, 2u);
    }

    result = [objc_opt_self() sharedCloudController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v166 = result;
    v167 = [result canShowCloudDownloadButtons];

    if (v167)
    {
      v168 = v198;
      v169 = v225;
      v196(v198, v229, v225);
      v170 = (*(v104 + 88))(v168, v169);
      if (v170 == enum case for MusicLibrary.DownloadStatus.downloading(_:))
      {
        (*(v104 + 96))(v168, v169);
        v82 = *v168;
        v81 = 0x4000;
        goto LABEL_73;
      }

      if (v170 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        (*(v104 + 96))(v168, v169);
        if (((v194 & 0xC000) != 0x4000) | v194 & 1)
        {
          v82 = 0;
        }

        else
        {
          v82 = v195;
        }

        v81 = ((v194 & 0xC000) != 0x4000) | v194 & 1 | 0x4100;
        v181 = sub_AB8230();
        (*(*(v181 - 8) + 8))(v168, v181);
        goto LABEL_73;
      }

      if (v170 != enum case for MusicLibrary.DownloadStatus.notDownloadable(_:))
      {
        if (v170 == enum case for MusicLibrary.DownloadStatus.downloadable(_:))
        {
          v81 = 0x8000;
          v82 = 1;
        }

        else if (v170 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
        {
          v82 = 0;
          v81 = 16385;
        }

        else if (v170 == enum case for MusicLibrary.DownloadStatus.downloaded(_:))
        {
          v81 = 0x8000;
          v82 = 2;
        }

        else
        {
          v182 = v71;
          v183 = enum case for MusicLibrary.DownloadStatus.cancelled(_:);
          v184 = v170;
          v185 = sub_AB4BA0();
          v186 = sub_AB9F50();
          v187 = os_log_type_enabled(v185, v186);
          if (v184 == v183)
          {
            if (v187)
            {
              v188 = swift_slowAlloc();
              *v188 = 0;
            }

            v189 = sub_AB4BA0();
            v190 = sub_AB9F50();
            v71 = v182;
            if (os_log_type_enabled(v189, v190))
            {
              v191 = swift_slowAlloc();
              *v191 = 0;
              _os_log_impl(&dword_0, v189, v190, "|—| 🌚 though we're not sure this is the right thing to do", v191, 2u);
            }

            v81 = 0x8000;
            v82 = 1;
            v72 = v224;
          }

          else
          {
            v71 = v182;
            if (v187)
            {
              v192 = swift_slowAlloc();
              *v192 = 0;
              _os_log_impl(&dword_0, v185, v186, "|—| Unhandled case", v192, 2u);
            }

            (v219)(v198, v225);
            v82 = 0;
            v81 = 0x8000;
            v72 = v224;
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      v171 = sub_AB4BA0();
      v172 = sub_AB9F50();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        *v173 = 0;
        _os_log_impl(&dword_0, v171, v172, "|—| MPCloudController -canShowCloudDownloadButton: NO", v173, 2u);
      }
    }

LABEL_72:
    v82 = 0;
    v81 = 0x8000;
    goto LABEL_73;
  }

  v83 = v214;
  (*(v79 + 96))(&v77[v75], v78);
  v84 = v83[4];
  v85 = &v77[v75];
  v86 = v217;
  v87 = v216;
  TupleTypeMetadata2 = (v83 + 4);
  v218 = v84;
  v84(v217, v85, v216);
  v88 = v83[2];
  v89 = v211;
  v88(v211, v86, v87);
  v90 = sub_AB4BA0();
  v91 = sub_AB9F50();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = v89;
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v234 = v94;
    *v93 = 136446210;
    sub_673544(&qword_E0EC88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
    v95 = sub_ABB330();
    v97 = v96;
    v98 = v92;
    v99 = v83[1];
    v99(v98, v216);
    v100 = sub_500C84(v95, v97, &v234);

    *(v93 + 4) = v100;
    v87 = v216;
    _os_log_impl(&dword_0, v90, v91, "|—● Item is unaddable: %{public}s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v94);
  }

  else
  {

    v99 = v83[1];
    v99(v89, v87);
  }

  v113 = v212;
  v88(v212, v217, v87);
  v114 = v83[11];
  v115 = v114(v113, v87);
  v116 = enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:);
  v117 = v213;
  if (v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v118 = sub_AB4BA0();
    v119 = sub_AB9F50();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_0, v118, v119, "|—| Reason is not actionable by the user", v120, 2u);
    }

    v121 = v216;
    v99(v217, v216);
    v99(v113, v121);
    v82 = 0;
    v81 = 0x8000;
    goto LABEL_46;
  }

  LODWORD(v215) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:);
  LODWORD(v212) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:);
  LODWORD(v211) = enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:);
  v88(v213, v217, v87);
  v122 = v117;
  v123 = sub_AB4BA0();
  v124 = sub_AB9F50();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v234 = v210;
    *v125 = 136315138;
    sub_673544(&qword_E0EC88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
    v126 = sub_ABB330();
    v128 = v127;
    v99(v122, v216);
    v129 = sub_500C84(v126, v128, &v234);

    *(v125 + 4) = v129;
    v87 = v216;
    __swift_destroy_boxed_opaque_existential_0(v210);
  }

  else
  {

    v99(v122, v87);
  }

  v142 = v209;
  v218(v209, v217, v87);
  v143 = v114(v142, v87);
  if (v143 == v116)
  {
    v81 = 0;
    v82 = 1;
LABEL_46:
    v77 = v222;
    v71 = v221;
    v72 = v224;
    goto LABEL_73;
  }

  v144 = v99;
  v77 = v222;
  v71 = v221;
  v72 = v224;
  if (v143 == v215)
  {
    v82 = 0;
    v81 = 0;
  }

  else if (v143 == v212)
  {
    v81 = 0;
    v82 = 2;
  }

  else if (v143 == v211)
  {
    v81 = 0;
    v82 = 3;
  }

  else
  {
    v144(v142, v87);
    v81 = 0;
    v82 = 5;
  }

LABEL_73:
  (*(v72 + 8))(v77, v71);
  v174 = sub_AB4BA0();
  v175 = sub_AB9F50();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v234 = v177;
    *v176 = 136446210;
    v178 = MusicLibrary.ActionableState.description.getter(v82, v81);
    v180 = sub_500C84(v178, v179, &v234);

    *(v176 + 4) = v180;
    _os_log_impl(&dword_0, v174, v175, "╰ Item state resolved to %{public}s", v176, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v177);
  }

  sub_66E3B0(v82, v81);
  (v219)(v229, v225);
  return (v223)(v232, v226);
}

double sub_6708A4()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B68, &qword_B1F158);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin();
  v27 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B70, &qword_B1F160);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = v1[21];
  swift_beginAccess();
  *(v0 + v9) = &_swiftEmptySetSingleton;

  v26 = *(v0 + *(*v0 + 136));
  sub_AB8450();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v25 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_36A00(&qword_E11B78, &qword_E11B70, &qword_B1F160, &protocol conformance descriptor for Published<A>.Publisher);
  v24 = v1[10];
  v11[2] = v24;
  v23 = v1[11];
  v11[3] = v23;
  v12 = v1[12];
  v11[4] = v12;
  v13 = v1[13];
  v11[5] = v13;
  v11[6] = v10;
  v14 = sub_AB55C0();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_683410(&v30, v14);
  swift_endAccess();

  v15 = v27;
  sub_AB8470();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *&v18 = v24;
  *(&v18 + 1) = v23;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  sub_36A00(&qword_E11B80, &qword_E11B68, &qword_B1F158, v25);
  v20 = v28;
  v21 = sub_AB55C0();

  (*(v29 + 8))(v15, v20);
  swift_beginAccess();
  sub_683410(&v30, v21);
  swift_endAccess();

  return result;
}

uint64_t sub_670CB4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88, &qword_B1F168);
  __chkstk_darwin();
  v5 = &v28 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90, &unk_B1F170);
  __chkstk_darwin();
  v7 = (&v28 - v6);
  v8 = sub_AB8440();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v12 = sub_AB4BC0();
  __swift_project_value_buffer(v12, static Logger.libraryActionableState);
  v34 = *(v9 + 16);
  v34(v11, a1, v8);
  v13 = v9;
  v14 = sub_AB4BA0();
  v15 = sub_AB9F50();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v5;
    v31 = v18;
    v35[0] = v18;
    *v17 = 136446210;
    sub_673544(&qword_E11AC0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v19 = v13;
    v29 = v13;
    v20 = sub_ABB330();
    v30 = a1;
    v21 = v7;
    v23 = v22;
    (*(v19 + 8))(v11, v8);
    v24 = sub_500C84(v20, v23, v35);
    v7 = v21;
    a1 = v30;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_0, v14, v15, "Add status has updated to %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v5 = v33;

    v25 = v29;
  }

  else
  {

    (*(v13 + 8))(v11, v8);
    v25 = v13;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34(v7, a1, v8);
    (*(v25 + 56))(v7, 0, 1, v8);
    v27 = sub_AB8240();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    sub_66E970(v7, v5);

    sub_12E1C(v5, &qword_E11B88, &qword_B1F168);
    return sub_12E1C(v7, &qword_E11B90, &unk_B1F170);
  }

  return result;
}

uint64_t sub_6710E0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88, &qword_B1F168);
  __chkstk_darwin();
  v5 = &v28 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90, &unk_B1F170);
  __chkstk_darwin();
  v7 = (&v28 - v6);
  v8 = sub_AB8240();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v12 = sub_AB4BC0();
  __swift_project_value_buffer(v12, static Logger.libraryActionableState);
  v33 = *(v9 + 16);
  v33(v11, a1, v8);
  v13 = v9;
  v14 = sub_AB4BA0();
  v15 = sub_AB9F50();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v8;
    v17 = v16;
    v31 = swift_slowAlloc();
    v32 = v5;
    v35[0] = v31;
    *v17 = 136446210;
    sub_673544(&qword_E11AC8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v18 = v13;
    v29 = v13;
    v19 = sub_ABB330();
    v30 = a2;
    v20 = v7;
    v21 = a1;
    v23 = v22;
    (*(v18 + 8))(v11, v34);
    v24 = sub_500C84(v19, v23, v35);
    a1 = v21;
    v7 = v20;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_0, v14, v15, "Download status has updated to %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v5 = v32;

    v8 = v34;

    v25 = v29;
  }

  else
  {

    (*(v13 + 8))(v11, v8);
    v25 = v13;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = sub_AB8440();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    v33(v5, a1, v8);
    (*(v25 + 56))(v5, 0, 1, v8);
    sub_66E970(v7, v5);

    sub_12E1C(v5, &qword_E11B88, &qword_B1F168);
    return sub_12E1C(v7, &qword_E11B90, &unk_B1F170);
  }

  return result;
}

char *MusicLibrary.ActionableStateController.deinit()
{
  v1 = *v0;

  sub_176DC((v0 + 3));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));

  return v0;
}

uint64_t MusicLibrary.ActionableStateController.__deallocating_deinit()
{
  MusicLibrary.ActionableStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_671664()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.libraryActionableState);
  __swift_project_value_buffer(v0, static Logger.libraryActionableState);
  sub_13C80(0, &qword_E15F40, OS_os_log_ptr);
  sub_ABA9A0();
  return sub_AB4BD0();
}

uint64_t static Logger.libraryActionableState.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CE10 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  v3 = __swift_project_value_buffer(v2, static Logger.libraryActionableState);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_6717B0(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0, &unk_B19F90);
  }

  else
  {

    return sub_ABB340();
  }
}

uint64_t sub_671824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v8;
  *(v4 + 144) = *(a4 + 128);
  v9 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v9;
  v10 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v10;
  v11 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v11;
  v12 = swift_task_alloc();
  *(v4 + 152) = v12;
  *v12 = v4;
  v12[1] = sub_5320A8;

  return sub_652CB8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_17CF8;

  return sub_653A00(a1, a2, a3, a4);
}

uint64_t sub_6719B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_17CF8;

  return sub_654710(a1, a2, a3, a4);
}

uint64_t sub_671A70(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_655420(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671B44(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_6560D4(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671C18(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_656D88(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671CEC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_657A3C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671DC0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_6586F0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671E94(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_6593A4(a1, a2, a3, (v4 + 16));
}

uint64_t sub_671F68(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65A058(a1, a2, a3, (v4 + 16));
}

uint64_t sub_67203C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65AD0C(a1, a2, a3, (v4 + 16));
}

uint64_t sub_672110(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65B9C0(a1, a2, a3, (v4 + 16));
}

uint64_t sub_6721E4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v9;
  v10 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v10;
  v11 = swift_task_alloc();
  *(v4 + 112) = v11;
  *v11 = v4;
  v11[1] = sub_533D90;

  return sub_65C674(a1, a2, a3, (v4 + 16));
}

uint64_t sub_6722B0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65D2F8(a1, a2, a3, (v4 + 16));
}

uint64_t sub_672384(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_534404;

  return sub_65DFAC(a1, a2, a3, (v4 + 16));
}

uint64_t sub_672458(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65EC60(a1, a2, a3, (v4 + 16));
}

uint64_t sub_67252C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v8;
  *(v4 + 112) = a4[6];
  v9 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v10;
  v11 = swift_task_alloc();
  *(v4 + 128) = v11;
  *v11 = v4;
  v11[1] = sub_537F0C;

  return sub_65F914(a1, a2, a3, (v4 + 16));
}

uint64_t sub_672600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_17CF8;

  return sub_6605C8(a1, a2, a3, a4, v10);
}

uint64_t sub_6726C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_17BD0;

  return sub_661200(a1, a2, a3, a4);
}

uint64_t _s8MusicKit0A7LibraryC0A4CoreE15ActionableStateO21__derived_enum_equalsySbAF_AFtFZ_0(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2 >> 14)
  {
    if (a2 >> 14 != 1)
    {
      if (a1 | a2 ^ 0x8000)
      {
        v5 = a4 & 0xC000;
        if (a2 == 0x8000 && a1 == 1)
        {
          if (v5 == 0x8000 && a3 == 1 && a4 == 0x8000)
          {
            return 1;
          }
        }

        else if (v5 == 0x8000 && a3 == 2 && a4 == 0x8000)
        {
          return 1;
        }
      }

      else if ((a4 & 0xC000) == 0x8000 && *&a3 == 0.0 && a4 == 0x8000)
      {
        return 1;
      }

      return 0;
    }

    if ((a4 & 0xC000) == 0x4000)
    {
      if (a2)
      {
        if ((a4 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a4 & 1) != 0 || *&a1 != *&a3)
      {
        return 0;
      }

      return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
    }
  }

  else if (a4 < 0x4000u)
  {
    if (a1 == 5)
    {
      if (a3 == 5)
      {
        return 1;
      }
    }

    else if (a3 != 5 && a3 == a1)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_6728AC()
{
  result = qword_E11AB8;
  if (!qword_E11AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11AB8);
  }

  return result;
}

uint64_t sub_672900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_672964()
{

  return swift_deallocObject();
}

double block_copy_helper_187(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_6729B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a4;
  v53 = a5;
  v11 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B88, &qword_B1F168);
  __chkstk_darwin();
  v13 = &v46 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11B90, &unk_B1F170);
  __chkstk_darwin();
  v15 = (&v46 - v14);
  *(v7 + 4) = 0;
  swift_unknownObjectWeakInit();
  v16 = &v7[*(*v7 + 152)];
  *v16 = 0;
  *(v16 + 4) = 0x8000;
  *&v7[*(*v7 + 160)] = 0;
  if (_swiftEmptyArrayStorage >> 62 && sub_ABB060())
  {
    sub_5080B8(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  *&v7[*(*v7 + 168)] = v17;
  v18 = v11[10];
  v19 = v11[12];
  v51 = a1;
  v54 = v18;
  v55 = v19;
  v20 = sub_AB8390();
  *&v7[*(*v7 + 136)] = v20;
  v21 = qword_E0CE10;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_AB4BC0();
  __swift_project_value_buffer(v22, static Logger.libraryActionableState);

  v23 = sub_AB4BA0();
  v24 = sub_AB9F50();

  v25 = os_log_type_enabled(v23, v24);
  v50 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v48 = v13;
    v27 = v26;
    v28 = swift_slowAlloc();
    v47 = v15;
    v29 = v28;
    v56 = v20;
    v57 = v28;
    *v27 = 136446210;
    v30 = sub_AB9350();
    v49 = v11;
    v32 = a6;
    v33 = sub_500C84(v30, v31, &v57);
    v11 = v49;

    *(v27 + 4) = v33;
    a6 = v32;
    _os_log_impl(&dword_0, v23, v24, "Initializing item state: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v15 = v47;

    v13 = v48;
  }

  v34 = v54;
  (*(*(v54 - 8) + 16))(&v7[*(*v7 + 128)], v51, v54);
  *(v7 + 2) = a2;
  *(v7 + 4) = v52;
  swift_unknownObjectWeakAssign();
  v35 = &v7[*(*v7 + 144)];
  *v35 = v53;
  v35[1] = a6;
  v36 = sub_AB8440();
  (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
  v37 = sub_AB8240();
  (*(*(v37 - 8) + 56))(v13, 1, 1, v37);

  sub_66E970(v15, v13);
  sub_12E1C(v13, &qword_E11B88, &qword_B1F168);
  sub_12E1C(v15, &qword_E11B90, &unk_B1F170);
  v38 = MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification;
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 sharedCloudController];
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = v34;
  v44 = v55;
  v43[3] = v11[11];
  v43[4] = v44;
  v43[5] = v11[13];
  v43[6] = v42;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v7[*(*v7 + 160)] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v40, v41, 1, 1, sub_6739E0, v43);

  sub_6708A4();

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_672F84(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v8 = *(v7 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_66CD8C(v6);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_6730E4()
{
  result = qword_E11AD8[0];
  if (!qword_E11AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E11AD8);
  }

  return result;
}

void sub_673138(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 152);
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
}

__n128 sub_6731DC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t __swift_memcpy10_8_0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s15ActionableStateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s15ActionableStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_6732CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_6732FC(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x8000;
  }

  return result;
}

uint64_t sub_673348(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_673450()
{
  result = qword_E11B60;
  if (!qword_E11B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E11B60);
  }

  return result;
}

uint64_t sub_6734A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_6734DC()
{

  return swift_deallocObject();
}

uint64_t sub_673544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6735AC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30, &unk_B1F190) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = sub_AB8CB0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_673738(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30, &unk_B1F190) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_6726C8(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_49Tm_0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30, &unk_B1F190) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = sub_AB8CB0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_673A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_673A70(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB08, &qword_B1EF10, "%{public}s: waiting for perform to return…");
}

uint64_t sub_673ACC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671C18(a1, v4, v5, (v1 + 32));
}

uint64_t sub_673B90(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB08, &qword_B1EF10, "%{public}s: waiting for finish to return…");
}

uint64_t sub_673BEC(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB00, &qword_B183C0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_673C48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671CEC(a1, v4, v5, (v1 + 32));
}

uint64_t sub_673D0C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB00, &qword_B183C0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_673D8C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_673E50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_672600(a1, v4, v5, v1 + 32, (v1 + 288));
}

uint64_t objectdestroy_95Tm()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v1);
  }

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_673FFC()
{
  v1 = sub_AB31C0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_674084(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_AB31C0() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17BD0;

  return sub_5F7A44(a1, a2, v2 + v7);
}

uint64_t sub_674168(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_66216C(a1, v6, "%{public}s: waiting for perform to return…");
}

uint64_t sub_6741AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_67420C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_6721E4(a1, v4, v5, (v1 + 32));
}

uint64_t sub_6742D0(uint64_t a1)
{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return sub_66216C(a1, v6, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674318(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB50, &qword_B184B0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_6722B0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_67443C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB50, &qword_B184B0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674498(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB48, &qword_B1F260, "%{public}s: waiting for perform to return…");
}

uint64_t sub_6744F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_672384(a1, v4, v5, (v1 + 32));
}

uint64_t sub_6745B8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB48, &qword_B1F260, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674614(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB40, &unk_B18490, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674670(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_672458(a1, v4, v5, (v1 + 32));
}

uint64_t sub_674734(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB40, &unk_B18490, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674790(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB38, &qword_B1F2B0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_6747EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_67252C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_6748B0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB38, &qword_B1F2B0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_67490C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB28, &qword_B18448, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674968(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671F68(a1, v4, v5, (v1 + 32));
}

uint64_t sub_674A2C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB28, &qword_B18448, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674A88(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB20, &qword_B18440, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674AE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_67203C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_674BA8(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB20, &qword_B18440, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674C04(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB18, &qword_B18400, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674C60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_672110(a1, v4, v5, (v1 + 32));
}

uint64_t sub_674D24(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EB18, &qword_B18400, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674D80(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAF8, &qword_B1F350, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674DDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671DC0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_674EA0(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAF8, &qword_B1F350, "%{public}s: waiting for finish to return…");
}

uint64_t sub_674EFC(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAF0, &qword_B18390, "%{public}s: waiting for perform to return…");
}

uint64_t sub_674F58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671B44(a1, v4, v5, (v1 + 32));
}

uint64_t sub_67501C(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAF0, &qword_B18390, "%{public}s: waiting for finish to return…");
}

uint64_t sub_675078(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAE8, &qword_B1F3A0, "%{public}s: waiting for perform to return…");
}

uint64_t sub_6750D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671A70(a1, v4, v5, (v1 + 32));
}

uint64_t sub_675198(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAE8, &qword_B1F3A0, "%{public}s: waiting for finish to return…");
}

uint64_t sub_6751F4(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAC8, &qword_B18348, "%{public}s: waiting for perform to return…");
}

uint64_t sub_675250(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671E94(a1, v4, v5, (v1 + 32));
}

uint64_t sub_675314(uint64_t a1)
{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return sub_652A68(a1, v6, &qword_E0EAC8, &qword_B18348, "%{public}s: waiting for finish to return…");
}

uint64_t sub_6753DC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB0, &qword_B1F3F0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_671900(a1, v6, v7, v1 + v5);
}

uint64_t sub_67556C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB8, &qword_B18300) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_6719B8(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_288Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_AB4410();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_6758BC(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_661F10(a1, v7, "%{public}s: waiting for perform to return…");
}

uint64_t sub_675910()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_675990(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_671824(a1, v4, v5, v1 + 32);
}

uint64_t sub_675A54(uint64_t a1)
{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return sub_661F10(a1, v7, "%{public}s: waiting for finish to return…");
}

uint64_t Library.ContentFilterOption.id.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64616F6C6E776F64;
}

uint64_t sub_675BD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657469726F766166;
  if (v2 != 1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7105633;
  }

  if (v2)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x657469726F766166;
  if (*a2 != 1)
  {
    v6 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7105633;
  }

  if (*a2)
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_ABB3C0();
  }

  return v9 & 1;
}

unint64_t sub_675CC0@<X0>(Swift::String *a1@<X0>, MusicCore::Library::ContentFilterOption_optional *a2@<X8>)
{
  result = _s9MusicCore7LibraryO19ContentFilterOptionO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_675CF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x657469726F766166;
  if (v2 != 1)
  {
    v4 = 0x64616F6C6E776F64;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7105633;
  }

  if (!v5)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_675D50()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_675DF4(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_675E84(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void *Optional<A>.convertToSet.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return 0;
    }
  }

  else if (!a1)
  {

    return &_swiftEmptySetSingleton;
  }

  v2 = sub_ABB3C0();

  if (v2)
  {
    return &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BB0, &qword_B1F460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = a1;
  sub_508324(inited);
  v6 = v5;
  swift_setDeallocating();
  return v6;
}

uint64_t Library.Context.useDownloadedContentOnly.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Library.Context.sortOption.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.filterOption.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for Library.Context(0) + 60));

  return v1;
}

void Library.Context.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Library.Context(0) + 60));

  *v5 = a1;
  v5[1] = a2;
}

double Library.Context.playlistVariants.getter()
{
  type metadata accessor for Library.Context(0);

  return result;
}

void Library.Context.playlistVariants.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Library.Context(0) + 64);

  *(v1 + v3) = a1;
}

uint64_t Library.Context.isCompilation.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Library.Context.init()@<X0>(char *a1@<X8>)
{
  sub_AB8510();
  *a1 = sub_AB8500();
  v2 = type metadata accessor for Library.Context(0);
  v3 = v2[5];
  v4 = sub_AB8770();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = sub_AB88F0();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[7];
  v8 = sub_AB46C0();
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[8];
  v10 = sub_AB87A0();
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v2[9];
  v12 = sub_AB8E20();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v2[10];
  v14 = sub_AB46B0();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v2[11];
  v16 = sub_AB4710();
  result = (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  a1[v2[12]] = 0;
  a1[v2[13]] = 2;
  a1[v2[14]] = 3;
  v18 = &a1[v2[15]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&a1[v2[16]] = _swiftEmptyArrayStorage;
  a1[v2[17]] = 2;
  return result;
}

uint64_t Library.Context.with<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v36 = sub_AB4710();
  v33 = *(v36 - 8);
  __chkstk_darwin();
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_AB46B0();
  v34 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_AB8E20();
  v37 = *(v42 - 8);
  __chkstk_darwin();
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_AB87A0();
  v40 = *(v45 - 8);
  __chkstk_darwin();
  v44 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_AB46C0();
  v43 = *(v48 - 8);
  __chkstk_darwin();
  v47 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_AB88F0();
  v46 = *(v49 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_AB8770();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_ABA9C0();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v32 - v20;
  v50 = a3;
  sub_67A92C(v52, a3);
  v52 = v17;
  v22 = *(v17 + 16);
  v22(v21, v51, v16);
  v51 = *(a2 - 8);
  if ((*(v51 + 48))(v21, 1, a2) != 1)
  {
    v32 = v16;
    v22(v19, v21, v16);
    v23 = a2;
    v24 = v19;
    if (swift_dynamicCast())
    {
      v25 = *(type metadata accessor for Library.Context(0) + 20);
      v26 = v50;
      sub_12E1C(v50 + v25, &qword_E0EC98, &qword_B187E0);
      (*(v13 + 32))(v26 + v25, v15, v12);
      (*(v13 + 56))(v26 + v25, 0, 1, v12);
LABEL_17:
      (*(v51 + 8))(v24, v23);
      v16 = v32;
      return (*(v52 + 8))(v21, v16);
    }

    v27 = v49;
    if (swift_dynamicCast())
    {
      v28 = *(type metadata accessor for Library.Context(0) + 24);
      v29 = v50;
      sub_12E1C(v50 + v28, &qword_E0F570, &qword_B19FB0);
      v30 = v46;
    }

    else
    {
      v11 = v47;
      v27 = v48;
      if (swift_dynamicCast())
      {
        v28 = *(type metadata accessor for Library.Context(0) + 28);
        v29 = v50;
        sub_12E1C(v50 + v28, &qword_E11BB8, &qword_B1F468);
        v30 = v43;
      }

      else
      {
        v11 = v44;
        v27 = v45;
        if (swift_dynamicCast())
        {
          v28 = *(type metadata accessor for Library.Context(0) + 32);
          v29 = v50;
          sub_12E1C(v50 + v28, &qword_E11BC0, &unk_B1F470);
          v30 = v40;
        }

        else
        {
          v11 = v41;
          v27 = v42;
          if (swift_dynamicCast())
          {
            v28 = *(type metadata accessor for Library.Context(0) + 36);
            v29 = v50;
            sub_12E1C(v50 + v28, &qword_E10B00, &qword_B1A0A0);
            v30 = v37;
          }

          else
          {
            v11 = v38;
            v27 = v39;
            if (swift_dynamicCast())
            {
              v28 = *(type metadata accessor for Library.Context(0) + 40);
              v29 = v50;
              sub_12E1C(v50 + v28, &qword_E0F6C8, &unk_B1F480);
              v30 = v34;
            }

            else
            {
              v11 = v35;
              v27 = v36;
              if (!swift_dynamicCast())
              {
                goto LABEL_17;
              }

              v28 = *(type metadata accessor for Library.Context(0) + 44);
              v29 = v50;
              sub_12E1C(v50 + v28, &qword_E0F698, &qword_B1A228);
              v30 = v33;
            }
          }
        }
      }
    }

    (*(v30 + 32))(v29 + v28, v11, v27);
    (*(v30 + 56))(v29 + v28, 0, 1, v27);
    goto LABEL_17;
  }

  return (*(v52 + 8))(v21, v16);
}

uint64_t Library.Context.with(compilation:)@<X0>(uint64_t a1@<X8>)
{
  sub_67A92C(v1, a1);
  result = type metadata accessor for Library.Context(0);
  *(a1 + *(result + 68)) = 1;
  return result;
}

uint64_t Library.Context.with(sortOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_67A92C(v2, a2);
  result = type metadata accessor for Library.Context(0);
  *(a2 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.with(filterOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_67A92C(v2, a2);
  result = type metadata accessor for Library.Context(0);
  *(a2 + *(result + 56)) = a1;
  return result;
}

void Library.Context.with(filterText:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_67A92C(v3, a3);
  v7 = (a3 + *(type metadata accessor for Library.Context(0) + 60));

  *v7 = a1;
  v7[1] = a2;
}

Swift::Int Library.Context.SortOption.hashValue.getter(char a1)
{
  sub_ABB5C0();
  sub_ABB5D0(0);
  sub_ABB5E0(a1 & 1);
  return sub_ABB610();
}

Swift::Int sub_6776E8()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(0);
  sub_ABB5E0(v1);
  return sub_ABB610();
}

void sub_67773C()
{
  v1 = *v0;
  sub_ABB5D0(0);
  sub_ABB5E0(v1);
}

Swift::Int sub_67777C(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  sub_ABB5D0(0);
  sub_ABB5E0(v2);
  return sub_ABB610();
}

void Library.Context.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_AB8CB0();
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  __chkstk_darwin();
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_AB4710();
  v91 = *(v96 - 8);
  __chkstk_darwin();
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F698, &qword_B1A228);
  __chkstk_darwin();
  v92 = &v69 - v7;
  v89 = sub_AB46B0();
  v95 = *(v89 - 8);
  __chkstk_darwin();
  v74 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6C8, &unk_B1F480);
  __chkstk_darwin();
  v90 = &v69 - v9;
  v85 = sub_AB8E20();
  v88 = *(v85 - 8);
  __chkstk_darwin();
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00, &qword_B1A0A0);
  __chkstk_darwin();
  v87 = &v69 - v11;
  v82 = sub_AB87A0();
  v86 = *(v82 - 8);
  __chkstk_darwin();
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BC0, &unk_B1F470);
  __chkstk_darwin();
  v81 = &v69 - v13;
  v14 = sub_AB46C0();
  v83 = *(v14 - 8);
  v84 = v14;
  __chkstk_darwin();
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BB8, &qword_B1F468);
  __chkstk_darwin();
  v80 = &v69 - v16;
  v17 = sub_AB88F0();
  v78 = *(v17 - 8);
  v79 = v17;
  __chkstk_darwin();
  v70 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F570, &qword_B19FB0);
  __chkstk_darwin();
  v77 = &v69 - v19;
  v20 = sub_AB8770();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98, &qword_B187E0);
  __chkstk_darwin();
  v25 = &v69 - v24;
  v97 = *v1;
  sub_AB8510();
  sub_67B68C(&qword_E11BC8, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  sub_AB90E0();
  v26 = type metadata accessor for Library.Context(0);
  sub_15F84(v1 + v26[5], v25, &qword_E0EC98, &qword_B187E0);
  if ((*(v21 + 48))(v25, 1, v20) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    (*(v21 + 32))(v23, v25, v20);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BD0, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    sub_AB90E0();
    (*(v21 + 8))(v23, v20);
  }

  v27 = v77;
  sub_15F84(v1 + v26[6], v77, &qword_E0F570, &qword_B19FB0);
  v29 = v78;
  v28 = v79;
  v30 = (*(v78 + 48))(v27, 1, v79);
  v32 = v80;
  v31 = v81;
  if (v30 == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v33 = v27;
    v34 = v70;
    (*(v29 + 32))(v70, v33, v28);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BD8, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    sub_AB90E0();
    (*(v29 + 8))(v34, v28);
  }

  v35 = v87;
  v36 = v84;
  sub_15F84(v1 + v26[7], v32, &qword_E11BB8, &qword_B1F468);
  v37 = v83;
  if ((*(v83 + 48))(v32, 1, v36) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v38 = v71;
    (*(v37 + 32))(v71, v32, v36);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BE0, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    sub_AB90E0();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v82;
  sub_15F84(v2 + v26[8], v31, &qword_E11BC0, &unk_B1F470);
  v40 = v86;
  if ((*(v86 + 48))(v31, 1, v39) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v41 = v72;
    (*(v40 + 32))(v72, v31, v39);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BE8, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
    sub_AB90E0();
    (*(v40 + 8))(v41, v39);
  }

  v42 = v89;
  v43 = v91;
  sub_15F84(v2 + v26[9], v35, &qword_E10B00, &qword_B1A0A0);
  v44 = v88;
  v45 = v85;
  if ((*(v88 + 48))(v35, 1, v85) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v46 = v73;
    (*(v44 + 32))(v73, v35, v45);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BF0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    sub_AB90E0();
    (*(v44 + 8))(v46, v45);
  }

  v47 = v90;
  sub_15F84(v2 + v26[10], v90, &qword_E0F6C8, &unk_B1F480);
  if ((*(v95 + 6))(v47, 1, v42) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v48 = v95;
    v49 = v74;
    (*(v95 + 4))(v74, v47, v42);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11BF8, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
    sub_AB90E0();
    (*(v48 + 1))(v49, v42);
  }

  v50 = v92;
  sub_15F84(v2 + v26[11], v92, &qword_E0F698, &qword_B1A228);
  if ((*(v43 + 48))(v50, 1, v96) == 1)
  {
    sub_ABB5E0(0);
  }

  else
  {
    v51 = v75;
    v52 = v96;
    (*(v43 + 32))(v75, v50, v96);
    sub_ABB5E0(1u);
    sub_67B68C(&qword_E11C00, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    sub_AB90E0();
    (*(v43 + 8))(v51, v52);
  }

  v53 = v93;
  sub_ABB5E0(*(v2 + v26[12]));
  v54 = *(v2 + v26[13]);
  if (v54 == 2)
  {
    v55 = 0;
  }

  else
  {
    sub_ABB5E0(1u);
    sub_ABB5D0(0);
    v55 = v54 & 1;
  }

  sub_ABB5E0(v55);
  v56 = *(v2 + v26[14]);
  if (v56 == 3)
  {
    sub_ABB5E0(0);
    v57 = v76;
  }

  else
  {
    sub_ABB5E0(1u);
    v57 = v76;
    sub_AB93F0();
  }

  if (*(v2 + v26[15] + 8))
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  v95 = v26;
  v96 = v2;
  v58 = *(v2 + v26[16]);
  sub_ABB5D0(*(v58 + 16));
  v59 = *(v58 + 16);
  if (v59)
  {
    v60 = v57;
    v61 = v94 + 16;
    v62 = *(v94 + 16);
    v63 = v58 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v64 = *(v94 + 72);
    v65 = (v94 + 8);
    do
    {
      v66 = v61;
      v62(v60, v63, v53);
      sub_67B68C(&qword_E11C08, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
      sub_AB90E0();
      (*v65)(v60, v53);
      v61 = v66;
      v63 += v64;
      --v59;
    }

    while (v59);
  }

  v67 = *(v96 + v95[17]);
  if (v67 == 2)
  {
    v68 = 0;
  }

  else
  {
    sub_ABB5E0(1u);
    v68 = v67 & 1;
  }

  sub_ABB5E0(v68);
}

Swift::Int Library.Context.hashValue.getter()
{
  sub_ABB5C0();
  Library.Context.hash(into:)(v1);
  return sub_ABB610();
}

Swift::Int sub_6787C4(uint64_t a1)
{
  sub_ABB5C0();
  Library.Context.hash(into:)(v2);
  return sub_ABB610();
}

uint64_t sub_678800()
{
  v0 = type metadata accessor for Library.Context(0);
  __swift_allocate_value_buffer(v0, qword_E11B98);
  v1 = __swift_project_value_buffer(v0, qword_E11B98);
  sub_AB8510();
  *v1 = sub_AB8500();
  v2 = v0[5];
  v3 = sub_AB8770();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = v0[6];
  v5 = sub_AB88F0();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = v0[7];
  v7 = sub_AB46C0();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = v0[8];
  v9 = sub_AB87A0();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v0[9];
  v11 = sub_AB8E20();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = v0[10];
  v13 = sub_AB46B0();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = v0[11];
  v15 = sub_AB4710();
  result = (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v1[v0[12]] = 0;
  v1[v0[13]] = 2;
  v1[v0[14]] = 3;
  v17 = &v1[v0[15]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v1[v0[16]] = _swiftEmptyArrayStorage;
  v1[v0[17]] = 2;
  return result;
}

uint64_t sub_678A84@<X0>(uint64_t a1@<X8>)
{
  if (qword_E0CE18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Library.Context(0);
  v3 = __swift_project_value_buffer(v2, qword_E11B98);

  return sub_67A92C(v3, a1);
}

uint64_t sub_678AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_67B68C(&qword_E11C28, type metadata accessor for Library.Context, &protocol conformance descriptor for Library.Context);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.libraryContext.getter()
{
  sub_67A990();

  return sub_AB6250();
}

uint64_t EnvironmentValues.libraryContext.setter(uint64_t a1)
{
  type metadata accessor for Library.Context(0);
  __chkstk_darwin();
  sub_67A92C(a1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_67A990();
  sub_AB6260();
  return sub_67A9E4(a1);
}

void (*EnvironmentValues.libraryContext.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Library.Context(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_67A990();
  sub_AB6250();
  return sub_678D84;
}

void sub_678D84(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_67A92C((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_67A92C(v3[2], v3[1]);
    sub_AB6260();
    sub_67A9E4(v6);
  }

  else
  {
    sub_AB6260();
  }

  sub_67A9E4(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

double View.libraryContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_AB6FE0();

  return result;
}

uint64_t sub_678EC8(uint64_t a1)
{
  type metadata accessor for Library.Context(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_67A92C(a1, &v7 - v4);
  sub_67A92C(v5, v3);
  sub_67A990();
  sub_AB6260();
  return sub_67A9E4(v5);
}

uint64_t MusicLibraryRequest.apply(_:)(void *a1, uint64_t a2)
{

  sub_AB7E30();
  v4 = *(a1 + *(type metadata accessor for Library.Context(0) + 48));

  return MusicLibraryRequest.includeOnlyDownloadedContent.setter(v4, a2);
}

uint64_t _s9MusicCore7LibraryO7ContextV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v146 = sub_AB4710();
  v147 = *(v146 - 8);
  __chkstk_darwin();
  v141 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F698, &qword_B1A228);
  __chkstk_darwin();
  v142 = &v138 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D58, &qword_B1F710);
  __chkstk_darwin();
  v145 = &v138 - v6;
  v152 = sub_AB46B0();
  v153 = *(v152 - 8);
  __chkstk_darwin();
  v143 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F6C8, &unk_B1F480);
  __chkstk_darwin();
  v150 = &v138 - v8;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D60, &qword_B1F718);
  __chkstk_darwin();
  v151 = &v138 - v9;
  v10 = sub_AB8E20();
  v11 = *(v10 - 8);
  v158 = v10;
  v159 = v11;
  __chkstk_darwin();
  v148 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00, &qword_B1A0A0);
  __chkstk_darwin();
  v156 = &v138 - v13;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D68, &qword_B1F720);
  __chkstk_darwin();
  v157 = &v138 - v14;
  v163 = sub_AB87A0();
  v165 = *(v163 - 8);
  __chkstk_darwin();
  v154 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BC0, &unk_B1F470);
  __chkstk_darwin();
  v171 = &v138 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D70, &qword_B1F728);
  __chkstk_darwin();
  v162 = &v138 - v17;
  v18 = sub_AB46C0();
  v168 = *(v18 - 8);
  v169 = v18;
  __chkstk_darwin();
  v160 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11BB8, &qword_B1F468);
  __chkstk_darwin();
  v164 = &v138 - v20;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D78, &qword_B1F730);
  __chkstk_darwin();
  v174 = &v138 - v21;
  v173 = sub_AB88F0();
  v175 = *(v173 - 8);
  __chkstk_darwin();
  v166 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F570, &qword_B19FB0);
  __chkstk_darwin();
  v170 = &v138 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D80, &qword_B1F738);
  __chkstk_darwin();
  v172 = &v138 - v25;
  v26 = sub_AB8770();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98, &qword_B187E0);
  __chkstk_darwin();
  v31 = &v138 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11D88, &qword_B1F740);
  __chkstk_darwin();
  v34 = &v138 - v33;
  sub_AB8510();
  if ((sub_AB8340() & 1) == 0)
  {
    return 0;
  }

  v35 = type metadata accessor for Library.Context(0);
  v176 = a2;
  v36 = a1;
  v139 = v35;
  v37 = *(v35 + 20);
  v38 = *(v32 + 48);
  v140 = v36;
  sub_15F84(v36 + v37, v34, &qword_E0EC98, &qword_B187E0);
  sub_15F84(v176 + v37, &v34[v38], &qword_E0EC98, &qword_B187E0);
  v39 = *(v27 + 48);
  if (v39(v34, 1, v26) == 1)
  {
    if (v39(&v34[v38], 1, v26) == 1)
    {
      sub_12E1C(v34, &qword_E0EC98, &qword_B187E0);
      goto LABEL_9;
    }

LABEL_7:
    v40 = &qword_E11D88;
    v41 = &qword_B1F740;
    v42 = v34;
LABEL_44:
    sub_12E1C(v42, v40, v41);
    return 0;
  }

  sub_15F84(v34, v31, &qword_E0EC98, &qword_B187E0);
  if (v39(&v34[v38], 1, v26) == 1)
  {
    (*(v27 + 8))(v31, v26);
    goto LABEL_7;
  }

  (*(v27 + 32))(v29, &v34[v38], v26);
  sub_67B68C(&qword_E11DB8, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  v43 = sub_AB91C0();
  v44 = *(v27 + 8);
  v44(v29, v26);
  v44(v31, v26);
  sub_12E1C(v34, &qword_E0EC98, &qword_B187E0);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v45 = v139;
  v46 = v139[6];
  v47 = *(v24 + 48);
  v48 = v172;
  sub_15F84(v140 + v46, v172, &qword_E0F570, &qword_B19FB0);
  v49 = v176 + v46;
  v50 = v176;
  sub_15F84(v49, v48 + v47, &qword_E0F570, &qword_B19FB0);
  v51 = *(v175 + 48);
  v52 = v173;
  if (v51(v48, 1, v173) == 1)
  {
    v53 = v51(v48 + v47, 1, v52);
    v54 = v171;
    v55 = v174;
    if (v53 == 1)
    {
      sub_12E1C(v48, &qword_E0F570, &qword_B19FB0);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v56 = v170;
  sub_15F84(v48, v170, &qword_E0F570, &qword_B19FB0);
  v57 = v51(v48 + v47, 1, v52);
  v55 = v174;
  if (v57 == 1)
  {
    (*(v175 + 8))(v56, v52);
LABEL_14:
    v40 = &qword_E11D80;
    v41 = &qword_B1F738;
    v42 = v48;
    goto LABEL_44;
  }

  v58 = v175;
  v59 = v48 + v47;
  v60 = v45;
  v61 = v48;
  v62 = v166;
  (*(v175 + 32))(v166, v59, v52);
  sub_67B68C(&qword_E11DB0, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  v63 = sub_AB91C0();
  v64 = *(v58 + 8);
  v64(v62, v52);
  v64(v56, v52);
  v65 = v61;
  v45 = v60;
  v54 = v171;
  sub_12E1C(v65, &qword_E0F570, &qword_B19FB0);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v66 = v45[7];
  v67 = v50;
  v68 = *(v167 + 48);
  sub_15F84(v140 + v66, v55, &qword_E11BB8, &qword_B1F468);
  sub_15F84(v67 + v66, v55 + v68, &qword_E11BB8, &qword_B1F468);
  v70 = v168;
  v69 = v169;
  v71 = *(v168 + 48);
  if (v71(v55, 1, v169) == 1)
  {
    if (v71(v55 + v68, 1, v69) == 1)
    {
      sub_12E1C(v55, &qword_E11BB8, &qword_B1F468);
      goto LABEL_23;
    }

LABEL_21:
    v40 = &qword_E11D78;
    v41 = &qword_B1F730;
LABEL_43:
    v42 = v55;
    goto LABEL_44;
  }

  v72 = v164;
  sub_15F84(v55, v164, &qword_E11BB8, &qword_B1F468);
  if (v71(v55 + v68, 1, v69) == 1)
  {
    (*(v70 + 8))(v72, v69);
    goto LABEL_21;
  }

  v73 = v55 + v68;
  v74 = v160;
  (*(v70 + 32))(v160, v73, v69);
  sub_67B68C(&qword_E11DA8, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  v75 = sub_AB91C0();
  v76 = *(v70 + 8);
  v76(v74, v69);
  v76(v72, v69);
  sub_12E1C(v55, &qword_E11BB8, &qword_B1F468);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v77 = v45[8];
  v55 = v162;
  v78 = *(v161 + 48);
  sub_15F84(v140 + v77, v162, &qword_E11BC0, &unk_B1F470);
  sub_15F84(v176 + v77, v55 + v78, &qword_E11BC0, &unk_B1F470);
  v79 = *(v165 + 48);
  v80 = v163;
  if (v79(v55, 1, v163) == 1)
  {
    if (v79(v55 + v78, 1, v80) == 1)
    {
      sub_12E1C(v55, &qword_E11BC0, &unk_B1F470);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_15F84(v55, v54, &qword_E11BC0, &unk_B1F470);
  if (v79(v55 + v78, 1, v80) == 1)
  {
    (*(v165 + 8))(v54, v80);
LABEL_28:
    v40 = &qword_E11D70;
    v41 = &qword_B1F728;
    goto LABEL_43;
  }

  v81 = v54;
  v82 = v165;
  v83 = v55 + v78;
  v84 = v154;
  (*(v165 + 32))(v154, v83, v80);
  sub_67B68C(&qword_E11DA0, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
  v85 = sub_AB91C0();
  v86 = *(v82 + 8);
  v86(v84, v80);
  v86(v81, v80);
  sub_12E1C(v55, &qword_E11BC0, &unk_B1F470);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v87 = v45[9];
  v88 = *(v155 + 48);
  v55 = v157;
  sub_15F84(v140 + v87, v157, &qword_E10B00, &qword_B1A0A0);
  sub_15F84(v176 + v87, v55 + v88, &qword_E10B00, &qword_B1A0A0);
  v89 = v158;
  v90 = *(v159 + 48);
  if (v90(v55, 1, v158) == 1)
  {
    if (v90(v55 + v88, 1, v89) == 1)
    {
      sub_12E1C(v55, &qword_E10B00, &qword_B1A0A0);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_15F84(v55, v156, &qword_E10B00, &qword_B1A0A0);
  if (v90(v55 + v88, 1, v89) == 1)
  {
    (*(v159 + 8))(v156, v89);
LABEL_35:
    v40 = &qword_E11D68;
    v41 = &qword_B1F720;
    goto LABEL_43;
  }

  v91 = v159;
  v92 = v55 + v88;
  v93 = v148;
  (*(v159 + 32))(v148, v92, v89);
  sub_67B68C(&qword_E111B0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v94 = v156;
  v95 = sub_AB91C0();
  v96 = *(v91 + 8);
  v96(v93, v89);
  v96(v94, v89);
  sub_12E1C(v55, &qword_E10B00, &qword_B1A0A0);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v97 = v45[10];
  v98 = *(v149 + 48);
  v55 = v151;
  sub_15F84(v140 + v97, v151, &qword_E0F6C8, &unk_B1F480);
  sub_15F84(v176 + v97, v55 + v98, &qword_E0F6C8, &unk_B1F480);
  v99 = *(v153 + 48);
  v100 = v152;
  if (v99(v55, 1, v152) == 1)
  {
    if (v99(v55 + v98, 1, v100) == 1)
    {
      sub_12E1C(v55, &qword_E0F6C8, &unk_B1F480);
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  sub_15F84(v55, v150, &qword_E0F6C8, &unk_B1F480);
  if (v99(v55 + v98, 1, v100) == 1)
  {
    (*(v153 + 8))(v150, v100);
LABEL_42:
    v40 = &qword_E11D60;
    v41 = &qword_B1F718;
    goto LABEL_43;
  }

  v102 = v153;
  v103 = v55 + v98;
  v104 = v143;
  (*(v153 + 32))(v143, v103, v100);
  sub_67B68C(&qword_E11D98, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v105 = v150;
  v106 = sub_AB91C0();
  v107 = *(v102 + 8);
  v107(v104, v100);
  v107(v105, v100);
  sub_12E1C(v55, &qword_E0F6C8, &unk_B1F480);
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v108 = v45[11];
  v109 = *(v144 + 48);
  v110 = v145;
  sub_15F84(v140 + v108, v145, &qword_E0F698, &qword_B1A228);
  sub_15F84(v176 + v108, v110 + v109, &qword_E0F698, &qword_B1A228);
  v111 = *(v147 + 48);
  v112 = v146;
  if (v111(v110, 1, v146) == 1)
  {
    if (v111(v110 + v109, 1, v112) == 1)
    {
      sub_12E1C(v110, &qword_E0F698, &qword_B1A228);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v113 = v142;
  sub_15F84(v110, v142, &qword_E0F698, &qword_B1A228);
  if (v111(v110 + v109, 1, v112) == 1)
  {
    (*(v147 + 8))(v113, v112);
LABEL_53:
    v40 = &qword_E11D58;
    v41 = &qword_B1F710;
    v42 = v110;
    goto LABEL_44;
  }

  v114 = v147;
  v115 = v110 + v109;
  v116 = v141;
  (*(v147 + 32))(v141, v115, v112);
  sub_67B68C(&qword_E11D90, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v117 = sub_AB91C0();
  v118 = *(v114 + 8);
  v118(v116, v112);
  v118(v113, v112);
  sub_12E1C(v110, &qword_E0F698, &qword_B1A228);
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  if (*(v140 + v45[12]) != *(v176 + v45[12]))
  {
    return 0;
  }

  v119 = v45[13];
  v120 = *(v140 + v119);
  v121 = *(v176 + v119);
  if (v120 == 2)
  {
    if (v121 != 2)
    {
      return 0;
    }

    goto LABEL_61;
  }

  result = 0;
  if (v121 != 2 && ((v121 ^ v120) & 1) == 0)
  {
LABEL_61:
    v122 = v45[14];
    v123 = *(v140 + v122);
    v124 = *(v176 + v122);
    if (v123 == 3)
    {
      if (v124 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v124 == 3)
      {
        return 0;
      }

      v125 = 0xE900000000000073;
      v126 = 7105633;
      if (v123)
      {
        if (v123 == 1)
        {
          v127 = 0x657469726F766166;
        }

        else
        {
          v127 = 0x64616F6C6E776F64;
        }

        v128 = 0xE900000000000073;
      }

      else
      {
        v128 = 0xE300000000000000;
        v127 = 7105633;
      }

      if (v124)
      {
        if (v124 == 1)
        {
          v126 = 0x657469726F766166;
        }

        else
        {
          v126 = 0x64616F6C6E776F64;
        }
      }

      else
      {
        v125 = 0xE300000000000000;
      }

      if (v127 == v126 && v128 == v125)
      {

        v45 = v139;
      }

      else
      {
        v129 = sub_ABB3C0();

        v45 = v139;
        if ((v129 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v130 = v45[15];
    v131 = (v140 + v130);
    v132 = *(v140 + v130 + 8);
    v133 = (v176 + v130);
    v134 = v133[1];
    if (v132)
    {
      if (v134 && (*v131 == *v133 && v132 == v134 || (sub_ABB3C0() & 1) != 0))
      {
LABEL_87:
        if (sub_5D4784(*(v140 + v139[16]), *(v176 + v139[16])))
        {
          v135 = v139[17];
          v136 = *(v140 + v135);
          v137 = *(v176 + v135);
          if (v136 == 2)
          {
            if (v137 == 2)
            {
              return 1;
            }
          }

          else if (v137 != 2 && ((v137 ^ v136) & 1) == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (!v134)
    {
      goto LABEL_87;
    }

    return 0;
  }

  return result;
}