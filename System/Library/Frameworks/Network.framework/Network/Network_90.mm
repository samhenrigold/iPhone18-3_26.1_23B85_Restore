double sub_182034418(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

uint64_t sub_182034444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v6 || result < 0)
  {
    sub_182AD3BA8();

    v24 = 0x4F4C465245444E55;
    v25 = 0xEB00000000203A57;
    v8 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v8);

    MEMORY[0x1865D9CA0](0x656D657263656420, 0xEB0000000020746ELL);
    v9 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v9);

    MEMORY[0x1865D9CA0](0x20746C7573657220, 0xE800000000000000);
    if (a4)
    {
      v10 = 0xE300000000000000;
      v11 = 7104878;
    }

    else
    {
      sub_182034764();
      v11 = sub_182AD3A88();
      v10 = v12;
    }

    MEMORY[0x1865D9CA0](v11, v10);

    v14 = v24;
    v13 = v25;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843418);

    v16 = sub_182AD2678();
    v17 = sub_182AD38C8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315650;
      v20 = sub_182AD3BF8();
      v22 = sub_181C64FFC(v20, v21, &v24);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v24);
      *(v18 + 22) = 2080;
      v23 = sub_181C64FFC(v14, v13, &v24);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_181A37000, v16, v17, "%s %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v19, -1, -1);
      MEMORY[0x1865DF520](v18, -1, -1);
    }

    else
    {
    }

    return a3;
  }

  return result;
}

unint64_t sub_182034764()
{
  result = qword_1EA83AE90;
  if (!qword_1EA83AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AE90);
  }

  return result;
}

uint64_t sub_1820347B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!__OFADD__(a1, a2))
  {
    return a1 + a2;
  }

  v9 = a3;
  sub_182AD3BA8();

  v23 = 0x574F4C465245564FLL;
  v24 = 0xEA0000000000203ALL;
  v5 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v5);

  MEMORY[0x1865D9CA0](0x656D6572636E6920, 0xEB0000000020746ELL);
  v6 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v6);

  MEMORY[0x1865D9CA0](0x20746C7573657220, 0xE800000000000000);
  if (a4)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    sub_182034764();
    v8 = sub_182AD3A88();
    v7 = v10;
  }

  MEMORY[0x1865D9CA0](v8, v7);

  v12 = v23;
  v11 = v24;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v13 = sub_182AD2698();
  __swift_project_value_buffer(v13, qword_1EA843418);

  v14 = sub_182AD2678();
  v15 = sub_182AD38C8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315650;
    v18 = sub_182AD3BF8();
    v20 = sub_181C64FFC(v18, v19, &v23);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v23);
    *(v16 + 22) = 2080;
    v21 = sub_181C64FFC(v12, v11, &v23);

    *(v16 + 24) = v21;
    _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v17, -1, -1);
    MEMORY[0x1865DF520](v16, -1, -1);
  }

  else
  {
  }

  return v9;
}

void sub_182034AD4(uint64_t a1@<X8>)
{
  v2 = *(v1 + 952);
  v3 = *(v1 + 936);
  v4 = *(v1 + 944);
  if (v2 == 6)
  {
    if (v3 | v4)
    {
      LOBYTE(v2) = 6;
    }

    else
    {
      *(v1 + 936) = v1;
      *(v1 + 944) = &off_1EEFB17F0;
      *(v1 + 952) = 3;
      v5 = a1;

      sub_181F68E5C(0, 0, 6u);
      a1 = v5;
      v3 = *(v1 + 936);
      v4 = *(v1 + 944);
      LOBYTE(v2) = *(v1 + 952);
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  sub_181F68EA8(v3, v4, v2);
}

uint64_t sub_182034B64()
{
  v1 = v0;
  type metadata accessor for SwiftTLSProtocol.SwiftTLSInstance();
  swift_allocObject();
  *(v0 + 16) = SwiftTLSProtocol.SwiftTLSInstance.init()();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 6;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 6;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 6;
  type metadata accessor for ReassemblyQueue();
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0x7FFFFFFFFFFFFFFFLL;
  *(v2 + 56) = 1;
  v3 = sub_182AD2388();
  *(v2 + 64) = *v3;
  *(v1 + 184) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0x7FFFFFFFFFFFFFFFLL;
  *(v4 + 56) = 1;
  *(v4 + 64) = *v3;
  *(v1 + 192) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0x7FFFFFFFFFFFFFFFLL;
  *(v5 + 56) = 1;
  *(v5 + 64) = *v3;
  *(v1 + 200) = v5;

  FrameArray.init()(v1 + 208);
  FrameArray.init()(v1 + 440);
  FrameArray.init()(v1 + 672);
  *(v1 + 920) = 0;
  *(v1 + 904) = 0u;
  *(v1 + 928) = 6;
  *(v1 + 936) = 0u;
  *(v1 + 952) = 6;
  *(v1 + 960) = *v3;

  return v1;
}

uint64_t sub_182034CF8(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  *(v3 + 56) = a1;

  v6 = sub_182AD29C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v39 = a2[2];
  v40 = v10;
  v41 = *(a2 + 8);
  v11 = a2[1];
  v37 = *a2;
  v38 = v11;

  sub_182070AB4();
  swift_beginAccess();
  v12 = *(a1 + 288);

  sub_1822CDE98(0, v12);

  sub_182AD2988();
  v13 = _s7Network16SwiftTLSProtocolV7optionsAA15ProtocolOptionsCyACGyFZ_0();
  *(v3 + 24) = v13;

  sub_1820350CC(0x6F7470797243, 0xE600000000000000, 49, 0xE100000000000000, 1);
  v14 = *(v3 + 16);
  v15 = v13[6];
  v16 = v13[7];
  v13[6] = v14;
  v13[7] = 0x60000001EEFD6190uLL;
  swift_retain_n();
  sub_181AAD250(v15, v16);

  v17 = (v13 + *(*v13 + 128));
  swift_beginAccess();
  if (*v17 != 1)
  {
    *v17 = v3;
    v17[1] = &off_1EEFB17B0;

    swift_unknownObjectRelease();
  }

  swift_endAccess();
  v18 = swift_beginAccess();
  if (*v17 != 1)
  {
    v19 = MEMORY[0x1EEE9AC00](v18);
    v20 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v20, v9, v6, v19);
    sub_182070CF4(v20);
  }

  swift_endAccess();
  v34 = v14;
  v35 = 0x60000001EEFD6190;

  v21 = sub_18203520C(&v34);
  sub_181F749D0(v14, 0x60000001EEFD6190uLL);
  if (v21 & 1) != 0 && (v34 = v3, v35 = 0x60000001EEFB16F0, , v22 = sub_182292CF0(&v34), sub_181F749D0(v34, v35), (v22))
  {
    v23 = *(v3 + 72);
    v24 = *(v3 + 80);
    v34 = *(v3 + 64);
    v35 = v23;
    v36 = v24;
    v26 = *(v3 + 920);
    v27 = *(v3 + 928);
    v31 = *(v3 + 912);
    v25 = v31;
    v32 = v26;
    v33 = v27;
    sub_181F68EA8(v34, v23, v24);
    sub_181F68EA8(v25, v26, v27);
    v28 = OutputHandlerLinkage.invokeConnect(_:)(&v31);

    sub_181F68E5C(v31, v32, v33);
    sub_181F68E5C(v34, v35, v36);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);

    v28 = 0;
  }

  *(v3 + 24) = 0;

  return v28 & 1;
}

uint64_t sub_1820350CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = v5 + *(*v5 + 160);
  swift_beginAccess();
  *v12 = a5;
  *(v12 + 8) = 0;
  MEMORY[0x1865D9CA0](a1, a2);
  MEMORY[0x1865D9CA0](a3, a4);
  MEMORY[0x1865D9CA0](58, 0xE100000000000000);
  v13 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v13);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  v14 = (v6 + *(*v6 + 168));
  swift_beginAccess();
  *v14 = 91;
  v14[1] = 0xE100000000000000;
}

uint64_t sub_18203520C(uint64_t *a1)
{
  if (*(v1 + 928) != 6)
  {
    return 0;
  }

  if (*(v1 + 912) != 0)
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  *(v1 + 912) = v1;
  *(v1 + 920) = &off_1EEFB1770;
  *(v1 + 928) = 3;

  sub_181F68E5C(0, 0, 6u);
  v14 = v3;
  v15 = v4;
  v5 = *(v1 + 920);
  v6 = *(v1 + 928);
  v11 = *(v1 + 912);
  v12 = v5;
  v13 = v6;
  sub_181F68EA8(v11, v5, v6);
  sub_181F70FF8(&v11, &v16);
  sub_181F68E5C(v11, v12, v13);
  v7 = v17;
  if (v17 == 255)
  {
    return 0;
  }

  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  *(v1 + 64) = v16;
  v10 = *(v1 + 80);
  *(v1 + 80) = v7;
  sub_181F68E5C(v8, v9, v10);
  return 1;
}

void sub_1820352F4()
{
  if (*(v0 + 56))
  {
    *(v0 + 56) = 0;

    v1 = *(v0 + 920);
    v2 = *(v0 + 928);
    *&v12 = *(v0 + 912);
    *(&v12 + 1) = v1;
    v13 = v2;
    sub_181F68EA8(v12, v1, v2);
    sub_1822935B8(&v12, 1);
    sub_181F68E5C(v12, *(&v12 + 1), v13);
    v3 = *(v0 + 936);
    v4 = *(v0 + 944);
    *(v0 + 936) = 0u;
    v5 = *(v0 + 952);
    *(v0 + 952) = 6;
    sub_181F68E5C(v3, v4, v5);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    *(v0 + 64) = 0u;
    v8 = *(v0 + 80);
    *(v0 + 80) = 6;
    sub_181F68E5C(v6, v7, v8);
    v9 = *(v0 + 912);
    v10 = *(v0 + 920);
    *(v0 + 912) = 0u;
    v11 = *(v0 + 928);
    *(v0 + 928) = 6;
    sub_181F68E5C(v9, v10, v11);
  }
}

uint64_t sub_1820353C4(uint64_t result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v7 = v4[7];
  if (v7)
  {
    v8 = a4 < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return result;
  }

  v9 = result;
  if (result)
  {
    if (result != 1)
    {
      goto LABEL_13;
    }

    v11 = v4[6];
    v4 += 6;
    v10 = v11;
    v12 = v11 + a4;
    if (!__OFADD__(v11, a4))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v13 = v4[4];
  v4 += 4;
  v10 = v13;
  v12 = v13 + a4;
  if (!__OFADD__(v13, a4))
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  v14 = v4[5];
  v4 += 5;
  v10 = v14;
  v12 = v14 + a4;
  if (__OFADD__(v14, a4))
  {
    __break(1u);
    return result;
  }

LABEL_14:
  *v4 = v12;
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = sub_181AC1C5C(a2, a3);
  v4 = *(v7[37] + 32);
  if (!v4[2])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = v15;
  v16 = sub_18224EF74(v9);
  if ((v17 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = *(v4[7] + 8 * v16);
  swift_beginAccess();
  v6 = v4[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[2] = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_32:
    v6 = sub_181F59790(0, *(v6 + 2) + 1, 1, v6);
    v4[2] = v6;
  }

  v20 = *(v6 + 2);
  v19 = *(v6 + 3);
  if (v20 >= v19 >> 1)
  {
    v6 = sub_181F59790((v19 > 1), v20 + 1, 1, v6);
  }

  *(v6 + 2) = v20 + 1;
  v21 = &v6[80 * v20];
  *(v21 + 4) = 6;
  *(v21 + 5) = (v9 << 8) | 0x3000000000000002;
  *(v21 + 6) = v10;
  *(v21 + 7) = v5;
  v4[2] = v6;
  swift_endAccess();

  if (!v7[119] || (v22 = , v23 = sub_182047340(v22, 0, 0), , (v23 & 1) == 0))
  {
    v25 = v7[10];
    v24 = v7[11];
    v26 = qword_1EA837248;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_182AD2698();
    __swift_project_value_buffer(v27, qword_1EA843418);

    v28 = sub_182AD2678();
    v29 = sub_182AD38B8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v30 = 136315650;
      v32 = sub_182AD3BF8();
      v34 = sub_181C64FFC(v32, v33, v36);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = sub_181C64FFC(v25, v24, v36);

      *(v30 + 14) = v35;
      *(v30 + 22) = 2080;
      *(v30 + 24) = sub_181C64FFC(0xD00000000000001CLL, 0x8000000182BD9F20, v36);
      _os_log_impl(&dword_181A37000, v28, v29, "%s %s %s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v31, -1, -1);
      MEMORY[0x1865DF520](v30, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_18203576C()
{

  sub_181F68E5C(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  sub_181F68E5C(*(v0 + 136), *(v0 + 144), *(v0 + 152));
  sub_181F68E5C(*(v0 + 160), *(v0 + 168), *(v0 + 176));

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 352);
  v9 = *(v0 + 368);

  if (v7 != 2 || v6 | v5)
  {
    sub_181F68EF4(v1, v2, v3, v4);

    sub_181F68F3C(v5, v6, v7);
    __break(1u);
LABEL_24:
    sub_181F68EF4(v1, v2, v3, v4);

    sub_181F68F3C(v5, v6, v7);
    __break(1u);
LABEL_25:
    sub_181F68EF4(v1, v2, v3, v4);

    result = sub_181F68F3C(v5, v6, v7);
    __break(1u);
    return result;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    MEMORY[0x1865DF520](v8, -1, -1);
  }

  sub_181F68EF4(v1, v2, v3, v4);

  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  v5 = *(v0 + 472);
  v6 = *(v0 + 480);
  v7 = *(v0 + 488);
  v11 = *(v0 + 584);
  v12 = *(v0 + 600);

  if (v7 != 2 || v6 | v5)
  {
    goto LABEL_24;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    MEMORY[0x1865DF520](v11, -1, -1);
  }

  sub_181F68EF4(v1, v2, v3, v4);

  v1 = *(v0 + 672);
  v2 = *(v0 + 680);
  v3 = *(v0 + 688);
  v4 = *(v0 + 696);
  v5 = *(v0 + 704);
  v6 = *(v0 + 712);
  v7 = *(v0 + 720);
  v14 = *(v0 + 816);
  v15 = *(v0 + 832);

  if (v7 != 2 || v6 | v5)
  {
    goto LABEL_25;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    MEMORY[0x1865DF520](v14, -1, -1);
  }

  sub_181F68EF4(v1, v2, v3, v4);

  sub_181F68E5C(*(v0 + 912), *(v0 + 920), *(v0 + 928));
  sub_181F68E5C(*(v0 + 936), *(v0 + 944), *(v0 + 952));

  return v0;
}

uint64_t sub_182035A3C()
{
  sub_18203576C();

  return swift_deallocClassInstance();
}

void sub_182035AA4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a2;
  v42 = a1;
  v6 = sub_182AD2B78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 56);
  if (!v10)
  {
    return;
  }

  v11 = *(v10 + 80);
  v12 = *(v10 + 88);
  v13 = qword_1EA837250;

  if (v13 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1)
  {

    if (!*(v3 + 56))
    {
      return;
    }

    goto LABEL_19;
  }

  v38 = v11;
  v39 = v6;
  v41 = v3;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_182AD3BA8();

  v43 = 544501575;
  v44 = 0xE400000000000000;
  if (a3)
  {
    v14 = 0x6574697277;
  }

  else
  {
    v14 = 1684104562;
  }

  if (a3)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x1865D9CA0](v14, v15);

  MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD9F90);
  v40 = v5;
  v16 = sub_182AD28C8();
  MEMORY[0x1865D9CA0](v16);

  v17 = v43;
  v18 = v44;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v19 = sub_182AD2698();
  __swift_project_value_buffer(v19, qword_1EA843418);

  v20 = sub_182AD2678();
  v21 = sub_182AD38A8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v21;
    v23 = v22;
    v37 = swift_slowAlloc();
    v43 = v37;
    *v23 = 136315650;
    v24 = sub_182AD3BF8();
    v35 = v17;
    v26 = v9;
    v27 = a3;
    v28 = v7;
    v29 = sub_181C64FFC(v24, v25, &v43);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = sub_181C64FFC(v38, v12, &v43);

    *(v23 + 14) = v30;
    *(v23 + 22) = 2080;
    v7 = v28;
    a3 = v27;
    v9 = v26;
    v31 = sub_181C64FFC(v35, v18, &v43);

    *(v23 + 24) = v31;
    _os_log_impl(&dword_181A37000, v20, v36, "%s %s %s", v23, 0x20u);
    v32 = v37;
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v32, -1, -1);
    MEMORY[0x1865DF520](v23, -1, -1);
  }

  else
  {
  }

  v3 = v41;
  v5 = v40;
  v6 = v39;
  if (*(v41 + 56))
  {
LABEL_19:
    v33 = *(v3 + 904);
    v34 = v33 - 1;
    if ((v33 - 4865) <= 2)
    {
      v43 = v42;

      LODWORD(v42) = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80, &qword_182AE6070);
      sub_181AB3DCC(&qword_1EA838C88, &qword_1EA838C80, &qword_182AE6070, MEMORY[0x1E6969E08]);
      sub_182AD2B58();
      sub_182234C94(v5, v34, v9, v42 & 1);

      (*(v7 + 8))(v9, v6);
      if (sub_182AD28D8())
      {
        sub_18203A114();
      }
    }
  }
}

uint64_t sub_182035F70(uint64_t result)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = result;
    v5 = *(v2 + 80);
    v4 = *(v2 + 88);
    v6 = qword_1EA837250;

    if (v6 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      sub_182AD3BA8();

      v19[1] = 0x8000000182BD9EC0;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80, &qword_182AE6070);
      v8 = MEMORY[0x1865D9F40](v3, v7);
      MEMORY[0x1865D9CA0](v8);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v9 = sub_182AD2698();
      __swift_project_value_buffer(v9, qword_1EA843418);

      v10 = sub_182AD2678();
      v11 = sub_182AD38A8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19[0] = v18;
        *v12 = 136315650;
        v13 = sub_182AD3BF8();
        v15 = sub_181C64FFC(v13, v14, v19);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2080;
        v16 = sub_181C64FFC(v5, v4, v19);

        *(v12 + 14) = v16;
        *(v12 + 22) = 2080;
        v17 = sub_181C64FFC(0xD000000000000015, 0x8000000182BD9EC0, v19);

        *(v12 + 24) = v17;
        _os_log_impl(&dword_181A37000, v10, v11, "%s %s %s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v18, -1, -1);
        MEMORY[0x1865DF520](v12, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_182036268(char *a1)
{
  v3 = v1;
  v5 = *(v1 + 56);
  if (v5)
  {
    v7 = *(v5 + 80);
    v6 = *(v5 + 88);
    v8 = qword_1EA837250;

    if (v8 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v45 = v1;
      sub_182AD3BA8();

      v47 = 0xD000000000000024;
      v48 = 0x8000000182BD9E30;
      v9 = MEMORY[0x1865D9F40](a1, MEMORY[0x1E69E7508]);
      MEMORY[0x1865D9CA0](v9);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v10 = sub_182AD2698();
      __swift_project_value_buffer(v10, qword_1EA843418);

      v11 = sub_182AD2678();
      v12 = sub_182AD38A8();

      if (os_log_type_enabled(v11, v12))
      {
        v41 = v7;
        v13 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v47 = v43;
        *v13 = 136315650;
        v14 = sub_182AD3BF8();
        v16 = sub_181C64FFC(v14, v15, &v47);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v17 = sub_181C64FFC(v41, v6, &v47);

        *(v13 + 14) = v17;
        *(v13 + 22) = 2080;
        v18 = sub_181C64FFC(0xD000000000000024, 0x8000000182BD9E30, &v47);

        *(v13 + 24) = v18;
        _os_log_impl(&dword_181A37000, v11, v12, "%s %s %s", v13, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v43, -1, -1);
        MEMORY[0x1865DF520](v13, -1, -1);
      }

      else
      {
      }

      v3 = v45;
    }

    else
    {
    }
  }

  v52 = a1;

  v21 = sub_1822D1530(&v52);
  if (!v2)
  {

    if (!*(v3 + 56))
    {
    }

    sub_18203A1F4(v21);
  }

  v22 = v19;
  v23 = v20;

  v24 = *(v3 + 56);
  if (!v24)
  {
    result = sub_18202232C(v21, v22, v23);
    if (!*(v3 + 56))
    {
      return result;
    }

    goto LABEL_24;
  }

  v25 = *(v24 + 80);
  v26 = *(v24 + 88);
  v47 = 0;
  v48 = 0xE000000000000000;

  sub_182AD3BA8();
  v50 = v47;
  v51 = v48;
  MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD9E00);
  v47 = v21;
  v48 = v22;
  v49 = v23;
  sub_182AD3E18();
  sub_18202232C(v21, v22, v23);
  v28 = v50;
  v27 = v51;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v29 = sub_182AD2698();
  __swift_project_value_buffer(v29, qword_1EA843418);

  v30 = sub_182AD2678();
  v31 = sub_182AD38B8();

  if (os_log_type_enabled(v30, v31))
  {
    v46 = v3;
    v32 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v32 = 136315650;
    v33 = sub_182AD3BF8();
    v42 = v28;
    v35 = v25;
    v36 = sub_181C64FFC(v33, v34, &v47);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = sub_181C64FFC(v35, v26, &v47);

    *(v32 + 14) = v37;
    *(v32 + 22) = 2080;
    v38 = sub_181C64FFC(v42, v27, &v47);

    *(v32 + 24) = v38;
    _os_log_impl(&dword_181A37000, v30, v31, "%s %s %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v44, -1, -1);
    v39 = v32;
    v3 = v46;
    MEMORY[0x1865DF520](v39, -1, -1);
  }

  else
  {
  }

  if (*(v3 + 56))
  {
LABEL_24:

    sub_18203ADF4();
  }

  return result;
}

uint64_t sub_1820368AC(uint64_t result)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = result;
    v5 = *(v2 + 80);
    v4 = *(v2 + 88);
    v6 = qword_1EA837250;

    if (v6 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      sub_182AD3BA8();

      v21 = 0xD000000000000019;
      v22 = 0x8000000182BD9E80;
      if (v3)
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if (v3)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v7, v8);

      v10 = v21;
      v9 = v22;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v11 = sub_182AD2698();
      __swift_project_value_buffer(v11, qword_1EA843418);

      v12 = sub_182AD2678();
      v13 = sub_182AD38A8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = v20;
        *v14 = 136315650;
        v15 = sub_182AD3BF8();
        v17 = sub_181C64FFC(v15, v16, &v21);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        v18 = sub_181C64FFC(v5, v4, &v21);

        *(v14 + 14) = v18;
        *(v14 + 22) = 2080;
        v19 = sub_181C64FFC(v10, v9, &v21);

        *(v14 + 24) = v19;
        _os_log_impl(&dword_181A37000, v12, v13, "%s %s %s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v20, -1, -1);
        MEMORY[0x1865DF520](v14, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_182036BAC(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 56);
  if (v3)
  {
    v5 = *(v3 + 80);
    v4 = *(v3 + 88);
    v6 = qword_1EA837250;

    if (v6 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v18 = v1;
      sub_182AD3BA8();

      v19[0] = 0xD00000000000001CLL;
      v19[1] = 0x8000000182BD9FD0;
      v7 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v7);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v8 = sub_182AD2698();
      __swift_project_value_buffer(v8, qword_1EA843418);

      v9 = sub_182AD2678();
      v10 = sub_182AD38A8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19[0] = v17;
        *v11 = 136315650;
        v12 = sub_182AD3BF8();
        v14 = sub_181C64FFC(v12, v13, v19);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        v15 = sub_181C64FFC(v5, v4, v19);

        *(v11 + 14) = v15;
        *(v11 + 22) = 2080;
        v16 = sub_181C64FFC(0xD00000000000001CLL, 0x8000000182BD9FD0, v19);

        *(v11 + 24) = v16;
        _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v17, -1, -1);
        MEMORY[0x1865DF520](v11, -1, -1);
      }

      else
      {
      }

      v1 = v18;
    }

    else
    {
    }
  }

  *(v1 + 904) = v2;
  return result;
}

void sub_182036E98()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = v0;
    v4 = *(v1 + 80);
    v3 = *(v1 + 88);
    v5 = qword_1EA837248;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);

    v7 = sub_182AD2678();
    v8 = sub_182AD3898();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315650;
      v11 = sub_182AD3BF8();
      v13 = sub_181C64FFC(v11, v12, &v15);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = sub_181C64FFC(v4, v3, &v15);

      *(v9 + 14) = v14;
      *(v9 + 22) = 2080;
      *(v9 + 24) = sub_181C64FFC(0xD000000000000017, 0x8000000182BD9F50, &v15);
      _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    else
    {
    }

    if (*(v2 + 56))
    {

      sub_18203B62C();
    }
  }
}

void *sub_1820370EC@<X0>(void *a1@<X8>)
{
  Parameters.init(noInternetProtocol:)(0, __src);
  v3 = *(v1 + 56);
  if (v3)
  {
    Parameters.server.setter(*(v3 + 1024));
  }

  if (*(v1 + 24))
  {
    v7[0] = *(v1 + 24);
    v7[1] = sub_181AB3DCC(&qword_1EA839BD0, &qword_1EA839BD8, &unk_182AF01B0, &protocol conformance descriptor for ProtocolOptions<A>) | 0x4000000000000000;
    swift_retain_n();
    sub_181B2A5BC(v7);
    sub_181AAD084(v7[0], v7[1]);
  }

  memcpy(v5, __src, sizeof(v5));
  memcpy(__dst, __src, sizeof(__dst));
  sub_181F481DC(v5, v7);
  sub_181F48214(__dst);
  memcpy(v7, v5, sizeof(v7));
  nullsub_41();
  return memcpy(a1, v7, 0x188uLL);
}

