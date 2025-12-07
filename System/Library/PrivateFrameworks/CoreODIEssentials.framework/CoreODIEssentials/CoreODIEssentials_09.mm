uint64_t sub_1DAFEBEB8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  v62 = *v2;
  v63 = v5;
  LOBYTE(v60) = 6;
  swift_bridgeObjectRetain_n();
  CoreODILogger.debug(_:category:)(0xD000000000000023, 0x80000001DB0C8710, &v60);

  ODIBindingsDict.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], &v66);
  *&v59[0] = v4;
  LOBYTE(v60) = 0;
  ODIBindingsDict.subscript.getter(&v62);
  if (!v64)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = v60;
  *&v59[0] = v4;
  LOBYTE(v60) = 1;
  ODIBindingsDict.subscript.getter(&v62);
  if (!v64)
  {

LABEL_7:
    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {

    v8 = v60;

    v9 = BindingsHelpers.getNameComponents(firstName:lastName:)(v7, *(&v7 + 1), v8, *(&v8 + 1));

    v10 = sub_1DAF5630C(v9);

    v66 = v10;
    goto LABEL_9;
  }

LABEL_8:
  v62 = v6;
  v63 = v5;
  LOBYTE(v60) = 6;
  CoreODILogger.info(_:category:)(0xD000000000000028, 0x80000001DB0C8740, &v60);

LABEL_9:
  *&v59[0] = v4;
  LOBYTE(v60) = 18;
  ODIBindingsDict.subscript.getter(&v62);
  if (!v64)
  {
LABEL_18:
    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v62 = v6;
    v63 = v5;
    LOBYTE(v60) = 6;
    CoreODILogger.info(_:category:)(0xD00000000000002CLL, 0x80000001DB0C8770, &v60);
LABEL_20:

    goto LABEL_21;
  }

  v11 = v60;
  *&v59[0] = v4;
  LOBYTE(v60) = 19;
  ODIBindingsDict.subscript.getter(&v62);
  if (!v64)
  {

    goto LABEL_18;
  }

  v12 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v13 = BindingsHelpers.getNameComponents(firstName:lastName:)(v11, *(&v11 + 1), v60, *(&v60 + 1));

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v14 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C11F0);
  if (v15)
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
    v64 = v12;
    v65 = MEMORY[0x1E69E6168];
    v62 = v17;
    v63 = v18;
    sub_1DAFEAB28(&v62, &v60);
    if (v61)
    {
      sub_1DAF332B8(&v60, v59);

      v19 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3ADF4(v59, 0xD000000000000018, 0x80000001DB0C1AA0, isUniquelyReferenced_nonNull_native);

      v66 = v19;
    }

    else
    {

      sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DB07F73C(0xD000000000000018, 0x80000001DB0C1AA0, v59);
      sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
    }

    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v24 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C11A0);
  if (v25)
  {
    v26 = (*(v13 + 56) + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v64 = v12;
    v65 = MEMORY[0x1E69E6168];
    v62 = v27;
    v63 = v28;
    sub_1DAFEAB28(&v62, &v60);
    if (v61)
    {
      sub_1DAF332B8(&v60, v59);

      v29 = v66;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3ADF4(v59, 0xD000000000000018, 0x80000001DB0C1AC0, v30);

      v66 = v29;
    }

    else
    {

      sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DB07F73C(0xD000000000000018, 0x80000001DB0C1AC0, v59);
      sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
    }

    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v31 = sub_1DAF35210(0x6947646573726170, 0xEF656D614E6E6576);
  if (v32)
  {
    v33 = (*(v13 + 56) + 16 * v31);
    v34 = *v33;
    v35 = v33[1];
    v64 = v12;
    v65 = MEMORY[0x1E69E6168];
    v62 = v34;
    v63 = v35;
    sub_1DAFEAB28(&v62, &v60);
    if (v61)
    {
      sub_1DAF332B8(&v60, v59);

      v36 = v66;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3ADF4(v59, 0xD000000000000017, 0x80000001DB0C1AE0, v37);

      v66 = v36;
    }

    else
    {

      sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DB07F73C(0xD000000000000017, 0x80000001DB0C1AE0, v59);
      sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
    }

    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v38 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C11D0);
  if (v39)
  {
    v40 = (*(v13 + 56) + 16 * v38);
    v41 = *v40;
    v42 = v40[1];
    v64 = v12;
    v65 = MEMORY[0x1E69E6168];
    v62 = v41;
    v63 = v42;
    sub_1DAFEAB28(&v62, &v60);
    if (v61)
    {
      sub_1DAF332B8(&v60, v59);

      v43 = v66;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3ADF4(v59, 0xD000000000000018, 0x80000001DB0C1B00, v44);

      v66 = v43;
    }

    else
    {

      sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DB07F73C(0xD000000000000018, 0x80000001DB0C1B00, v59);
      sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
    }

    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v45 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C1210);
  if (v46)
  {
    v47 = (*(v13 + 56) + 16 * v45);
    v48 = *v47;
    v49 = v47[1];
    v64 = v12;
    v65 = MEMORY[0x1E69E6168];
    v62 = v48;
    v63 = v49;
    sub_1DAFEAB28(&v62, &v60);
    if (v61)
    {
      sub_1DAF332B8(&v60, v59);

      v50 = v66;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3ADF4(v59, 0xD000000000000018, 0x80000001DB0C1B20, v51);

      v66 = v50;
    }

    else
    {

      sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
      sub_1DB07F73C(0xD000000000000018, 0x80000001DB0C1B20, v59);
      sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
    }

    sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v52 = sub_1DAF35210(0x694E646573726170, 0xEE00656D614E6B63);
  if ((v53 & 1) == 0)
  {
    goto LABEL_20;
  }

  v54 = (*(v13 + 56) + 16 * v52);
  v56 = *v54;
  v55 = v54[1];

  v64 = v12;
  v65 = MEMORY[0x1E69E6168];
  v62 = v56;
  v63 = v55;
  sub_1DAFEAB28(&v62, &v60);
  if (v61)
  {
    sub_1DAF332B8(&v60, v59);
    v57 = v66;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3ADF4(v59, 0xD000000000000016, 0x80000001DB0C1B40, v58);

    v66 = v57;
  }

  else
  {
    sub_1DAF40AEC(&v60, &qword_1ECC0E178, &qword_1DB09FFB0);
    sub_1DB07F73C(0xD000000000000016, 0x80000001DB0C1B40, v59);
    sub_1DAF40AEC(v59, &qword_1ECC0E178, &qword_1DB09FFB0);
  }

  sub_1DAF40AEC(&v62, &qword_1ECC0E178, &qword_1DB09FFB0);
LABEL_21:
  v62 = 0x657261685369646FLL;
  v63 = 0xEF726567676F4C64;
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v60 = 0x2064657373657547;
  *(&v60 + 1) = 0xE800000000000000;
  *&v59[0] = *(v66 + 16);
  v21 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v21);

  MEMORY[0x1E127FE90](0xD000000000000010, 0x80000001DB0C87A0);
  v22 = v60;
  LOBYTE(v60) = 5;
  CoreODILogger.debug(_:category:)(v22, *(&v60 + 1), &v60);

  *a2 = v66;
  return result;
}

uint64_t BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)(uint64_t a1, char a2)
{
  *(v3 + 568) = a2;
  *(v3 + 448) = a1;
  v4 = sub_1DB09D284();
  *(v3 + 456) = v4;
  *(v3 + 464) = *(v4 - 8);
  *(v3 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E998, &qword_1DB0A8B40);
  *(v3 + 480) = swift_task_alloc();
  v5 = sub_1DB09D2A4();
  *(v3 + 488) = v5;
  *(v3 + 496) = *(v5 - 8);
  *(v3 + 504) = swift_task_alloc();
  *(v3 + 512) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A0, &qword_1DB0AECB0);
  *(v3 + 520) = swift_task_alloc();
  v6 = v2[1];
  *(v3 + 528) = *v2;
  *(v3 + 536) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DAFECB50, 0, 0);
}

uint64_t sub_1DAFECB50()
{
  v49 = v0;
  v1 = [objc_opt_self() sharedConnection];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 effectiveBoolValueForSetting_];

    v4 = v3 == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v7 = *(v0 + 488);
  v8 = *(v0 + 496);
  v9 = MEMORY[0x1E69E6370];
  v10 = MEMORY[0x1E69E6380];
  *(v0 + 40) = MEMORY[0x1E69E6370];
  *(v0 + 48) = v10;
  *(v0 + 16) = v4;
  sub_1DAFEAB28(v0 + 16, v0 + 56);
  sub_1DAF33DDC(v0 + 56, 0xD000000000000014, 0x80000001DB0C1300);
  sub_1DAF40AEC(v0 + 16, &qword_1ECC0E178, &qword_1DB09FFB0);
  v11 = MKBGetDeviceLockState() - 1 < 2;
  *(v0 + 120) = v9;
  *(v0 + 128) = v10;
  *(v0 + 96) = v11;
  sub_1DAFEAB28(v0 + 96, v0 + 136);
  sub_1DAF33DDC(v0 + 136, 0x6563697665447369, 0xEE0064656B636F4CLL);
  sub_1DAF40AEC(v0 + 96, &qword_1ECC0E178, &qword_1DB09FFB0);
  sub_1DB09D264();
  sub_1DB09D254();
  v45 = *(v8 + 8);
  v45(v6, v7);
  v12 = sub_1DB09D244();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v5, 1, v12);
  v15 = *(v0 + 520);
  if (v14 == 1)
  {
    sub_1DAF40AEC(*(v0 + 520), &qword_1ECC0E9A0, &qword_1DB0AECB0);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v18 = sub_1DB09D1F4();
    v17 = v19;
    (*(v13 + 8))(v15, v12);
    v16 = v18;
  }

  v20 = *(v0 + 504);
  v21 = *(v0 + 480);
  v22 = *(v0 + 488);
  v24 = *(v0 + 464);
  v23 = *(v0 + 472);
  v25 = *(v0 + 456);
  v26 = _s17CoreODIEssentials15BindingsHelpersV25convertCountryCodeToASCII3strSiSS_tFZ_0(v16, v17);

  v27 = MEMORY[0x1E69E6540];
  *(v0 + 200) = MEMORY[0x1E69E6530];
  *(v0 + 208) = v27;
  *(v0 + 176) = v26;
  sub_1DAFEAB28(v0 + 176, v0 + 216);
  sub_1DAF33DDC(v0 + 216, 0xD000000000000011, 0x80000001DB0C1320);
  sub_1DAF40AEC(v0 + 176, &qword_1ECC0E178, &qword_1DB09FFB0);
  sub_1DB09D264();
  sub_1DB09D294();
  v45(v20, v22);
  sub_1DB09D274();
  (*(v24 + 8))(v23, v25);
  v28 = sub_1DB09D204();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v21, 1, v28);
  v31 = *(v0 + 480);
  if (v30 == 1)
  {
    sub_1DAF40AEC(*(v0 + 480), &qword_1ECC0E998, &qword_1DB0A8B40);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0;
  }

  else
  {
    v32 = sub_1DB09D1F4();
    v33 = MEMORY[0x1E69E6168];
    *(v0 + 280) = MEMORY[0x1E69E6158];
    *(v0 + 288) = v33;
    *(v0 + 256) = v32;
    *(v0 + 264) = v34;
    (*(v29 + 8))(v31, v28);
  }

  v35 = *(v0 + 568);
  sub_1DAFEAB28(v0 + 256, v0 + 296);
  sub_1DAF33DDC(v0 + 296, 0x614C656369766564, 0xEE0065676175676ELL);
  sub_1DAF40AEC(v0 + 256, &qword_1ECC0E178, &qword_1DB09FFB0);
  if (v35)
  {
    v36 = *(v0 + 536);
    v37 = *(v0 + 448);
    v47[0] = *(v0 + 528);
    v47[1] = v36;
    v48 = *v37;

    sub_1DAFEBEB8(&v48, &v46);

    v38 = v46;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47[0] = *v37;
    *v37 = 0x8000000000000000;
    sub_1DAF3FF70(v38, sub_1DAF3DDCC, 0, isUniquelyReferenced_nonNull_native, v47);

    v42 = *(v0 + 448);

    v43 = v47[0];

    *v42 = v43;

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    if (qword_1EE302B50 != -1)
    {
      swift_once();
    }

    v40 = swift_task_alloc();
    *(v0 + 544) = v40;
    *v40 = v0;
    v40[1] = sub_1DAFED188;

    return sub_1DB04CF14();
  }
}

uint64_t sub_1DAFED188(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 552) = a1;
  *(v3 + 560) = v1;

  if (v1)
  {
    v4 = sub_1DAFED4C8;
  }

  else
  {
    v4 = sub_1DAFED2A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAFED2A0()
{
  v21 = v0;
  v1 = *(v0 + 552);
  if (v1)
  {
    v2 = [*(v0 + 552) appleID];

    if (v2)
    {
      v3 = sub_1DB09D6C4();
      v5 = v4;

      v6 = MEMORY[0x1E69E6168];
      *(v0 + 360) = MEMORY[0x1E69E6158];
      *(v0 + 368) = v6;
      *(v0 + 336) = v3;
      *(v0 + 344) = v5;
      sub_1DAFEAB28(v0 + 336, v0 + 376);
      sub_1DAF33DDC(v0 + 376, 0x6469656C707061, 0xE700000000000000);
      sub_1DAF40AEC(v0 + 336, &qword_1ECC0E178, &qword_1DB09FFB0);
    }
  }

  v7 = *(v0 + 560);
  v8 = *(v0 + 536);
  v9 = *(v0 + 448);
  v19[0] = *(v0 + 528);
  v19[1] = v8;
  v20 = *v9;

  sub_1DAFEBEB8(&v20, &v18);

  v10 = v18;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[0] = *v9;
  *v9 = 0x8000000000000000;
  sub_1DAF3FF70(v10, sub_1DAF3DDCC, 0, isUniquelyReferenced_nonNull_native, v19);

  if (v7)
  {
    v12 = *(v0 + 448);

    v13 = v19[0];

    *v12 = v13;
  }

  else
  {
    v15 = *(v0 + 448);

    v16 = v19[0];

    *v15 = v16;

    v17 = *(v0 + 8);

    return v17();
  }

  return result;
}

uint64_t sub_1DAFED4C8()
{
  v16 = v0;
  v1 = v0[70];
  v2 = v0[67];
  v12[0] = v0[66];
  v12[1] = v2;

  sub_1DB09DE44();

  v14 = 0xD000000000000006;
  v15 = 0x80000001DB0C86F0;
  swift_getErrorValue();
  v3 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v3);

  CoreODILogger.error(_:category:)(0xD000000000000017, 0x80000001DB0C86F0, &v14);

  v4 = v0[67];
  v5 = v0[56];
  v14 = v0[66];
  v15 = v4;
  v12[0] = *v5;

  sub_1DAFEBEB8(v12, &v13);

  v6 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v5;
  *v5 = 0x8000000000000000;
  sub_1DAF3FF70(v6, sub_1DAF3DDCC, 0, isUniquelyReferenced_nonNull_native, &v14);

  v8 = v0[56];

  v9 = v14;

  *v8 = v9;

  v10 = v0[1];

  return v10();
}

unint64_t sub_1DAFED704(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DB09D824();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E127FED0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1DAFED780(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1DAFED8D0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1DB09DE34();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1DB09DEC4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1DAFED8D0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1DAFED968(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1DAFED9DC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1DAFED968(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1DAFED704(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DAFED9DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1DB09DEC4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t _s17CoreODIEssentials15BindingsHelpersV25convertCountryCodeToASCII3strSiSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1DB09D7A4() != 2)
  {
    v46 = 0x657261685369646FLL;
    v47 = 0xEF726567676F4C64;
    v44 = 5;
    v45 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000001FLL, 0x80000001DB0C88C0);
    MEMORY[0x1E127FE90](a1, a2);
    MEMORY[0x1E127FE90](0xD000000000000020, 0x80000001DB0C8850);
    CoreODILogger.debug(_:category:)(0, 0xE000000000000000, &v44);

    return -1;
  }

  v4 = sub_1DAFEB220(a1, a2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1DAF5F4FC(0, v5, 0);
    v6 = 32;
    v7 = v46;
    do
    {
      LOBYTE(v44) = *(v4 + v6);
      v8 = sub_1DB09E1D4();
      v46 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        v43 = v8;
        v13 = v9;
        sub_1DAF5F4FC((v10 > 1), v11 + 1, 1);
        v9 = v13;
        v8 = v43;
        v7 = v46;
      }

      *(v7 + 16) = v11 + 1;
      v12 = v7 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      ++v6;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v46 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
  sub_1DAF639B4();
  v15 = sub_1DB09D694();
  v17 = v16;

  v19 = HIBYTE(v17) & 0xF;
  v20 = v15 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v21 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    v14 = -1;
LABEL_74:
    v46 = 0x657261685369646FLL;
    v47 = 0xEF726567676F4C64;
    sub_1DB09DE44();

    v44 = 0xD000000000000005;
    v45 = 0x80000001DB0C88E0;
    MEMORY[0x1E127FE90](a1, a2);
    MEMORY[0x1E127FE90](0xD000000000000011, 0x80000001DB0C88A0);
    v41 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v41);

    CoreODILogger.debug(_:category:)(0xD000000000000018, 0x80000001DB0C88E0, &v44);

    return v14;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    LOBYTE(v44) = 0;
    v14 = sub_1DB04059C(v15, v17, 10);
    v40 = v42;
LABEL_72:

    if (v40)
    {
      v14 = -1;
    }

    goto LABEL_74;
  }

  if ((v17 & 0x2000000000000000) == 0)
  {
    if ((v15 & 0x1000000000000000) != 0)
    {
      result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1DB09DEC4();
    }

    v22 = *result;
    if (v22 == 43)
    {
      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v14 = 0;
          if (result)
          {
            v29 = (result + 1);
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                goto LABEL_70;
              }

              v31 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_70;
              }

              v14 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_70;
              }

              ++v29;
              if (!--v19)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_70;
      }

      goto LABEL_81;
    }

    if (v22 != 45)
    {
      if (v20)
      {
        v14 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_70;
            }

            v36 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_70;
            }

            v14 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_70;
            }

            ++result;
            if (!--v20)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_70:
      v14 = 0;
      LOBYTE(v19) = 1;
      goto LABEL_71;
    }

    if (v20 >= 1)
    {
      v19 = v20 - 1;
      if (v20 != 1)
      {
        v14 = 0;
        if (result)
        {
          v23 = (result + 1);
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_70;
            }

            v25 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_70;
            }

            v14 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_70;
            }

            ++v23;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_62:
        LOBYTE(v19) = 0;
LABEL_71:
        LOBYTE(v44) = v19;
        v40 = v19;
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v46 = v15;
  v47 = v17 & 0xFFFFFFFFFFFFFFLL;
  if (v15 != 43)
  {
    if (v15 != 45)
    {
      if (v19)
      {
        v14 = 0;
        v37 = &v46;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          v37 = (v37 + 1);
          if (!--v19)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v19)
    {
      if (--v19)
      {
        v14 = 0;
        v26 = &v46 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v19)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_80;
  }

  if (v19)
  {
    if (--v19)
    {
      v14 = 0;
      v32 = &v46 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v14;
        if ((v14 * 10) >> 64 != (10 * v14) >> 63)
        {
          break;
        }

        v14 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v19)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t _s17CoreODIEssentials15BindingsHelpersV14deviceLanguageSSSgvgZ_0()
{
  v0 = sub_1DB09D284();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB09D2A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E998, &qword_1DB0A8B40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1DB09D264();
  sub_1DB09D294();
  (*(v5 + 8))(v7, v4);
  sub_1DB09D274();
  (*(v1 + 8))(v3, v0);
  v11 = sub_1DB09D204();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DAF40AEC(v10, &qword_1ECC0E998, &qword_1DB0A8B40);
    return 0;
  }

  else
  {
    v14 = sub_1DB09D1F4();
    (*(v12 + 8))(v10, v11);
    return v14;
  }
}

uint64_t _s17CoreODIEssentials15BindingsHelpersV26convertLanguageCodeToASCII3strSiSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  v29 = a1;
  v30 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v31 = 0;
  v32 = v4;

  v5 = sub_1DB09D7D4();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = MEMORY[0x1E69E7CC0];
    while (v7 != 2573 || v8 != 0xE200000000000000)
    {
      result = sub_1DB09E254();
      if (result)
      {
        break;
      }

      if ((v8 & 0x2000000000000000) != 0)
      {
        v12 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v12 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        v17 = sub_1DB09D774();
      }

      else
      {
        if ((v8 & 0x2000000000000000) != 0)
        {
          v14 = v7;
        }

        else
        {
          if ((v7 & 0x1000000000000000) != 0)
          {
            v13 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v13 = sub_1DB09DEC4();
          }

          v14 = *v13;
        }

        v15 = v14;
        v16 = (__clz(~v14) - 24) << 16;
        if (v15 < 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 65541;
        }
      }

      if (v17 >> 14 == 4 * v12)
      {
        result = sub_1DAFED780(v7, v8);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_51;
        }

        if ((result & 0xFFFFFF80) == 0)
        {
          result = sub_1DAFED780(v7, v8);
          if ((result & 0x100000000) != 0)
          {
            goto LABEL_52;
          }

          v18 = result;

          if ((v18 & 0xFFFFFF00) != 0)
          {
            goto LABEL_49;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_29;
          }

LABEL_33:
          v9 = sub_1DAF72FE0(0, *(v9 + 2) + 1, 1, v9);
LABEL_29:
          v20 = *(v9 + 2);
          v19 = *(v9 + 3);
          if (v20 >= v19 >> 1)
          {
            v9 = sub_1DAF72FE0((v19 > 1), v20 + 1, 1, v9);
          }

          *(v9 + 2) = v20 + 1;
          v9[v20 + 32] = v18;
          goto LABEL_6;
        }
      }

LABEL_6:
      v7 = sub_1DB09D7D4();
      v8 = v10;
      if (!v10)
      {
        goto LABEL_37;
      }
    }

    LOBYTE(v18) = 10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_37:

  v21 = *(v9 + 2);
  if (v21 <= 4 && (result = sub_1DB09D7A4(), v21 == result))
  {
    v22 = *(v9 + 2);
    if (v22)
    {
      v23 = 0;
      v24 = (v9 + 32);
      while ((v23 * 1000) >> 64 == (1000 * v23) >> 63)
      {
        v25 = *v24++;
        v23 = 1000 * v23 + v25;
        if (!--v22)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_50;
    }

    v23 = 0;
LABEL_46:

    v29 = 0x657261685369646FLL;
    v30 = 0xEF726567676F4C64;
    sub_1DB09DE44();

    v27 = 0xD000000000000005;
    v28 = 0x80000001DB0C8880;
    MEMORY[0x1E127FE90](a1, a2);
    MEMORY[0x1E127FE90](0xD000000000000011, 0x80000001DB0C88A0);
    v26 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v26);

    CoreODILogger.debug(_:category:)(0xD000000000000019, 0x80000001DB0C8880, &v27);
  }

  else
  {

    v29 = 0x657261685369646FLL;
    v30 = 0xEF726567676F4C64;
    v27 = 5;
    v28 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000020, 0x80000001DB0C8820);
    MEMORY[0x1E127FE90](a1, a2);
    MEMORY[0x1E127FE90](0xD000000000000020, 0x80000001DB0C8850);
    CoreODILogger.debug(_:category:)(0, 0xE000000000000000, &v27);

    return -1;
  }

  return v23;
}

