uint64_t sub_1E61537E8()
{
  *(v1 + 10456) = v0;
  if (v0)
  {

    v2 = sub_1E615A370;
  }

  else
  {
    v2 = sub_1E6153874;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6153874()
{
  v1 = *(v0 + 9496);
  v2 = *(v0 + 8008);
  v3 = *(v0 + 7864);
  v4 = *(v0 + 6664);
  (*(v0 + 9400))(v2, *(v0 + 8200), v3);
  sub_1E65DA908();
  v1(v2, v3);
  v5 = sub_1E65D99B8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = *(v0 + 6664);
  if (v7 == 1)
  {
    sub_1E5DFE50C(*(v0 + 6664), &qword_1ED0728C0, &qword_1E65EBF58);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v9 = sub_1E65D99A8();
    v10 = v11;
    (*(v6 + 8))(v8, v5);
  }

  *(v0 + 10552) = v10;
  *(v0 + 10504) = v9;
  v12 = *(v0 + 8200);

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v12, sub_1E61539E0, v0 + 10656);
}

uint64_t sub_1E61539E0()
{
  *(v1 + 10600) = v0;
  if (v0)
  {
    v2 = sub_1E615AD1C;
  }

  else
  {
    v2 = sub_1E6153A14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6153A14()
{
  v1 = *(v0 + 9496);
  v2 = *(v0 + 7960);
  v3 = *(v0 + 7864);
  (*(v0 + 9400))(v2, *(v0 + 8200), v3);
  sub_1E65DA8F8();
  *(v0 + 10648) = v4;
  v1(v2, v3);
  v5 = *(v0 + 8200);

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v5, sub_1E6153AC8, v0 + 11088);
}

uint64_t sub_1E6153AC8()
{
  *(v1 + 10696) = v0;
  if (v0)
  {
    v2 = sub_1E615B734;
  }

  else
  {
    v2 = sub_1E6153AFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6153AFC()
{
  v31 = v0;
  v1 = *(v0 + 9496);
  v2 = *(v0 + 8872);
  v3 = *(v0 + 8824);
  v4 = *(v0 + 8680);
  v5 = *(v0 + 8488);
  v6 = *(v0 + 7960);
  v7 = *(v0 + 7864);
  (*(v0 + 9400))(v6, *(v0 + 8200), v7);
  sub_1E65DA8D8();
  v1(v6, v7);
  sub_1E65DE318();
  v2(v4, v3, v5);
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 8680);
  v12 = *(v0 + 8536);
  v13 = *(v0 + 8488);
  v14 = *(v0 + 8392);
  v15 = *(v0 + 8296);
  v16 = *(v0 + 8248);
  if (v10)
  {
    v29 = *(v0 + 8248);
    v17 = swift_slowAlloc();
    v27 = v9;
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v19 = sub_1E65E6BC8();
    v28 = v14;
    v21 = v20;
    v23 = *(v12 + 8);
    v22 = v12 + 8;
    v23(v11, v13);
    v24 = sub_1E5DFD4B0(v19, v21, &v30);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1E5DE9000, v8, v27, "forYouRequest end — correlationKey=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E694F1C0](v18, -1, -1);
    MEMORY[0x1E694F1C0](v17, -1, -1);

    (*(v15 + 8))(v28, v29);
  }

  else
  {

    v25 = *(v12 + 8);
    v22 = v12 + 8;
    v25(v11, v13);
    (*(v15 + 8))(v14, v16);
  }

  *(v0 + 10744) = v22;
  sub_1E65DC838();

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E6153DB4, v0 + 11520);
}

uint64_t sub_1E6153FA8()
{
  (*(v0[1067] + 8))(v0[1103], v0[1061]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E61544B0(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1169];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E6154E34(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1199];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E61557E0(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1217];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E615618C(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1223];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E6156B38(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1235];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E61574E4(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1247];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E6157E90(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1259];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E615883C(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1271];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E61591E8(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1283];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E6159978()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E61599EC, v0 + 9840);
}

uint64_t sub_1E6159BE0(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1295];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E615A58C(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1307];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E615AD1C()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E615ADB0, v0 + 10704);
}

uint64_t sub_1E615AFA4(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1325];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E615B734()
{

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E615B7C8, v0 + 11136);
}

uint64_t sub_1E615B9BC(uint64_t a1)
{
  v47 = v1;
  v2 = v1[1337];
  v3 = v1[1109];
  v4 = v1[1103];
  v5 = v1[1079];
  v6 = v1[1061];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[1079];
    v11 = v1[1067];
    v45 = v2;
    v12 = v1[1061];
    v41 = v1[1037];
    v42 = v1[1031];
    v43 = v1[1043];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315394;
    sub_1E6162498(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1E65E6BC8();
    v17 = v16;
    v18 = v12;
    v2 = v45;
    v44 = *(v11 + 8);
    v44(v10, v18);
    v19 = sub_1E5DFD4B0(v15, v17, v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1E65E6C78();
    v22 = sub_1E5DFD4B0(v20, v21, v46);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "forYouRequest end — correlationKey=%s error=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v14, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);

    (*(v41 + 8))(v43, v42);
  }

  else
  {
    v23 = v1[1079];
    v24 = v1[1067];
    v25 = v1[1061];
    v26 = v1[1043];
    v27 = v1[1037];
    v28 = v1[1031];

    v44 = *(v24 + 8);
    v44(v23, v25);
    (*(v27 + 8))(v26, v28);
  }

  swift_getErrorValue();
  v29 = sub_1E65D9288();
  v1[650] = v29;
  v1[651] = sub_1E6162498(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 647);
  (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v29);
  v31 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v1 + 647);
  if (v31)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v32 = sub_1E65E6C98();
  v34 = v33;
  if (v32 == sub_1E65E5C78() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1E65E6C18();

    if ((v36 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v37 = sub_1E65DC678();
    sub_1E6162498(&qword_1EE2D6B28, MEMORY[0x1E699E140], MEMORY[0x1E699E148]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E699E138], v37);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v44(v1[1103], v1[1061]);

  v39 = v1[1];

  return v39();
}

uint64_t sub_1E615C14C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E615C16C, 0, 0);
}

uint64_t sub_1E615C16C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ConfigurationService.queryConfiguration.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FACF3C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E615C288(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B0, &qword_1E65EBF38);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615C328, 0, 0);
}

uint64_t sub_1E615C328()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AwardsService.makeAchievementEnvironmentCacheUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E615C444;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E615C444()
{

  return MEMORY[0x1EEE6DFA0](sub_1E615C55C, 0, 0);
}

uint64_t sub_1E615C55C()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B8, &qword_1E65EBF48);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4490, &qword_1ED0728B8, &qword_1E65EBF48, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E65DC9A8();
  sub_1E5FED46C(&qword_1EE2D4780, &qword_1ED0728B0, &qword_1E65EBF38, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E615C69C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615C73C, 0, 0);
}

uint64_t sub_1E615C73C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[6] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E615C858;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E615C858()
{

  return MEMORY[0x1EEE6DFA0](sub_1E615C970, 0, 0);
}

uint64_t sub_1E615C970()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A8, &qword_1E65EBF30);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4468, &qword_1ED0728A8, &qword_1E65EBF30, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E615CAAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C0, &qword_1E65EBA50);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615CB4C, 0, 0);
}

uint64_t sub_1E615CB4C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ContentAvailabilityService.makeAllowedContentRatingsUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E615CC68;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E615CC68()
{

  return MEMORY[0x1EEE6DFA0](sub_1E615CD80, 0, 0);
}

uint64_t sub_1E615CD80()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A0, &qword_1E65EBF20);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4470, &qword_1ED0728A0, &qword_1E65EBF20, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4748, &qword_1ED0726C0, &qword_1E65EBA50, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E615CEBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E615CEDC, 0, 0);
}

uint64_t sub_1E615CEDC()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (active + *active);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE47FC;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E615D064(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072878, &qword_1E65EBED8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615D104, 0, 0);
}

uint64_t sub_1E615D104()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E615D220;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E615D220()
{

  return MEMORY[0x1EEE6DFA0](sub_1E615D338, 0, 0);
}

uint64_t sub_1E615D338()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072880, &qword_1E65EBEE8);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44D8, &qword_1ED072880, &qword_1E65EBEE8, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D47B8, &qword_1ED072878, &qword_1E65EBED8, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E615D470(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072868, &qword_1E65EBEC0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615D510, 0, 0);
}

uint64_t sub_1E615D510()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = RecommendationService.makeOnboardingSurveyResultsUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E615D62C;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E615D62C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E615D744, 0, 0);
}

uint64_t sub_1E615D744()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072870, &qword_1E65EBED0);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44A0, &qword_1ED072870, &qword_1E65EBED0, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4788, &qword_1ED072868, &qword_1E65EBEC0, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E615D87C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072858, &qword_1E65EBEA8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615D91C, 0, 0);
}

uint64_t sub_1E615D91C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = PrivacyPreferenceService.makePersonalizationPrivacyPreferenceUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E615DA38;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E615DA38()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5FE45F0;
  }

  else
  {
    v2 = sub_1E615DB68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E615DB68()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072860, &qword_1E65EBEB8);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44B0, &qword_1ED072860, &qword_1E65EBEB8, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D4798, &qword_1ED072858, &qword_1E65EBEA8, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E615DCA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E615DCC4, 0, 0);
}

uint64_t sub_1E615DCC4()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FEE4C4;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E615DE4C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFA78C;

  return v4();
}

uint64_t sub_1E615DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for RouteDestination(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1E65DC508();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1E65DC818();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615E0E8, 0, 0);
}

uint64_t sub_1E615E0E8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[2], v3);
  if ((*(v2 + 88))(v1, v3) != *MEMORY[0x1E699E0A0])
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    goto LABEL_5;
  }

  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];
  (*(v0[11] + 96))(v7, v0[10]);
  (*(v5 + 32))(v4, v7, v6);
  sub_1E6409F80(v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[6];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_1E5DFE50C(v11, &unk_1ED072040, &qword_1E65F0860);
LABEL_5:

    v12 = v0[1];

    return v12();
  }

  v14 = v0[3];
  sub_1E5E1E048(v0[6], v0[9], type metadata accessor for RouteDestination);
  v16 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[16] = v15;
  *v15 = v0;
  v15[1] = sub_1E615E38C;

  return v16();
}

uint64_t sub_1E615E38C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E615E488, 0, 0);
}

uint64_t sub_1E615E488()
{
  v1 = *(v0 + 40);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  sub_1E600F5B0((v0 + 152));
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1E615E55C;
  v5 = *(v0 + 72);

  return RoutingContext.appendDestination(_:priority:)(v5, (v0 + 152), v3, v2);
}

uint64_t sub_1E615E55C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E615E73C;
  }

  else
  {
    v2 = sub_1E615E670;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E615E670()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_1E61624E0(v0[9], type metadata accessor for RouteDestination);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E615E73C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_1E61624E0(v0[9], type metadata accessor for RouteDestination);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E615E80C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v0[2] = swift_task_alloc();
  v1 = sub_1E65D74E8();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615E900, 0, 0);
}

id sub_1E615E900()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1E65D74C8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[2], &qword_1ED072340, &qword_1E65EA410);
  }

  else
  {
    (*(v0[4] + 32))(v0[5], v0[2], v0[3]);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = sub_1E65D7448();
    sub_1E6215168(MEMORY[0x1E69E7CC0]);
    v10 = sub_1E65E5AF8();

    [v5 openSensitiveURL:v9 withOptions:v10];

    (*(v7 + 8))(v6, v8);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E615EAB8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = sub_1E65D9CC8();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = sub_1E65DC508();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v7 = sub_1E65DC818();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD0, &qword_1E65F3528);
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E615EDB0, 0, 0);
}

uint64_t sub_1E615EDB0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 96);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = -1;
  v8 = -1 << *(*(v0 + 96) + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v87 = (v2 + 88);
  v84 = (*(v0 + 264) + 8);
  v85 = *(v0 + 264);
  v86 = *MEMORY[0x1E699E0A0];
  v83 = (v2 + 8);
  v81 = (v1 + 32);
  v82 = (v2 + 96);
  v79 = (v1 + 8);
  v80 = *(v0 + 192);
  v88 = *(v0 + 96);

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v13 = v11;
    *(v0 + 280) = v12;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v14 = *(v0 + 224);
    v15 = *(v0 + 208);
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v85 + 16))(*(v0 + 272), *(v88 + 48) + *(v85 + 72) * (v16 | (v11 << 6)), *(v0 + 256));
    sub_1E65E04E8();
    v17 = (*v87)(v14, v15);
    v18 = *(v0 + 224);
    v19 = *(v0 + 208);
    if (v17 == v86)
    {
      v20 = *(v0 + 248);
      v21 = *(v0 + 232);
      (*v82)(*(v0 + 224), *(v0 + 208));
      (*v81)(v20, v18, v21);
      v22 = sub_1E65DC7B8();
      sub_1E65DC7E8();
      v23 = sub_1E65DC7D8();
      if (v23 <= 2 && v23 != 1 && v23 != 2)
      {
        sub_1E65E68A8();
        *(v0 + 16) = 0;
        *(v0 + 24) = 0xE000000000000000;
        MEMORY[0x1E694D7C0](0xD000000000000018, 0x80000001E6610E60);
        *(v0 + 352) = 0;
        sub_1E65E69B8();
        MEMORY[0x1E694D7C0](0xD000000000000018, 0x80000001E6610E80);
        return sub_1E65E69D8();
      }

      sub_1E65DC7F8();
      sub_1E65D9C88();
      v24 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = sub_1E6417228(v22);
      v27 = v12[2];
      v28 = (v26 & 1) == 0;
      result = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

      v30 = v26;
      if (v12[3] >= result)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          result = sub_1E64237D0();
          v24 = v12;
          if (v30)
          {
            goto LABEL_21;
          }

          goto LABEL_19;
        }
      }

      else
      {
        sub_1E6419E14(result, isUniquelyReferenced_nonNull_native);
        v24 = v12;
        result = sub_1E6417228(v22);
        v78 = result;
        if ((v30 & 1) != (v31 & 1))
        {
LABEL_49:

          return sub_1E65E6C68();
        }
      }

      if (v30)
      {
        goto LABEL_21;
      }

LABEL_19:
      v24[(v78 >> 6) + 8] |= 1 << v78;
      *(v24[6] + v78) = v22;
      *(v24[7] + 8 * v78) = MEMORY[0x1E69E7CC0];
      v32 = v24[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_54;
      }

      v24[2] = v34;
LABEL_21:
      v35 = v24[7];
      v36 = *(v35 + 8 * v78);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 8 * v78) = v36;
      if ((v37 & 1) == 0)
      {
        v36 = sub_1E64F610C(0, v36[2] + 1, 1, v36);
        *(v35 + 8 * v78) = v36;
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        *(v35 + 8 * v78) = sub_1E64F610C((v38 > 1), v39 + 1, 1, v36);
      }

      v40 = *(v0 + 272);
      v41 = *(v0 + 256);
      v76 = *(v0 + 184);
      v77 = *(v0 + 200);
      (*v79)(*(v0 + 248), *(v0 + 232));
      (*v84)(v40, v41);
      v42 = *(v35 + 8 * v78);
      *(v42 + 16) = v39 + 1;
      (*(v80 + 32))(v42 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v39, v77, v76);
      v12 = v24;
    }

    else
    {
      (*v84)(*(v0 + 272), *(v0 + 256));
      (*v83)(v18, v19);
    }
  }

  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v11);
    ++v13;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v43 = sub_1E6427ACC(MEMORY[0x1E69E7CC0]);
  *(v0 + 64) = v43;
  v44 = *(v12 + 32);
  *(v0 + 353) = v44;
  v45 = -1;
  v46 = -1 << v44;
  v47 = v12[8];
  if (-v46 < 64)
  {
    v45 = ~(-1 << -v46);
  }

  *(v0 + 288) = v43;
  v48 = v45 & v47;
  if (!v48)
  {
    v51 = 0;
    v52 = ((63 - v46) >> 6) - 1;
    v50 = *(v0 + 280);
    while (v52 != v51)
    {
      v49 = v51 + 1;
      v48 = *(v50 + 8 * v51++ + 72);
      if (v48)
      {
        goto LABEL_35;
      }
    }

    v61 = *(v0 + 168);
    v60 = *(v0 + 176);
    v63 = *(v0 + 152);
    v62 = *(v0 + 160);
    v64 = *(v0 + 144);

    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    (*(v61 + 8))(v60, v62);
    sub_1E5FAB460(v63, v64, &qword_1ED072910, &qword_1E65EC030);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v68 = **(v0 + 144);
        goto LABEL_45;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v66 = *(v0 + 144);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
        v68 = *v66;
        v69 = sub_1E65D76A8();
        (*(*(v69 - 8) + 8))(&v66[v67], v69);
LABEL_45:
        v70 = *(v0 + 96);
        v71 = *(v0 + 104);
        v72 = swift_task_alloc();
        v72[2] = v0 + 64;
        v72[3] = v68;
        v72[4] = v71;
        v73 = sub_1E6404FF0(sub_1E6161D08, v72, v70);

        v74 = sub_1E600C24C(v73);

        v75 = *(v0 + 8);

        return v75(v74);
      }

      sub_1E5DFE50C(*(v0 + 144), &qword_1ED072910, &qword_1E65EC030);
    }

    v68 = 0;
    goto LABEL_45;
  }

  v49 = 0;
  v50 = *(v0 + 280);