void sub_18203720C(uint64_t a1, uint8_t *a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = 0;
  v95 = *MEMORY[0x1E69E9840];
  v78 = v2 + 46;
  v86[0] = 0;
  v86[1] = 0;
  v87 = 0;
  v88 = MEMORY[0x1E69E7CC0];
  v7 = (v2 + 23);
  v8 = (v2 + 111);
  v71 = v2 + 105;
  v72 = v2 + 102;
  v69 = v2 + 96;
  v70 = v2 + 91;
  v73 = (v2 + 82);
  v67 = v2 + 76;
  v68 = v2 + 73;
  v66 = v2 + 67;
  v76 = a1;
  v77 = (v2 + 23);
  v75 = (v2 + 111);
  while (1)
  {

    v10 = sub_1820E99EC(v4, v86);

    v11 = v88;
    if ((v10 & 1) == 0)
    {
      break;
    }

    LOBYTE(v92) = 1;
    v12 = *(v88 + 16);
    v13 = swift_slowAlloc();
    memmove(v13, (v11 + 32), *(v11 + 16));
    v14 = v92;
    v6 = 1;
    v15 = 1;
    if (v5)
    {
      if (v5 == 1)
      {
        v83 = v92;
        swift_beginAccess();
        if (*(v3 + 664) != 1)
        {
          v4 = v8;
          v8 = v13;
          v14 = v73;
          if (!*v73)
          {
            *v73 = *sub_182AD2388();
          }

          type metadata accessor for FrameArrayEntry();
          v25 = swift_allocObject();
          swift_beginAccess();
          *(v25 + 16) = v8;
          *(v25 + 24) = v12;
          *(v25 + 32) = 0;
          *(v25 + 40) = 0;
          *(v25 + 48) = xmmword_182AE69F0;
          *(v25 + 64) = 2;
          *(v25 + 72) = 0;
          *(v25 + 80) = 0;
          *(v25 + 88) = v12;
          *(v25 + 96) = 0;
          *(v25 + 104) = 0;
          *(v25 + 112) = 0u;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0;
          *(v25 + 152) = 2;
          *(v25 + 156) = v83;
          *(v25 + 160) = 0;
          *(v25 + 168) = 0;
          *(v25 + 176) = 1;
          *(v25 + 184) = 0;
          *(v25 + 192) = 0;
          *(v25 + 208) = 0;
          *(v25 + 200) = 0;
          *(v25 + 209) = 1;
          *(v25 + 216) = 0;
          *(v25 + 224) = -1;
          v26 = *(*v73 + 24);
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_103;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = *v73;
          if (*(*v73 + 16) < v27 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_181F461F8(isUniquelyReferenced_nonNull_native, v27, 0);
            v29 = *v73;
          }

          v30 = v29[3];
          v31 = v29[4];
          v34 = __OFADD__(v31, v30);
          v32 = v31 + v30;
          if (v34)
          {
            goto LABEL_107;
          }

          v8 = v4;
          if (v30 < 0)
          {
            v4 = a2;
            if (v32 < 0)
            {
              v57 = v29[2];
              v34 = __OFADD__(v32, v57);
              v32 += v57;
              if (v34)
              {
                __break(1u);
                break;
              }
            }
          }

          else
          {
            v33 = v29[2];
            v34 = __OFSUB__(v32, v33);
            v35 = v32 - v33;
            v4 = a2;
            if (v35 < 0 == v34)
            {
              v32 = v35;
              if (v34)
              {
                goto LABEL_111;
              }
            }
          }

          v29[v32 + 5] = v25;
          v34 = __OFADD__(v30, 1);
          v9 = v30 + 1;
          if (v34)
          {
            goto LABEL_108;
          }

          goto LABEL_4;
        }

        v80 = v13;
        v5 = v3[56];
        v7 = v3[57];
        v8 = *(v3 + 464);
        v14 = v3[59];
        v15 = v3[60];
        LODWORD(v4) = *(v3 + 488);
        v16 = v3[73];
        v17 = *(v78 + 232);
        v74 = v3[55];

        if (v4 != 2 || v15 | v14)
        {
          goto LABEL_116;
        }

        if (v16)
        {
          v18 = v17;
        }

        else
        {
          v18 = 1;
        }

        v4 = a2;
        if ((v18 & 1) == 0)
        {
          MEMORY[0x1865DF520](v16, -1, -1);
        }

        sub_181F68EF4(v74, v5, v7, v8);

        v3[55] = v80;
        v3[56] = v12;
        v3[57] = 0;
        *(v3 + 464) = 0;
        *(v78 + 13) = xmmword_182AE69F0;
        *(v3 + 488) = 2;
        v3[62] = 0;
        v3[63] = 0;
        v3[64] = v12;
        v3[65] = 0;
        *(v3 + 528) = 0;
        *v66 = 0u;
        *(v66 + 1) = 0u;
        v66[4] = 0;
        *(v3 + 144) = 2;
        *(v3 + 580) = v83;
        *v68 = 0;
        v68[1] = 0;
        *(v3 + 600) = 1;
        *v67 = 0;
        v67[1] = 0;
        *(v67 + 24) = 0;
        v67[2] = 0;
        *(v3 + 633) = 1;
        *(v3 + 634) = 0;
        v3[80] = 0;
        *(v3 + 648) = -1;
        v3[82] = 0;
        *(v3 + 664) = 0;
      }

      else
      {
        swift_beginAccess();
        if (*(v3 + 896) != 1)
        {
          v7 = v4;
          v4 = v8;
          v8 = v13;
          if (!*v4)
          {
            *v4 = *sub_182AD2388();
          }

          type metadata accessor for FrameArrayEntry();
          v45 = swift_allocObject();
          swift_beginAccess();
          *(v45 + 16) = v8;
          *(v45 + 24) = v12;
          *(v45 + 32) = 0;
          *(v45 + 40) = 0;
          *(v45 + 48) = xmmword_182AE69F0;
          *(v45 + 64) = 2;
          *(v45 + 72) = 0;
          *(v45 + 80) = 0;
          *(v45 + 88) = v12;
          *(v45 + 96) = 0;
          *(v45 + 104) = 0;
          *(v45 + 112) = 0u;
          *(v45 + 128) = 0u;
          *(v45 + 144) = 0;
          *(v45 + 152) = 2;
          *(v45 + 156) = v14;
          *(v45 + 160) = 0;
          *(v45 + 168) = 0;
          *(v45 + 176) = 1;
          *(v45 + 184) = 0;
          *(v45 + 192) = 0;
          *(v45 + 208) = 0;
          *(v45 + 200) = 0;
          *(v45 + 209) = 1;
          *(v45 + 216) = 0;
          *(v45 + 224) = -1;
          v46 = *(*v4 + 24);
          v47 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
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
            sub_181F68EF4(v74, v5, v7, v8);

            sub_181F68F3C(v14, v15, v4);
            __break(1u);
LABEL_117:
            sub_181F68EF4(v7, v8, v74, v5);

            sub_181F68F3C(v14, v15, v4);
            __break(1u);
LABEL_118:
            sub_181F68EF4(v74, v5, v7, v8);

            sub_181F68F3C(v15, v14, v4);
            __break(1u);
          }

          v8 = v4;
          v48 = swift_isUniquelyReferenced_nonNull_native();
          v29 = *v4;
          if (*(*v4 + 16) < v47 || (v48 & 1) == 0)
          {
            sub_181F461F8(v48, v47, 0);
            v29 = *v4;
          }

          v49 = v29[3];
          v50 = v29[4];
          v34 = __OFADD__(v50, v49);
          v51 = v50 + v49;
          if (v34)
          {
            goto LABEL_106;
          }

          v4 = v7;
          if (v49 < 0)
          {
            v7 = v77;
            if (v51 < 0)
            {
              v56 = v29[2];
              v34 = __OFADD__(v51, v56);
              v51 += v56;
              if (v34)
              {
                goto LABEL_114;
              }
            }
          }

          else
          {
            v52 = v29[2];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v7 = v77;
            if (v54 < 0 == v53)
            {
              v51 = v54;
              if (v53)
              {
                goto LABEL_113;
              }
            }
          }

          v29[v51 + 5] = v45;
          v34 = __OFADD__(v49, 1);
          v9 = v49 + 1;
          if (v34)
          {
            goto LABEL_110;
          }

          goto LABEL_4;
        }

        v82 = v13;
        v85 = v14;
        v5 = v3[85];
        v7 = v3[86];
        LOBYTE(v8) = *(v3 + 696);
        v15 = v3[88];
        v14 = v3[89];
        LODWORD(v4) = *(v3 + 720);
        v22 = v3[102];
        v23 = *(v3 + 832);
        v74 = v3[84];

        if (v4 != 2 || v14 | v15)
        {
          goto LABEL_118;
        }

        if (v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = 1;
        }

        v4 = a2;
        if ((v24 & 1) == 0)
        {
          MEMORY[0x1865DF520](v22, -1, -1);
        }

        sub_181F68EF4(v74, v5, v7, v8);

        v3[84] = v82;
        v3[85] = v12;
        v3[86] = 0;
        *(v3 + 696) = 0;
        *(v3 + 44) = xmmword_182AE69F0;
        *(v3 + 720) = 2;
        *v70 = 0;
        v70[1] = 0;
        v3[93] = v12;
        v3[94] = 0;
        *(v3 + 760) = 0;
        *v69 = 0u;
        *(v69 + 1) = 0u;
        v69[4] = 0;
        *(v3 + 202) = 2;
        *(v3 + 812) = v85;
        *v72 = 0;
        v72[1] = 0;
        *(v3 + 832) = 1;
        *v71 = 0;
        v71[1] = 0;
        *(v71 + 24) = 0;
        v71[2] = 0;
        *(v3 + 865) = 1;
        *(v3 + 866) = 0;
        v3[109] = 0;
        *(v3 + 880) = -1;
        v3[111] = 0;
        *(v3 + 896) = 0;
      }

      v5 = v76;
    }

    else
    {
      swift_beginAccess();
      if (*(v78 + 64) != 1)
      {
        v4 = v8;
        v8 = v13;
        if (!v3[53])
        {
          v3[53] = *sub_182AD2388();
        }

        type metadata accessor for FrameArrayEntry();
        v36 = swift_allocObject();
        swift_beginAccess();
        *(v36 + 16) = v8;
        *(v36 + 24) = v12;
        *(v36 + 32) = 0;
        *(v36 + 40) = 0;
        *(v36 + 48) = xmmword_182AE69F0;
        *(v36 + 64) = 2;
        *(v36 + 72) = 0;
        *(v36 + 80) = 0;
        *(v36 + 88) = v12;
        *(v36 + 96) = 0;
        *(v36 + 104) = 0;
        *(v36 + 112) = 0u;
        *(v36 + 128) = 0u;
        *(v36 + 144) = 0;
        *(v36 + 152) = 2;
        *(v36 + 156) = v14;
        *(v36 + 160) = 0;
        *(v36 + 168) = 0;
        *(v36 + 176) = 1;
        *(v36 + 184) = 0;
        *(v36 + 192) = 0;
        *(v36 + 208) = 0;
        *(v36 + 200) = 0;
        *(v36 + 209) = 1;
        *(v36 + 216) = 0;
        *(v36 + 224) = -1;
        v37 = *(v3[53] + 24);
        v14 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_104;
        }

        v38 = swift_isUniquelyReferenced_nonNull_native();
        v29 = v3[53];
        if (v29[2] < v14 || (v38 & 1) == 0)
        {
          sub_181F461F8(v38, v14, 0);
          v29 = v3[53];
        }

        v39 = v29[3];
        v40 = v29[4];
        v34 = __OFADD__(v40, v39);
        v41 = v40 + v39;
        if (v34)
        {
          goto LABEL_105;
        }

        v8 = v4;
        if (v39 < 0)
        {
          v4 = a2;
          if (v41 < 0)
          {
            v55 = v29[2];
            v34 = __OFADD__(v41, v55);
            v41 += v55;
            if (v34)
            {
              goto LABEL_115;
            }
          }
        }

        else
        {
          v42 = v29[2];
          v43 = __OFSUB__(v41, v42);
          v44 = v41 - v42;
          v4 = a2;
          if (v44 < 0 == v43)
          {
            v41 = v44;
            if (v43)
            {
              goto LABEL_112;
            }
          }
        }

        v29[v41 + 5] = v36;
        v34 = __OFADD__(v39, 1);
        v9 = v39 + 1;
        if (v34)
        {
          goto LABEL_109;
        }

LABEL_4:
        v29[3] = v9;
        goto LABEL_5;
      }

      v81 = v13;
      v84 = v14;
      v7 = v3[26];
      v8 = v3[27];
      v5 = *(v3 + 232);
      v14 = v3[30];
      v15 = v3[31];
      LODWORD(v4) = *(v3 + 256);
      v19 = v3[44];
      v20 = *v78;
      v74 = v3[28];

      if (v4 != 2 || v15 | v14)
      {
        goto LABEL_117;
      }

      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = 1;
      }

      if ((v21 & 1) == 0)
      {
        MEMORY[0x1865DF520](v19, -1, -1);
      }

      sub_181F68EF4(v7, v8, v74, v5);

      v3[26] = v81;
      v3[27] = v12;
      v3[28] = 0;
      *(v3 + 232) = 0;
      *(v3 + 15) = xmmword_182AE69F0;
      *(v3 + 256) = 2;
      v3[33] = 0;
      v3[34] = 0;
      v3[35] = v12;
      v3[36] = 0;
      *(v3 + 296) = 0;
      *(v3 + 19) = 0u;
      *(v3 + 20) = 0u;
      v3[42] = 0;
      *(v3 + 86) = 2;
      *(v3 + 348) = v84;
      v3[44] = 0;
      v3[45] = 0;
      *(v3 + 368) = 1;
      v3[47] = 0;
      v3[48] = 0;
      *(v3 + 400) = 0;
      v3[49] = 0;
      *(v3 + 401) = 1;
      *(v3 + 402) = 0;
      v3[51] = 0;
      *(v3 + 416) = -1;
      v3[53] = 0;
      *(v3 + 432) = 0;
      v5 = v76;
      v4 = a2;
    }

    v7 = v77;
    v8 = v75;
LABEL_5:
    swift_endAccess();
    v6 = 1;
  }

  if (v6)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v58 = v3[17];
        v59 = v3[18];
        v60 = *(v3 + 152);
      }

      else
      {
        v58 = v3[20];
        v59 = v3[21];
        v60 = *(v3 + 176);
      }

      v89 = v58;
      v90 = v59;
      v91 = v60;
      if (*(v3 + 952) != 6 || *(v3 + 117) != 0)
      {
LABEL_97:
        sub_181F68EA8(v58, v59, v60);
        goto LABEL_98;
      }

      v3[117] = v3;
      v3[118] = &off_1EEFB17F0;
      *(v3 + 952) = 3;
      v63 = v58;
      v64 = v59;
      v65 = v60;

      sub_181F68EA8(v63, v64, v65);
    }

    else
    {
      v58 = v3[11];
      v59 = v3[12];
      v60 = *(v3 + 104);
      v89 = v58;
      v90 = v59;
      v91 = v60;
      if (*(v3 + 952) != 6 || *(v3 + 117) != 0)
      {
        goto LABEL_97;
      }

      v3[117] = v3;
      v3[118] = &off_1EEFB17F0;
      *(v3 + 952) = 3;
      sub_181F68EA8(v58, v59, v60);
    }

    sub_181F68E5C(0, 0, 6u);
LABEL_98:
    v61 = v3[118];
    v62 = *(v3 + 952);
    v92 = v3[117];
    v93 = v61;
    v94 = v62;
    sub_181F68EA8(v92, v61, v62);
    InputHandlerLinkage.invokeInputAvailable(_:)(&v92);
    sub_181F68E5C(v92, v93, v94);
    sub_181F68E5C(v89, v90, v91);
  }
}

uint64_t sub_182037D94()
{
  if (sub_181F74A48())
  {
    return 0;
  }

  if (sub_181F74A48())
  {
    return 1;
  }

  if (sub_181F74A48())
  {
    return 2;
  }

  if (sub_181F74A48())
  {
    return 3;
  }

  return 4;
}