uint64_t sub_1DAFEE7F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A0, &qword_1DB0AECB0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1DB09D2A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentLocale];
  sub_1DB09D224();

  sub_1DB09D254();
  v8 = sub_1DB09D244();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_1DAF40AEC(v2, &qword_1ECC0E9A0, &qword_1DB0AECB0);
  }

  else
  {
    sub_1DB09D1F4();
    (*(v9 + 8))(v2, v8);
  }

  v10 = sub_1DB09D6B4();

  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t _s17CoreODIEssentials15BindingsHelpersV17formatPhoneNumber05phoneG016usingCountryCodeSSSgSS_So8NSStringCSgtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000019, 0x80000001DB0C87C0);
  MEMORY[0x1E127FE90](a1, a2);
  MEMORY[0x1E127FE90](0xD00000000000001CLL, 0x80000001DB0C87E0);
  if (qword_1EE3019A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1DB09D4B4();
  v7 = __swift_project_value_buffer(v6, qword_1EE30A080);

  sub_1DB0163B8(v7, 0x657261685369646FLL, 0xEF726567676F4C64, 0, 0xE000000000000000);
  swift_bridgeObjectRelease_n();
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = sub_1DAFEE7F0();
  }

  v25 = 0x657261685369646FLL;
  v26 = 0xEF726567676F4C64;
  v9 = a3;
  sub_1DB09DE44();

  strcpy(v24, "Country Code: ");
  HIBYTE(v24[1]) = -18;
  v10 = sub_1DB09D6C4();
  MEMORY[0x1E127FE90](v10);

  v11 = v24[0];
  LOBYTE(v24[0]) = 14;
  CoreODILogger.debug(_:category:)(v11, v24[1], v24);

  v12 = sub_1DB09D6B4();
  v13 = CFPhoneNumberCreate();

  String = CFPhoneNumberCreateString();
  if (String)
  {
    v15 = String;
    v16 = sub_1DB09D6C4();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000018, 0x80000001DB0C8800);
  if (v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = 7104878;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  MEMORY[0x1E127FE90](v19, v20);

  MEMORY[0x1E127FE90](0xD00000000000001CLL, 0x80000001DB0C87E0);
  v21 = v25;
  v22 = v26;

  sub_1DB0163B8(v7, 0x657261685369646FLL, 0xEF726567676F4C64, v21, v22);

  swift_bridgeObjectRelease_n();
  return v16;
}

unint64_t sub_1DAFEED2C()
{
  result = qword_1ECC0F188;
  if (!qword_1ECC0F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BindingsKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBA)
  {
    goto LABEL_17;
  }

  if (a2 + 70 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 70) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 70;
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

      return (*a1 | (v4 << 8)) - 70;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 70;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x47;
  v8 = v6 - 71;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BindingsKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 70 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 70) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBA)
  {
    v4 = 0;
  }

  if (a2 > 0xB9)
  {
    v5 = ((a2 - 186) >> 8) + 1;
    *result = a2 + 70;
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
    *result = a2 + 70;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1DAFEEEE0(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v39 = 0x49444F65726F63;
  *(&v39 + 1) = 0xE700000000000000;
  sub_1DB09DDB4();
  if (*(a1 + 16) && (v4 = sub_1DAF353E0(&v54), (v5 & 1) != 0))
  {
    sub_1DAF409DC(*(a1 + 56) + 32 * v4, v53);
    sub_1DAF4057C(&v54);
    if (swift_dynamicCast())
    {
      v6 = v39;
      sub_1DB09CC24();
      swift_allocObject();
      sub_1DB09CC14();
      sub_1DAFF33D8();
      sub_1DB09CC04();

      strcpy(&v39, "daemonVersion");
      HIWORD(v39) = -4864;
      sub_1DB09DDB4();
      if (*(a1 + 16) && (v18 = sub_1DAF353E0(v53), (v19 & 1) != 0))
      {
        sub_1DAF409DC(*(a1 + 56) + 32 * v18, &v39);
        sub_1DAF4057C(v53);
        v20 = swift_dynamicCast();
        if (v20)
        {
          v21 = *&v38[0];
        }

        else
        {
          v21 = 0;
        }

        if (v20)
        {
          v22 = *(&v38[0] + 1);
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        sub_1DAF4057C(v53);
        v21 = 0;
        v22 = 0;
      }

      *&v54 = v21;
      *(&v54 + 1) = v22;
      *&v39 = 0x7365727574616566;
      *(&v39 + 1) = 0xE800000000000000;
      sub_1DB09DDB4();
      if (*(a1 + 16) && (v23 = sub_1DAF353E0(v53), (v24 & 1) != 0))
      {
        sub_1DAF409DC(*(a1 + 56) + 32 * v23, &v39);
        sub_1DAF4057C(v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1B8, &qword_1DB0AEF00);
        if (swift_dynamicCast())
        {
          v25 = *&v38[0];
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        sub_1DAF4057C(v53);
        v25 = 0;
      }

      *(&v67 + 1) = v25;
      if (qword_1EE304018 != -1)
      {
        swift_once();
      }

      v26 = sub_1DB09D4B4();
      __swift_project_value_buffer(v26, qword_1EE304020);
      v27 = sub_1DB09D494();
      v28 = sub_1DB09DB54();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1DAF16000, v27, v28, "Got config from asd.", v29, 2u);
        MEMORY[0x1E1281810](v29, -1, -1);
      }

      sub_1DAF40780(v6, *(&v6 + 1));

      v38[10] = v64;
      v38[11] = v65;
      v38[12] = v66;
      v38[13] = v67;
      v38[6] = v60;
      v38[7] = v61;
      v38[8] = v62;
      v38[9] = v63;
      v38[2] = v56;
      v38[3] = v57;
      v38[4] = v58;
      v38[5] = v59;
      v38[0] = v54;
      v38[1] = v55;
      v49 = v64;
      v50 = v65;
      v51 = v66;
      v52 = v67;
      v45 = v60;
      v46 = v61;
      v47 = v62;
      v48 = v63;
      v41 = v56;
      v42 = v57;
      v43 = v58;
      v44 = v59;
      v39 = v54;
      v40 = v55;
      nullsub_3();
      v30 = v50;
      a2[10] = v49;
      a2[11] = v30;
      v31 = v52;
      a2[12] = v51;
      a2[13] = v31;
      v32 = v46;
      a2[6] = v45;
      a2[7] = v32;
      v33 = v48;
      a2[8] = v47;
      a2[9] = v33;
      v34 = v42;
      a2[2] = v41;
      a2[3] = v34;
      v35 = v44;
      a2[4] = v43;
      a2[5] = v35;
      v36 = v40;
      *a2 = v39;
      a2[1] = v36;
      v53[10] = v64;
      v53[11] = v65;
      v53[12] = v66;
      v53[13] = v67;
      v53[6] = v60;
      v53[7] = v61;
      v53[8] = v62;
      v53[9] = v63;
      v53[2] = v56;
      v53[3] = v57;
      v53[4] = v58;
      v53[5] = v59;
      v53[0] = v54;
      v53[1] = v55;
      sub_1DAFF0C8C(v38, &v37);
      sub_1DAF791EC(v53);
      return;
    }
  }

  else
  {
    sub_1DAF4057C(&v54);
  }

  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v7 = sub_1DB09D4B4();
  __swift_project_value_buffer(v7, qword_1EE304020);
  v8 = sub_1DB09D494();
  v9 = sub_1DB09DB64();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DAF16000, v8, v9, "Error decoding config from asd: No Data object coreODI", v10, 2u);
    MEMORY[0x1E1281810](v10, -1, -1);
  }

  sub_1DAFF33AC(&v54);
  v11 = v65;
  a2[10] = v64;
  a2[11] = v11;
  v12 = v67;
  a2[12] = v66;
  a2[13] = v12;
  v13 = v61;
  a2[6] = v60;
  a2[7] = v13;
  v14 = v63;
  a2[8] = v62;
  a2[9] = v14;
  v15 = v57;
  a2[2] = v56;
  a2[3] = v15;
  v16 = v59;
  a2[4] = v58;
  a2[5] = v16;
  v17 = v55;
  *a2 = v54;
  a2[1] = v17;
}

double sub_1DAFEF700@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  strcpy(&v27, "daemonVersion");
  HIWORD(v27) = -4864;
  sub_1DB09DDB4();
  if (!*(a1 + 16) || (v4 = sub_1DAF353E0(v16), (v5 & 1) == 0))
  {
    sub_1DAF4057C(v16);
LABEL_12:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_13;
  }

  sub_1DAF409DC(*(a1 + 56) + 32 * v4, &v27);
  sub_1DAF4057C(v16);
  if (!*(&v28 + 1))
  {
LABEL_13:
    sub_1DAF40AEC(&v27, &qword_1ECC0E370, &qword_1DB0A09B0);
    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = *&v16[0];
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = *(&v16[0] + 1);
  }

  else
  {
    v8 = 0;
  }

LABEL_14:
  sub_1DAFF3384(v16);
  *a2 = v7;
  *(a2 + 8) = v8;
  v9 = v24;
  *(a2 + 144) = v23;
  *(a2 + 160) = v9;
  v10 = v26;
  *(a2 + 176) = v25;
  *(a2 + 192) = v10;
  v11 = v20;
  *(a2 + 80) = v19;
  *(a2 + 96) = v11;
  v12 = v22;
  *(a2 + 112) = v21;
  *(a2 + 128) = v12;
  v13 = v16[1];
  *(a2 + 16) = v16[0];
  *(a2 + 32) = v13;
  result = *&v17;
  v15 = v18;
  *(a2 + 48) = v17;
  *(a2 + 64) = v15;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  return result;
}

uint64_t sub_1DAFEF854(char a1)
{
  v2 = 0;
  switch(a1)
  {
    case 1:
      return v2;
    case 2:
      v33 = v1[10];
      v84 = v1[9];
      v85 = v33;
      v34 = v1[12];
      v86 = v1[11];
      v87 = v34;
      v35 = v1[6];
      v80 = v1[5];
      v81 = v35;
      v36 = v1[8];
      v82 = v1[7];
      v83 = v36;
      v37 = v1[2];
      v76 = v1[1];
      v77 = v37;
      v38 = v1[4];
      v78 = v1[3];
      v79 = v38;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v77;
      goto LABEL_27;
    case 3:
      v39 = v1[10];
      v84 = v1[9];
      v85 = v39;
      v40 = v1[12];
      v86 = v1[11];
      v87 = v40;
      v41 = v1[6];
      v80 = v1[5];
      v81 = v41;
      v42 = v1[8];
      v82 = v1[7];
      v83 = v42;
      v43 = v1[2];
      v76 = v1[1];
      v77 = v43;
      v44 = v1[4];
      v78 = v1[3];
      v79 = v44;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v78;
      goto LABEL_27;
    case 4:
      v15 = v1[10];
      v84 = v1[9];
      v85 = v15;
      v16 = v1[12];
      v86 = v1[11];
      v87 = v16;
      v17 = v1[6];
      v80 = v1[5];
      v81 = v17;
      v18 = v1[8];
      v82 = v1[7];
      v83 = v18;
      v19 = v1[2];
      v76 = v1[1];
      v77 = v19;
      v20 = v1[4];
      v78 = v1[3];
      v79 = v20;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v79;
      goto LABEL_27;
    case 5:
      v51 = v1[10];
      v84 = v1[9];
      v85 = v51;
      v52 = v1[12];
      v86 = v1[11];
      v87 = v52;
      v53 = v1[6];
      v80 = v1[5];
      v81 = v53;
      v54 = v1[8];
      v82 = v1[7];
      v83 = v54;
      v55 = v1[2];
      v76 = v1[1];
      v77 = v55;
      v56 = v1[4];
      v78 = v1[3];
      v79 = v56;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v80;
      goto LABEL_27;
    case 6:
      v57 = v1[10];
      v84 = v1[9];
      v85 = v57;
      v58 = v1[12];
      v86 = v1[11];
      v87 = v58;
      v59 = v1[6];
      v80 = v1[5];
      v81 = v59;
      v60 = v1[8];
      v82 = v1[7];
      v83 = v60;
      v61 = v1[2];
      v76 = v1[1];
      v77 = v61;
      v62 = v1[4];
      v78 = v1[3];
      v79 = v62;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v82;
      goto LABEL_27;
    case 7:
      v45 = v1[10];
      v84 = v1[9];
      v85 = v45;
      v46 = v1[12];
      v86 = v1[11];
      v87 = v46;
      v47 = v1[6];
      v80 = v1[5];
      v81 = v47;
      v48 = v1[8];
      v82 = v1[7];
      v83 = v48;
      v49 = v1[2];
      v76 = v1[1];
      v77 = v49;
      v50 = v1[4];
      v78 = v1[3];
      v79 = v50;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v81;
      goto LABEL_27;
    case 8:
      v69 = v1[10];
      v84 = v1[9];
      v85 = v69;
      v70 = v1[12];
      v86 = v1[11];
      v87 = v70;
      v71 = v1[6];
      v80 = v1[5];
      v81 = v71;
      v72 = v1[8];
      v82 = v1[7];
      v83 = v72;
      v73 = v1[2];
      v76 = v1[1];
      v77 = v73;
      v74 = v1[4];
      v78 = v1[3];
      v79 = v74;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v83;
      goto LABEL_27;
    case 9:
      v27 = v1[10];
      v84 = v1[9];
      v85 = v27;
      v28 = v1[12];
      v86 = v1[11];
      v87 = v28;
      v29 = v1[6];
      v80 = v1[5];
      v81 = v29;
      v30 = v1[8];
      v82 = v1[7];
      v83 = v30;
      v31 = v1[2];
      v76 = v1[1];
      v77 = v31;
      v32 = v1[4];
      v78 = v1[3];
      v79 = v32;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v84;
      goto LABEL_27;
    case 10:
      v63 = v1[10];
      v84 = v1[9];
      v85 = v63;
      v64 = v1[12];
      v86 = v1[11];
      v87 = v64;
      v65 = v1[6];
      v80 = v1[5];
      v81 = v65;
      v66 = v1[8];
      v82 = v1[7];
      v83 = v66;
      v67 = v1[2];
      v76 = v1[1];
      v77 = v67;
      v68 = v1[4];
      v78 = v1[3];
      v79 = v68;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v85;
      goto LABEL_27;
    case 11:
      v9 = v1[10];
      v84 = v1[9];
      v85 = v9;
      v10 = v1[12];
      v86 = v1[11];
      v87 = v10;
      v11 = v1[6];
      v80 = v1[5];
      v81 = v11;
      v12 = v1[8];
      v82 = v1[7];
      v83 = v12;
      v13 = v1[2];
      v76 = v1[1];
      v77 = v13;
      v14 = v1[4];
      v78 = v1[3];
      v79 = v14;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v86;
      goto LABEL_27;
    case 12:
      v21 = v1[10];
      v84 = v1[9];
      v85 = v21;
      v22 = v1[12];
      v86 = v1[11];
      v87 = v22;
      v23 = v1[6];
      v80 = v1[5];
      v81 = v23;
      v24 = v1[8];
      v82 = v1[7];
      v83 = v24;
      v25 = v1[2];
      v76 = v1[1];
      v77 = v25;
      v26 = v1[4];
      v78 = v1[3];
      v79 = v26;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v87;
      goto LABEL_27;
    default:
      v3 = v1[10];
      v84 = v1[9];
      v85 = v3;
      v4 = v1[12];
      v86 = v1[11];
      v87 = v4;
      v5 = v1[6];
      v80 = v1[5];
      v81 = v5;
      v6 = v1[8];
      v82 = v1[7];
      v83 = v6;
      v7 = v1[2];
      v76 = v1[1];
      v77 = v7;
      v8 = v1[4];
      v78 = v1[3];
      v79 = v8;
      if (sub_1DAF33380(&v76) == 1)
      {
        return 0;
      }

      v2 = v76;
LABEL_27:

      return v2;
  }
}

uint64_t sub_1DAFEFC24(uint64_t a1)
{
  *(v2 + 2712) = v1;
  *(v2 + 2704) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFEFC48, v1, 0);
}

uint64_t sub_1DAFEFC48()
{
  v1 = *(v0 + 2712);
  v2 = *(v1 + 336);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    v78 = *(v1 + 272);
    v79 = *(v1 + 288);
    v80 = *(v1 + 304);
    v81 = *(v1 + 320);
    v74 = *(v1 + 208);
    v75 = *(v1 + 224);
    v76 = *(v1 + 240);
    v77 = *(v1 + 256);
    v3 = *(v1 + 128);
    v70 = *(v1 + 144);
    v71 = *(v1 + 160);
    v72 = *(v1 + 176);
    v73 = *(v1 + 192);
    v68 = *(v1 + 112);
    v69 = v3;
    *(v0 + 2032) = v68;
    *(v0 + 2048) = v3;
    v4 = *(v1 + 144);
    v5 = *(v1 + 160);
    v6 = *(v1 + 192);
    *(v0 + 2096) = *(v1 + 176);
    *(v0 + 2112) = v6;
    *(v0 + 2064) = v4;
    *(v0 + 2080) = v5;
    v7 = *(v1 + 208);
    v8 = *(v1 + 224);
    v9 = *(v1 + 256);
    *(v0 + 2160) = *(v1 + 240);
    *(v0 + 2176) = v9;
    *(v0 + 2128) = v7;
    *(v0 + 2144) = v8;
    v10 = *(v1 + 272);
    v11 = *(v1 + 288);
    v12 = *(v1 + 320);
    *(v0 + 2224) = *(v1 + 304);
    *(v0 + 2240) = v12;
    *(v0 + 2192) = v10;
    *(v0 + 2208) = v11;
    if (sub_1DAF33380(v0 + 2032) != 1)
    {
      v36 = v0 + 2256;
      v56 = *(v0 + 2704);
      v57 = *(v0 + 2048);
      *v56 = *(v0 + 2032);
      v56[1] = v57;
      v58 = *(v0 + 2064);
      v59 = *(v0 + 2080);
      v60 = *(v0 + 2112);
      v56[4] = *(v0 + 2096);
      v56[5] = v60;
      v56[2] = v58;
      v56[3] = v59;
      v61 = *(v0 + 2128);
      v62 = *(v0 + 2144);
      v63 = *(v0 + 2176);
      v56[8] = *(v0 + 2160);
      v56[9] = v63;
      v56[6] = v61;
      v56[7] = v62;
      v64 = *(v0 + 2192);
      v65 = *(v0 + 2208);
      v66 = *(v0 + 2240);
      v56[12] = *(v0 + 2224);
      v56[13] = v66;
      v56[10] = v64;
      v56[11] = v65;
      *(v0 + 2416) = v78;
      *(v0 + 2432) = v79;
      *(v0 + 2448) = v80;
      *(v0 + 2464) = v81;
      *(v0 + 2352) = v74;
      *(v0 + 2368) = v75;
      *(v0 + 2384) = v76;
      *(v0 + 2400) = v77;
      *(v0 + 2288) = v70;
      *(v0 + 2304) = v71;
      *(v0 + 2320) = v72;
      *(v0 + 2336) = v73;
      *(v0 + 2256) = v68;
      *(v0 + 2272) = v69;
      v55 = v0 + 2480;
      goto LABEL_11;
    }

    v1 = *(v0 + 2712);
  }

  v13 = (v1 + 344);
  v14 = v13[1];
  *(v0 + 240) = *v13;
  *(v0 + 256) = v14;
  v15 = v13[2];
  v16 = v13[3];
  v17 = v13[5];
  *(v0 + 304) = v13[4];
  *(v0 + 320) = v17;
  *(v0 + 272) = v15;
  *(v0 + 288) = v16;
  v18 = v13[6];
  v19 = v13[7];
  v20 = v13[9];
  *(v0 + 368) = v13[8];
  *(v0 + 384) = v20;
  *(v0 + 336) = v18;
  *(v0 + 352) = v19;
  v21 = v13[10];
  v22 = v13[11];
  v23 = v13[13];
  *(v0 + 432) = v13[12];
  *(v0 + 448) = v23;
  *(v0 + 400) = v21;
  *(v0 + 416) = v22;
  v24 = v13[1];
  *(v0 + 16) = *v13;
  *(v0 + 32) = v24;
  v25 = v13[2];
  v26 = v13[3];
  v27 = v13[5];
  *(v0 + 80) = v13[4];
  *(v0 + 96) = v27;
  *(v0 + 48) = v25;
  *(v0 + 64) = v26;
  v28 = v13[6];
  v29 = v13[7];
  v30 = v13[9];
  *(v0 + 144) = v13[8];
  *(v0 + 160) = v30;
  *(v0 + 112) = v28;
  *(v0 + 128) = v29;
  v31 = v13[10];
  v32 = v13[11];
  v33 = v13[13];
  *(v0 + 208) = v13[12];
  *(v0 + 224) = v33;
  *(v0 + 176) = v31;
  *(v0 + 192) = v32;
  if (sub_1DAF33380(v0 + 16) == 1)
  {
    v34 = swift_task_alloc();
    *(v0 + 2720) = v34;
    *v34 = v0;
    v34[1] = sub_1DAFEFF34;

    return sub_1DAFF06A8(v0 + 1136);
  }

  v36 = v0 + 1584;
  v37 = *(v0 + 2704);
  v38 = *(v0 + 32);
  *v37 = *(v0 + 16);
  v37[1] = v38;
  v39 = *(v0 + 48);
  v40 = *(v0 + 64);
  v41 = *(v0 + 96);
  v37[4] = *(v0 + 80);
  v37[5] = v41;
  v37[2] = v39;
  v37[3] = v40;
  v42 = *(v0 + 112);
  v43 = *(v0 + 128);
  v44 = *(v0 + 160);
  v37[8] = *(v0 + 144);
  v37[9] = v44;
  v37[6] = v42;
  v37[7] = v43;
  v45 = *(v0 + 176);
  v46 = *(v0 + 192);
  v47 = *(v0 + 224);
  v37[12] = *(v0 + 208);
  v37[13] = v47;
  v37[10] = v45;
  v37[11] = v46;
  v48 = *(v0 + 416);
  *(v0 + 1744) = *(v0 + 400);
  *(v0 + 1760) = v48;
  v49 = *(v0 + 448);
  *(v0 + 1776) = *(v0 + 432);
  *(v0 + 1792) = v49;
  v50 = *(v0 + 352);
  *(v0 + 1680) = *(v0 + 336);
  *(v0 + 1696) = v50;
  v51 = *(v0 + 384);
  *(v0 + 1712) = *(v0 + 368);
  *(v0 + 1728) = v51;
  v52 = *(v0 + 288);
  *(v0 + 1616) = *(v0 + 272);
  *(v0 + 1632) = v52;
  v53 = *(v0 + 320);
  *(v0 + 1648) = *(v0 + 304);
  *(v0 + 1664) = v53;
  v54 = *(v0 + 256);
  *(v0 + 1584) = *(v0 + 240);
  *(v0 + 1600) = v54;
  v55 = v0 + 1808;