LABEL_35:
  *(v0 + 296) = v48;
  *(v0 + 304) = v49;
  v53 = __clz(__rbit64(v48)) | (v49 << 6);
  v54 = *(*(v50 + 48) + v53);
  *(v0 + 354) = v54;
  v55 = *(*(v50 + 56) + 8 * v53);
  *(v0 + 312) = v55;
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);

  v56 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 320) = v57;
  v89 = (v56 + *v56);
  v58 = swift_task_alloc();
  *(v0 + 328) = v58;
  *v58 = v0;
  v58[1] = sub_1E615F79C;
  v59 = byte_1E65F364A[v54];

  return v89(v59, v55);
}

uint64_t sub_1E615F79C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_1E61600DC;
  }

  else
  {
    v4 = sub_1E615F8F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

unint64_t sub_1E615F8F4()
{
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 72) = MEMORY[0x1E69E7CC0];
    sub_1E601BF24(0, v2, 0);
    v3 = *(v0 + 72);
    v73 = sub_1E65D8258();
    v4 = *(v73 - 8);
    v72 = *(v4 + 16);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v71 = *(v4 + 72);
    do
    {
      v75 = v2;
      v6 = *(v0 + 128);
      v72(&v6[*(*(v0 + 112) + 48)], v5, v73);
      v74 = sub_1E65DC748();
      v8 = v7;
      v9 = sub_1E65D8078();
      v11 = v10;
      v12 = sub_1E65D81B8();
      v14 = v3;
      if (v13)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      *(v0 + 32) = v9;
      *(v0 + 40) = v11;

      v17 = v15;
      v3 = v14;
      MEMORY[0x1E694D7C0](v17, v16);

      v18 = *(v0 + 40);
      *(v0 + 48) = *(v0 + 32);
      *(v0 + 56) = v18;

      MEMORY[0x1E694D7C0](v74, v8);

      v19 = *(v0 + 56);
      *v6 = *(v0 + 48);
      *(v6 + 1) = v19;
      *(v0 + 72) = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E601BF24((v20 > 1), v21 + 1, 1);
        v3 = *(v0 + 72);
      }

      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      *(v3 + 16) = v21 + 1;
      sub_1E5FAB460(v22, v3 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_1ED072088, &qword_1E65EA770);
      v5 += v71;
      v2 = v75 - 1;
    }

    while (v75 != 1);

    if (*(v3 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
      v24 = sub_1E65E6A28();
      goto LABEL_16;
    }
  }

  v24 = MEMORY[0x1E69E7CC8];
LABEL_16:
  v25 = *(v0 + 344);
  *(v0 + 80) = v24;

  sub_1E64346A8(v26, 1, (v0 + 80));
  if (v25)
  {

    return swift_unexpectedError();
  }

  v28 = *(v0 + 354);

  v29 = *(v0 + 80);
  v30 = *(v0 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 88) = v30;
  result = sub_1E6417228(v28);
  v33 = *(v30 + 16);
  v34 = (v32 & 1) == 0;
  v35 = __OFADD__(v33, v34);
  v36 = v33 + v34;
  if (v35)
  {
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v28) = v32;
  if (*(v30 + 24) >= v36)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

LABEL_30:
    v40 = result;
    sub_1E6423794();
    result = v40;
    v39 = *(v0 + 88);
    if (v28)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v37 = *(v0 + 354);
  sub_1E6419DC4(v36, isUniquelyReferenced_nonNull_native);
  result = sub_1E6417228(v37);
  if ((v28 & 1) != (v38 & 1))
  {

    return sub_1E65E6C68();
  }

LABEL_27:
  v39 = *(v0 + 88);
  if (v28)
  {
LABEL_28:
    *(v39[7] + 8 * result) = v29;

    goto LABEL_33;
  }

LABEL_31:
  v41 = *(v0 + 354);
  v39[(result >> 6) + 8] |= 1 << result;
  *(v39[6] + result) = v41;
  *(v39[7] + 8 * result) = v29;
  v42 = v39[2];
  v35 = __OFADD__(v42, 1);
  v43 = v42 + 1;
  if (v35)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v39[2] = v43;
LABEL_33:
  *(v0 + 64) = v39;
  v45 = *(v0 + 296);
  v44 = *(v0 + 304);
  *(v0 + 288) = v39;
  v46 = (v45 - 1) & v45;
  if (!v46)
  {
    while (1)
    {
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      result = *(v0 + 280);
      if (v47 >= (((1 << *(v0 + 353)) + 63) >> 6))
      {
        break;
      }

      v46 = *(result + 8 * v47 + 64);
      ++v44;
      if (v46)
      {
        v44 = v47;
        goto LABEL_39;
      }
    }

    v56 = *(v0 + 168);
    v55 = *(v0 + 176);
    v58 = *(v0 + 152);
    v57 = *(v0 + 160);
    v59 = *(v0 + 144);

    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    (*(v56 + 8))(v55, v57);
    sub_1E5FAB460(v58, v59, &qword_1ED072910, &qword_1E65EC030);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v77 = v0 + 64;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v77 = v0 + 64;
        v63 = **(v0 + 144);
        goto LABEL_50;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v77 = v0 + 64;
        v61 = *(v0 + 144);
        v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
        v63 = *v61;
        v64 = sub_1E65D76A8();
        (*(*(v64 - 8) + 8))(&v61[v62], v64);
LABEL_50:
        v65 = *(v0 + 96);
        v66 = *(v0 + 104);
        v67 = swift_task_alloc();
        v67[2] = v77;
        v67[3] = v63;
        v67[4] = v66;
        v68 = sub_1E6404FF0(sub_1E6161D08, v67, v65);

        v69 = sub_1E600C24C(v68);

        v70 = *(v0 + 8);

        return v70(v69);
      }

      v77 = v0 + 64;
      sub_1E5DFE50C(*(v0 + 144), &qword_1ED072910, &qword_1E65EC030);
    }

    v63 = 0;
    goto LABEL_50;
  }

  result = *(v0 + 280);
LABEL_39:
  *(v0 + 296) = v46;
  *(v0 + 304) = v44;
  v48 = __clz(__rbit64(v46)) | (v44 << 6);
  v49 = *(*(result + 48) + v48);
  *(v0 + 354) = v49;
  v50 = *(*(result + 56) + 8 * v48);
  *(v0 + 312) = v50;
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);

  v51 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 320) = v52;
  v76 = (v51 + *v51);
  v53 = swift_task_alloc();
  *(v0 + 328) = v53;
  *v53 = v0;
  v53[1] = sub_1E615F79C;
  v54 = byte_1E65F364A[v49];

  return v76(v54, v50);
}

uint64_t sub_1E61600DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61601C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a5;
  v57 = a4;
  v64 = a3;
  v63 = sub_1E65D7848();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v55 - v9;
  v10 = sub_1E65D8258();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v55 - v14;
  v15 = sub_1E65DC508();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65DC818();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD0, &qword_1E65F3528);
  v62 = a1;
  sub_1E65E04E8();
  if ((*(v16 + 88))(v18, v15) != *MEMORY[0x1E699E0A0])
  {
    (*(v16 + 8))(v18, v15);
LABEL_14:
    v52 = 1;
    v50 = v68;
    goto LABEL_15;
  }

  (*(v16 + 96))(v18, v15);
  (*(v20 + 32))(v22, v18, v19);
  v23 = sub_1E65DC7B8();
  v24 = *a2;
  if (!*(*a2 + 16) || (v25 = sub_1E6417228(v23), (v26 & 1) == 0))
  {
LABEL_13:
    (*(v20 + 8))(v22, v19);
    goto LABEL_14;
  }

  v27 = *(*(v24 + 56) + 8 * v25);

  v28 = sub_1E65DC798();
  if (!*(v27 + 16))
  {

    goto LABEL_12;
  }

  v30 = sub_1E6215038(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v33 = v66;
  v34 = *(v27 + 56) + *(v66 + 72) * v30;
  v35 = v67;
  (*(v66 + 16))(v13, v34, v67);

  v36 = *(v33 + 32);
  v37 = v65;
  v36(v65, v13, v35);
  v38 = v64;
  if (v64)
  {
    v39 = sub_1E65D80B8();
    v41 = v40;
    v69 = v39;
    v70 = v40;
    v43 = v42 & 1;
    v71 = v42 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E65D7FB8();
    sub_1E5F87058(v39, v41, v43);
    if (v72 != 3 && (sub_1E637CE70(v72, v38) & 1) == 0)
    {
      (*(v66 + 8))(v37, v67);
      goto LABEL_13;
    }
  }

  v44 = v57;
  swift_getKeyPath();
  v45 = v56;
  sub_1E65E4EC8();

  v46 = v44 + *(type metadata accessor for AppComposer(0) + 20);
  v47 = *(v46 + 8);
  swift_getKeyPath();
  v48 = v60;
  sub_1E65E4EC8();

  v49 = (v46 + *(type metadata accessor for AppEnvironment(0) + 136));
  v50 = v68;
  v51 = v65;
  sub_1E64107B4(v62, v47, v48, v49, v68);
  (*(v61 + 8))(v48, v63);
  (*(v58 + 8))(v45, v59);
  (*(v66 + 8))(v51, v67);
  (*(v20 + 8))(v22, v19);
  v52 = 0;
LABEL_15:
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CA0, &unk_1E65EC630);
  return (*(*(v53 - 8) + 56))(v50, v52, 1, v53);
}

id sub_1E6160810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v43 = a1;
  v34[1] = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v4 = MEMORY[0x1EEE9AC00](v38);
  v40 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = v34 - v6;
  v7 = sub_1E65DC778();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E65DC578();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D76F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v34 - v17;
  v19 = sub_1E65D7848();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v18);
  sub_1E5DFE50C(v15, &qword_1ED071F78, &unk_1E65EA3F0);
  v24 = *(v20 + 48);
  v25 = v24(v18, 1, v19);
  v39 = v22;
  if (v25 == 1)
  {
    sub_1E65D77C8();
    if (v24(v18, 1, v19) != 1)
    {
      sub_1E5DFE50C(v18, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
  }

  (*(v11 + 16))(v42, v35, v10);
  type metadata accessor for AppComposer(0);
  sub_1E65DAE08();
  sub_1E65DC768();
  sub_1E65DC568();
  sub_1E6161CF4(*(v43 + *(v23 + 140)), *(v43 + *(v23 + 140) + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v26 = v37;
  sub_1E65E4C98();
  v27 = v26;
  v28 = v40;
  sub_1E5FAB460(v27, v40, &qword_1ED072808, &qword_1E65EBE00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072820, &qword_1E65EBE18) + 48);
      v31 = sub_1E65D76A8();
      (*(*(v31 - 8) + 8))(v28 + v30, v31);
    }

    else
    {
      sub_1E5DFE50C(v28, &qword_1ED072808, &qword_1E65EBE00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v33 = result;
    MobileGestalt_get_wapiCapability();

    type metadata accessor for ArtworkDescriptor(0);
    sub_1E6162498(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E6160F48();
    return sub_1E65DC538();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6160E58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CC8, &qword_1E65F3520);
  v2 = sub_1E65DC528();
  v4 = v3;
  v5 = a1 + *(type metadata accessor for AppState(0) + 140);
  result = sub_1E60DB538(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v4;
  return result;
}

uint64_t sub_1E6160EC8@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E607F810(a1, v6, a2);
}

unint64_t sub_1E6160F48()
{
  result = qword_1ED075C98;
  if (!qword_1ED075C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075C98);
  }

  return result;
}

uint64_t sub_1E6160F9C(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6150164(a1, a2, v2 + v7);
}

uint64_t sub_1E6161080(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615C288(a1, v1 + v5);
}

uint64_t sub_1E616115C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615C69C(a1, v1 + v5);
}

uint64_t sub_1E6161238(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615CAAC(a1, v1 + v5);
}

uint64_t sub_1E6161314(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615CEBC(a1, v1 + v5);
}

uint64_t sub_1E61613F0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE3504(a1, v1 + v5);
}

uint64_t sub_1E61614CC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE37C0(a1, v1 + v5);
}

uint64_t sub_1E61615A8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615D064(a1, v1 + v5);
}

uint64_t sub_1E6161684(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E615D470(a1, v1 + v5);
}

uint64_t sub_1E6161760(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615D87C(a1, v1 + v5);
}

uint64_t sub_1E616183C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615DCA4(a1, v1 + v5);
}

uint64_t sub_1E6161918(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE4D1C(a1, v1 + v5);
}

uint64_t sub_1E61619F4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E615DE4C(v2);
}

uint64_t sub_1E6161A8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E615DF34(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6161B38(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E615EAB8(a1, v1 + v5);
}

id sub_1E6161C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E65D76F8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1E6160810(a1, v2 + v6, v9, a2);
}

uint64_t sub_1E6161CF4(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t sub_1E6161D28(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  v10 = *(v9 + *(v8 + 64));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E5FE09EC(a1, v1 + v6, v9, v10);
}

uint64_t sub_1E6161E94(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E615C14C(a1, v1 + v5);
}

uint64_t sub_1E6161F70(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1144(a1, v1 + v5);
}

uint64_t sub_1E616204C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE13A8(a1, v1 + v5);
}

uint64_t sub_1E6162128(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE14DC(a1, v1 + v5);
}

uint64_t sub_1E6162204(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1764(a1, v1 + v5);
}

uint64_t sub_1E61622E0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1898(a1, v1 + v5);
}

uint64_t sub_1E61623BC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE19CC(a1, v1 + v5);
}