uint64_t sub_182037E50()
{
  if (sub_181F74A48())
  {
    return 0;
  }

  if (sub_181F74A48())
  {
    return 1;
  }

  v1 = sub_181F74A48();
  result = 2;
  if ((v1 & 1) == 0)
  {
    if (sub_181F74A48())
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

void sub_182037F10(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = v3;
  v10 = *(a1 + 16);
  *v203 = *a1;
  v203[16] = v10;
  if (sub_182037D94() == 4)
  {
    goto LABEL_2;
  }

  v11 = (v3 + 348);
  if ((sub_182AD28D8() & 1) == 0)
  {
    if ((sub_182AD28D8() & 1) == 0)
    {
      if ((sub_182AD28D8() & 1) == 0)
      {
LABEL_2:
        sub_181F73CAC(v203);
LABEL_97:
        v74 = v210;
        *(a3 + 192) = *&v209[16];
        *(a3 + 208) = v74;
        *(a3 + 224) = v211;
        v75 = v207;
        *(a3 + 128) = *&v206[32];
        *(a3 + 144) = v75;
        v76 = *v209;
        *(a3 + 160) = v208;
        *(a3 + 176) = v76;
        v77 = *&v205[32];
        *(a3 + 64) = *&v205[16];
        *(a3 + 80) = v77;
        v78 = *&v206[16];
        *(a3 + 96) = *v206;
        *(a3 + 112) = v78;
        v79 = *&v203[16];
        *a3 = *v203;
        *(a3 + 16) = v79;
        v80 = *v205;
        *(a3 + 32) = v204;
        *(a3 + 48) = v80;
        return;
      }

      swift_beginAccess();
      v14 = *(v3 + 888);
      v15 = *(v3 + 896);
      if (v15 == 1)
      {
        if (a2 < 0)
        {
          goto LABEL_6;
        }

LABEL_133:
        v146 = *(v7 + 672);
        v144 = *(v7 + 688);
        v142 = *(v7 + 696);
        v140 = *(v7 + 704);
        v138 = *(v7 + 720);
        v136 = *(v7 + 728);
        v134 = *(v7 + 736);
        v132 = *(v7 + 752);
        v130 = *(v7 + 760);
        v126 = *(v7 + 784);
        v128 = *(v7 + 768);
        v124 = *(v7 + 800);
        v120 = *(v7 + 810);
        v122 = *(v7 + 808);
        v30 = *(v7 + 812);
        v118 = *(v7 + 816);
        v31 = *(v7 + 832);
        v116 = *(v7 + 840);
        v114 = *(v7 + 848);
        v112 = *(v7 + 849);
        v32 = *(v7 + 865);
        v33 = *(v7 + 866);
        v34 = *(v7 + 872);
        v35 = *(v7 + 880);
        FrameArray.init()(v203);
        v95 = v210;
        *(v7 + 864) = *&v209[16];
        *(v7 + 880) = v95;
        *(v7 + 896) = v211;
        v96 = v207;
        *(v7 + 800) = *&v206[32];
        *(v7 + 816) = v96;
        v97 = *v209;
        *(v7 + 832) = v208;
        *(v7 + 848) = v97;
        v98 = *&v205[32];
        *(v7 + 736) = *&v205[16];
        *(v7 + 752) = v98;
        v99 = *&v206[16];
        *(v7 + 768) = *v206;
        *(v7 + 784) = v99;
        v100 = *&v203[16];
        *(v7 + 672) = *v203;
        *(v7 + 688) = v100;
        v101 = *v205;
        *(v7 + 704) = v204;
        *(v7 + 720) = v101;
        goto LABEL_47;
      }

      goto LABEL_57;
    }

    v14 = v3 + 440;
    swift_beginAccess();
    v4 = *(v3 + 656);
    v15 = *(v3 + 664);
    if (v15 == 1)
    {
      if (a2 < 0)
      {
        FrameArray.init()(v203);
        v4 = *(&v210 + 1);
LABEL_93:
        v147 = *v203;
        v145 = *&v203[8];
        v143 = v203[24];
        v139 = *(&v204 + 1);
        v141 = v204;
        v137 = v205[0];
        v133 = *&v205[24];
        v135 = *&v205[8];
        v131 = v205[40];
        v129 = *v206;
        v125 = *&v206[24];
        v127 = *&v206[8];
        v121 = *&v206[42];
        v123 = *&v206[40];
        v61 = v206[44];
        v117 = *(&v207 + 1);
        v119 = v207;
        v62 = v208;
        v115 = *(&v208 + 1);
        v113 = v209[0];
        v111 = *&v209[1];
        v63 = v209[17];
        v64 = v209[18];
        v65 = *&v209[24];
        v66 = v210;
        LOBYTE(v15) = v211;
        goto LABEL_95;
      }

LABEL_94:
      v147 = *(v7 + 440);
      v145 = *(v7 + 448);
      v143 = *(v7 + 464);
      v139 = *(v7 + 480);
      v141 = *(v7 + 472);
      v137 = *(v7 + 488);
      v133 = *(v7 + 512);
      v135 = *(v7 + 496);
      v131 = *(v7 + 528);
      v129 = *(v7 + 536);
      v125 = *(v7 + 560);
      v127 = *(v7 + 544);
      v121 = *(v7 + 578);
      v123 = *(v7 + 576);
      v61 = *(v7 + 580);
      v117 = *(v7 + 592);
      v119 = *(v7 + 584);
      v62 = *(v7 + 600);
      v115 = *(v7 + 608);
      v113 = *(v7 + 616);
      v111 = *(v7 + 617);
      v63 = *(v7 + 633);
      v64 = *(v7 + 634);
      v65 = *(v7 + 640);
      v66 = *(v7 + 648);
      FrameArray.init()(v203);
      v67 = v210;
      *(v14 + 192) = *&v209[16];
      *(v14 + 208) = v67;
      *(v14 + 224) = v211;
      v68 = v207;
      *(v14 + 128) = *&v206[32];
      *(v14 + 144) = v68;
      v69 = *v209;
      *(v14 + 160) = v208;
      *(v14 + 176) = v69;
      v70 = *&v205[32];
      *(v14 + 64) = *&v205[16];
      *(v14 + 80) = v70;
      v71 = *&v206[16];
      *(v14 + 96) = *v206;
      *(v14 + 112) = v71;
      v72 = *&v203[16];
      *v14 = *v203;
      *(v14 + 16) = v72;
      v73 = *v205;
      *(v14 + 32) = v204;
      *(v14 + 48) = v73;
LABEL_95:
      LOBYTE(v188) = v62;
      v202 = v63;
      swift_endAccess();
      *v203 = v147;
      *&v203[8] = v145;
      v203[24] = v143;
      *&v204 = v141;
      *(&v204 + 1) = v139;
      v205[0] = v137;
      *&v205[8] = v135;
      *&v205[24] = v133;
      v205[40] = v131;
      *v206 = v129;
      *&v206[8] = v127;
      *&v206[24] = v125;
      *&v206[40] = v123;
      *&v206[42] = v121;
      v206[44] = v61;
      *&v207 = v119;
      *(&v207 + 1) = v117;
      LOBYTE(v208) = v62;
      *(&v208 + 1) = v115;
      v209[0] = v113;
      *&v209[1] = v111;
      v209[17] = v63;
      v209[18] = v64;
      *&v209[24] = v65;
      LOBYTE(v210) = v66;
      *(&v210 + 1) = v4;
      goto LABEL_96;
    }

    if (v4)
    {
      v43 = *(v4 + 24);
    }

    else
    {
      v43 = 0;
    }

    v29 = __OFADD__(v43, 1);
    v18 = v43 + 1;
    if (!v29)
    {
      if (v18 <= a2)
      {
        goto LABEL_94;
      }

      FrameArray.init()(v203);
      v4 = *(&v210 + 1);
      v45 = *(&v210 + 1);
      while (1)
      {
        while (v211 == 1)
        {
          if (a2 <= 0)
          {
            goto LABEL_93;
          }

          FrameArray.popFirst()(&v188);

          v179 = v198;
          v182 = v199;
          v185 = v200;
          LOBYTE(v187) = v201;
          v167 = v194;
          v170 = v195;
          v173 = v196;
          v176 = v197;
          v155 = v190;
          v158 = v191;
          v161 = v192;
          v164 = v193;
          v149 = v188;
          v152 = v189;
          v4 = *&v203[8];
          v46 = *v203;
          v5 = *&v203[16];
          v6 = v203[24];
          v48 = *(&v204 + 1);
          v47 = v204;
          v49 = v205[0];
          if (v205[0] != 2 || v204 != 0)
          {
            goto LABEL_155;
          }

          if ((v208 & 1) == 0 && v207)
          {
            MEMORY[0x1865DF520](v207, -1, -1);
          }

          sub_181F68EF4(v46, v4, v5, v6);

          v4 = 0;
          v45 = 0;
          v208 = v179;
          *v209 = v182;
          *&v209[16] = v185;
          *v206 = v167;
          *&v206[16] = v170;
          *&v206[32] = v173;
          v207 = v176;
          v204 = v155;
          *v205 = v158;
          *&v205[16] = v161;
          *&v205[32] = v164;
          *v203 = v149;
          *&v203[16] = v152;
          v210 = v187;
          v211 = 0;
          if (v11[316])
          {
            goto LABEL_93;
          }
        }

        if (v4)
        {
          v50 = *(v4 + 24);
          v29 = __OFADD__(v50, 1);
          v18 = v50 + 1;
          if (v29)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v18 = 1;
          if (__OFSUB__(v211, 1))
          {
            goto LABEL_138;
          }
        }

        if (v18 >= a2)
        {
          goto LABEL_93;
        }

        FrameArray.popFirst()(&v188);
        if (!v4)
        {
          v45 = *sub_182AD2388();
          *(&v210 + 1) = v45;
        }

        type metadata accessor for FrameArrayEntry();
        v4 = swift_allocObject();
        swift_beginAccess();
        v51 = v193;
        *(v4 + 80) = v192;
        *(v4 + 96) = v51;
        v52 = v191;
        *(v4 + 48) = v190;
        *(v4 + 64) = v52;
        v53 = v197;
        *(v4 + 144) = v196;
        *(v4 + 160) = v53;
        v54 = v195;
        *(v4 + 112) = v194;
        *(v4 + 128) = v54;
        *(v4 + 224) = v201;
        v55 = v200;
        *(v4 + 192) = v199;
        *(v4 + 208) = v55;
        *(v4 + 176) = v198;
        v56 = v189;
        *(v4 + 16) = v188;
        *(v4 + 32) = v56;
        v18 = *(v45 + 24);
        v5 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_139;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (*(v45 + 16) < v5 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_181F461F8(isUniquelyReferenced_nonNull_native, v5, 0);
        }

        v45 = *(&v210 + 1);
        v18 = *(*(&v210 + 1) + 24);
        v58 = *(*(&v210 + 1) + 32);
        v29 = __OFADD__(v58, v18);
        v12 = v58 + v18;
        if (v29)
        {
          break;
        }

        if (v18 < 0)
        {
          if (v12 < 0)
          {
            v13 = *(*(&v210 + 1) + 16);
            v29 = __OFADD__(v12, v13);
            v12 += v13;
            if (v29)
            {
              goto LABEL_151;
            }
          }
        }

        else
        {
          v59 = *(*(&v210 + 1) + 16);
          v60 = __OFSUB__(v12, v59);
          v13 = v12 - v59;
          if (v13 < 0 == v60)
          {
            v12 = v13;
            if (v60)
            {
              goto LABEL_147;
            }
          }
        }

        v12 = *(&v210 + 1) + 8 * v12;
        *(v12 + 40) = v4;
        v29 = __OFADD__(v18++, 1);
        if (v29)
        {
          goto LABEL_141;
        }

        *(v45 + 24) = v18;
        v4 = v45;
        if (v11[316])
        {
          goto LABEL_93;
        }
      }

LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
    }

    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  swift_beginAccess();
  v14 = *(v3 + 424);
  v15 = *(v3 + 432);
  if (v15 == 1)
  {
    if (a2 < 0)
    {
LABEL_6:
      FrameArray.init()(v203);
      v14 = *(&v210 + 1);
LABEL_45:
      v146 = *v203;
      v144 = *&v203[16];
      v142 = v203[24];
      v140 = v204;
      v138 = v205[0];
      v136 = *&v205[8];
      v134 = *&v205[16];
      v132 = *&v205[32];
      v130 = v205[40];
      v126 = *&v206[16];
      v128 = *v206;
      v124 = *&v206[32];
      v120 = *&v206[42];
      v122 = *&v206[40];
      v30 = v206[44];
      v118 = v207;
      v31 = v208;
      v116 = *(&v208 + 1);
      v114 = v209[0];
      v112 = *&v209[1];
      v32 = v209[17];
      v33 = v209[18];
      v34 = *&v209[24];
      v35 = v210;
      LOBYTE(v15) = v211;
LABEL_47:
      LOBYTE(v188) = v31;
      v202 = v32;
      swift_endAccess();
      *v203 = v146;
      *&v203[16] = v144;
      v203[24] = v142;
      v204 = v140;
      v205[0] = v138;
      *&v205[8] = v136;
      *&v205[16] = v134;
      *&v205[32] = v132;
      v205[40] = v130;
      *v206 = v128;
      *&v206[16] = v126;
      *&v206[32] = v124;
      *&v206[40] = v122;
      *&v206[42] = v120;
      v206[44] = v30;
      v207 = v118;
      LOBYTE(v208) = v31;
      *(&v208 + 1) = v116;
      v209[0] = v114;
      *&v209[1] = v112;
      v209[17] = v32;
      v209[18] = v33;
      *&v209[24] = v34;
      LOBYTE(v210) = v35;
      *(&v210 + 1) = v14;
LABEL_96:
      v211 = v15;
      nullsub_41();
      goto LABEL_97;
    }

LABEL_46:
    v146 = *(v7 + 208);
    v144 = *(v7 + 224);
    v142 = *(v7 + 232);
    v140 = *(v7 + 240);
    v138 = *(v7 + 256);
    v136 = *(v7 + 264);
    v134 = *(v7 + 272);
    v132 = *(v7 + 288);
    v130 = *(v7 + 296);
    v126 = *(v7 + 320);
    v128 = *(v7 + 304);
    v124 = *(v7 + 336);
    v120 = *(v7 + 346);
    v122 = *(v7 + 344);
    v30 = *v11;
    v118 = *(v7 + 352);
    v31 = *(v7 + 368);
    v116 = *(v7 + 376);
    v114 = *(v7 + 384);
    v112 = *(v7 + 385);
    v32 = *(v7 + 401);
    v33 = *(v7 + 402);
    v34 = *(v7 + 408);
    v35 = *(v7 + 416);
    FrameArray.init()(v203);
    v36 = v210;
    *(v7 + 400) = *&v209[16];
    *(v7 + 416) = v36;
    *(v7 + 432) = v211;
    v37 = v207;
    *(v7 + 336) = *&v206[32];
    *(v7 + 352) = v37;
    v38 = *v209;
    *(v7 + 368) = v208;
    *(v7 + 384) = v38;
    v39 = *&v205[32];
    *(v7 + 272) = *&v205[16];
    *(v7 + 288) = v39;
    v40 = *&v206[16];
    *(v7 + 304) = *v206;
    *(v7 + 320) = v40;
    v41 = *&v203[16];
    *(v7 + 208) = *v203;
    *(v7 + 224) = v41;
    v42 = *v205;
    *(v7 + 240) = v204;
    *(v7 + 256) = v42;
    goto LABEL_47;
  }

  if (v14)
  {
    v16 = *(v14 + 24);
    v29 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (!v29)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = 1;
    if (!__OFSUB__(v15, 1))
    {
LABEL_13:
      if (v17 > a2)
      {
        FrameArray.init()(v203);
        v14 = *(&v210 + 1);
        v4 = *(&v210 + 1);
        while (1)
        {
          while (v211 == 1)
          {
            if (a2 <= 0)
            {
              goto LABEL_45;
            }

            FrameArray.popFirst()(&v188);

            v178 = v198;
            v181 = v199;
            v184 = v200;
            LOBYTE(v187) = v201;
            v166 = v194;
            v169 = v195;
            v172 = v196;
            v175 = v197;
            v154 = v190;
            v157 = v191;
            v160 = v192;
            v163 = v193;
            v148 = v188;
            v151 = v189;
            v4 = *&v203[8];
            v14 = *v203;
            v5 = *&v203[16];
            v6 = v203[24];
            v12 = *(&v204 + 1);
            v18 = v204;
            v13 = v205[0];
            if (v205[0] != 2 || v204 != 0)
            {
              goto LABEL_154;
            }

            if ((v208 & 1) == 0)
            {
              if (v207)
              {
                MEMORY[0x1865DF520](v207, -1, -1);
              }
            }

            sub_181F68EF4(v14, v4, v5, v6);

            v14 = 0;
            v4 = 0;
            v208 = v178;
            *v209 = v181;
            *&v209[16] = v184;
            *v206 = v166;
            *&v206[16] = v169;
            *&v206[32] = v172;
            v207 = v175;
            v204 = v154;
            *v205 = v157;
            *&v205[16] = v160;
            *&v205[32] = v163;
            *v203 = v148;
            *&v203[16] = v151;
            v210 = v187;
            v211 = 0;
            if (*(v7 + 432))
            {
              goto LABEL_45;
            }
          }

          if (v14)
          {
            v19 = *(v14 + 24);
            v29 = __OFADD__(v19, 1);
            v18 = v19 + 1;
            if (v29)
            {
              goto LABEL_134;
            }
          }

          else
          {
            v18 = 1;
            if (__OFSUB__(v211, 1))
            {
LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
              goto LABEL_140;
            }
          }

          if (v18 >= a2)
          {
            goto LABEL_45;
          }

          FrameArray.popFirst()(&v188);
          if (!v14)
          {
            v4 = *sub_182AD2388();
            *(&v210 + 1) = v4;
          }

          type metadata accessor for FrameArrayEntry();
          v14 = swift_allocObject();
          swift_beginAccess();
          v20 = v193;
          *(v14 + 80) = v192;
          *(v14 + 96) = v20;
          v21 = v191;
          *(v14 + 48) = v190;
          *(v14 + 64) = v21;
          v22 = v197;
          *(v14 + 144) = v196;
          *(v14 + 160) = v22;
          v23 = v195;
          *(v14 + 112) = v194;
          *(v14 + 128) = v23;
          *(v14 + 224) = v201;
          v24 = v200;
          *(v14 + 192) = v199;
          *(v14 + 208) = v24;
          *(v14 + 176) = v198;
          v25 = v189;
          *(v14 + 16) = v188;
          *(v14 + 32) = v25;
          v18 = *(v4 + 24);
          v5 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_135;
          }

          v26 = swift_isUniquelyReferenced_nonNull_native();
          if (*(v4 + 16) < v5 || (v26 & 1) == 0)
          {
            sub_181F461F8(v26, v5, 0);
          }

          v4 = *(&v210 + 1);
          v18 = *(*(&v210 + 1) + 24);
          v27 = *(*(&v210 + 1) + 32);
          v29 = __OFADD__(v27, v18);
          v12 = v27 + v18;
          if (v29)
          {
            goto LABEL_136;
          }

          if (v18 < 0)
          {
            if (v12 < 0)
            {
              v13 = *(*(&v210 + 1) + 16);
              v29 = __OFADD__(v12, v13);
              v12 += v13;
              if (v29)
              {
                goto LABEL_148;
              }
            }
          }

          else
          {
            v28 = *(*(&v210 + 1) + 16);
            v29 = __OFSUB__(v12, v28);
            v13 = v12 - v28;
            if (v13 < 0 == v29)
            {
              v12 = v13;
              if (v29)
              {
                goto LABEL_142;
              }
            }
          }

          v12 = *(&v210 + 1) + 8 * v12;
          *(v12 + 40) = v14;
          v29 = __OFADD__(v18++, 1);
          if (v29)
          {
            goto LABEL_137;
          }

          *(v4 + 24) = v18;
          v14 = v4;
          if (*(v7 + 432))
          {
            goto LABEL_45;
          }
        }
      }

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_57:
  if (v14)
  {
    v44 = *(v14 + 24);
  }

  else
  {
    v44 = 0;
  }

  v29 = __OFADD__(v44, 1);
  v18 = v44 + 1;
  if (!v29)
  {
    if (v18 > a2)
    {
      FrameArray.init()(v203);
      v14 = *(&v210 + 1);
      v4 = *(&v210 + 1);
      do
      {
        while (v211 == 1)
        {
          if (a2 <= 0)
          {
            goto LABEL_45;
          }

          FrameArray.popFirst()(&v188);

          v180 = v198;
          v183 = v199;
          v186 = v200;
          LOBYTE(v187) = v201;
          v168 = v194;
          v171 = v195;
          v174 = v196;
          v177 = v197;
          v156 = v190;
          v159 = v191;
          v162 = v192;
          v165 = v193;
          v150 = v188;
          v153 = v189;
          v4 = *&v203[8];
          v14 = *v203;
          v5 = *&v203[16];
          v6 = v203[24];
          v82 = *(&v204 + 1);
          v81 = v204;
          v83 = v205[0];
          if (v205[0] != 2 || v204 != 0)
          {
            goto LABEL_156;
          }

          if ((v208 & 1) == 0 && v207)
          {
            MEMORY[0x1865DF520](v207, -1, -1);
          }

          sub_181F68EF4(v14, v4, v5, v6);

          v14 = 0;
          v4 = 0;
          v208 = v180;
          *v209 = v183;
          *&v209[16] = v186;
          *v206 = v168;
          *&v206[16] = v171;
          *&v206[32] = v174;
          v207 = v177;
          v204 = v156;
          *v205 = v159;
          *&v205[16] = v162;
          *&v205[32] = v165;
          *v203 = v150;
          *&v203[16] = v153;
          v210 = v187;
          v211 = 0;
          if (*(v7 + 896))
          {
            goto LABEL_45;
          }
        }

        if (v14)
        {
          v84 = *(v14 + 24);
          v29 = __OFADD__(v84, 1);
          v18 = v84 + 1;
          if (v29)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v18 = 1;
          if (__OFSUB__(v211, 1))
          {
            goto LABEL_143;
          }
        }

        if (v18 >= a2)
        {
          break;
        }

        FrameArray.popFirst()(&v188);
        if (!v14)
        {
          v4 = *sub_182AD2388();
          *(&v210 + 1) = v4;
        }

        type metadata accessor for FrameArrayEntry();
        v14 = swift_allocObject();
        swift_beginAccess();
        v85 = v193;
        *(v14 + 80) = v192;
        *(v14 + 96) = v85;
        v86 = v191;
        *(v14 + 48) = v190;
        *(v14 + 64) = v86;
        v87 = v197;
        *(v14 + 144) = v196;
        *(v14 + 160) = v87;
        v88 = v195;
        *(v14 + 112) = v194;
        *(v14 + 128) = v88;
        *(v14 + 224) = v201;
        v89 = v200;
        *(v14 + 192) = v199;
        *(v14 + 208) = v89;
        *(v14 + 176) = v198;
        v90 = v189;
        *(v14 + 16) = v188;
        *(v14 + 32) = v90;
        v18 = *(v4 + 24);
        v5 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_144;
        }

        v91 = swift_isUniquelyReferenced_nonNull_native();
        if (*(v4 + 16) < v5 || (v91 & 1) == 0)
        {
          sub_181F461F8(v91, v5, 0);
        }

        v4 = *(&v210 + 1);
        v18 = *(*(&v210 + 1) + 24);
        v92 = *(*(&v210 + 1) + 32);
        v29 = __OFADD__(v92, v18);
        v12 = v92 + v18;
        if (v29)
        {
          goto LABEL_145;
        }

        if (v18 < 0)
        {
          if (v12 < 0)
          {
            v13 = *(*(&v210 + 1) + 16);
            v29 = __OFADD__(v12, v13);
            v12 += v13;
            if (v29)
            {
              goto LABEL_153;
            }
          }
        }

        else
        {
          v93 = *(*(&v210 + 1) + 16);
          v94 = __OFSUB__(v12, v93);
          v13 = v12 - v93;
          if (v13 < 0 == v94)
          {
            v12 = v13;
            if (v94)
            {
              goto LABEL_150;
            }
          }
        }

        v12 = *(&v210 + 1) + 8 * v12;
        *(v12 + 40) = v14;
        v29 = __OFADD__(v18++, 1);
        if (v29)
        {
          goto LABEL_146;
        }

        *(v4 + 24) = v18;
        v14 = v4;
      }

      while ((*(v7 + 896) & 1) == 0);
      goto LABEL_45;
    }

    goto LABEL_133;
  }

LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  v102 = v18;
  v103 = v12;
  v46 = v13;
  sub_181F68EF4(v14, v4, v5, v6);

  sub_181F68F3C(v102, v103, v46);
  __break(1u);
LABEL_155:
  v104 = v47;
  v105 = v46;
  v106 = v48;
  v107 = v49;
  sub_181F68EF4(v105, v4, v5, v6);

  sub_181F68F3C(v104, v106, v107);
  __break(1u);
LABEL_156:
  v108 = v81;
  v109 = v82;
  v110 = v83;
  sub_181F68EF4(v14, v4, v5, v6);

  sub_181F68F3C(v108, v109, v110);
  __break(1u);
}

__n128 sub_182038F34@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v14 = *a1;
  LOBYTE(v15) = v5;
  if (sub_182037D94() == 4)
  {
    sub_181F73CAC(&v14);
  }

  else
  {
    if (a2 >= 0xFFFF)
    {
      v6 = 0xFFFFLL;
    }

    else
    {
      v6 = a2;
    }

    Frame.init(capacity:)(v6, &v14);
    *(&v27 + 1) = 0;
    v28 = 0;
    nullsub_41();
  }

  v7 = v27;
  *(a3 + 192) = v26;
  *(a3 + 208) = v7;
  *(a3 + 224) = v28;
  v8 = v23;
  *(a3 + 128) = v22;
  *(a3 + 144) = v8;
  v9 = v25;
  *(a3 + 160) = v24;
  *(a3 + 176) = v9;
  v10 = v19;
  *(a3 + 64) = v18;
  *(a3 + 80) = v10;
  v11 = v21;
  *(a3 + 96) = v20;
  *(a3 + 112) = v11;
  v12 = v15;
  *a3 = v14;
  *(a3 + 16) = v12;
  result = v17;
  *(a3 + 32) = v16;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_182038FFC(__int128 *a1, __int128 *a2)
{
  v8 = v2;
  v9 = *(a1 + 16);
  v10 = v50;
  v11 = a2[11];
  v76 = a2[10];
  v77 = v11;
  v78 = a2[12];
  v12 = a2[7];
  v72 = a2[6];
  v73 = v12;
  v13 = a2[9];
  v74 = a2[8];
  v75 = v13;
  v14 = a2[3];
  v68 = a2[2];
  v69 = v14;
  v15 = a2[5];
  v70 = a2[4];
  v71 = v15;
  v16 = a2[1];
  v66 = *a2;
  v67 = v16;
  v17 = *(a2 + 27);
  v18 = *(a2 + 224);
  v79 = *(a2 + 26);
  v80 = v17;
  v81 = v18;
  v52 = *a1;
  LOBYTE(v53) = v9;
  v49 = sub_182037E50();
  if (v49 == 3 || (v18 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (v17)
  {
    v19 = *(v17 + 24);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = 1;
  if (__OFSUB__(v49, 3))
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v21 < 1)
  {
    goto LABEL_40;
  }

  FrameArray.popFirst()(&v52);
  if (BYTE8(v53) == 5)
  {
    v6 = nw_frame_unclaimed_length(v52);
    v22 = *(v2 + 56);
    if (!v22)
    {
      goto LABEL_27;
    }

LABEL_16:
    v7 = *(v22 + 80);
    v4 = *(v22 + 88);
    v24 = qword_1EA837250;

    if (v24 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      goto LABEL_25;
    }

    *&v50[0] = 0;
    *(&v50[0] + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    strcpy(v50, "Frame length: ");
    HIBYTE(v50[0]) = -18;
    v25 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v25);

    v5 = *(&v50[0] + 1);
    v18 = *&v50[0];
    if (qword_1EA837248 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_12:
  if (!*(&v56 + 1))
  {
    v6 = 0;
    v22 = *(v2 + 56);
    if (!v22)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v23 = *(&v55 + 1) + v56;
  if (!__OFADD__(*(&v55 + 1), v56))
  {
    v6 = *(&v56 + 1) - v23;
    if (__OFSUB__(*(&v56 + 1), v23))
    {
      __break(1u);
LABEL_51:
      sub_181F68EF4(v8, v3, v4, v10);

      sub_181F68F3C(v5, v6, v7);
      __break(1u);
LABEL_52:
      sub_181F68EF4(v8, v17, v3, v4);

      result = sub_181F68F3C(v10, v5, v6);
      __break(1u);
      return result;
    }

    v22 = *(v2 + 56);
    if (!v22)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_49:
  swift_once();
LABEL_20:
  v26 = sub_182AD2698();
  __swift_project_value_buffer(v26, qword_1EA843418);

  v27 = sub_182AD2678();
  v28 = sub_182AD38A8();

  if (!os_log_type_enabled(v27, v28))
  {

LABEL_25:

    goto LABEL_26;
  }

  v48 = v6;
  v29 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *&v50[0] = v47;
  *v29 = 136315650;
  v30 = sub_182AD3BF8();
  v45 = v18;
  v46 = v28;
  v32 = sub_181C64FFC(v30, v31, v50);

  *(v29 + 4) = v32;
  *(v29 + 12) = 2080;
  v33 = sub_181C64FFC(v7, v4, v50);

  *(v29 + 14) = v33;
  *(v29 + 22) = 2080;
  v34 = sub_181C64FFC(v45, v5, v50);

  *(v29 + 24) = v34;
  _os_log_impl(&dword_181A37000, v27, v46, "%s %s %s", v29, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v47, -1, -1);
  v35 = v29;
  v6 = v48;
  MEMORY[0x1865DF520](v35, -1, -1);

LABEL_26:

LABEL_27:
  v50[10] = v62;
  v50[11] = v63;
  v50[12] = v64;
  v51 = v65;
  v50[6] = v58;
  v50[7] = v59;
  v50[8] = v60;
  v50[9] = v61;
  v50[2] = v54;
  v50[3] = v55;
  v50[4] = v56;
  v50[5] = v57;
  v50[0] = v52;
  v50[1] = v53;
  v36 = sub_1821440B8();
  if (v38)
  {
    Frame.finalize(success:)(1);
  }

  else
  {
    v39 = v36;
    v40 = v37;
    sub_181F68EF4(v52, *(&v52 + 1), v53, BYTE8(v53));
    v52 = 0uLL;
    *&v53 = 0;
    BYTE8(v53) = 6;
    if (v55 == 2 && v54 == 1)
    {
      sub_181F68F3C(1, 0, 2);
      v54 = 0uLL;
      LOBYTE(v55) = 2;
    }

    sub_1820353C4(v49, v39, v40, v6);
    Frame.finalize(success:)(1);
    if (v39)
    {
      MEMORY[0x1865DF520](v39, -1, -1);
    }
  }

  v17 = *(&v52 + 1);
  v8 = v52;
  v3 = v53;
  LOBYTE(v4) = BYTE8(v53);
  v5 = *(&v54 + 1);
  v10 = v54;
  LOBYTE(v6) = v55;
  if (v55 != 2 || v54 != 0)
  {
    goto LABEL_52;
  }

  if ((v62 & 1) == 0 && v61)
  {
    MEMORY[0x1865DF520](v61, -1, -1);
  }

  sub_181F68EF4(v8, v17, v3, v4);

  v17 = v80;
LABEL_40:
  v3 = *(&v66 + 1);
  v8 = v66;
  v4 = v67;
  v10 = BYTE8(v67);
  v6 = *(&v68 + 1);
  v5 = v68;
  LODWORD(v7) = v69;
  v41 = v75;
  v42 = v76;

  if (v7 != 2 || __PAIR128__(v6, v5) != 0)
  {
    goto LABEL_51;
  }

  if (v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0)
  {
    MEMORY[0x1865DF520](v41, -1, -1);
  }

  sub_181F68EF4(v8, v3, v4, v10);

  return v49 != 3;
}

void sub_182039634(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

uint64_t sub_182039644(__int128 *a1)
{
  v1 = *(a1 + 16);
  v7 = *a1;
  v8 = v1;
  sub_182034AD4(&v5);
  v3 = v5;
  v4 = v6;
  InputHandlerLinkage.invokeConnected(_:)(&v3);
  sub_181F68E5C(v3, *(&v3 + 1), v4);
  return 1;
}

double sub_1820396B8@<D0>(uint64_t a1@<X8>)
{
  sub_182034AD4(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_18203970C()
{
  swift_beginAccess();
  if (*(v0 + 139) != 9)
  {
    return 0;
  }

  v1 = *(v0 + 144);
  if (*(v0 + 1040) == 1)
  {
    v2 = v1[3];
    v3 = v1[10];
    v4 = v2 >= v3;
    v5 = v2 - v3;
    if (!v4)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = v1[5];
  }

  if (v1[9] <= v5 >> 1)
  {
    return 0;
  }

  v1[9] = 0;
  return 1;
}

void sub_18203978C()
{
  v1 = v0;
  swift_beginAccess();
  if ((*(v0 + 139) & 0xFE) == 0xA)
  {
    return;
  }

  v2 = sub_18220ED70();

  if (!v2)
  {
    return;
  }

  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = qword_1EA837250;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = byte_1EA843430;
  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v22 = sub_182AD2698();
  __swift_project_value_buffer(v22, qword_1EA843418);
  v23 = swift_allocObject();
  *(v23 + 16) = "sendFlowControlCredit()";
  *(v23 + 24) = 23;
  *(v23 + 32) = 2;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_181F8C724;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = v3;
  v26 = swift_allocObject();
  strcpy((v26 + 16), "send MAX_DATA");
  *(v26 + 30) = -4864;

  v27 = sub_182AD2678();
  v28 = sub_182AD38A8();
  v40 = swift_allocObject();
  *(v40 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_18206B168;
  *(v29 + 24) = v24;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_181F8C718;
  *(v30 + 24) = v29;
  v42 = swift_allocObject();
  *(v42 + 16) = 32;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_181F8C720;
  *(v31 + 24) = v25;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_181F8C718;
  *(v32 + 24) = v31;
  v44 = swift_allocObject();
  *(v44 + 16) = 32;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_181F8C720;
  *(v33 + 24) = v26;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_181F8C718;
  *(v34 + 24) = v33;
  v35 = v28;
  v36 = v28;
  v37 = v27;
  if (!os_log_type_enabled(v27, v36))
  {

LABEL_7:

    goto LABEL_8;
  }

  v38 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v47 = 0;
  v39 = v46;
  *v38 = 770;
  v48 = v38 + 2;
  *&v49 = sub_181F8C728;
  *(&v49 + 1) = v40;
  sub_181F73AE0(&v49, &v48, &v47, &v46);

  *&v49 = sub_181F8C728;
  *(&v49 + 1) = v41;
  sub_181F73AE0(&v49, &v48, &v47, &v46);

  *&v49 = sub_181F8C714;
  *(&v49 + 1) = v30;
  sub_181F73AE0(&v49, &v48, &v47, &v46);

  *&v49 = sub_181F8C728;
  *(&v49 + 1) = v42;
  sub_181F73AE0(&v49, &v48, &v47, &v46);

  *&v49 = sub_181F8C728;
  *(&v49 + 1) = v43;
  sub_181F73AE0(&v49, &v48, &v47, &v46);

  *&v49 = sub_181F8C714;
  *(&v49 + 1) = v32;
  sub_181F73AE0(&v49, &v48, &v47, &v46);

  *&v49 = sub_181F8C728;
  *(&v49 + 1) = v44;
  sub_181F73AE0(&v49, &v48, &v47, &v46);

  *&v49 = sub_181F8C728;
  *(&v49 + 1) = v45;
  sub_181F73AE0(&v49, &v48, &v47, &v46);

  *&v49 = sub_181F8C714;
  *(&v49 + 1) = v34;
  sub_181F73AE0(&v49, &v48, &v47, &v46);

  _os_log_impl(&dword_181A37000, v37, v35, "%s %s %s", v38, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v39, -1, -1);
  MEMORY[0x1865DF520](v38, -1, -1);

LABEL_8:
  v7 = *(*(v1 + 144) + 40);
  v49 = xmmword_182AEFE00;
  v50 = v7;

  sub_181F82F10(2, &v49);

  *(v1 + 1040) = 1;
  if (!*(v1 + 952) || (v8 = , v9 = sub_182047340(v8, 0, 0), , (v9 & 1) == 0))
  {
    if (v6)
    {
      v11 = *(v1 + 80);
      v10 = *(v1 + 88);
      v12 = qword_1EA837248;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = sub_182AD2698();
      __swift_project_value_buffer(v13, qword_1EA843418);

      v14 = sub_182AD2678();
      v15 = sub_182AD38A8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v49 = v17;
        *v16 = 136315650;
        v18 = sub_182AD3BF8();
        v20 = sub_181C64FFC(v18, v19, &v49);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v21 = sub_181C64FFC(v11, v10, &v49);

        *(v16 + 14) = v21;
        *(v16 + 22) = 2080;
        *(v16 + 24) = sub_181C64FFC(0xD000000000000017, 0x8000000182BDB070, &v49);
        _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v17, -1, -1);
        MEMORY[0x1865DF520](v16, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_18203A114()
{
  if (*(v0 + 1024))
  {
    goto LABEL_5;
  }

  result = swift_beginAccess();
  if (*(v0 + 139) != 8)
  {
    v2[0] = 8;
    swift_beginAccess();
    sub_18203BF4C(v2);
    result = swift_endAccess();
  }

  if (*(v0 + 1024) == 1)
  {
LABEL_5:
    result = swift_beginAccess();
    if (*(v0 + 139) == 4)
    {
      v3 = 8;
      swift_beginAccess();
      sub_18203BF4C(&v3);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_18203A1F4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_18224F168(15);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = (*(a1 + 56) + 56 * v6);
  v9 = v8[1];
  v10 = v8[2];
  v11 = v8[4];
  v12 = v8[6];
  v13 = v11 >> 59;
  if ((v11 >> 59) - 15 >= 2 && v13 != 0)
  {
    if (((1 << v13) & 0x1E5FFA) != 0)
    {
      goto LABEL_76;
    }

    if (v13 == 2)
    {
      goto LABEL_75;
    }

    while (1)
    {

      do
      {
LABEL_75:

        do
        {
LABEL_76:
          sub_182AD3EA8();
          __break(1u);
LABEL_77:
          ;
        }

        while (((1 << v3) & 0x1E5FFA) != 0);
      }

      while (v3 == 2);
    }
  }

  v98 = v3;
  v15 = *v8;
  v16 = v8[3];
  v17 = v8[5];
  v18 = *(v4 + 952);
  if (!v18)
  {
    if (v9)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

  v19 = *(v18 + 72);

  if (!v9)
  {
    if (v19)
    {
      goto LABEL_17;
    }

LABEL_23:
    sub_18206A3C4(v15, v9, v10, v16, v11, v17, v12);

    if (*(v4 + 1024))
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

  if (!v19)
  {
LABEL_17:
    sub_18206A3C4(v15, v9, v10, v16, v11, v17, v12);

    goto LABEL_18;
  }

  v96 = sub_1822C3DC0(v19, v9);
  sub_18206A3C4(v15, v9, v10, v16, v11, v17, v12);

  if (v96)
  {
    if (*(v4 + 1024))
    {
      goto LABEL_24;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_50;
    }

    v44 = sub_18224F168(0);
    if ((v45 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_36:
    v46 = (*(a1 + 56) + 56 * v44);
    v47 = v46[1];
    v97 = v46[2];
    v48 = v46[4];
    v49 = v46[6];
    v3 = v48 >> 59;
    if ((v48 >> 59) - 15 >= 2 && v3 != 0)
    {
      goto LABEL_77;
    }

    v51 = *v46;
    v52 = v46[3];
    v53 = v46[5];
    if (sub_1822C3DC0(*(v4 + 1136), v47))
    {
      if (!*(a1 + 16) || (v95 = v49, v54 = sub_18224F168(2), (v55 & 1) == 0))
      {
        if ((v3 - 1) < 0xE)
        {
          goto LABEL_76;
        }

        v102 = v47;
        swift_beginAccess();
        sub_18206A3C4(v51, v47, v97, v52, v48, v53, v49);
        v9 = sub_1822C3820(0, &v102, 1);
        if (v98)
        {
          swift_endAccess();

          return v9;
        }

        swift_endAccess();

        if ((v9 & 1) == 0)
        {
          v82 = *(v4 + 80);
          v81 = *(v4 + 88);
          v83 = qword_1EA837248;

          if (v83 != -1)
          {
            swift_once();
          }

          v84 = sub_182AD2698();
          __swift_project_value_buffer(v84, qword_1EA843418);

          v9 = sub_182AD2678();
          v24 = sub_182AD38B8();

          if (os_log_type_enabled(v9, v24))
          {
            v99 = "missing/invalid original DCID";
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v101[0] = v26;
            *v25 = 136315650;
            v85 = sub_182AD3BF8();
            v87 = sub_181C64FFC(v85, v86, v101);

            *(v25 + 4) = v87;
            *(v25 + 12) = 2080;
            v88 = sub_181C64FFC(v82, v81, v101);

            *(v25 + 14) = v88;
            *(v25 + 22) = 2080;
            v31 = 0xD000000000000024;
            goto LABEL_22;
          }

          goto LABEL_70;
        }

        goto LABEL_59;
      }

      if ((v3 - 1) < 0xE)
      {
        goto LABEL_76;
      }

      v56 = (*(a1 + 56) + 56 * v54);
      v57 = v56[1];
      v93 = v56[2];
      v94 = *v56;
      v92 = v56[3];
      v3 = v56[4];
      v90 = v56[6];
      v91 = v56[5];
      v102 = v47;
      if (v3 >> 59 != 2)
      {
        goto LABEL_76;
      }

      v100 = v57;
      swift_beginAccess();
      sub_18206A3C4(v51, v47, v97, v52, v48, v53, v95);
      v58.n128_f64[0] = sub_18206A3C4(v94, v57, v93, v92, v3, v91, v90);
      v9 = v4 + 216;
      v59 = sub_1822C3618(0, &v102, &v100, 1, v58);
      swift_endAccess();

      if (v59)
      {
LABEL_59:
        if (*(v4 + 1024) != 1)
        {
LABEL_60:
          *(v4 + 280) = a1;

          return v9;
        }

LABEL_24:
        if (!*(a1 + 16))
        {
          goto LABEL_60;
        }

        v9 = a1;
        sub_18224F168(0);
        if ((v32 & 1) == 0)
        {
          if (!*(a1 + 16))
          {
            goto LABEL_60;
          }

          v9 = a1;
          sub_18224F168(13);
          if ((v33 & 1) == 0)
          {
            if (!*(a1 + 16))
            {
              goto LABEL_60;
            }

            v9 = a1;
            sub_18224F168(16);
            if ((v34 & 1) == 0)
            {
              if (!*(a1 + 16))
              {
                goto LABEL_60;
              }

              v9 = a1;
              sub_18224F168(2);
              if ((v35 & 1) == 0)
              {
                goto LABEL_60;
              }
            }
          }
        }

        v37 = *(v4 + 80);
        v36 = *(v4 + 88);
        v38 = qword_1EA837248;

        if (v38 != -1)
        {
          swift_once();
        }

        v39 = sub_182AD2698();
        __swift_project_value_buffer(v39, qword_1EA843418);

        v9 = sub_182AD2678();
        v24 = sub_182AD38B8();

        if (os_log_type_enabled(v9, v24))
        {
          v99 = " initial managed CID";
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v101[0] = v26;
          *v25 = 136315650;
          v40 = sub_182AD3BF8();
          v42 = sub_181C64FFC(v40, v41, v101);

          *(v25 + 4) = v42;
          *(v25 + 12) = 2080;
          v43 = sub_181C64FFC(v37, v36, v101);

          *(v25 + 14) = v43;
          *(v25 + 22) = 2080;
          v31 = 0xD000000000000028;
          goto LABEL_22;
        }

LABEL_70:

        return v9;
      }

      v74 = *(v4 + 80);
      v73 = *(v4 + 88);
      v75 = qword_1EA837248;

      if (v75 != -1)
      {
        swift_once();
      }

      v76 = sub_182AD2698();
      __swift_project_value_buffer(v76, qword_1EA843418);

      v9 = sub_182AD2678();
      v64 = sub_182AD38B8();

      if (!os_log_type_enabled(v9, v64))
      {
        goto LABEL_70;
      }

      v65 = "lid transport parameters";
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v101[0] = v67;
      *v66 = 136315650;
      v77 = sub_182AD3BF8();
      v79 = sub_181C64FFC(v77, v78, v101);

      *(v66 + 4) = v79;
      *(v66 + 12) = 2080;
      v80 = sub_181C64FFC(v74, v73, v101);

      *(v66 + 14) = v80;
      *(v66 + 22) = 2080;
      v72 = 0xD000000000000048;
    }

    else
    {
LABEL_50:
      v61 = *(v4 + 80);
      v60 = *(v4 + 88);
      v62 = qword_1EA837248;

      if (v62 != -1)
      {
        swift_once();
      }

      v63 = sub_182AD2698();
      __swift_project_value_buffer(v63, qword_1EA843418);

      v9 = sub_182AD2678();
      v64 = sub_182AD38B8();

      if (!os_log_type_enabled(v9, v64))
      {
        goto LABEL_70;
      }

      v65 = "invalid function call";
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v101[0] = v67;
      *v66 = 136315650;
      v68 = sub_182AD3BF8();
      v70 = sub_181C64FFC(v68, v69, v101);

      *(v66 + 4) = v70;
      *(v66 + 12) = 2080;
      v71 = sub_181C64FFC(v61, v60, v101);

      *(v66 + 14) = v71;
      *(v66 + 22) = 2080;
      v72 = 0xD00000000000001DLL;
    }

    *(v66 + 24) = sub_181C64FFC(v72, v65 | 0x8000000000000000, v101);
    _os_log_impl(&dword_181A37000, v9, v64, "%s %s %s", v66, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v67, -1, -1);
    MEMORY[0x1865DF520](v66, -1, -1);

    return v9;
  }

LABEL_18:
  v21 = *(v4 + 80);
  v20 = *(v4 + 88);
  v22 = qword_1EA837248;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_182AD2698();
  __swift_project_value_buffer(v23, qword_1EA843418);

  v9 = sub_182AD2678();
  v24 = sub_182AD38B8();

  if (!os_log_type_enabled(v9, v24))
  {
    goto LABEL_70;
  }

  v99 = "rtParameters(_:)";
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v101[0] = v26;
  *v25 = 136315650;
  v27 = sub_182AD3BF8();
  v29 = sub_181C64FFC(v27, v28, v101);

  *(v25 + 4) = v29;
  *(v25 + 12) = 2080;
  v30 = sub_181C64FFC(v21, v20, v101);

  *(v25 + 14) = v30;
  *(v25 + 22) = 2080;
  v31 = 0xD00000000000001CLL;
LABEL_22:
  *(v25 + 24) = sub_181C64FFC(v31, v99 | 0x8000000000000000, v101);
  _os_log_impl(&dword_181A37000, v9, v24, "%s %s %s", v25, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v26, -1, -1);
  MEMORY[0x1865DF520](v25, -1, -1);

  return v9;
}

void sub_18203ADF4()
{
  v1 = v0;
  swift_beginAccess();
  if ((*(v0 + 139) & 0xFE) == 0xA)
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = qword_1EA837250;

    if (v3 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
LABEL_27:

      return;
    }

    if (qword_1EA837248 == -1)
    {
LABEL_6:
      v4 = sub_182AD2698();
      __swift_project_value_buffer(v4, qword_1EA843418);

      v5 = sub_182AD2678();
      v6 = sub_182AD38A8();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *&v33 = v8;
        *v7 = 136315650;
        v9 = sub_182AD3BF8();
        v11 = sub_181C64FFC(v9, v10, &v33);

        *(v7 + 4) = v11;
        *(v7 + 12) = 2080;
        v12 = sub_181C64FFC(v2, v1, &v33);

        *(v7 + 14) = v12;
        *(v7 + 22) = 2080;
        *(v7 + 24) = sub_181C64FFC(0xD000000000000024, 0x8000000182BDBD90, &v33);
        _os_log_impl(&dword_181A37000, v5, v6, "%s %s %s", v7, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v8, -1, -1);
        MEMORY[0x1865DF520](v7, -1, -1);

        return;
      }

      goto LABEL_27;
    }

LABEL_50:
    swift_once();
    goto LABEL_6;
  }

  sub_181F8330C();

  if (*(v0 + 1024) == 1)
  {
    v13 = *(v0 + 304);
    if ((*(v0 + 1125) & 1) != 0 || v13 - 5 <= 0xFFFFFFFC)
    {
      if (v13 <= 1)
      {
        sub_18204F2A0(0);
      }

      v14 = 2;
    }

    else
    {
      v14 = 1;
    }
  }

  else if (*(v0 + 139) == 8)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = qword_1EA837250;

  if (v17 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1)
  {
LABEL_29:

    if ((*(v1 + 1192) & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_30:
    sub_18204F2A0(v14);
    goto LABEL_31;
  }

  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD00000000000001CLL, 0x8000000182BDBD70);
  sub_182AD3E18();
  MEMORY[0x1865D9CA0](0x617073204E502820, 0xEB00000000206563);
  v37[0] = v14;
  sub_182AD3E18();
  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  v18 = v33;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v19 = sub_182AD2698();
  __swift_project_value_buffer(v19, qword_1EA843418);

  v20 = sub_182AD2678();
  v21 = sub_182AD38A8();

  if (!os_log_type_enabled(v20, v21))
  {

    goto LABEL_29;
  }

  v22 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *&v33 = v32;
  *v22 = 136315650;
  v23 = sub_182AD3BF8();
  v25 = sub_181C64FFC(v23, v24, &v33);

  *(v22 + 4) = v25;
  *(v22 + 12) = 2080;
  v26 = sub_181C64FFC(v15, v16, &v33);

  *(v22 + 14) = v26;
  *(v22 + 22) = 2080;
  v27 = sub_181C64FFC(v18, *(&v18 + 1), &v33);

  *(v22 + 24) = v27;
  _os_log_impl(&dword_181A37000, v20, v21, "%s %s %s", v22, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v32, -1, -1);
  MEMORY[0x1865DF520](v22, -1, -1);

  if (*(v1 + 1192))
  {
    goto LABEL_30;
  }

LABEL_22:
  v37[0] = 1;
  v33 = xmmword_182AF01C0;
  v34 = 0;
  v35 = 1;
  v36 = xmmword_182AED9E0;

  sub_181F82F10(2, &v33);

LABEL_31:
  if (*(v1 + 139) != 1)
  {
    v37[0] = 10;
    swift_beginAccess();
    sub_18203BF4C(v37);
    swift_endAccess();
    if (*(v1 + 952))
    {

      sub_182047340(v28, 0, 0);
    }
  }

  sub_18204F36C();
  if (*(v1 + 1160) != 255 && *(v1 + 1200) == 1)
  {
    *(v1 + 1196) = 53;
    *(v1 + 1200) = 0;
  }

  swift_beginAccess();

  sub_181FF44FC();
  swift_endAccess();
  swift_beginAccess();
  sub_181FF44FC();
  swift_endAccess();
  swift_beginAccess();
  sub_181FF44FC();
  swift_endAccess();

  swift_beginAccess();
  v29 = *(v1 + 960);
  if (v29 >> 62)
  {
    v2 = sub_182AD3EB8();
    if (!v2)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v2 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_46;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_50;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1865DA790](i, v29);
      swift_unknownObjectRelease();
    }
  }

LABEL_46:
  *(v1 + 960) = MEMORY[0x1E69E7CC0];
  swift_endAccess();

  v31 = *(v1 + 1200);
  LODWORD(v33) = *(v1 + 1196);
  BYTE4(v33) = v31;
  sub_18216AC50(0, &v33);
  if (*(v1 + 139) == 9)
  {

    sub_181F8A310(0x676E696E69617264, 0xE800000000000000, 0, sub_18206AF04, v1, 1);
  }

  else
  {
    sub_18204F460();
  }
}

void sub_18203B62C()
{
  v2 = v0;
  if (*(v0 + 280))
  {
    if ((*(v0 + 1024) & 1) == 0 && *(v0 + 1038) == 1)
    {
      v4 = *(v0 + 80);
      v3 = *(v0 + 88);
      v5 = qword_1EA837248;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = sub_182AD2698();
      __swift_project_value_buffer(v6, qword_1EA843418);

      v7 = sub_182AD2678();
      v8 = sub_182AD38D8();

      if (os_log_type_enabled(v7, v8))
      {
        v1 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v40 = v9;
        *v1 = 136315650;
        v10 = sub_182AD3BF8();
        v12 = sub_181C64FFC(v10, v11, &v40);

        *(v1 + 4) = v12;
        *(v1 + 12) = 2080;
        v13 = sub_181C64FFC(v4, v3, &v40);

        *(v1 + 14) = v13;
        *(v1 + 22) = 2080;
        *(v1 + 24) = sub_181C64FFC(0xD00000000000002ALL, 0x8000000182BDAD70, &v40);
        _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v1, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v9, -1, -1);
        MEMORY[0x1865DF520](v1, -1, -1);
      }

      else
      {
      }
    }

    sub_182052CC8();
    v42 = 9;
    swift_beginAccess();
    sub_18203BF4C(&v42);
    swift_endAccess();
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    v29 = qword_1EA837248;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_182AD2698();
    __swift_project_value_buffer(v30, qword_1EA843418);

    v31 = sub_182AD2678();
    v32 = sub_182AD38D8();

    if (os_log_type_enabled(v31, v32))
    {
      v1 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v1 = 136315650;
      v34 = sub_182AD3BF8();
      v36 = sub_181C64FFC(v34, v35, &v40);

      *(v1 + 4) = v36;
      *(v1 + 12) = 2080;
      v15 = sub_181C64FFC(v15, v14, &v40);

      *(v1 + 14) = v15;
      *(v1 + 22) = 2080;
      *(v1 + 24) = sub_181C64FFC(0xD000000000000033, 0x8000000182BDAD30, &v40);
      _os_log_impl(&dword_181A37000, v31, v32, "%s %s %s", v1, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v33, -1, -1);
      MEMORY[0x1865DF520](v1, -1, -1);
    }

    else
    {
    }

    *(v2 + 304) = 3;
    if (*(v2 + 1024) == 1)
    {
      sub_182052860();
    }

    if (*(v2 + 139) == 9)
    {

      sub_182174F20(v37, v2);

      v38 = *(v2 + 128);
      v40 = *(v2 + 120);
      v41 = v38;
      sub_18206A450(v40, v38);
      NewFlowHandlerLinkage.invokeConnected()();
      sub_181F74148(v40, v41);

      sub_182174CFC(v39, v2);

      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  v14 = 0x8000000182BDAD00;
  v1 = *(v0 + 80);
  v15 = *(v0 + 88);
  v16 = qword_1EA837248;

  if (v16 != -1)
  {
LABEL_26:
    swift_once();
  }

  v17 = sub_182AD2698();
  __swift_project_value_buffer(v17, qword_1EA843418);

  v18 = sub_182AD2678();
  v19 = sub_182AD38B8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = v21;
    *v20 = 136315650;
    v22 = sub_182AD3BF8();
    v24 = sub_181C64FFC(v22, v23, &v40);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = sub_181C64FFC(v1, v15, &v40);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_181C64FFC(0xD00000000000001CLL, v14, &v40);
    _os_log_impl(&dword_181A37000, v18, v19, "%s %s %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v21, -1, -1);
    MEMORY[0x1865DF520](v20, -1, -1);
  }

  else
  {
  }

  v26 = *(v2 + 1144);
  v27 = *(v2 + 1152);
  *(v2 + 1144) = 0xD00000000000001CLL;
  *(v2 + 1152) = v14;
  v28 = *(v2 + 1160);
  *(v2 + 1160) = 5;
  sub_182023268(v26, v27, v28);

  sub_18203ADF4();
}

BOOL sub_18203BC9C(unsigned __int8 *a1)
{
  v2 = &byte_1EEF96BF9;
  v3 = 31;
  while (1)
  {
    v4 = *v1 == *(v2 - 1) && *a1 == *v2;
    v5 = v4;
    if (v4)
    {
      break;
    }

    v2 += 2;
    if (!--v3)
    {
      v16[0] = 0;
      v16[1] = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000025, 0x8000000182BDC3D0);
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
      sub_182AD3E18();
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v6 = sub_182AD2698();
      __swift_project_value_buffer(v6, qword_1EA843418);

      v7 = sub_182AD2678();
      v8 = sub_182AD38C8();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v16[0] = v10;
        *v9 = 136315650;
        v11 = sub_182AD3BF8();
        v13 = sub_181C64FFC(v11, v12, v16);

        *(v9 + 4) = v13;
        *(v9 + 12) = 2080;
        *(v9 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v16);
        *(v9 + 22) = 2080;
        v14 = sub_181C64FFC(0, 0xE000000000000000, v16);

        *(v9 + 24) = v14;
        _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v10, -1, -1);
        MEMORY[0x1865DF520](v9, -1, -1);
      }

      else
      {
      }

      return v5;
    }
  }

  return v5;
}

BOOL sub_18203BF4C(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BDC390);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
    v15 = v3;
    sub_182AD3E18();
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA843418);

    v5 = sub_182AD2678();
    v6 = sub_182AD38A8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14[0] = v8;
      *v7 = 136315650;
      v9 = sub_182AD3BF8();
      v11 = sub_181C64FFC(v9, v10, v14);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v14);
      *(v7 + 22) = 2080;
      v12 = sub_181C64FFC(0, 0xE000000000000000, v14);

      *(v7 + 24) = v12;
      _os_log_impl(&dword_181A37000, v5, v6, "%s %s %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v8, -1, -1);
      MEMORY[0x1865DF520](v7, -1, -1);
    }

    else
    {
    }
  }

  LOBYTE(v14[0]) = *v2;
  v15 = v3;
  result = sub_18203BC9C(&v15);
  *v2 = v3;
  return result;
}

uint64_t QUICConnectionState.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t QUICConnectionImplementation.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 139);
  return result;
}

uint64_t QUICConnectionImplementation.state.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 139) = v2;
  return result;
}

double QUICConnectionImplementation.init()()
{
  v1 = v0;
  *(v0 + 139) = 0;
  type metadata accessor for FlowControlConnection();
  swift_allocObject();
  v2 = sub_18221249C(0, 63, 0xE100000000000000);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 144) = v2;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = v3;
  *(v0 + 224) = 0;
  *(v0 + 232) = 1;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = sub_18225ACB8(v3);
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  type metadata accessor for Timer();
  swift_allocObject();
  *(v0 + 320) = sub_181F8A188();
  type metadata accessor for Ack();
  swift_allocObject();
  *(v0 + 328) = sub_18229C954(0, 0);
  *(v0 + 336) = 0;
  *(v0 + 344) = 0;
  type metadata accessor for Recovery();
  swift_allocObject();
  *(v0 + 352) = sub_181FF468C(0, 0);
  type metadata accessor for Crypto();
  swift_allocObject();
  *(v0 + 360) = sub_182034B64();
  *(v0 + 368) = 0;
  strcpy((v0 + 384), "unidirectional");
  *(v0 + 399) = -18;
  *(v0 + 400) = 1;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0;
  *(v0 + 448) = 1;
  *(v0 + 456) = 0;
  *(v0 + 464) = 1;
  *(v0 + 472) = 0;
  *(v0 + 480) = 1;
  *(v0 + 488) = 0;
  *(v0 + 496) = 1;
  LOBYTE(v12) = 1;
  LOBYTE(v20[0]) = 1;
  LOBYTE(v19[0]) = 1;
  LOBYTE(v18[0]) = 1;
  *(v0 + 504) = v3;
  strcpy((v0 + 512), "bidirectional");
  *(v0 + 526) = -4864;
  *(v0 + 528) = 0;
  *(v0 + 529) = *v17;
  *(v0 + 532) = *&v17[3];
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  *(v0 + 568) = 0;
  *(v0 + 576) = 1;
  *(v0 + 577) = *v16;
  *(v0 + 580) = *&v16[3];
  *(v0 + 584) = 0;
  *(v0 + 592) = 1;
  v4 = *v15;
  *(v0 + 596) = *&v15[3];
  *(v0 + 593) = v4;
  *(v0 + 600) = 0;
  *(v0 + 608) = 1;
  v5 = *v14;
  *(v0 + 612) = *&v14[3];
  *(v0 + 609) = v5;
  *(v0 + 616) = 0;
  *(v0 + 624) = 1;
  v6 = *v13;
  *(v0 + 628) = *&v13[3];
  *(v0 + 625) = v6;
  *(v0 + 632) = v3;
  *(v0 + 640) = v3;
  *(v0 + 648) = "sendableList()";
  *(v0 + 656) = 14;
  *(v0 + 664) = 2;
  v7 = v18[0];
  *(v0 + 668) = *(v18 + 3);
  *(v0 + 665) = v7;
  *(v0 + 672) = sub_182026528;
  *(v0 + 680) = 0;
  *(v0 + 688) = sub_18202653C;
  *(v0 + 696) = 0;
  *(v0 + 704) = sub_18202654C;
  *(v0 + 712) = 0;
  *(v0 + 720) = sub_182026560;
  *(v0 + 728) = 0;
  *(v0 + 736) = v3;
  *(v0 + 744) = v3;
  *(v0 + 752) = "pendingReassemblyDequeueList()";
  *(v0 + 760) = 30;
  *(v0 + 768) = 2;
  v8 = v19[0];
  *(v0 + 772) = *(v19 + 3);
  *(v0 + 769) = v8;
  *(v0 + 776) = sub_1820264E4;
  *(v0 + 784) = 0;
  *(v0 + 792) = sub_1820264F8;
  *(v0 + 800) = 0;
  *(v0 + 808) = sub_182026508;
  *(v0 + 816) = 0;
  *(v0 + 824) = sub_18202651C;
  *(v0 + 832) = 0;
  *(v0 + 840) = v3;
  *(v0 + 848) = "unblockedSendStreamList()";
  *(v0 + 856) = 25;
  *(v0 + 864) = 2;
  v9 = v20[0];
  *(v0 + 868) = *(v20 + 3);
  *(v0 + 865) = v9;
  *(v0 + 872) = sub_18202656C;
  *(v0 + 880) = 0;
  *(v0 + 888) = sub_182026580;
  *(v0 + 896) = 0;
  *(v0 + 904) = sub_182026590;
  *(v0 + 912) = 0;
  *(v0 + 920) = sub_1820265A4;
  *(v0 + 928) = 0;
  *(v0 + 936) = MEMORY[0x1E69E7CC8];
  *(v0 + 944) = 0u;
  *(v0 + 960) = v3;
  *(v0 + 968) = 1200;
  *(v0 + 976) = 256;
  *(v0 + 978) = 1;
  *(v0 + 1027) = 0u;
  *(v0 + 1000) = 0u;
  *(v0 + 1016) = 0u;
  *(v0 + 984) = 0u;
  *(v0 + 1048) = 1;
  *(v0 + 1115) = 0u;
  *(v0 + 1104) = 0u;
  *(v0 + 1088) = 0u;
  *(v0 + 1072) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1144) = 0u;
  *(v0 + 1160) = -1;
  *(v0 + 1168) = 0;
  *(v0 + 1176) = -1;
  *(v0 + 1184) = 0;
  *(v0 + 1192) = 1;
  *(v0 + 1196) = 0;
  *(v0 + 1200) = 1;
  type metadata accessor for PacketBuilder();
  swift_allocObject();
  *(v0 + 296) = sub_181F82DDC(1);
  sub_1822C3318(8, &v12);
  v10 = v12;
  *(v1 + 1136) = v12;
  v12 = v10;
  type metadata accessor for Protector();
  swift_allocObject();

  *(v1 + 376) = sub_18223E444(1, &v12);

  return DefaultManyToManyProtocol.init()();
}

Swift::Void __swiftcall QUICConnectionImplementation.initialize(isServer:)(Swift::Bool isServer)
{
  v2 = v1;
  *(v1 + 1024) = isServer;
  if (isServer)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  LOBYTE(v14) = 1;
  swift_beginAccess();
  sub_18203BF4C(&v14);
  swift_endAccess();
  sub_1822C3318(v4, v16);
  v5 = v16[0];
  v13 = 0;
  v14 = 0;
  v15 = 1;
  swift_beginAccess();
  v6 = sub_18213F4CC(v1, &v14, &v13, 0, 1, 0);
  swift_endAccess();
  v2[119] = v6;

  if (!v2[119])
  {
    goto LABEL_10;
  }

  v16[0] = v5;

  sub_18213FDA4(v16, v2);

  v7 = v2[119];
  if (!isServer)
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    v16[0] = v2[142];

    sub_1821406C0(v16, v2);

    v7 = v2[119];
  }

  if (v7)
  {

    sub_18203CBF8(v7);

    type metadata accessor for Timer();
    v8 = swift_allocObject();
    *(v8 + 56) = 1;
    *(v8 + 58) = 0;
    *(v8 + 64) = MEMORY[0x1E69E7CC0];
    *(v8 + 72) = 0;
    *(v8 + 80) = 0;
    *(v8 + 40) = &type metadata for TimerManyToManyBackend;
    *(v8 + 48) = &off_1EEF9CCF8;
    *(v8 + 16) = v2;
    v2[40] = v8;
    swift_retain_n();

    v9 = sub_181F8A310(4932417, 0xE300000000000000, 0, sub_182064A50, v2, 1);

    type metadata accessor for Ack();
    swift_allocObject();

    v2[41] = sub_18229C954(v10, v9);

    v11 = sub_181F8A310(0x797265766F636552, 0xE800000000000000, 0, sub_182064A54, v2, 1);

    type metadata accessor for Recovery();
    swift_allocObject();

    v2[44] = sub_181FF468C(v12, v11);

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_18203CBF8(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = *(v1 + 968);
    if (v3 < 1200)
    {
      v4 = 1200;
      *(result + 1072) = 1200;
    }

    else
    {
      v4 = *(result + 1080);
      v5 = v4 > 1200 && v4 < v3;
      if (v5 || (v4 = *(result + 1064), v3 < v4))
      {
        *(result + 1072) = v4;
      }

      else
      {
        *(result + 1072) = v3;
        v4 = v3;
      }
    }

    v6 = *(result + 912);
    v81[10] = *(result + 896);
    v81[11] = v6;
    v81[12] = *(result + 928);
    v82 = *(result + 944);
    v7 = *(result + 848);
    v81[6] = *(result + 832);
    v81[7] = v7;
    v8 = *(result + 880);
    v81[8] = *(result + 864);
    v81[9] = v8;
    v9 = *(result + 784);
    v81[2] = *(result + 768);
    v81[3] = v9;
    v10 = *(result + 816);
    v81[4] = *(result + 800);
    v81[5] = v10;
    v11 = *(result + 752);
    v81[0] = *(result + 736);
    v81[1] = v11;
    result = sub_182015D6C(v81);
    if (result != 1)
    {
      v12 = *(v2 + 912);
      v13 = *(v2 + 880);
      v63 = *(v2 + 896);
      v64 = v12;
      v14 = *(v2 + 912);
      v65 = *(v2 + 928);
      v15 = *(v2 + 848);
      v16 = *(v2 + 816);
      v59 = *(v2 + 832);
      v60 = v15;
      v17 = *(v2 + 848);
      v18 = *(v2 + 880);
      v61 = *(v2 + 864);
      v62 = v18;
      v19 = *(v2 + 784);
      v20 = *(v2 + 752);
      v55 = *(v2 + 768);
      v56 = v19;
      v21 = *(v2 + 784);
      v22 = *(v2 + 816);
      v57 = *(v2 + 800);
      v58 = v22;
      v23 = *(v2 + 752);
      v54[0] = *(v2 + 736);
      v54[1] = v23;
      v77 = v63;
      v78 = v14;
      v79 = *(v2 + 928);
      v73 = v59;
      v74 = v17;
      v75 = v61;
      v76 = v13;
      v69 = v55;
      v70 = v21;
      v71 = v57;
      v72 = v16;
      v66 = *(v2 + 944);
      v80 = *(v2 + 944);
      v67 = v54[0];
      v68 = v20;
      result = sub_182015D6C(&v67);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v93 = v77;
        v94 = v78;
        v95 = v79;
        v89 = v73;
        v90 = v74;
        v91 = v75;
        v92 = v76;
        v85 = v69;
        v86 = v70;
        v87 = v71;
        v88 = v72;
        v83 = v67;
        v96 = v80;
        v84 = v68;

        sub_181AB5D28(v54, v52, &qword_1EA839B88, &unk_182AF06B0);
        sub_182284EBC(v4, v36);
        sub_181F49A88(v54, &qword_1EA839B88, &unk_182AF06B0);
        v48 = v36[10];
        v49 = v36[11];
        v50 = v36[12];
        v51 = v37;
        v44 = v36[6];
        v45 = v36[7];
        v46 = v36[8];
        v47 = v36[9];
        v40 = v36[2];
        v41 = v36[3];
        v42 = v36[4];
        v43 = v36[5];
        v38 = v36[0];
        v39 = v36[1];
        nullsub_41();
        v24 = *(v2 + 912);
        v52[10] = *(v2 + 896);
        v52[11] = v24;
        v52[12] = *(v2 + 928);
        v53 = *(v2 + 944);
        v25 = *(v2 + 848);
        v52[6] = *(v2 + 832);
        v52[7] = v25;
        v26 = *(v2 + 880);
        v52[8] = *(v2 + 864);
        v52[9] = v26;
        v27 = *(v2 + 784);
        v52[2] = *(v2 + 768);
        v52[3] = v27;
        v28 = *(v2 + 816);
        v52[4] = *(v2 + 800);
        v52[5] = v28;
        v29 = *(v2 + 752);
        v52[0] = *(v2 + 736);
        v52[1] = v29;
        v30 = v49;
        *(v2 + 896) = v48;
        *(v2 + 912) = v30;
        *(v2 + 928) = v50;
        *(v2 + 944) = v51;
        v31 = v45;
        *(v2 + 832) = v44;
        *(v2 + 848) = v31;
        v32 = v47;
        *(v2 + 864) = v46;
        *(v2 + 880) = v32;
        v33 = v41;
        *(v2 + 768) = v40;
        *(v2 + 784) = v33;
        v34 = v43;
        *(v2 + 800) = v42;
        *(v2 + 816) = v34;
        v35 = v39;
        *(v2 + 736) = v38;
        *(v2 + 752) = v35;
        sub_181F49A88(v52, &qword_1EA839B88, &unk_182AF06B0);
      }
    }
  }

  return result;
}

uint64_t sub_18203CF0C()
{
  v1 = v0;
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = qword_1EA837250;

  if (v4 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843418);
    v11 = swift_allocObject();
    *(v11 + 16) = "ackTimer()";
    *(v11 + 24) = 10;
    *(v11 + 32) = 2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F8C724;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = 0xD000000000000017;
    *(v14 + 24) = 0x8000000182BDC360;

    oslog = sub_182AD2678();
    v29 = sub_182AD38A8();
    v31 = swift_allocObject();
    *(v31 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_18206B168;
    *(v15 + 24) = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C718;
    *(v16 + 24) = v15;
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v17 = swift_allocObject();
    *(v17 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_181F8C720;
    *(v18 + 24) = v13;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_181F8C718;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = 32;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C720;
    *(v22 + 24) = v14;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_181F8C718;
    *(v23 + 24) = v22;
    if (os_log_type_enabled(oslog, v29))
    {
      v27 = v16;
      v28 = v19;
      v24 = v17;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 770;
      v37 = 0;
      v38 = v25 + 2;
      v34 = sub_181F8C728;
      v35 = v31;
      v36 = v26;
      sub_181F73AE0(&v34, &v38, &v37, &v36);

      v34 = sub_181F8C728;
      v35 = v30;
      sub_181F73AE0(&v34, &v38, &v37, &v36);

      v34 = sub_181F8C714;
      v35 = v27;
      sub_181F73AE0(&v34, &v38, &v37, &v36);

      v34 = sub_181F8C728;
      v35 = v32;
      sub_181F73AE0(&v34, &v38, &v37, &v36);

      v34 = sub_181F8C728;
      v35 = v24;
      sub_181F73AE0(&v34, &v38, &v37, &v36);

      v34 = sub_181F8C714;
      v35 = v28;
      sub_181F73AE0(&v34, &v38, &v37, &v36);

      v34 = sub_181F8C728;
      v35 = v20;
      sub_181F73AE0(&v34, &v38, &v37, &v36);

      v34 = sub_181F8C728;
      v35 = v21;
      sub_181F73AE0(&v34, &v38, &v37, &v36);

      v34 = sub_181F8C714;
      v35 = v23;
      sub_181F73AE0(&v34, &v38, &v37, &v36);

      _os_log_impl(&dword_181A37000, oslog, v29, "%s %s %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v26, -1, -1);
      MEMORY[0x1865DF520](v25, -1, -1);

      goto LABEL_6;
    }
  }

LABEL_6:
  v5 = *(v1 + 296);
  v6 = *(v1 + 344);
  v34 = *(v1 + 336);
  LOBYTE(v35) = v6;

  v7 = sub_18229859C(v1, v5, &v34);

  if ((v7 & 1) != 0 && *(v1 + 952))
  {

    sub_182047340(v9, 0, 0);
  }

  return result;
}

uint64_t sub_18203D730()
{
  v1 = v0;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843418);
    v4 = swift_allocObject();
    *(v4 + 16) = "recoveryTimer()";
    *(v4 + 24) = 15;
    *(v4 + 32) = 2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_181F8C724;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = 1564427099;
    *(v6 + 24) = 0xE400000000000000;
    v7 = swift_allocObject();
    *(v7 + 16) = 0xD000000000000014;
    *(v7 + 24) = 0x8000000182BDC340;
    oslog = sub_182AD2678();
    v24 = sub_182AD38A8();
    v23 = swift_allocObject();
    *(v23 + 16) = 32;
    v8 = swift_allocObject();
    *(v8 + 16) = 8;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_18206B168;
    *(v9 + 24) = v5;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_181F8C718;
    *(v10 + 24) = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = 32;
    v12 = swift_allocObject();
    *(v12 + 16) = 8;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_181F8C720;
    *(v13 + 24) = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_181F8C718;
    *(v14 + 24) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = 32;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C720;
    *(v16 + 24) = v7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_181F8C718;
    *(v17 + 24) = v16;
    if (os_log_type_enabled(oslog, v24))
    {
      v20 = v11;
      v21 = v14;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28 = v19;
      v29 = 0;
      *v18 = 770;
      v30 = v18 + 2;
      v26 = sub_181F8C728;
      v27 = v23;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C728;
      v27 = v8;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C714;
      v27 = v10;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C728;
      v27 = v20;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C728;
      v27 = v12;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C714;
      v27 = v21;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C728;
      v27 = v15;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C728;
      v27 = v25;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C714;
      v27 = v17;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      _os_log_impl(&dword_181A37000, oslog, v24, "%s %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v19, -1, -1);
      MEMORY[0x1865DF520](v18, -1, -1);
    }

    else
    {
    }
  }

  sub_18200CE20(v1);
}

void sub_18203DE78(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 80);
  v4 = &unk_1EA837000;
  if (v3)
  {
    *&v40 = 15;
    *(&v40 + 1) = v3;
    v41 = 0;
    v42 = 0;
    v44 = 0;
    v45 = 0;
    v43 = 0x7800000000000000;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = v1[36];
    v1[36] = 0x8000000000000000;
    sub_182258A90(&v40, 15, isUniquelyReferenced_nonNull_native);
    v1[36] = v37[0];
    swift_endAccess();
    v7 = v1[10];
    v6 = v1[11];
    *&v38[0] = 0;
    *(&v38[0] + 1) = 0xE000000000000000;

    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BDC2B0);
    v8 = *(v3 + 16);

    v37[0] = v8;
    v9 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v9);

    MEMORY[0x1865D9CA0](0xD00000000000001FLL, 0x8000000182BDC290);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843418);

    v11 = sub_182AD2678();
    v12 = sub_182AD3898();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v38[0] = v35;
      *v13 = 136315650;
      v14 = sub_182AD3BF8();
      v16 = sub_181C64FFC(v14, v15, v38);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = sub_181C64FFC(v7, v6, v38);

      *(v13 + 14) = v17;
      *(v13 + 22) = 2080;
      v18 = sub_181C64FFC(0, 0xE000000000000000, v38);

      *(v13 + 24) = v18;
      _os_log_impl(&dword_181A37000, v11, v12, "%s %s %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v35, -1, -1);
      v19 = v13;
      v4 = &unk_1EA837000;
      MEMORY[0x1865DF520](v19, -1, -1);
    }

    else
    {
    }
  }

  if (*(v2 + 1024) == 1)
  {
    v20 = v2[142];
    *&v38[0] = 0;
    *(&v38[0] + 1) = v20;
    memset(&v38[1], 0, 32);
    v39 = 0;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v36 = v2[36];
    v2[36] = 0x8000000000000000;
    sub_182258A90(v38, 0, v21);
    v2[36] = v36;
    swift_endAccess();

    v23 = v2[10];
    v22 = v2[11];
    v37[0] = 0;
    v37[1] = 0xE000000000000000;

    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BDC270);
    v24 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v24);

    MEMORY[0x1865D9CA0](0xD00000000000001FLL, 0x8000000182BDC290);
    if (v4[73] != -1)
    {
      swift_once();
    }

    v25 = sub_182AD2698();
    __swift_project_value_buffer(v25, qword_1EA843418);

    v26 = sub_182AD2678();
    v27 = sub_182AD3898();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37[0] = v29;
      *v28 = 136315650;
      v30 = sub_182AD3BF8();
      v32 = sub_181C64FFC(v30, v31, v37);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = sub_181C64FFC(v23, v22, v37);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      v34 = sub_181C64FFC(0, 0xE000000000000000, v37);

      *(v28 + 24) = v34;
      _os_log_impl(&dword_181A37000, v26, v27, "%s %s %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v29, -1, -1);
      MEMORY[0x1865DF520](v28, -1, -1);
    }

    else
    {
    }
  }
}

void sub_18203E478(unint64_t a1)
{
  v2 = v1;
  v41 = xmmword_182AF01D0;
  v42 = 0;
  v43 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0x7000000000000000;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v29 = v1[36];
  v1[36] = 0x8000000000000000;
  sub_182258A90(&v41, 14, isUniquelyReferenced_nonNull_native);
  v1[36] = v29;
  swift_endAccess();
  v6 = v1[10];
  v5 = v1[11];
  v7 = qword_1EA837248;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_182AD2698();
  __swift_project_value_buffer(v8, qword_1EA843418);

  v9 = sub_182AD2678();
  v10 = sub_182AD3898();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v35 = v12;
    *v11 = 136315650;
    v13 = sub_182AD3BF8();
    v15 = sub_181C64FFC(v13, v14, &v35);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = sub_181C64FFC(v6, v5, &v35);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_181C64FFC(0xD000000000000025, 0x8000000182BDC300, &v35);
    _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v12, -1, -1);
    MEMORY[0x1865DF520](v11, -1, -1);
  }

  else
  {
  }

  if (*(v2 + 1024) == 1)
  {
    swift_beginAccess();
    v2[73] = 0;
    *(v2 + 592) = 0;
    swift_beginAccess();
    v17 = 58;
    v18 = 2;
    v19 = 57;
  }

  else
  {
    swift_beginAccess();
    v2[57] = 1;
    *(v2 + 464) = 0;
    swift_beginAccess();
    v17 = 74;
    v18 = 3;
    v19 = 73;
  }

  v2[v19] = v18;
  LOBYTE(v2[v17]) = 0;
  v20 = *(*a1 + 128);
  swift_beginAccess();
  v21 = *(a1 + v20);
  if (v21)
  {
    swift_beginAccess();
    LODWORD(v22) = *(*(v21 + 48) + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxUDPPayloadSize);
    if (v22 >= 0xFFF7)
    {
      LODWORD(v22) = 65527;
    }

    if (v22 <= 0x4B0)
    {
      v22 = 1200;
    }

    else
    {
      v22 = v22;
    }

    *&v35 = 3;
    *(&v35 + 1) = v22;
    v36 = 0;
    v37 = 0;
    v39 = 0;
    v40 = 0;
    v38 = 0x1800000000000000;
    swift_beginAccess();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v28 = v2[36];
    v2[36] = 0x8000000000000000;
    sub_182258A90(&v35, 3, v23);
    v2[36] = v28;
    swift_endAccess();
    v24 = *(a1 + v20);
    if (v24)
    {
      swift_beginAccess();
      v25 = *(*(v24 + 48) + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions__maxDatagramFrameSize);
      *&v29 = 17;
      *(&v29 + 1) = v25;
      v30 = 0;
      v31 = 0;
      v33 = 0;
      v34 = 0;
      v32 = 0x8800000000000000;
      swift_beginAccess();
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v27 = v2[36];
      v2[36] = 0x8000000000000000;
      sub_182258A90(&v29, 17, v26);
      v2[36] = v27;
      swift_endAccess();
    }
  }

  sub_18203E8EC(a1);
  sub_182065328();
}