LABEL_11:
  sub_1DAFF0C8C(v36, v55);
  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_1DAFEFF34()
{
  v1 = *(*v0 + 2712);

  return MEMORY[0x1EEE6DFA0](sub_1DAFF0044, v1, 0);
}

uint64_t sub_1DAFF0044()
{
  v1 = *(v0 + 2704);
  v2 = (*(v0 + 2712) + 344);
  *(v0 + 1072) = *(v0 + 1296);
  *(v0 + 1088) = *(v0 + 1312);
  *(v0 + 1104) = *(v0 + 1328);
  *(v0 + 1120) = *(v0 + 1344);
  v3 = *(v0 + 1248);
  *(v0 + 1008) = *(v0 + 1232);
  *(v0 + 1024) = v3;
  *(v0 + 1040) = *(v0 + 1264);
  *(v0 + 1056) = *(v0 + 1280);
  v4 = *(v0 + 1184);
  *(v0 + 944) = *(v0 + 1168);
  *(v0 + 960) = v4;
  v5 = *(v0 + 1216);
  *(v0 + 976) = *(v0 + 1200);
  *(v0 + 992) = v5;
  v6 = *(v0 + 1152);
  *(v0 + 912) = *(v0 + 1136);
  *(v0 + 928) = v6;
  v7 = *(v0 + 1088);
  *(v0 + 848) = *(v0 + 1072);
  *(v0 + 864) = v7;
  v8 = *(v0 + 1120);
  *(v0 + 880) = *(v0 + 1104);
  *(v0 + 896) = v8;
  v9 = *(v0 + 1024);
  *(v0 + 784) = *(v0 + 1008);
  *(v0 + 800) = v9;
  v10 = *(v0 + 1056);
  *(v0 + 816) = *(v0 + 1040);
  *(v0 + 832) = v10;
  v11 = *(v0 + 960);
  *(v0 + 720) = *(v0 + 944);
  *(v0 + 736) = v11;
  v12 = *(v0 + 992);
  *(v0 + 752) = *(v0 + 976);
  *(v0 + 768) = v12;
  v13 = *(v0 + 928);
  *(v0 + 688) = *(v0 + 912);
  *(v0 + 704) = v13;
  nullsub_3();
  v14 = v2[1];
  *(v0 + 464) = *v2;
  *(v0 + 480) = v14;
  v15 = v2[2];
  v16 = v2[3];
  v17 = v2[5];
  *(v0 + 528) = v2[4];
  *(v0 + 544) = v17;
  *(v0 + 496) = v15;
  *(v0 + 512) = v16;
  v18 = v2[6];
  v19 = v2[7];
  v20 = v2[9];
  *(v0 + 592) = v2[8];
  *(v0 + 608) = v20;
  *(v0 + 560) = v18;
  *(v0 + 576) = v19;
  v21 = v2[10];
  v22 = v2[11];
  v23 = v2[13];
  *(v0 + 656) = v2[12];
  *(v0 + 672) = v23;
  *(v0 + 624) = v21;
  *(v0 + 640) = v22;
  v24 = *(v0 + 704);
  *v2 = *(v0 + 688);
  v2[1] = v24;
  v25 = *(v0 + 720);
  v26 = *(v0 + 736);
  v27 = *(v0 + 768);
  v2[4] = *(v0 + 752);
  v2[5] = v27;
  v2[2] = v25;
  v2[3] = v26;
  v28 = *(v0 + 784);
  v29 = *(v0 + 800);
  v30 = *(v0 + 832);
  v2[8] = *(v0 + 816);
  v2[9] = v30;
  v2[6] = v28;
  v2[7] = v29;
  v31 = *(v0 + 848);
  v32 = *(v0 + 864);
  v33 = *(v0 + 896);
  v2[12] = *(v0 + 880);
  v2[13] = v33;
  v2[10] = v31;
  v2[11] = v32;
  sub_1DAFF0C8C(v0 + 912, v0 + 1360);
  sub_1DAF40AEC(v0 + 464, &qword_1ECC0F190, &qword_1DB0AEEE0);
  v34 = *(v0 + 928);
  *v1 = *(v0 + 912);
  v1[1] = v34;
  v35 = *(v0 + 992);
  v37 = *(v0 + 944);
  v36 = *(v0 + 960);
  v1[4] = *(v0 + 976);
  v1[5] = v35;
  v1[2] = v37;
  v1[3] = v36;
  v38 = *(v0 + 1056);
  v40 = *(v0 + 1008);
  v39 = *(v0 + 1024);
  v1[8] = *(v0 + 1040);
  v1[9] = v38;
  v1[6] = v40;
  v1[7] = v39;
  v41 = *(v0 + 1088);
  v42 = *(v0 + 1120);
  v43 = *(v0 + 1072);
  v1[12] = *(v0 + 1104);
  v1[13] = v42;
  v1[10] = v43;
  v1[11] = v41;
  v44 = *(v0 + 8);

  return v44();
}

double sub_1DAFF022C()
{
  type metadata accessor for ConfigManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1DAFF33AC(&v23);
  v1 = v34;
  v2 = v33;
  v3 = v34;
  *(v0 + 272) = v33;
  *(v0 + 288) = v1;
  v4 = v36;
  v5 = v35;
  v6 = v36;
  *(v0 + 304) = v35;
  *(v0 + 320) = v4;
  v7 = v30;
  v8 = v29;
  v9 = v30;
  *(v0 + 208) = v29;
  *(v0 + 224) = v7;
  v10 = v32;
  v11 = v31;
  v12 = v32;
  *(v0 + 240) = v31;
  *(v0 + 256) = v10;
  v13 = v26;
  v14 = v25;
  v15 = v26;
  *(v0 + 144) = v25;
  *(v0 + 160) = v13;
  v16 = v28;
  v17 = v27;
  v18 = v28;
  *(v0 + 176) = v27;
  *(v0 + 192) = v16;
  result = *&v23;
  v20 = v24;
  v21 = v23;
  v22 = v24;
  *(v0 + 112) = v23;
  *(v0 + 128) = v20;
  *(v0 + 504) = v2;
  *(v0 + 520) = v3;
  *(v0 + 536) = v5;
  *(v0 + 552) = v6;
  *(v0 + 440) = v8;
  *(v0 + 456) = v9;
  *(v0 + 472) = v11;
  *(v0 + 488) = v12;
  *(v0 + 376) = v14;
  *(v0 + 392) = v15;
  *(v0 + 408) = v17;
  *(v0 + 424) = v18;
  *(v0 + 336) = 2;
  *(v0 + 344) = v21;
  *(v0 + 360) = v22;
  qword_1EE304010 = v0;
  return result;
}

uint64_t static ConfigManager.shared.getter()
{
  if (qword_1EE304008 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1DAFF0350(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v4 = sub_1DB09D4B4();
  __swift_project_value_buffer(v4, qword_1EE304020);

  v5 = sub_1DB09D494();
  v6 = sub_1DB09DB54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v73[0] = v8;
    *v7 = 136315138;
    v9 = sub_1DB09D634();
    v11 = sub_1DB015E84(v9, v10, v73);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DAF16000, v5, v6, "Config being set by direct call from asd: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E1281810](v8, -1, -1);
    MEMORY[0x1E1281810](v7, -1, -1);
  }

  sub_1DAFEEEE0(a1, &v59);
  v73[10] = v69;
  v73[11] = v70;
  v73[12] = v71;
  v73[13] = v72;
  v73[6] = v65;
  v73[7] = v66;
  v73[8] = v67;
  v73[9] = v68;
  v73[2] = v61;
  v73[3] = v62;
  v73[4] = v63;
  v73[5] = v64;
  v73[0] = v59;
  v73[1] = v60;
  if (sub_1DAF33380(v73) == 1)
  {
    v12 = sub_1DB09D494();
    v13 = sub_1DB09DB64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DAF16000, v12, v13, "Couldn't set configuration directly passed in. Falling back to default", v14, 2u);
      MEMORY[0x1E1281810](v14, -1, -1);
    }

    sub_1DAFEF700(a1, v44);
    nullsub_3();
    v15 = v2[18];
    v55 = v2[17];
    v56 = v15;
    v16 = v2[20];
    v57 = v2[19];
    v58 = v16;
    v17 = v2[14];
    v51 = v2[13];
    v52 = v17;
    v18 = v2[16];
    v53 = v2[15];
    v54 = v18;
    v19 = v2[10];
    v47 = v2[9];
    v48 = v19;
    v20 = v2[12];
    v49 = v2[11];
    v50 = v20;
    v21 = v2[8];
    v45 = v2[7];
    v46 = v21;
    v22 = v44[11];
    v2[17] = v44[10];
    v2[18] = v22;
    v23 = v44[13];
    v2[19] = v44[12];
    v2[20] = v23;
    v24 = v44[7];
    v2[13] = v44[6];
    v2[14] = v24;
    v25 = v44[9];
    v2[15] = v44[8];
    v2[16] = v25;
    v26 = v44[3];
    v2[9] = v44[2];
    v2[10] = v26;
    v27 = v44[5];
    v2[11] = v44[4];
    v2[12] = v27;
    v28 = v44[0];
    v29 = v44[1];
  }

  else
  {
    v30 = v1[18];
    v55 = v1[17];
    v56 = v30;
    v31 = v1[20];
    v57 = v1[19];
    v58 = v31;
    v32 = v1[14];
    v51 = v1[13];
    v52 = v32;
    v33 = v1[16];
    v53 = v1[15];
    v54 = v33;
    v34 = v1[10];
    v47 = v1[9];
    v48 = v34;
    v35 = v1[12];
    v49 = v1[11];
    v50 = v35;
    v36 = v1[8];
    v45 = v1[7];
    v46 = v36;
    v37 = v70;
    v1[17] = v69;
    v1[18] = v37;
    v38 = v72;
    v1[19] = v71;
    v1[20] = v38;
    v39 = v66;
    v1[13] = v65;
    v1[14] = v39;
    v40 = v68;
    v1[15] = v67;
    v1[16] = v40;
    v41 = v62;
    v1[9] = v61;
    v1[10] = v41;
    v42 = v64;
    v1[11] = v63;
    v1[12] = v42;
    v28 = v59;
    v29 = v60;
  }

  v2[7] = v28;
  v2[8] = v29;
  result = sub_1DAF40AEC(&v45, &qword_1ECC0F190, &qword_1DB0AEEE0);
  *(v2 + 336) = 1;
  return result;
}

uint64_t sub_1DAFF06A8(uint64_t a1)
{
  v2[59] = a1;
  v2[60] = v1;
  v2[61] = type metadata accessor for ODISignpost(0);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFF0748, v1, 0);
}

uint64_t sub_1DAFF0748()
{
  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB09D4B4();
  __swift_project_value_buffer(v1, qword_1EE304020);
  v2 = sub_1DB09D494();
  v3 = sub_1DB09DB54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAF16000, v2, v3, "Enter client bag fetch", v4, 2u);
    MEMORY[0x1E1281810](v4, -1, -1);
  }

  if (qword_1ECC0E0E0 != -1)
  {
    swift_once();
  }

  v5 = v0[61];
  v6 = v0[62];
  v8 = qword_1ECC25DC0;
  v7 = *algn_1ECC25DC8;
  v9 = byte_1ECC25DD0;
  v10 = qword_1ECC25DD8;
  v11 = byte_1ECC25DE0;
  *(v6 + 32) = "enableTelemetry=YES";
  *(v6 + 40) = 19;
  *(v6 + 48) = 2;
  *v6 = v8;
  *(v6 + 8) = v7;
  *(v6 + 16) = v9;
  *(v6 + 24) = v10;
  v12 = *(v5 + 28);
  v13 = v10;
  sub_1DB09D474();
  v14 = sub_1DB09DC14();
  if (v11 == 1)
  {
    sub_1DB09D454(v14, &dword_1DAF16000, v13, v8, v7, v9, v6 + v12, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v15 = sub_1DAF5F604(v0[62], v0[63]);
  if (qword_1EE301828 != -1)
  {
    v15 = swift_once();
  }

  v17 = qword_1EE301830;
  v0[64] = qword_1EE301830;
  v18 = sub_1DAF5F57C(v15, v16);
  v19 = swift_task_alloc();
  v0[65] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1E8, &qword_1DB0AF290);
  *v19 = v0;
  v19[1] = sub_1DAFF0A50;

  return MEMORY[0x1EEE6DDE0](v0 + 2, v17, v18, 0x6E6F436863746566, 0xED00002928676966, sub_1DAF521C4, 0, v20);
}

uint64_t sub_1DAFF0A50()
{
  v1 = *(*v0 + 512);

  return MEMORY[0x1EEE6DFA0](sub_1DAFF0B60, v1, 0);
}

uint64_t sub_1DAFF0B60()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 208);
  v3 = *(v0 + 224);
  *(v0 + 424) = *(v0 + 192);
  *(v0 + 440) = v2;
  *(v0 + 456) = v3;
  v4 = *(v0 + 112);
  v5 = *(v0 + 144);
  v6 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 128);
  *(v0 + 376) = v5;
  *(v0 + 392) = v6;
  *(v0 + 408) = v1;
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 64);
  *(v0 + 312) = v8;
  *(v0 + 328) = v9;
  *(v0 + 344) = v4;
  v10 = *(v0 + 32);
  *(v0 + 248) = *(v0 + 16);
  v11 = *(v0 + 480);
  *(v0 + 264) = v10;
  *(v0 + 280) = v7;
  *(v0 + 241) = *(v0 + 240);
  return MEMORY[0x1EEE6DFA0](sub_1DAFF0BC4, v11, 0);
}

uint64_t sub_1DAFF0BC4()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 472);
  *(*(v0 + 480) + 336) = *(v0 + 241);
  v3 = *(v0 + 264);
  *v2 = *(v0 + 248);
  v2[1] = v3;
  v4 = *(v0 + 280);
  v5 = *(v0 + 296);
  v6 = *(v0 + 328);
  v2[4] = *(v0 + 312);
  v2[5] = v6;
  v2[2] = v4;
  v2[3] = v5;
  v7 = *(v0 + 344);
  v8 = *(v0 + 360);
  v9 = *(v0 + 392);
  v2[8] = *(v0 + 376);
  v2[9] = v9;
  v2[6] = v7;
  v2[7] = v8;
  v10 = *(v0 + 408);
  v11 = *(v0 + 424);
  v12 = *(v0 + 456);
  v2[12] = *(v0 + 440);
  v2[13] = v12;
  v2[10] = v10;
  v2[11] = v11;
  sub_1DAFF0CC4(v1);
  sub_1DAF60868(v1);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1DAFF0CC4(uint64_t *a1)
{
  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB09D4B4();
  __swift_project_value_buffer(v1, qword_1EE304020);
  v2 = sub_1DB09D494();
  v3 = sub_1DB09DB54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAF16000, v2, v3, "Leave client bag fetch", v4, 2u);
    MEMORY[0x1E1281810](v4, -1, -1);
  }

  sub_1DB09DC04();
  type metadata accessor for ODISignpost(0);

  return sub_1DB09D464();
}