uint64_t sub_1E6162498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E61624E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6162540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v67 = a4;
  v68 = a3;
  v11 = type metadata accessor for RouteSource(0);
  v64 = *(v11 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E65D74E8();
  v13 = *(v65 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v17 = sub_1E65E3B68();
  __swift_project_value_buffer(v17, qword_1EE2EA2A0);
  sub_1E65E3B18();
  if (v16 < 4)
  {
    *a6 = a1;
    a6[1] = a2;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    v24 = type metadata accessor for RouteDestination(0);
    sub_1E5DFA978(v67, a6 + *(v24 + 20), type metadata accessor for RouteSource);
    *(a6 + *(v24 + 24)) = a5;

    v25 = sub_1E64A37AC();
    if (*(v25 + 16) && (v26 = sub_1E6215038(1953460082, 0xE400000000000000), (v27 & 1) != 0))
    {
      v28 = (*(v25 + 56) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];

      RootItem.init(rawValue:)(v29, v30, &v69);
      v31 = *(&v69 + 1);
      if (*(&v69 + 1) != 6)
      {
        v32 = v69;
LABEL_15:
        v33 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
        v35 = (a6 + *(v34 + 48));
        v36 = *(v34 + 64);
        *v35 = v32;
        v35[1] = v31;
        *(a6 + v36) = 1;
        type metadata accessor for ResolvedURLRoute.Action(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for ResolvedURLRoute(0);
        *v33 = 0;
        v33[1] = 0;
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {

      v69 = xmmword_1E65EAE00;
    }

    swift_beginAccess();
    v32 = qword_1ED075958;
    v31 = qword_1ED075960;
    sub_1E5E05374(qword_1ED075958, qword_1ED075960);
    goto LABEL_15;
  }

  v18 = sub_1E64A37AC();
  v19 = *(v18 + 16);
  v63 = a5;
  if (!v19 || (v20 = sub_1E6215038(1953460082, 0xE400000000000000), (v21 & 1) == 0))
  {

    v69 = xmmword_1E65EAE00;
    goto LABEL_17;
  }

  v22 = (*(v18 + 56) + 16 * v20);
  v23 = v22[1];
  v62 = *v22;

  RootItem.init(rawValue:)(v62, v23, &v69);
  if (*(&v69 + 1) == 6)
  {
LABEL_17:
    swift_beginAccess();
    v61 = qword_1ED075960;
    v62 = qword_1ED075958;
    sub_1E5E05374(qword_1ED075958, qword_1ED075960);
    goto LABEL_18;
  }

  v61 = *(&v69 + 1);
  v62 = v69;
LABEL_18:
  v60 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
  v39 = (a6 + *(v38 + 48));
  v57 = *(v38 + 64);
  v58 = a2;
  v59 = a1;
  *a6 = a1;
  a6[1] = a2;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v40 = type metadata accessor for RouteDestination(0);
  v41 = v67;
  sub_1E5DFA978(v67, a6 + *(v40 + 20), type metadata accessor for RouteSource);
  *(a6 + *(v40 + 24)) = v63;
  v42 = v61;
  *v39 = v62;
  v39[1] = v42;
  *(a6 + v57) = 1;
  type metadata accessor for ResolvedURLRoute.Action(0);
  swift_storeEnumTagMultiPayload();
  v43 = v65;
  (*(v13 + 16))(&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v68, v65);
  v44 = v41;
  v45 = v66;
  sub_1E5DFA978(v44, v66, type metadata accessor for RouteSource);
  v46 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v47 = (v14 + *(v64 + 80) + v46) & ~*(v64 + 80);
  v48 = (v12 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v15;
  v51 = v58;
  *(v49 + 16) = v59;
  *(v49 + 24) = v51;
  (*(v13 + 32))(v49 + v46, v50, v43);
  sub_1E613DB80(v45, v49 + v47);
  v52 = v62;
  *(v49 + v48) = v63;
  v53 = (v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8));
  v54 = v61;
  *v53 = v52;
  v53[1] = v54;
  v55 = v60;
  *v60 = &unk_1E65F3670;
  v55[1] = v49;
  type metadata accessor for ResolvedURLRoute(0);
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_1E5E05374(v52, v54);
}

uint64_t sub_1E6162BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[112] = a8;
  v8[111] = a7;
  v8[110] = a6;
  v8[109] = a5;
  v8[108] = a4;
  v8[107] = a3;
  v8[106] = a2;
  v8[105] = a1;
  v8[113] = type metadata accessor for ResolvedURLRoute.Action(0);
  v8[114] = swift_task_alloc();
  v8[115] = type metadata accessor for RouteDestination(0);
  v8[116] = swift_task_alloc();
  v9 = sub_1E65D8668();
  v8[117] = v9;
  v8[118] = *(v9 - 8);
  v8[119] = swift_task_alloc();
  v8[120] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CD8, &qword_1E65F3678);
  v8[121] = swift_task_alloc();
  v8[122] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6162D30, 0, 0);
}

uint64_t sub_1E6162D30()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  sub_1E5DF650C(*(v0 + 840), v0 + 696);
  v3 = swift_allocObject();
  *(v0 + 984) = v3;
  sub_1E5DF599C((v0 + 696), v3 + 16);
  *(v3 + 56) = v2;
  *(v3 + 64) = v1;

  swift_asyncLet_begin();
  *(v0 + 992) = sub_1E65D7418();
  if (v4)
  {
    v5 = *(v0 + 976);

    return MEMORY[0x1EEE6DEB0](v0 + 16, v5, sub_1E6163574, v0 + 656);
  }

  else
  {
    v6 = *(v0 + 976);

    return MEMORY[0x1EEE6DEB8](v0 + 16, v6, sub_1E6162E74, v0 + 736);
  }
}

uint64_t sub_1E6162E90()
{
  v1 = *(v0 + 968);
  sub_1E5DFD1CC(*(v0 + 976), v1, &qword_1ED075CD8, &qword_1E65F3678);
  v2 = sub_1E65D9658();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1E5DFE50C(*(v0 + 968), &qword_1ED075CD8, &qword_1E65F3678);
LABEL_4:
    v13 = *(v0 + 976);

    return MEMORY[0x1EEE6DEB0](v0 + 16, v13, sub_1E6163574, v0 + 656);
  }

  v4 = *(v0 + 968);
  v5 = *(v0 + 952);
  v6 = *(v0 + 944);
  v7 = *(v0 + 936);
  sub_1E65D9618();
  (*(v3 + 8))(v4, v2);
  v8 = sub_1E65D8658();
  v10 = v9;
  LOBYTE(v4) = v11;
  (*(v6 + 8))(v5, v7);
  *(v0 + 776) = v8;
  *(v0 + 784) = v10;
  *(v0 + 792) = v4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  sub_1E5F87058(v8, v10, v4 & 1);
  v12 = *(v0 + 793);
  if (v12 == 4)
  {
    goto LABEL_4;
  }

  v14 = *(v0 + 992);
  v15 = *(v0 + 928);
  v16 = *(v0 + 912);
  v35 = *(v0 + 896);
  v17 = *(v0 + 880);
  v32 = *(v0 + 920);
  v33 = *(v0 + 872);
  v18 = *(v0 + 856);
  v34 = *(v0 + 888);
  v19 = *(v0 + 848);
  v20 = *(v0 + 840);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = v19;
  *(v15 + 24) = v18;
  *(v15 + 32) = v14;
  *(v15 + 40) = v12;
  v22 = sub_1E65D96F8();
  (*(*(v22 - 8) + 56))(v15 + v21, 1, 1, v22);
  *(v15 + 48) = 0;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5DFA978(v33, v15 + *(v32 + 20), type metadata accessor for RouteSource);
  *(v15 + *(v32 + 24)) = v17;
  v23 = __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  v25 = v16 + v24[12];
  v26 = (v16 + v24[16]);
  v27 = v24[20];
  sub_1E5DFA978(v15, v16, type metadata accessor for RouteDestination);
  *v26 = v34;
  v26[1] = v35;
  *(v16 + v27) = 1;
  *v25 = 0;
  *(v25 + 8) = -64;
  swift_storeEnumTagMultiPayload();
  v28 = *v23;

  sub_1E5E05374(v34, v35);
  v29 = swift_task_alloc();
  *(v0 + 1000) = v29;
  *v29 = v0;
  v29[1] = sub_1E6163264;
  v30 = *(v0 + 912);

  return sub_1E5FFA73C(v30, v28);
}

uint64_t sub_1E6163264()
{
  v2 = *(*v1 + 912);
  *(*v1 + 1008) = v0;

  sub_1E5E09E10(v2, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {
    v3 = sub_1E6163428;
  }

  else
  {
    v3 = sub_1E61633A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61633A8()
{
  sub_1E5E09E10(*(v0 + 928), type metadata accessor for RouteDestination);
  v1 = *(v0 + 976);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1E6163574, v0 + 656);
}

uint64_t sub_1E6163428()
{
  sub_1E5E09E10(*(v0 + 928), type metadata accessor for RouteDestination);
  v1 = *(v0 + 976);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1E61634A8, v0 + 800);
}

uint64_t sub_1E61634C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6163590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6163640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for CatalogService();
  v4[6] = v5;
  v4[7] = v5[-1].Description;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6163704, 0, 0);
}

uint64_t sub_1E6163704()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v5 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v6 = v5 + *(type metadata accessor for AppComposer(0) + 20);
  v7 = type metadata accessor for AppEnvironment(0);
  (*(v2 + 16))(v1, v4 + v6 + *(v7 + 48), v3);
  v8 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  *(v0 + 72) = v9;
  (*(v2 + 8))(v1, v3);
  v15 = (v8 + *v8);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1E6163894;
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);

  return v15(v13, v11, v12);
}

uint64_t sub_1E6163894()
{

  if (v0)
  {

    v1 = sub_1E6163A88;
  }

  else
  {

    v1 = sub_1E61639DC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E61639DC()
{
  v1 = *(v0 + 16);
  v2 = sub_1E65D9658();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6163A88()
{
  v1 = *(v0 + 16);
  v2 = sub_1E65D9658();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6163B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v3[18] = type metadata accessor for ResolvedURLRoute.Action(0);
  v3[19] = swift_task_alloc();
  v4 = sub_1E65DB848();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = type metadata accessor for AppEnvironment(0);
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for RouteDestination(0);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v3[27] = swift_task_alloc();
  v5 = sub_1E65DB438();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v3[33] = swift_task_alloc();
  v6 = sub_1E65D7A38();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  sub_1E65E5CC8();
  v3[40] = swift_task_alloc();
  v7 = sub_1E65D74E8();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6163F04, 0, 0);
}

uint64_t sub_1E6163F04(uint64_t a1)
{
  if (!*(sub_1E64A37AC() + 16) || (sub_1E6215038(0x556465646F636E65, 0xEA00000000004C52), (v2 & 1) == 0))
  {

    goto LABEL_8;
  }

  v3 = sub_1E65D74F8();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
LABEL_8:
    sub_1E5FAA54C();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();

    v11 = v1[1];

    return v11();
  }

  sub_1E65E5CB8();
  sub_1E65E5C88();
  if (!v6)
  {
    sub_1E61681A0(v3, v5);
    goto LABEL_8;
  }

  v7 = v1[41];
  v8 = v1[42];
  v9 = v1[39];
  sub_1E65D74C8();
  sub_1E61681A0(v3, v5);

  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_1E5DFE50C(v1[39], &qword_1ED072340, &qword_1E65EA410);
    goto LABEL_8;
  }

  v14 = v1[43];
  v13 = v1[44];
  v15 = v1[41];
  v16 = v1[42];
  v17 = v1[38];
  v18 = v1[35];
  v39 = v1[36];
  v40 = v1[34];
  v19 = v1[33];
  v35 = v1[32];
  v36 = v1[31];
  v37 = v1[37];
  v38 = v1[27];
  v42 = v1[24];
  v41 = v1[15];
  v20 = *(v16 + 32);
  v20(v14, v1[39], v15);
  v20(v13, v14, v15);
  v21 = *MEMORY[0x1E69CBDD8];
  v22 = sub_1E65D8F38();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v19, v21, v22);
  (*(v23 + 56))(v19, 0, 1, v22);
  v24 = *(v16 + 16);
  v1[45] = v24;
  v1[46] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v17, v13, v15);
  (*(v16 + 56))(v17, 0, 1, v15);
  v25 = sub_1E65D9908();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v26 = sub_1E65D9F88();
  (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
  sub_1E65D7A28();
  (*(v18 + 16))(v39, v37, v40);
  sub_1E65D8CA8();
  v27 = sub_1E65D8CB8();
  (*(*(v27 - 8) + 56))(v38, 0, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072368, &qword_1E65EAB98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = 0x79546C6C65737075;
  *(inited + 40) = 0xEA00000000006570;
  v1[13] = 0x636972656E6567;
  v1[14] = 0xE700000000000000;
  sub_1E65E6848();
  sub_1E642764C(inited);
  swift_setDeallocating();
  sub_1E5DFE50C(inited + 32, &unk_1ED072390, &qword_1E65EABB8);
  sub_1E5FB8458(MEMORY[0x1E69E7CC0]);
  sub_1E65DB428();
  v29 = *__swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v30 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v31 = v29 + v30 + *(type metadata accessor for AppComposer(0) + 20);
  sub_1E5DFA978(v31, v42, type metadata accessor for AppEnvironment);
  v32 = AccountService.fetchCurrentAccount.getter();
  v1[47] = v33;
  v43 = (v32 + *v32);
  v34 = swift_task_alloc();
  v1[48] = v34;
  *v34 = v1;
  v34[1] = sub_1E61645F4;

  return v43();
}

uint64_t sub_1E61645F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = sub_1E6164840;
  }

  else
  {

    *(v4 + 400) = a1;
    v5 = sub_1E6164724;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6164724()
{
  v1 = v0[50];
  v0[51] = v1;
  v2 = v1;
  v3 = MarketingService.makeMarketingMetricConfiguration.getter();
  v0[52] = v4;
  v9 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[53] = v5;
  *v5 = v0;
  v5[1] = sub_1E6164AA4;
  v6 = v0[30];
  v7 = v0[22];

  return (v9)(v7, v6, 0);
}

uint64_t sub_1E6164840()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[49];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[49];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch current account with error: %{public}@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v0[51] = 0;
  v12 = MarketingService.makeMarketingMetricConfiguration.getter();
  v0[52] = v13;
  v18 = (v12 + *v12);
  v14 = swift_task_alloc();
  v0[53] = v14;
  *v14 = v0;
  v14[1] = sub_1E6164AA4;
  v15 = v0[30];
  v16 = v0[22];

  return (v18)(v16, v15, 0);
}

uint64_t sub_1E6164AA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6164BBC, 0, 0);
}

uint64_t sub_1E6164BBC()
{
  v1 = v0[51];
  v21 = v0[45];
  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v25 = v0[24];
  v22 = v0[25];
  v23 = v0[17];
  v24 = v0[15];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v4 = v1;
  (*(v5 + 16))(&v4[v10], v6, v8);
  v21(&v4[v11], v2, v3);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5DFA978(v23, &v4[*(v22 + 20)], type metadata accessor for RouteSource);

  (*(v5 + 8))(v6, v8);
  sub_1E5E09E10(v25, type metadata accessor for AppEnvironment);
  *&v4[*(v22 + 24)] = MEMORY[0x1E69E7CD0];
  v12 = __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  v14 = v7 + v13[12];
  v15 = v13[16];
  v16 = v13[20];
  sub_1E5DFA978(v4, v7, type metadata accessor for RouteDestination);
  *(v7 + v16) = 1;
  *v14 = 0;
  *(v14 + 8) = -64;
  *(v7 + v15) = xmmword_1E65EC1C0;
  swift_storeEnumTagMultiPayload();
  v17 = *v12;
  v18 = swift_task_alloc();
  v0[54] = v18;
  *v18 = v0;
  v18[1] = sub_1E6164E0C;
  v19 = v0[19];

  return sub_1E5FFA73C(v19, v17);
}

uint64_t sub_1E6164E0C()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  sub_1E5E09E10(*(v2 + 152), type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {
    v3 = sub_1E6165100;
  }

  else
  {
    v3 = sub_1E6164F54;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6164F54()
{
  v1 = v0[44];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[34];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];
  sub_1E5E09E10(v0[26], type metadata accessor for RouteDestination);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6165100()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  sub_1E5E09E10(v0[26], type metadata accessor for RouteDestination);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E61652B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = type metadata accessor for ResolvedURLRoute.Action(0);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6165348, 0, 0);
}

uint64_t sub_1E6165348()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  v4 = *v3;
  sub_1E5E05374(v1, v2);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1E6165414;

  return sub_1E5FF8FEC((v0 + 16), 0, v4);
}

uint64_t sub_1E6165414()
{
  v1 = *v0;

  sub_1E5FFF3B4(*(v1 + 16), *(v1 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1E6165540, 0, 0);
}

uint64_t sub_1E6165540()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1E61655FC;

  return sub_1E5FF075C((v0 + 32), v3);
}

uint64_t sub_1E61655FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61656F8, 0, 0);
}

uint64_t sub_1E61656F8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F0, &qword_1E65EC238) + 48);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for RouteDestination(0);
  sub_1E5DFA978(v2, v1 + *(v5 + 20), type metadata accessor for RouteSource);
  *(v1 + *(v5 + 24)) = MEMORY[0x1E69E7CD0];
  *(v1 + v4) = 0;
  swift_storeEnumTagMultiPayload();
  v6 = *v3;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1E6165840;
  v8 = *(v0 + 88);

  return sub_1E5FFA73C(v8, v6);
}

uint64_t sub_1E6165840()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 120) = v0;

  sub_1E5E09E10(v2, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61659B8, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E61659B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6165A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for SearchService();
  v3[9] = v4;
  v3[10] = v4[-1].Description;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6165AE0, 0, 0);
}