uint64_t sub_18203E8EC(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(*a1 + 128);
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    swift_beginAccess();
    v6 = *(*(v5 + 48) + 16);
    if (v6 != -1)
    {
      *&v46 = 4;
      *(&v46 + 1) = v6;
      v47 = 0;
      v48 = 0;
      v50 = 0;
      v51 = 0;
      v49 = 0x2000000000000000;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34 = *(v2 + 288);
      *(v2 + 288) = 0x8000000000000000;
      sub_182258A90(&v46, 4, isUniquelyReferenced_nonNull_native);
      *(v2 + 288) = v34;
      swift_endAccess();
      goto LABEL_6;
    }
  }

  if (qword_1EA837210 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v6 = qword_1EA8433C8;
    if (qword_1EA8433C8 < 0)
    {
      __break(1u);
LABEL_20:
      result = swift_once();
      goto LABEL_10;
    }

LABEL_6:
    *&v40 = 4;
    *(&v40 + 1) = v6;
    v41 = 0;
    v42 = 0;
    v44 = 0;
    v45 = 0;
    v43 = 0x2000000000000000;
    swift_beginAccess();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    *&v28 = *(v2 + 288);
    *(v2 + 288) = 0x8000000000000000;
    sub_182258A90(&v40, 4, v8);
    *(v2 + 288) = v28;
    result = swift_endAccess();
    v10 = *(v3 + v4);
    if (v10)
    {
      result = swift_beginAccess();
      v3 = *(*(v10 + 48) + 24);
      if (v3 != -1)
      {
        *&v34 = 5;
        *(&v34 + 1) = v3;
        v35 = 0;
        v36 = 0;
        v38 = 0;
        v39 = 0;
        v37 = 0x2800000000000000;
        swift_beginAccess();
        v11 = swift_isUniquelyReferenced_nonNull_native();
        *&v22 = *(v2 + 288);
        *(v2 + 288) = 0x8000000000000000;
        sub_182258A90(&v34, 5, v11);
        *(v2 + 288) = v22;
        swift_endAccess();
        goto LABEL_11;
      }
    }

    if (qword_1EA837210 != -1)
    {
      goto LABEL_20;
    }

LABEL_10:
    v3 = xmmword_1EA8433B0;
    if ((xmmword_1EA8433B0 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_11:
    *&v28 = 5;
    *(&v28 + 1) = v3;
    v29 = 0;
    v30 = 0;
    v32 = 0;
    v33 = 0;
    v31 = 0x2800000000000000;
    swift_beginAccess();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *&v16 = *(v2 + 288);
    *(v2 + 288) = 0x8000000000000000;
    sub_182258A90(&v28, 5, v12);
    *(v2 + 288) = v16;
    swift_endAccess();
    if (qword_1EA837210 != -1)
    {
      swift_once();
    }

    if ((*(&xmmword_1EA8433B0 + 1) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      *&v22 = 6;
      *(&v22 + 1) = *(&xmmword_1EA8433B0 + 1);
      v23 = 0;
      v24 = 0;
      v26 = 0;
      v27 = 0;
      v25 = 0x3000000000000000;
      swift_beginAccess();
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *&v16 = *(v2 + 288);
      v3 = 0x8000000000000000;
      *(v2 + 288) = 0x8000000000000000;
      sub_182258A90(&v22, 6, v13);
      *(v2 + 288) = v16;
      if ((qword_1EA8433C0 & 0x8000000000000000) == 0)
      {
        *&v16 = 7;
        *(&v16 + 1) = qword_1EA8433C0;
        v17 = 0;
        v18 = 0;
        v20 = 0;
        v21 = 0;
        v19 = 0x3800000000000000;
        v14 = swift_isUniquelyReferenced_nonNull_native();
        v15 = *(v2 + 288);
        *(v2 + 288) = 0x8000000000000000;
        sub_182258A90(&v16, 7, v14);
        *(v2 + 288) = v15;
        return swift_endAccess();
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  __break(1u);
  return result;
}

void QUICConnectionImplementation.pathChanged(path:event:isPrimary:)(uint64_t *a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a2;
  v10 = *(v3 + 80);
  v9 = *(v3 + 88);
  v11 = qword_1EA837250;

  if (v11 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    sub_182AD3BA8();

    v40 = 0x2068746150;
    v41 = 0xE500000000000000;
    if (v7)
    {
      v12 = 0xE400000000000000;
      v13 = 1701736270;
    }

    else
    {
      sub_181F7D8D8();
      v13 = sub_182AD3A88();
      v12 = v14;
    }

    MEMORY[0x1865D9CA0](v13, v12);

    MEMORY[0x1865D9CA0](0x6465676E61686320, 0xEC000000206F7420);
    v15 = 0xEB00000000656C62;
    v16 = 0x616C696176616E75;
    if (v8 != 1)
    {
      v16 = 0x73696C6261747365;
      v15 = 0xEB00000000646568;
    }

    if (v8)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0x6C62616C69617661;
    }

    if (v8)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0xE900000000000065;
    }

    MEMORY[0x1865D9CA0](v17, v18);

    MEMORY[0x1865D9CA0](0x72616D697270202CLL, 0xEB00000000203A79);
    if (a3)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (a3)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    MEMORY[0x1865D9CA0](v19, v20);

    v21 = v40;
    v22 = v41;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v23 = sub_182AD2698();
    __swift_project_value_buffer(v23, qword_1EA843418);

    v24 = sub_182AD2678();
    v25 = sub_182AD38A8();

    if (os_log_type_enabled(v24, v25))
    {
      v39 = a3;
      v26 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v26 = 136315650;
      v27 = sub_182AD3BF8();
      v36 = v21;
      v37 = v25;
      v29 = v7;
      v30 = v6;
      v31 = sub_181C64FFC(v27, v28, &v40);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = sub_181C64FFC(v10, v9, &v40);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2080;
      v6 = v30;
      v7 = v29;
      v33 = sub_181C64FFC(v36, v22, &v40);

      *(v26 + 24) = v33;
      _os_log_impl(&dword_181A37000, v24, v37, "%s %s %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v38, -1, -1);
      v34 = v26;
      a3 = v39;
      MEMORY[0x1865DF520](v34, -1, -1);

      v35 = *(v4 + 952);
      if (!v35)
      {
        return;
      }

      goto LABEL_28;
    }
  }

  v35 = *(v4 + 952);
  if (!v35)
  {
    return;
  }

LABEL_28:
  if ((a3 & 1) != 0 && *(v35 + 32) == 1)
  {
    *(v35 + 24) = v6;
    *(v35 + 32) = v7;
  }
}

uint64_t QUICConnectionImplementation.start(flow:isServer:)(uint64_t a1, char a2)
{
  v3 = v2;
  v7 = *(v2 + 80);
  v6 = *(v2 + 88);
  v8 = qword_1EA837250;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = 0xE900000000000073;
  v10 = 0x776F6C46206C6C41;
  if (byte_1EA843430 == 1)
  {
    v99[0] = 0;
    v99[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BDA100);
    v85 = a1;
    if (a1)
    {
      v11 = sub_182AD2F38();
      v9 = v12;
    }

    else
    {
      v11 = 0x776F6C46206C6C41;
    }

    MEMORY[0x1865D9CA0](v11, v9);

    MEMORY[0x1865D9CA0](0x7672655373692820, 0xEC000000203A7265);
    if (a2)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (a2)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    MEMORY[0x1865D9CA0](v13, v14);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v15 = v99[0];
    v16 = v99[1];
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v17 = sub_182AD2698();
    __swift_project_value_buffer(v17, qword_1EA843418);

    v18 = sub_182AD2678();
    v19 = sub_182AD38A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v84 = a2;
      v83 = swift_slowAlloc();
      v99[0] = v83;
      *v20 = 136315650;
      v21 = sub_182AD3BF8();
      v23 = v15;
      v24 = sub_181C64FFC(v21, v22, v99);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_181C64FFC(v7, v6, v99);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2080;
      v26 = sub_181C64FFC(v23, v16, v99);

      *(v20 + 24) = v26;
      _os_log_impl(&dword_181A37000, v18, v19, "%s %s %s", v20, 0x20u);
      swift_arrayDestroy();
      a2 = v84;
      MEMORY[0x1865DF520](v83, -1, -1);
      MEMORY[0x1865DF520](v20, -1, -1);
    }

    else
    {
    }

    v9 = 0xE900000000000073;
    v10 = 0x776F6C46206C6C41;
    a1 = v85;
  }

  else
  {
  }

  swift_beginAccess();
  v27 = *(v3 + 40);
  if (*(v27 + 16) && (v28 = sub_18224EEF0(a1), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);

    if (a2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v30 = 0;
    if (a2)
    {
      goto LABEL_32;
    }
  }

  if (!v30)
  {
    v32 = *(v3 + 80);
    v31 = *(v3 + 88);
    v99[0] = 0;
    v99[1] = 0xE000000000000000;

    sub_182AD3BA8();

    v99[0] = 0xD000000000000026;
    v99[1] = 0x8000000182BDA090;
    if (a1)
    {
      v10 = sub_182AD2F38();
      v9 = v33;
    }

    MEMORY[0x1865D9CA0](v10, v9);

    v34 = v99[0];
    v35 = v99[1];
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v36 = sub_182AD2698();
    __swift_project_value_buffer(v36, qword_1EA843418);

    v37 = sub_182AD2678();
    v38 = sub_182AD38B8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v99[0] = v40;
      *v39 = 136315650;
      v41 = sub_182AD3BF8();
      v43 = sub_181C64FFC(v41, v42, v99);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = sub_181C64FFC(v32, v31, v99);

      *(v39 + 14) = v44;
      *(v39 + 22) = 2080;
      v45 = sub_181C64FFC(v34, v35, v99);

      *(v39 + 24) = v45;
      _os_log_impl(&dword_181A37000, v37, v38, "%s %s %s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v40, -1, -1);
      MEMORY[0x1865DF520](v39, -1, -1);
    }

    else
    {
    }

    return 0;
  }

LABEL_32:
  *(v3 + 1024) = a2 & 1;
  sub_182169FD4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_182064A58(__dst) == 1 || (memcpy(v99, __dst, 0x188uLL), v46 = sub_182053A10(v99, a1), sub_181F49A88(__src, &qword_1EA839BE8, &unk_182AF0250), !v46))
  {
    v52 = *(v3 + 80);
    v51 = *(v3 + 88);
    v53 = qword_1EA837248;

    if (v53 != -1)
    {
      swift_once();
    }

    v54 = sub_182AD2698();
    __swift_project_value_buffer(v54, qword_1EA843418);

    v55 = sub_182AD2678();
    v56 = sub_182AD38B8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v92 = v58;
      *v57 = 136315650;
      v59 = sub_182AD3BF8();
      v61 = sub_181C64FFC(v59, v60, &v92);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = sub_181C64FFC(v52, v51, &v92);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2080;
      *(v57 + 24) = sub_181C64FFC(0xD00000000000001BLL, 0x8000000182BDA0C0, &v92);
      _os_log_impl(&dword_181A37000, v55, v56, "%s %s %s", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v58, -1, -1);
      MEMORY[0x1865DF520](v57, -1, -1);
    }

    else
    {
    }

LABEL_47:

    return 0;
  }

  v47 = *(*v46 + 128);
  swift_beginAccess();
  v48 = *(v46 + v47);
  if (v48)
  {
    if (a2)
    {
      swift_beginAccess();
      *(v3 + 1037) = (*(*(v48 + 48) + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags) & 8) != 0;
    }

    swift_beginAccess();
    v49 = *(*(v48 + 48) + OBJC_IVAR____TtCV7Network22QUICConnectionProtocol21QUICConnectionOptions_flags);
    *(v3 + 1126) = (v49 & 0x40) != 0;
    *(v3 + 1127) = (v49 & 0x80) != 0;
    *(v3 + 1128) = (v49 & 0x20) != 0;
  }

  sub_18203E478(v46);
  if (v30)
  {
    if ((a2 & 1) == 0)
    {

      sub_18203FD1C(v50, v46);

      goto LABEL_52;
    }

LABEL_50:
    if (*(v3 + 1048) == 1)
    {
      v64 = v3 + 1048;
      ProtocolOptions<>.tlsOptions.getter(&v87);

      v65 = *(v64 + 48);
      v94 = *(v64 + 32);
      v95 = v65;
      v96 = *(v64 + 64);
      v66 = *(v64 + 16);
      v92 = *v64;
      v93 = v66;
      v67 = v90;
      *(v64 + 32) = v89;
      *(v64 + 48) = v67;
      *(v64 + 64) = v91;
      v68 = v88;
      *v64 = v87;
      *(v64 + 16) = v68;
      sub_181F49A88(&v92, &qword_1EA839BF0, &qword_182AECC10);
      return 1;
    }

    goto LABEL_57;
  }

  if (a2)
  {
    goto LABEL_50;
  }

LABEL_52:
  swift_beginAccess();
  if (*(v3 + 139) == 1)
  {
    if (*(v3 + 952))
    {

      sub_18203DE78(v69);
    }

    ProtocolOptions<>.tlsOptions.getter(&v87);
    v70 = sub_182034CF8(v3, &v87);

    v94 = v89;
    v95 = v90;
    v96 = v91;
    v92 = v87;
    v93 = v88;
    sub_182064A70(&v92);
    if (v70)
    {
      v86 = 6;
      swift_beginAccess();
      sub_18203BF4C(&v86);
      swift_endAccess();
      goto LABEL_57;
    }

    v72 = *(v3 + 80);
    v71 = *(v3 + 88);
    v73 = qword_1EA837248;

    if (v73 != -1)
    {
      swift_once();
    }

    v74 = sub_182AD2698();
    __swift_project_value_buffer(v74, qword_1EA843418);

    v75 = sub_182AD2678();
    v76 = sub_182AD38B8();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v87 = v78;
      *v77 = 136315650;
      v79 = sub_182AD3BF8();
      v81 = sub_181C64FFC(v79, v80, &v87);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2080;
      v82 = sub_181C64FFC(v72, v71, &v87);

      *(v77 + 14) = v82;
      *(v77 + 22) = 2080;
      *(v77 + 24) = sub_181C64FFC(0xD00000000000001ALL, 0x8000000182BDA0E0, &v87);
      _os_log_impl(&dword_181A37000, v75, v76, "%s %s %s", v77, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v78, -1, -1);
      MEMORY[0x1865DF520](v77, -1, -1);
    }

    else
    {
    }

    goto LABEL_47;
  }

LABEL_57:

  return 1;
}

void sub_18203FD1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 + 112);
  swift_beginAccess();
  v7 = *(v2 + 40);
  if (*(v7 + 16))
  {
    v8 = sub_18224EEF0(v6);
    if (v9)
    {
      if (*(*(*(v7 + 56) + 8 * v8) + 16))
      {
        v11 = *(v3 + 80);
        v10 = *(v3 + 88);

        sub_182AD3BA8();

        *&v225 = 0xD000000000000029;
        *(&v225 + 1) = 0x8000000182BDC1B0;
        if (v6)
        {
          v12 = sub_182AD2F38();
          v14 = v13;
        }

        else
        {
          v12 = 0x776F6C46206C6C41;
          v14 = 0xE900000000000073;
        }

        MEMORY[0x1865D9CA0](v12, v14);

        v27 = v225;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v28 = sub_182AD2698();
        __swift_project_value_buffer(v28, qword_1EA843418);

        v29 = sub_182AD2678();
        v30 = sub_182AD38B8();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *&v225 = v32;
          *v31 = 136315650;
          v33 = sub_182AD3BF8();
          v35 = sub_181C64FFC(v33, v34, &v225);

          *(v31 + 4) = v35;
          *(v31 + 12) = 2080;
          v36 = sub_181C64FFC(v11, v10, &v225);

          *(v31 + 14) = v36;
          *(v31 + 22) = 2080;
          v37 = sub_181C64FFC(v27, *(&v27 + 1), &v225);

          *(v31 + 24) = v37;
          _os_log_impl(&dword_181A37000, v29, v30, "%s %s %s", v31, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v32, -1, -1);
          MEMORY[0x1865DF520](v31, -1, -1);
        }

        else
        {
        }

        return;
      }
    }
  }

  v15 = *(*a2 + 128);
  swift_beginAccess();
  v16 = *(a2 + v15);
  if (!v16)
  {
    return;
  }

  v17 = *(v16 + 64);
  if ((v17 & 2) != 0)
  {

    sub_18204EED4(a1, v16);
    goto LABEL_134;
  }

  v18 = *(v3 + 80);
  v19 = *(v3 + 88);
  v20 = qword_1EA837250;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = 0xE900000000000073;
  v22 = 0xD000000000000017;
  v23 = 0x776F6C46206C6C41;
  LODWORD(v223) = byte_1EA843430;
  if (byte_1EA843430 == 1)
  {
    v222 = v18;
    sub_182AD3BA8();

    *&v225 = 0xD000000000000019;
    *(&v225 + 1) = 0x8000000182BDC190;
    if (v6)
    {
      v24 = sub_182AD2F38();
      v26 = v25;
    }

    else
    {
      v24 = 0x776F6C46206C6C41;
      v26 = 0xE900000000000073;
    }

    v215 = v6;
    MEMORY[0x1865D9CA0](v24, v26);

    v38 = v225;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v39 = sub_182AD2698();
    __swift_project_value_buffer(v39, qword_1EA843418);

    v40 = sub_182AD2678();
    v41 = sub_182AD38A8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *&v225 = v219;
      *v42 = 136315650;
      v43 = sub_182AD3BF8();
      v45 = v3;
      v46 = v17;
      v47 = v16;
      v48 = sub_181C64FFC(v43, v44, &v225);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v49 = sub_181C64FFC(v222, v19, &v225);

      *(v42 + 14) = v49;
      *(v42 + 22) = 2080;
      v16 = v47;
      v17 = v46;
      v3 = v45;
      v50 = sub_181C64FFC(v38, *(&v38 + 1), &v225);

      *(v42 + 24) = v50;
      v23 = 0x776F6C46206C6C41;
      _os_log_impl(&dword_181A37000, v40, v41, "%s %s %s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v219, -1, -1);
      v51 = v42;
      v21 = 0xE900000000000073;
      MEMORY[0x1865DF520](v51, -1, -1);
    }

    else
    {
    }

    v6 = v215;
    v22 = 0xD000000000000017;
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v3 + 139) != 9 && *(v3 + 1038) != 1)
  {
    v52 = 0;
    v67 = 1;
    goto LABEL_52;
  }

  v52 = v6;
  if ((v17 & 1) == 0)
  {
    swift_beginAccess();
    v53 = *(v3 + 560);
    v54 = 4 * v53;
    if (((4 * v53) & 0x8000000000000000) == 0)
    {
      if (!(v54 >> 62))
      {
        v220 = v17;
        v55 = *(v3 + 80);
        v56 = *(v3 + 88);
        if (*(v3 + 536))
        {
          v57 = *(v3 + 600);
          v212 = v54 | *(v3 + 1024);
          if (v57 >= v212)
          {
            v58 = 1;
          }

          else
          {
            v58 = *(v3 + 608);
          }

          if (v58)
          {
            v59 = __OFADD__(v53, 1);
            v60 = v53 + 1;
            v6 = v52;
            if (!v59)
            {
              *(v3 + 560) = v60;
              *(v3 + 568) = v212;
              *(v3 + 576) = 0;
              if (v223)
              {
                v229 = 0;
                v230 = 0xE000000000000000;

                sub_182AD3BA8();
                v61 = *(v3 + 512);
                v62 = *(v3 + 520);
LABEL_119:

                v229 = v61;
                v230 = v62;
                MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD8CF0);
                v231 = v212;
                v155 = sub_182AD41B8();
                MEMORY[0x1865D9CA0](v155);

                v156 = v229;
                v157 = v230;
                if (qword_1EA837248 != -1)
                {
                  swift_once();
                }

                v158 = sub_182AD2698();
                __swift_project_value_buffer(v158, qword_1EA843418);

                v159 = sub_182AD2678();
                v160 = sub_182AD38A8();

                if (os_log_type_enabled(v159, v160))
                {
                  v222 = v16;
                  v161 = swift_slowAlloc();
                  v217 = swift_slowAlloc();
                  v229 = v217;
                  *v161 = 136315650;
                  v162 = sub_182AD3BF8();
                  v211 = v156;
                  v164 = sub_181C64FFC(v162, v163, &v229);

                  *(v161 + 4) = v164;
                  *(v161 + 12) = 2080;
                  v165 = sub_181C64FFC(v55, v56, &v229);

                  *(v161 + 14) = v165;
                  *(v161 + 22) = 2080;
                  v6 = v52;
                  v166 = sub_181C64FFC(v211, v157, &v229);

                  *(v161 + 24) = v166;
                  _os_log_impl(&dword_181A37000, v159, v160, "%s %s %s", v161, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x1865DF520](v217, -1, -1);
                  v167 = v161;
                  v16 = v222;
                  MEMORY[0x1865DF520](v167, -1, -1);
                }

                else
                {
                }

                v21 = 0xE900000000000073;
                goto LABEL_163;
              }

              goto LABEL_163;
            }

            goto LABEL_50;
          }

          goto LABEL_62;
        }

LABEL_57:
        if (v223)
        {
          v77 = qword_1EA837248;

          if (v77 != -1)
          {
            swift_once();
          }

          v78 = sub_182AD2698();
          __swift_project_value_buffer(v78, qword_1EA843418);

          v79 = sub_182AD2678();
          v80 = sub_182AD38A8();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v229 = v82;
            *v81 = 136315650;
            v83 = sub_182AD3BF8();
            v85 = v55;
            v86 = sub_181C64FFC(v83, v84, &v229);

            *(v81 + 4) = v86;
            *(v81 + 12) = 2080;
            v87 = sub_181C64FFC(v85, v56, &v229);

            *(v81 + 14) = v87;
            *(v81 + 22) = 2080;
            *(v81 + 24) = sub_181C64FFC(0xD000000000000017, 0x8000000182BD6460, &v229);
            _os_log_impl(&dword_181A37000, v79, v80, "%s %s %s", v81, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v82, -1, -1);
            MEMORY[0x1865DF520](v81, -1, -1);
          }

          else
          {
          }

          v23 = 0x776F6C46206C6C41;
        }
      }