_OWORD *ConfigManager.deinit()
{
  v1 = v0[18];
  v16[10] = v0[17];
  v16[11] = v1;
  v2 = v0[20];
  v16[12] = v0[19];
  v16[13] = v2;
  v3 = v0[14];
  v16[6] = v0[13];
  v16[7] = v3;
  v4 = v0[16];
  v16[8] = v0[15];
  v16[9] = v4;
  v5 = v0[10];
  v16[2] = v0[9];
  v16[3] = v5;
  v6 = v0[12];
  v16[4] = v0[11];
  v16[5] = v6;
  v7 = v0[8];
  v16[0] = v0[7];
  v16[1] = v7;
  sub_1DAF40AEC(v16, &qword_1ECC0F190, &qword_1DB0AEEE0);
  v8 = *(v0 + 520);
  v17[10] = *(v0 + 504);
  v17[11] = v8;
  v9 = *(v0 + 552);
  v17[12] = *(v0 + 536);
  v17[13] = v9;
  v10 = *(v0 + 456);
  v17[6] = *(v0 + 440);
  v17[7] = v10;
  v11 = *(v0 + 488);
  v17[8] = *(v0 + 472);
  v17[9] = v11;
  v12 = *(v0 + 392);
  v17[2] = *(v0 + 376);
  v17[3] = v12;
  v13 = *(v0 + 424);
  v17[4] = *(v0 + 408);
  v17[5] = v13;
  v14 = *(v0 + 360);
  v17[0] = *(v0 + 344);
  v17[1] = v14;
  sub_1DAF40AEC(v17, &qword_1ECC0F190, &qword_1DB0AEEE0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ConfigManager.__deallocating_deinit()
{
  v1 = v0[18];
  v16[10] = v0[17];
  v16[11] = v1;
  v2 = v0[20];
  v16[12] = v0[19];
  v16[13] = v2;
  v3 = v0[14];
  v16[6] = v0[13];
  v16[7] = v3;
  v4 = v0[16];
  v16[8] = v0[15];
  v16[9] = v4;
  v5 = v0[10];
  v16[2] = v0[9];
  v16[3] = v5;
  v6 = v0[12];
  v16[4] = v0[11];
  v16[5] = v6;
  v7 = v0[8];
  v16[0] = v0[7];
  v16[1] = v7;
  sub_1DAF40AEC(v16, &qword_1ECC0F190, &qword_1DB0AEEE0);
  v8 = *(v0 + 520);
  v17[10] = *(v0 + 504);
  v17[11] = v8;
  v9 = *(v0 + 552);
  v17[12] = *(v0 + 536);
  v17[13] = v9;
  v10 = *(v0 + 456);
  v17[6] = *(v0 + 440);
  v17[7] = v10;
  v11 = *(v0 + 488);
  v17[8] = *(v0 + 472);
  v17[9] = v11;
  v12 = *(v0 + 392);
  v17[2] = *(v0 + 376);
  v17[3] = v12;
  v13 = *(v0 + 424);
  v17[4] = *(v0 + 408);
  v17[5] = v13;
  v14 = *(v0 + 360);
  v17[0] = *(v0 + 344);
  v17[1] = v14;
  sub_1DAF40AEC(v17, &qword_1ECC0F190, &qword_1DB0AEEE0);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFF0FC0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    v7 = 0xD000000000000017;
    if (a1 != 10)
    {
      v7 = 0x6142726941766469;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000017;
    v9 = 0xD000000000000011;
    if (a1 != 7)
    {
      v9 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x42696C6F69766172;
    v2 = 0xD000000000000016;
    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (a1 == 1)
    {
      v4 = 0xD000000000000025;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAFF116C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1D8, &qword_1DB0AF278);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAFF32C8();
  sub_1DB09E434();
  v8[15] = 0;
  sub_1DB09E104();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DB09E104();
    v8[13] = 2;
    sub_1DB09E104();
    v8[12] = 3;
    sub_1DB09E104();
    v8[11] = 4;
    sub_1DB09E104();
    v8[10] = 5;
    sub_1DB09E104();
    v8[9] = 6;
    sub_1DB09E104();
    v8[8] = 7;
    sub_1DB09E104();
    v8[7] = 8;
    sub_1DB09E104();
    v8[6] = 9;
    sub_1DB09E104();
    v8[5] = 10;
    sub_1DB09E104();
    v8[4] = 11;
    sub_1DB09E104();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DAFF1444@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAFF263C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAFF1478(uint64_t a1)
{
  v2 = sub_1DAFF32C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAFF14B4(uint64_t a1)
{
  v2 = sub_1DAFF32C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DAFF14F0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DAFF2A00(a2, v11);
  if (!v2)
  {
    v5 = v19;
    a1[8] = v18;
    a1[9] = v5;
    v6 = v21;
    a1[10] = v20;
    a1[11] = v6;
    v7 = v15;
    a1[4] = v14;
    a1[5] = v7;
    v8 = v17;
    a1[6] = v16;
    a1[7] = v8;
    v9 = v11[1];
    *a1 = v11[0];
    a1[1] = v9;
    result = *&v12;
    v10 = v13;
    a1[2] = v12;
    a1[3] = v10;
  }

  return result;
}

uint64_t sub_1DAFF156C()
{
  v1 = 0x65566E6F6D656164;
  v2 = 0x746E696F70646E65;
  if (*v0 != 2)
  {
    v2 = 0x7365727574616566;
  }

  if (*v0)
  {
    v1 = 1936487029;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAFF15F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAFF3154(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAFF1618(uint64_t a1)
{
  v2 = sub_1DAFF1EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAFF1654(uint64_t a1)
{
  v2 = sub_1DAFF1EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreODIConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F198, &qword_1DB0AEEE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v26 = *v1;
  v7 = *(v1 + 10);
  v51 = *(v1 + 9);
  v52 = v7;
  v8 = *(v1 + 12);
  v53 = *(v1 + 11);
  v54 = v8;
  v9 = *(v1 + 6);
  v47 = *(v1 + 5);
  v48 = v9;
  v10 = *(v1 + 8);
  v49 = *(v1 + 7);
  v50 = v10;
  v11 = *(v1 + 2);
  v43 = *(v1 + 1);
  v44 = v11;
  v12 = *(v1 + 4);
  v45 = *(v1 + 3);
  v46 = v12;
  v13 = v1[26];
  v24 = v1[27];
  v25 = v13;
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_1DAFF1EDC();
  sub_1DB09E434();
  LOBYTE(v31) = 0;
  v18 = v6;
  v19 = v55;
  sub_1DB09E104();
  if (!v19)
  {
    v21 = v24;
    v20 = v25;
    v39 = v51;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v35 = v47;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v31 = v43;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v30 = 1;
    sub_1DAFF1F30(&v43, v29);
    sub_1DAFF1FA0();
    sub_1DB09E144();
    v29[8] = v39;
    v29[9] = v40;
    v29[10] = v41;
    v29[11] = v42;
    v29[4] = v35;
    v29[5] = v36;
    v29[6] = v37;
    v29[7] = v38;
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v29[3] = v34;
    sub_1DAF40AEC(v29, &qword_1ECC0F1A0, &unk_1DB0AEEF0);
    v28 = v20;
    v27 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
    sub_1DAFF20B8(&qword_1ECC0F1B0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1DB09E144();
    v28 = v21;
    v27 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1B8, &qword_1DB0AEF00);
    sub_1DAFF1FF4(&qword_1ECC0F1C0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6378], MEMORY[0x1E69E5E38]);
    sub_1DB09E144();
  }

  return (*(v4 + 8))(v18, v17);
}

uint64_t CoreODIConfig.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1C8, &qword_1DB0AEF08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DAFF1EDC();
  sub_1DB09E414();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    v26 = v6;
    LOBYTE(v42[0]) = 0;
    v10 = sub_1DB09E044();
    v12 = v11;
    v25 = v10;
    v83 = 1;
    sub_1DAFF2064();
    sub_1DB09E074();
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v81 = v69;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v73 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
    LOBYTE(v28) = 2;
    sub_1DAFF20B8(&qword_1EE300A50, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1DB09E074();
    v13 = v42[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1B8, &qword_1DB0AEF00);
    v82 = 3;
    sub_1DAFF1FF4(&qword_1EE301958, MEMORY[0x1E69E6190], MEMORY[0x1E69E6390], MEMORY[0x1E69E5E58]);
    sub_1DB09E074();
    (*(v26 + 8))(v8, v5);
    v14 = v57;
    v15 = v25;
    *&v28 = v25;
    *(&v28 + 1) = v12;
    v37 = v78;
    v38 = v79;
    v39 = v80;
    v40 = v81;
    v33 = v74;
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v29 = v70;
    v30 = v71;
    v31 = v72;
    v32 = v73;
    *&v41 = v13;
    *(&v41 + 1) = v57;
    v16 = v80;
    a2[10] = v79;
    a2[11] = v16;
    v17 = v35;
    a2[6] = v34;
    a2[7] = v17;
    v18 = v37;
    a2[8] = v36;
    a2[9] = v18;
    v19 = v31;
    a2[2] = v30;
    a2[3] = v19;
    v20 = v33;
    a2[4] = v32;
    a2[5] = v20;
    v21 = v29;
    *a2 = v28;
    a2[1] = v21;
    v22 = v41;
    a2[12] = v40;
    a2[13] = v22;
    sub_1DAFF0C8C(&v28, v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v42[0] = v15;
    v42[1] = v12;
    v51 = v78;
    v52 = v79;
    v53 = v80;
    v54 = v81;
    v47 = v74;
    v48 = v75;
    v49 = v76;
    v50 = v77;
    v43 = v70;
    v44 = v71;
    v45 = v72;
    v46 = v73;
    v55 = v13;
    v56 = v14;
    return sub_1DAF791EC(v42);
  }
}

unint64_t sub_1DAFF1EDC()
{
  result = qword_1EE3044B8;
  if (!qword_1EE3044B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3044B8);
  }

  return result;
}

uint64_t sub_1DAFF1F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1A0, &unk_1DB0AEEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAFF1FA0()
{
  result = qword_1ECC0F1A8;
  if (!qword_1ECC0F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F1A8);
  }

  return result;
}

uint64_t sub_1DAFF1FF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F1B8, &qword_1DB0AEF00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAFF2064()
{
  result = qword_1EE304488;
  if (!qword_1EE304488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304488);
  }

  return result;
}

uint64_t sub_1DAFF20B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E4C0, &unk_1DB0A21B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ConfigManager.config.getter(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAF62CC4;

  return v6(a1);
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials0A9ODIConfigV4URLsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1DAFF2308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DAFF2364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1DAFF2434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DAFF2490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DAFF2538()
{
  result = qword_1ECC0F1D0;
  if (!qword_1ECC0F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F1D0);
  }

  return result;
}

unint64_t sub_1DAFF2590()
{
  result = qword_1EE3044A8;
  if (!qword_1EE3044A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3044A8);
  }

  return result;
}

unint64_t sub_1DAFF25E8()
{
  result = qword_1EE3044B0;
  if (!qword_1EE3044B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3044B0);
  }

  return result;
}

uint64_t sub_1DAFF263C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x42696C6F69766172 && a2 == 0xEE006C7255657361;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001DB0C8990 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0C89C0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DB0C89E0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DB0C8A00 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0C8A20 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DB0C8A40 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0C8A60 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB0C8A80 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0C8AA0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DB0C8AC0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6142726941766469 && a2 == 0xED00006C72556573)
  {

    return 11;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1DAFF2A00@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F1E0, &unk_1DB0AF280);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DAFF32C8();
  sub_1DB09E414();
  if (v2)
  {
    v56 = v2;
    v54 = 0uLL;
    v55 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v69 = 0uLL;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = v53;
    v77 = v52;
    v78 = v51;
    v79 = v50;
    v80 = v49;
    v81 = v55;
    v82 = v54;
    v84 = 0;
    v83 = 0;
    return sub_1DAFF331C(&v69);
  }

  else
  {
    LOBYTE(v69) = 0;
    *&v47 = sub_1DB09E044();
    *(&v47 + 1) = v11;
    LOBYTE(v69) = 1;
    v12 = sub_1DB09E044();
    v45 = v13;
    v46 = v12;
    LOBYTE(v69) = 2;
    v14 = sub_1DB09E044();
    v43 = v15;
    v44 = v14;
    LOBYTE(v69) = 3;
    v16 = sub_1DB09E044();
    v41 = v17;
    v42 = v16;
    LOBYTE(v69) = 4;
    *&v53 = sub_1DB09E044();
    *(&v53 + 1) = v18;
    LOBYTE(v69) = 5;
    *&v52 = sub_1DB09E044();
    *(&v52 + 1) = v19;
    LOBYTE(v69) = 6;
    *&v51 = sub_1DB09E044();
    *(&v51 + 1) = v20;
    LOBYTE(v69) = 7;
    *&v50 = sub_1DB09E044();
    *(&v50 + 1) = v21;
    LOBYTE(v69) = 8;
    v22 = sub_1DB09E044();
    v56 = 0;
    *&v49 = v22;
    *(&v49 + 1) = v23;
    LOBYTE(v69) = 9;
    *&v55 = sub_1DB09E044();
    *(&v55 + 1) = v24;
    v56 = 0;
    LOBYTE(v69) = 10;
    *&v54 = sub_1DB09E044();
    *(&v54 + 1) = v25;
    v56 = 0;
    v85 = 11;
    v26 = sub_1DB09E044();
    v56 = 0;
    v27 = v26;
    v29 = v28;
    (*(v6 + 8))(v8, v5);
    v30 = v47;
    v57 = v47;
    v31 = v45;
    *&v58 = v46;
    *(&v58 + 1) = v45;
    v32 = v43;
    *&v59 = v44;
    *(&v59 + 1) = v43;
    v33 = v41;
    *&v60 = v42;
    *(&v60 + 1) = v41;
    v61 = v53;
    v62 = v52;
    v63 = v51;
    v64 = v50;
    v65 = v49;
    v66 = v55;
    v67 = v54;
    *&v68 = v27;
    *(&v68 + 1) = v29;
    sub_1DAFF334C(&v57, &v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v69 = v30;
    v70 = v46;
    v71 = v31;
    v72 = v44;
    v73 = v32;
    v74 = v42;
    v75 = v33;
    v76 = v53;
    v77 = v52;
    v78 = v51;
    v79 = v50;
    v80 = v49;
    v81 = v55;
    v82 = v54;
    v83 = v27;
    v84 = v29;
    result = sub_1DAFF331C(&v69);
    v34 = v66;
    a2[8] = v65;
    a2[9] = v34;
    v35 = v68;
    a2[10] = v67;
    a2[11] = v35;
    v36 = v62;
    a2[4] = v61;
    a2[5] = v36;
    v37 = v64;
    a2[6] = v63;
    a2[7] = v37;
    v38 = v58;
    *a2 = v57;
    a2[1] = v38;
    v39 = v60;
    a2[2] = v59;
    a2[3] = v39;
  }

  return result;
}

uint64_t sub_1DAFF3154(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65566E6F6D656164 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936487029 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE900000000000073 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1DAFF32C8()
{
  result = qword_1EE3044A0;
  if (!qword_1EE3044A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3044A0);
  }

  return result;
}

double sub_1DAFF3384(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1DB0A7A90;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  return result;
}

double sub_1DAFF33AC(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1DB0A7A90;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  return result;
}

unint64_t sub_1DAFF33D8()
{
  result = qword_1EE304480;
  if (!qword_1EE304480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304480);
  }

  return result;
}

unint64_t sub_1DAFF3440()
{
  result = qword_1ECC0F1F0[0];
  if (!qword_1ECC0F1F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC0F1F0);
  }

  return result;
}

unint64_t sub_1DAFF3498()
{
  result = qword_1EE304490;
  if (!qword_1EE304490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304490);
  }

  return result;
}

unint64_t sub_1DAFF34F0()
{
  result = qword_1EE304498;
  if (!qword_1EE304498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304498);
  }

  return result;
}

uint64_t sub_1DAFF3544(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_1DAFF36A4(v2);
}

uint64_t sub_1DAFF3604@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1DAFF36A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1DAFF374C()
{
  v2 = *(v0 + *(*v0 + 136));

  MEMORY[0x1E127FE90](0x616470557473614CLL, 0xEA00000000006574);
  return v2;
}

uint64_t ODIConfigurationManager.__allocating_init(fallback:defaultsKey:maxAge:urlSession:defaults:updateRequestClosure:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, double a8)
{
  v16 = swift_allocObject();
  ODIConfigurationManager.init(fallback:defaultsKey:maxAge:urlSession:defaults:updateRequestClosure:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t *ODIConfigurationManager.init(fallback:defaultsKey:maxAge:urlSession:defaults:updateRequestClosure:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v38 = a6;
  v39 = a7;
  v42 = a4;
  v15 = *(*v9 + 80);
  v16 = sub_1DB09DC64();
  v36 = *(v16 - 8);
  v37 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v20 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v34 - v21;
  swift_defaultActor_initialize();
  *(v9 + *(*v9 + 152)) = 0;
  (*(v20 + 16))(v22, a1, v15);
  v40 = a2;
  v41 = a3;
  v23 = sub_1DB09D6B4();
  v24 = [a5 dataForKey_];

  if (v24)
  {
    v35 = a5;
    v25 = sub_1DB09D034();
    v27 = v26;

    sub_1DB09CC24();
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DB09CC04();

    sub_1DAF40780(v25, v27);
    v28 = *(v20 + 8);
    v28(a1, v15);
    v28(v22, v15);
    (*(v20 + 56))(v19, 0, 1, v15);
    (*(v20 + 32))(v22, v19, v15);
    a5 = v35;
  }

  else
  {
    (*(v20 + 8))(a1, v15);
  }

  (*(v20 + 32))(v9 + *(*v9 + 112), v22, v15);
  v29 = (v9 + *(*v9 + 128));
  v30 = v39;
  *v29 = v38;
  v29[1] = v30;
  *(v9 + *(*v9 + 120)) = a8;
  v31 = (v9 + *(*v9 + 136));
  v32 = v41;
  *v31 = v40;
  v31[1] = v32;
  *(v9 + *(*v9 + 144)) = v42;
  *(v9 + *(*v9 + 160)) = a5;
  return v9;
}

uint64_t sub_1DAFF3CCC()
{
  v1[2] = v0;
  v2 = sub_1DB09D154();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFF3D8C, v0, 0);
}

uint64_t sub_1DAFF3D8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v3 + *(*v3 + 160));
  sub_1DAFF374C();
  v6 = sub_1DB09D6B4();

  [v5 doubleForKey_];
  v8 = v7;

  v9 = v8 + *(v3 + *(*v3 + 120));
  sub_1DB09D144();
  sub_1DB09D084();
  v11 = v10;
  (*(v2 + 8))(v1, v4);
  if (v9 >= v11)
  {

    v14 = v0[1];

    return v14();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = sub_1DAFF3F2C;

    return sub_1DAFF4044();
  }
}

uint64_t sub_1DAFF3F2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAFF4044()
{
  v1[10] = v0;
  v2 = *v0;
  v1[11] = *v0;
  v3 = sub_1DB09D154();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = *(v2 + 80);
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v5 = sub_1DB09CBF4();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFF4200, v0, 0);
}

uint64_t sub_1DAFF4200()
{
  v1 = v0[10];
  v2 = *(*v1 + 152);
  if (*(v1 + v2))
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DB09D4B4();
    __swift_project_value_buffer(v3, qword_1EE30A128);
    v4 = sub_1DB09D494();
    v5 = sub_1DB09DB54();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DAF16000, v4, v5, "Config update already in progress - skipping requested update", v6, 2u);
      MEMORY[0x1E1281810](v6, -1, -1);
    }

    v7 = v0[15];
    v8 = v0[11];

    type metadata accessor for ODIConfigurationManager.ConfigManagerError(0, v7, *(v8 + 88), *(v8 + 96));
    swift_getWitnessTable();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = -16384;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    *(v1 + v2) = 1;
    (*(v1 + *(*v1 + 128)))();
    v12 = swift_task_alloc();
    v0[22] = v12;
    *v12 = v0;
    v12[1] = sub_1DAFF448C;
    v13 = v0[21];

    return MEMORY[0x1EEDC6260](v13, 0);
  }
}

uint64_t sub_1DAFF448C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[23] = a1;
  v6[24] = a2;
  v6[25] = a3;
  v6[26] = v3;

  v7 = v5[10];
  if (v3)
  {
    v8 = sub_1DAFF4CD8;
  }

  else
  {
    v8 = sub_1DAFF45C4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DAFF45C4()
{
  v71 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    sub_1DAF8C94C([v1 statusCode], &v63);
    v2 = v63;
    v3 = v64;
    v64 = v3;
    v65 = 0;
    v66 = 0;
    v67 = 1;
    v68 = v63;
    v69 = v3;
    v70 = 0;
    if (!_s17CoreODIEssentials14HTTPStatusCodeO2eeoiySbAC_ACtFZ_0(&v68, &v66))
    {
      if (qword_1EE301DC0 != -1)
      {
        swift_once();
      }

      v25 = sub_1DB09D4B4();
      __swift_project_value_buffer(v25, qword_1EE30A128);
      v26 = sub_1DB09D494();
      v27 = sub_1DB09DB64();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v68 = v29;
        *v28 = 136315138;
        v63 = v2;
        v64 = v3;
        v30 = HTTPStatusCode.description.getter();
        v32 = sub_1DB015E84(v30, v31, &v68);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_1DAF16000, v26, v27, "Config update response not success: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x1E1281810](v29, -1, -1);
        MEMORY[0x1E1281810](v28, -1, -1);
      }

      v33 = v0[24];
      v34 = v0[25];
      v35 = v0[23];
      v36 = v0[20];
      v58 = v0[19];
      v61 = v0[21];
      v22 = v0[10];
      type metadata accessor for ODIConfigurationManager.ConfigManagerError(0, v0[15], *(v0[11] + 88), *(v0[11] + 96));
      swift_getWitnessTable();
      swift_allocError();
      *v37 = v2;
      *(v37 + 8) = v3 | 0x4000;
      swift_willThrow();

      sub_1DAF40780(v35, v33);
      (*(v36 + 8))(v61, v58);
      goto LABEL_14;
    }
  }

  v4 = v0[26];
  v5 = v0[11];
  sub_1DB09CC24();
  swift_allocObject();
  sub_1DB09CC14();
  v6 = *(v5 + 88);
  sub_1DB09CC04();
  if (v4)
  {
    v7 = v4;

    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v8 = sub_1DB09D4B4();
    __swift_project_value_buffer(v8, qword_1EE30A128);
    v9 = v4;
    v10 = sub_1DB09D494();
    v11 = sub_1DB09DB64();

    v60 = v6;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v63 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_1DB09E324();
      v16 = sub_1DB015E84(v14, v15, &v63);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1DAF16000, v10, v11, "Config decode error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E1281810](v13, -1, -1);
      MEMORY[0x1E1281810](v12, -1, -1);
    }

    v18 = v0[24];
    v17 = v0[25];
    v19 = v0[23];
    v20 = v0[20];
    v57 = v0[21];
    v21 = v0[19];
    v22 = v0[10];
    type metadata accessor for ODIConfigurationManager.ConfigManagerError(0, v0[15], v60, *(v0[11] + 96));
    swift_getWitnessTable();
    swift_allocError();
    *v23 = v7;
    *(v23 + 8) = 0x8000;
    swift_willThrow();
    v24 = v7;

    sub_1DAF40780(v19, v18);
    (*(v20 + 8))(v57, v21);
LABEL_14:
    *(v22 + *(*v22 + 152)) = 0;

    v38 = v0[1];
    goto LABEL_16;
  }

  v39 = v0[23];
  v55 = v0[25];
  v56 = v0[20];
  v40 = v0[18];
  v59 = v0[19];
  v62 = v0[21];
  v54 = v0[24];
  v41 = v0[16];
  v42 = v0[17];
  v43 = v0[15];
  v44 = v0[13];
  v52 = v0[14];
  v53 = v0[12];
  v45 = v0[10];

  (*(v41 + 16))(v42, v40, v43);
  sub_1DAFF36A4(v42);
  v46 = *(v45 + *(*v45 + 160));
  v47 = sub_1DB09D004();
  v48 = sub_1DB09D6B4();
  [v46 setObject:v47 forKey:v48];

  sub_1DB09D144();
  sub_1DB09D084();
  (*(v44 + 8))(v52, v53);
  v49 = sub_1DB09DAB4();
  sub_1DAFF374C();
  v50 = sub_1DB09D6B4();

  [v46 setObject:v49 forKey:v50];

  sub_1DAF40780(v39, v54);
  (*(v41 + 8))(v40, v43);
  (*(v56 + 8))(v62, v59);
  *(v45 + *(*v45 + 152)) = 0;

  v38 = v0[1];
LABEL_16:

  return v38();
}

uint64_t sub_1DAFF4CD8()
{
  v20 = v0;
  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_1DB09D4B4();
  __swift_project_value_buffer(v2, qword_1EE30A128);
  v3 = v1;
  v4 = sub_1DB09D494();
  v5 = sub_1DB09DB64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DB09E324();
    v10 = sub_1DB015E84(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAF16000, v4, v5, "Config update request failed: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E1281810](v7, -1, -1);
    MEMORY[0x1E1281810](v6, -1, -1);
  }

  v11 = v0[26];
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];
  v15 = v0[10];
  type metadata accessor for ODIConfigurationManager.ConfigManagerError(0, v0[15], *(v0[11] + 88), *(v0[11] + 96));
  swift_getWitnessTable();
  swift_allocError();
  *v16 = v11;
  *(v16 + 8) = 0;
  swift_willThrow();
  (*(v13 + 8))(v12, v14);
  *(v15 + *(*v15 + 152)) = 0;

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DAFF4F64()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 160));
  v2 = sub_1DB09D6B4();
  [v1 removeObjectForKey_];

  sub_1DAFF374C();
  v3 = sub_1DB09D6B4();

  [v1 removeObjectForKey_];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t ODIConfigurationManager.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ODIConfigurationManager.__deallocating_deinit()
{
  ODIConfigurationManager.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFF5190(uint64_t a1)
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

uint64_t dispatch thunk of ODIConfigurationManager.updateIfNeeded()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DAF62CC4;

  return v4();
}

uint64_t dispatch thunk of ODIConfigurationManager.clearStoredData()()
{
  v4 = (*(*v0 + 248) + **(*v0 + 248));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DAF62CC4;

  return v4();
}

uint64_t sub_1DAFF54F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials23ODIConfigurationManagerC06ConfigD5ErrorOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8) >> 14;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DAFF555C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 10))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 7) & 0x7C | (*(a1 + 8) >> 14)) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DAFF55B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
    }
  }

  return result;
}

uint64_t sub_1DAFF5614(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 0x1FF | (a2 << 14);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -16384;
  }

  return result;
}

uint64_t sub_1DAFF5658(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  if (*(v1 + 112) == 1)
  {
    *(v1 + 112) = 0;
    return sub_1DB09D9B4();
  }

  else
  {
    (*(v4 + 16))(v6, a1, v3);
    v8 = *(v1 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 120) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1DAF736D4(0, v8[2] + 1, 1, v8);
      *(v1 + 120) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1DAF736D4((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    result = (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v6, v3);
    *(v1 + 120) = v8;
  }

  return result;
}

uint64_t sub_1DAFF57F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1DB09DA24();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_1DAF4F0EC(0, 0, v10, &unk_1DB0AF5E0, v13);
}

uint64_t sub_1DAFF59E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DAFF5A00, a4, 0);
}