uint64_t sub_1E6165AE0()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  *(v0 + 16) = xmmword_1E65EADD0;
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1E6165B98;

  return sub_1E5FF8FEC((v0 + 16), 0, v2);
}

uint64_t sub_1E6165B98()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6165C94, 0, 0);
}

uint64_t sub_1E6165C94()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  *(v0 + 32) = xmmword_1E65EADD0;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1E6165D48;

  return sub_1E5FF075C((v0 + 32), v1);
}

uint64_t sub_1E6165D48()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6165E44, 0, 0);
}

uint64_t sub_1E6165E44()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *__swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v5 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v6 = v5 + *(type metadata accessor for AppComposer(0) + 20);
  v7 = type metadata accessor for AppEnvironment(0);
  (*(v2 + 16))(v1, v4 + v6 + *(v7 + 104), v3);
  v8 = SearchService.publishSearchIntent.getter();
  *(v0 + 112) = v9;
  (*(v2 + 8))(v1, v3);
  v14 = (v8 + *v8);
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_1E6165FD0;
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);

  return v14(v12, v11);
}

uint64_t sub_1E6165FD0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61660E8, 0, 0);
}

uint64_t sub_1E61660E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E616614C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for ResolvedURLRoute.Action(0);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61661E4, 0, 0);
}

uint64_t sub_1E61661E4()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
  v7 = (v1 + *(v6 + 48));
  v8 = *(v6 + 64);
  *v1 = v4;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for RouteDestination(0);
  sub_1E5DFA978(v3, v1 + *(v9 + 20), type metadata accessor for RouteSource);
  *(v1 + *(v9 + 24)) = v2;
  swift_beginAccess();
  v11 = qword_1ED075958;
  v10 = qword_1ED075960;
  *v7 = qword_1ED075958;
  v7[1] = v10;
  *(v1 + v8) = 1;
  swift_storeEnumTagMultiPayload();
  v12 = *v5;

  sub_1E5E05374(v11, v10);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_1E6166374;
  v14 = *(v0 + 80);

  return sub_1E5FFA73C(v14, v12);
}

uint64_t sub_1E6166374()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 96) = v0;

  sub_1E5E09E10(v2, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60E2174, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E61664EC(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6166628, 0, 0);
}

uint64_t sub_1E6166628()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v21 = v4;
  v22 = v2;
  v27 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  v24 = v1 + v5[12];
  v25 = v5[20];
  v26 = v5[16];
  v6 = sub_1E65D76F8();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = sub_1E65E2CF8();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_1E65E1FC8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_1E601100C(MEMORY[0x1E69E7CC0]);
  v23 = type metadata accessor for RouteDestination(0);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
  v11 = (v1 + v10[12]);
  v12 = v10[16];
  v13 = v10[20];
  v14 = v10[24];
  v15 = v10[28];
  v16 = v1 + v10[32];
  sub_1E5DFD1CC(v3, v1, &unk_1ED077760, &unk_1E66011D0);
  *v11 = 0;
  v11[1] = 0;
  sub_1E5DFD1CC(v22, v1 + v12, &qword_1ED072B60, &unk_1E65FA490);
  *(v1 + v13) = v9;
  sub_1E5DFD1CC(v21, v1 + v14, &unk_1ED077750, &unk_1E66011C0);
  *(v1 + v15) = 0;
  *v16 = 0;
  *(v16 + 8) = 1;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5DFE50C(v21, &unk_1ED077750, &unk_1E66011C0);
  sub_1E5DFE50C(v22, &qword_1ED072B60, &unk_1E65FA490);
  sub_1E5DFE50C(v3, &unk_1ED077760, &unk_1E66011D0);
  *(v1 + *(v23 + 24)) = MEMORY[0x1E69E7CD0];
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v1 + v26) = xmmword_1E65EC1C0;
  *(v1 + v25) = 1;
  swift_storeEnumTagMultiPayload();
  v17 = *v27;
  v18 = swift_task_alloc();
  *(v0 + 64) = v18;
  *v18 = v0;
  v18[1] = sub_1E6166978;
  v19 = *(v0 + 56);

  return sub_1E5FFA73C(v19, v17);
}

uint64_t sub_1E6166978()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_1E5E09E10(v2, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6166B14, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6166B14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6166BA0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for RouteSource(0);
  v1[4] = swift_task_alloc();
  v1[5] = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6166C70, 0, 0);
}

uint64_t sub_1E6166C70()
{
  v1 = v0[2];
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v4 = *(v2 + v3 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      return sub_1E65E69D8();
    }

    goto LABEL_6;
  }

  if (!v4)
  {
LABEL_6:
    v16 = v0[7];
    v17 = v0[4];
    v18 = __swift_project_boxed_opaque_existential_1(v0[2], v1[3]);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
    v20 = v16 + v19[12];
    v21 = v19[16];
    v22 = v19[20];
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for RouteDestination(0);
    sub_1E613DB80(v17, v16 + *(v23 + 20));
    *(v16 + *(v23 + 24)) = MEMORY[0x1E69E7CD0];
    *v20 = 0;
    *(v20 + 8) = -64;
    *(v16 + v21) = xmmword_1E65EC1C0;
    *(v16 + v22) = 1;
    swift_storeEnumTagMultiPayload();
    v12 = *v18;
    v24 = swift_task_alloc();
    v0[8] = v24;
    *v24 = v0;
    v24[1] = sub_1E616703C;
    v14 = v0[7];
    goto LABEL_7;
  }

  v5 = v0[6];
  v6 = v0[4];
  v7 = __swift_project_boxed_opaque_existential_1(v0[2], v1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v8 = (type metadata accessor for RouteDestination(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E65EA670;
  v11 = v10 + v9;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5DFA978(v6, v11 + v8[7], type metadata accessor for RouteSource);
  *(v11 + v8[8]) = MEMORY[0x1E69E7CD0];
  sub_1E5E09E10(v6, type metadata accessor for RouteSource);
  *v5 = v10;
  *(v5 + 8) = 1;
  *(v5 + 16) = 0;
  *(v5 + 24) = xmmword_1E65EC1C0;
  *(v5 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v12 = *v7;
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1E616724C;
  v14 = v0[6];
LABEL_7:

  return sub_1E5FFA73C(v14, v12);
}

uint64_t sub_1E616703C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_1E5E09E10(v2, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61671CC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E61671CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E616724C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_1E5E09E10(v2, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61673DC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E61673DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E616745C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61674F0, 0, 0);
}

uint64_t sub_1E61674F0()
{
  v1 = *(v0 + 32);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v3 = (type metadata accessor for RouteDestination(0) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E65EA670;
  sub_1E65E52B8();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v5 + v4 + v3[8]) = MEMORY[0x1E69E7CD0];
  *v1 = v5;
  *(v1 + 8) = 0;
  *(v1 + 16) = -64;
  *(v1 + 24) = xmmword_1E65EC1C0;
  *(v1 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1E61676D8;
  v8 = *(v0 + 32);

  return sub_1E5FFA73C(v8, v6);
}

uint64_t sub_1E61676D8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_1E5E09E10(v2, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6167850, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6167850()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61678B4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6167948, 0, 0);
}

uint64_t sub_1E6167948()
{
  v1 = *(v0 + 32);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v3 = (type metadata accessor for RouteDestination(0) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E65EA670;
  sub_1E65E52B8();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v5 + v4 + v3[8]) = MEMORY[0x1E69E7CD0];
  *v1 = v5;
  *(v1 + 8) = 0;
  *(v1 + 16) = -64;
  *(v1 + 24) = xmmword_1E65EC1C0;
  *(v1 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1E6167B30;
  v8 = *(v0 + 32);

  return sub_1E5FFA73C(v8, v6);
}

uint64_t sub_1E6167B30()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_1E5E09E10(v2, type metadata accessor for ResolvedURLRoute.Action);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6168404, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6167CA8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6167D3C, 0, 0);
}

uint64_t sub_1E6167D3C()
{
  v1 = *(v0 + 32);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v3 = (type metadata accessor for RouteDestination(0) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E65EA670;
  sub_1E65E52B8();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v5 + v4 + v3[8]) = MEMORY[0x1E69E7CD0];
  *v1 = v5;
  *(v1 + 8) = 0;
  *(v1 + 16) = -64;
  *(v1 + 24) = xmmword_1E65EC1C0;
  *(v1 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1E6167B30;
  v8 = *(v0 + 32);

  return sub_1E5FFA73C(v8, v6);
}

uint64_t sub_1E6167F24(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for ResolvedURLRoute.Action(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6167FB8, 0, 0);
}

uint64_t sub_1E6167FB8()
{
  v1 = *(v0 + 32);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v3 = (type metadata accessor for RouteDestination(0) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E65EA670;
  sub_1E65E52B8();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v5 + v4 + v3[8]) = MEMORY[0x1E69E7CD0];
  *v1 = v5;
  *(v1 + 8) = 0;
  *(v1 + 16) = -64;
  *(v1 + 24) = xmmword_1E65EC1C0;
  *(v1 + 40) = 1;
  swift_storeEnumTagMultiPayload();
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1E6167B30;
  v8 = *(v0 + 32);

  return sub_1E5FFA73C(v8, v6);
}

uint64_t sub_1E61681A0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E600A068(result, a2);
  }

  return result;
}

uint64_t sub_1E61681B4(uint64_t a1)
{
  v4 = *(sub_1E65D74E8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for RouteSource(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v9);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = *(v1 + v10 + 8);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E6162BAC(a1, v12, v13, v1 + v5, v1 + v8, v11, v14, v15);
}

uint64_t sub_1E6168354(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6163640(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E6168408(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0678();
  v2 = sub_1E65E07C8();
  if (a1)
  {
    if (sub_1E65E4B48())
    {
      sub_1E65DC388();
    }

    return sub_1E65E0838();
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      sub_1E65E0708();
    }

    if (sub_1E65E4B48())
    {
      sub_1E65DC368();
    }

    sub_1E65E0678();
    sub_1E65E07C8();
    return sub_1E65E0838();
  }
}

uint64_t sub_1E6168568(_OWORD *a1, uint64_t a2)
{
  v33 = a2;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CE0, &qword_1E65F36D8);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v30 - v4;
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v8;
  v32 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - v11;
  v31 = &v30 - v11;
  v13 = sub_1E65DED18();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v34 = sub_1E65DE998();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *v2;
  v30 = v2;
  sub_1E5E1D5BC(v2, v12, type metadata accessor for AppComposer);
  v16 = *(v6 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  sub_1E5E1E1E8(v12, v18 + v17, type metadata accessor for AppComposer);
  sub_1E5E1D5BC(v2, v9, type metadata accessor for AppComposer);
  sub_1E5DF650C(v33, v41);
  v19 = swift_allocObject();
  sub_1E5E1E1E8(v9, v19 + v17, type metadata accessor for AppComposer);
  sub_1E5DF599C(v41, v19 + ((v17 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1E65DED08();
  sub_1E65DE988();
  type metadata accessor for AppFeature(0);
  sub_1E6169970(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E6169970(&qword_1ED075CE8, MEMORY[0x1E699CCC0], MEMORY[0x1E699CCB8]);
  v21 = v34;
  v20 = v35;
  sub_1E65E4DE8();
  v22 = v31;
  sub_1E5E1D5BC(v30, v31, type metadata accessor for AppComposer);
  v23 = swift_allocObject();
  v24 = v38;
  v25 = v38[3];
  v23[3] = v38[2];
  v23[4] = v25;
  v23[5] = v24[4];
  v26 = v24[1];
  v23[1] = *v24;
  v23[2] = v26;
  sub_1E5E1E1E8(v22, v23 + ((v16 + 96) & ~v16), type metadata accessor for AppComposer);
  sub_1E6169A3C(v24, v41);
  sub_1E65E4CC8();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1E61699B8;
  *(v27 + 24) = v23;

  v28 = sub_1E65E4F08();

  (*(v39 + 8))(v20, v40);
  (*(v37 + 8))(v15, v21);
  return v28;
}

uint64_t sub_1E6168A78(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for RouteDestination(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for RouteSource(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6168B68, 0, 0);
}

uint64_t sub_1E6168B68()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      return sub_1E65E69D8();
    }

    else
    {
      v14 = *(v0 + 80);
      v15 = *(v0 + 64);
      v16 = *(v0 + 40);
      v17 = *(v0 + 48);
      v19 = v16[3];
      v18 = v16[4];
      __swift_project_boxed_opaque_existential_1(v16, v19);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RouteResource(0);
      swift_storeEnumTagMultiPayload();
      sub_1E5E1E1E8(v14, v15 + *(v17 + 20), type metadata accessor for RouteSource);
      *(v15 + *(v17 + 24)) = MEMORY[0x1E69E7CD0];
      sub_1E600F5B0((v0 + 25));
      v20 = swift_task_alloc();
      *(v0 + 112) = v20;
      *v20 = v0;
      v20[1] = sub_1E6169044;
      v21 = *(v0 + 64);

      return RoutingContext.appendDestination(_:priority:)(v21, (v0 + 25), v19, v18);
    }
  }

  else
  {
    v3 = *(v0 + 80);
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    v8 = v6[3];
    v7 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v0 + 88) = v10;
    *(v10 + 16) = xmmword_1E65EA670;
    v11 = v10 + v9;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E5E1D5BC(v3, v11 + *(v5 + 20), type metadata accessor for RouteSource);
    *(v11 + *(v5 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611CC44(v3, type metadata accessor for RouteSource);
    *(v0 + 16) = 1;
    *(v0 + 24) = 0;
    sub_1E600F5B0((v0 + 26));
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = sub_1E6168ED0;

    return RoutingContext.presentDestinations(_:style:priority:)(v10, (v0 + 16), (v0 + 26), v8, v7);
  }
}

uint64_t sub_1E6168ED0()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E616923C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E6169044()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 120) = v0;

  sub_1E611CC44(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61691CC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E61691CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E616923C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61692AC@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  MEMORY[0x1EEE9AC00](v16[0]);
  v2 = v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075808, &qword_1E65F1DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_1E65D7848();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v9);
  sub_1E5DFE50C(v6, &qword_1ED071F78, &unk_1E65EA3F0);
  v14 = *(v11 + 48);
  if (v14(v9, 1, v10) == 1)
  {
    sub_1E65D77C8();
    if (v14(v9, 1, v10) != 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v2, &qword_1ED075800, &unk_1E6606280);
  return sub_1E65DE8D8();
}

uint64_t sub_1E6169608(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  if (v5)
  {
    v10 = *a1;
    v11 = *(a3 + 3);
    v12 = *(a3 + 7);
    v19 = *(a3 + 5);
    v20 = v12;
    v21 = a3[9];
    v17 = *(a3 + 1);
    v18 = v11;
    v13 = sub_1E65E60A8();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v10;
    *(v14 + 40) = v5;
    v15 = v20;
    *(v14 + 80) = v19;
    *(v14 + 96) = v15;
    *(v14 + 112) = v21;
    v16 = v18;
    *(v14 + 48) = v17;
    *(v14 + 64) = v16;
    swift_unknownObjectRetain();

    sub_1E6059EAC(0, 0, v9, &unk_1E65F3708, v14);
  }

  return result;
}

uint64_t sub_1E61697A4()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E611979C(v0 + v3);
}

uint64_t sub_1E6169870()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6168A78(v0 + v3, v0 + v4);
}

uint64_t sub_1E6169970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E61699B8(char *a1, uint64_t a2)
{
  type metadata accessor for AppComposer(0);

  return sub_1E6169608(a1, a2, (v2 + 16));
}

uint64_t sub_1E6169A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CF0, &qword_1E65F3700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6169AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E621B314(a1, v4, v5, v6, v1 + 40);
}

uint64_t sub_1E6169B70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v58 = a7;
  v59 = a8;
  v55 = a4;
  v56 = a6;
  v53 = a5;
  v54 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v51 = *(v11 - 8);
  v50 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CF8, &qword_1E65F3710);
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v44 - v14;
  v15 = type metadata accessor for AppComposer(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v44 = v17;
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E2158();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = sub_1E65E2138();
  v61 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v52 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *a1;
  sub_1E5DF650C(a2, v66);
  v21 = swift_allocObject();
  sub_1E5DF599C(v66, v21 + 16);
  v22 = a1;
  v46 = a1;
  sub_1E5E1DEAC(a1, v18);
  v23 = *(v16 + 80);
  v47 = ((v23 + 16) & ~v23) + v17;
  v48 = (v23 + 16) & ~v23;
  v64 = v23 | 7;
  v24 = swift_allocObject();
  v45 = type metadata accessor for AppComposer;
  sub_1E5E1E1E8(v18, v24 + ((v23 + 16) & ~v23), type metadata accessor for AppComposer);
  sub_1E65E2148();
  sub_1E65E2128();
  v25 = v49;
  sub_1E5DFD1CC(v53, v49, &qword_1ED073718, &qword_1E65ED978);
  sub_1E5E1DEAC(v22, v18);
  v26 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v27 = (v50 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v55;
  *(v29 + 16) = v54;
  *(v29 + 24) = v30;
  sub_1E616B784(v25, v29 + v26);
  *(v29 + v27) = v56;
  v31 = (v29 + v28);
  v32 = v59;
  *v31 = v58;
  v31[1] = v32;
  sub_1E5E1E1E8(v18, v29 + ((v23 + 16 + v28) & ~v23), type metadata accessor for AppComposer);
  type metadata accessor for AppFeature(0);
  sub_1E616BA04(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v58 = sub_1E616BA04(&qword_1ED075D00, MEMORY[0x1E699F208], MEMORY[0x1E699F200]);

  v33 = v57;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v46, v18);
  v34 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_1E5E1E1E8(v18, v35 + v48, v45);
  v36 = (v35 + v34);
  v37 = *(a9 + 3);
  v36[2] = *(a9 + 2);
  v36[3] = v37;
  v36[4] = *(a9 + 4);
  v38 = *(a9 + 1);
  *v36 = *a9;
  v36[1] = v38;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1E616BA4C;
  *(v39 + 24) = v35;

  v40 = v52;
  v41 = v65;
  v42 = sub_1E65E4F08();

  (*(v62 + 8))(v33, v63);
  (*(v61 + 8))(v40, v41);
  return v42;
}

uint64_t sub_1E616A204(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[6] = type metadata accessor for RouteSource(0);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for RouteDestination(0);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v2[13] = swift_task_alloc();
  v3 = sub_1E65E20A8();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616A404, 0, 0);
}

uint64_t sub_1E616A404()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_1E5DFD1CC(*(v0 + 32), v3, &qword_1ED073718, &qword_1E65ED978);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(*(v0 + 104), &qword_1ED073718, &qword_1E65ED978);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96);
    v31 = *(v0 + 88);
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v26 = *(v0 + 64);
    v28 = *(v0 + 56);
    v9 = *(v0 + 40);
    (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    v32 = v9[3];
    v33 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v32);
    MEMORY[0x1E6949A30]();
    v10 = sub_1E65D76F8();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    v11 = sub_1E65E2058();
    v29 = v12;
    v30 = v11;
    v27 = v8;
    sub_1E65E2078();
    v13 = sub_1E65E2CF8();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    v24 = sub_1E65E2048();
    sub_1E65E2068();
    v25 = sub_1E65E2088();
    v14 = sub_1E65E2098();
    swift_storeEnumTagMultiPayload();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
    v16 = (v6 + v15[12]);
    v17 = v15[16];
    v18 = v15[20];
    v19 = v15[24];
    v20 = v15[28];
    v21 = v6 + v15[32];
    sub_1E5DFD1CC(v7, v6, &unk_1ED077760, &unk_1E66011D0);
    *v16 = v30;
    v16[1] = v29;
    sub_1E5DFD1CC(v27, v6 + v17, &qword_1ED072B60, &unk_1E65FA490);
    *(v6 + v18) = v24;
    sub_1E5DFD1CC(v26, v6 + v19, &unk_1ED077750, &unk_1E66011C0);
    *(v6 + v20) = v25;
    *v21 = v14;
    *(v21 + 8) = 0;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E5E1E1E8(v28, v6 + *(v31 + 20), type metadata accessor for RouteSource);
    sub_1E5DFE50C(v26, &unk_1ED077750, &unk_1E66011C0);
    sub_1E5DFE50C(v27, &qword_1ED072B60, &unk_1E65FA490);
    sub_1E5DFE50C(v7, &unk_1ED077760, &unk_1E66011D0);
    *(v6 + *(v31 + 24)) = MEMORY[0x1E69E7CD0];
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    sub_1E600F5B0((v0 + 25));
    v22 = swift_task_alloc();
    *(v0 + 136) = v22;
    *v22 = v0;
    v22[1] = sub_1E616A83C;
    v23 = *(v0 + 96);

    return RoutingContext.presentDestination(_:style:priority:)(v23, (v0 + 16), (v0 + 25), v32, v33);
  }
}