LABEL_125:
      swift_endAccess();
      v6 = v52;
      goto LABEL_126;
    }

    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    swift_once();
LABEL_99:
    v128 = sub_182AD2698();
    __swift_project_value_buffer(v128, qword_1EA843418);

    v129 = sub_182AD2678();
    v130 = sub_182AD38A8();

    if (os_log_type_enabled(v129, v130))
    {
      v213 = v52;
      v131 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      *&v225 = v209;
      *v131 = 136315650;
      v132 = sub_182AD3BF8();
      v208 = v22;
      v134 = v3;
      v135 = v17;
      v136 = v6;
      v137 = sub_181C64FFC(v132, v133, &v225);

      *(v131 + 4) = v137;
      *(v131 + 12) = 2080;
      v138 = sub_181C64FFC(v210, v19, &v225);

      *(v131 + 14) = v138;
      *(v131 + 22) = 2080;
      v6 = v136;
      v17 = v135;
      v3 = v134;
      v139 = sub_181C64FFC(v208, v16, &v225);

      *(v131 + 24) = v139;
      v23 = 0x776F6C46206C6C41;
      _os_log_impl(&dword_181A37000, v129, v130, "%s %s %s", v131, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v209, -1, -1);
      v140 = v131;
      v52 = v213;
      MEMORY[0x1865DF520](v140, -1, -1);
    }

    else
    {
    }

    v21 = 0xE900000000000073;
    goto LABEL_103;
  }

  swift_beginAccess();
  v63 = *(v3 + 432);
  v64 = 4 * v63;
  if (4 * v63 < 0)
  {
    goto LABEL_165;
  }

  if (v64 >> 62)
  {
    goto LABEL_125;
  }

  v220 = v17;
  v55 = *(v3 + 80);
  v56 = *(v3 + 88);
  if (!*(v3 + 408))
  {
    goto LABEL_57;
  }

  v57 = *(v3 + 472);
  v212 = v64 | *(v3 + 1024);
  if (v57 >= v212)
  {
    v65 = 1;
  }

  else
  {
    v65 = *(v3 + 480);
  }

  if ((v65 & 1) == 0)
  {
LABEL_62:
    if (v223)
    {
      v224 = v55;
      v229 = 0;
      v230 = 0xE000000000000000;

      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x657274732077656ELL, 0xEE00204449206D61);
      v231 = v212;
      v88 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v88);

      MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BD6430);
      v231 = v57;
      v89 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v89);

      v90 = v229;
      v91 = v230;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v92 = sub_182AD2698();
      __swift_project_value_buffer(v92, qword_1EA843418);

      v93 = sub_182AD2678();
      v94 = sub_182AD38A8();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v229 = v96;
        *v95 = 136315650;
        v97 = sub_182AD3BF8();
        v221 = v90;
        v99 = sub_181C64FFC(v97, v98, &v229);

        *(v95 + 4) = v99;
        *(v95 + 12) = 2080;
        v100 = sub_181C64FFC(v224, v56, &v229);

        *(v95 + 14) = v100;
        *(v95 + 22) = 2080;
        v101 = sub_181C64FFC(v221, v91, &v229);

        *(v95 + 24) = v101;
        _os_log_impl(&dword_181A37000, v93, v94, "%s %s %s", v95, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v96, -1, -1);
        MEMORY[0x1865DF520](v95, -1, -1);
      }

      else
      {
      }

      v23 = 0x776F6C46206C6C41;
    }

    goto LABEL_125;
  }

  v59 = __OFADD__(v63, 1);
  v66 = v63 + 1;
  v6 = v52;
  if (v59)
  {
LABEL_50:
    swift_endAccess();
LABEL_126:
    v169 = *(v3 + 80);
    v168 = *(v3 + 88);
    *&v225 = 0;
    *(&v225 + 1) = 0xE000000000000000;

    sub_182AD3BA8();

    *&v225 = 0xD000000000000026;
    *(&v225 + 1) = 0x8000000182BDC160;
    if (v6)
    {
      v23 = sub_182AD2F38();
      v171 = v170;
    }

    else
    {
      v171 = 0xE900000000000073;
    }

    MEMORY[0x1865D9CA0](v23, v171);

    v172 = v225;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v173 = sub_182AD2698();
    __swift_project_value_buffer(v173, qword_1EA843418);

    v174 = sub_182AD2678();
    v175 = sub_182AD38B8();

    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *&v225 = v177;
      *v176 = 136315650;
      v178 = sub_182AD3BF8();
      v180 = sub_181C64FFC(v178, v179, &v225);

      *(v176 + 4) = v180;
      *(v176 + 12) = 2080;
      v181 = sub_181C64FFC(v169, v168, &v225);

      *(v176 + 14) = v181;
      *(v176 + 22) = 2080;
      v182 = sub_181C64FFC(v172, *(&v172 + 1), &v225);

      *(v176 + 24) = v182;
      _os_log_impl(&dword_181A37000, v174, v175, "%s %s %s", v176, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v177, -1, -1);
      MEMORY[0x1865DF520](v176, -1, -1);
    }

    else
    {
    }

    goto LABEL_134;
  }

  *(v3 + 432) = v66;
  *(v3 + 440) = v212;
  *(v3 + 448) = 0;
  if (v223)
  {
    v229 = 0;
    v230 = 0xE000000000000000;

    sub_182AD3BA8();
    v61 = *(v3 + 384);
    v62 = *(v3 + 392);
    goto LABEL_119;
  }