uint64_t sub_1DAFF5A00()
{
  sub_1DAFF5658(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFF5A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFF5B54, a4, 0);
}

uint64_t sub_1DAFF5B54()
{
  v1 = *(v0[2] + 120);
  if (*(v1 + 16))
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = v0[3];
    (*(v3 + 16))(v2, v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v4);
    sub_1DB0226F4(0, 1);
    sub_1DB09D9B4();
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    *(v0[2] + 112) = 1;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1DAFF5C40(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF62CC4;

  return sub_1DAFF59E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1DAFF5D44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[33] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E578, &qword_1DB0A2830);
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[38] = v7;
  v4[39] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DAFF5E1C, 0, 0);
}

uint64_t sub_1DAFF5E1C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 30;
  v4 = v0[38];
  v5 = v0[39];
  v8 = v0 + 36;
  v7 = v0[36];
  v6 = v8[1];
  v13 = [objc_allocWithZone(ODNServices) init];
  v1[40] = v13;
  v9 = sub_1DB09D6B4();
  v1[41] = v9;
  sub_1DAF55920(v5);
  v10 = sub_1DB09D604();
  v1[42] = v10;

  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1DAFF6048;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v6 + 32))(boxed_opaque_existential_0, v4, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF6C978;
  v1[13] = &block_descriptor_12;
  [v13 ofLBc0SV56ddaijH:v9 i7D0Lridvo8oYoNd:v10 completion:?];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAFF6048()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_1DAFF6290;
  }

  else
  {
    v2 = sub_1DAFF6158;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAFF6158()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);

  sub_1DB09CC24();
  swift_allocObject();
  sub_1DB09CC14();
  type metadata accessor for PregeneratedAssessment(0);
  sub_1DAFF65B0();
  sub_1DB09CC04();
  v4 = *(v0 + 320);

  sub_1DAF40780(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DAFF6290(uint64_t a1)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 344);
  v4 = *(v1 + 328);
  swift_willThrow();

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v6 + 16))
  {
    v7 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v8)
    {
      sub_1DAF409DC(*(v6 + 56) + 32 * v7, v1 + 144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v5 = *(v1 + 256);
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1DAF72EC0(0, *(v5 + 2) + 1, 1, v5);
  }

  v10 = *(v5 + 2);
  v9 = *(v5 + 3);
  if (v10 >= v9 >> 1)
  {
    v5 = sub_1DAF72EC0((v9 > 1), v10 + 1, 1, v5);
  }

  *(v5 + 2) = v10 + 1;
  v11 = &v5[56 * v10];
  *(v11 + 4) = 0xD000000000000024;
  *(v11 + 5) = 0x80000001DB0C8BA0;
  *(v11 + 6) = 0xD00000000000002ELL;
  *(v11 + 7) = 0x80000001DB0C8BD0;
  *(v11 + 8) = 0xD000000000000036;
  *(v11 + 9) = 0x80000001DB0C8C00;
  *(v11 + 10) = 22;
  *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v1 + 176) = v5;
  sub_1DAF40D20((v1 + 176), (v1 + 208));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C((v1 + 208), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v14 = sub_1DB09D6B4();
  v15 = sub_1DB09D604();
  [v13 initWithDomain:v14 code:-3185 userInfo:v15];

  swift_willThrow();

  v16 = *(v1 + 8);

  return v16();
}

unint64_t sub_1DAFF65B0()
{
  result = qword_1ECC0F2F8;
  if (!qword_1ECC0F2F8)
  {
    type metadata accessor for PregeneratedAssessment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F2F8);
  }

  return result;
}

_OWORD *sub_1DAFF6618@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v17 = sub_1DB09D734();
  result = MEMORY[0x1EEE9AC00](v17 - 8);
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v19 = a8 >> 60;
  if ((a8 >> 60) > 4)
  {
    if ((v19 - 5) < 3)
    {
      if (*((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10) != a1)
      {
        goto LABEL_71;
      }

      goto LABEL_17;
    }

    v20 = __ROR8__(a8 ^ 0x8000000000000000, 3);
    if (v20 > 3)
    {
      if (v20 > 5)
      {
        if (v20 != 6)
        {
LABEL_59:
          a9[3] = &type metadata for ASN1ItemTemp;
          v60 = swift_allocObject();
          *a9 = v60;
          *(v60 + 16) = a1;
          *(v60 + 24) = a2;
          *(v60 + 25) = a3 & 1;
          *(v60 + 32) = a4;
          *(v60 + 40) = a5;
          *(v60 + 48) = a6;
          *(v60 + 56) = a7;
          return swift_unknownObjectRetain();
        }

LABEL_54:
        if ((a7 & 1) == 0)
        {
          swift_unknownObjectRetain();
LABEL_56:
          sub_1DAFF74F0(a4, a5, a6, a7);
          v59 = v58;
LABEL_86:
          a9[3] = &type metadata for CoreODIASN1OtherType;
          result = swift_unknownObjectRelease();
          *a9 = a1;
          a9[1] = v59;
          return result;
        }

        sub_1DB09E294();
        swift_unknownObjectRetain_n();
        v69 = swift_dynamicCastClass();
        if (!v69)
        {
          swift_unknownObjectRelease();
          v69 = MEMORY[0x1E69E7CC0];
        }

        v70 = *(v69 + 16);

        if (!__OFSUB__(a7 >> 1, a6))
        {
          if (v70 == (a7 >> 1) - a6)
          {
            v59 = swift_dynamicCastClass();
            if (!v59)
            {
              swift_unknownObjectRelease();
              v59 = MEMORY[0x1E69E7CC0];
            }

            goto LABEL_86;
          }

          goto LABEL_106;
        }

LABEL_105:
        __break(1u);
LABEL_106:
        swift_unknownObjectRelease();
        goto LABEL_56;
      }

      if (v20 == 4)
      {
        if (a1 != 19)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      if (a1 == 22)
      {
LABEL_69:
        *&v80 = a4;
        *(&v80 + 1) = a5;
        v81 = a6;
        v82 = a7;
        swift_unknownObjectRetain();
        sub_1DB09D724();
LABEL_76:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F300, &qword_1DB0AF648);
        sub_1DAFF7CB4();
        v64 = sub_1DB09D6F4();
        if (v65)
        {
          v66 = v64;
          v67 = v65;
          a9[3] = MEMORY[0x1E69E6158];
          result = swift_unknownObjectRelease();
          *a9 = v66;
          a9[1] = v67;
          return result;
        }

        sub_1DAF70638();
        swift_allocError();
        *v68 = 2;
        swift_willThrow();
        return swift_unknownObjectRelease();
      }

      goto LABEL_71;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        if (a1 == 5)
        {
          goto LABEL_74;
        }
      }

      else if (a1 == 18)
      {
LABEL_75:
        *&v80 = a4;
        *(&v80 + 1) = a5;
        v81 = a6;
        v82 = a7;
        swift_unknownObjectRetain();
        sub_1DB09D714();
        goto LABEL_76;
      }

      goto LABEL_71;
    }

    if (!v20)
    {
      if (a1 != 2)
      {
        goto LABEL_71;
      }

      goto LABEL_44;
    }

LABEL_16:
    if (a1 == 4)
    {
      goto LABEL_17;
    }

LABEL_71:
    sub_1DAF70638();
    swift_allocError();
    *v63 = 0;
    return swift_willThrow();
  }

  if ((v19 - 1) < 2)
  {
    if (a1 != 16)
    {
      goto LABEL_71;
    }

    goto LABEL_17;
  }

  if ((v19 - 3) >= 2)
  {
    goto LABEL_16;
  }

  if (a1 != 17)
  {
    goto LABEL_71;
  }

LABEL_17:
  if (v19 <= 3)
  {
    if (v19 <= 1)
    {
      if (!v19)
      {
        v30 = *(a8 + 16);
        v31 = *(a8 + 24);
        swift_unknownObjectRetain();
        sub_1DAFF7A3C(v30);
        v32 = v86;
        sub_1DAF70210(&v83, v30, v31);
        if (v32)
        {
          sub_1DAFC4354(v30);
        }

        else
        {
          if (v84 == v85 >> 1)
          {
            sub_1DAFC4354(v30);
            swift_unknownObjectRelease();
            return sub_1DAF40D20(&v80, a9);
          }

          sub_1DAF70638();
          swift_allocError();
          *v71 = 3;
          swift_willThrow();
          sub_1DAFC4354(v30);
          __swift_destroy_boxed_opaque_existential_1Tm(&v80);
        }

        return swift_unknownObjectRelease();
      }

      v45 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      swift_unknownObjectRetain();

      v46 = v86;
      v47 = sub_1DAFF7AAC(&v83, v45);
      if (v46)
      {

        return swift_unknownObjectRelease();
      }

      v57 = v47;

      goto LABEL_64;
    }

    if (v19 != 2)
    {
      v33 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      swift_unknownObjectRetain();

      v34 = sub_1DAFF76A0(a4, a5, a6, a7, v33);
      if (!v86)
      {
        v61 = v34;

        a9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC30, &unk_1DB0AC090);
        result = swift_unknownObjectRelease();
        *a9 = v61;
        return result;
      }

      return swift_unknownObjectRelease();
    }

LABEL_31:
    v35 = a8 & 0xFFFFFFFFFFFFFFFLL;
    v36 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v37 = *(v35 + 24);
    sub_1DAFF7A3C(v36);
    swift_unknownObjectRetain();
    v38 = v86;
    v39 = sub_1DAF7075C(&v83, v36, v37);
    if (v38)
    {
      swift_unknownObjectRelease();
      return sub_1DAFC4354(v36);
    }

    v57 = v39;
    sub_1DAFC4354(v36);
LABEL_64:
    a9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EC30, &unk_1DB0AC090);
    *a9 = v57;
    return swift_unknownObjectRelease();
  }

  if (v19 <= 5)
  {
    if (v19 != 4)
    {
      v52 = a8 & 0xFFFFFFFFFFFFFFFLL;
      v22 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v24 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v53 = *(v52 + 40);
      v54 = *(v52 + 48);
      swift_unknownObjectRetain();

      v55 = v53;
      v56 = v86;
      sub_1DAF70210(&v83, v55, v54);
      if (!v56)
      {
        v29 = a9;
        a9[3] = &type metadata for CoreODIASN1ApplicationType;
        goto LABEL_66;
      }

LABEL_48:

      return swift_unknownObjectRelease();
    }

    goto LABEL_31;
  }

  if (v19 == 6)
  {
    v40 = a8 & 0xFFFFFFFFFFFFFFFLL;
    v22 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v23 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v24 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v41 = *(v40 + 40);
    v42 = *(v40 + 48);
    swift_unknownObjectRetain();

    v43 = v41;
    v44 = v86;
    sub_1DAF70210(&v83, v43, v42);
    if (!v44)
    {
      v29 = a9;
      a9[3] = &type metadata for CoreODIASN1ContextType;
      goto LABEL_66;
    }

    goto LABEL_48;
  }

  if (v19 == 7)
  {
    v21 = a8 & 0xFFFFFFFFFFFFFFFLL;
    v22 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v23 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v24 = *((a8 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v25 = *(v21 + 40);
    v26 = *(v21 + 48);
    swift_unknownObjectRetain();

    v27 = v25;
    v28 = v86;
    sub_1DAF70210(&v83, v27, v26);
    if (!v28)
    {
      v29 = a9;
      a9[3] = &type metadata for CoreODIASN1PrivateType;
LABEL_66:
      v62 = swift_allocObject();
      *v29 = v62;
      *(v62 + 16) = v22;
      *(v62 + 24) = v23;
      *(v62 + 32) = v24;
      sub_1DAF40D20(&v80, (v62 + 40));
      return swift_unknownObjectRelease();
    }

    goto LABEL_48;
  }

  v48 = __ROR8__(a8 ^ 0x8000000000000000, 3);
  if (v48 > 3)
  {
    if ((v48 - 4) >= 2)
    {
      if (v48 != 6)
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }

    goto LABEL_69;
  }

  if (v48 > 1)
  {
    if (v48 == 2)
    {
LABEL_74:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E550, &unk_1DB0AF650);
      a9[3] = result;
      *a9 = 1;
      return result;
    }

    goto LABEL_75;
  }

  if (!v48)
  {
LABEL_44:
    v49 = a7 >> 1;
    v50 = (a7 >> 1) - a6;
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if (v50 > 8)
      {
        sub_1DAF70638();
        swift_allocError();
        *v51 = 1;
        return swift_willThrow();
      }

      a9[3] = MEMORY[0x1E69E76D8];
      if (v49 == a6)
      {
        v72 = 0;
LABEL_96:
        *a9 = v72;
        return result;
      }

      a7 = v86;
      if (v49 > a6)
      {
        v72 = 0;
        v75 = (a5 + a6);
        do
        {
          v76 = *v75++;
          v72 = v76 | (v72 << 8);
          --v50;
        }

        while (v50);
        goto LABEL_96;
      }

      __break(1u);
      goto LABEL_108;
    }

    __break(1u);
    goto LABEL_105;
  }

  if (a7)
  {
    sub_1DB09E294();
    swift_unknownObjectRetain_n();
    v77 = swift_dynamicCastClass();
    if (!v77)
    {
      swift_unknownObjectRelease();
      v77 = MEMORY[0x1E69E7CC0];
    }

    v78 = *(v77 + 16);

    if (!__OFSUB__(a7 >> 1, a6))
    {
      if (v78 == (a7 >> 1) - a6)
      {
        v74 = swift_dynamicCastClass();
        if (!v74)
        {
          swift_unknownObjectRelease();
          v74 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_103;
      }

      goto LABEL_109;
    }

LABEL_108:
    __break(1u);
LABEL_109:
    swift_unknownObjectRelease();
    goto LABEL_92;
  }

  swift_unknownObjectRetain();
LABEL_92:
  sub_1DAFF74F0(a4, a5, a6, a7);
  v74 = v73;
LABEL_103:
  a9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A0, &qword_1DB0A0968);
  result = swift_unknownObjectRelease();
  *a9 = v74;
  return result;
}

void *sub_1DAFF6F28(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F318, &unk_1DB0AF660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1DAFF6FD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_1DAFF7044(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v26 = result;
    v27 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1DAF3523C(*(a4 + 56) + 40 * v16, &v29);
      *&v28 = v19;
      *(&v28 + 1) = v20;
      v21 = v31;
      v35 = v31;
      v22 = v30;
      v23 = v29;
      v33 = v29;
      v34 = v30;
      v32 = v28;
      *v9 = v28;
      *(v9 + 16) = v23;
      *(v9 + 32) = v22;
      *(v9 + 48) = v21;
      if (v12 == v8)
      {

        v5 = v27;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 56;

      result = v12;
      v24 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v24)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v25 = v10 + 1;
    }

    else
    {
      v25 = v11;
    }

    v10 = v25 - 1;
    v8 = result;
    v5 = v27;
LABEL_23:
    result = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1DAFF71F8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1DB09DD34();
  sub_1DAFF7D18();
  sub_1DAFF7D64();
  result = sub_1DB09DB04();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1DB09DD64())
      {
        goto LABEL_30;
      }

      sub_1DAFF7D18();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1DAFF73F4(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1DAFF74F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E768, &qword_1DB0A4690);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t objectdestroy_2Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void *sub_1DAFF75F0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1DB09DD44();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1DAFF6F28(v2, 0);

    v1 = sub_1DAFF71F8(&v5, v3 + 4, v2, v1);
    sub_1DAF333A4(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

char *sub_1DAFF76A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v43 = a4;
  v6 = v5;
  *&v41 = a1;
  *(&v41 + 1) = a2;
  v42 = a3;
  swift_unknownObjectRetain();
  if (a3 == a4 >> 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  v44 = (a5 + 32);
  v10 = MEMORY[0x1E69E7CC0];
  v35 = a5;
  do
  {
    sub_1DAF70210(&v41, 0x8000000000000038, 0);
    if (v6)
    {

      break;
    }

    if ((swift_dynamicCast() & 1) == 0 || (v11 = v37, (v12 = *(a5 + 16)) == 0))
    {
LABEL_48:

      sub_1DAF70638();
      swift_allocError();
      *v32 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      break;
    }

    v13 = v36;
    v14 = BYTE8(v36);
    v15 = BYTE9(v36);
    v16 = v38;
    v17 = v39;
    v18 = v44;
    v19 = v40;
    while (1)
    {
      v21 = *v18;
      v18 += 2;
      v20 = v21;
      v22 = v21 >> 60;
      if ((v21 >> 60) <= 4)
      {
        if ((v22 - 1) < 2)
        {
          if (v36 == 16)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if ((v22 - 3) >= 2)
          {
            goto LABEL_27;
          }

          if (v36 == 17)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_28;
      }

      if ((v22 - 5) < 3)
      {
        if (v36 == *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
        {
          goto LABEL_41;
        }

        goto LABEL_28;
      }

      v23 = __ROR8__(v20 ^ 0x8000000000000000, 3);
      if (v23 <= 2)
      {
        break;
      }

      if (v23 > 4)
      {
        if (v23 != 5 || v36 == 22)
        {
          goto LABEL_42;
        }
      }

      else if (v23 == 3)
      {
        if (v36 == 18)
        {
          goto LABEL_42;
        }
      }

      else if (v36 == 19)
      {
        goto LABEL_42;
      }

LABEL_9:
      if (!--v12)
      {
        goto LABEL_48;
      }
    }

    if (!v23)
    {
      if (v36 == 2)
      {
        goto LABEL_42;
      }

      goto LABEL_9;
    }

    if (v23 != 1)
    {
      if (v36 == 5)
      {
        goto LABEL_42;
      }

      goto LABEL_9;
    }

LABEL_27:
    if (v36 != 4)
    {
LABEL_28:
      if ((v20 & 0x8000000000000000) != 0 && __ROR8__(v20 & 0x7FFFFFFFFFFFFFFFLL, 3) >= 6uLL)
      {
        goto LABEL_42;
      }

      goto LABEL_9;
    }

LABEL_41:
    v34 = v37;
    v25 = v40;
    v26 = v39;
    v27 = v38;
    v28 = v10;
    v29 = BYTE9(v36);
    sub_1DAFF7A3C(v20);
    v15 = v29;
    v10 = v28;
    v16 = v27;
    v17 = v26;
    v19 = v25;
    v11 = v34;
LABEL_42:
    swift_unknownObjectRetain();
    sub_1DAFF6618(v13, v14, v15, v11, v16, v17, v19, v20, &v36);
    swift_unknownObjectRelease();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAF73290(0, *(v10 + 2) + 1, 1, v10);
    }

    a5 = v35;
    v31 = *(v10 + 2);
    v30 = *(v10 + 3);
    if (v31 >= v30 >> 1)
    {
      v10 = sub_1DAF73290((v30 > 1), v31 + 1, 1, v10);
    }

    sub_1DAFC4354(v20);
    swift_unknownObjectRelease();
    *(v10 + 2) = v31 + 1;
    sub_1DAF40D20(&v36, &v10[32 * v31 + 32]);
  }

  while (v42 != v43 >> 1);
LABEL_49:
  swift_unknownObjectRelease();
  return v10;
}

unint64_t sub_1DAFF7A3C(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

char *sub_1DAFF7AAC(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a2 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    sub_1DAFF7A3C(v8);
    sub_1DAF70210(a1, v8, v9);
    if (!v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1DAF73290(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_1DAF73290((v13 > 1), v14 + 1, 1, v7);
      }

      sub_1DAFC4354(v8);
      *(v7 + 2) = v14 + 1;
      sub_1DAF40D20(&v17, &v7[32 * v14 + 32]);
      goto LABEL_4;
    }

    *&v17 = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    if (!swift_dynamicCast() || ((v11 = v18, byte_1F56C99C0 != v18) ? (v12 = byte_1F56C99C1 == v18) : (v12 = 1), !v12))
    {
      sub_1DAFC4354(v8);

      goto LABEL_21;
    }

    if (!v9)
    {
      break;
    }

    sub_1DAFC4354(v8);

    v3 = 0;
LABEL_4:
    v6 += 16;
    if (!--v4)
    {
      return v7;
    }
  }

  sub_1DAF70638();
  swift_allocError();
  *v15 = v11;
  swift_willThrow();
  sub_1DAFC4354(v8);
LABEL_21:

  return v7;
}

unint64_t sub_1DAFF7CB4()
{
  result = qword_1ECC0F308;
  if (!qword_1ECC0F308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F300, &qword_1DB0AF648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F308);
  }

  return result;
}

unint64_t sub_1DAFF7D18()
{
  result = qword_1ECC0E240;
  if (!qword_1ECC0E240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC0E240);
  }

  return result;
}

unint64_t sub_1DAFF7D64()
{
  result = qword_1ECC0F310;
  if (!qword_1ECC0F310)
  {
    sub_1DAFF7D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F310);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_17CoreODIEssentials0A17ODIASN1DefinitionV8ASN1TypeO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 60;
  }

  else
  {
    return (*a1 >> 3) + 8;
  }
}