uint64_t sub_1E616A83C()
{
  v2 = *(*v1 + 96);
  *(*v1 + 144) = v0;

  sub_1E60111F8(v2);
  if (v0)
  {
    v3 = sub_1E616AA34;
  }

  else
  {
    v3 = sub_1E616A96C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E616A96C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E616AA34()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E616AB08(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E616A204(a1, v1 + 16);
}

uint64_t sub_1E616ABA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D9C28();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v2[7] = swift_task_alloc();
  v4 = sub_1E65E20A8();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616ACF4, 0, 0);
}

uint64_t sub_1E616ACF4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1E5DFD1CC(v0[2], v3, &qword_1ED073718, &qword_1E65ED978);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[7], &qword_1ED073718, &qword_1E65ED978);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[6];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v7 = RemoteBrowsingService.showPersonalizedWorkoutPlanCreationPrompt.getter();
    v0[11] = v8;
    sub_1E62588A8(v6);
    v11 = (v7 + *v7);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_1E616AF0C;
    v10 = v0[6];

    return v11(v10);
  }
}

uint64_t sub_1E616AF0C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1E616B130;
  }

  else
  {
    v5 = sub_1E616B0A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E616B0A0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E616B130()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E616B1CC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E616ABA0(a1, v1 + v5);
}

uint64_t sub_1E616B2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v46 = a7;
  v47 = a8;
  v49 = a5;
  v50 = a6;
  v43 = a2;
  v44 = a4;
  v45 = a1;
  v48 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v41 - v14;
  v16 = sub_1E65D7848();
  v41 = *(v16 - 8);
  v42 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E23A8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v41 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  if (a3)
  {
    sub_1E5DFD1CC(v44, v29, &qword_1ED073718, &qword_1E65ED978);
    v31 = v45 + *(type metadata accessor for AppState(0) + 108);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    (*(v20 + 16))(v23, v31 + *(v32 + 28), v19);
    type metadata accessor for AppComposer(0);

    sub_1E65DAE38();
    sub_1E65DAE38();
    return sub_1E65E20F8();
  }

  else
  {
    sub_1E5DFD1CC(v44, &v41 - v30, &qword_1ED073718, &qword_1E65ED978);
    v34 = v45 + *(type metadata accessor for AppState(0) + 108);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    v36 = *(v20 + 16);
    v37 = v34 + *(v35 + 28);
    v44 = v25;
    v36(v25, v37, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    sub_1E65E4C98();
    sub_1E5E1F544(v15);
    sub_1E5DFE50C(v12, &qword_1ED071F78, &unk_1E65EA3F0);
    v39 = v41;
    v38 = v42;
    v40 = *(v41 + 48);
    if (v40(v15, 1, v42) == 1)
    {
      sub_1E65D77C8();
      if (v40(v15, 1, v38) != 1)
      {
        sub_1E5DFE50C(v15, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v39 + 32))(v18, v15, v38);
    }

    type metadata accessor for AppComposer(0);
    sub_1E65DAE38();
    sub_1E65DAE38();

    return sub_1E65E2108();
  }
}

uint64_t sub_1E616B784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E616B7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + v7);
  v13 = *(v2 + v8);
  v14 = *(v2 + v8 + 8);
  v15 = v2 + ((v8 + *(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1E616B2A4(a1, v10, v11, (v2 + v6), v12, v13, v14, v15, a2);
}

uint64_t sub_1E616B908(uint64_t a1)
{
  v2 = sub_1E65E23A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E20E8();
  v6 = a1 + *(type metadata accessor for AppState(0) + 108);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  return (*(v3 + 40))(v6 + *(v7 + 28), v5, v2);
}

uint64_t sub_1E616BA04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E616BAEC@<X0>(uint64_t *a1@<X8>)
{
  v96 = a1;
  v100 = type metadata accessor for ContentAvailabilityService();
  Description = v100[-1].Description;
  MEMORY[0x1EEE9AC00](v100);
  v84 = v2;
  v99 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v70 - v4;
  v91 = type metadata accessor for ArchivedSessionService();
  v102 = v91[-1].Description;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v5;
  v6 = type metadata accessor for CatalogService();
  v7 = v6[-1].Description;
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  v98 = *(v82 - 8);
  v10 = MEMORY[0x1EEE9AC00](v82);
  v97 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v70 - v12;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v14 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v83 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v15 = type metadata accessor for AppEnvironment(0);
  v16 = v15[8];
  v81 = v16;
  v17 = v15[12];
  v93 = v15[14];
  KeyPath = swift_getKeyPath();
  (v7[2])(&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v17, v6);
  v18 = v102;
  v79 = v102[2];
  v80 = (v102 + 2);
  v19 = v14 + v16;
  v20 = v94;
  v21 = v91;
  v79(v94, v19, v91);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v78 = *(v18 + 80);
  v23 = (v8 + v78 + v22) & ~v78;
  v24 = swift_allocObject();
  (v7[4])(v24 + v22, v9, v6);
  v25 = v18[4];
  v102 = v18 + 4;
  v77 = v25;
  v25(v24 + v23, v20, v21);

  v26 = v92;
  sub_1E65E4E08();
  v27 = v82;
  v28 = v96;
  v96[3] = v82;
  v28[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  v30 = v98;
  v31 = v98 + 16;
  v32 = *(v98 + 16);
  v33 = v26;
  v32(boxed_opaque_existential_1, v26, v27);
  v85 = v31;
  v86 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EA8E0;
  v88 = sub_1E65E60A8();
  v34 = *(v88 - 8);
  v87 = *(v34 + 56);
  v89 = v34 + 56;
  v87(v103, 1, 1, v88);
  v35 = Description;
  v36 = Description[2];
  v75 = (Description + 2);
  v76 = v36;
  v37 = v83;
  v39 = v99;
  v38 = v100;
  v36(v99, v83 + v93, v100);
  v40 = v33;
  v41 = v27;
  v32(v97, v40, v27);
  v42 = *(v35 + 80);
  v43 = *(v30 + 80);
  v44 = (v42 + 32) & ~v42;
  v73 = v44;
  v74 = v43 | v42;
  v45 = (v84 + v43 + v44) & ~v43;
  v71 = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v72 = v35[4];
  Description = v35 + 4;
  v72(v46 + v44, v39, v38);
  v84 = *(v30 + 32);
  v47 = v97;
  v48 = v41;
  v84(v46 + v45, v97, v41);
  v49 = v103;
  v50 = sub_1E6059EAC(0, 0, v103, &unk_1E65F37E8, v46);
  *(KeyPath + 32) = v50;
  v87(v49, 1, 1, v88);
  v51 = v94;
  v52 = v91;
  v79(v94, v37 + v81, v91);
  v53 = v47;
  v54 = v47;
  v55 = v92;
  v56 = v48;
  v86(v53, v92, v48);
  v57 = (v78 + 32) & ~v78;
  v58 = (v57 + v95 + v43) & ~v43;
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  v77(v59 + v57, v51, v52);
  v60 = v56;
  v84(v59 + v58, v54, v56);
  v61 = v103;
  v62 = sub_1E6059EAC(0, 0, v103, &unk_1E65F37F8, v59);
  v63 = KeyPath;
  *(KeyPath + 40) = v62;
  v87(v61, 1, 1, v88);
  v64 = v99;
  v65 = v100;
  v76(v99, v83 + v93, v100);
  v66 = v60;
  v86(v54, v55, v60);
  v67 = v71;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  v72(v68 + v73, v64, v65);
  v84(v68 + v67, v54, v66);
  *(v63 + 48) = sub_1E6059EAC(0, 0, v61, &unk_1E65F3808, v68);
  result = (*(v98 + 8))(v55, v66);
  v96[5] = v63;
  return result;
}

uint64_t sub_1E616C420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8798();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D76A8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616C54C, 0, 0);
}

uint64_t sub_1E616C54C()
{
  v1 = CatalogService.requestCatalogSync.getter();
  *(v0 + 96) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1E616C644;

  return v5(1);
}

uint64_t sub_1E616C644()
{

  if (v0)
  {

    v1 = sub_1E6171EC0;
  }

  else
  {

    v1 = sub_1E616C78C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E616C78C()
{
  v1 = ArchivedSessionService.queryAllCompletedWorkoutIdentifiers.getter();
  *(v0 + 112) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1E616C880;

  return v5();
}

uint64_t sub_1E616C880(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1E616CFCC;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_1E616C9B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E616C9B8()
{
  v1 = v0[16];

  v0[17] = v1;
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v5 = CatalogService.queryCatalogWorkoutReferencesReleasedSince.getter();
  v0[18] = v6;
  sub_1E65D7688();
  sub_1E65E61C8();
  sub_1E65D7678();
  v7 = *(v4 + 8);
  v0[19] = v7;
  v0[20] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  v11 = (v5 + *v5);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_1E616CB28;
  v9 = v0[11];

  return v11(v9, 2);
}

uint64_t sub_1E616CB28(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[19];
  if (v1)
  {
    v5(v4[11], v4[8]);

    v6 = sub_1E6171EB0;
  }

  else
  {
    v7 = v4[11];
    v8 = v4[8];
    v4[23] = a1;
    v5(v7, v8);

    v6 = sub_1E616CCC4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E616CCC4()
{
  v1 = v0[23];
  v2 = CatalogService.requestCatalogLockupPlaceholderBackfill.getter();
  v0[24] = v3;
  sub_1E600C468(v1);

  sub_1E65D8788();
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_1E616CE20;
  v5 = v0[7];

  return v7(v5);
}

uint64_t sub_1E616CE20(uint64_t a1)
{
  v4 = *v2;
  v4[26] = v1;

  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E6171EB4;
  }

  else
  {
    v4[27] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E6171EBC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E616CFCC(uint64_t a1)
{
  v1[17] = 0;
  v2 = v1[10];
  v3 = v1[8];
  v4 = v1[9];
  v5 = CatalogService.queryCatalogWorkoutReferencesReleasedSince.getter();
  v1[18] = v6;
  sub_1E65D7688();
  sub_1E65E61C8();
  sub_1E65D7678();
  v7 = *(v4 + 8);
  v1[19] = v7;
  v1[20] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  v11 = (v5 + *v5);
  v8 = swift_task_alloc();
  v1[21] = v8;
  *v8 = v1;
  v8[1] = sub_1E616CB28;
  v9 = v1[11];

  return v11(v9, 2);
}

uint64_t sub_1E616D130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616D264, 0, 0);
}

uint64_t sub_1E616D264()
{
  v1 = ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E616D360;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E616D360()
{

  return MEMORY[0x1EEE6DFA0](sub_1E616D478, 0, 0);
}

uint64_t sub_1E616D478()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E616D554;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E616D554()
{

  return MEMORY[0x1EEE6DFA0](sub_1E616D650, 0, 0);
}

uint64_t sub_1E616D650()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E616D750, v4, v3);
  }
}

uint64_t sub_1E616D750()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E616D554;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E616D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616D950, 0, 0);
}

uint64_t sub_1E616D950()
{
  v1 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E616DA4C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E616DA4C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E6171EB8;
  }

  else
  {
    v2 = sub_1E616DB7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E616DB7C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E616DC58;
  v5 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1E616DC58()
{

  return MEMORY[0x1EEE6DFA0](sub_1E616DD54, 0, 0);
}

uint64_t sub_1E616DD54()
{
  if (v0[2])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E616DE54, v2, v1);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1E616DE54()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E616DC58;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1E616DF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B08, &qword_1E65EC510);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B00, &qword_1E65EC508);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616E054, 0, 0);
}

uint64_t sub_1E616E054()
{
  v1 = ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter();
  v0[12] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1E616E150;
  v4 = v0[8];

  return v6(v4);
}