LABEL_163:
  swift_endAccess();
  v67 = 0;
  v17 = v220;
  v52 = v212;
LABEL_52:
  v68 = *(v3 + 80);
  v69 = *(v3 + 88);
  type metadata accessor for QUICStreamInstance();
  swift_allocObject();

  v219 = sub_1820271F0(v52, v67, 1, v68, v69);
  v70 = *(v3 + 280);
  LOBYTE(v215) = v67;
  if (v70)
  {
    v71 = *(v70 + 16);
    if ((v17 & 1) == 0)
    {
      if (v71 && (v72 = sub_18224F168(6), (v73 & 1) != 0))
      {
        v74 = *(v70 + 56) + 56 * v72;
        v75 = *(v74 + 48);
        v225 = *v74;
        v226 = *(v74 + 16);
        v227 = *(v74 + 32);
        v228 = v75;
        v76 = sub_1822CDE04();
      }

      else
      {
        v76 = 0;
      }

      swift_beginAccess();
      v107 = *(v3 + 288);
      if (*(v107 + 16) && (v108 = sub_18224F168(5), (v109 & 1) != 0))
      {
        v110 = *(v107 + 56) + 56 * v108;
        v111 = *(v110 + 48);
        v225 = *v110;
        v226 = *(v110 + 16);
        v227 = *(v110 + 32);
        v228 = v111;
        v112 = sub_1822CDE04();
      }

      else
      {
        v112 = 0;
      }

      if (((v112 | v76) & 0x8000000000000000) == 0)
      {
        v102 = v219;

        sub_18220EA24(v76, v112);

        goto LABEL_83;
      }

      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    if (v71 && (v103 = sub_18224F168(7), (v104 & 1) != 0))
    {
      v105 = *(v70 + 56) + 56 * v103;
      v106 = *(v105 + 48);
      v225 = *v105;
      v226 = *(v105 + 16);
      v227 = *(v105 + 32);
      v228 = v106;
      v76 = sub_1822CDE04();
    }

    else
    {
      v76 = 0;
    }

    swift_beginAccess();
    v113 = *(v3 + 288);
    if (*(v113 + 16) && (v114 = sub_18224F168(7), (v115 & 1) != 0))
    {
      v116 = *(v113 + 56) + 56 * v114;
      v117 = *(v116 + 48);
      v225 = *v116;
      v226 = *(v116 + 16);
      v227 = *(v116 + 32);
      v228 = v117;
      v118 = sub_1822CDE04();
    }

    else
    {
      v118 = 0;
    }

    if ((v118 | v76) < 0)
    {
      goto LABEL_168;
    }

    v102 = v219;

    sub_18220EA24(v76, v118);
  }

  else
  {
    v102 = v219;
    if ((v17 & 1) == 0)
    {
LABEL_83:
      v119 = *(v102 + 372);
      v23 = 0x776F6C46206C6C41;
      if ((v119 & 0x400) == 0)
      {
        goto LABEL_91;
      }

      v120 = v119 & 0xFFFFFBFF;
      goto LABEL_90;
    }
  }

  v121 = *(v102 + 372);
  v23 = 0x776F6C46206C6C41;
  if ((v121 & 0x400) != 0)
  {
    goto LABEL_91;
  }

  v120 = v121 | 0x400;
LABEL_90:
  *(v219 + 372) = v120;
LABEL_91:
  v222 = v16;
  if (v223)
  {
    v19 = *(v3 + 88);
    v210 = *(v3 + 80);
    *&v225 = 0;
    *(&v225 + 1) = 0xE000000000000000;

    sub_182AD3BA8();

    *&v225 = 0x6572747320746573;
    *(&v225 + 1) = 0xEB00000000206D61;
    if (*(v219 + 24))
    {
      v122 = 0xE300000000000000;
      v123 = 7104878;
    }

    else
    {
      v231 = *(v219 + 16);
      v123 = sub_182AD41B8();
      v122 = v124;
    }

    MEMORY[0x1865D9CA0](v123, v122);

    MEMORY[0x1865D9CA0](0x6F6C6620726F6620, 0xEA00000000002077);
    if (v6)
    {
      v125 = sub_182AD2F38();
      v127 = v126;
    }

    else
    {
      v125 = 0x776F6C46206C6C41;
      v127 = 0xE900000000000073;
    }

    MEMORY[0x1865D9CA0](v125, v127);

    v16 = *(&v225 + 1);
    v22 = v225;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_99;
    }

    goto LABEL_166;
  }

LABEL_103:
  v67 = v219;

  sub_182168DE4(v141, v6);

  v16 = *(v3 + 88);
  if ((v215 & 1) == 0)
  {
    if (v223)
    {
      v223 = *(v3 + 80);
      *&v225 = 0;
      *(&v225 + 1) = 0xE000000000000000;

      sub_182AD3BA8();

      *&v225 = 0x776F6E6B20746573;
      *(&v225 + 1) = 0xEF20776F6C66206ELL;
      if (v6)
      {
        v23 = sub_182AD2F38();
        v154 = v153;
      }

      else
      {
        v154 = 0xE900000000000073;
      }

      MEMORY[0x1865D9CA0](v23, v154);

      MEMORY[0x1865D9CA0](0x79656B20726F6620, 0xE900000000000020);
      v214 = v52;
      v231 = v52;
      v183 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v183);

      v184 = v225;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v185 = sub_182AD2698();
      __swift_project_value_buffer(v185, qword_1EA843418);

      v186 = sub_182AD2678();
      v187 = sub_182AD38A8();

      if (os_log_type_enabled(v186, v187))
      {
        v218 = v6;
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        *&v225 = v189;
        *v188 = 136315650;
        v190 = sub_182AD3BF8();
        v192 = sub_181C64FFC(v190, v191, &v225);

        *(v188 + 4) = v192;
        *(v188 + 12) = 2080;
        v193 = sub_181C64FFC(v223, v16, &v225);

        *(v188 + 14) = v193;
        *(v188 + 22) = 2080;
        v67 = v219;
        v194 = sub_181C64FFC(v184, *(&v184 + 1), &v225);

        *(v188 + 24) = v194;
        _os_log_impl(&dword_181A37000, v186, v187, "%s %s %s", v188, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v189, -1, -1);
        v195 = v188;
        v6 = v218;
        MEMORY[0x1865DF520](v195, -1, -1);
      }

      else
      {
      }

      v52 = v214;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v231 = *(v3 + 936);
    *(v3 + 936) = 0x8000000000000000;
    sub_182258D30(v6, v52, isUniquelyReferenced_nonNull_native);
    *(v3 + 936) = v231;
    swift_endAccess();
    sub_18202E698();
    sub_18216AAA8(v6);
    goto LABEL_144;
  }

  if (!v223)
  {
    goto LABEL_114;
  }

  v223 = *(v3 + 80);
  *&v225 = 0;
  *(&v225 + 1) = 0xE000000000000000;

  sub_182AD3BA8();

  *&v225 = 0xD00000000000001CLL;
  *(&v225 + 1) = 0x8000000182BDC140;
  if (v6)
  {
    v23 = sub_182AD2F38();
    v21 = v142;
  }

  MEMORY[0x1865D9CA0](v23, v21);

  v76 = *(&v225 + 1);
  v68 = v225;
  if (qword_1EA837248 != -1)
  {
    goto LABEL_171;
  }

  while (1)
  {
    v143 = sub_182AD2698();
    __swift_project_value_buffer(v143, qword_1EA843418);

    v144 = sub_182AD2678();
    v145 = sub_182AD38A8();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *&v225 = v147;
      *v146 = 136315650;
      v148 = sub_182AD3BF8();
      v216 = v68;
      v150 = sub_181C64FFC(v148, v149, &v225);

      *(v146 + 4) = v150;
      *(v146 + 12) = 2080;
      v151 = sub_181C64FFC(v223, v16, &v225);

      *(v146 + 14) = v151;
      *(v146 + 22) = 2080;
      v67 = v219;
      v152 = sub_181C64FFC(v216, v76, &v225);

      *(v146 + 24) = v152;
      _os_log_impl(&dword_181A37000, v144, v145, "%s %s %s", v146, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v147, -1, -1);
      MEMORY[0x1865DF520](v146, -1, -1);
    }

    else
    {
    }