uint64_t sub_1DAFF7DD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DAFF7E2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DAFF7E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 8))
  {
    return (*a1 + 120);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DAFF7ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1DAFF7F30(void *result, uint64_t a2)
{
  if (a2 < 8)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 8)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1DAFF7F84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7469573635325345;
  v4 = 0xEC0000004D415568;
  if (v2 != 1)
  {
    v3 = 0x453635325345;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x3635325345;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x7469573635325345;
  v8 = 0xEC0000004D415568;
  if (*a2 != 1)
  {
    v7 = 0x453635325345;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x3635325345;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB09E254();
  }

  return v11 & 1;
}

uint64_t sub_1DAFF808C()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFF8130(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DAFF81C0()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAFF8260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAFF844C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAFF8290(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC0000004D415568;
  v5 = 0x7469573635325345;
  if (v2 != 1)
  {
    v5 = 0x453635325345;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x3635325345;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1DAFF82F4()
{
  result = qword_1ECC0F320;
  if (!qword_1ECC0F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F320);
  }

  return result;
}

unint64_t sub_1DAFF83F8()
{
  result = qword_1EE304130;
  if (!qword_1EE304130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE304130);
  }

  return result;
}

unint64_t sub_1DAFF844C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t (*sub_1DAFF8498(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1DAFFCAB0(v6, a2, a3);
  return sub_1DAFF8520;
}

void sub_1DAFF8520(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1DAFF856C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for PregeneratedAssessment(0);
  v87 = sub_1DAFDD930(*(a3 + v7[15]), *(a3 + v7[15] + 8), *(a3 + v7[16]), *(a3 + v7[16] + 8));
  v9 = v8;
  v84 = sub_1DAF8B2AC(*(a3 + v7[7]), *(a3 + v7[7] + 8));
  v80 = v11;
  v81 = v10;
  v12 = sub_1DB09CFA4();
  v88 = v7;
  v86 = v9;
  if (v13 >> 60 != 15)
  {
    v31 = v12;
    v32 = v13;
    sub_1DB09CC24();
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DAF8C3D4();
    sub_1DB09CC04();

    sub_1DAF4AC40(v31, v32);
    v78 = v93;
    *v79 = v92;
    v76 = v95;
    v77 = v94;
    v20 = v87;
    goto LABEL_13;
  }

  v14 = "invalid assessmentGUID seed format";
  v15 = "CoreODIEssentials/ODNAssessmentGUIDManager.swift";
  if (qword_1EE301E08 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v16 = v14 - 32;
    v17 = v15 - 32;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v20 = v87;
    if (*(v19 + 16))
    {
      v21 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v22)
      {
        sub_1DAF409DC(*(v19 + 56) + 32 * v21, &v90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v18 = *&v89[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1DAF72EC0(0, *(v18 + 2) + 1, 1, v18);
    }

    v24 = *(v18 + 2);
    v23 = *(v18 + 3);
    if (v24 >= v23 >> 1)
    {
      v18 = sub_1DAF72EC0((v23 > 1), v24 + 1, 1, v18);
    }

    *(v18 + 2) = v24 + 1;
    v25 = &v18[56 * v24];
    *(v25 + 4) = 0xD000000000000022;
    *(v25 + 5) = v16 | 0x8000000000000000;
    *(v25 + 6) = 0xD000000000000030;
    *(v25 + 7) = v17 | 0x8000000000000000;
    *(v25 + 8) = 0x6F72662864656573;
    *(v25 + 9) = 0xEB00000000293A6DLL;
    *(v25 + 10) = 77;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v90 = v18;
    sub_1DAF40D20(&v90, v89);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v89, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v28 = sub_1DB09D6B4();
    v29 = sub_1DB09D604();
    v30 = [v27 initWithDomain:v28 code:-2127 userInfo:v29];

    swift_willThrow();
    *&v90 = 45;
    *(&v90 + 1) = 0xE100000000000000;
    *&v89[0] = 0;
    *(&v89[0] + 1) = 0xE000000000000000;
    sub_1DB09DE44();

    *&v89[0] = 0xD000000000000018;
    *(&v89[0] + 1) = 0x80000001DB0C8FD0;
    swift_getErrorValue();
    v33 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v33);

    v34 = *&v89[0];
    LOBYTE(v89[0]) = 12;
    CoreODILogger.error(_:category:)(v34, *(&v89[0] + 1), v89);

    v78 = 0u;
    *v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v7 = v88;
LABEL_13:
    v35 = sub_1DB09CFA4();
    if (v36 >> 60 == 15)
    {
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v37 = MEMORY[0x1E69E7CC0];
      v38 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v38 + 16))
      {
        v39 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v40)
        {
          sub_1DAF409DC(*(v38 + 56) + 32 * v39, &v90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v37 = *&v89[0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1DAF72EC0(0, *(v37 + 2) + 1, 1, v37);
      }

      v42 = *(v37 + 2);
      v41 = *(v37 + 3);
      if (v42 >= v41 >> 1)
      {
        v37 = sub_1DAF72EC0((v41 > 1), v42 + 1, 1, v37);
      }

      *(v37 + 2) = v42 + 1;
      v43 = &v37[56 * v42];
      *(v43 + 4) = 0xD000000000000022;
      *(v43 + 5) = 0x80000001DB0C3B70;
      *(v43 + 6) = 0xD000000000000030;
      *(v43 + 7) = 0x80000001DB0C3BA0;
      *(v43 + 8) = 0x6F72662864656573;
      *(v43 + 9) = 0xEB00000000293A6DLL;
      *(v43 + 10) = 77;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v90 = v37;
      sub_1DAF40D20(&v90, v89);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C(v89, 0x636F766E4949444FLL, 0xEE00736E6F697461, v44);
      v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v46 = sub_1DB09D6B4();
      v47 = sub_1DB09D604();
      v48 = [v45 initWithDomain:v46 code:-2127 userInfo:v47];

      swift_willThrow();
      *&v90 = 45;
      *(&v90 + 1) = 0xE100000000000000;
      *&v89[0] = 0;
      *(&v89[0] + 1) = 0xE000000000000000;
      sub_1DB09DE44();

      *&v89[0] = 0xD000000000000016;
      *(&v89[0] + 1) = 0x80000001DB0C8FF0;
      swift_getErrorValue();
      v51 = sub_1DB09E324();
      MEMORY[0x1E127FE90](v51);

      v52 = *&v89[0];
      LOBYTE(v89[0]) = 12;
      CoreODILogger.error(_:category:)(v52, *(&v89[0] + 1), v89);

      v53 = 0uLL;
      v54 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
      v7 = v88;
    }

    else
    {
      v49 = v35;
      v50 = v36;
      sub_1DB09CC24();
      swift_allocObject();
      sub_1DB09CC14();
      sub_1DAF8C3D4();
      sub_1DB09CC04();

      sub_1DAF4AC40(v49, v50);
      v53 = v92;
      v54 = v93;
      v55 = v94;
      v56 = v95;
    }

    v14 = a3[1];
    *a5 = *a3;
    *(a5 + 8) = v14;
    *(a5 + 16) = a1;
    *(a5 + 24) = a2;
    v57 = (a3 + v7[8]);
    v15 = v57[1];
    *(a5 + 32) = *v57;
    *(a5 + 40) = v15;
    *(a5 + 48) = *v79;
    *(a5 + 64) = v78;
    *(a5 + 80) = v77;
    *(a5 + 96) = v76;
    v58 = (a3 + v7[10]);
    v60 = *v58;
    v59 = v58[1];
    *(a5 + 112) = *v58;
    *(a5 + 120) = v59;
    *(a5 + 128) = v53;
    *(a5 + 144) = v54;
    *(a5 + 160) = v55;
    *(a5 + 176) = v56;
    v61 = (a3 + v7[6]);
    v62 = v61[1];
    *(a5 + 192) = *v61;
    *(a5 + 200) = v62;
    v63 = (a3 + v7[12]);
    v64 = *v63;
    v65 = v63[1];
    *(a5 + 208) = *v63;
    *(a5 + 216) = v65;
    *(a5 + 224) = v64;
    *(a5 + 232) = v65;
    *(a5 + 240) = v60;
    *(a5 + 248) = v59;
    *(a5 + 256) = v81;
    *(a5 + 264) = v80;
    v66 = *(a3 + v7[13]);
    *(a5 + 272) = v66;
    v67 = *a4;
    v68 = a4[1];
    *(a5 + 312) = *(a4 + 4);
    *(a5 + 280) = v67;
    *(a5 + 296) = v68;
    *(a5 + 320) = v84 & 1;
    if (!v20)
    {
      goto LABEL_33;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v69 = v86;
    sub_1DAFFD350(v20, v86);

    *(a5 + 328) = v20;
    if (!__OFADD__(v66, 1))
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  *(a5 + 336) = v66 + 1;
  *(a5 + 344) = 0;
  *(a5 + 352) = v86;
  v70 = v66 + 2;
  v15 = __OFADD__(v66, 2);

  if (v15)
  {
    __break(1u);
LABEL_33:
    *(a5 + 328) = 0;
    *(a5 + 336) = 0;
    *(a5 + 344) = 1;
    *(a5 + 352) = 0;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v70 = 0;
    v69 = v86;
  }

  *(a5 + 360) = v70;
  *(a5 + 368) = v20 == 0;
  sub_1DAF3523C(a3 + v7[19], a5 + 376);
  sub_1DB09D0F4();
  v72 = *&v71;
  v14 = v71;
  sub_1DAF8C48C(v20, v69);
  if ((v14 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v72 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v72 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_1DAFFD248(a3, type metadata accessor for PregeneratedAssessment);
  *(a5 + 416) = -v72;
  *(a5 + 424) = 0;
  v73 = *(type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0) + 88);
  v74 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
  return (*(*(v74 - 8) + 56))(a5 + v73, 1, 1, v74);
}

uint64_t sub_1DAFF9558(uint64_t a1, char a2)
{
  *(v3 + 3424) = v2;
  *(v3 + 2129) = a2;
  *(v3 + 3416) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F328, &qword_1DB0AFA48);
  *(v3 + 3432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F348, &unk_1DB0AFA60);
  *(v3 + 3440) = swift_task_alloc();
  *(v3 + 3448) = swift_task_alloc();
  *(v3 + 3456) = swift_task_alloc();
  *(v3 + 3464) = swift_task_alloc();
  v4 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
  *(v3 + 3472) = v4;
  *(v3 + 3480) = *(v4 - 8);
  *(v3 + 3488) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFF96B4, v2, 0);
}

uint64_t sub_1DAFF96B4()
{
  v197 = v0;
  v1 = *(v0 + 3424);
  v2 = *(v0 + 3416);
  v3 = (*(v1 + 816) + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  v8 = *(v2 + 64);
  *(v0 + 2976) = *(v2 + 48);
  *(v0 + 3024) = v7;
  *(v0 + 3008) = v6;
  *(v0 + 2992) = v8;
  v180 = v1;
  sub_1DAF3523C(v1 + 824, v0 + 3280);
  v9 = *(v0 + 3304);
  v10 = *(v0 + 3312);
  __swift_project_boxed_opaque_existential_1((v0 + 3280), v9);
  v182 = v4;

  sub_1DAF40A84(v0 + 2976, v0 + 3040, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  sub_1DB09DE44();

  *&v185 = 0xD00000000000002DLL;
  *(&v185 + 1) = 0x80000001DB0C8DF0;
  v178 = v2;
  if (*(v2 + 216))
  {
    v13 = v2 + 224;
    v12 = *(v2 + 224);
    v11 = *(v13 + 8);
  }

  else
  {
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  v14 = *(v0 + 3424);
  MEMORY[0x1E127FE90](v12, v11);

  v15 = v185;
  LOBYTE(v185) = 12;
  (*(v10 + 16))(v15, *(&v185 + 1), &v185, v9, v10);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 3280));
  swift_beginAccess();
  v16 = *(v14 + 808);

  v17 = sub_1DAFFAC60(v5, v182, v16);

  v18 = *(v0 + 3424);
  if (v17)
  {
    sub_1DAF40AEC(v0 + 2976, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    v19 = *(v18 + 848);
    v20 = *(v18 + 856);
    __swift_project_boxed_opaque_existential_1((v180 + 824), v19);
    *&v185 = 0;
    *(&v185 + 1) = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0x75736552204E444FLL, 0xEF20726F6620746CLL);
    MEMORY[0x1E127FE90](v5, v182);

    MEMORY[0x1E127FE90](0xD00000000000002FLL, 0x80000001DB0C8F50);
    v21 = v185;
    LOBYTE(v185) = 12;
    (*(v20 + 32))(v21, *(&v185 + 1), &v185, v19, v20);

    v22 = *(v18 + 848);
    v23 = *(v18 + 856);
    __swift_project_boxed_opaque_existential_1((v180 + 824), v22);
    LOBYTE(v185) = 12;
    (*(v23 + 16))(0xD000000000000049, 0x80000001DB0C8F80, &v185, v22, v23);
LABEL_10:

    v71 = *(v0 + 8);

    return v71();
  }

  v166 = *(v0 + 3424);
  v24 = *(v0 + 3416);
  v162 = v24[24];
  v175 = v24[25];
  v170 = *v24;
  v179 = v24[1];
  sub_1DAF3523C((v24 + 47), v0 + 3320);
  v26 = v24[35];
  v25 = v24[36];
  v173 = v25;
  v174 = v26;
  v28 = v24[37];
  v27 = v24[38];
  v171 = v27;
  v172 = v28;
  v177 = v24[39];
  v169 = *(v24 + 320);
  v156 = v5;
  v160 = v24[41];
  v168 = v24[45];
  v29 = *(v24 + 368);
  v164 = v24[52];
  v30 = *(v24 + 424);
  v31 = *(v0 + 2992);
  v185 = *(v0 + 2976);
  v186 = v31;
  v32 = *(v0 + 3024);
  v187 = *(v0 + 3008);
  v188 = v32;
  v154 = v29;
  LOBYTE(v190[0]) = v29;
  LOBYTE(v191[0]) = v30;
  v33 = *(v0 + 3344);
  v34 = *(v0 + 3352);
  __swift_project_boxed_opaque_existential_1((v0 + 3320), v33);
  v158 = *(v34 + 24);

  sub_1DAFB85E4(v26, v25, v28, v27, v177);

  v35 = v158(v33, v34);
  v157 = v36;
  v159 = v35;
  v37 = *(v0 + 3344);
  v38 = *(v0 + 3352);
  __swift_project_boxed_opaque_existential_1((v0 + 3320), v37);
  v39 = (*(v38 + 40))(v37, v38);
  v155 = v40;
  v41 = *(v0 + 3344);
  v42 = *(v0 + 3352);
  __swift_project_boxed_opaque_existential_1((v0 + 3320), v41);
  v43 = (*(v42 + 48))(v41, v42);
  v45 = v44;
  v46 = *(v0 + 3344);
  v47 = *(v0 + 3352);
  __swift_project_boxed_opaque_existential_1((v0 + 3320), v46);
  v48 = (*(v47 + 32))(v46, v47);
  v50 = v49;
  v51 = *(v0 + 3344);
  v52 = *(v0 + 3352);
  __swift_project_boxed_opaque_existential_1((v0 + 3320), v51);
  v53 = (*(v52 + 56))(v51, v52);
  v55 = v54;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 3320));
  v56 = v186;
  *(v0 + 2448) = v185;
  *(v0 + 2464) = v56;
  v57 = v188;
  *(v0 + 2480) = v187;
  *(v0 + 2416) = v156;
  *(v0 + 2424) = v182;
  *(v0 + 2432) = v162;
  *(v0 + 2440) = v175;
  *(v0 + 2496) = v57;
  *(v0 + 2512) = v170;
  *(v0 + 2520) = v179;
  *(v0 + 2528) = v159;
  *(v0 + 2536) = v157;
  *(v0 + 2544) = v39;
  *(v0 + 2552) = v155;
  *(v0 + 2560) = v43;
  *(v0 + 2568) = v45;
  *(v0 + 2576) = v48;
  *(v0 + 2584) = v50;
  *(v0 + 2592) = v53;
  *(v0 + 2600) = v55;
  *(v0 + 2608) = v174;
  *(v0 + 2616) = v173;
  *(v0 + 2624) = v172;
  *(v0 + 2632) = v171;
  *(v0 + 2640) = v177;
  *(v0 + 2648) = v169;
  *(v0 + 2656) = v160;
  *(v0 + 2664) = v168;
  *(v0 + 2672) = v190[0];
  *(v0 + 2680) = v164;
  *(v0 + 2688) = v191[0];
  memcpy((v0 + 2136), (v0 + 2416), 0x111uLL);
  nullsub_3();
  sub_1DAFFCFE4(v0 + 2416, v0 + 2696);
  memcpy((v0 + 1856), (v166 + 520), 0x111uLL);
  memcpy((v166 + 520), (v0 + 2136), 0x111uLL);
  sub_1DAF40AEC(v0 + 1856, &qword_1ECC0F338, &qword_1DB0AFA58);
  sub_1DB09CC54();
  swift_allocObject();
  sub_1DB09CC44();
  v58 = v178[26];
  v59 = v178[27];
  v60 = v178[28];
  v61 = v178[29];
  v62 = v24[30];
  v63 = v24[31];
  *(v0 + 3232) = v58;
  *(v0 + 3240) = v59;
  *(v0 + 3248) = v60;
  *(v0 + 3256) = v61;
  *(v0 + 3264) = v62;
  *(v0 + 3272) = v63;
  sub_1DAFFD040(v58, v59, v60, v61, v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F350, &unk_1DB0AFA70);
  sub_1DAFFD090();
  v83 = sub_1DB09CC34();
  v85 = v84;
  sub_1DAFFD114(*(v0 + 3232), *(v0 + 3240), *(v0 + 3248), *(v0 + 3256), *(v0 + 3264), *(v0 + 3272));

  if (v178[27] && v85 >> 60 != 15 && (v86 = *(v0 + 3416), *(v86 + 264)))
  {
    v87 = (v0 + 3104);
    v176 = *(v86 + 256);
    v167 = *(v86 + 264);

    sub_1DAF4ED88(v83, v85);
    v88 = sub_1DB09D014();
    v163 = v89;
    v165 = v88;
    v184 = v83;
    sub_1DAF4AC40(v83, v85);
    v161 = *(v86 + 272);
    v90 = *(v86 + 128);
    v91 = *(v86 + 144);
    v92 = *(v86 + 176);
    *(v0 + 3136) = *(v86 + 160);
    *(v0 + 3152) = v92;
    *(v0 + 3104) = v90;
    *(v0 + 3120) = v91;
    v93 = *(v86 + 400);
    v94 = *(v86 + 408);
    __swift_project_boxed_opaque_existential_1(v24 + 47, v93);
    v95 = *(v94 + 64);
    sub_1DAF40A84(v0 + 3104, v0 + 3168, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    v95(&v192, v93, v94);
    v96 = *(v86 + 352);

    sub_1DAFB85E4(v174, v173, v172, v171, v177);
    v97 = qword_1EE301DD0;

    if (v97 != -1)
    {
      swift_once();
    }

    v98 = *(v0 + 3120);
    *(v0 + 776) = *v87;
    *(v0 + 792) = v98;
    v99 = *(v0 + 3152);
    v101 = *v87;
    v100 = *(v0 + 3120);
    v102 = *(v0 + 3136);
    *(v0 + 808) = v102;
    *(v0 + 824) = v99;
    *(v0 + 40) = v101;
    *(v0 + 56) = v100;
    *(v0 + 72) = v102;
    *(v0 + 88) = *(v0 + 3152);
    v103 = v193;
    *(v0 + 120) = v193;
    v104 = v194;
    *(v0 + 136) = v194;
    v105 = v196;
    *(v0 + 152) = v195;
    v106 = v195;
    *(v0 + 168) = v105;
    v107 = v192;
    *(v0 + 104) = v192;
    v108 = *(v0 + 3424);
    v109 = qword_1EE309EE0;
    v110 = qword_1EE309EE8;
    LOBYTE(v189[0]) = v154;
    LOBYTE(v190[0]) = 1;
    LOBYTE(v191[0]) = 1;
    LOBYTE(v185) = 1;
    *(v0 + 16) = v165;
    *(v0 + 24) = v163;
    *(v0 + 32) = v161;
    *(v0 + 184) = v170;
    *(v0 + 192) = v179;
    *(v0 + 200) = v176;
    *(v0 + 208) = v167;
    *(v0 + 216) = 2;
    *(v0 + 224) = v169;
    *(v0 + 232) = v96;
    *(v0 + 240) = v168;
    v111 = v189[0];
    *(v0 + 248) = v189[0];
    *(v0 + 256) = v174;
    *(v0 + 264) = v173;
    *(v0 + 272) = v172;
    *(v0 + 280) = v171;
    *(v0 + 288) = v177;
    *(v0 + 296) = 0;
    v112 = v190[0];
    *(v0 + 304) = v190[0];
    *(v0 + 872) = v104;
    *(v0 + 888) = v106;
    *(v0 + 904) = v196;
    *(v0 + 312) = 0u;
    v113 = MEMORY[0x1E69E7CC0];
    *(v0 + 328) = MEMORY[0x1E69E7CC0];
    *(v0 + 336) = 0;
    v114 = v191[0];
    *(v0 + 344) = v191[0];
    *(v0 + 352) = 0;
    v115 = v185;
    *(v0 + 360) = v185;
    *(v0 + 368) = v109;
    *(v0 + 376) = v110;
    *(v0 + 752) = v165;
    *(v0 + 760) = v163;
    *(v0 + 768) = v161;
    *(v0 + 840) = v107;
    *(v0 + 856) = v103;
    *(v0 + 920) = v170;
    *(v0 + 928) = v179;
    *(v0 + 936) = v176;
    *(v0 + 944) = v167;
    *(v0 + 952) = 2;
    *(v0 + 960) = v169;
    *(v0 + 968) = v96;
    *(v0 + 976) = v168;
    *(v0 + 984) = v111;
    *(v0 + 992) = v174;
    *(v0 + 1000) = v173;
    *(v0 + 1008) = v172;
    *(v0 + 1016) = v171;
    *(v0 + 1024) = v177;
    *(v0 + 1032) = 0;
    *(v0 + 1040) = v112;
    *(v0 + 1041) = v189[0];
    *(v0 + 1044) = *(v189 + 3);
    *(v0 + 1048) = 0u;
    *(v0 + 1064) = v113;
    *(v0 + 1072) = 0;
    *(v0 + 1080) = v114;
    *(v0 + 1081) = v190[0];
    *(v0 + 1084) = *(v190 + 3);
    *(v0 + 1088) = 0;
    *(v0 + 1096) = v115;
    *(v0 + 1100) = *(v191 + 3);
    *(v0 + 1097) = v191[0];
    *(v0 + 1104) = v109;
    *(v0 + 1112) = v110;
    nullsub_3();
    sub_1DAF40520(v0 + 16, v0 + 1120);
    sub_1DAF40520(v0 + 16, v0 + 1488);
    memcpy((v0 + 384), (v108 + 152), 0x170uLL);
    memcpy((v108 + 152), (v0 + 752), 0x170uLL);

    sub_1DAF40AEC(v0 + 384, &qword_1ECC0F330, &qword_1DB0AFA50);
    if (v178[27])
    {
      v116 = *(v0 + 3424);
      v118 = v178[28];
      v117 = v178[29];

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v185 = *(v116 + 800);
      *(v116 + 800) = 0x8000000000000000;
      sub_1DAF3B618((v0 + 16), v118, v117, isUniquelyReferenced_nonNull_native);

      *(v116 + 800) = v185;
      swift_endAccess();
    }

    else
    {
      sub_1DAFFD2A8(v0 + 16);
    }

    v138 = *(v0 + 3424);
    v139 = *(v138[100] + 16);
    v140 = v138[106];
    v141 = v138[107];
    __swift_project_boxed_opaque_existential_1((v180 + 824), v140);
    *&v185 = 0;
    *(&v185 + 1) = 0xE000000000000000;
    swift_bridgeObjectRetain_n();
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000002ELL, 0x80000001DB0C8ED0);
    *(v0 + 3408) = v139;
    v142 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v142);

    MEMORY[0x1E127FE90](0x73656972746E6520, 0xE800000000000000);
    v143 = v185;
    LOBYTE(v185) = 12;
    (*(v141 + 16))(v143, *(&v185 + 1), &v185, v140, v141);

    v144 = v138[106];
    v145 = v138[107];
    __swift_project_boxed_opaque_existential_1((v180 + 824), v144);
    *&v185 = 0;
    *(&v185 + 1) = 0xE000000000000000;
    sub_1DB09DE44();

    *&v185 = 0xD000000000000017;
    *(&v185 + 1) = 0x80000001DB0C8F00;
    v146 = sub_1DB09D654();
    MEMORY[0x1E127FE90](v146);

    v147 = v185;
    LOBYTE(v185) = 12;
    (*(v145 + 16))(v147, *(&v185 + 1), &v185, v144, v145);

    v148 = v138[106];
    v149 = v138[107];
    v67 = v180;
    __swift_project_boxed_opaque_existential_1((v180 + 824), v148);
    *&v185 = 0;
    *(&v185 + 1) = 0xE000000000000000;
    sub_1DB09DE44();

    *&v185 = 0xD000000000000028;
    *(&v185 + 1) = 0x80000001DB0C8F20;
    v150 = sub_1DB09D634();
    v152 = v151;

    MEMORY[0x1E127FE90](v150, v152);

    v153 = v185;
    LOBYTE(v185) = 12;
    (*(v149 + 16))(v153, *(&v185 + 1), &v185, v148, v149);
    sub_1DAFFD2A8(v0 + 16);

    v83 = v184;
  }

  else
  {
    v64 = *(v0 + 3424);
    v65 = *(v64 + 848);
    v66 = *(v64 + 856);
    v67 = v180;
    __swift_project_boxed_opaque_existential_1((v180 + 824), v65);
    LOBYTE(v185) = 12;
    (*(v66 + 16))(0xD000000000000056, 0x80000001DB0C8E20, &v185, v65, v66);
  }

  *(v0 + 3504) = v83;
  *(v0 + 3496) = v85;
  if (*(v0 + 2129) == 1)
  {
    v68 = *(v0 + 3424);
    v69 = *(v68 + 848);
    v70 = *(v68 + 856);
    __swift_project_boxed_opaque_existential_1((v67 + 824), v69);
    LOBYTE(v185) = 12;
    (*(v70 + 16))(0xD000000000000048, 0x80000001DB0C8E80, &v185, v69, v70);
    sub_1DAFFD1F4(v0 + 2416);
    sub_1DAF4AC40(v83, v85);
    goto LABEL_10;
  }

  v73 = *(v0 + 3480);
  v74 = *(v0 + 3472);
  v75 = *(v0 + 3464);
  v76 = *(v0 + 3416);
  v77 = *(v76 + 24);
  v183 = *(v76 + 16);
  v78 = *(type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0) + 88);
  sub_1DAF40A84(v76 + v78, v75, &qword_1ECC0F348, &unk_1DB0AFA60);
  v79 = *(v73 + 48);
  v80 = v79(v75, 1, v74);
  v81 = *(v0 + 3464);
  if (v80 == 1)
  {

    sub_1DAF40AEC(v81, &qword_1ECC0F348, &unk_1DB0AFA60);
    v181 = 0;
    v82 = 0;
  }

  else
  {
    v82 = *(v81 + 24);
    v181 = *(v81 + 16);

    sub_1DAFFD248(v81, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  }

  v120 = *(v0 + 3472);
  v121 = *(v0 + 3456);
  sub_1DAF40A84(v76 + v78, v121, &qword_1ECC0F348, &unk_1DB0AFA60);
  if (v79(v121, 1, v120) == 1)
  {
    v122 = *(v0 + 3432);
    sub_1DAF40AEC(*(v0 + 3456), &qword_1ECC0F348, &unk_1DB0AFA60);
    v123 = type metadata accessor for AssessmentTiming(0);
    (*(*(v123 - 8) + 56))(v122, 1, 1, v123);
  }

  else
  {
    v124 = *(v0 + 3456);
    sub_1DAF40A84(v124 + *(*(v0 + 3472) + 24), *(v0 + 3432), &qword_1ECC0F328, &qword_1DB0AFA48);
    sub_1DAFFD248(v124, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  }

  v125 = *(v0 + 3472);
  v126 = *(v0 + 3448);
  sub_1DAF40A84(v76 + v78, v126, &qword_1ECC0F348, &unk_1DB0AFA60);
  if (v79(v126, 1, v125) == 1)
  {
    sub_1DAF40AEC(*(v0 + 3448), &qword_1ECC0F348, &unk_1DB0AFA60);
    v127 = 2;
  }

  else
  {
    v128 = *(v0 + 3448);
    v127 = *(v128 + *(*(v0 + 3472) + 28));
    sub_1DAFFD248(v128, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  }

  v129 = *(v0 + 3472);
  v130 = *(v0 + 3440);
  sub_1DAF40A84(v76 + v78, v130, &qword_1ECC0F348, &unk_1DB0AFA60);
  if (v79(v130, 1, v129) == 1)
  {
    sub_1DAF40AEC(*(v0 + 3440), &qword_1ECC0F348, &unk_1DB0AFA60);
    v131 = 0;
  }

  else
  {
    v132 = *(v0 + 3440);
    v131 = *(v132 + *(*(v0 + 3472) + 32));

    sub_1DAFFD248(v132, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
  }

  v133 = *(v0 + 3488);
  v134 = *(v0 + 3472);
  v135 = *(v0 + 3432);
  *v133 = v183;
  v133[1] = v77;
  v133[2] = v181;
  v133[3] = v82;
  sub_1DAFFD184(v135, v133 + v134[6]);
  *(v133 + v134[7]) = v127;
  *(v133 + v134[8]) = v131;
  v136 = swift_task_alloc();
  *(v0 + 3512) = v136;
  *v136 = v0;
  v136[1] = sub_1DAFFA96C;
  v137 = *(v0 + 3488);

  return sub_1DAFFAD58(v137);
}

uint64_t sub_1DAFFA96C()
{
  v2 = *v1;
  *(*v1 + 3520) = v0;

  v3 = *(v2 + 3424);
  if (v0)
  {
    v4 = sub_1DAFFAB7C;
  }

  else
  {
    v4 = sub_1DAFFAA98;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFFAA98()
{
  v1 = v0[436];
  sub_1DAF4AC40(v0[438], v0[437]);
  sub_1DAFFD1F4((v0 + 302));
  sub_1DAFFD248(v1, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DAFFAB7C()
{
  v1 = v0[436];
  sub_1DAF4AC40(v0[438], v0[437]);
  sub_1DAFFD1F4((v0 + 302));
  sub_1DAFFD248(v1, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DAFFAC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DB09E3A4();
  sub_1DB09D794();
  v6 = sub_1DB09E3E4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DB09E254() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DAFFAD58(uint64_t a1)
{
  v2[1285] = v1;
  v2[1284] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F328, &qword_1DB0AFA48);
  v2[1286] = swift_task_alloc();
  v3 = type metadata accessor for AssessmentTiming(0);
  v2[1287] = v3;
  v2[1288] = *(v3 - 8);
  v2[1289] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFFAE54, v1, 0);
}

uint64_t sub_1DAFFAE54()
{
  v112 = v0;
  v1 = *(v0 + 10272);
  v107 = *(v0 + 10280);
  sub_1DAF3523C(v107 + 824, v0 + 9896);
  v2 = *(v0 + 9920);
  v3 = *(v0 + 9928);
  __swift_project_boxed_opaque_existential_1((v0 + 9896), v2);
  v110 = 0;
  v111 = 0xE000000000000000;
  sub_1DB09DE44();

  *(v0 + 10256) = 0xD000000000000014;
  *(v0 + 10264) = 0x80000001DB0C8CA0;
  v4 = v1[2];
  *(v0 + 10320) = v4;
  v5 = v1[3];
  *(v0 + 10328) = v5;
  v105 = v4;
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7104878;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x1E127FE90](v6, v7);

  v8 = *(v0 + 10256);
  v9 = *(v0 + 10264);
  LOBYTE(v110) = 12;
  (*(v3 + 32))(v8, v9, &v110, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9896));
  *(v0 + 10336) = *v1;
  *(v0 + 10344) = v1[1];
  if (!v5)
  {
    v10 = (v0 + 1120);
    v16 = *(v0 + 10280);
    swift_beginAccess();
    memcpy((v0 + 1120), (v16 + 152), 0x170uLL);
    sub_1DAF40A84(v0 + 1120, v0 + 1856, &qword_1ECC0F330, &qword_1DB0AFA50);
LABEL_40:
    v50 = v0 + 4096;
    goto LABEL_43;
  }

  v10 = (v0 + 6272);
  v11 = *(v0 + 10304);
  v12 = *(v0 + 10296);
  v13 = *(v0 + 10288);
  v14 = *(v0 + 10272);
  v15 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
  sub_1DAF40A84(v14 + v15[6], v13, &qword_1ECC0F328, &qword_1DB0AFA48);
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    sub_1DAF40AEC(*(v0 + 10288), &qword_1ECC0F328, &qword_1DB0AFA48);
  }

  else
  {
    v17 = *(v0 + 10272);
    sub_1DAFFCF2C(*(v0 + 10288), *(v0 + 10312));
    v18 = *(v17 + v15[7]);
    if (v18 == 2)
    {
      v19 = *(v0 + 10312);
    }

    else
    {
      v20 = *(*(v0 + 10272) + v15[8]);
      v21 = *(v0 + 10312);
      if (v20)
      {
        v22 = *(v0 + 10280);
        AssessmentTiming.assessmentReadyBeforeFeedbackDuration.getter();
        v99 = v23;
        v98 = v24;
        AssessmentTiming.updateToAssessmentDuration.getter();
        v101 = v25;
        v100 = v26;
        AssessmentTiming.requestToReturnDuration.getter();
        v104 = v27;
        v103 = v28;
        if (v18)
        {
          v29 = 0x74756F656D6974;
        }

        else
        {
          v29 = 0x6465747365676E69;
        }

        if (v18)
        {
          v30 = 0xE700000000000000;
        }

        else
        {
          v30 = 0xE800000000000000;
        }

        swift_beginAccess();
        if (*(*(v22 + 800) + 16))
        {
          sub_1DAF35210(v105, v5);
          if (v31)
          {
            v97 = (v0 + 10040);
            v32 = sub_1DAFF8498((v0 + 9976), v105, v5);
            v34 = v33;
            memmove((v0 + 5904), v33, 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 5904) != 1)
            {
              v34[35] = v99;
              *(v34 + 288) = v98 & 1;
            }

            (v32)(v0 + 9976, 0);
            v35 = sub_1DAFF8498((v0 + 10008), v105, v5);
            v37 = v36;
            memmove((v0 + 2592), v36, 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 2592) != 1)
            {
              v37[40] = v101;
              *(v37 + 328) = v100 & 1;
            }

            v102 = (v0 + 10104);
            (v35)(v0 + 10008, 0);
            v38 = sub_1DAFF8498(v97, v105, v5);
            v40 = v39;
            memmove((v0 + 2224), v39, 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 2224) != 1)
            {
              v40[42] = v104;
              *(v40 + 344) = v103 & 1;
            }

            (v38)(v97, 0);
            v41 = sub_1DAFF8498((v0 + 10072), v105, v5);
            v43 = v42;
            memmove((v0 + 1488), v42, 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 1488) != 1)
            {
              v43[37] = v29;
              v43[38] = v30;
            }

            v41();
            v44 = sub_1DAFF8498(v102, v105, v5);
            v46 = v45;
            memmove((v0 + 384), v45, 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 384) != 1)
            {
              v46[39] = v20;
            }

            (v44)(v102, 0);
          }
        }

        v21 = *(v0 + 10312);
        swift_endAccess();
      }

      v19 = v21;
    }

    sub_1DAFFD248(v19, type metadata accessor for AssessmentTiming);
  }

  v47 = *(v0 + 10280);
  swift_beginAccess();
  v48 = *(v47 + 800);
  if (!*(v48 + 16))
  {
    sub_1DAF96D80((v0 + 6272));
    goto LABEL_40;
  }

  v49 = sub_1DAF35210(v105, v5);
  v50 = v0 + 4096;
  if (v51)
  {
    v52 = (*(v48 + 56) + 368 * v49);
    memcpy((v0 + 3696), v52, 0x170uLL);
    memmove((v0 + 16), v52, 0x170uLL);
    nullsub_3();
    sub_1DAF40520(v0 + 3696, v0 + 6640);

    v53 = (v0 + 16);
  }

  else
  {

    sub_1DAF96D80((v0 + 7008));
    v53 = (v0 + 7008);
  }

  memcpy((v0 + 6272), v53, 0x170uLL);
LABEL_43:
  memcpy((v0 + 752), v10, 0x170uLL);
  v54 = *(v0 + 10280);
  swift_beginAccess();
  v55 = *(v54 + 112);
  *(v50 + 3553) = v55;
  v57 = *(v54 + 120);
  v56 = *(v54 + 128);
  *(v0 + 10352) = v56;
  if (v55 != 1)
  {
    v106 = v55;

    v58 = 0xE500000000000000;
    v59 = 0x65736C6166;
    goto LABEL_50;
  }

  if (!v56)
  {
    v106 = 1;
    goto LABEL_49;
  }

  memcpy((v0 + 4064), (v0 + 752), 0x170uLL);
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 4064) == 1)
  {
    v106 = 1;

LABEL_49:
    v58 = 0xE400000000000000;
    v59 = 1702195828;
LABEL_50:
    sub_1DAF3523C(v107 + 824, v0 + 9936);
    v60 = *(v0 + 9960);
    v61 = *(v0 + 9968);
    __swift_project_boxed_opaque_existential_1((v0 + 9936), v60);
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_1DB09DE44();
    v108 = v110;
    v109 = v111;
    MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0C8CC0);
    MEMORY[0x1E127FE90](v59, v58);

    MEMORY[0x1E127FE90](0xD000000000000010, 0x80000001DB0C8CF0);
    memcpy((v0 + 2960), (v0 + 752), 0x170uLL);
    enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 = get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 2960);
    v63 = enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 == 1;
    if (enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 == 1)
    {
      v64 = 0x65736C6166;
    }

    else
    {
      v64 = 1702195828;
    }

    if (v63)
    {
      v65 = 0xE500000000000000;
    }

    else
    {
      v65 = 0xE400000000000000;
    }

    MEMORY[0x1E127FE90](v64, v65);

    MEMORY[0x1E127FE90](0xD000000000000015, 0x80000001DB0C8D10);
    if (v56)
    {
      v66 = 1702195828;
    }

    else
    {
      v66 = 0x65736C6166;
    }

    if (v56)
    {
      v67 = 0xE400000000000000;
    }

    else
    {
      v67 = 0xE500000000000000;
    }

    MEMORY[0x1E127FE90](v66, v67);

    LOBYTE(v110) = 12;
    (*(v61 + 32))(v108, v109, &v110, v60, v61);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 9936));
    if (v106)
    {
      v68 = v0 + 4096;
      if (v56)
      {
      }

      else
      {
        v69 = *(v0 + 10280);
        v70 = *(v69 + 848);
        v71 = *(v69 + 856);
        __swift_project_boxed_opaque_existential_1((v107 + 824), v70);
        LOBYTE(v110) = 14;
        Loggable.info(_:category:)(0xD00000000000003CLL, 0x80000001DB0C8DB0, &v110, v70, v71);
      }
    }

    else
    {

      v68 = v0 + 4096;
    }

    v72 = *(v0 + 10280);
    memcpy((v0 + 7376), (v72 + 520), 0x111uLL);
    v73 = *(v72 + 113);
    *(v68 + 3554) = v73;
    v75 = *(v72 + 120);
    v74 = *(v72 + 128);
    *(v0 + 10376) = v74;
    if (v73 == 1)
    {
      if (!v74)
      {
        sub_1DAF40A84(v0 + 7376, v0 + 8216, &qword_1ECC0F338, &qword_1DB0AFA58);
        goto LABEL_78;
      }

      memcpy((v0 + 9616), (v72 + 520), 0x111uLL);
      if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 9616) == 1)
      {
LABEL_76:

LABEL_78:
        v81 = *(v0 + 10280);
        v82 = v81[106];
        v83 = v81[107];
        __swift_project_boxed_opaque_existential_1(v81 + 103, v82);
        LOBYTE(v110) = 12;
        (*(v83 + 32))(0xD00000000000001ALL, 0x80000001DB0C8D30, &v110, v82, v83);
        if (v73 && !v74)
        {
          v90 = v81[106];
          v91 = v81[107];
          __swift_project_boxed_opaque_existential_1((*(v0 + 10280) + 824), v90);
          LOBYTE(v110) = 14;
          Loggable.info(_:category:)(0xD00000000000003CLL, 0x80000001DB0C8D70, &v110, v90, v91);
          if (*(v68 + 3553))
          {
            goto LABEL_81;
          }
        }

        else
        {

          if (*(v68 + 3553))
          {
LABEL_81:
            memcpy((v0 + 3328), (v0 + 752), 0x170uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 3328) == 1)
            {
              sub_1DAFFCA5C();
              swift_allocError();
              *v84 = 0x8000000000000018;
              swift_willThrow();
              v85 = &qword_1ECC0F338;
              v86 = &qword_1DB0AFA58;
              v87 = v0 + 7376;
LABEL_92:
              sub_1DAF40AEC(v87, v85, v86);

              v96 = *(v0 + 8);

              return v96();
            }

            if ((*(v68 + 3554) & 1) == 0)
            {
              sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
              v85 = &qword_1ECC0F330;
              v86 = &qword_1DB0AFA50;
              v87 = v0 + 752;
              goto LABEL_92;
            }

            memcpy((v0 + 7936), (v0 + 7376), 0x111uLL);
            if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 7936) != 1)
            {
              sub_1DAF40AEC(v0 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);
              v85 = &qword_1ECC0F338;
              v86 = &qword_1DB0AFA58;
              v87 = v0 + 7376;
              goto LABEL_92;
            }

            sub_1DAFFCA5C();
            swift_allocError();
            *v88 = 0x8000000000000010;
            swift_willThrow();