uint64_t sub_1E616E150()
{

  return MEMORY[0x1EEE6DFA0](sub_1E616E268, 0, 0);
}

uint64_t sub_1E616E268()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E616E344;
  v5 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1E616E344()
{

  return MEMORY[0x1EEE6DFA0](sub_1E616E440, 0, 0);
}

uint64_t sub_1E616E440()
{
  if (v0[3])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E616E540, v2, v1);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1E616E540()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E616E344;
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1E616E60C@<X0>(uint64_t *a1@<X8>)
{
  v96 = a1;
  v100 = type metadata accessor for ContentAvailabilityService();
  Description = v100[-1].Description;
  MEMORY[0x1EEE9AC00](v100);
  v84 = v2;
  v99 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v70 - v4;
  v91 = type metadata accessor for ArchivedSessionService();
  v102 = v91[-1].Description;
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v5;
  v6 = type metadata accessor for CatalogService();
  v7 = v6[-1].Description;
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  v98 = *(v82 - 8);
  v10 = MEMORY[0x1EEE9AC00](v82);
  v97 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v70 - v12;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v14 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v83 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v15 = type metadata accessor for AppEnvironment(0);
  v16 = v15[8];
  v81 = v16;
  v17 = v15[12];
  v93 = v15[14];
  KeyPath = swift_getKeyPath();
  (v7[2])(&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v17, v6);
  v18 = v102;
  v79 = v102[2];
  v80 = (v102 + 2);
  v19 = v14 + v16;
  v20 = v94;
  v21 = v91;
  v79(v94, v19, v91);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v78 = *(v18 + 80);
  v23 = (v8 + v78 + v22) & ~v78;
  v24 = swift_allocObject();
  (v7[4])(v24 + v22, v9, v6);
  v25 = v18[4];
  v102 = v18 + 4;
  v77 = v25;
  v25(v24 + v23, v20, v21);

  v26 = v92;
  sub_1E65E4E08();
  v27 = v82;
  v28 = v96;
  v96[3] = v82;
  v28[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  v30 = v98;
  v31 = v98 + 16;
  v32 = *(v98 + 16);
  v33 = v26;
  v32(boxed_opaque_existential_1, v26, v27);
  v85 = v31;
  v86 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EA8E0;
  v88 = sub_1E65E60A8();
  v34 = *(v88 - 8);
  v87 = *(v34 + 56);
  v89 = v34 + 56;
  v87(v103, 1, 1, v88);
  v35 = Description;
  v36 = Description[2];
  v75 = (Description + 2);
  v76 = v36;
  v37 = v83;
  v39 = v99;
  v38 = v100;
  v36(v99, v83 + v93, v100);
  v40 = v33;
  v41 = v27;
  v32(v97, v40, v27);
  v42 = *(v35 + 80);
  v43 = *(v30 + 80);
  v44 = (v42 + 32) & ~v42;
  v73 = v44;
  v74 = v43 | v42;
  v45 = (v84 + v43 + v44) & ~v43;
  v71 = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v72 = v35[4];
  Description = v35 + 4;
  v72(v46 + v44, v39, v38);
  v84 = *(v30 + 32);
  v47 = v97;
  v48 = v41;
  v84(v46 + v45, v97, v41);
  v49 = v103;
  v50 = sub_1E6059EAC(0, 0, v103, &unk_1E65F3778, v46);
  *(KeyPath + 32) = v50;
  v87(v49, 1, 1, v88);
  v51 = v94;
  v52 = v91;
  v79(v94, v37 + v81, v91);
  v53 = v47;
  v54 = v47;
  v55 = v92;
  v56 = v48;
  v86(v53, v92, v48);
  v57 = (v78 + 32) & ~v78;
  v58 = (v57 + v95 + v43) & ~v43;
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  v77(v59 + v57, v51, v52);
  v60 = v56;
  v84(v59 + v58, v54, v56);
  v61 = v103;
  v62 = sub_1E6059EAC(0, 0, v103, &unk_1E65F3788, v59);
  v63 = KeyPath;
  *(KeyPath + 40) = v62;
  v87(v61, 1, 1, v88);
  v64 = v99;
  v65 = v100;
  v76(v99, v83 + v93, v100);
  v66 = v60;
  v86(v54, v55, v60);
  v67 = v71;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  v72(v68 + v73, v64, v65);
  v84(v68 + v67, v54, v66);
  *(v63 + 48) = sub_1E6059EAC(0, 0, v61, &unk_1E65F3798, v68);
  result = (*(v98 + 8))(v55, v66);
  v96[5] = v63;
  return result;
}

uint64_t sub_1E616EF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8798();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D76A8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E616F068, 0, 0);
}

uint64_t sub_1E616F068()
{
  v1 = CatalogService.requestCatalogSync.getter();
  *(v0 + 96) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1E616F160;

  return v5(1);
}

uint64_t sub_1E616F160()
{

  if (v0)
  {

    v1 = sub_1E6171EC4;
  }

  else
  {

    v1 = sub_1E616F2A8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E616F2A8()
{
  v1 = ArchivedSessionService.queryAllCompletedWorkoutIdentifiers.getter();
  *(v0 + 112) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_1E616F39C;

  return v5();
}

uint64_t sub_1E616F39C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1E616FB6C;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_1E616F4D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E616F4D4()
{
  v1 = v0[16];

  v0[17] = v1;
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v5 = CatalogService.queryCatalogWorkoutReferencesReleasedSince.getter();
  v0[18] = v6;
  sub_1E65D7688();
  sub_1E65E61C8();
  sub_1E65D7678();
  v7 = *(v4 + 8);
  v0[19] = v7;
  v0[20] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  v11 = (v5 + *v5);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_1E616F644;
  v9 = v0[11];

  return v11(v9, 3);
}

uint64_t sub_1E616F644(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[19];
  if (v1)
  {
    v5(v4[11], v4[8]);

    v6 = sub_1E616FCD0;
  }

  else
  {
    v7 = v4[11];
    v8 = v4[8];
    v4[23] = a1;
    v5(v7, v8);

    v6 = sub_1E616F7E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E616F7E0()
{
  v1 = v0[23];
  v2 = CatalogService.requestCatalogLockupPlaceholderBackfill.getter();
  v0[24] = v3;
  sub_1E600C468(v1);

  sub_1E65D8788();
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_1E616F93C;
  v5 = v0[7];

  return v7(v5);
}

uint64_t sub_1E616F93C(uint64_t a1)
{
  v4 = *v2;
  v4[26] = v1;

  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E616FD50;
  }

  else
  {
    v4[27] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E616FAE8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E616FAE8()
{
  **(v0 + 16) = *(v0 + 216);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E616FB6C(uint64_t a1)
{
  v1[17] = 0;
  v2 = v1[10];
  v3 = v1[8];
  v4 = v1[9];
  v5 = CatalogService.queryCatalogWorkoutReferencesReleasedSince.getter();
  v1[18] = v6;
  sub_1E65D7688();
  sub_1E65E61C8();
  sub_1E65D7678();
  v7 = *(v4 + 8);
  v1[19] = v7;
  v1[20] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  v11 = (v5 + *v5);
  v8 = swift_task_alloc();
  v1[21] = v8;
  *v8 = v1;
  v8[1] = sub_1E616F644;
  v9 = v1[11];

  return v11(v9, 3);
}

uint64_t sub_1E616FCD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E616FD50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E616FDD0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for CatalogService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for ArchivedSessionService()[-1].Description;
  v9 = (v6 + v7 + v8[80]) & ~v8[80];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFA78C;

  return sub_1E616EF3C(a1, v1 + v6, v1 + v9);
}

uint64_t sub_1E616FF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6170040, 0, 0);
}

uint64_t sub_1E6170040()
{
  v1 = ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E617013C;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E617013C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6170254, 0, 0);
}

uint64_t sub_1E6170254()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6170330;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6170330()
{

  return MEMORY[0x1EEE6DFA0](sub_1E617042C, 0, 0);
}

uint64_t sub_1E617042C()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E617052C, v4, v3);
  }
}

uint64_t sub_1E617052C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6170330;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E61705F8(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E616FF0C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6170754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6170888, 0, 0);
}

uint64_t sub_1E6170888()
{
  v1 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6170984;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6170984()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FE0E84;
  }

  else
  {
    v2 = sub_1E6170AB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6170AB4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E6170B90;
  v5 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1E6170B90()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6170C8C, 0, 0);
}

uint64_t sub_1E6170C8C()
{
  if (v0[2])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6170D8C, v2, v1);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1E6170D8C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E6170B90;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1E6170E58(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6170754(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6170FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B08, &qword_1E65EC510);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B00, &qword_1E65EC508);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61710E8, 0, 0);
}

uint64_t sub_1E61710E8()
{
  v1 = ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter();
  v0[12] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1E61711E4;
  v4 = v0[8];

  return v6(v4);
}

uint64_t sub_1E61711E4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61712FC, 0, 0);
}

uint64_t sub_1E61712FC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E61713D8;
  v5 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1E61713D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61714D4, 0, 0);
}

uint64_t sub_1E61714D4()
{
  if (v0[3])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61715D4, v2, v1);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1E61715D4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E61713D8;
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1E61716A0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6170FB4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E61717FC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for CatalogService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for ArchivedSessionService()[-1].Description;
  v9 = (v6 + v7 + v8[80]) & ~v8[80];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E616C420(a1, v1 + v6, v1 + v9);
}