LABEL_114:
    swift_beginAccess();
    sub_18202351C(v67);
    swift_endAccess();
LABEL_144:
    v68 = v222;
    v3 += 984;
    if (v17)
    {
      break;
    }

    swift_beginAccess();
    v197 = *v3;
    if (!*v3)
    {
      goto LABEL_160;
    }

    v198 = *(v197 + 16);
    if (v198)
    {
      v199 = sub_181A41ED0();
      if (v200)
      {
        v198 = *(*(v197 + 56) + 8 * v199);
      }

      else
      {
        v198 = 0;
      }
    }

    v76 = v198 + 1;
    if (!__OFADD__(v198, 1))
    {
      v205 = swift_isUniquelyReferenced_nonNull_native();
      v231 = *v3;
      *v3 = 0x8000000000000000;
      v206 = v76;
      v207 = 82;
      goto LABEL_159;
    }

LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    swift_once();
  }

  swift_beginAccess();
  v201 = *v3;
  if (!*v3)
  {
    goto LABEL_160;
  }

  v202 = *(v201 + 16);
  if (v202)
  {
    v203 = sub_181A41ED0();
    if (v204)
    {
      v202 = *(*(v201 + 56) + 8 * v203);
    }

    else
    {
      v202 = 0;
    }
  }

  v76 = v202 + 1;
  if (__OFADD__(v202, 1))
  {
    goto LABEL_170;
  }

  v205 = swift_isUniquelyReferenced_nonNull_native();
  v231 = *v3;
  *v3 = 0x8000000000000000;
  v206 = v76;
  v207 = 81;
LABEL_159:
  sub_182258BF8(v206, v207, v205);
  *v3 = v231;
LABEL_160:
  swift_endAccess();

LABEL_134:
}

uint64_t QUICConnectionImplementation.stop(flow:path:direction:)(uint8_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  if (a1)
  {
    v6 = *a3;
    v8 = *(v3 + 80);
    v7 = *(v3 + 88);
    v9 = qword_1EA837250;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = byte_1EA843430;
    if (byte_1EA843430 == 1)
    {
      v115[0] = 0;
      v115[1] = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x676E6970706F7473, 0xEE0020776F6C6620);
      v11 = sub_182AD2F38();
      MEMORY[0x1865D9CA0](v11);

      MEMORY[0x1865D9CA0](0x7463657269642820, 0xED0000203A6E6F69);
      LOBYTE(v113[0]) = v6;
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v12 = sub_182AD2698();
      __swift_project_value_buffer(v12, qword_1EA843418);

      v13 = sub_182AD2678();
      v14 = sub_182AD38A8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v108 = v4;
        v16 = swift_slowAlloc();
        v115[0] = v16;
        *v15 = 136315650;
        v17 = sub_182AD3BF8();
        v105 = v6;
        v19 = v8;
        v20 = sub_181C64FFC(v17, v18, v115);

        *(v15 + 4) = v20;
        *(v15 + 12) = 2080;
        v21 = sub_181C64FFC(v19, v7, v115);

        *(v15 + 14) = v21;
        *(v15 + 22) = 2080;
        v6 = v105;
        v22 = sub_181C64FFC(0, 0xE000000000000000, v115);

        *(v15 + 24) = v22;
        _os_log_impl(&dword_181A37000, v13, v14, "%s %s %s", v15, 0x20u);
        swift_arrayDestroy();
        v23 = v16;
        v4 = v108;
        MEMORY[0x1865DF520](v23, -1, -1);
        MEMORY[0x1865DF520](v15, -1, -1);

        goto LABEL_12;
      }
    }

LABEL_12:
    v24 = a1;
    if (v6)
    {
      if (v6 != 1)
      {
        sub_182042FE4(a1);
        v24 = a1;
      }

      v25 = sub_182043468(v24);
    }

    else
    {
      sub_182042FE4(a1);
      v25 = 0;
    }

    swift_beginAccess();
    v26 = *(v4 + 40);
    if (*(v26 + 16))
    {
      v27 = sub_18224EEF0(a1);
      if (v28)
      {
        if (*(*(*(v26 + 56) + 8 * v27) + 16))
        {
          type metadata accessor for QUICStreamInstance();
          swift_unknownObjectRetain();
          v29 = swift_dynamicCastClass();
          if (v29)
          {
            v30 = *(v29 + 372);
            if (!v6)
            {
              if ((v30 & 0x80) == 0)
              {
                v30 |= 0x80u;
                goto LABEL_44;
              }

LABEL_45:
              if ((v30 & 0x80) == 0 || (v30 & 0x40) == 0)
              {
                swift_unknownObjectRelease();
                v43 = 0;
                goto LABEL_33;
              }

              if ((*(v29 + 24) & 1) == 0)
              {
                v46 = v29;
                v47 = *(v29 + 16);
                if (v10)
                {
                  v48 = v10;
                  v49 = *(v4 + 80);
                  v50 = *(v4 + 88);

                  if (__nwlog_is_datapath_logging_enabled())
                  {
                    v110 = v4;
                    v113[0] = 0;
                    v113[1] = 0xE000000000000000;
                    sub_182AD3BA8();
                    MEMORY[0x1865D9CA0](0xD000000000000010, 0x8000000182BDA150);
                    v114 = a1;
                    sub_182AD3E18();
                    MEMORY[0x1865D9CA0](0x72747320726F6620, 0xEC000000206D6165);
                    v73 = *(v46 + 32);
                    v74 = *(v46 + 40);

                    MEMORY[0x1865D9CA0](v73, v74);

                    if (qword_1EA837248 != -1)
                    {
                      swift_once();
                    }

                    v75 = sub_182AD2698();
                    __swift_project_value_buffer(v75, qword_1EA843418);
                    v76 = swift_allocObject();
                    *(v76 + 16) = "stop(flow:path:direction:)";
                    *(v76 + 24) = 26;
                    *(v76 + 32) = 2;
                    v77 = swift_allocObject();
                    *(v77 + 16) = sub_181F8C724;
                    *(v77 + 24) = v76;
                    v78 = swift_allocObject();
                    *(v78 + 16) = v49;
                    *(v78 + 24) = v50;
                    v79 = swift_allocObject();
                    *(v79 + 16) = 0;
                    *(v79 + 24) = 0xE000000000000000;

                    v88 = sub_182AD2678();
                    v94 = sub_182AD38A8();
                    v90 = swift_allocObject();
                    *(v90 + 16) = 32;
                    osloga = swift_allocObject();
                    LOBYTE(osloga[2].isa) = 8;
                    v80 = swift_allocObject();
                    *(v80 + 16) = sub_18206B168;
                    *(v80 + 24) = v77;
                    v81 = swift_allocObject();
                    *(v81 + 16) = sub_181F8C718;
                    *(v81 + 24) = v80;
                    v96 = swift_allocObject();
                    *(v96 + 16) = 32;
                    v98 = swift_allocObject();
                    *(v98 + 16) = 8;
                    v82 = swift_allocObject();
                    *(v82 + 16) = sub_181F8C720;
                    *(v82 + 24) = v78;
                    v83 = swift_allocObject();
                    *(v83 + 16) = sub_181F8C718;
                    *(v83 + 24) = v82;
                    v100 = v83;
                    v102 = swift_allocObject();
                    *(v102 + 16) = 32;
                    v104 = swift_allocObject();
                    *(v104 + 16) = 8;
                    v84 = swift_allocObject();
                    *(v84 + 16) = sub_181F8C720;
                    *(v84 + 24) = v79;
                    v85 = swift_allocObject();
                    *(v85 + 16) = sub_181F8C718;
                    *(v85 + 24) = v84;
                    if (os_log_type_enabled(v88, v94))
                    {
                      v86 = swift_slowAlloc();
                      v111 = swift_slowAlloc();
                      v112 = 0;
                      v87 = v111;
                      *v86 = 770;
                      v114 = v86 + 2;
                      v113[0] = sub_181F8C728;
                      v113[1] = v90;
                      sub_181F73AE0(v113, &v114, &v112, &v111);

                      v113[0] = sub_181F8C728;
                      v113[1] = osloga;
                      sub_181F73AE0(v113, &v114, &v112, &v111);

                      v113[0] = sub_181F8C714;
                      v113[1] = v81;
                      sub_181F73AE0(v113, &v114, &v112, &v111);

                      v113[0] = sub_181F8C728;
                      v113[1] = v96;
                      sub_181F73AE0(v113, &v114, &v112, &v111);

                      v113[0] = sub_181F8C728;
                      v113[1] = v98;
                      sub_181F73AE0(v113, &v114, &v112, &v111);

                      v113[0] = sub_181F8C714;
                      v113[1] = v100;
                      sub_181F73AE0(v113, &v114, &v112, &v111);

                      v113[0] = sub_181F8C728;
                      v113[1] = v102;
                      sub_181F73AE0(v113, &v114, &v112, &v111);

                      v113[0] = sub_181F8C728;
                      v113[1] = v104;
                      sub_181F73AE0(v113, &v114, &v112, &v111);

                      v113[0] = sub_181F8C714;
                      v113[1] = v85;
                      sub_181F73AE0(v113, &v114, &v112, &v111);

                      _os_log_impl(&dword_181A37000, v88, v94, "%s %s %s", v86, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x1865DF520](v87, -1, -1);
                      MEMORY[0x1865DF520](v86, -1, -1);
                    }

                    else
                    {
                    }

                    v4 = v110;
                  }

                  else
                  {
                  }

                  v10 = v48;
                }

                swift_beginAccess();
                sub_182250128(v47);
                swift_endAccess();
                v29 = v46;
              }

              if (!v10)
              {
                goto LABEL_58;
              }

              v51 = v29;
              v52 = v4;
              v53 = *(v4 + 80);
              v54 = v52;
              v55 = *(v52 + 88);

              if (__nwlog_is_datapath_logging_enabled())
              {
                v113[0] = 0;
                v113[1] = 0xE000000000000000;
                sub_182AD3BA8();

                strcpy(v113, "closed stream ");
                HIBYTE(v113[1]) = -18;
                v57 = *(v51 + 32);
                v58 = *(v51 + 40);

                MEMORY[0x1865D9CA0](v57, v58);

                v106 = v113[0];
                v109 = v113[1];
                if (qword_1EA837248 != -1)
                {
                  swift_once();
                }

                v59 = sub_182AD2698();
                __swift_project_value_buffer(v59, qword_1EA843418);
                v60 = swift_allocObject();
                *(v60 + 16) = "stop(flow:path:direction:)";
                *(v60 + 24) = 26;
                *(v60 + 32) = 2;
                v61 = swift_allocObject();
                *(v61 + 16) = sub_181F8C258;
                *(v61 + 24) = v60;
                v62 = swift_allocObject();
                *(v62 + 16) = v53;
                *(v62 + 24) = v55;
                v63 = swift_allocObject();
                *(v63 + 16) = v106;
                *(v63 + 24) = v109;

                oslog = sub_182AD2678();
                v107 = sub_182AD38A8();
                v93 = swift_allocObject();
                *(v93 + 16) = 32;
                v95 = swift_allocObject();
                *(v95 + 16) = 8;
                v64 = swift_allocObject();
                *(v64 + 16) = sub_182064AC4;
                *(v64 + 24) = v61;
                v65 = swift_allocObject();
                *(v65 + 16) = sub_181F8C27C;
                *(v65 + 24) = v64;
                v97 = swift_allocObject();
                *(v97 + 16) = 32;
                v99 = swift_allocObject();
                *(v99 + 16) = 8;
                v66 = swift_allocObject();
                *(v66 + 16) = sub_181F8C26C;
                *(v66 + 24) = v62;
                v67 = swift_allocObject();
                *(v67 + 16) = sub_181F8C718;
                *(v67 + 24) = v66;
                v101 = v67;
                v103 = swift_allocObject();
                *(v103 + 16) = 32;
                v68 = swift_allocObject();
                *(v68 + 16) = 8;
                v69 = swift_allocObject();
                *(v69 + 16) = sub_181F8C26C;
                *(v69 + 24) = v63;
                v70 = swift_allocObject();
                *(v70 + 16) = sub_181F8C718;
                *(v70 + 24) = v69;
                if (os_log_type_enabled(oslog, v107))
                {
                  v71 = swift_slowAlloc();
                  v72 = swift_slowAlloc();
                  v111 = v72;
                  v112 = 0;
                  *v71 = 770;
                  v89 = v72;
                  v114 = v71 + 2;
                  v113[0] = sub_181F8C274;
                  v113[1] = v93;
                  sub_181F73AE0(v113, &v114, &v112, &v111);

                  v113[0] = sub_181F8C728;
                  v113[1] = v95;
                  sub_181F73AE0(v113, &v114, &v112, &v111);

                  v113[0] = sub_181F8C284;
                  v113[1] = v65;
                  sub_181F73AE0(v113, &v114, &v112, &v111);

                  v113[0] = sub_181F8C728;
                  v113[1] = v97;
                  sub_181F73AE0(v113, &v114, &v112, &v111);

                  v113[0] = sub_181F8C728;
                  v113[1] = v99;
                  sub_181F73AE0(v113, &v114, &v112, &v111);

                  v113[0] = sub_181F8C714;
                  v113[1] = v101;
                  sub_181F73AE0(v113, &v114, &v112, &v111);

                  v113[0] = sub_181F8C728;
                  v113[1] = v103;
                  sub_181F73AE0(v113, &v114, &v112, &v111);

                  v113[0] = sub_181F8C728;
                  v113[1] = v68;
                  sub_181F73AE0(v113, &v114, &v112, &v111);

                  v113[0] = sub_181F8C714;
                  v113[1] = v70;
                  sub_181F73AE0(v113, &v114, &v112, &v111);

                  _os_log_impl(&dword_181A37000, oslog, v107, "%s %s %s", v71, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x1865DF520](v89, -1, -1);
                  MEMORY[0x1865DF520](v71, -1, -1);

                  goto LABEL_57;
                }
              }

LABEL_57:
              v29 = v51;
              v4 = v54;
LABEL_58:
              v56 = *(v29 + 372);
              if ((v56 & 0x20) == 0)
              {
                *(v29 + 372) = v56 | 0x20;
              }

              swift_unknownObjectRelease();
              goto LABEL_32;
            }

            if (v6 == 1)
            {
              if (v25)
              {
                goto LABEL_24;
              }
            }

            else
            {
              if ((v30 & 0x80) == 0)
              {
                v30 |= 0x80u;
                *(v29 + 372) = v30;
              }

              if (v25)
              {
LABEL_24:
                if ((v30 & 0x40) == 0)
                {
                  v30 |= 0x40u;
LABEL_44:
                  *(v29 + 372) = v30;
                  goto LABEL_45;
                }

                goto LABEL_45;
              }
            }

            if ((v30 & 0x40) != 0)
            {
              v30 &= ~0x40u;
              goto LABEL_44;
            }

            goto LABEL_45;
          }

          swift_unknownObjectRelease();
        }
      }
    }

    v32 = *(v4 + 80);
    v31 = *(v4 + 88);
    v113[0] = 0;
    v113[1] = 0xE000000000000000;

    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0x6165727473206F6ELL, 0xEE0020726F66206DLL);
    v114 = a1;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0x746F6E6E6163202CLL, 0xEE0065736F6C6320);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v33 = sub_182AD2698();
    __swift_project_value_buffer(v33, qword_1EA843418);

    v34 = sub_182AD2678();
    v35 = sub_182AD38B8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v113[0] = v37;
      *v36 = 136315650;
      v38 = sub_182AD3BF8();
      v40 = sub_181C64FFC(v38, v39, v113);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v41 = sub_181C64FFC(v32, v31, v113);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2080;
      v42 = sub_181C64FFC(0, 0xE000000000000000, v113);

      *(v36 + 24) = v42;
      _os_log_impl(&dword_181A37000, v34, v35, "%s %s %s", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v37, -1, -1);
      MEMORY[0x1865DF520](v36, -1, -1);
    }

    else
    {
    }

    goto LABEL_32;
  }

  sub_18203ADF4();
LABEL_32:
  v43 = 1;
LABEL_33:
  swift_beginAccess();
  if (*(v4 + 139) == 9 && *(v4 + 952))
  {

    sub_182047340(v44, 0, 0);
  }

  return v43;
}