LABEL_91:
            v85 = &qword_1ECC0F330;
            v86 = &qword_1DB0AFA50;
            v87 = v0 + 752;
            goto LABEL_92;
          }
        }

        v92 = *(v0 + 10280);
        v93 = v92[106];
        v94 = v92[107];
        __swift_project_boxed_opaque_existential_1(v92 + 103, v93);
        LOBYTE(v110) = 12;
        (*(v94 + 32))(0xD00000000000001ALL, 0x80000001DB0C8D50, &v110, v93, v94);
        sub_1DAFFCA5C();
        swift_allocError();
        *v95 = 0x8000000000000008;
        swift_willThrow();
        sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
        goto LABEL_91;
      }

      v76 = *(v0 + 10344);
      if (v76)
      {
        memcpy((v0 + 8776), (v0 + 9616), 0x111uLL);
        sub_1DAF40A84(v0 + 7376, v0 + 9056, &qword_1ECC0F338, &qword_1DB0AFA58);
        sub_1DAF40A84(v0 + 7376, v0 + 9336, &qword_1ECC0F338, &qword_1DB0AFA58);

        v77 = swift_task_alloc();
        *(v0 + 10384) = v77;
        *v77 = v0;
        v77[1] = sub_1DAFFC40C;
        v78 = *(v0 + 10336);

        return sub_1DB0026E0(v78, v76, v75, v74, (v0 + 8776));
      }

      v80 = 8496;
    }

    else
    {
      v80 = 7656;
    }

    sub_1DAF40A84(v0 + 7376, v0 + v80, &qword_1ECC0F338, &qword_1DB0AFA58);
    goto LABEL_76;
  }

  memcpy((v0 + 4432), (v0 + 4064), 0x170uLL);

  sub_1DAF40A84(v0 + 752, v0 + 4800, &qword_1ECC0F330, &qword_1DB0AFA50);
  v89 = swift_task_alloc();
  *(v0 + 10360) = v89;
  *v89 = v0;
  v89[1] = sub_1DAFFBCF8;

  return sub_1DB001DA8((v0 + 4432), v57, v56);
}

uint64_t sub_1DAFFBCF8()
{
  v2 = *v1;
  *(*v1 + 10368) = v0;

  if (v0)
  {
    v3 = *(v2 + 10280);

    v4 = sub_1DAFFC82C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 10280);
    v4 = sub_1DAFFBE20;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DAFFBE20()
{
  v29 = v0;
  v1 = *(v0 + 10328);
  if (v1)
  {
    v2 = *(v0 + 10320);
    swift_beginAccess();

    sub_1DB081248(v28, v2, v1);
    swift_endAccess();
  }

  v3 = *(v0 + 10280);
  sub_1DAF96D80((v0 + 5536));
  memcpy((v0 + 5168), (v3 + 152), 0x170uLL);
  memcpy((v3 + 152), (v0 + 5536), 0x170uLL);
  sub_1DAF40AEC(v0 + 5168, &qword_1ECC0F330, &qword_1DB0AFA50);
  sub_1DAF40AEC(v0 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);

  v4 = *(v0 + 10280);
  memcpy((v0 + 7376), (v4 + 520), 0x111uLL);
  v5 = *(v4 + 113);
  *(v0 + 7650) = v5;
  v7 = *(v4 + 120);
  v6 = *(v4 + 128);
  *(v0 + 10376) = v6;
  if (v5 != 1)
  {
    v12 = 7656;
LABEL_11:
    sub_1DAF40A84(v0 + 7376, v0 + v12, &qword_1ECC0F338, &qword_1DB0AFA58);
    goto LABEL_12;
  }

  if (!v6)
  {
    sub_1DAF40A84(v0 + 7376, v0 + 8216, &qword_1ECC0F338, &qword_1DB0AFA58);
    goto LABEL_14;
  }

  memcpy((v0 + 9616), (v4 + 520), 0x111uLL);
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 9616) != 1)
  {
    v8 = *(v0 + 10344);
    if (v8)
    {
      memcpy((v0 + 8776), (v0 + 9616), 0x111uLL);
      sub_1DAF40A84(v0 + 7376, v0 + 9056, &qword_1ECC0F338, &qword_1DB0AFA58);
      sub_1DAF40A84(v0 + 7376, v0 + 9336, &qword_1ECC0F338, &qword_1DB0AFA58);

      v9 = swift_task_alloc();
      *(v0 + 10384) = v9;
      *v9 = v0;
      v9[1] = sub_1DAFFC40C;
      v10 = *(v0 + 10336);

      return sub_1DB0026E0(v10, v8, v7, v6, (v0 + 8776));
    }

    v12 = 8496;
    goto LABEL_11;
  }