uint64_t sub_1E6171938(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E616D130(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6171A94(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E616D81C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_7(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E6171D54(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D08, &qword_1E65F3738) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E616DF20(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6171EC8(uint64_t a1, unsigned int a2)
{
  v47 = a2;
  v3 = sub_1E65D8A08();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v41 - v14;
  v41[0] = v41 - v14;
  v16 = sub_1E65D8C88();
  v44 = *(v16 - 8);
  v45 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v42 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[1] = v21;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v41 - v22;
  v24 = sub_1E65D97D8();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v41 - v29;
  v31 = sub_1E65D89F8();
  (*(*(v31 - 8) + 16))(v30, a1, v31);
  (*(v25 + 104))(v30, *MEMORY[0x1E69CC320], v24);
  v32 = sub_1E65D7A38();
  (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
  v41[2] = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  (*(v25 + 16))(v28, v30, v24);
  sub_1E5DFD1CC(v23, v21, &unk_1ED07B500, &qword_1E65F0EE0);
  v33 = sub_1E65D9208();
  (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
  v34 = sub_1E65D9218();
  (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
  sub_1E65D8CA8();
  v35 = sub_1E65D8CB8();
  (*(*(v35 - 8) + 56))(v9, 0, 1, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
  (*(*(v36 - 8) + 56))(v43, 1, 1, v36);
  v37 = sub_1E65D9928();
  (*(*(v37 - 8) + 56))(v46, 1, 1, v37);
  v38 = v42;
  sub_1E65D8C78();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v39 = MetricService.record.getter();
  v39(v38);

  (*(v44 + 8))(v38, v45);
  sub_1E6175BC8(v23);
  return (*(v25 + 8))(v30, v24);
}

uint64_t sub_1E6172530(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65D76A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  sub_1E60C9A54();
  v8 = ImpressionsTracker.consumeImpressions(on:)(v6, ObjectType, a2);
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_1E6172628(int *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 320) = a4;
  *(v8 + 16) = a3;
  sub_1E65D8A08();
  *(v8 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  *(v8 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  *(v8 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  *(v8 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  *(v8 + 88) = swift_task_alloc();
  v10 = sub_1E65D8C88();
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();
  v11 = sub_1E65D97D8();
  *(v8 + 120) = v11;
  *(v8 + 128) = *(v11 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v12 = sub_1E65D9F68();
  *(v8 + 152) = v12;
  *(v8 + 160) = *(v12 - 8);
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 192) = v13;
  v14 = sub_1E65D7A38();
  *(v8 + 200) = v14;
  *(v8 + 208) = *(v14 - 8);
  *(v8 + 216) = swift_task_alloc();
  v17 = (a1 + *a1);
  v15 = swift_task_alloc();
  *(v8 + 224) = v15;
  *v15 = v8;
  v15[1] = sub_1E6172A10;

  return v17(v13);
}

uint64_t sub_1E6172A10()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1E6176354;
  }

  else
  {
    v2 = sub_1E6172B24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6172B24()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E6175BC8(v3);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 24);
    v7 = *(v0 + 16);
    v14 = *(v0 + 40);
    v8 = (*(v2 + 32))(*(v0 + 216), v3, v1);
    *(v0 + 240) = v6(v8);
    v9 = swift_allocObject();
    *(v0 + 248) = v9;
    *(v9 + 16) = v14;
    v10 = type metadata accessor for AppComposer(0);
    *(v0 + 256) = v10;
    v11 = (v7 + *(v10 + 32));
    *(v0 + 264) = *v11;
    *(v0 + 272) = v11[1];
    swift_unknownObjectRetain();
    *(v0 + 280) = swift_getObjectType();
    *(v0 + 288) = sub_1E65E6058();
    *(v0 + 296) = sub_1E65E6048();
    v13 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6172D78, v13, v12);
  }
}

uint64_t sub_1E6172D78()
{

  sub_1E65DB6A8();

  return MEMORY[0x1EEE6DFA0](sub_1E6172E1C, 0, 0);
}

uint64_t sub_1E6172E1C()
{
  v1 = v0[30];
  v2 = swift_allocObject();
  v0[38] = v2;
  *(v2 + 16) = v1;

  v0[39] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6172ED0, v4, v3);
}

uint64_t sub_1E6172ED0()
{

  sub_1E65DB668();

  return MEMORY[0x1EEE6DFA0](sub_1E6172FB0, 0, 0);
}

uint64_t sub_1E6172FB0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v17 = v0[22];
  v28 = v0[21];
  v24 = v0[20];
  v5 = v0[18];
  v27 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[15];
  v23 = v0[14];
  v25 = v0[13];
  v26 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[8];
  v22 = v0[7];
  (*(v24 + 16))(v5);
  (*(v6 + 104))(v5, *MEMORY[0x1E69CC328], v8);
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v6 + 16))(v7, v5, v8);
  sub_1E5DFD1CC(v4, v17, &unk_1ED07B500, &qword_1E65F0EE0);
  v9 = sub_1E65D9208();
  (*(*(v9 - 8) + 56))(v18, 1, 1, v9);
  v10 = sub_1E65D9218();
  (*(*(v10 - 8) + 56))(v19, 1, 1, v10);
  sub_1E65D8CA8();
  v11 = sub_1E65D8CB8();
  (*(*(v11 - 8) + 56))(v20, 0, 1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
  (*(*(v12 - 8) + 56))(v21, 1, 1, v12);
  v13 = sub_1E65D9928();
  (*(*(v13 - 8) + 56))(v22, 1, 1, v13);
  sub_1E65D8C78();
  type metadata accessor for AppEnvironment(0);
  v14 = MetricService.record.getter();
  v14(v23);

  (*(v25 + 8))(v23, v26);
  sub_1E6175BC8(v4);
  (*(v6 + 8))(v5, v8);
  (*(v24 + 8))(v28, v27);
  (*(v2 + 8))(v1, v3);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E617344C(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 256) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a3;
  sub_1E65D8A08();
  *(v8 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  *(v8 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  *(v8 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  *(v8 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  *(v8 + 88) = swift_task_alloc();
  v10 = sub_1E65D8C88();
  *(v8 + 96) = v10;
  *(v8 + 104) = *(v10 - 8);
  *(v8 + 112) = swift_task_alloc();
  v11 = sub_1E65D97D8();
  *(v8 + 120) = v11;
  *(v8 + 128) = *(v11 - 8);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  v12 = sub_1E65D76A8();
  *(v8 + 152) = v12;
  *(v8 + 160) = *(v12 - 8);
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 192) = v13;
  v14 = sub_1E65D7A38();
  *(v8 + 200) = v14;
  *(v8 + 208) = *(v14 - 8);
  *(v8 + 216) = swift_task_alloc();
  v17 = (a1 + *a1);
  v15 = swift_task_alloc();
  *(v8 + 224) = v15;
  *v15 = v8;
  v15[1] = sub_1E6173834;

  return v17(v13);
}

uint64_t sub_1E6173834()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1E6174054;
  }

  else
  {
    v2 = sub_1E6173948;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6173948()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E6175BC8(v3);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[27], v3, v1);
    sub_1E65E6058();
    v0[30] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6173B20, v7, v6);
  }
}

uint64_t sub_1E6173B20()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[3];

  ObjectType = swift_getObjectType();
  sub_1E60C9A54();
  v0[31] = ImpressionsTracker.consumeImpressions(on:)(v1, ObjectType, v4);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E6173BEC, 0, 0);
}

uint64_t sub_1E6173BEC()
{
  v1 = *(v0 + 248);
  (*(v0 + 40))();
  if (*(v1 + 16))
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    v4 = *(v0 + 200);
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    v24 = *(v0 + 112);
    v25 = *(v0 + 104);
    v26 = *(v0 + 96);
    v19 = *(v0 + 88);
    v20 = *(v0 + 80);
    v21 = *(v0 + 72);
    v22 = *(v0 + 64);
    v23 = *(v0 + 56);
    *v7 = *(v0 + 248);
    (*(v10 + 104))(v7, *MEMORY[0x1E69CC318], v9);
    (*(v3 + 16))(v6, v2, v4);
    (*(v3 + 56))(v6, 0, 1, v4);
    (*(v10 + 16))(v8, v7, v9);
    sub_1E5DFD1CC(v6, v5, &unk_1ED07B500, &qword_1E65F0EE0);
    v11 = sub_1E65D9208();
    (*(*(v11 - 8) + 56))(v19, 1, 1, v11);
    v12 = sub_1E65D9218();
    (*(*(v12 - 8) + 56))(v20, 1, 1, v12);
    sub_1E65D8CA8();
    v13 = sub_1E65D8CB8();
    (*(*(v13 - 8) + 56))(v21, 0, 1, v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
    (*(*(v14 - 8) + 56))(v22, 1, 1, v14);
    v15 = sub_1E65D9928();
    (*(*(v15 - 8) + 56))(v23, 1, 1, v15);
    sub_1E65D8C78();
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v16 = MetricService.record.getter();
    v16(v24);

    (*(v25 + 8))(v24, v26);
    sub_1E6175BC8(v6);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1E6174054()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E617415C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 368) = v22;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  sub_1E65D8A08();
  *(v8 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  *(v8 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  *(v8 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  *(v8 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_1E65D8C88();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = sub_1E65D97D8();
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  *(v8 + 160) = swift_task_alloc();
  v12 = sub_1E65D8F28();
  *(v8 + 168) = v12;
  *(v8 + 176) = *(v12 - 8);
  *(v8 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  *(v8 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  *(v8 + 200) = swift_task_alloc();
  v13 = sub_1E65D8C68();
  *(v8 + 208) = v13;
  *(v8 + 216) = *(v13 - 8);
  *(v8 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  *(v8 + 232) = swift_task_alloc();
  v14 = sub_1E65D7D78();
  *(v8 + 240) = v14;
  *(v8 + 248) = *(v14 - 8);
  *(v8 + 256) = swift_task_alloc();
  v15 = sub_1E65D76A8();
  *(v8 + 264) = v15;
  *(v8 + 272) = *(v15 - 8);
  *(v8 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v8 + 304) = v16;
  v17 = sub_1E65D7A38();
  *(v8 + 312) = v17;
  *(v8 + 320) = *(v17 - 8);
  *(v8 + 328) = swift_task_alloc();
  v20 = (a2 + *a2);
  v18 = swift_task_alloc();
  *(v8 + 336) = v18;
  *v18 = v8;
  v18[1] = sub_1E6174740;

  return v20(v16);
}

uint64_t sub_1E6174740()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1E6175284;
  }

  else
  {
    v2 = sub_1E6174854;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6174854()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E6175BC8(v3);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[41], v3, v1);
    sub_1E65E6058();
    v0[44] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6174A84, v7, v6);
  }
}

uint64_t sub_1E6174A84()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[4];

  ObjectType = swift_getObjectType();
  sub_1E60C9A54();
  v0[45] = ImpressionsTracker.snapshotOnScreenImpressions(on:)(v1, ObjectType, v4);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E6174B50, 0, 0);
}

uint64_t sub_1E6174B50()
{
  v60 = v0;
  v53 = *(v0 + 344);
  v47 = *(v0 + 312);
  v49 = *(v0 + 328);
  v43 = *(v0 + 320);
  v45 = *(v0 + 296);
  v39 = *(v0 + 248);
  v1 = *(v0 + 232);
  v41 = *(v0 + 240);
  v35 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v55 = *(v0 + 184);
  v57 = *(v0 + 192);
  v6 = *(v0 + 176);
  v33 = *(v0 + 168);
  v34 = *(v0 + 160);
  v37 = *(v0 + 152);
  v38 = *(v0 + 136);
  v40 = *(v0 + 128);
  v7 = *(v0 + 16);
  v51 = (*(v0 + 48))();
  sub_1E5DFD1CC(v7, v1, &qword_1ED073578, &qword_1E65F0E60);
  v8 = type metadata accessor for PageMetricsClick(0);
  (*(v2 + 16))(v3, v7 + v8[5], v4);
  sub_1E5DFD1CC(v7 + v8[6], v5, &qword_1ED072340, &qword_1E65EA410);
  sub_1E5DFD1CC(v7 + v8[15], v57, &qword_1ED072330, &qword_1E65EAB70);
  (*(v6 + 16))(v55, v7 + v8[14], v33);
  sub_1E5DFD1CC(v7 + v8[8], v34, &qword_1ED073570, &unk_1E65F4570);

  sub_1E65D7D68();
  (*(v39 + 16))(v37, v35, v41);
  (*(v38 + 104))(v37, *MEMORY[0x1E69CC330], v40);
  (*(v43 + 16))(v45, v49, v47);
  (*(v43 + 56))(v45, 0, 1, v47);
  v9 = *(v7 + v8[11]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59[0] = v9;
  sub_1E6175C30(v51, sub_1E60481B8, 0, isUniquelyReferenced_nonNull_native, v59);

  if (v53)
  {
  }

  else
  {
    v54 = *(v0 + 320);
    v56 = *(v0 + 312);
    v58 = *(v0 + 328);
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    v48 = *(v0 + 248);
    v50 = *(v0 + 240);
    v52 = *(v0 + 256);
    v44 = *(v0 + 152);
    v19 = *(v0 + 136);
    v42 = *(v0 + 128);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);
    v22 = *(v0 + 96);
    v46 = *(v0 + 104);
    v23 = *(v0 + 80);
    v24 = *(v0 + 88);
    v25 = *(v0 + 64);
    v36 = *(v0 + 72);
    (*(v19 + 16))(*(v0 + 144), v44, v42, v11, v12, v13, v14, v15);
    sub_1E5DFD1CC(v17, v18, &unk_1ED07B500, &qword_1E65F0EE0);
    v26 = sub_1E65D9208();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
    v27 = sub_1E65D9218();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    sub_1E65D8CA8();
    v28 = sub_1E65D8CB8();
    (*(*(v28 - 8) + 56))(v23, 0, 1, v28);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
    (*(*(v29 - 8) + 56))(v36, 1, 1, v29);
    v30 = sub_1E65D9928();
    (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
    sub_1E65D8C78();
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v31 = MetricService.record.getter();
    v31(v21);

    (*(v20 + 8))(v21, v46);
    sub_1E6175BC8(v17);
    (*(v19 + 8))(v44, v42);
    (*(v48 + 8))(v52, v50);
    (*(v54 + 8))(v58, v56);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1E6175284()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61753E4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v6 = swift_task_alloc();
  v4[4] = v6;
  v7 = sub_1E65D7A38();
  v4[5] = v7;
  v4[6] = *(v7 - 8);
  v4[7] = swift_task_alloc();
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_1E617557C;

  return v10(v6);
}

uint64_t sub_1E617557C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1E6175798;
  }

  else
  {
    v2 = sub_1E6175690;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6175690()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E6175BC8(v3);
  }

  else
  {
    v4 = v0[7];
    v5 = v0[2];
    (*(v2 + 32))(v4, v3, v1);
    sub_1E6175808(v5, v4);
    (*(v2 + 8))(v4, v1);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6175798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6175808(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1E65DA7F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_1E65D8A28();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65D9D98();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  type metadata accessor for PageMetricsRender(0);

  sub_1E65D8A18();
  (*(v13 + 16))(v8, v15, v12);
  (*(v6 + 104))(v8, *MEMORY[0x1E69CCFA0], v5);
  v17 = sub_1E65D7A38();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v4, v20, v17);
  (*(v18 + 56))(v4, 0, 1, v17);
  sub_1E6427784(MEMORY[0x1E69E7CC0]);
  sub_1E6175F64(v8, v4);

  sub_1E6175BC8(v4);
  (*(v6 + 8))(v8, v5);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1E6175BC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6175C30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v53 = a1;
  v54 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v55 = v8;
  v56 = 0;
  v57 = v11 & v9;
  v58 = a2;
  v59 = a3;

  sub_1E6121040(&v49);
  if (!*(&v51 + 1))
  {
    goto LABEL_25;
  }

  v12 = v49;
  v46 = v50;
  v47 = v51;
  v48 = v52;
  v13 = *a5;
  result = sub_1E641708C(v49);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_1E6419AF8(v19, a4 & 1);
    result = sub_1E641708C(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E65E6C68();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_1E6423608();
    result = v24;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 40 * result;
    sub_1E604FBF8(*(*a5 + 56) + 40 * result, v45);
    sub_1E6009FC0(&v46);
    sub_1E5FEE468(v45, *(v22 + 56) + v23);
    goto LABEL_15;
  }

LABEL_13:
  v25 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v25[6] + result) = v12;
  v26 = v25[7] + 40 * result;
  v27 = v46;
  v28 = v47;
  *(v26 + 32) = v48;
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v25[2];
  v18 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v18)
  {
    v25[2] = v30;
LABEL_15:
    sub_1E6121040(&v49);
    if (*(&v51 + 1))
    {
      v20 = 1;
      do
      {
        v12 = v49;
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v33 = *a5;
        result = sub_1E641708C(v49);
        v35 = *(v33 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v33 + 24) < v37)
        {
          sub_1E6419AF8(v37, 1);
          result = sub_1E641708C(v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 40 * result;
          sub_1E604FBF8(*(*a5 + 56) + 40 * result, v45);
          sub_1E6009FC0(&v46);
          sub_1E5FEE468(v45, *(v31 + 56) + v32);
        }

        else
        {
          v39 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v39[6] + result) = v12;
          v40 = v39[7] + 40 * result;
          v41 = v46;
          v42 = v47;
          *(v40 + 32) = v48;
          *v40 = v41;
          *(v40 + 16) = v42;
          v43 = v39[2];
          v18 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v39[2] = v44;
        }

        sub_1E6121040(&v49);
      }

      while (*(&v51 + 1));
    }

LABEL_25:
    sub_1E5E24EE4(v53);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E6175F64(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  v2 = sub_1E65DA7F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_1E65D8A08();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  v18 = sub_1E65D9B48();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E65D8CB8();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = sub_1E65D9928();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  sub_1E5DFD1CC(v28, v11, &unk_1ED07B500, &qword_1E65F0EE0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  (*(v3 + 16))(v5, v29, v2);
  sub_1E65D9B38();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v25 = MetricService.recordMetricPerformanceStream.getter();
  v25(v21);

  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_1E6176358@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for AppComposer(0);
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757C8, &qword_1E65F1D58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v21 - v5;
  v6 = sub_1E65DDE68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  (*(v7 + 104))(v9, *MEMORY[0x1E69CAB48], v6);
  v27 = 0;
  sub_1E65DDC88();
  sub_1E65DDC48();
  (*(v11 + 8))(v13, v10);
  if (v26 == 1)
  {
    sub_1E5E1DEAC(v24, &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v15 = swift_allocObject();
    sub_1E5E1FA80(&v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    sub_1E5E25708();
    v16 = v23;
    sub_1E65DF098();
    v17 = v25;
    (*(v4 + 32))(v25, v16, v3);
    v18 = 0;
    v19 = v17;
  }

  else
  {
    v18 = 1;
    v19 = v25;
  }

  return (*(v4 + 56))(v19, v18, 1, v3);
}

uint64_t sub_1E61766E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D20, &qword_1E65F3830);
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v23 = v21 - v3;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D28, &qword_1E65F3838);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D30, &qword_1E65F3840);
  v22 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  v21[1] = *a1;
  sub_1E5E1DEAC(a1, v10);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1E5E1FA80(v10, v16 + v15);
  sub_1E5E1DEAC(a1, v8);
  v17 = swift_allocObject();
  sub_1E5E1FA80(v8, v17 + v15);
  sub_1E5E25708();
  sub_1E65DF1A8();
  sub_1E65DF128();
  type metadata accessor for AppFeature(0);
  sub_1E5DED16C();
  sub_1E6177728();
  v18 = v23;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v19 = sub_1E65E4F08();
  (*(v24 + 8))(v18, v25);
  (*(v22 + 8))(v14, v12);
  return v19;
}

uint64_t sub_1E6176AAC()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1E61766E8(v2);
}

uint64_t sub_1E6176B2C()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6176BDC, v3, v2);
}

uint64_t sub_1E6176BDC()
{

  sub_1E5E20198(23, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080D24, 0, 0);
}

uint64_t sub_1E6176C54(_OWORD *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = type metadata accessor for AppAction(0);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1E6176CF4, 0, 0);
}

uint64_t sub_1E6176CF4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 16);
  *v3 = v1;
  v3[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  sub_1E5E05374(v1, v2);
  *(v0 + 64) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6176DBC, v5, v4);
}

uint64_t sub_1E6176DBC()
{
  v1 = *(v0 + 32);

  sub_1E65E4EE8();
  sub_1E6177B30(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6176E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EA8, &qword_1E65F1140);
  v53 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v52 - v2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D48, &qword_1E65F3870);
  v3 = MEMORY[0x1EEE9AC00](v54);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E80, &qword_1E65F1130);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v52 - v14;
  v16 = sub_1E65D7848();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v15);
  sub_1E5DFE50C(v12, &qword_1ED071F78, &unk_1E65EA3F0);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    sub_1E65D77C8();
    v22 = v21(v15, 1, v16);
    v23 = v19;
    if (v22 != 1)
    {
      sub_1E5DFE50C(v15, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v23 = v19;
  }

  v24 = v58;
  (*(v8 + 16))(v56, v58 + v20[71], v7);
  sub_1E65E4C98();
  v25 = v55;
  sub_1E617778C(v6, v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v31 = *v25;
    v32 = *(*v25 + 16);
    if (!v32)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v25, &qword_1ED075D48, &qword_1E65F3870);
LABEL_22:
    v47 = 0;
    v46 = 6;
    goto LABEL_25;
  }

  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D50, &qword_1E65F3878) + 48);
  v28 = *v25;
  v29 = sub_1E65D76A8();
  v30 = v25 + v27;
  v31 = v28;
  (*(*(v29 - 8) + 8))(v30, v29);
  v32 = *(v28 + 16);
  if (!v32)
  {
LABEL_9:

    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

LABEL_11:
  v54 = v20;
  v55 = v23;
  v62 = MEMORY[0x1E69E7CC0];
  sub_1E601C9FC(0, v32, 0);
  v33 = v62;
  v34 = v53 + 16;
  v35 = *(v53 + 16);
  v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v53 = v31;
  v37 = v31 + v36;
  v38 = *(v34 + 56);
  v39 = (v34 - 8);
  do
  {
    v40 = v59;
    v41 = v60;
    v35(v59, v37, v60);
    sub_1E65DEFB8();
    (*v39)(v40, v41);
    v42 = v61;
    v62 = v33;
    v44 = *(v33 + 16);
    v43 = *(v33 + 24);
    if (v44 >= v43 >> 1)
    {
      v52 = v61;
      sub_1E601C9FC((v43 > 1), v44 + 1, 1);
      v42 = v52;
      v33 = v62;
    }

    *(v33 + 16) = v44 + 1;
    *(v33 + 16 * v44 + 32) = v42;
    v37 += v38;
    --v32;
  }

  while (v32);

  v24 = v58;
  v20 = v54;
LABEL_16:
  v45 = (v24 + v20[62]);
  v46 = v45[1];
  if (v46 == 6)
  {

    v47 = 0;
  }

  else
  {
    v47 = *v45;
    v48 = *(v24 + v20[63]);
    sub_1E5E05374(*v45, v46);
    if (sub_1E5E25298(v47, v46, v48))
    {
      sub_1E5E05374(v47, v46);
      sub_1E61777FC(v47, v46, v33);
      v50 = v49;
      sub_1E5E07DA0(v47, v46);

      if ((v50 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    sub_1E5E07DA0(v47, v46);
    v47 = 0;
    v46 = 6;
  }

LABEL_25:
  *&v61 = v47;
  *(&v61 + 1) = v46;
  sub_1E5E25708();
  return sub_1E65DF0F8();
}

uint64_t sub_1E6177500(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D40, &qword_1E65F3868);
  v2 = sub_1E65DF0E8();
  result = type metadata accessor for AppState(0);
  *(a1 + *(result + 156)) = v2 & 1;
  return result;
}

uint64_t sub_1E6177584()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6176B0C(v0 + v3);
}

uint64_t sub_1E6177650(_OWORD *a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6176C54(a1, v1 + v5);
}

unint64_t sub_1E6177728()
{
  result = qword_1ED075D38;
  if (!qword_1ED075D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075D30, &qword_1E65F3840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075D38);
  }

  return result;
}