uint64_t sub_182042FE4(uint64_t a1)
{
  v2 = v1;
  result = swift_beginAccess();
  v5 = *(v1 + 40);
  if (*(v5 + 16))
  {
    result = sub_18224EEF0(a1);
    if (v6)
    {
      if (*(*(*(v5 + 56) + 8 * result) + 16))
      {
        type metadata accessor for QUICStreamInstance();
        swift_unknownObjectRetain();
        v7 = swift_dynamicCastClass();
        if (!v7)
        {
          return swift_unknownObjectRelease();
        }

        v8 = v7;
        v10 = *(v2 + 80);
        v9 = *(v2 + 88);
        v11 = qword_1EA837250;

        if (v11 != -1)
        {
          swift_once();
        }

        if (byte_1EA843430 == 1)
        {
          sub_182AD3BA8();

          *&v35 = 0x6F6C632064616572;
          *(&v35 + 1) = 0xEF206E6F20646573;
          v12 = *(v8 + 32);
          v13 = *(v8 + 40);

          MEMORY[0x1865D9CA0](v12, v13);

          v14 = v35;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v15 = sub_182AD2698();
          __swift_project_value_buffer(v15, qword_1EA843418);

          v16 = sub_182AD2678();
          v17 = sub_182AD38A8();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *&v35 = v34;
            *v18 = 136315650;
            v19 = sub_182AD3BF8();
            v33 = v17;
            v21 = sub_181C64FFC(v19, v20, &v35);

            *(v18 + 4) = v21;
            *(v18 + 12) = 2080;
            v22 = sub_181C64FFC(v10, v9, &v35);

            *(v18 + 14) = v22;
            *(v18 + 22) = 2080;
            v23 = sub_181C64FFC(v14, *(&v14 + 1), &v35);

            *(v18 + 24) = v23;
            _os_log_impl(&dword_181A37000, v16, v33, "%s %s %s", v18, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v34, -1, -1);
            MEMORY[0x1865DF520](v18, -1, -1);

            goto LABEL_14;
          }
        }

LABEL_14:
        if ((*(v8 + 372) & 0x10) != 0)
        {
          swift_beginAccess();
          sub_182023D88(v8);
          swift_endAccess();
        }

        result = swift_beginAccess();
        if (*(v8 + 369) == 1)
        {
          if (*(v8 + 24))
          {
            __break(1u);
            goto LABEL_30;
          }

          v24 = *(v8 + 16);
          v25 = 0x202020100uLL >> (8 * *(v2 + 304));
          v35 = xmmword_182AF01E0;
          v36 = v24;
          v37 = 0;

          sub_181F82F10(v25, &v35);

          v26 = *(v8 + 372);
          if ((v26 & 8) == 0)
          {
            *(v8 + 372) = v26 | 8;
          }

          v27 = *(*(v8 + 344) + 24);
          if (!v27)
          {
            v28 = 0;
            goto LABEL_26;
          }

          v28 = v27 + 1;
          if (!__OFADD__(v27, 1))
          {
LABEL_26:
            if ((*(v8 + 24) & 1) == 0)
            {
              v29 = *(v8 + 16);
              v31 = *(v8 + 32);
              v30 = *(v8 + 40);
              v32 = *(*(v8 + 56) + 40);
              swift_beginAccess();

              sub_18222E98C(v31, v30, v29, v28, v32);
              swift_endAccess();
              swift_unknownObjectRelease();
            }

LABEL_30:
            __break(1u);
            return result;
          }

          __break(1u);
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_182043468(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v5 = *(v1 + 40);
  if (!*(v5 + 16))
  {
    return 1;
  }

  v6 = sub_18224EEF0(a1);
  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v8 = *(*(*(v5 + 56) + 8 * v6) + 16);
  if (!v8)
  {
    return 1;
  }

  type metadata accessor for QUICStreamInstance();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    v27 = 1;
    goto LABEL_80;
  }

  v10 = v9;
  v12 = *(v3 + 80);
  v11 = *(v3 + 88);
  v13 = qword_1EA837250;

  if (v13 != -1)
  {
    goto LABEL_84;
  }

LABEL_6:
  v95 = byte_1EA843430;
  v96 = v8;
  if (byte_1EA843430 == 1)
  {
    *&v112 = 0;
    *(&v112 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v112 = 0xD000000000000018;
    *(&v112 + 1) = 0x8000000182BDC080;
    v14 = *(v10 + 32);
    v15 = *(v10 + 40);

    MEMORY[0x1865D9CA0](v14, v15);

    v2 = *(&v112 + 1);
    v13 = v112;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_8;
  }

LABEL_13:

  while (1)
  {
    if ((*(v10 + 372) & 0x10) != 0)
    {
      swift_beginAccess();
      sub_182023D88(v10);
      swift_endAccess();
    }

    swift_beginAccess();
    v28 = *(v10 + 368);
    if (v28 != 1)
    {
      if (v28 != 2)
      {
        goto LABEL_22;
      }

      if (*(v10 + 356) == 1)
      {
        sub_1820520C4(v10);
LABEL_22:
        v27 = 1;
        goto LABEL_44;
      }

      swift_beginAccess();
      if (*(v10 + 328) & 1) != 0 || (*(v10 + 356))
      {
        goto LABEL_22;
      }
    }

    v29 = *(*(v10 + 56) + 48);
    v11 = (v10 + 88);
    swift_beginAccess();

    v30 = sub_181FCE700(v29);
    swift_endAccess();
    sub_18221227C(v30);

    v31 = *(*(v10 + 56) + 48);
    swift_beginAccess();

    v32 = sub_181FCE700(v31);
    swift_endAccess();
    sub_18221227C(v32);

    swift_beginAccess();
    Frame.finalize(success:)(0);
    v33 = *(v10 + 304);
    if (v33)
    {
      v34 = v33[4];
      if (v33[2] >= v33[3] + v34)
      {
        v35 = v33[3] + v34;
      }

      else
      {
        v35 = v33[2];
      }

      *&v112 = *(v10 + 304);
      *(&v112 + 1) = v34;
      *&v113 = v35;
      swift_retain_n();
      while (1)
      {
        if (v34 == v35)
        {
          if ((sub_181AC81FC(v36) & 1) == 0)
          {

            break;
          }

          v34 = *(&v112 + 1);
          v35 = v113;
        }

        *(&v112 + 1) = v34 + 1;
        swift_beginAccess();

        Frame.finalize(success:)(0);
        swift_endAccess();

        ++v34;
      }
    }

    FrameArray.init()(&v112);

    v12 = *(v10 + 88);
    v37 = *(v10 + 96);
    v8 = *(v10 + 104);
    LOBYTE(v27) = *(v10 + 112);
    v2 = *(v10 + 120);
    v13 = *(v10 + 128);
    v38 = *(v10 + 136);
    if (v38 != 2 || v13 | v2)
    {
      goto LABEL_89;
    }

    v84 = v121;
    v87 = v122;
    v91 = v123;
    v93 = v125;
    v2 = v129;
    v89 = v130;
    if ((*(v10 + 248) & 1) == 0)
    {
      v39 = *(v10 + 232);
      if (v39)
      {
        MEMORY[0x1865DF520](v39, -1, -1);
      }
    }

    sub_181F68EF4(v12, v37, v8, v27);

    v40 = v114;
    v41 = v116;
    v42 = v117;
    *(v10 + 136) = v115;
    *(v10 + 152) = v41;
    v43 = v112;
    *(v10 + 104) = v113;
    *(v10 + 120) = v40;
    v44 = v120;
    v45 = v118;
    *(v10 + 200) = v119;
    *(v10 + 216) = v44;
    *(v10 + 168) = v42;
    *(v10 + 184) = v45;
    *v11 = v43;
    *(v10 + 232) = v84;
    *(v10 + 240) = v87;
    v13 = v91;
    *(v10 + 248) = v91;
    *(v10 + 249) = *v124;
    *(v10 + 252) = *&v124[3];
    *(v10 + 256) = v93;
    v46 = v127;
    *(v10 + 264) = v126;
    *(v10 + 280) = v46;
    *(v10 + 296) = v128;
    *(v10 + 304) = v2;
    *(v10 + 312) = v89;
    v86 = *(v10 + 96);
    v88 = *(v10 + 88);
    v8 = *(v10 + 104);
    v85 = *(v10 + 112);
    v38 = *(v10 + 120);
    v12 = *(v10 + 128);
    LODWORD(v37) = *(v10 + 136);
    FrameArray.init()(&v97);

    v47 = v110;
    *(v10 + 280) = v109;
    *(v10 + 296) = v47;
    *(v10 + 312) = v111;
    v48 = v106;
    *(v10 + 216) = v105;
    *(v10 + 232) = v48;
    v49 = v108;
    *(v10 + 248) = v107;
    *(v10 + 264) = v49;
    v50 = v102;
    *(v10 + 152) = v101;
    *(v10 + 168) = v50;
    v51 = v104;
    *(v10 + 184) = v103;
    *(v10 + 200) = v51;
    v52 = v98;
    *v11 = v97;
    *(v10 + 104) = v52;
    v53 = v100;
    *(v10 + 120) = v99;
    *(v10 + 136) = v53;
    if (v37 != 2 || v12 | v38)
    {
      goto LABEL_90;
    }

    if ((v91 & 1) == 0 && v84)
    {
      MEMORY[0x1865DF520](v84, -1, -1);
    }

    sub_181F68EF4(v88, v86, v8, v85);
    swift_endAccess();

    sub_1820523DC(v10);
    v27 = 0;
    v8 = v96;
LABEL_44:
    v38 = *(*(v10 + 56) + 48);
    swift_beginAccess();
    v37 = 0;
    v12 = *(v10 + 320);
    if (*(v10 + 312))
    {
      break;
    }

    v2 = *(v10 + 304);
    if (*(v10 + 112) == 5)
    {
      v37 = nw_frame_unclaimed_length(*(v10 + 88));
      goto LABEL_53;
    }

    v54 = *(v10 + 160);
    if (!v54)
    {
      goto LABEL_52;
    }

    v55 = *(v10 + 144);
    v56 = *(v10 + 152);
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
      __break(1u);
LABEL_89:
      sub_181F68EF4(v12, v37, v8, v27);

      sub_181F68F3C(v2, v13, v38);
      __break(1u);
LABEL_90:
      sub_181F68EF4(v88, v86, v8, v85);

      result = sub_181F68F3C(v38, v12, v37);
      __break(1u);
      return result;
    }

    v37 = v54 - v58;
    if (__OFSUB__(v54, v58))
    {
      __break(1u);
LABEL_52:
      v37 = 0;
    }

LABEL_53:
    if (v2)
    {
      v94 = v38;
      v8 = *(v2 + 32);
      v59 = *(v2 + 24) + v8;
      if (*(v2 + 16) < v59)
      {
        v59 = *(v2 + 16);
      }

      *&v97 = v2;
      *(&v97 + 1) = v8;
      *&v98 = v59;
      swift_retain_n();
      v11 = v2;
      do
      {
        if (v8 == v98)
        {
          if ((sub_181AC81FC(v60) & 1) == 0)
          {
            v13 = v97;

            v8 = v96;
            v38 = v94;
            goto LABEL_69;
          }

          v8 = *(&v97 + 1);
          v11 = v97;
        }

        v62 = v11 + 8 * v8++;
        *(&v97 + 1) = v8;
        v63 = *(v62 + 5);
        swift_beginAccess();
        if (*(v63 + 40) == 5)
        {
          v61 = *(v63 + 16);

          v13 = nw_frame_unclaimed_length(v61);
        }

        else
        {
          v64 = *(v63 + 88);
          if (v64)
          {
            v65 = *(v63 + 72);
            v66 = *(v63 + 80);
            v57 = __OFADD__(v65, v66);
            v67 = v65 + v66;
            if (v57)
            {
              goto LABEL_82;
            }

            v13 = v64 - v67;
            if (__OFSUB__(v64, v67))
            {
              goto LABEL_83;
            }
          }

          else
          {

            v13 = 0;
          }
        }

        swift_endAccess();

        v57 = __OFADD__(v37, v13);
        v37 += v13;
      }

      while (!v57);
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
      goto LABEL_6;
    }

LABEL_69:
    if ((v37 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
LABEL_8:
    v16 = sub_182AD2698();
    __swift_project_value_buffer(v16, qword_1EA843418);

    v17 = sub_182AD2678();
    v18 = sub_182AD38A8();

    if (!os_log_type_enabled(v17, v18))
    {

      goto LABEL_13;
    }

    v19 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v112 = v92;
    *v19 = 136315650;
    v20 = sub_182AD3BF8();
    v90 = v13;
    v22 = sub_181C64FFC(v20, v21, &v112);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = sub_181C64FFC(v12, v11, &v112);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v24 = sub_181C64FFC(v90, v2, &v112);

    *(v19 + 24) = v24;
    _os_log_impl(&dword_181A37000, v17, v18, "%s %s %s", v19, 0x20u);
    v13 = v92;
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v92, -1, -1);
    v25 = v19;
    v8 = v96;
    MEMORY[0x1865DF520](v25, -1, -1);
  }

  v13 = v12 + v37;
  if (__CFADD__(v12, v37))
  {
    goto LABEL_86;
  }

  swift_endAccess();
  if (v38 < v13)
  {
    if (v95)
    {
      v69 = *(v3 + 80);
      v68 = *(v3 + 88);
      *&v112 = 0;
      *(&v112 + 1) = 0xE000000000000000;

      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000038, 0x8000000182BDC040);
      v70 = *(v10 + 32);
      v71 = *(v10 + 40);

      MEMORY[0x1865D9CA0](v70, v71);

      v72 = v112;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v73 = sub_182AD2698();
      __swift_project_value_buffer(v73, qword_1EA843418);

      v74 = sub_182AD2678();
      v75 = sub_182AD38A8();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v112 = v77;
        *v76 = 136315650;
        v78 = sub_182AD3BF8();
        v80 = sub_181C64FFC(v78, v79, &v112);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2080;
        v81 = sub_181C64FFC(v69, v68, &v112);

        *(v76 + 14) = v81;
        *(v76 + 22) = 2080;
        v82 = sub_181C64FFC(v72, *(&v72 + 1), &v112);

        *(v76 + 24) = v82;
        _os_log_impl(&dword_181A37000, v74, v75, "%s %s %s", v76, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v77, -1, -1);
        MEMORY[0x1865DF520](v76, -1, -1);
      }

      else
      {
      }
    }

    v83 = *(v10 + 372);
    v27 = 0;
    if ((v83 & 4) == 0)
    {
      *(v10 + 372) = v83 | 4;
    }
  }

LABEL_80:
  swift_unknownObjectRelease();
  return v27;
}

uint64_t QUICConnectionImplementation.inboundStarting(path:)()
{
  swift_beginAccess();
  v1 = *(v0 + 840);
  if (v1 >> 62)
  {
    result = sub_182AD3EB8();
    if (!result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_3:
      *(v0 + 1123) = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t QUICConnectionImplementation.handleInbound(frame:from:)(__int128 *a1, uint64_t *a2)
{
  v6 = v2;
  v7 = a1[1];
  v124 = *a1;
  v125 = v7;
  v126 = a1[2];
  v9 = *(a1 + 6);
  v8 = *(a1 + 7);
  v139 = *(a1 + 208);
  v11 = *(a1 + 8);
  v10 = *(a1 + 9);
  v12 = a1[12];
  v137 = a1[11];
  v138 = v12;
  v13 = a1[8];
  v133 = a1[7];
  v134 = v13;
  v14 = a1[10];
  v135 = a1[9];
  v136 = v14;
  v15 = a1[6];
  v131 = a1[5];
  v132 = v15;
  v127 = v9;
  v128 = v8;
  v129 = v11;
  v130 = v10;
  v16 = *a2;
  v17 = *(a2 + 8);
  if (BYTE8(v125) == 5)
  {
    v18 = nw_frame_unclaimed_length(v124);
    goto LABEL_9;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

  v19 = __OFADD__(v8, v11);
  v20 = v8 + v11;
  if (v19)
  {
    __break(1u);
    goto LABEL_119;
  }

  v18 = v10 - v20;
  if (__OFSUB__(v10, v20))
  {
    __break(1u);
LABEL_8:
    v18 = 0;
  }

LABEL_9:
  swift_beginAccess();
  if ((*(v2 + 139) & 0xFE) == 0xA)
  {
    v3 = *(v2 + 80);
    v6 = *(v2 + 88);
    v21 = qword_1EA837250;

    if (v21 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_115;
  }

  v3 = v2 + 984;
  swift_beginAccess();
  v26 = *(v2 + 984);
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = sub_181A41ED0();
      if (v29)
      {
        v27 = *(*(v26 + 56) + 8 * v28);
      }

      else
      {
        v27 = 0;
      }
    }

    v4 = v27 + v18;
    if (!__OFADD__(v27, v18))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v112[0] = *v3;
      *v3 = 0x8000000000000000;
      sub_182258BF8(v4, 10, isUniquelyReferenced_nonNull_native);
      *v3 = *&v112[0];
      goto LABEL_21;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    swift_once();
LABEL_13:
    v23 = sub_182AD2698();
    __swift_project_value_buffer(v23, qword_1EA843418);

    v24 = sub_182AD2678();
    i = sub_182AD38A8();
    goto LABEL_87;
  }

LABEL_21:
  swift_endAccess();
  v32 = *(v6 + 80);
  v31 = *(v6 + 88);
  v33 = qword_1EA837250;

  if (v33 != -1)
  {
    swift_once();
  }

  v105 = byte_1EA843430;
  if (byte_1EA843430 == 1)
  {
    sub_182AD3BA8();

    *&v114 = 0xD000000000000021;
    *(&v114 + 1) = 0x8000000182BDA220;
    *&v112[0] = v18;
    v34 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v34);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v35 = v114;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v36 = sub_182AD2698();
    __swift_project_value_buffer(v36, qword_1EA843418);

    v37 = sub_182AD2678();
    v38 = sub_182AD38A8();

    if (os_log_type_enabled(v37, v38))
    {
      v99 = v38;
      v39 = swift_slowAlloc();
      v103 = v17;
      v101 = swift_slowAlloc();
      *&v114 = v101;
      *v39 = 136315650;
      v40 = sub_182AD3BF8();
      v42 = v18;
      v43 = sub_181C64FFC(v40, v41, &v114);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = sub_181C64FFC(v32, v31, &v114);

      *(v39 + 14) = v44;
      *(v39 + 22) = 2080;
      v18 = v42;
      v45 = sub_181C64FFC(v35, *(&v35 + 1), &v114);

      *(v39 + 24) = v45;
      _os_log_impl(&dword_181A37000, v37, v99, "%s %s %s", v39, 0x20u);
      swift_arrayDestroy();
      v17 = v103;
      MEMORY[0x1865DF520](v101, -1, -1);
      MEMORY[0x1865DF520](v39, -1, -1);

      goto LABEL_30;
    }
  }

LABEL_30:
  if (v18 >= 0x10000)
  {
    v3 = *(v6 + 80);
    v6 = *(v6 + 88);
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;

    sub_182AD3BA8();

    *&v114 = 0xD000000000000023;
    *(&v114 + 1) = 0x8000000182BDA1F0;
    *&v112[0] = v18;
    v78 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v78);

    v4 = *(&v114 + 1);
    v5 = v114;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_130;
    }

    goto LABEL_117;
  }

  swift_beginAccess();
  v46 = *(v6 + 960);
  v47 = v46 >> 62;
  if (v17)
  {
    if (v47)
    {
      v3 = sub_182AD3EB8();
    }

    else
    {
      v3 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v3)
    {
      v48 = 0;
      v18 = v46 & 0xC000000000000001;
      do
      {
        if (v18)
        {
          v49 = MEMORY[0x1865DA790](v48, v46);
          v50 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        else
        {
          if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          v49 = *(v46 + 8 * v48 + 32);

          v50 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_44;
          }
        }

        if (*(v49 + 1088) == 1)
        {
LABEL_53:

          goto LABEL_59;
        }

        ++v48;
      }

      while (v50 != v3);
    }

    goto LABEL_57;
  }

LABEL_45:
  if (v47)
  {
    v3 = sub_182AD3EB8();
    if (!v3)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v3 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_56;
    }
  }

  if ((v46 & 0xC000000000000001) == 0)
  {
    v75 = (v46 + 32);
    v76 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v76)
    {
      v49 = *v75;
      if ((*(*v75 + 32) & 1) == 0 && *(v49 + 24) == v16)
      {
        goto LABEL_58;
      }

      --v76;
      ++v75;
      if (!--v3)
      {
        goto LABEL_56;
      }
    }

LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    swift_once();
LABEL_11:
    if (byte_1EA843430 != 1)
    {
      goto LABEL_90;
    }

    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BDA250);
    *&v112[0] = v18;
    v22 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v22);

    MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BDA280);
    v4 = *(&v114 + 1);
    v5 = v114;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_120;
  }

  v51 = 0;
  do
  {
    v52 = MEMORY[0x1865DA790](v51, v46);
    v18 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_111;
    }

    v49 = v52;
    if ((*(v52 + 32) & 1) == 0 && *(v52 + 24) == v16)
    {
      goto LABEL_53;
    }

    swift_unknownObjectRelease();
    ++v51;
  }

  while (v18 != v3);

LABEL_56:
  if (*(v6 + 1024))
  {
LABEL_57:
    v49 = *(v6 + 952);
    if (v49)
    {
LABEL_58:

LABEL_59:
      if (*(v6 + 1024) != 1)
      {
        v3 = 0;
        goto LABEL_72;
      }

      v3 = 0;
      if ((v17 & 1) == 0)
      {
        v53 = *(v6 + 952);
        if (v53)
        {
          if (v49 != v53)
          {
            v3 = *(v49 + 33) == 8;
          }
        }
      }

      if (*(v6 + 139) == 1)
      {
        sub_182021414(&v124, v112);
        v122 = v112[8];
        v123[0] = v113[0];
        *(v123 + 12) = *(v113 + 12);
        v118 = v112[4];
        v119 = v112[5];
        v120 = v112[6];
        v121 = v112[7];
        v114 = v112[0];
        v115 = v112[1];
        v116 = v112[2];
        v117 = v112[3];
        if (sub_182064AC8(&v114) != 1)
        {
          v107[8] = v122;
          v108[0] = v123[0];
          *(v108 + 12) = *(v123 + 12);
          v107[4] = v118;
          v107[5] = v119;
          v107[6] = v120;
          v107[7] = v121;
          v107[0] = v114;
          v107[1] = v115;
          v107[2] = v116;
          v107[3] = v117;
          if ((sub_182065660(&v124, v107) & 1) == 0 || (v77 = v115, LOBYTE(v111) = 4, swift_beginAccess(), sub_18203BF4C(&v111), swift_endAccess(), *(v6 + 304) = 1, !Frame.unclaim(fromStart:fromEnd:adjustSingleIPAggregate:)(v77, 0, 1)))
          {

            sub_181F843A0(&v114);
            goto LABEL_94;
          }

          sub_181F843A0(&v114);
          goto LABEL_72;
        }

        if (v105)
        {
          v55 = *(v6 + 80);
          v54 = *(v6 + 88);

          if (__nwlog_is_datapath_logging_enabled())
          {
            if (qword_1EA837248 != -1)
            {
              swift_once();
            }

            v80 = sub_182AD2698();
            __swift_project_value_buffer(v80, qword_1EA843418);
            v81 = swift_allocObject();
            *(v81 + 16) = "handleInbound(frame:from:)";
            *(v81 + 24) = 26;
            *(v81 + 32) = 2;
            v82 = swift_allocObject();
            *(v82 + 16) = sub_181F8C724;
            *(v82 + 24) = v81;
            v83 = swift_allocObject();
            *(v83 + 16) = v55;
            *(v83 + 24) = v54;
            v84 = swift_allocObject();
            *(v84 + 16) = 0xD000000000000027;
            *(v84 + 24) = 0x8000000182BDA1C0;

            v85 = sub_182AD2678();
            v86 = sub_182AD38A8();
            v97 = swift_allocObject();
            *(v97 + 16) = 32;
            v98 = swift_allocObject();
            *(v98 + 16) = 8;
            v87 = swift_allocObject();
            *(v87 + 16) = sub_18206B168;
            *(v87 + 24) = v82;
            v88 = swift_allocObject();
            *(v88 + 16) = sub_181F8C718;
            *(v88 + 24) = v87;
            v100 = swift_allocObject();
            *(v100 + 16) = 32;
            v102 = swift_allocObject();
            *(v102 + 16) = 8;
            v89 = swift_allocObject();
            *(v89 + 16) = sub_181F8C720;
            *(v89 + 24) = v83;
            v90 = swift_allocObject();
            *(v90 + 16) = sub_181F8C718;
            *(v90 + 24) = v89;
            v104 = swift_allocObject();
            *(v104 + 16) = 32;
            v106 = swift_allocObject();
            *(v106 + 16) = 8;
            v91 = swift_allocObject();
            *(v91 + 16) = sub_181F8C720;
            *(v91 + 24) = v84;
            v92 = swift_allocObject();
            *(v92 + 16) = sub_181F8C718;
            *(v92 + 24) = v91;
            v93 = v86;
            v94 = v85;
            if (os_log_type_enabled(v85, v86))
            {
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              v109 = v96;
              v110 = 0;
              *v95 = 770;
              v111 = v95 + 2;
              *&v107[0] = sub_181F8C728;
              *(&v107[0] + 1) = v97;
              sub_181F73AE0(v107, &v111, &v110, &v109);

              *&v107[0] = sub_181F8C728;
              *(&v107[0] + 1) = v98;
              sub_181F73AE0(v107, &v111, &v110, &v109);

              *&v107[0] = sub_181F8C714;
              *(&v107[0] + 1) = v88;
              sub_181F73AE0(v107, &v111, &v110, &v109);

              *&v107[0] = sub_181F8C728;
              *(&v107[0] + 1) = v100;
              sub_181F73AE0(v107, &v111, &v110, &v109);

              *&v107[0] = sub_181F8C728;
              *(&v107[0] + 1) = v102;
              sub_181F73AE0(v107, &v111, &v110, &v109);

              *&v107[0] = sub_181F8C714;
              *(&v107[0] + 1) = v90;
              sub_181F73AE0(v107, &v111, &v110, &v109);

              *&v107[0] = sub_181F8C728;
              *(&v107[0] + 1) = v104;
              sub_181F73AE0(v107, &v111, &v110, &v109);

              *&v107[0] = sub_181F8C728;
              *(&v107[0] + 1) = v106;
              sub_181F73AE0(v107, &v111, &v110, &v109);

              *&v107[0] = sub_181F8C714;
              *(&v107[0] + 1) = v92;
              sub_181F73AE0(v107, &v111, &v110, &v109);

              _os_log_impl(&dword_181A37000, v94, v93, "%s %s %s", v95, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v96, -1, -1);
              MEMORY[0x1865DF520](v95, -1, -1);

              goto LABEL_93;
            }
          }
        }
      }

      else
      {
        while (1)
        {
LABEL_72:
          if (BYTE8(v125) == 5)
          {
            v58 = nw_frame_unclaimed_length(v124);
          }

          else
          {
            if (!v130)
            {
              goto LABEL_93;
            }

            v59 = v128 + v129;
            if (__OFADD__(v128, v129))
            {
              goto LABEL_113;
            }

            v58 = v130 - v59;
            if (__OFSUB__(v130, v59))
            {
              goto LABEL_114;
            }
          }

          if (v58 <= 0)
          {
            goto LABEL_93;
          }

          v60 = BYTE4(v132);
          if (BYTE8(v134) == 2)
          {
            v60 = 0;
          }

          LOBYTE(v114) = v60;
          if ((sub_18204545C(&v124, v49, &v114, v3) & 1) == 0)
          {
            break;
          }

          if (*(v6 + 1160) != 255)
          {
            Frame.finalize(success:)(0);
            sub_18203ADF4();
            goto LABEL_93;
          }

          Frame.finalize(success:)(1);
        }

        Frame.finalize(success:)(1);
      }

LABEL_93:

      goto LABEL_94;
    }
  }

  v3 = *(v6 + 80);
  v6 = *(v6 + 88);
  *&v114 = 0;
  *(&v114 + 1) = 0xE000000000000000;

  sub_182AD3BA8();

  *&v114 = 0xD000000000000022;
  *(&v114 + 1) = 0x8000000182BDA190;
  if (v17)
  {
    v56 = 0xE400000000000000;
    v57 = 1701736270;
  }

  else
  {
    *&v112[0] = v16;
    sub_181F7D8D8();
    v57 = sub_182AD3A88();
    v56 = v61;
  }

  MEMORY[0x1865D9CA0](v57, v56);

  v4 = *(&v114 + 1);
  v5 = v114;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v62 = sub_182AD2698();
  __swift_project_value_buffer(v62, qword_1EA843418);

  v24 = sub_182AD2678();
  for (i = sub_182AD38B8(); ; i = sub_182AD3898())
  {
LABEL_87:
    v63 = i;

    if (os_log_type_enabled(v24, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v114 = v65;
      *v64 = 136315650;
      v66 = sub_182AD3BF8();
      v68 = sub_181C64FFC(v66, v67, &v114);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      v69 = sub_181C64FFC(v3, v6, &v114);

      *(v64 + 14) = v69;
      *(v64 + 22) = 2080;
      v70 = sub_181C64FFC(v5, v4, &v114);

      *(v64 + 24) = v70;
      _os_log_impl(&dword_181A37000, v24, v63, "%s %s %s", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v65, -1, -1);
      MEMORY[0x1865DF520](v64, -1, -1);
    }

    else
    {

LABEL_90:
    }

LABEL_94:
    Frame.finalize(success:)(1);
    v3 = *(&v124 + 1);
    v71 = v124;
    v4 = v125;
    v5 = BYTE8(v125);
    v72 = v126;
    v73 = v127;
    v6 = *(&v136 + 1);
    if (v127 == 2 && v126 == 0)
    {
      break;
    }

    sub_181F68EF4(v124, *(&v124 + 1), v125, BYTE8(v125));

    sub_181F68F3C(v72, *(&v72 + 1), v73);
    __break(1u);
LABEL_130:
    swift_once();
LABEL_117:
    v79 = sub_182AD2698();
    __swift_project_value_buffer(v79, qword_1EA843418);

    v24 = sub_182AD2678();
  }

  if ((v136 & 1) == 0 && v135)
  {
    MEMORY[0x1865DF520](v135, -1, -1);
  }

  sub_181F68EF4(v71, v3, v4, v5);
}

uint64_t sub_18204545C(_DWORD **a1, uint64_t a2, _BYTE *a3, char a4)
{
  v5 = v4;
  LOBYTE(v57) = *a3;
  sub_18201D320(a1, v4, &v67);
  v8 = sub_182064AC8(&v67);
  if (v8 == 1)
  {
    swift_beginAccess();
    v9 = *(v4 + 139);
    v11 = *(v5 + 80);
    v10 = *(v5 + 88);
    v12 = qword_1EA837248;

    if (v9 == 9)
    {
      if (v12 != -1)
      {
        swift_once();
      }

      v13 = sub_182AD2698();
      __swift_project_value_buffer(v13, qword_1EA843418);

      v14 = sub_182AD2678();
      v15 = sub_182AD38B8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v56[0] = v17;
        *v16 = 136315650;
        v18 = sub_182AD3BF8();
        v20 = sub_181C64FFC(v18, v19, v56);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v21 = sub_181C64FFC(v11, v10, v56);

        *(v16 + 14) = v21;
        *(v16 + 22) = 2080;
        v22 = 0x8000000182BDB310;
        v23 = 0xD000000000000016;
LABEL_16:
        *(v16 + 24) = sub_181C64FFC(v23, v22, v56);
        _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v17, -1, -1);
        v29 = v16;
        v8 = 1;
        MEMORY[0x1865DF520](v29, -1, -1);

        goto LABEL_18;
      }
    }

    else
    {
      if (v12 != -1)
      {
        swift_once();
      }

      v24 = sub_182AD2698();
      __swift_project_value_buffer(v24, qword_1EA843418);

      v14 = sub_182AD2678();
      v15 = sub_182AD3898();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v56[0] = v17;
        *v16 = 136315650;
        v25 = sub_182AD3BF8();
        v27 = sub_181C64FFC(v25, v26, v56);

        *(v16 + 4) = v27;
        *(v16 + 12) = 2080;
        v28 = sub_181C64FFC(v11, v10, v56);

        *(v16 + 14) = v28;
        *(v16 + 22) = 2080;
        v23 = 0xD000000000000039;
        v22 = 0x8000000182BDB2D0;
        goto LABEL_16;
      }
    }

LABEL_18:
    if (*(v5 + 1160) != 255)
    {
      sub_18203ADF4();
    }

    return v8 != 1;
  }

  if (v76[27] == 1)
  {
LABEL_3:
    sub_181F843A0(&v67);
    return v8 != 1;
  }

  if (v76[24])
  {
    v65 = v75;
    v66[0] = *v76;
    *(v66 + 12) = *&v76[12];
    v61 = v71;
    v62 = v72;
    v63 = v73;
    v64 = v74;
    v57 = v67;
    v58 = v68;
    v59 = v69;
    v60 = v70;
    if ((sub_182045A9C(&v57) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = v75;
    v66[0] = *v76;
    *(v66 + 12) = *&v76[12];
    v61 = v71;
    v62 = v72;
    v63 = v73;
    v64 = v74;
    v57 = v67;
    v58 = v68;
    v59 = v69;
    v60 = v70;
    if (!sub_182065748(&v57))
    {
      goto LABEL_3;
    }
  }

  v31 = *(&v71 + 1);
  v32 = v72;
  v33 = *(&v74 + 1);
  v34 = *(*(&v74 + 1) + 16);
  if (!v34)
  {
    if (a4)
    {
      sub_182047340(a2, 0, 0);
      v47 = 0;
      goto LABEL_42;
    }

LABEL_41:
    v47 = 0;
LABEL_42:
    v48 = *(v5 + 328);
    v49 = BYTE8(v73);
    v50 = v74;

    sub_182297EA8(v49, v31, v32, v48, v50);

    if (v47)
    {
      v51 = *(v5 + 328);

      sub_182298238(v49, v31, v32, v51, v50);
    }

    goto LABEL_3;
  }

  v53 = v72;
  v54 = *(&v71 + 1);
  v55 = v8;
  v35 = BYTE8(v73);

  v52 = 0;
  v36 = v34 - 1;
  for (i = 32; ; i += 80)
  {
    v57 = *(v33 + i);
    v38 = *(v33 + i + 16);
    v39 = *(v33 + i + 32);
    v40 = *(v33 + i + 64);
    v60 = *(v33 + i + 48);
    v61 = v40;
    v58 = v38;
    v59 = v39;
    if ((*(&v57 + 1) >> 59) > 0x1D || ((1 << (*(&v57 + 1) >> 59)) & 0x30C0000D) == 0)
    {
      v42 = *(v5 + 328);
      sub_181F842F0(&v57, v56);

      sub_182297B84(v35, v54, v53, v42);

      v52 = 1;
    }

    else
    {
      sub_181F842F0(&v57, v56);
    }

    v56[2] = v59;
    v56[3] = v60;
    v56[4] = v61;
    v56[0] = v57;
    v56[1] = v58;
    sub_182047024(v56, v35, a2);
    sub_181F8434C(&v57);
    if (!v36)
    {
      break;
    }

    --v36;
  }

  if (a4)
  {
    result = sub_182047340(a2, 0, 0);
  }

  v8 = v55;
  v31 = v54;
  v32 = v53;
  if ((v52 & 1) == 0)
  {
    goto LABEL_41;
  }

  v43 = *(v5 + 328);
  v44 = *(v43 + 208);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (!v45)
  {
    *(v43 + 208) = v46;
    if (BYTE8(v73) > 1u || *(v43 + 256))
    {
      v47 = 1;
    }

    else
    {
      v47 = 1;
      *(v43 + 256) = 1;
    }

    goto LABEL_42;
  }

  __break(1u);
  return result;
}