LABEL_12:

LABEL_14:
  v13 = *(v0 + 10280);
  v14 = v13[106];
  v15 = v13[107];
  __swift_project_boxed_opaque_existential_1(v13 + 103, v14);
  v28[0] = 12;
  (*(v15 + 32))(0xD00000000000001ALL, 0x80000001DB0C8D30, v28, v14, v15);
  if (!v5 || v6)
  {

    if (*(v0 + 7649))
    {
      goto LABEL_17;
    }

LABEL_23:
    v23 = *(v0 + 10280);
    v24 = v23[106];
    v25 = v23[107];
    __swift_project_boxed_opaque_existential_1(v23 + 103, v24);
    v28[0] = 12;
    (*(v25 + 32))(0xD00000000000001ALL, 0x80000001DB0C8D50, v28, v24, v25);
    sub_1DAFFCA5C();
    swift_allocError();
    *v26 = 0x8000000000000008;
    swift_willThrow();
    sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
LABEL_24:
    v17 = &qword_1ECC0F330;
    v18 = &qword_1DB0AFA50;
    v19 = v0 + 752;
    goto LABEL_25;
  }

  v21 = v13[106];
  v22 = v13[107];
  __swift_project_boxed_opaque_existential_1((*(v0 + 10280) + 824), v21);
  v28[0] = 14;
  Loggable.info(_:category:)(0xD00000000000003CLL, 0x80000001DB0C8D70, v28, v21, v22);
  if ((*(v0 + 7649) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  memcpy((v0 + 3328), (v0 + 752), 0x170uLL);
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 3328) != 1)
  {
    if ((*(v0 + 7650) & 1) == 0)
    {
      sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
      v17 = &qword_1ECC0F330;
      v18 = &qword_1DB0AFA50;
      v19 = v0 + 752;
      goto LABEL_25;
    }

    memcpy((v0 + 7936), (v0 + 7376), 0x111uLL);
    if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 7936) != 1)
    {
      sub_1DAF40AEC(v0 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);
      v17 = &qword_1ECC0F338;
      v18 = &qword_1DB0AFA58;
      v19 = v0 + 7376;
      goto LABEL_25;
    }

    sub_1DAFFCA5C();
    swift_allocError();
    *v20 = 0x8000000000000010;
    swift_willThrow();
    goto LABEL_24;
  }

  sub_1DAFFCA5C();
  swift_allocError();
  *v16 = 0x8000000000000018;
  swift_willThrow();
  v17 = &qword_1ECC0F338;
  v18 = &qword_1DB0AFA58;
  v19 = v0 + 7376;
LABEL_25:
  sub_1DAF40AEC(v19, v17, v18);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1DAFFC40C()
{
  v2 = *v1;
  *(*v1 + 10392) = v0;

  if (v0)
  {
    v3 = *(v2 + 10280);
    sub_1DAF40AEC(v2 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);

    v4 = sub_1DAFFC904;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 10280);
    v4 = sub_1DAFFC55C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DAFFC55C()
{
  v16 = v0;
  sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);

  if ((*(v0 + 7649) & 1) == 0)
  {
    v5 = *(v0 + 10280);
    v6 = v5[106];
    v7 = v5[107];
    __swift_project_boxed_opaque_existential_1(v5 + 103, v6);
    v15[0] = 12;
    (*(v7 + 32))(0xD00000000000001ALL, 0x80000001DB0C8D50, v15, v6, v7);
    sub_1DAFFCA5C();
    swift_allocError();
    *v8 = 0x8000000000000008;
    swift_willThrow();
    sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
LABEL_5:
    v2 = &qword_1ECC0F330;
    v3 = &qword_1DB0AFA50;
    v4 = v0 + 752;
    goto LABEL_6;
  }

  memcpy((v0 + 3328), (v0 + 752), 0x170uLL);
  if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 3328) == 1)
  {
    sub_1DAFFCA5C();
    swift_allocError();
    *v1 = 0x8000000000000018;
    swift_willThrow();
    v2 = &qword_1ECC0F338;
    v3 = &qword_1DB0AFA58;
    v4 = v0 + 7376;
LABEL_6:
    sub_1DAF40AEC(v4, v2, v3);

    v9 = *(v0 + 8);
    goto LABEL_7;
  }

  if (*(v0 + 7650))
  {
    memcpy((v0 + 7936), (v0 + 7376), 0x111uLL);
    if (get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v0 + 7936) == 1)
    {
      sub_1DAFFCA5C();
      swift_allocError();
      *v11 = 0x8000000000000010;
      swift_willThrow();
      goto LABEL_5;
    }

    sub_1DAF40AEC(v0 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);
    v12 = &qword_1ECC0F338;
    v13 = &qword_1DB0AFA58;
    v14 = v0 + 7376;
  }

  else
  {
    sub_1DAF40AEC(v0 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
    v12 = &qword_1ECC0F330;
    v13 = &qword_1DB0AFA50;
    v14 = v0 + 752;
  }

  sub_1DAF40AEC(v14, v12, v13);

  v9 = *(v0 + 8);
LABEL_7:

  return v9();
}

uint64_t sub_1DAFFC82C(uint64_t a1)
{
  v2 = *(v1 + 10368) | 0x4000000000000000;
  sub_1DAFFCA5C();
  swift_allocError();
  *v3 = v2;
  swift_willThrow();
  sub_1DAF40AEC(v1 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);
  sub_1DAF40AEC(v1 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1DAFFC904(uint64_t a1)
{
  v2 = *(v1 + 10392);
  sub_1DAFFCA5C();
  swift_allocError();
  *v3 = v2;
  swift_willThrow();
  sub_1DAF40AEC(v1 + 7376, &qword_1ECC0F338, &qword_1DB0AFA58);
  sub_1DAF40AEC(v1 + 752, &qword_1ECC0F330, &qword_1DB0AFA50);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1DAFFC9DC()
{
  memcpy(v2, (v0 + 112), sizeof(v2));
  sub_1DAFFD2FC(v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 824));
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

unint64_t sub_1DAFFCA5C()
{
  result = qword_1ECC0F340;
  if (!qword_1ECC0F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F340);
  }

  return result;
}

void (*sub_1DAFFCAB0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1DAFFCED8(v7);
  v7[9] = sub_1DAFFCBBC(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DAFFCB5C;
}

void sub_1DAFFCB5C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1DAFFCBBC(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xA38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[324] = v4;
  v10[323] = a3;
  v10[322] = a2;
  v12 = *v4;
  v13 = sub_1DAF35210(a2, a3);
  *(v11 + 2608) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1DAF3CC08();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1DAF38BE4(v18, a4 & 1);
    v13 = sub_1DAF35210(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1DB09E2E4();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[325] = v13;
  if (v19)
  {
    memmove(v11 + 138, (*(*v5 + 56) + 368 * v13), 0x170uLL);
    nullsub_3();
    memcpy(v11 + 92, v11 + 138, 0x170uLL);
  }

  else
  {
    sub_1DAF96D80(v11 + 46);
  }

  return sub_1DAFFCD40;
}

void sub_1DAFFCD40(uint64_t *a1, char a2)
{
  v3 = *a1;
  memcpy((*a1 + 1472), (*a1 + 736), 0x170uLL);
  memcpy((v3 + 1104), (v3 + 736), 0x170uLL);
  enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 = get_enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0(v3 + 1104);
  if (a2)
  {
    if (enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 != 1)
    {
      v5 = *(v3 + 2600);
      v6 = *(v3 + 2592);
      if ((*(v3 + 2608) & 1) == 0)
      {
        v7 = *(v3 + 2584);
        v8 = *(v3 + 2576);
        v9 = *v6;
        memcpy(v3, (v3 + 1472), 0x170uLL);
        v10 = v5;
        v11 = v8;
        v12 = v7;
        v13 = v3;
LABEL_11:
        sub_1DAF3C230(v10, v11, v12, v13, v9);

        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if (enum_tag_for_layout_string_17CoreODIEssentials20ProfileSetObjectInfoVSg_0 != 1)
  {
    v5 = *(v3 + 2600);
    v6 = *(v3 + 2592);
    if ((*(v3 + 2608) & 1) == 0)
    {
      v16 = *(v3 + 2584);
      v17 = *(v3 + 2576);
      v9 = *v6;
      memcpy((v3 + 368), (v3 + 1472), 0x170uLL);
      v13 = (v3 + 368);
      v10 = v5;
      v11 = v17;
      v12 = v16;
      goto LABEL_11;
    }

LABEL_9:
    memmove((*(*v6 + 56) + 368 * v5), (v3 + 1472), 0x170uLL);
    goto LABEL_12;
  }

  if (*(v3 + 2608))
  {
    v14 = *(v3 + 2600);
    v15 = **(v3 + 2592);
    sub_1DAFFCF90(*(v15 + 48) + 16 * v14);
    sub_1DB0807BC(v14, v15);
  }

LABEL_12:
  memcpy((v3 + 1840), (v3 + 736), 0x170uLL);
  sub_1DAF40A84(v3 + 1472, v3 + 2208, &qword_1ECC0F330, &qword_1DB0AFA50);
  sub_1DAF40AEC(v3 + 1840, &qword_1ECC0F330, &qword_1DB0AFA50);

  free(v3);
}

uint64_t (*sub_1DAFFCED8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DAFFCF00;
}

uint64_t sub_1DAFFCF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentTiming(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DAFFD040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t sub_1DAFFD090()
{
  result = qword_1EE300AA8;
  if (!qword_1EE300AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0F350, &unk_1DB0AFA70);
    sub_1DAF8B9C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300AA8);
  }

  return result;
}

void sub_1DAFFD114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_1DAFFD184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F328, &qword_1DB0AFA48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFFD248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAFFD350(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1DAFFD3B8(uint64_t a1)
{
  sub_1DAFB7C64(319, &qword_1EE300A40, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1DAFB7C64(319, &qword_1EE301350, &type metadata for ODIClientGUIDSeeds);
    if (v2 <= 0x3F)
    {
      sub_1DAFB7C64(319, &qword_1EE300AB0, &type metadata for TSID);
      if (v3 <= 0x3F)
      {
        sub_1DAFB7C64(319, &qword_1EE3017E8, &type metadata for ODNErrorInfo);
        if (v4 <= 0x3F)
        {
          sub_1DAFB7C64(319, &qword_1EE300A20, MEMORY[0x1E69E6370]);
          if (v5 <= 0x3F)
          {
            sub_1DAFFD75C(319, &qword_1EE300F20, &qword_1ECC0E880, &qword_1DB0A6640);
            if (v6 <= 0x3F)
            {
              sub_1DAFB7C64(319, &unk_1EE3009F8, MEMORY[0x1E69E6530]);
              if (v7 <= 0x3F)
              {
                sub_1DAFFD75C(319, &qword_1EE300F10, &qword_1ECC0F018, &unk_1DB0AFAA0);
                if (v8 <= 0x3F)
                {
                  sub_1DAFB7CB0();
                  if (v9 <= 0x3F)
                  {
                    sub_1DAFFD708(319, qword_1EE300DA0, type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload);
                    if (v10 <= 0x3F)
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
  }
}

void sub_1DAFFD600(uint64_t a1)
{
  sub_1DAFB7C64(319, &qword_1EE300A40, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1DAFFD708(319, &qword_1EE3014C8, type metadata accessor for AssessmentTiming);
    if (v2 <= 0x3F)
    {
      sub_1DAFB7C64(319, &qword_1EE301488, &type metadata for AssessmentOutcome);
      if (v3 <= 0x3F)
      {
        sub_1DAFFD75C(319, &qword_1EE300A30, &qword_1ECC0F358, &qword_1DB0AFAC8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DAFFD708(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DB09DC64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAFFD75C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1DB09DC64();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_17CoreODIEssentials29ODNAssessmentsFeedbackManagerC0cdE5ErrorO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1DAFFD7CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DAFFD828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1DAFFD888(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1DAFFD91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1DAFFE4A8();
  result = sub_1DB09DC44();
  *a4 = result;
  return result;
}

id sub_1DAFFD984()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25A78 = "LocationHelperInit";
  unk_1ECC25A80 = 18;
  byte_1ECC25A88 = 2;
  qword_1ECC25A90 = qword_1EE30A158;
  byte_1ECC25A98 = 0;

  return v1;
}

id sub_1DAFFDA08()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25AA0 = "LocationHelperRequest";
  *algn_1ECC25AA8 = 21;
  byte_1ECC25AB0 = 2;
  qword_1ECC25AB8 = qword_1EE30A158;
  byte_1ECC25AC0 = 1;

  return v1;
}

id sub_1DAFFDA90()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25AC8 = "LocationHelpergetLocationOrWait";
  unk_1ECC25AD0 = 31;
  byte_1ECC25AD8 = 2;
  qword_1ECC25AE0 = qword_1EE30A158;
  byte_1ECC25AE8 = 0;

  return v1;
}

id sub_1DAFFDB14()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25AF0 = "LocationHelperUpdateWaitingContinuations";
  *algn_1ECC25AF8 = 40;
  byte_1ECC25B00 = 2;
  qword_1ECC25B08 = qword_1EE30A158;
  byte_1ECC25B10 = 0;

  return v1;
}

id sub_1DAFFDB98()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25B18 = "GeocoderFCMU";
  unk_1ECC25B20 = 12;
  byte_1ECC25B28 = 2;
  qword_1ECC25B30 = qword_1EE30A158;
  byte_1ECC25B38 = 0;

  return v1;
}

id sub_1DAFFDC1C()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25B40 = "GeocoderFCMUMemCache";
  *algn_1ECC25B48 = 20;
  byte_1ECC25B50 = 2;
  qword_1ECC25B58 = qword_1EE30A158;
  byte_1ECC25B60 = 0;

  return v1;
}

id sub_1DAFFDCA0()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25B68 = "GeocoderFCMUPersistentCache";
  unk_1ECC25B70 = 27;
  byte_1ECC25B78 = 2;
  qword_1ECC25B80 = qword_1EE30A158;
  byte_1ECC25B88 = 0;

  return v1;
}

id sub_1DAFFDD24()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25B90 = "GeocoderFCMUTaskGroupTotal";
  *algn_1ECC25B98 = 26;
  byte_1ECC25BA0 = 2;
  qword_1ECC25BA8 = qword_1EE30A158;
  byte_1ECC25BB0 = 0;

  return v1;
}

id sub_1DAFFDDA8()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25BB8 = "GeocoderFCMUGeocodeOp";
  unk_1ECC25BC0 = 21;
  byte_1ECC25BC8 = 2;
  qword_1ECC25BD0 = qword_1EE30A158;
  byte_1ECC25BD8 = 0;

  return v1;
}

id sub_1DAFFDE2C()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25BE0 = "GeocoderGetFromMemCache";
  *algn_1ECC25BE8 = 23;
  byte_1ECC25BF0 = 2;
  qword_1ECC25BF8 = qword_1EE30A158;
  byte_1ECC25C00 = 0;

  return v1;
}

id sub_1DAFFDEB0()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25C08 = "GeocoderGeocodeAddresses";
  unk_1ECC25C10 = 24;
  byte_1ECC25C18 = 2;
  qword_1ECC25C20 = qword_1EE30A158;
  byte_1ECC25C28 = 0;

  return v1;
}

id sub_1DAFFDF34()
{
  if (qword_1EE3012B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE309EF0;
  *&xmmword_1EE301428 = "odiSessionInternalInit";
  *(&xmmword_1EE301428 + 1) = 22;
  byte_1EE301438 = 2;
  qword_1EE301440 = qword_1EE309EF0;
  byte_1EE301448 = 1;

  return v1;
}

id static FrameworkSignposts.odiSessionInternalInit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE301420 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = byte_1EE301438;
  v3 = qword_1EE301440;
  v4 = byte_1EE301448;
  *a1 = xmmword_1EE301428;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;

  return v3;
}

id sub_1DAFFE048()
{
  if (qword_1EE3012B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE309EF0;
  *&xmmword_1ECC0F360 = "odiSessionInternalUpdate";
  *(&xmmword_1ECC0F360 + 1) = 24;
  byte_1ECC0F370 = 2;
  qword_1ECC0F378 = qword_1EE309EF0;
  byte_1ECC0F380 = 1;

  return v1;
}

id static FrameworkSignposts.odiSessionInternalUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC0E068 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = byte_1ECC0F370;
  v3 = qword_1ECC0F378;
  v4 = byte_1ECC0F380;
  *a1 = xmmword_1ECC0F360;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;

  return v3;
}

id sub_1DAFFE15C()
{
  if (qword_1EE3012B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE309EF0;
  *&xmmword_1EE3013F8 = "odiSessionInternalGetAssessment";
  *(&xmmword_1EE3013F8 + 1) = 31;
  byte_1EE301408 = 2;
  qword_1EE301410 = qword_1EE309EF0;
  byte_1EE301418 = 1;

  return v1;
}

id static FrameworkSignposts.odiSessionInternalGetAssessment.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE3013F0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = byte_1EE301408;
  v3 = qword_1EE301410;
  v4 = byte_1EE301418;
  *a1 = xmmword_1EE3013F8;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;

  return v3;
}

id sub_1DAFFE270()
{
  if (qword_1EE3012B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE309EF0;
  *&xmmword_1EE301390 = "odiSessionInternalGetDeviceData";
  *(&xmmword_1EE301390 + 1) = 31;
  byte_1EE3013A0 = 2;
  qword_1EE3013A8 = qword_1EE309EF0;
  byte_1EE3013B0 = 1;

  return v1;
}

id static FrameworkSignposts.odiSessionInternalGetArmandDeviceData.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE301388 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = byte_1EE3013A0;
  v3 = qword_1EE3013A8;
  v4 = byte_1EE3013B0;
  *a1 = xmmword_1EE301390;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;

  return v3;
}

id sub_1DAFFE384()
{
  if (qword_1EE3012B0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE309EF0;
  *&xmmword_1EE3013C8 = "odiSessionInternalGetBindingsData";
  *(&xmmword_1EE3013C8 + 1) = 33;
  byte_1EE3013D8 = 2;
  qword_1EE3013E0 = qword_1EE309EF0;
  byte_1EE3013E8 = 1;

  return v1;
}

id static FrameworkSignposts.odiSessionInternalGetBindingsData.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE3013C0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = byte_1EE3013D8;
  v3 = qword_1EE3013E0;
  v4 = byte_1EE3013E8;
  *a1 = xmmword_1EE3013C8;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;

  return v3;
}

unint64_t sub_1DAFFE4A8()
{
  result = qword_1EE3018A0;
  if (!qword_1EE3018A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE3018A0);
  }

  return result;
}

id sub_1DAFFE4F4()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25C30 = "odiSessionInternalDDBAA";
  *algn_1ECC25C38 = 23;
  byte_1ECC25C40 = 2;
  qword_1ECC25C48 = qword_1EE30A158;
  byte_1ECC25C50 = 0;

  return v1;
}

id sub_1DAFFE578()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25C58 = "odiSessionInternalDDPac";
  unk_1ECC25C60 = 23;
  byte_1ECC25C68 = 2;
  qword_1ECC25C70 = qword_1EE30A158;
  byte_1ECC25C78 = 0;

  return v1;
}

id sub_1DAFFE5FC()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1EE309F20 = "odiSessionInternalDDOdiDeviceInfo";
  *algn_1EE309F28 = 33;
  byte_1EE309F30 = 2;
  qword_1EE309F38 = qword_1EE30A158;
  byte_1EE309F40 = 0;

  return v1;
}

id sub_1DAFFE680()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25C80 = "odiSessionInternalDDStatus";
  *algn_1ECC25C88 = 26;
  byte_1ECC25C90 = 2;
  qword_1ECC25C98 = qword_1EE30A158;
  byte_1ECC25CA0 = 0;

  return v1;
}

id sub_1DAFFE704()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1EE309F70 = "odiSessionInternalDDDeviceInfo";
  *algn_1EE309F78 = 30;
  byte_1EE309F80 = 2;
  qword_1EE309F88 = qword_1EE30A158;
  byte_1EE309F90 = 0;

  return v1;
}

id sub_1DAFFE788()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25CA8 = "odiSessionInternalDDLocation";
  unk_1ECC25CB0 = 28;
  byte_1ECC25CB8 = 2;
  qword_1ECC25CC0 = qword_1EE30A158;
  byte_1ECC25CC8 = 0;

  return v1;
}

id sub_1DAFFE80C()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25CD0 = "odiSessionInternalDDsid";
  *algn_1ECC25CD8 = 23;
  byte_1ECC25CE0 = 2;
  qword_1ECC25CE8 = qword_1EE30A158;
  byte_1ECC25CF0 = 0;

  return v1;
}

id sub_1DAFFE890()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25CF8 = "odiSessionInternalBindings";
  unk_1ECC25D00 = 26;
  byte_1ECC25D08 = 2;
  qword_1ECC25D10 = qword_1EE30A158;
  byte_1ECC25D18 = 0;

  return v1;
}

id sub_1DAFFE914()
{
  if (qword_1EE3021A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30A158;
  qword_1ECC25D20 = "odiSessionInternalParsedBindings";
  *algn_1ECC25D28 = 32;
  byte_1ECC25D30 = 2;
  qword_1ECC25D38 = qword_1EE30A158;
  byte_1ECC25D40 = 0;

  return v1;
}