uint64_t sub_1E617778C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D48, &qword_1E65F3870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61777FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = 0;
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *(i - 1);
      v9 = *i;
      if (*i > 2)
      {
        if (v9 == 3)
        {
          v10 = 0xE600000000000000;
          v11 = 0x686372616573;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        if (v9 != 4)
        {
          if (v9 == 5)
          {
            v10 = 0xE500000000000000;
            v11 = 0x736E616C70;
            if (a2 <= 2)
            {
              goto LABEL_29;
            }

            goto LABEL_21;
          }

          goto LABEL_18;
        }

        v10 = 0xE600000000000000;
        v11 = 0x7478654E7075;
        if (a2 <= 2)
        {
LABEL_29:
          switch(a2)
          {
            case 0:
              v12 = 0xE700000000000000;
              if (v11 != 0x65726F6C707865)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            case 1:
              v12 = 0xE600000000000000;
              if (v11 != 0x756F59726F66)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            case 2:
              v12 = 0xE700000000000000;
              if (v11 != 0x7972617262696CLL)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
          }

          goto LABEL_36;
        }
      }

      else
      {
        if (!v9)
        {
          v10 = 0xE700000000000000;
          v11 = 0x65726F6C707865;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            v10 = 0xE700000000000000;
            v11 = 0x7972617262696CLL;
            if (a2 <= 2)
            {
              goto LABEL_29;
            }

            goto LABEL_21;
          }

LABEL_18:
          sub_1E5E05374(v8, v9);
          MEMORY[0x1E694D7C0](v8, v9);
          v11 = 0x7974696C61646F6DLL;
          v10 = 0xE90000000000003ALL;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        v10 = 0xE600000000000000;
        v11 = 0x756F59726F66;
        if (a2 <= 2)
        {
          goto LABEL_29;
        }
      }

LABEL_21:
      if (a2 == 3)
      {
        v12 = 0xE600000000000000;
        if (v11 != 0x686372616573)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
          v12 = 0xE500000000000000;
          if (v11 != 0x736E616C70)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

LABEL_36:
        v13 = v11;
        MEMORY[0x1E694D7C0](a1, a2);
        v12 = 0xE90000000000003ALL;
        if (v13 != 0x7974696C61646F6DLL)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v12 = 0xE600000000000000;
      if (v11 != 0x7478654E7075)
      {
        goto LABEL_42;
      }

LABEL_41:
      if (v10 == v12)
      {
        sub_1E5E0476C(v8, v9);

        return v6;
      }

LABEL_42:
      v14 = sub_1E65E6C18();
      sub_1E5E0476C(v8, v9);

      if (v14)
      {
        return v6;
      }

      if (v3 == ++v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1E6177B30(uint64_t a1)
{
  v2 = type metadata accessor for AppAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6177B8C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D58, &qword_1E65F3880);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v25 - v4;
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = sub_1E65E3A78();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v27 = sub_1E65E3AB8();
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v2;
  sub_1E5E1DEAC(v2, v11);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v15 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1E5E1FA80(v11, v17 + v15);
  v18 = (v17 + v16);
  v19 = v26;
  *v18 = v25;
  v18[1] = v19;
  sub_1E5E1DEAC(v2, v9);
  v20 = swift_allocObject();
  sub_1E5E1FA80(v9, v20 + v15);

  sub_1E65E3A68();
  sub_1E65E3AA8();
  type metadata accessor for AppFeature(0);
  sub_1E6179144(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E6179144(qword_1EE2D59B8, MEMORY[0x1E699EFD0], MEMORY[0x1E699EFC8]);
  v21 = v30;
  v22 = v27;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v23 = sub_1E65E4F08();
  (*(v31 + 8))(v21, v32);
  (*(v29 + 8))(v14, v22);
  return v23;
}

uint64_t sub_1E6177FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  sub_1E65D74E8();
  v4[24] = swift_task_alloc();
  v5 = sub_1E65D8D48();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for RouteDestination(0);
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61780C8, 0, 0);
}

uint64_t sub_1E61780C8()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = v0[13];
  v0[30] = v1;
  if (v1 == 6)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v2 = sub_1E65E3B68();
    __swift_project_value_buffer(v2, qword_1EE2EA2A0);
    v3 = sub_1E65E3B48();
    v4 = sub_1E65E6328();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1E5DE9000, v3, v4, "[SharePlaySessionComposer] Failed to get the currently selected root item", v5, 2u);
      MEMORY[0x1E694F1C0](v5, -1, -1);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[12];
    v0[31] = v8;
    v0[14] = v8;
    v0[15] = v1;
    sub_1E65E6058();
    v0[32] = sub_1E65E6048();
    v10 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61782B4, v10, v9);
  }
}

uint64_t sub_1E61782B4()
{
  v1 = v0[31];
  v2 = v0[30];
  v3 = v0[22];

  v3(v0 + 14);
  sub_1E5E07DA0(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E6178348, 0, 0);
}

uint64_t sub_1E6178348()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v13 = *(v0 + 224);
    v14 = *(v0 + 200);
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
    sub_1E65E3A28();
    sub_1E65E3A38();
    sub_1E65E3A48();
    sub_1E65E39F8();
    sub_1E65E3A08();
    sub_1E65D8CF8();
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    (*(v2 + 16))(v1 + *(v13 + 20), v3, v14);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    (*(v2 + 8))(v3, v14);
    *(v1 + *(v13 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611D1C0(v0 + 128);
    v4 = *(v0 + 136);
    *(v0 + 144) = *(v0 + 128);
    *(v0 + 152) = v4;
    sub_1E600F5B0((v0 + 137));
    v5 = swift_task_alloc();
    *(v0 + 264) = v5;
    *v5 = v0;
    v5[1] = sub_1E6178678;
    v6 = *(v0 + 232);

    return RoutingContext.presentDestination(_:style:priority:)(v6, (v0 + 144), (v0 + 137), v15, v16);
  }

  else
  {
    sub_1E601B260(v0 + 56);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v8 = sub_1E65E3B68();
    __swift_project_value_buffer(v8, qword_1EE2EA2A0);
    v9 = sub_1E65E3B48();
    v10 = sub_1E65E6328();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1E5DE9000, v9, v10, "[SharePlaySessionComposer] Failed to get routing context", v11, 2u);
      MEMORY[0x1E694F1C0](v11, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1E6178678()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  *(v2 + 272) = v0;

  sub_1E5F94E00(*(v2 + 144), *(v2 + 152));
  sub_1E60111F8(v3);
  if (v0)
  {
    v4 = sub_1E6178844;
  }

  else
  {
    v4 = sub_1E61787C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E61787C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6178844()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61788D4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6177FA8(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E61789EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D60, &qword_1E65F38A8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6178A8C, 0, 0);
}

uint64_t sub_1E6178A8C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SharePlayService.makeMultiUserBeginActivityRequested.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E6178BA8;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E6178BA8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5FE45F0;
  }

  else
  {
    v2 = sub_1E6178CD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6178CD8()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D68, &qword_1E65F38B8);
  v1[4] = sub_1E5FED46C(&qword_1EE2D44E0, &qword_1ED075D68, &qword_1E65F38B8, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E65E3A58();
  sub_1E5FED46C(&qword_1EE2D47C0, &qword_1ED075D60, &qword_1E65F38A8, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6178E18(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E61789EC(a1, v1 + v5);
}

uint64_t sub_1E6178EF4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1E65D74E8();
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6178F84, 0, 0);
}

uint64_t sub_1E6178F84()
{
  sub_1E65D8D08();
  sub_1E65D8D18();
  sub_1E65D8D38();
  sub_1E65D8CD8();
  sub_1E65D8CE8();
  sub_1E65E3A18();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6179064(uint64_t a1)
{
  v2 = sub_1E65E39E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E3A88();
  v6 = type metadata accessor for AppState(0);
  return (*(v3 + 40))(a1 + *(v6 + 280), v5, v2);
}

uint64_t sub_1E6179144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E61791A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001E6613C00 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E65E6C18();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E617923C(uint64_t a1)
{
  v2 = sub_1E617AA08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179278(uint64_t a1)
{
  v2 = sub_1E617AA08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61792B4()
{
  v1 = *v0;
  v2 = 0x6472617761;
  v3 = 0x726F6C6F43786568;
  v4 = 0x647261646E617473;
  if (v1 != 4)
  {
    v4 = 0x5074756F6B726F77;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x63696D616E7964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E6179378@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E617D8DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E61793A0(uint64_t a1)
{
  v2 = sub_1E617A7AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61793DC(uint64_t a1)
{
  v2 = sub_1E617A7AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6179418(uint64_t a1)
{
  v2 = sub_1E617A9B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179454(uint64_t a1)
{
  v2 = sub_1E617A9B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61794AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E617953C(uint64_t a1)
{
  v2 = sub_1E617A960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179578(uint64_t a1)
{
  v2 = sub_1E617A960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61795CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F6C6F43786568 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E6179654(uint64_t a1)
{
  v2 = sub_1E617A90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179690(uint64_t a1)
{
  v2 = sub_1E617A90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61796CC()
{
  if (*v0)
  {
    return 0x65646F43706F7263;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_1E6179708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E61797E4(uint64_t a1)
{
  v2 = sub_1E617A8B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179820(uint64_t a1)
{
  v2 = sub_1E617A8B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E617985C()
{
  v1 = 0x656C756465686373;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E61798C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E617DAE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E61798E8(uint64_t a1)
{
  v2 = sub_1E617A864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6179924(uint64_t a1)
{
  v2 = sub_1E617A864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkContent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D70, &qword_1E65F38F0);
  v84 = *(v2 - 8);
  v85 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v64 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D78, &qword_1E65F38F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v88 = &v64 - v5;
  v6 = sub_1E65D76F8();
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D80, &unk_1E65F3900);
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v64 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  MEMORY[0x1EEE9AC00](v64);
  v90 = &v64 - v9;
  v81 = sub_1E65DB268();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v89 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D88, &qword_1E65F3910);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v64 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D90, &qword_1E65F3918);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v64 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v64 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D98, &qword_1E65F3928);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DA0, &qword_1E65F3930);
  v65 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  v19 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DA8, &qword_1E65F3938);
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v23 = &v64 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E617A7AC();
  v93 = v23;
  sub_1E65E6DA8();
  sub_1E617A800(v92, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v96 = 0;
      sub_1E617AA08();
      v45 = v93;
      v44 = v94;
      sub_1E65E6B18();
      sub_1E65E6B48();

      (*(v65 + 8))(v18, v16);
      return (*(v91 + 8))(v45, v44);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v99 = 3;
      sub_1E617A90C();
      v53 = v72;
      v55 = v93;
      v54 = v94;
      sub_1E65E6B18();
      v56 = v76;
      sub_1E65E6B48();

      (*(v75 + 8))(v53, v56);
      return (*(v91 + 8))(v55, v54);
    }

    v25 = v69;
    v26 = v68;
    v27 = v70;
    (*(v69 + 32))(v68, v21, v70);
    v98 = 2;
    sub_1E617A960();
    v28 = v71;
    v30 = v93;
    v29 = v94;
    sub_1E65E6B18();
    sub_1E617D0F4(&qword_1ED074A00, MEMORY[0x1E699DC18]);
    v31 = v74;
    sub_1E65E6B78();
    (*(v73 + 8))(v28, v31);
    (*(v25 + 8))(v26, v27);
    return (*(v91 + 8))(v30, v29);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    v47 = v79;
    v48 = v89;
    v49 = v81;
    (*(v79 + 32))(v89, v21, v81);
    sub_1E5FAB460(&v21[v46], v90, &qword_1ED073548, &qword_1E65ED508);
    v102 = 4;
    sub_1E617A8B8();
    v50 = v77;
    v30 = v93;
    v29 = v94;
    sub_1E65E6B18();
    v101 = 0;
    sub_1E5DF2818(&qword_1EE2D6D78, MEMORY[0x1E699D120], MEMORY[0x1E699D128]);
    v51 = v80;
    v52 = v95;
    sub_1E65E6B78();
    if (v52)
    {
      (*(v78 + 8))(v50, v51);
      sub_1E5DFE50C(v90, &qword_1ED073548, &qword_1E65ED508);
      (*(v47 + 8))(v48, v49);
    }

    else
    {
      v100 = 1;
      sub_1E617BA68(&qword_1EE2D64D0, MEMORY[0x1E699F0B8]);
      v59 = v90;
      sub_1E65E6B78();
      (*(v78 + 8))(v50, v51);
      sub_1E5DFE50C(v59, &qword_1ED073548, &qword_1E65ED508);
      (*(v47 + 8))(v89, v49);
    }

    return (*(v91 + 8))(v30, v29);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DB0, &qword_1E65F3940);
    v33 = *(v32 + 48);
    v92 = *&v21[*(v32 + 64)];
    v34 = v86;
    v35 = v87;
    v36 = v83;
    (*(v86 + 32))(v83, v21, v87);
    v37 = v88;
    sub_1E5FAB460(&v21[v33], v88, &qword_1ED075D78, &qword_1E65F38F8);
    v106 = 5;
    sub_1E617A864();
    v38 = v82;
    v40 = v93;
    v39 = v94;
    sub_1E65E6B18();
    v105 = 0;
    sub_1E5DF2818(&qword_1EE2D71B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v41 = v85;
    v42 = v95;
    sub_1E65E6B78();
    v95 = v42;
    if (v42)
    {
      (*(v84 + 8))(v38, v41);
      sub_1E5DFE50C(v37, &qword_1ED075D78, &qword_1E65F38F8);
      (*(v34 + 8))(v36, v35);
      return (*(v91 + 8))(v40, v39);
    }

    else
    {
      v104 = 1;
      sub_1E65D9388();
      sub_1E5DF2818(&qword_1ED075DC0, MEMORY[0x1E69CC048], MEMORY[0x1E69CC050]);
      v60 = v95;
      sub_1E65E6B38();
      if (v60)
      {
        (*(v84 + 8))(v38, v41);
        sub_1E5DFE50C(v37, &qword_1ED075D78, &qword_1E65F38F8);
        (*(v34 + 8))(v36, v35);
        return (*(v91 + 8))(v93, v94);
      }

      else
      {
        v103 = 2;
        sub_1E65E6B68();
        v61 = v38;
        v63 = v93;
        v62 = v94;
        (*(v84 + 8))(v61, v41);
        sub_1E5DFE50C(v88, &qword_1ED075D78, &qword_1E65F38F8);
        (*(v34 + 8))(v36, v35);
        return (*(v91 + 8))(v63, v62);
      }
    }
  }

  else
  {
    v97 = 1;
    sub_1E617A9B4();
    v58 = v93;
    v57 = v94;
    sub_1E65E6B18();
    (*(v66 + 8))(v15, v67);
    return (*(v91 + 8))(v58, v57);
  }
}

unint64_t sub_1E617A7AC()
{
  result = qword_1EE2DAB40[0];
  if (!qword_1EE2DAB40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DAB40);
  }

  return result;
}