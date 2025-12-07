uint64_t sub_1DD947CB0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD947DA8;

  return v6(a1);
}

uint64_t sub_1DD947DA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DD947EA0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD94BC54;

  return v6(a1);
}

uint64_t sub_1DD947F98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  *a2 = v3;
  a2[1] = v2;

  return sub_1DD940DF4(v4, v5, v6);
}

uint64_t sub_1DD947FF8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v64 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v49 = v9;
  v50 = v5;
  while (1)
  {
    v15 = v8;
    v16 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = (*(a1 + 56) + 24 * v18);
    v23 = *v21;
    v22 = v21[1];
    v24 = v21[2];
    v55[0] = *v19;
    v55[1] = v20;
    v56 = v23;
    v57 = v22;
    v58 = v24;

    sub_1DD940DF4(v23, v22, v24);
    a2(&v59, v55);
    v25 = v56;
    v26 = v57;
    v27 = v58;

    sub_1DD94A02C(v25, v26, v27);
    v28 = v60;
    if (!v60)
    {
LABEL_22:
      sub_1DD912130(a1);
    }

    v29 = v59;
    v30 = v61;
    v31 = v62;
    v53 = v63;
    v32 = *v64;
    v34 = sub_1DD96AC38(v59, v60);
    v35 = v32[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_24;
    }

    v38 = v33;
    if (v32[3] >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_1DD9CA574();
      }
    }

    else
    {
      sub_1DD9C9248(v37, a4 & 1);
      v39 = sub_1DD96AC38(v29, v28);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }

      v34 = v39;
    }

    v41 = (v15 - 1) & v15;
    v42 = *v64;
    if (v38)
    {

      v11 = (v42[7] + 24 * v34);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      *v11 = v30;
      v11[1] = v31;
      v11[2] = v53;
      sub_1DD94A02C(v12, v13, v14);
    }

    else
    {
      v42[(v34 >> 6) + 8] |= 1 << v34;
      v43 = (v42[6] + 16 * v34);
      *v43 = v29;
      v43[1] = v28;
      v44 = (v42[7] + 24 * v34);
      *v44 = v30;
      v44[1] = v31;
      v44[2] = v53;
      v45 = v42[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_25;
      }

      v42[2] = v47;
    }

    a4 = 1;
    v10 = v16;
    v9 = v49;
    v5 = v50;
    v8 = v41;
  }

  v17 = v10;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1DDA15500();
  __break(1u);
  return result;
}

uint64_t sub_1DD9482DC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 216) = a3;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD948300, 0, 0);
}

uint64_t sub_1DD948300()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69B37C0]);
  v2 = sub_1DDA14B00();
  v3 = [v1 initRSABlindSignatureChallengeWithIssuerName:v2 redemptionNonce:0 originNames:0];
  *(v0 + 152) = v3;

  v4 = [v3 challengeData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DDA13590();
    v8 = v7;

    *(v0 + 160) = v6;
    *(v0 + 168) = v8;
    v9 = objc_allocWithZone(MEMORY[0x1E69B37C8]);
    sub_1DD909CD4(v6, v8);
    v10 = sub_1DDA13570();
    v11 = [v9 initForKnownIssuerWithChallenge_];
    *(v0 + 176) = v11;

    sub_1DD909D28(v6, v8);
    [v11 setSystemClient_];
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_1DD9485A4;
    v13 = *(v0 + 216);

    return sub_1DD9446E4(v11, v13);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DDA14810();
    __swift_project_value_buffer(v15, qword_1ECDA20F8);
    v16 = sub_1DDA147F0();
    v17 = sub_1DDA14EE0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DD8F8000, v16, v17, "Privacy pass challenge data was empty. This is unexpected.", v18, 2u);
      MEMORY[0x1E12B8CE0](v18, -1, -1);
    }

    sub_1DD94B2A8();
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 48) = 0;
    swift_willThrowTypedImpl();

    v19 = *(v0 + 8);

    return v19(0, 0, 0);
  }
}

uint64_t sub_1DD9485A4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v5 = sub_1DD94BC6C;
  }

  else
  {
    v5 = sub_1DD94BC4C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD9486BC(_BYTE *a1, char a2)
{
  *(v2 + 64) = a2;
  *(v2 + 65) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD9486E4, 0, 0);
}

void sub_1DD9486E4()
{
  if (qword_1ECD82788 != -1)
  {
    swift_once();
  }

  v1 = off_1ECD83110;
  if (!*(off_1ECD83110 + 2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = sub_1DD96AE30(*(v0 + 65));
  if ((v3 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v4 = v1[7] + 48 * v2;
  v5 = 24;
  if (*(v0 + 64))
  {
    v5 = 40;
  }

  v6 = *(v4 + v5);
  if (*(v0 + 64))
  {
    v7 = 32;
  }

  else
  {
    v7 = 16;
  }

  *(v0 + 16) = v6;
  v8 = *(v4 + v7);

  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_1DD94881C;
  v10 = *(v0 + 65);

  sub_1DD9482DC(v8, v6, v10);
}

uint64_t sub_1DD94881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = v3;

  if (v3)
  {
    v6 = sub_1DD948AD8;
  }

  else
  {
    v6 = sub_1DD948954;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD948954()
{
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14EC0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Anonymous user is not rate limited.", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  sub_1DD909CD4(v7, v5);
  v8 = v6;
  v9 = sub_1DDA13570();
  [v8 saveTokenToCache_];
  sub_1DD909D28(v7, v5);

  sub_1DD909D28(v7, v5);
  v10 = v0[1];
  v11 = v0[7] != 0;

  return v10(v11);
}

uint64_t sub_1DD948AD8()
{
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_1DDA14810();
  __swift_project_value_buffer(v4, qword_1ECDA20E0);
  sub_1DD94B2FC(v3, v2, v1);
  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14EC0();
  sub_1DD94B340(v3, v2, v1);
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_1DD94B2A8();
    swift_allocError();
    *v13 = v10;
    v13[1] = v9;
    v13[2] = v8;
    sub_1DD94B2FC(v10, v9, v8);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1DD8F8000, v5, v6, "Failed to fetch token from network proxy with error %@, assuming anonymous user is rate limited.", v11, 0xCu);
    sub_1DD90D378(v12, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
    sub_1DD94B340(v10, v9, v8);
  }

  else
  {

    sub_1DD94B340(v10, v9, v8);
  }

  v15 = v0[1];
  v16 = v0[7] != 0;

  return v15(v16);
}

uint64_t sub_1DD948CE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 264) = a2;
  *(v4 + 272) = a4;
  *(v4 + 352) = a3;
  *(v4 + 256) = a1;
  v5 = sub_1DDA14850();
  *(v4 + 280) = v5;
  *(v4 + 288) = *(v5 - 8);
  *(v4 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD948DB0, 0, 0);
}

uint64_t sub_1DD948DB0()
{
  v59 = v0;
  v1 = 0xD00000000000001ELL;
  v2 = "Token-Request-File-Upload";
  if (*(v0 + 352) != 2)
  {
    v1 = 0xD000000000000019;
    v2 = "Token-Request-Image-Generator";
  }

  v3 = "init(url:)";
  v4 = 0xD00000000000001ELL;
  if (*(v0 + 352))
  {
    v4 = 0xD00000000000001DLL;
    v3 = "v24@?0@NSData8@NSError16";
  }

  if (*(v0 + 352) <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v1;
  }

  if (*(v0 + 352) <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  if (!*(*(v0 + 272) + 16))
  {

    goto LABEL_22;
  }

  v7 = sub_1DD96AC38(v5, v6 | 0x8000000000000000);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_22:
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v25 = sub_1DDA14810();
    __swift_project_value_buffer(v25, qword_1ECDA20E0);
    v22 = sub_1DDA147F0();
    v26 = sub_1DDA14EF0();
    if (os_log_type_enabled(v22, v26))
    {
      v27 = *(v0 + 352);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58 = v29;
      *v28 = 136315138;
      v30 = 0xEF726F746172656ELL;
      v31 = 0x80000001DDA26910;
      v32 = 0x6C70755F656C6966;
      if (v27 == 2)
      {
        v32 = 0xD000000000000010;
      }

      else
      {
        v31 = 0xEB0000000064616FLL;
      }

      if (v27)
      {
        v33 = 0x65675F6567616D69;
      }

      else
      {
        v33 = 0xD000000000000010;
      }

      if (!v27)
      {
        v30 = 0x80000001DDA268E0;
      }

      if (v27 <= 1)
      {
        v34 = v33;
      }

      else
      {
        v34 = v32;
      }

      if (v27 <= 1)
      {
        v35 = v30;
      }

      else
      {
        v35 = v31;
      }

      v36 = sub_1DD93FA54(v34, v35, &v58);

      *(v28 + 4) = v36;
      _os_log_impl(&dword_1DD8F8000, v22, v26, "Unable to obtain original issuer for: %s. Redemption will fail. This should never happen. Please file a radar. Future inference will most likely fail.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12B8CE0](v29, -1, -1);
      MEMORY[0x1E12B8CE0](v28, -1, -1);
    }

    goto LABEL_60;
  }

  v10 = *(*(*(v0 + 272) + 56) + 8 * v7);
  v12 = *(v0 + 256);
  v11 = *(v0 + 264);
  *(v0 + 304) = v10;
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    v37 = qword_1ECD827A8;
    v15 = v10;
    if (v37 != -1)
    {
      swift_once();
    }

    v38 = sub_1DDA14810();
    __swift_project_value_buffer(v38, qword_1ECDA20E0);
    v22 = sub_1DDA147F0();
    v39 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v22, v39))
    {
      goto LABEL_59;
    }

    v40 = *(v0 + 352);
    v24 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v58 = v41;
    *v24 = 136315138;
    v42 = 0xEF726F746172656ELL;
    v43 = 0x80000001DDA26910;
    v44 = 0x6C70755F656C6966;
    if (v40 == 2)
    {
      v44 = 0xD000000000000010;
    }

    else
    {
      v43 = 0xEB0000000064616FLL;
    }

    if (v40)
    {
      v45 = 0x65675F6567616D69;
    }

    else
    {
      v45 = 0xD000000000000010;
    }

    if (!v40)
    {
      v42 = 0x80000001DDA268E0;
    }

    if (v40 <= 1)
    {
      v46 = v45;
    }

    else
    {
      v46 = v44;
    }

    if (v40 <= 1)
    {
      v47 = v42;
    }

    else
    {
      v47 = v43;
    }

    v48 = sub_1DD93FA54(v46, v47, &v58);

    *(v24 + 4) = v48;
    _os_log_impl(&dword_1DD8F8000, v22, v39, "Origin unexpectedly returned empty refund for key: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E12B8CE0](v41, -1, -1);
    goto LABEL_58;
  }

  *(v0 + 144) = v12;
  *(v0 + 152) = v11;
  *(v0 + 160) = 45;
  *(v0 + 168) = 0xE100000000000000;
  *(v0 + 176) = 43;
  *(v0 + 184) = 0xE100000000000000;
  v14 = sub_1DD9313D4();
  v15 = v10;
  v16 = MEMORY[0x1E69E6158];
  *(v0 + 192) = sub_1DDA14F80();
  *(v0 + 200) = v17;
  *(v0 + 208) = 95;
  *(v0 + 216) = 0xE100000000000000;
  *(v0 + 224) = 47;
  *(v0 + 232) = 0xE100000000000000;
  v57 = v16;
  sub_1DDA14F80();

  v18 = sub_1DDA13520();
  v20 = v19;

  *(v0 + 312) = v18;
  *(v0 + 320) = v20;
  if (v20 >> 60 == 15)
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v21 = sub_1DDA14810();
    __swift_project_value_buffer(v21, qword_1ECDA20E0);
    v22 = sub_1DDA147F0();
    v23 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_59;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DD8F8000, v22, v23, "Unable to get base64 data from OAI response. Refund tickets from OAI seem malformed. Future inference likely to fail.", v24, 2u);
LABEL_58:
    MEMORY[0x1E12B8CE0](v24, -1, -1);
LABEL_59:

LABEL_60:

    v49 = *(v0 + 8);

    return v49();
  }

  v52 = *(v0 + 288);
  v51 = *(v0 + 296);
  v53 = *(v0 + 280);
  v54 = sub_1DDA13570();
  *(v0 + 328) = v54;
  sub_1DD949FC8();
  (*(v52 + 104))(v51, *MEMORY[0x1E69E7F88], v53);
  v55 = sub_1DDA14F10();
  *(v0 + 336) = v55;
  (*(v52 + 8))(v51, v53);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_1DD949514;
  v56 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83138, &qword_1DDA190D0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DD9445FC;
  *(v0 + 104) = &block_descriptor;
  *(v0 + 112) = v56;
  [v15 handleTokenResponse:v54 withQueue:v55 completionHandler:{v0 + 80, v57, v14, v14, v14}];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1DD949514()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_1DD9498C4;
  }

  else
  {
    v2 = sub_1DD949624;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD949624()
{
  v26 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);

  v5 = sub_1DDA13570();
  [v2 saveTokenToCache_];

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1DDA14810();
  __swift_project_value_buffer(v6, qword_1ECDA20E0);
  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14EC0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 352);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    v12 = 0xEF726F746172656ELL;
    v13 = 0x65675F6567616D69;
    v14 = 0xD000000000000010;
    v15 = 0x80000001DDA26910;
    if (v9 != 2)
    {
      v14 = 0x6C70755F656C6966;
      v15 = 0xEB0000000064616FLL;
    }

    if (!v9)
    {
      v13 = 0xD000000000000010;
      v12 = 0x80000001DDA268E0;
    }

    if (v9 <= 1)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    if (v9 <= 1)
    {
      v17 = v12;
    }

    else
    {
      v17 = v15;
    }

    v18 = *(v0 + 312);
    v23 = *(v0 + 320);
    v24 = *(v0 + 304);
    v19 = sub_1DD93FA54(v16, v17, &v25);

    *(v10 + 4) = v19;
    _os_log_impl(&dword_1DD8F8000, v7, v8, "Successfully saved refund to cache for key: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
    MEMORY[0x1E12B8CE0](v10, -1, -1);
    sub_1DD90D440(v18, v23);
    sub_1DD909D28(v4, v3);
  }

  else
  {
    v20 = *(v0 + 304);
    sub_1DD90D440(*(v0 + 312), *(v0 + 320));
    sub_1DD909D28(v4, v3);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1DD9498C4(uint64_t a1)
{
  v30 = v1;
  v2 = *(v1 + 336);
  v3 = *(v1 + 320);
  v4 = *(v1 + 328);
  v5 = *(v1 + 312);
  swift_willThrow();
  sub_1DD90D440(v5, v3);

  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v6 = *(v1 + 344);
  v7 = sub_1DDA14810();
  __swift_project_value_buffer(v7, qword_1ECDA20E0);
  v8 = v6;
  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14EE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v1 + 352);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v12 = 136315394;
    v15 = 0xEF726F746172656ELL;
    v16 = 0x65675F6567616D69;
    v17 = 0xD000000000000010;
    v18 = 0x80000001DDA26910;
    if (v11 != 2)
    {
      v17 = 0x6C70755F656C6966;
      v18 = 0xEB0000000064616FLL;
    }

    if (!v11)
    {
      v16 = 0xD000000000000010;
      v15 = 0x80000001DDA268E0;
    }

    if (v11 <= 1)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    if (v11 <= 1)
    {
      v20 = v15;
    }

    else
    {
      v20 = v18;
    }

    v21 = *(v1 + 344);
    v22 = *(v1 + 304);
    v23 = sub_1DD93FA54(v19, v20, &v29);

    *(v12 + 4) = v23;
    *(v12 + 12) = 2112;
    v24 = v21;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v25;
    *v13 = v25;
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Unable to save refund to cache for key: %s with error: %@", v12, 0x16u);
    sub_1DD90D378(v13, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
  }

  else
  {
    v26 = *(v1 + 344);
  }

  v27 = *(v1 + 8);

  return v27();
}

uint64_t sub_1DD949B9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD949BBC, 0, 0);
}

uint64_t sub_1DD949BBC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v0[2] = v2;
    v0[3] = v1;
    v0[4] = 45;
    v0[5] = 0xE100000000000000;
    v0[6] = 43;
    v0[7] = 0xE100000000000000;
    v4 = sub_1DD9313D4();
    v5 = MEMORY[0x1E69E6158];
    v0[2] = sub_1DDA14F80();
    v0[3] = v6;
    v0[4] = 95;
    v0[5] = 0xE100000000000000;
    v0[6] = 47;
    v0[7] = 0xE100000000000000;
    v27 = v4;
    v28 = v4;
    v25 = v5;
    v26 = v4;
    sub_1DDA14F80();

    v7 = sub_1DDA13520();
    v9 = v8;

    if (v9 >> 60 == 15)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v10 = sub_1DDA14810();
      __swift_project_value_buffer(v10, qword_1ECDA20E0);
      v11 = sub_1DDA147F0();
      v12 = sub_1DDA14EE0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        v14 = "Unable to get base64 data from OAI response. Reputation signal from OAI seems malformed. Future inference likely to fail.";
LABEL_13:
        _os_log_impl(&dword_1DD8F8000, v11, v12, v14, v13, 2u);
        MEMORY[0x1E12B8CE0](v13, -1, -1);
      }
    }

    else
    {
      v16 = objc_opt_self();
      v17 = sub_1DDA13570();
      v18 = sub_1DDA14B00();
      v19 = sub_1DDA14B00();
      [v16 saveAuxiliaryAuthenticationDataToCache:v17 type:1 forLabel:v18 cacheKey:{v19, v25, v26, v27, v28}];

      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v20 = sub_1DDA14810();
      __swift_project_value_buffer(v20, qword_1ECDA20E0);
      v11 = sub_1DDA147F0();
      v21 = sub_1DDA14EC0();
      if (os_log_type_enabled(v11, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1DD8F8000, v11, v21, "Successfully stored the reputation signal.", v22, 2u);
        MEMORY[0x1E12B8CE0](v22, -1, -1);
      }

      sub_1DD90D440(v7, v9);
    }
  }

  else
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1DDA14810();
    __swift_project_value_buffer(v15, qword_1ECDA20E0);
    v11 = sub_1DDA147F0();
    v12 = sub_1DDA14EE0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Origin returned empty reputation signal";
      goto LABEL_13;
    }
  }

  v23 = v0[1];

  return v23();
}

unint64_t sub_1DD949FC8()
{
  result = qword_1ECD83130;
  if (!qword_1ECD83130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECD83130);
  }

  return result;
}

uint64_t sub_1DD94A034(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DD92BD10;

  return sub_1DD9468F8(a1, a2, v6);
}

id sub_1DD94A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  if (a1 < 0)
  {
  }

  else
  {

    sub_1DD909CD4(a4, a5);

    return a6;
  }
}

void sub_1DD94A16C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  if ((result & 0xFFFFFFFFFFFF3CFCLL) != 0x3FFFFF3CFCLL)
  {
    sub_1DD94A18C(result, a2, a3, a4, a5, a6);
  }
}

void sub_1DD94A18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{

  if (a1 < 0)
  {
  }

  else
  {
    sub_1DD909D28(a4, a5);
  }
}

uint64_t sub_1DD94A21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  if ((a1 & 0xFFFFFFFFFFFF3CFCLL) != 0x3FFFFF3CFCLL)
  {
    return sub_1DD94A0E4(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1DD94A23C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD94704C(a1, v4, v5, v6);
}

uint64_t sub_1DD94A2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD94A360(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD92BD10;

  return sub_1DD947CB0(a1, v4);
}

uint64_t sub_1DD94A418(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 216) = a3;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD94A43C, 0, 0);
}

uint64_t sub_1DD94A43C()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69B37C0]);
  v2 = sub_1DDA14B00();
  v3 = [v1 initRSABlindSignatureChallengeWithIssuerName:v2 redemptionNonce:0 originNames:0];
  *(v0 + 152) = v3;

  v4 = [v3 challengeData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DDA13590();
    v8 = v7;

    *(v0 + 160) = v6;
    *(v0 + 168) = v8;
    v9 = objc_allocWithZone(MEMORY[0x1E69B37C8]);
    sub_1DD909CD4(v6, v8);
    v10 = sub_1DDA13570();
    v11 = [v9 initForKnownIssuerWithChallenge_];
    *(v0 + 176) = v11;

    sub_1DD909D28(v6, v8);
    [v11 setSystemClient_];
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_1DD94A6E0;
    v13 = *(v0 + 216);

    return sub_1DD946554(v11, v13);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DDA14810();
    __swift_project_value_buffer(v15, qword_1ECDA20F8);
    v16 = sub_1DDA147F0();
    v17 = sub_1DDA14EE0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DD8F8000, v16, v17, "Privacy pass challenge data was empty. This is unexpected.", v18, 2u);
      MEMORY[0x1E12B8CE0](v18, -1, -1);
    }

    sub_1DD94B2A8();
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 48) = 0;
    swift_willThrowTypedImpl();

    v19 = *(v0 + 8);

    return v19(0, 0, 0);
  }
}

uint64_t sub_1DD94A6E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v5 = sub_1DD94ACFC;
  }

  else
  {
    v5 = sub_1DD94A7F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD94A7F8()
{
  v1 = v0[25];
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2 || *(v0[24] + 16) == *(v0[24] + 24))
    {
LABEL_13:
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      v13 = sub_1DDA14810();
      __swift_project_value_buffer(v13, qword_1ECDA20F8);
      v14 = sub_1DDA147F0();
      v15 = sub_1DDA14EE0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1DD8F8000, v14, v15, "Attester returned empty data value, treating it as if attester returned nothing.", v16, 2u);
        MEMORY[0x1E12B8CE0](v16, -1, -1);
      }

      v18 = v0[24];
      v17 = v0[25];

      sub_1DD94B2A8();
      v19 = swift_allocError();
      v20[1] = 0;
      v20[2] = 0;
      *v20 = 1;
      swift_willThrow();
      sub_1DD909D28(v18, v17);
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v13, qword_1ECDA20F8);
      v21 = v19;
      v22 = sub_1DDA147F0();
      v23 = sub_1DDA14EE0();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        v26 = v19;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_1DD8F8000, v22, v23, "Failed to fetch privacy pass token! %@", v24, 0xCu);
        sub_1DD90D378(v25, &unk_1ECD83100, &unk_1DDA185C0);
        MEMORY[0x1E12B8CE0](v25, -1, -1);
        MEMORY[0x1E12B8CE0](v24, -1, -1);
      }

      v28 = 0xD00000000000001FLL;

      v29 = sub_1DDA13400();
      v30 = [v29 userInfo];
      v31 = sub_1DDA14AA0();

      if (*(v31 + 16) && (v32 = sub_1DD96AC38(0xD000000000000019, 0x80000001DDA27980), (v33 & 1) != 0))
      {
        sub_1DD9410C8(*(v31 + 56) + 32 * v32, (v0 + 2));

        if (swift_dynamicCast())
        {
          v34 = v0[21];
          v35 = v0[22];
          v37 = v0[19];
          v36 = v0[20];
          v28 = v0[15];
          v38 = v0[16];
          v0[12] = v19;
          v0[13] = v28;
          v0[14] = v38;
          v39 = v19;
LABEL_27:
          swift_willThrowTypedImpl();

          sub_1DD909D28(v36, v34);
          v9 = v0[1];
          v10 = v19;
          v11 = v28;
          v12 = v38;
          goto LABEL_28;
        }
      }

      else
      {
      }

      v34 = v0[21];
      v35 = v0[22];
      v37 = v0[19];
      v36 = v0[20];
      v38 = 0x80000001DDA279A0;
      v0[9] = v19;
      v0[10] = 0xD00000000000001FLL;
      v0[11] = 0x80000001DDA279A0;
      v40 = v19;
      goto LABEL_27;
    }
  }

  else if (v2)
  {
    if (v0[24] == v0[24] >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((v1 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DDA14810();
  __swift_project_value_buffer(v3, qword_1ECDA20F8);
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EC0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Successfully retrieved privacy pass token", v6, 2u);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v7 = v0[22];
  v8 = v0[19];
  sub_1DD909D28(v0[20], v0[21]);

  v9 = v0[1];
  v10 = v0[24];
  v11 = v0[25];
  v12 = v7;
LABEL_28:

  return v9(v10, v11, v12);
}

uint64_t sub_1DD94ACFC()
{
  v1 = v0[26];
  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1ECDA20F8);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Failed to fetch privacy pass token! %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v10 = 0xD00000000000001FLL;

  v11 = sub_1DDA13400();
  v12 = [v11 userInfo];
  v13 = sub_1DDA14AA0();

  if (*(v13 + 16) && (v14 = sub_1DD96AC38(0xD000000000000019, 0x80000001DDA27980), (v15 & 1) != 0))
  {
    sub_1DD9410C8(*(v13 + 56) + 32 * v14, (v0 + 2));

    if (swift_dynamicCast())
    {
      v16 = v0[21];
      v17 = v0[22];
      v19 = v0[19];
      v18 = v0[20];
      v10 = v0[15];
      v20 = v0[16];
      v0[12] = v1;
      v0[13] = v10;
      v0[14] = v20;
      v21 = v1;
      sub_1DD94B2A8();
      goto LABEL_11;
    }
  }

  else
  {
  }

  v16 = v0[21];
  v17 = v0[22];
  v19 = v0[19];
  v18 = v0[20];
  v20 = 0x80000001DDA279A0;
  v0[9] = v1;
  v0[10] = 0xD00000000000001FLL;
  v0[11] = 0x80000001DDA279A0;
  v22 = v1;
  sub_1DD94B2A8();
LABEL_11:
  swift_willThrowTypedImpl();

  sub_1DD909D28(v18, v16);
  v23 = v0[1];

  return v23(v1, v10, v20);
}

uint64_t sub_1DD94AFE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD94B008, 0, 0);
}

uint64_t sub_1DD94B008()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69B37C0]);
  v2 = sub_1DDA14B00();
  v3 = [v1 initRSABlindSignatureChallengeWithIssuerName:v2 redemptionNonce:0 originNames:0];
  v0[19] = v3;

  v4 = [v3 challengeData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DDA13590();
    v8 = v7;

    v0[20] = v6;
    v0[21] = v8;
    v9 = objc_allocWithZone(MEMORY[0x1E69B37C8]);
    sub_1DD909CD4(v6, v8);
    v10 = sub_1DDA13570();
    v11 = [v9 initForKnownIssuerWithChallenge_];
    v0[22] = v11;

    sub_1DD909D28(v6, v8);
    [v11 setSystemClient_];
    v12 = swift_task_alloc();
    v0[23] = v12;
    *v12 = v0;
    v12[1] = sub_1DD9485A4;

    return sub_1DD947960(v11);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v14 = sub_1DDA14810();
    __swift_project_value_buffer(v14, qword_1ECDA20F8);
    v15 = sub_1DDA147F0();
    v16 = sub_1DDA14EE0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DD8F8000, v15, v16, "Privacy pass challenge data was empty. This is unexpected.", v17, 2u);
      MEMORY[0x1E12B8CE0](v17, -1, -1);
    }

    sub_1DD94B2A8();
    v0[7] = 0;
    v0[8] = 0;
    v0[6] = 0;
    swift_willThrowTypedImpl();

    v18 = v0[1];

    return v18(0, 0, 0);
  }
}

unint64_t sub_1DD94B2A8()
{
  result = qword_1ECD83160;
  if (!qword_1ECD83160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83160);
  }

  return result;
}

void *sub_1DD94B2FC(void *result, uint64_t a2, uint64_t a3)
{
  if (result >= 2)
  {
    v4 = result;
  }

  return result;
}

void *sub_1DD94B340(void *result, uint64_t a2, uint64_t a3)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1DD94B384(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DD9165BC;

  return sub_1DD945914(a1, v4, v5, v7, v6);
}

uint64_t sub_1DD94B448(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD9165BC;

  return sub_1DD947CB0(a1, v4);
}

void sub_1DD94B500(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  if ((result & 0xFFFFFFFFFFFF3CFCLL) != 0x3FFFFF3CF8)
  {
    sub_1DD94A16C(result, a2, a3, a4, a5, a6);
  }
}

uint64_t get_enum_tag_for_layout_string_5Anvil14FraudTicketingV0bC5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD94B55C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DD94B5B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1DD94B610(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD94B65C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 4) & 0x3C0 | (*a1 >> 2) | (*a1 >> 6) & 0xFFFFFC00;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1DD94B6C0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      *a1 = (16 * -a2) & 0x3C00 | (4 * (-a2 & 0x3FLL)) & 0xFFFFFFC00000FFFFLL | ((-a2 >> 10) << 16);
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD94B740(uint64_t *a1, int a2)
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

uint64_t sub_1DD94B788(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD94B7D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 4) & 0x3C0 | (*a1 >> 2) | (*a1 >> 6) & 0xFFFFFC00;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1DD94B83C(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (16 * -a2) & 0x3C00 | (4 * (-a2 & 0x3FLL)) & 0xFFFFFFC00000FFFFLL | ((-a2 >> 10) << 16);
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

unint64_t sub_1DD94B8A8()
{
  result = qword_1ECD83178;
  if (!qword_1ECD83178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83178);
  }

  return result;
}

uint64_t sub_1DD94B90C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DD94B954(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD94B9C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DD94BA08(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for FraudTicketing.TicketingSubType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FraudTicketing.TicketingSubType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DD94BBB0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_1DD94BBDC(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

void sub_1DD94BC74(int a1@<W0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1DDA136E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() ephemeralSessionConfiguration];
  [v7 set:a1 & 1 usesNWLoader:?];
  HIDWORD(v19) = a1;
  if (a1)
  {
    v8 = sub_1DDA14B00();
    [v7 set:v8 sourceApplicationBundleIdentifier:?];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83208, &qword_1DDA19778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA18F80;
  *&v21 = 0x747065636341;
  *(&v21 + 1) = 0xE600000000000000;
  v10 = MEMORY[0x1E69E6158];
  sub_1DDA15020();
  *(inited + 96) = v10;
  *(inited + 72) = 0xD000000000000011;
  *(inited + 80) = 0x80000001DDA27BC0;
  strcpy(&v21, "Cache-Control");
  HIWORD(v21) = -4864;
  sub_1DDA15020();
  *(inited + 168) = v10;
  *(inited + 144) = 0x65686361632D6F6ELL;
  *(inited + 152) = 0xE800000000000000;
  *&v21 = 0x4C2D747065636341;
  *(&v21 + 1) = 0xEF65676175676E61;
  sub_1DDA15020();
  sub_1DDA136D0();
  v11 = sub_1DDA136C0();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  *(inited + 240) = v10;
  *(inited + 216) = v11;
  *(inited + 224) = v13;
  strcpy(&v21, "User-Agent");
  BYTE11(v21) = 0;
  HIDWORD(v21) = -369098752;
  sub_1DDA15020();
  v14 = sub_1DD9C6CFC(0, 0);
  *(inited + 312) = v10;
  *(inited + 288) = v14;
  *(inited + 296) = v15;
  sub_1DD940164(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830A8, &qword_1DDA19780);
  swift_arrayDestroy();
  v16 = sub_1DDA14A90();

  [v7 setHTTPAdditionalHeaders_];

  v17 = [objc_opt_self() sessionWithConfiguration_];
  v22 = sub_1DD9565A8(0, &unk_1EE16F390, 0x1E696AF78);
  v23 = &off_1F58F0718;
  *&v21 = v17;
  v18 = v17;
  sub_1DD95098C(&v21, BYTE4(v19) & 1, v20);
}

uint64_t sub_1DD94C028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = sub_1DDA13140();
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD94C0EC, 0, 0);
}

uint64_t sub_1DD94C0EC()
{
  v7 = v0[31];
  v0[36] = sub_1DD94C98C(v0[35]);
  v6 = (*(v7 + 8) + **(v7 + 8));
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_1DD94C214;
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[30];

  return v6(v2, v4, v3);
}

uint64_t sub_1DD94C214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = a3;
  v5[41] = v3;

  if (v3)
  {

    v6 = sub_1DD94C90C;
  }

  else
  {
    v6 = sub_1DD94C334;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD94C334()
{
  v30 = v0;
  if (qword_1ECD827C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1ECDA2128);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14F00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136446210;
    v9 = [v6 allHeaderFields];
    v10 = sub_1DDA14AA0();

    strcpy((v0 + 200), "x-request-id");
    *(v0 + 213) = 0;
    *(v0 + 214) = -5120;
    sub_1DDA15020();
    if (*(v10 + 16) && (v11 = sub_1DD96ADEC(v0 + 112), (v12 & 1) != 0))
    {
      sub_1DD9410C8(*(v10 + 56) + 32 * v11, v0 + 152);
      sub_1DD955FA0(v0 + 112);

      if (swift_dynamicCast())
      {
        v14 = *(v0 + 216);
        v13 = *(v0 + 224);
LABEL_10:
        v15 = sub_1DD93FA54(v14, v13, &v29);

        *(v7 + 4) = v15;
        _os_log_impl(&dword_1DD8F8000, v4, v5, "x-request-id: %{public}s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x1E12B8CE0](v8, -1, -1);
        MEMORY[0x1E12B8CE0](v7, -1, -1);
        goto LABEL_11;
      }

      v14 = 0x3E6C696E3CLL;
    }

    else
    {
      v14 = 0x3E6C696E3CLL;

      sub_1DD955FA0(v0 + 112);
    }

    v13 = 0xE500000000000000;
    goto LABEL_10;
  }

LABEL_11:

  v16 = *(v0 + 312);
  v17 = *(v0 + 304);
  v18 = *(v0 + 288);
  v19 = *(v0 + 320);
  sub_1DD909CD4(v17, v16);
  sub_1DD9C1AE0(v18, v19, v17, v16, (v0 + 64));
  v20 = *(v0 + 64);
  if (v20)
  {
    *(v0 + 16) = v20;
    *(v0 + 24) = *(v0 + 72);
    *(v0 + 40) = *(v0 + 88);
    *(v0 + 56) = *(v0 + 104);
    sub_1DD94CB80(v0 + 16);

    *(v0 + 184) = *(v0 + 48);
    sub_1DD9311E4(v0 + 184);
  }

  v22 = *(v0 + 304);
  v21 = *(v0 + 312);
  v23 = swift_task_alloc();
  *(v0 + 336) = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = v21;
  v24 = swift_task_alloc();
  *(v0 + 344) = v24;
  *v24 = v0;
  v24[1] = sub_1DD94C6D0;
  v25 = *(v0 + 320);
  v26 = *(v0 + 240);
  v27 = *(v0 + 248);

  return sub_1DD955C58(v25, &unk_1DDA19708, v23, v26, v27);
}

uint64_t sub_1DD94C6D0(uint64_t a1)
{
  *(*v1 + 352) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD94C7F0, 0, 0);
}

uint64_t sub_1DD94C7F0(uint64_t a1)
{
  if (v1[44])
  {
    v2 = v1[39];
    v3 = v1[40];
    v4 = v1[38];
    swift_willThrow();
    sub_1DD909D28(v4, v2);

    (*(v1[34] + 8))(v1[35], v1[33]);

    v5 = v1[1];

    return v5();
  }

  else
  {
    (*(v1[34] + 8))(v1[35], v1[33]);

    v7 = v1[1];
    v8 = v1[39];
    v9 = v1[40];
    v10 = v1[38];

    return v7(v10, v8, v9);
  }
}

uint64_t sub_1DD94C90C()
{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_1DD94C98C(uint64_t a1)
{
  v4 = sub_1DDA13140();
  (*(*(v4 - 8) + 16))(a1, v1, v4);
  v5 = sub_1DDA130E0();
  v6 = MEMORY[0x1E69E7CC8];
  if (!v5)
  {
    return v6;
  }

  v7 = v5;
  if (!*(v5 + 16))
  {
    goto LABEL_8;
  }

  v8 = sub_1DD96AC38(0xD000000000000022, 0x80000001DDA26990);
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = (*(v7 + 56) + 16 * v8);
  v12 = *v10;
  v11 = v10[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v6;
  result = sub_1DD96D708();
  v16 = v6[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v15;
  if (v6[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = result;
    sub_1DD9CA290();
    result = v22;
    v6 = v26;
    if (v2)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  sub_1DD9C8CDC(v19, isUniquelyReferenced_nonNull_native);
  result = sub_1DD96D708();
  if ((v2 & 1) != (v20 & 1))
  {
    sub_1DDA15500();
    __break(1u);
LABEL_8:

    return v6;
  }

LABEL_10:
  if (v2)
  {
LABEL_11:
    v21 = (v6[7] + 16 * result);
    *v21 = v12;
    v21[1] = v11;

LABEL_16:
    sub_1DDA13130();
    return v6;
  }

LABEL_14:
  v6[(result >> 6) + 8] |= 1 << result;
  v23 = (v6[7] + 16 * result);
  *v23 = v12;
  v23[1] = v11;
  v24 = v6[2];
  v18 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v18)
  {
    v6[2] = v25;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD94CB80(uint64_t a1)
{
  v41 = sub_1DDA155E0();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v49 + 1) = &type metadata for Telemetry.HTTPStatusEvent;
  v4 = swift_allocObject();
  *&v48 = v4;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 40);
  v38[1] = *(a1 + 32);
  v10 = *(a1 + 16);
  v4[1] = *a1;
  v4[2] = v10;
  v4[3] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v38[0] = v9;

  sub_1DDA155C0();
  v15 = sub_1DD94001C(MEMORY[0x1E69E7CC0]);
  v39 = v3;
  sub_1DDA155D0();
  sub_1DDA15150();

  sub_1DDA151D0();
  if (!v50)
  {
LABEL_24:

    v35 = sub_1DDA14B00();
    sub_1DD9565A8(0, &qword_1ECD831A0, 0x1E69E58C0);
    v36 = sub_1DDA14A90();

    AnalyticsSendEvent();

    return (*(v40 + 8))(v39, v41);
  }

  while (1)
  {
    v46 = v48;
    sub_1DD940DE4(&v49, &v47);
    sub_1DD955FF4(&v46, &v43);
    v16 = v44;
    if (!v44)
    {
      sub_1DD90D378(&v46, &qword_1ECD831A8, &qword_1DDA19718);
      __swift_destroy_boxed_opaque_existential_1(v45);
      goto LABEL_4;
    }

    v17 = v43;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v18 = v17 == 0x6D614E746E657665 && v16 == 0xE900000000000065;
    if (v18 || (sub_1DDA15440() & 1) != 0 || (sub_1DD955FF4(&v46, &v43), , sub_1DD9565A8(0, &qword_1ECD831A0, 0x1E69E58C0), (swift_dynamicCast() & 1) == 0))
    {
      sub_1DD90D378(&v46, &qword_1ECD831A8, &qword_1DDA19718);

      goto LABEL_4;
    }

    v19 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v15;
    v22 = sub_1DD96AC38(v17, v16);
    v23 = v15[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v15[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1DD9CA3EC();
        if (v26)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1DD9C8F80(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_1DD96AC38(v17, v16);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
      if (v26)
      {
LABEL_20:

        v15 = v43;
        v29 = v43[7];
        v30 = *(v29 + 8 * v22);
        *(v29 + 8 * v22) = v19;

        sub_1DD90D378(&v46, &qword_1ECD831A8, &qword_1DDA19718);
        goto LABEL_4;
      }
    }

    v15 = v43;
    v43[(v22 >> 6) + 8] |= 1 << v22;
    v31 = (v15[6] + 16 * v22);
    *v31 = v17;
    v31[1] = v16;
    *(v15[7] + 8 * v22) = v19;

    sub_1DD90D378(&v46, &qword_1ECD831A8, &qword_1DDA19718);
    v32 = v15[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_26;
    }

    v15[2] = v34;
LABEL_4:
    sub_1DDA151D0();
    if (!v50)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DDA15500();
  __break(1u);
  return result;
}

uint64_t sub_1DD94D048(uint64_t a1, unint64_t a2)
{
  sub_1DD909CD4(a1, a2);
  v5 = *(v2 + 8);

  return v5(a1, a2);
}

uint64_t sub_1DD94D0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[55] = a4;
  v5[56] = v4;
  v5[53] = a2;
  v5[54] = a3;
  v5[52] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831C0, &qword_1DDA19730);
  v5[57] = v6;
  v5[58] = *(v6 - 8);
  v5[59] = swift_task_alloc();
  v7 = sub_1DDA14B60();
  v5[60] = v7;
  v5[61] = *(v7 - 8);
  v5[62] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831C8, &qword_1DDA19738);
  v5[63] = v8;
  v5[64] = *(v8 - 8);
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v9 = sub_1DDA13140();
  v5[67] = v9;
  v5[68] = *(v9 - 8);
  v5[69] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD94D2E4, 0, 0);
}

uint64_t sub_1DD94D2E4()
{
  v1 = v0;
  v9 = v0[55];
  v0[70] = sub_1DD94C98C(v0[69]);
  v8 = (*(v9 + 16) + **(v9 + 16));
  v2 = swift_task_alloc();
  v1[71] = v2;
  *v2 = v1;
  v2[1] = sub_1DD94D440;
  v3 = v1[69];
  v4 = v1[66];
  v5 = v1[55];
  v6 = v1[54];

  return v8(v4, v3, v6, v5);
}

uint64_t sub_1DD94D440(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {

    v4 = sub_1DD94E3B8;
  }

  else
  {
    v4 = sub_1DD94D594;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD94D594()
{
  v50 = v0;
  v49[1] = *MEMORY[0x1E69E9840];
  if (qword_1ECD827C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 576);
  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1ECDA2128);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14F00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 576);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v49[0] = v8;
    *v7 = 136446210;
    v9 = [v6 allHeaderFields];
    v10 = sub_1DDA14AA0();

    strcpy((v0 + 384), "x-request-id");
    *(v0 + 397) = 0;
    *(v0 + 398) = -5120;
    sub_1DDA15020();
    if (*(v10 + 16) && (v11 = sub_1DD96ADEC(v0 + 248), (v12 & 1) != 0))
    {
      sub_1DD9410C8(*(v10 + 56) + 32 * v11, v0 + 288);
      sub_1DD955FA0(v0 + 248);

      if (swift_dynamicCast())
      {
        v14 = *(v0 + 400);
        v13 = *(v0 + 408);
LABEL_10:
        v15 = sub_1DD93FA54(v14, v13, v49);

        *(v7 + 4) = v15;
        _os_log_impl(&dword_1DD8F8000, v4, v5, "[Workflow] x-request-id: %{public}s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x1E12B8CE0](v8, -1, -1);
        MEMORY[0x1E12B8CE0](v7, -1, -1);
        goto LABEL_11;
      }

      v14 = 0x3E6C696E3CLL;
    }

    else
    {
      v14 = 0x3E6C696E3CLL;

      sub_1DD955FA0(v0 + 248);
    }

    v13 = 0xE500000000000000;
    goto LABEL_10;
  }

LABEL_11:

  if (sub_1DD94E4B0() != 2)
  {
    (*(*(v0 + 512) + 16))(*(v0 + 520), *(v0 + 528), *(v0 + 504));
    sub_1DD90D2A4(&qword_1ECD831D0, &qword_1ECD831C8, &qword_1DDA19738, MEMORY[0x1E69E87D0]);
    sub_1DDA14DC0();
    *(v0 + 592) = xmmword_1DDA16330;
    v43 = sub_1DD90D2A4(&qword_1ECD831D8, &qword_1ECD831C0, &qword_1DDA19730, MEMORY[0x1E69E87C0]);
    v44 = swift_task_alloc();
    *(v0 + 608) = v44;
    *v44 = v0;
    v44[1] = sub_1DD94DC4C;
    v27 = *(v0 + 456);
    v26 = v0 + 352;
    v28 = v43;

    return MEMORY[0x1EEE6D8C8](v26, v27, v28);
  }

  v16 = *(v0 + 576);

  sub_1DD9C1AE0(v17, v16, 0, 0xF000000000000000, (v0 + 160));
  v18 = *(v0 + 160);
  if (v18)
  {
    *(v0 + 64) = v18;
    *(v0 + 72) = *(v0 + 168);
    *(v0 + 88) = *(v0 + 184);
    *(v0 + 104) = *(v0 + 200);
    sub_1DD94CB80(v0 + 64);

    *(v0 + 320) = *(v0 + 96);
    sub_1DD9311E4(v0 + 320);
  }

  v20 = *(v0 + 488);
  v19 = *(v0 + 496);
  v21 = *(v0 + 480);
  sub_1DDA14B50();
  v22 = sub_1DDA14B20();
  v24 = v23;
  v25 = *(v20 + 8);
  v26 = v25(v19, v21);
  if (v24 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_24;
  }

  v47 = v24;
  v48 = v22;
  v29 = *(v0 + 496);
  v30 = *(v0 + 480);
  sub_1DDA14B50();
  v46 = sub_1DDA14B20();
  v32 = v31;
  v26 = v25(v29, v30);
  if (v32 >> 60 == 15)
  {
LABEL_24:
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v26, v27, v28);
  }

  v33 = *(v0 + 552);
  v34 = *(v0 + 544);
  v35 = *(v0 + 528);
  v36 = *(v0 + 520);
  v38 = *(v0 + 504);
  v37 = *(v0 + 512);
  v45 = *(v0 + 536);

  (*(v37 + 16))(v36, v35, v38);
  v39 = swift_allocObject();
  v39[2] = v46;
  v39[3] = v32;
  v39[4] = v48;
  v39[5] = v47;
  sub_1DD90D2A4(&qword_1ECD831D0, &qword_1ECD831C8, &qword_1DDA19738, MEMORY[0x1E69E87D0]);
  sub_1DDA153F0();
  (*(v37 + 8))(v35, v38);
  (*(v34 + 8))(v33, v45);

  v40 = *(v0 + 8);
  v41 = *(v0 + 576);

  return v40(v41);
}

uint64_t sub_1DD94DC4C()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = v2[75];
    v4 = v2[74];
    (*(v2[58] + 8))(v2[59], v2[57]);

    sub_1DD909D28(v4, v3);
    v5 = sub_1DD94E298;
  }

  else
  {
    v5 = sub_1DD94DDD4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD94DDD4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  if (v1 >> 60 != 15)
  {
    v19 = *(v0 + 352);
    *(v0 + 368) = v3;
    *(v0 + 376) = v2;
    v20 = MEMORY[0x1E6969080];
    v21 = MEMORY[0x1E6969078];
    *(v0 + 232) = MEMORY[0x1E6969080];
    *(v0 + 240) = v21;
    *(v0 + 208) = v19;
    *(v0 + 216) = v1;
    v22 = __swift_project_boxed_opaque_existential_1((v0 + 208), v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v25 != 2)
      {
        *(v0 + 644) = 0;
        *(v0 + 638) = 0;
        goto LABEL_22;
      }

      v26 = *(v23 + 16);
      v27 = *(v23 + 24);
      sub_1DD909CD4(*(v0 + 592), *(v0 + 600));
      if (sub_1DDA13320())
      {
        v28 = sub_1DDA13350();
        v23 = v26 - v28;
        if (__OFSUB__(v26, v28))
        {
          goto LABEL_27;
        }
      }

      if (!__OFSUB__(v27, v26))
      {
LABEL_20:
        v30 = *(v0 + 600);
        v31 = *(v0 + 592);
        sub_1DDA13340();
        sub_1DDA13550();
        sub_1DD909D28(v31, v30);
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v25)
    {
      *(v0 + 624) = v23;
      *(v0 + 632) = v24;
      *(v0 + 634) = BYTE2(v24);
      *(v0 + 635) = BYTE3(v24);
      *(v0 + 636) = BYTE4(v24);
      *(v0 + 637) = BYTE5(v24);
LABEL_22:
      sub_1DDA13550();
LABEL_23:
      __swift_destroy_boxed_opaque_existential_1((v0 + 208));
      *(v0 + 592) = *(v0 + 368);
      v32 = sub_1DD90D2A4(&qword_1ECD831D8, &qword_1ECD831C0, &qword_1DDA19730, MEMORY[0x1E69E87C0]);
      v33 = swift_task_alloc();
      *(v0 + 608) = v33;
      *v33 = v0;
      v33[1] = sub_1DD94DC4C;
      v9 = *(v0 + 456);
      v8 = v0 + 352;
      v10 = v32;

      return MEMORY[0x1EEE6D8C8](v8, v9, v10);
    }

    v29 = v23;
    if (v23 >> 32 >= v23)
    {
      sub_1DD909CD4(*(v0 + 592), *(v0 + 600));
      if (!sub_1DDA13320() || !__OFSUB__(v29, sub_1DDA13350()))
      {
        goto LABEL_20;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = *(v0 + 576);
  v5 = *(v0 + 560);
  (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
  sub_1DD90D440(*(v0 + 352), *(v0 + 360));
  v6 = v4;

  sub_1DD909CD4(v3, v2);
  sub_1DD9C1AE0(v5, v6, v3, v2, (v0 + 112));
  v7 = *(v0 + 112);
  if (v7)
  {
    *(v0 + 16) = v7;
    *(v0 + 24) = *(v0 + 120);
    *(v0 + 40) = *(v0 + 136);
    *(v0 + 56) = *(v0 + 152);
    sub_1DD94CB80(v0 + 16);

    *(v0 + 336) = *(v0 + 48);
    sub_1DD9311E4(v0 + 336);
  }

  v8 = sub_1DD9552D8(*(v0 + 576), *(v0 + 592), *(v0 + 600));
  if (!v8)
  {
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v8, v9, v10);
  }

  v11 = *(v0 + 600);
  v12 = *(v0 + 592);
  v13 = *(v0 + 576);
  v14 = *(v0 + 528);
  v15 = *(v0 + 504);
  v16 = *(v0 + 512);

  swift_willThrow();
  sub_1DD909D28(v12, v11);

  (*(v16 + 8))(v14, v15);
  (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DD94E298()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);

  (*(v3 + 8))(v1, v2);
  (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DD94E3B8()
{
  (*(v0[68] + 8))(v0[69], v0[67]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DD94E4B0()
{
  v1 = [v0 statusCode];
  if ((v1 - 100) < 0x64)
  {
    return 1;
  }

  if ((v1 - 200) < 0x64)
  {
    return 2;
  }

  if ((v1 - 300) < 0x64)
  {
    return 3;
  }

  if ((v1 - 400) < 0x64)
  {
    return 4;
  }

  if ((v1 - 500) >= 0x64)
  {
    return 0;
  }

  return 5;
}

uint64_t sub_1DD94E544(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD94E574, 0, 0);
}

uint64_t sub_1DD94E574()
{
  v16 = v0;
  if (!sub_1DD954BF8(*(v0 + 56), *(v0 + 64), *(v0 + 24), *(v0 + 32)))
  {
    result = sub_1DD94E694(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
    if (result)
    {
      v2 = *(v0 + 48);
      v3 = v2 >> 62;
      if ((v2 >> 62) > 1)
      {
        if (v3 != 2)
        {
          v4 = 0;
          goto LABEL_14;
        }

        v5 = *(*(v0 + 40) + 16);
        v6 = *(*(v0 + 40) + 24);
        v4 = v6 - v5;
        if (!__OFSUB__(v6, v5))
        {
          goto LABEL_14;
        }

        __break(1u);
      }

      else if (!v3)
      {
        v4 = BYTE6(v2);
LABEL_14:
        v12 = *(v0 + 56);
        v11 = *(v0 + 64);
        v13 = *(v0 + 16);
        sub_1DD909CD4(v12, v11);
        sub_1DD94E944(v4, v12, v11, &v15);
        *v13 = v15;
        goto LABEL_15;
      }

      v7 = *(v0 + 40);
      v8 = *(v0 + 44);
      v9 = __OFSUB__(v8, v7);
      v10 = v8 - v7;
      if (v9)
      {
        __break(1u);
        return result;
      }

      v4 = v10;
      goto LABEL_14;
    }
  }

  **(v0 + 16) = xmmword_1DDA195F0;
LABEL_15:
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DD94E694(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1DDA135B0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20[-v13];
  sub_1DD909CD4(a1, a2);
  sub_1DDA135C0();
  sub_1DD909CD4(a3, a4);
  sub_1DDA135C0();
  sub_1DD9565F0(&qword_1ECD831E0, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
  while (1)
  {
    sub_1DDA14F60();
    if (v20[15])
    {
      v18 = *(v9 + 8);
      v18(v12, v8);
      sub_1DDA14F60();
      v18(v14, v8);
      return v20[13];
    }

    v15 = v20[14];
    sub_1DDA14F60();
    if (v20[11])
    {
      break;
    }

    if (v15 != v20[10])
    {
      v16 = *(v9 + 8);
      v16(v12, v8);
      v16(v14, v8);
      return 0;
    }
  }

  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  return 1;
}

unint64_t sub_1DD94E944@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_1DD954A28(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_1DD954ADC(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_1DDA13560();
    v16 = v15;
    result = sub_1DD909D28(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

uint64_t sub_1DD94EA94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831F0, &qword_1DDA19758);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v5 = sub_1DDA14E90();
  v2[6] = v5;
  v2[7] = *(v5 - 8);
  v6 = swift_task_alloc();
  v2[8] = v6;
  v7 = swift_task_alloc();
  v2[9] = v7;
  *v7 = v2;
  v7[1] = sub_1DD94EC0C;

  return MEMORY[0x1EEDC6270](v6, a2, 0);
}

uint64_t sub_1DD94EC0C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1DD94EEE4;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_1DD94ED34;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD94ED34()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831F8, &qword_1DDA19760);
  swift_allocBox();
  sub_1DD9565F0(&qword_1ECD83200, MEMORY[0x1E6969EA0], MEMORY[0x1E6969EA8]);
  sub_1DDA14DB0();
  sub_1DDA13390();
  (*(v6 + 8))(v3, v5);

  sub_1DDA14E30();
  (*(v2 + 8))(v1, v4);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1DD94EEE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD94EF54(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v3 = sub_1DDA14B60();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831F8, &qword_1DDA19760);
  v2[14] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD94F03C, 0, 0);
}

uint64_t sub_1DD94F03C()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1DD94F0E8;
  v2 = *(v0 + 104);

  return MEMORY[0x1EEDC3248](v2);
}

uint64_t sub_1DD94F0E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v5 = sub_1DD94F2F4;
  }

  else
  {
    swift_endAccess();
    v5 = sub_1DD94F208;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD94F208(uint64_t a1)
{
  if (v1[17])
  {
    v3 = v1[11];
    v2 = v1[12];
    v4 = v1[10];
    sub_1DDA14B50();
    v5 = sub_1DDA14B20();
    v7 = v6;

    (*(v3 + 8))(v2, v4);
    if (v7 >> 60 != 15)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = 0;
  v7 = 0xF000000000000000;
LABEL_5:
  v8 = v1[9];
  *v8 = v5;
  v8[1] = v7;

  v9 = v1[1];

  return v9();
}

uint64_t sub_1DD94F2F4()
{
  swift_endAccess();
  swift_getErrorValue();
  v1 = sub_1DD94F4C8(v0[6], v0[7]);
  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1ECDA20F8);
  v3 = v1;
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14EE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Received error during streaming: %@", v6, 0xCu);
    sub_1DD90D378(v7, &unk_1ECD83100, &unk_1DDA185C0);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v10 = v0[18];

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DD94F4C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v109 = a2;
  v104 = sub_1DDA13740();
  v106 = *(v104 - 8);
  v5 = MEMORY[0x1EEE9AC00](v104);
  v107 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v105 = &v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83188, &qword_1DDA196F8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v97 - v10;
  v12 = *(a1 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v99 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v102 = &v97 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v101 = &v97 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v100 = &v97 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v97 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v98 = &v97 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v97 = &v97 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v103 = &v97 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v97 - v30;
  v32 = sub_1DDA13750();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v12;
  v36 = *(v12 + 16);
  v36(v31, v3, a1);
  v37 = v32;
  v38 = v33;
  v39 = swift_dynamicCast();
  v40 = *(v33 + 56);
  v108 = v36;
  if (v39)
  {
    v100 = v3;
    v40(v11, 0, 1, v37);
    (*(v33 + 32))(v35, v11, v37);
    sub_1DD9565F0(&qword_1ECD83190, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    v41 = v105;
    v101 = v35;
    v102 = v37;
    sub_1DDA133F0();
    v42 = v107;
    sub_1DDA13730();
    sub_1DD9565F0(&qword_1ECD83198, MEMORY[0x1E6969BF8], MEMORY[0x1E6969C00]);
    v43 = v104;
    v44 = sub_1DDA14AF0();
    v45 = *(v106 + 8);
    v45(v42, v43);
    if (v44)
    {
      v45(v41, v43);
      v46 = sub_1DDA13840();
      sub_1DD9565F0(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
      v47 = swift_allocError();
      v49 = v48;
      v50 = v103;
      v108(v103, v100, a1);
      if (sub_1DDA15430())
      {
        (*(v110 + 8))(v50, a1);
      }

      else
      {
        swift_allocError();
        (*(v110 + 32))(v84, v50, a1);
      }

      v86 = v101;
      v85 = v102;
      sub_1DDA13800();
      (*(*(v46 - 8) + 104))(v49, *MEMORY[0x1E69DA4E0], v46);
      (*(v38 + 8))(v86, v85);
    }

    else
    {
      v56 = v107;
      sub_1DDA13720();
      v57 = sub_1DDA14AF0();
      v45(v56, v43);
      v45(v41, v43);
      v58 = sub_1DDA13840();
      sub_1DD9565F0(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
      v47 = swift_allocError();
      v60 = v59;
      if (v57)
      {
        v61 = v97;
        v108(v97, v100, a1);
        v62 = sub_1DDA15430();
        v63 = v110;
        if (v62)
        {
          (*(v110 + 8))(v61, a1);
        }

        else
        {
          swift_allocError();
          (*(v63 + 32))(v91, v61, a1);
        }

        v92 = v101;
        sub_1DDA13800();
        v93 = MEMORY[0x1E69DA4D8];
      }

      else
      {
        v80 = v98;
        v108(v98, v100, a1);
        v81 = sub_1DDA15430();
        v82 = v110;
        if (v81)
        {
          (*(v110 + 8))(v80, a1);
        }

        else
        {
          swift_allocError();
          (*(v82 + 32))(v94, v80, a1);
        }

        v92 = v101;
        sub_1DDA13800();
        v93 = MEMORY[0x1E69DA498];
      }

      (*(*(v58 - 8) + 104))(v60, *v93, v58);
      (*(v38 + 8))(v92, v102);
    }
  }

  else
  {
    v40(v11, 1, 1, v37);
    sub_1DD90D378(v11, &qword_1ECD83188, &qword_1DDA196F8);
    v51 = v23;
    v36(v23, v3, a1);
    v52 = sub_1DDA15430();
    v53 = v3;
    if (v52)
    {
      v54 = v52;
      v55 = v110;
      (*(v110 + 8))(v51, a1);
    }

    else
    {
      v54 = swift_allocError();
      v55 = v110;
      (*(v110 + 32))(v64, v51, a1);
    }

    v65 = sub_1DDA13400();

    v66 = [v65 domain];
    v67 = sub_1DDA14B10();
    v69 = v68;

    if (v67 == sub_1DDA14B10() && v69 == v70)
    {
    }

    else
    {
      v71 = sub_1DDA15440();

      if ((v71 & 1) == 0)
      {

        v78 = v99;
        v108(v99, v53, a1);
        v79 = sub_1DDA15430();
        if (v79)
        {
          v47 = v79;
          (*(v55 + 8))(v78, a1);
        }

        else
        {
          v47 = swift_allocError();
          (*(v55 + 32))(v90, v78, a1);
        }

        return v47;
      }
    }

    v72 = [v65 code];
    v73 = sub_1DDA13840();
    sub_1DD9565F0(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    v47 = swift_allocError();
    v75 = v74;
    if (v72 == -1001)
    {
      v77 = v101;
      v108(v101, v53, a1);
      if (sub_1DDA15430())
      {
        (*(v55 + 8))(v77, a1);
      }

      else
      {
        swift_allocError();
        (*(v55 + 32))(v89, v77, a1);
      }

      sub_1DDA13800();
      v88 = MEMORY[0x1E69DA4D8];
    }

    else if (v72 == -999)
    {
      v76 = v100;
      v108(v100, v53, a1);
      if (sub_1DDA15430())
      {
        (*(v55 + 8))(v76, a1);
      }

      else
      {
        swift_allocError();
        (*(v55 + 32))(v87, v76, a1);
      }

      sub_1DDA13800();
      v88 = MEMORY[0x1E69DA4E0];
    }

    else
    {
      v83 = v102;
      v108(v102, v53, a1);
      if (sub_1DDA15430())
      {
        (*(v55 + 8))(v83, a1);
      }

      else
      {
        swift_allocError();
        (*(v55 + 32))(v95, v83, a1);
      }

      sub_1DDA13800();
      v88 = MEMORY[0x1E69DA498];
    }

    (*(*(v73 - 8) + 104))(v75, *v88, v73);
  }

  return v47;
}

uint64_t sub_1DD95027C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD95031C;

  return MEMORY[0x1EEDC6260](a1, 0);
}

uint64_t sub_1DD95031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (v3)
  {
    v10 = v9[1];

    return v10();
  }

  else
  {
    v8[3] = a3;
    v8[4] = a2;
    v8[5] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DD950480, 0, 0);
  }
}

uint64_t sub_1DD950480()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];

  return v2(v3, v4, v1);
}

uint64_t sub_1DD95050C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD9505B8;

  return sub_1DD94EA94(a1, a2);
}

uint64_t sub_1DD9505B8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id sub_1DD9506B8()
{
  v1 = *v0;
  v2 = sub_1DDA130D0();
  v3 = sub_1DDA13470();
  v4 = [v1 uploadTaskWithRequest:v2 fromFile:v3];

  return v4;
}

id sub_1DD95072C()
{
  v1 = *v0;
  v2 = sub_1DDA130D0();
  v3 = [v1 uploadTaskWithStreamedRequest_];

  return v3;
}

uint64_t sub_1DD950780(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DD950908;
  v6[3] = &block_descriptor_0;
  v4 = _Block_copy(v6);

  [v3 getAllTasksWithCompletionHandler_];
  _Block_release(v4);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DD950860(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1DD9508A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD950908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1DD9565A8(0, &qword_1ECD831E8, 0x1E696AF98);
  v3 = sub_1DDA14CA0();

  v2(v3);
}

uint64_t sub_1DD95098C@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v18 = a1;
  v4 = sub_1DDA13150();
  v15 = *(v4 - 8);
  v16 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v14 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DDA131D0();
  v13[1] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1DDA131F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA13230();
  swift_allocObject();
  *a3 = sub_1DDA13220();
  (*(v8 + 104))(v10, *MEMORY[0x1E6967FA8], v7);

  sub_1DDA13200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83210, &qword_1DDA19788);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DDA184A0;
  sub_1DDA131A0();
  sub_1DDA131B0();
  sub_1DDA131C0();
  v19 = v11;
  sub_1DD9565F0(&qword_1EE16F8F8, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83218, &qword_1DDA19790);
  sub_1DD90D2A4(&unk_1EE16F3A8, &qword_1ECD83218, &qword_1DDA19790, MEMORY[0x1E69E6328]);
  sub_1DDA14FC0();
  sub_1DDA131E0();

  sub_1DDA13190();
  swift_allocObject();
  *(a3 + 8) = sub_1DDA13180();
  (*(v15 + 104))(v14, *MEMORY[0x1E6967F10], v16);

  sub_1DDA13160();

  *(a3 + 56) = v17;
  return sub_1DD92BD14(v18, a3 + 16);
}

uint64_t sub_1DD950D48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v9 + 458) = a8;
  *(v9 + 457) = a7;
  *(v9 + 320) = a6;
  *(v9 + 328) = v8;
  *(v9 + 456) = a4;
  *(v9 + 304) = a3;
  *(v9 + 312) = a5;
  *(v9 + 288) = a1;
  *(v9 + 296) = a2;
  sub_1DDA14B60();
  *(v9 + 336) = swift_task_alloc();
  v10 = sub_1DDA134E0();
  *(v9 + 344) = v10;
  *(v9 + 352) = *(v10 - 8);
  *(v9 + 360) = swift_task_alloc();
  v11 = sub_1DDA13140();
  *(v9 + 368) = v11;
  *(v9 + 376) = *(v11 - 8);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD950EB0, 0, 0);
}

uint64_t sub_1DD950EB0()
{
  v34 = v0;
  v1 = *(v0 + 304);
  (*(*(v0 + 352) + 16))(*(v0 + 360), *(v0 + 288), *(v0 + 344));
  sub_1DDA130F0();
  if (v1 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  sub_1DD909CD4(v3, v2);
  sub_1DD909CD4(v3, v2);
  sub_1DDA13120();
  sub_1DDA13130();

  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1DDA14810();
  __swift_project_value_buffer(v4, qword_1ECDA20F8);
  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14ED0();
  if (!os_log_type_enabled(v5, v6))
  {
    v19 = *(v0 + 296);
    v20 = *(v0 + 304);
    goto LABEL_9;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v33 = v8;
  *v7 = 136315138;
  swift_beginAccess();
  v9 = sub_1DDA13110();
  v11 = v10;
  result = swift_endAccess();
  if (v11 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1DDA14B50();
  v13 = sub_1DDA14B30();
  v15 = v14;
  result = sub_1DD90D440(v9, v11);
  if (!v15)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v17 = *(v0 + 296);
  v16 = *(v0 + 304);
  v18 = sub_1DD93FA54(v13, v15, &v33);

  *(v7 + 4) = v18;
  _os_log_impl(&dword_1DD8F8000, v5, v6, "Sending request: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v8);
  MEMORY[0x1E12B8CE0](v8, -1, -1);
  MEMORY[0x1E12B8CE0](v7, -1, -1);
  v19 = v17;
  v20 = v16;
LABEL_9:
  sub_1DD90D440(v19, v20);

LABEL_10:
  if (*(v0 + 457))
  {
    swift_beginAccess();
    sub_1DDA130B0();
    swift_endAccess();
  }

  swift_beginAccess();
  sub_1DDA130C0();
  v21 = *(v0 + 328);
  sub_1DDA130A0();
  swift_endAccess();
  if (*(v21 + 56) == 1)
  {
    v22 = sub_1DD93FF08(&unk_1F58EBFF8);
    sub_1DD90D378(&unk_1F58EC018, &qword_1ECD829C8, &qword_1DDA1E380);
  }

  else
  {
    v22 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  v23 = *(v0 + 312);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v23;
  sub_1DD954E10(v22, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v33);

  v25 = v33;
  v27 = *(v0 + 384);
  v26 = *(v0 + 392);
  v28 = *(v0 + 368);
  v29 = *(v0 + 376);
  swift_beginAccess();
  sub_1DD9528C4(v27, v25);
  swift_endAccess();

  (*(v29 + 16))(v26, v27, v28);
  v30 = *(v29 + 8);
  *(v0 + 400) = v30;
  *(v0 + 408) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v27, v28);
  v31 = swift_task_alloc();
  *(v0 + 416) = v31;
  *v31 = v0;
  v31[1] = sub_1DD9513D8;
  v32 = *(v0 + 392);

  return sub_1DD951BB4(v32, 1);
}

uint64_t sub_1DD9513D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[53] = a1;
  v5[54] = a2;
  v5[55] = a3;
  v5[56] = v3;

  if (v3)
  {
    v6 = sub_1DD951B18;
  }

  else
  {
    v6 = sub_1DD9514F0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD9514F0()
{
  v65 = v0;
  v1 = [*(v0 + 440) allHeaderFields];
  v2 = MEMORY[0x1E69E69B8];
  v3 = sub_1DDA14AA0();

  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;

  v8 = 0;
  v62 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    while (1)
    {
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v8 << 6);
      sub_1DD9550D8(*(v3 + 48) + 40 * v11, v0 + 16);
      sub_1DD9410C8(*(v3 + 56) + 32 * v11, v0 + 56);
      sub_1DD9550D8(v0 + 16, v0 + 88);
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      v12 = v2;
      v13 = *(v0 + 256);
      v14 = *(v0 + 264);
      sub_1DD9410C8(v0 + 56, v0 + 128);
      if (swift_dynamicCast())
      {
        v59 = *(v0 + 280);
        v60 = *(v0 + 272);
        sub_1DD90D378(v0 + 16, &qword_1ECD83180, &qword_1DDA196E8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1DD908740(0, v62[2] + 1, 1, v62);
        }

        v16 = v62[2];
        v15 = v62[3];
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v57 = v62[2];
          v58 = v16 + 1;
          v19 = sub_1DD908740((v15 > 1), v16 + 1, 1, v62);
          v16 = v57;
          v17 = v58;
          v62 = v19;
        }

        v62[2] = v17;
        v18 = &v62[4 * v16];
        v18[4] = v13;
        v18[5] = v14;
        v18[6] = v60;
        v18[7] = v59;
        v2 = v12;
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {

        v2 = v12;
LABEL_6:
        sub_1DD90D378(v0 + 16, &qword_1ECD83180, &qword_1DDA196E8);
        if (!v6)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_47:
      swift_once();
      goto LABEL_27;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  if (v62[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
    v20 = sub_1DDA151C0();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC8];
  }

  v21 = *(v0 + 448);
  v64[0] = v20;

  sub_1DD954678(v22, 1, v64);
  if (v21)
  {

    return swift_unexpectedError();
  }

  v7 = v64[0];
  if (qword_1ECD827B0 != -1)
  {
    goto LABEL_47;
  }

LABEL_27:
  v25 = *(v0 + 424);
  v24 = *(v0 + 432);
  v26 = sub_1DDA14810();
  __swift_project_value_buffer(v26, qword_1ECDA20F8);
  sub_1DD909CD4(v25, v24);
  v27 = sub_1DDA147F0();
  v28 = sub_1DDA14ED0();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 432);
  if (v29)
  {
    result = swift_slowAlloc();
    *result = 134217984;
    v31 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v31 == 2)
      {
        v33 = *(*(v0 + 424) + 16);
        v34 = *(*(v0 + 424) + 24);
        v35 = __OFSUB__(v34, v33);
        v32 = v34 - v33;
        if (v35)
        {
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      if (!v31)
      {
        v32 = *(v0 + 438);
        goto LABEL_39;
      }

LABEL_36:
      v36 = *(v0 + 424);
      v37 = *(v0 + 428);
      v35 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v35)
      {
        __break(1u);
        return result;
      }

      v32 = v38;
    }

LABEL_39:
    v40 = *(v0 + 424);
    v39 = *(v0 + 432);
    *(result + 4) = v32;
    v41 = result;
    sub_1DD909D28(v40, v39);
    _os_log_impl(&dword_1DD8F8000, v27, v28, "Received response: %ld bytes", v41, 0xCu);
    MEMORY[0x1E12B8CE0](v41, -1, -1);
  }

  else
  {
    sub_1DD909D28(*(v0 + 424), *(v0 + 432));
  }

  v42 = sub_1DDA147F0();
  v43 = sub_1DDA14ED0();

  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v0 + 440);
  v46 = *(v0 + 400);
  v47 = *(v0 + 392);
  v48 = *(v0 + 368);
  if (v44)
  {
    v63 = *(v0 + 400);
    v49 = swift_slowAlloc();
    v61 = v47;
    v50 = swift_slowAlloc();
    v64[0] = v50;
    *v49 = 136315138;
    v51 = sub_1DDA14AB0();
    v53 = sub_1DD93FA54(v51, v52, v64);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_1DD8F8000, v42, v43, "Response headers: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1E12B8CE0](v50, -1, -1);
    MEMORY[0x1E12B8CE0](v49, -1, -1);

    v63(v61, v48);
  }

  else
  {

    v46(v47, v48);
  }

  v54 = *(v0 + 8);
  v55 = *(v0 + 424);
  v56 = *(v0 + 432);

  return v54(v55, v56, v7);
}

uint64_t sub_1DD951B18()
{
  (*(v0 + 400))(*(v0 + 392), *(v0 + 368));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD951BB4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8);
  v3[10] = swift_task_alloc();
  v4 = sub_1DDA13840();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD951CBC, 0, 0);
}

uint64_t sub_1DD951CBC()
{
  v1 = *(v0 + 72);
  *(v0 + 176) = *MEMORY[0x1E69DA498];
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1DD951D90;
  v5 = *(v0 + 56);

  return sub_1DD94C028(v5, v3, v2);
}

uint64_t sub_1DD951D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 144) = v3;

  if (v3)
  {
    v9 = sub_1DD951F60;
  }

  else
  {
    v8[19] = a3;
    v8[20] = a2;
    v8[21] = a1;
    v9 = sub_1DD951ECC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD951ECC()
{

  v1 = *(v0 + 8);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);

  return v1(v2, v3, v4);
}

uint64_t sub_1DD951F60()
{
  v1 = *(v0 + 120);
  swift_getErrorValue();
  v2 = sub_1DD94F4C8(*(v0 + 24), *(v0 + 32));

  *(v0 + 48) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 176);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);
    (*(v8 + 56))(v9, 0, 1, v7);
    v10 = *(v8 + 32);
    v10(v5, v9, v7);
    v10(v6, v5, v7);
    if ((*(v8 + 88))(v6, v7) == v4)
    {
      v11 = *(v0 + 128);
      v12 = *(v0 + 64);
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      if (v11 != v12)
      {
        v13 = *(v0 + 128);

        *(v0 + 120) = v2;
        *(v0 + 128) = v13 + 1;
        v14 = *(v0 + 72);
        v16 = v14[5];
        v15 = v14[6];
        __swift_project_boxed_opaque_existential_1(v14 + 2, v16);
        v17 = swift_task_alloc();
        *(v0 + 136) = v17;
        *v17 = v0;
        v17[1] = sub_1DD951D90;
        v18 = *(v0 + 56);

        return sub_1DD94C028(v18, v16, v15);
      }
    }

    else
    {
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    }
  }

  else
  {
    v20 = *(v0 + 80);
    (*(*(v0 + 96) + 56))(v20, 1, 1, *(v0 + 88));
    sub_1DD90D378(v20, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v21 = *(v0 + 144);
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1DD95223C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8);
  v4[11] = swift_task_alloc();
  v5 = sub_1DDA13840();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD952344, 0, 0);
}

uint64_t sub_1DD952344()
{
  v1 = *(v0 + 80);
  *(v0 + 168) = *MEMORY[0x1E69DA498];
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1DD952418;
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  return sub_1DD94D0B8(v5, v6, v3, v2);
}

uint64_t sub_1DD952418(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_1DD9525D0;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_1DD952540;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD952540()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 160);

  return v1(v2);
}

uint64_t sub_1DD9525D0()
{
  v1 = *(v0 + 128);
  swift_getErrorValue();
  v2 = sub_1DD94F4C8(*(v0 + 24), *(v0 + 32));

  *(v0 + 48) = v2;
  v3 = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (!swift_dynamicCast())
  {
    v22 = *(v0 + 88);
    (*(*(v0 + 104) + 56))(v22, 1, 1, *(v0 + 96));
    sub_1DD90D378(v22, &qword_1ECD82F78, &qword_1DDA188D8);
LABEL_9:

    goto LABEL_10;
  }

  v5 = *(v0 + 168);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  v10 = *(v0 + 88);
  (*(v9 + 56))(v10, 0, 1, v8);
  v11 = *(v9 + 32);
  v11(v6, v10, v8);
  v11(v7, v6, v8);
  if ((*(v9 + 88))(v7, v8) != v5)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    goto LABEL_9;
  }

  v12 = *(v0 + 136);
  v13 = *(v0 + 72);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  if (v12 != v13)
  {
    v14 = *(v0 + 136);

    *(v0 + 128) = v2;
    *(v0 + 136) = v14 + 1;
    v15 = *(v0 + 80);
    v17 = v15[5];
    v16 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v17);
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v18[1] = sub_1DD952418;
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);

    return sub_1DD94D0B8(v19, v20, v17, v16);
  }

LABEL_10:
  v23 = *(v0 + 152);
  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1DD9528C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DDA13680();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DDA13670();
  sub_1DDA13640();
  v8 = v7 * 1000.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82810, &unk_1DDA16340);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E63B0];
  *(v9 + 16) = xmmword_1DDA16320;
  v11 = MEMORY[0x1E69E6438];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v8;
  v12 = sub_1DDA14B40();
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  if (qword_1ECD827B0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v15 = sub_1DDA14810();
  __swift_project_value_buffer(v15, qword_1ECDA20F8);

  v16 = sub_1DDA147F0();
  v17 = sub_1DDA14ED0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1DD93FA54(v12, v14, &v30);
    _os_log_impl(&dword_1DD8F8000, v16, v17, "Setting x-request-client-start header timestamp: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1E12B8CE0](v19, -1, -1);
    MEMORY[0x1E12B8CE0](v18, -1, -1);
  }

  sub_1DDA13130();

  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  if (v22)
  {
    while (1)
    {
      v25 = v24;
LABEL_12:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = (v25 << 10) | (16 * v26);
      v14 = *(*(a2 + 48) + v27 + 8);
      v12 = *(*(a2 + 56) + v27);

      sub_1DDA13100();

      if (!v22)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v25 >= v23)
    {
    }

    v22 = *(a2 + 64 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1DD952C4C()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD952D24(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD952DE8(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unint64_t sub_1DD952EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD956774(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD952EEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6567617373656DLL;
  v5 = 0xE400000000000000;
  v6 = 1701080931;
  v7 = 0xD000000000000020;
  v8 = 0x80000001DDA26870;
  if (v2 != 3)
  {
    v7 = 0xD000000000000023;
    v8 = 0x80000001DDA268A0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DD952F80()
{
  v1 = *v0;
  v2 = 0x6567617373656DLL;
  v3 = 1701080931;
  v4 = 0xD000000000000020;
  if (v1 != 3)
  {
    v4 = 0xD000000000000023;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

unint64_t sub_1DD953010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD956774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD953038(uint64_t a1)
{
  v2 = sub_1DD957254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD953074(uint64_t a1)
{
  v2 = sub_1DD957254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD9530B0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DD9567C0(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DD953120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DDA15440();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DD9531A4(uint64_t a1)
{
  v2 = sub_1DD9571AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD9531E0(uint64_t a1)
{
  v2 = sub_1DD9571AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD95321C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DD956C98(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DD953278(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD95337C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x745F6C616E676973;
  }

  else
  {
    v3 = 0x745F646E75666572;
  }

  if (v2)
  {
    v4 = 0xED0000736E656B6FLL;
  }

  else
  {
    v4 = 0xEC0000006E656B6FLL;
  }

  if (*a2)
  {
    v5 = 0x745F6C616E676973;
  }

  else
  {
    v5 = 0x745F646E75666572;
  }

  if (*a2)
  {
    v6 = 0xEC0000006E656B6FLL;
  }

  else
  {
    v6 = 0xED0000736E656B6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DDA15440();
  }

  return v8 & 1;
}

uint64_t sub_1DD953438()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9534D0(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD953554(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD9535E8@<X0>(char *a2@<X8>)
{
  v3 = sub_1DDA151E0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DD953648(uint64_t *a1@<X8>)
{
  v2 = 0x745F646E75666572;
  if (*v1)
  {
    v2 = 0x745F6C616E676973;
  }

  v3 = 0xED0000736E656B6FLL;
  if (*v1)
  {
    v3 = 0xEC0000006E656B6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DD95369C()
{
  if (*v0)
  {
    return 0x745F6C616E676973;
  }

  else
  {
    return 0x745F646E75666572;
  }
}

uint64_t sub_1DD9536EC@<X0>(char *a3@<X8>)
{
  v4 = sub_1DDA151E0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DD953750(uint64_t a1)
{
  v2 = sub_1DD957080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD95378C(uint64_t a1)
{
  v2 = sub_1DD957080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD9537C8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DD956E7C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DD9537F8()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1DDA15570();
  sub_1DD96C2BC(v4, v1);
  sub_1DDA15590();
  if (v2)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD953878(uint64_t a1)
{
  v2 = v1[2];
  sub_1DD96C2BC(a1, *v1);
  if (!v2)
  {
    return sub_1DDA15590();
  }

  sub_1DDA15590();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD9538F4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  sub_1DDA15570();
  sub_1DD96C2BC(v5, v2);
  sub_1DDA15590();
  if (v3)
  {
    sub_1DDA14BC0();
  }

  return sub_1DDA155B0();
}

uint64_t sub_1DD953970(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1DD969360(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_1DDA15440() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD9539F8()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DD953A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DDA15440() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DDA15440();

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

uint64_t sub_1DD953B00(uint64_t a1)
{
  v2 = sub_1DD957A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD953B3C(uint64_t a1)
{
  v2 = sub_1DD957A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD953B78@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DD957854(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DD953BB4(uint64_t a1)
{
  sub_1DDA14BC0();

  return sub_1DDA14BC0();
}

uint64_t sub_1DD953CA0(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  sub_1DDA14BC0();
  return sub_1DDA155B0();
}

uint64_t sub_1DD953D98(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if ((sub_1DD965130(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1DDA15440();
}

unint64_t sub_1DD953E2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD957C94(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DD953E5C(unint64_t *a1@<X8>)
{
  v2 = 0xEF726F746172656ELL;
  v3 = 0x65675F6567616D69;
  v4 = 0x80000001DDA26910;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x6C70755F656C6966;
    v4 = 0xEB0000000064616FLL;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001DDA268E0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DD953F58()
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD954038(uint64_t a1)
{
  sub_1DDA14BC0();
}

uint64_t sub_1DD954104(uint64_t a1)
{
  sub_1DDA15570();
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

unsigned __int8 *sub_1DD9541E0(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v6 = result;
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_18;
    }

    v8 = HIDWORD(a3) - a3;
LABEL_10:
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v8))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v8) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  LODWORD(v8) = BYTE6(a4);
LABEL_14:
  v11 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DD908F70(0, *(v11 + 2), 0, v11);
  }

  *a5 = v11;
  return CC_SHA256(v6, v8, v11 + 32);
}

uint64_t sub_1DD9542B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1DDA13320();
    if (v10)
    {
      v11 = sub_1DDA13350();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1DDA13340();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1DDA13320();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1DDA13350();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1DDA13340();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1DD9544E8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1DD954B40(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1DD909D28(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1DD9542B8(v13, a3, a4, &v12);
  v10 = v4;
  sub_1DD909D28(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void sub_1DD954678(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_1DD96AC38(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1DD9C838C(v15, v4 & 1);
    v10 = sub_1DD96AC38(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1DDA15500();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1DD9C9D00();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1DDA15070();
    MEMORY[0x1E12B7AB0](0xD00000000000001BLL, 0x80000001DDA27C50);
    sub_1DDA15160();
    MEMORY[0x1E12B7AB0](39, 0xE100000000000000);
    sub_1DDA15180();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_1DD96AC38(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_1DD9C838C(v32, 1);
        v28 = sub_1DD96AC38(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1DD954A28(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD954ADC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1DD954B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1DDA13320();
  v11 = result;
  if (result)
  {
    result = sub_1DDA13350();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1DDA13340();
  sub_1DD9542B8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1DD954BF8(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1DD909CD4(a3, a4);
          return sub_1DD9544E8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD954D60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE69100]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_1DDA14BE0();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x1EEE69100]();
}

uint64_t sub_1DD954E10(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v47 = a5;
  v48 = v7;
  v46 = v11;
  while (v10)
  {
    v57 = a4;
    v18 = v12;
LABEL_14:
    v20 = (v18 << 10) | (16 * __clz(__rbit64(v10)));
    v21 = (*(a1 + 48) + v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(a1 + 56) + v20);
    v25 = *v24;
    v26 = v24[1];
    v56[0] = v22;
    v56[1] = v23;
    v56[2] = v25;
    v56[3] = v26;

    a2(&v52, v56);

    v28 = v52;
    v27 = v53;
    v29 = v55;
    v51 = v54;
    v30 = *a5;
    v32 = sub_1DD96AC38(v52, v53);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    v36 = v31;
    if (*(v30 + 24) >= v35)
    {
      if ((v57 & 1) == 0)
      {
        sub_1DD9C9D00();
      }
    }

    else
    {
      sub_1DD9C838C(v35, v57 & 1);
      v37 = sub_1DD96AC38(v28, v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v32 = v37;
    }

    v10 &= v10 - 1;
    v39 = *a5;
    if (v36)
    {
      v13 = 16 * v32;
      v14 = (v39[7] + 16 * v32);
      v16 = *v14;
      v15 = v14[1];

      v17 = (v39[7] + v13);
      *v17 = v16;
      v17[1] = v15;
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v51;
      v41[1] = v29;
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v39[2] = v44;
    }

    a4 = 1;
    v12 = v18;
    a5 = v47;
    v7 = v48;
    v11 = v46;
  }

  v19 = v12;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      sub_1DD912130(a1);
    }

    v10 = *(v7 + 8 * v18);
    ++v19;
    if (v10)
    {
      v57 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DDA15500();
  __break(1u);
  return result;
}

uint64_t sub_1DD955134()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DD9551CC;

  return sub_1DD94D048(v2, v3);
}

uint64_t sub_1DD9551CC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1DD9552D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DDA14B60();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DDA13840();
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DDA13830();
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  if (sub_1DD94E4B0() != 2)
  {
    if ([a1 statusCode] == 429)
    {
      sub_1DDA13800();
      v12 = [a1 allHeaderFields];
      v13 = sub_1DDA14AA0();

      strcpy(v51, "x-request-id");
      BYTE5(v51[1]) = 0;
      HIWORD(v51[1]) = -5120;
      sub_1DDA15020();
      if (*(v13 + 16) && (v14 = sub_1DD96ADEC(v58), (v15 & 1) != 0))
      {
        sub_1DD9410C8(*(v13 + 56) + 32 * v14, &v52);
        sub_1DD955FA0(v58);

        if (swift_dynamicCast())
        {
          v16 = v51[0];
          v47 = v51[1];
          v48 = sub_1DDA13820();
          v18 = v17;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v52 = *v18;
          *v18 = 0x8000000000000000;
          sub_1DD9CB364(v16, v47, 0xD000000000000010, 0x80000001DDA27CE0, isUniquelyReferenced_nonNull_native);
          *v18 = v52;
          v48(v58, 0);
        }
      }

      else
      {

        sub_1DD955FA0(v58);
      }

      v25 = v49;
      (*(v50 + 16))(v7, v10, v8);
      (*(v25 + 104))(v7, *MEMORY[0x1E69DA4A8], v5);
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      v26 = sub_1DDA14810();
      __swift_project_value_buffer(v26, qword_1ECDA20F8);
      v27 = sub_1DDA147F0();
      v28 = sub_1DDA14EE0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1DD8F8000, v27, v28, "Rate limited!", v29, 2u);
        MEMORY[0x1E12B8CE0](v29, -1, -1);
      }

      sub_1DD9565F0(&qword_1ECD82F58, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
      v11 = swift_allocError();
      (*(v25 + 32))(v30, v7, v5);
      (*(v50 + 8))(v10, v8);
    }

    else
    {
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      v20 = sub_1DDA14810();
      __swift_project_value_buffer(v20, qword_1ECDA20F8);
      v21 = a1;
      v22 = sub_1DDA147F0();
      v23 = sub_1DDA14F00();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = [v21 statusCode];

        _os_log_impl(&dword_1DD8F8000, v22, v23, "Received http status code: %ld", v24, 0xCu);
        MEMORY[0x1E12B8CE0](v24, -1, -1);
      }

      else
      {

        v22 = v21;
      }

      sub_1DDA13190();
      swift_allocObject();
      sub_1DDA13180();
      sub_1DD956064();
      sub_1DDA13170();

      v55 = v58[3];
      v56 = v58[4];
      v57 = v59;
      v52 = v58[0];
      v53 = v58[1];
      v54 = v58[2];
      sub_1DD9560B8(&v52, v51);
      v31 = sub_1DDA147F0();
      v32 = sub_1DDA14EE0();
      sub_1DD9560F0(&v52);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v51[0] = v34;
        *v33 = 136446466;
        v35 = v53;

        v36 = sub_1DD93FA54(v35, *(&v35 + 1), v51);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2082;
        if (*(&v54 + 1))
        {
          v37 = v54;
        }

        else
        {
          v37 = 7104878;
        }

        if (*(&v54 + 1))
        {
          v38 = *(&v54 + 1);
        }

        else
        {
          v38 = 0xE300000000000000;
        }

        v39 = sub_1DD93FA54(v37, v38, v51);

        *(v33 + 14) = v39;
        _os_log_impl(&dword_1DD8F8000, v31, v32, "Received error response with type: %{public}s, code: %{public}s", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12B8CE0](v34, -1, -1);
        MEMORY[0x1E12B8CE0](v33, -1, -1);
      }

      sub_1DD956120();
      v11 = swift_allocError();
      v40 = v53;
      *v41 = v52;
      *(v41 + 16) = v40;
      v42 = v55;
      v43 = v56;
      v44 = v54;
      *(v41 + 80) = v57;
      *(v41 + 48) = v42;
      *(v41 + 64) = v43;
      *(v41 + 32) = v44;
    }
  }

  return v11;
}

uint64_t sub_1DD955C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD955C80, 0, 0);
}

uint64_t sub_1DD955C80()
{
  if (sub_1DD94E4B0() == 2)
  {
    v1 = v0[1];

    return v1(0);
  }

  else
  {
    v4 = (v0[3] + *v0[3]);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1DD955DB4;

    return v4();
  }
}

uint64_t sub_1DD955DB4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8(v2);
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DD955F14, 0, 0);
  }
}

uint64_t sub_1DD955F14()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = sub_1DD9552D8(*(v0 + 16), v2, v1);
  sub_1DD909D28(v2, v1);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1DD955FF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD831A8, &qword_1DDA19718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD956064()
{
  result = qword_1ECD831B0;
  if (!qword_1ECD831B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD831B0);
  }

  return result;
}

unint64_t sub_1DD956120()
{
  result = qword_1ECD831B8;
  if (!qword_1ECD831B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD831B8);
  }

  return result;
}

uint64_t sub_1DD956174(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DD9165BC;

  return sub_1DD94E544(a1, a2, v6, v7, v9, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD956254(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DD9165BC;

  return sub_1DD94EF54(a1, v1);
}

uint64_t sub_1DD9562F0(int64_t a1)
{
  v2 = sub_1DDA13250();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    v23 = result;
    v7 = sub_1DDA14CC0();
    *(v7 + 16) = a1;
    bzero((v7 + 32), a1);
    SecRandomCopyBytes(*MEMORY[0x1E697B308], a1, (v7 + 32));
    v8 = sub_1DD90D1C8(v7);
    v10 = v9;

    v28 = sub_1DDA13580();
    v29 = v11;
    v26 = 43;
    v27 = 0xE100000000000000;
    v24 = 45;
    v25 = 0xE100000000000000;
    sub_1DD9313D4();
    v12 = sub_1DDA14F80();
    v14 = v13;

    v28 = v12;
    v29 = v14;
    v26 = 47;
    v27 = 0xE100000000000000;
    v24 = 95;
    v25 = 0xE100000000000000;
    v15 = sub_1DDA14F80();
    v17 = v16;

    v28 = v15;
    v29 = v17;
    sub_1DDA13240();
    v18 = sub_1DDA14F70();
    v20 = v19;
    (*(v3 + 8))(v6, v23);

    v28 = v18;
    v29 = v20;
    v26 = 61;
    v27 = 0xE100000000000000;
    v24 = 0;
    v25 = 0xE000000000000000;
    v21 = sub_1DDA14F80();

    sub_1DD909D28(v8, v10);
    return v21;
  }

  return result;
}

uint64_t sub_1DD9565A8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1DD9565F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_5Anvil10HTTPClientV29PrivacyPassRedemptionResponseVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD956660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1DD9566A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DD956720()
{
  result = qword_1ECD83220;
  if (!qword_1ECD83220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83220);
  }

  return result;
}

unint64_t sub_1DD956774(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DD9567C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83268, &qword_1DDA19A08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD957254();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v42) = 0;
  v10 = sub_1DDA15280();
  v53 = v11;
  LOBYTE(v42) = 1;
  *&v35 = sub_1DDA15280();
  *(&v35 + 1) = v12;
  LOBYTE(v36) = 3;
  sub_1DD9572A8();
  sub_1DDA15260();
  v34 = v42;
  v33 = v43;
  v32 = v44;
  LOBYTE(v42) = 4;
  v30 = sub_1DDA15220();
  v31 = v13;
  LOBYTE(v42) = 2;
  v14 = sub_1DDA15250();
  if (v15)
  {
    LOBYTE(v42) = 2;
    v16 = sub_1DDA15220();
  }

  else
  {
    v42 = v14;
    v16 = sub_1DDA15400();
  }

  v18 = v16;
  v19 = v8;
  v20 = v17;
  (*(v6 + 8))(v19, v5);
  v28 = v18;
  v29 = v20;
  *&v36 = v10;
  v21 = v53;
  *(&v36 + 1) = v53;
  v22 = *(&v35 + 1);
  v37 = v35;
  *&v38 = v18;
  *(&v38 + 1) = v20;
  v23 = v34;
  v24 = v33;
  *&v39 = v34;
  *(&v39 + 1) = v33;
  v25 = v32;
  *&v40 = v32;
  *(&v40 + 1) = v30;
  v41 = v31;
  sub_1DD9572FC(&v36, &v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42 = v10;
  v43 = v21;
  v44 = v35;
  v45 = v22;
  v46 = v28;
  v47 = v29;
  v48 = v23;
  v49 = v24;
  v50 = v25;
  v51 = v30;
  v52 = v31;
  result = sub_1DD957334(&v42);
  v26 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v26;
  *(a2 + 64) = v40;
  *(a2 + 80) = v41;
  v27 = v37;
  *a2 = v36;
  *(a2 + 16) = v27;
  return result;
}

uint64_t sub_1DD956C98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83250, &qword_1DDA19A00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD9571AC();
  sub_1DDA15620();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1DD957200();
  sub_1DDA152C0();
  (*(v6 + 8))(v8, v5);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12 = v18;
  v13 = v19;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v10 = v15;
  *(a2 + 32) = v14;
  *(a2 + 48) = v10;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  v11 = v13;
  *a2 = v12;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1DD956E7C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83228, &qword_1DDA199F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1DD957080();
  sub_1DDA15620();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83238, &qword_1DDA199F8);
    v9[7] = 0;
    sub_1DD9570D4();
    sub_1DDA152C0();
    v7 = v10;
    v9[6] = 1;
    sub_1DDA15220();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1DD957080()
{
  result = qword_1ECD83230;
  if (!qword_1ECD83230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83230);
  }

  return result;
}

unint64_t sub_1DD9570D4()
{
  result = qword_1ECD83240;
  if (!qword_1ECD83240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83238, &qword_1DDA199F8);
    sub_1DD957158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83240);
  }

  return result;
}

unint64_t sub_1DD957158()
{
  result = qword_1ECD83248;
  if (!qword_1ECD83248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83248);
  }

  return result;
}

unint64_t sub_1DD9571AC()
{
  result = qword_1ECD83258;
  if (!qword_1ECD83258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83258);
  }

  return result;
}

unint64_t sub_1DD957200()
{
  result = qword_1ECD83260;
  if (!qword_1ECD83260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83260);
  }

  return result;
}

unint64_t sub_1DD957254()
{
  result = qword_1ECD83270;
  if (!qword_1ECD83270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83270);
  }

  return result;
}

unint64_t sub_1DD9572A8()
{
  result = qword_1ECD83278;
  if (!qword_1ECD83278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83278);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPClient.ErrorResponse.Error.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPClient.ErrorResponse.Error.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DD9574E8()
{
  result = qword_1ECD83280;
  if (!qword_1ECD83280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83280);
  }

  return result;
}

unint64_t sub_1DD957540()
{
  result = qword_1ECD83288;
  if (!qword_1ECD83288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83288);
  }

  return result;
}

unint64_t sub_1DD957598()
{
  result = qword_1ECD83290;
  if (!qword_1ECD83290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83290);
  }

  return result;
}

unint64_t sub_1DD9575F0()
{
  result = qword_1ECD83298;
  if (!qword_1ECD83298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83298);
  }

  return result;
}

unint64_t sub_1DD957648()
{
  result = qword_1ECD832A0;
  if (!qword_1ECD832A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832A0);
  }

  return result;
}

unint64_t sub_1DD9576A0()
{
  result = qword_1ECD832A8;
  if (!qword_1ECD832A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832A8);
  }

  return result;
}

unint64_t sub_1DD9576F8()
{
  result = qword_1ECD832B0;
  if (!qword_1ECD832B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832B0);
  }

  return result;
}

unint64_t sub_1DD957750()
{
  result = qword_1ECD832B8;
  if (!qword_1ECD832B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832B8);
  }

  return result;
}

unint64_t sub_1DD9577A8()
{
  result = qword_1ECD832C0;
  if (!qword_1ECD832C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832C0);
  }

  return result;
}

unint64_t sub_1DD957800()
{
  result = qword_1ECD832C8;
  if (!qword_1ECD832C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832C8);
  }

  return result;
}

uint64_t sub_1DD957854(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD832D0, &qword_1DDA19E78);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1DD957A18();
  sub_1DDA15620();
  if (!v1)
  {
    v9[14] = 0;
    sub_1DD957A6C();
    sub_1DDA152C0();
    v7 = v9[15];
    v9[13] = 1;
    sub_1DDA15280();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1DD957A18()
{
  result = qword_1ECD832D8;
  if (!qword_1ECD832D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832D8);
  }

  return result;
}

unint64_t sub_1DD957A6C()
{
  result = qword_1ECD832E0;
  if (!qword_1ECD832E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832E0);
  }

  return result;
}

unint64_t sub_1DD957AE4()
{
  result = qword_1ECD832E8;
  if (!qword_1ECD832E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832E8);
  }

  return result;
}

unint64_t sub_1DD957B3C()
{
  result = qword_1ECD832F0;
  if (!qword_1ECD832F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832F0);
  }

  return result;
}

unint64_t sub_1DD957B94()
{
  result = qword_1ECD832F8;
  if (!qword_1ECD832F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832F8);
  }

  return result;
}

unint64_t sub_1DD957BEC()
{
  result = qword_1ECD83300;
  if (!qword_1ECD83300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83300);
  }

  return result;
}

unint64_t sub_1DD957C40()
{
  result = qword_1ECD83308;
  if (!qword_1ECD83308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83308);
  }

  return result;
}

unint64_t sub_1DD957C94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA151E0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

off_t sub_1DD957CEC()
{
  v7 = *MEMORY[0x1E69E9840];
  memset(&v6, 0, sizeof(v6));
  if (!fstat(*(v0 + 16), &v6))
  {
    return v6.st_size;
  }

  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20C8);
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14EE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Unable to access file size", v4, 2u);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  return -1;
}

uint64_t sub_1DD957E2C()
{
  close(v0[4]);
  v1 = OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_url;
  v2 = sub_1DDA134E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for ImmutableFileHandle(uint64_t a1)
{
  result = qword_1ECD83310;
  if (!qword_1ECD83310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD957F34(uint64_t a1)
{
  result = sub_1DDA134E0();
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

uint64_t sub_1DD957FE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83328, qword_1DDA1A108);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtC5Anvil28BlackPowderInferenceProvider____lazy_storage___handler;
  swift_beginAccess();
  sub_1DD960C28(v1 + v10, v9);
  v11 = sub_1DDA13BA0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1DD90D378(v9, &qword_1ECD83328, qword_1DDA1A108);
  v34 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83348, &qword_1DDA1A208);
  v13 = sub_1DDA14B70();
  v32 = v14;
  v33 = v13;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v28 = swift_allocObject();
  *(v28 + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v25 = swift_allocObject();
  *(v25 + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v15 = swift_allocObject();
  v23 = a1;
  *(v15 + 16) = v1;
  v26 = v11;
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83350, &unk_1DDA1A250);
  v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  sub_1DD9613D0(&qword_1ECD83358, &qword_1ECD83350, &unk_1DDA1A250);
  sub_1DD9613D0(&qword_1ECD83360, &qword_1ECD82D28, &unk_1DDA18600);
  v16 = v23;
  sub_1DDA13B90();
  swift_unownedRelease();
  swift_unownedRelease();
  swift_unownedRelease();
  swift_unownedRelease();
  v17 = v24;
  v18 = v26;
  (*(v12 + 16))(v24, v16, v26);
  v19 = v17;
  (*(v12 + 56))(v17, 0, 1, v18);
  v20 = v27;
  swift_beginAccess();
  sub_1DD961008(v19, v1 + v20);
  return swift_endAccess();
}

uint64_t sub_1DD9584B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD9584D8, 0, 0);
}

uint64_t sub_1DD9584D8()
{
  v1 = v0[5];
  swift_unownedRetainStrong();
  v0[6] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DD958598;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1DD9586D4(v5, v3, v4);
}

uint64_t sub_1DD958598()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD96161C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DD9586D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83368, &qword_1DDA1A268);
  v4[6] = swift_task_alloc();
  v5 = sub_1DDA13EE0();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1DDA138A0();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1DDA136B0();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_1DDA13FF0();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9588E4, 0, 0);
}

uint64_t sub_1DD9588E4()
{
  v45 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[4];
  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA20C8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14F00();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  if (v8)
  {
    v41 = v0[16];
    v12 = v0[14];
    v13 = v0[15];
    v14 = v0[13];
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v15 = 136315138;
    v42 = v7;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1DDA15400();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v41);
    v19 = sub_1DD93FA54(v16, v18, &v44);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DD8F8000, v6, v42, "Received count tokens request with identifier: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1E12B8CE0](v43, -1, -1);
    MEMORY[0x1E12B8CE0](v15, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];
  v23 = sub_1DDA13FE0();
  v25 = v24;
  v26 = sub_1DDA13FD0();
  v28 = v27;
  sub_1DDA139E0();
  v29 = sub_1DDA13890();
  (*(v21 + 8))(v20, v22);
  v30 = sub_1DD9C13D0(v26, v28, v29);
  v32 = v31;
  LOBYTE(v28) = v33;
  sub_1DD95FD2C(v23, v25, v30, v31, v33 & 1);
  sub_1DD928DD4(v30, v32, v28 & 1);

  v35 = v0[8];
  v34 = v0[9];
  v36 = v0[7];
  sub_1DDA139D0();
  sub_1DD928688(v34);
  (*(v35 + 8))(v34, v36);
  v38 = v0[6];
  v39 = sub_1DDA13ED0();
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  sub_1DDA13A90();

  v40 = v0[1];

  return v40();
}

uint64_t sub_1DD958D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD958D58, 0, 0);
}

uint64_t sub_1DD958D58()
{
  v1 = v0[5];
  swift_unownedRetainStrong();
  v0[6] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DD958598;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1DD958E18(v5, v3, v4);
}

uint64_t sub_1DD958E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83008, &qword_1DDA1A280);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  v4[7] = swift_task_alloc();
  v5 = sub_1DDA13A80();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v4[13] = swift_task_alloc();
  v6 = sub_1DDA139B0();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = sub_1DDA138A0();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = sub_1DDA136B0();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v9 = sub_1DDA13FF0();
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9591A0, 0, 0);
}

uint64_t sub_1DD9591A0()
{
  v73 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[4];
  v5 = sub_1DDA14810();
  v0[31] = __swift_project_value_buffer(v5, qword_1ECDA20C8);
  v6 = *(v3 + 16);
  v0[32] = v6;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14F00();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  if (v9)
  {
    v13 = v0[26];
    v14 = v0[21];
    v15 = v0[22];
    v16 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v72 = v70;
    *v16 = 136315138;
    v68 = v11;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v17 = sub_1DDA15400();
    v66 = v8;
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v68);
    v21 = sub_1DD93FA54(v17, v19, &v72);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1DD8F8000, v7, v66, "Received complete prompt request with identifier: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1E12B8CE0](v70, -1, -1);
    MEMORY[0x1E12B8CE0](v16, -1, -1);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[34] = v20;
  v23 = v0[19];
  v22 = v0[20];
  v24 = v0[18];
  v25 = sub_1DDA13FE0();
  v27 = v26;
  v28 = sub_1DDA13FD0();
  v30 = v29;
  sub_1DDA13B30();
  v31 = sub_1DDA13890();
  (*(v23 + 8))(v22, v24);
  v32 = sub_1DD9C13D0(v28, v30, v31);
  v34 = v33;
  LOBYTE(v30) = v35;
  v0[35] = sub_1DD95FD2C(v25, v27, v32, v33, v35 & 1);
  sub_1DD928DD4(v32, v34, v30 & 1);

  v36 = v0[24];
  v37 = v0[25];
  v38 = v0[22];
  v39 = v0[21];
  v62 = v0[12];
  v63 = v0[11];
  v40 = sub_1DDA13FD0();
  v69 = v41;
  v71 = v40;
  v0[36] = v41;
  sub_1DDA13FC0();
  v42 = sub_1DDA13690();
  v65 = v43;
  v67 = v42;
  v0[37] = v43;
  v44 = *(v38 + 8);
  v0[38] = v44;
  v0[39] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v37, v39);
  sub_1DDA13FB0();
  v64 = sub_1DDA13690();
  v46 = v45;
  v0[40] = v45;
  v44(v36, v39);
  sub_1DDA13FA0();
  sub_1DDA13F90();
  v47 = sub_1DDA13F30();
  (*(*(v47 - 8) + 56))(v62, 1, 1, v47);
  sub_1DDA13B20();
  v48 = sub_1DDA13EE0();
  (*(*(v48 - 8) + 56))(v63, 0, 1, v48);
  sub_1DDA13AE0();
  v49 = sub_1DDA13B10();
  v50 = sub_1DD9610EC(v49);
  v0[41] = v50;

  sub_1DDA13AF0();
  v51 = sub_1DDA13B40();
  v0[42] = v51;
  sub_1DDA13B00();
  v52 = swift_task_alloc();
  v0[43] = v52;
  *v52 = v0;
  v52[1] = sub_1DD9597D0;
  v53 = v0[23];
  v54 = v0[17];
  v56 = v0[12];
  v55 = v0[13];
  v58 = v0[10];
  v57 = v0[11];
  v60 = v0[6];
  v59 = v0[7];
  v81 = v51;
  v82 = v60;
  v79 = v50;
  v80 = v59;
  v77 = v57;
  v78 = v58;
  v75 = v55;
  v76 = v56;

  return sub_1DD923798(v54, v71, v69, v67, v65, v64, v46, v53);
}

uint64_t sub_1DD9597D0()
{
  v14 = *(*v1 + 304);
  v13 = *(*v1 + 184);
  v12 = *(*v1 + 168);
  v11 = *(*v1 + 104);
  v10 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v8 = *(*v1 + 80);
  v2 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 352) = v0;

  sub_1DD90D378(v4, &qword_1ECD83008, &qword_1DDA1A280);
  sub_1DD90D378(v3, &qword_1ECD82FC0, &qword_1DDA18998);
  (*(v2 + 8))(v8, v7);
  sub_1DD90D378(v9, &qword_1ECD82FC8, &qword_1DDA189A0);
  sub_1DD90D378(v10, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90D378(v11, &qword_1ECD82F60, &qword_1DDA18890);
  v14(v13, v12);
  if (v0)
  {
    v5 = sub_1DD959E8C;
  }

  else
  {
    v5 = sub_1DD959B3C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD959B3C()
{
  v31 = v0;
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[4];
  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  sub_1DDA13B50();
  v1(v2, v4, v3);
  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14F00();
  if (os_log_type_enabled(v5, v6))
  {
    v25 = v0[38];
    v26 = v0[34];
    v7 = v0[29];
    v8 = v0[26];
    v24 = v0[27];
    v9 = v0[21];
    v27 = v0[15];
    v28 = v0[14];
    v29 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_1DDA15400();
    v14 = v13;
    v25(v8, v9);
    v26(v7, v24);
    v15 = sub_1DD93FA54(v12, v14, &v30);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1DD8F8000, v5, v6, "Finished complete prompt request with identifier: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
    MEMORY[0x1E12B8CE0](v10, -1, -1);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v16 = v0[34];
    v17 = v0[29];
    v18 = v0[27];
    v19 = v0[17];
    v20 = v0[14];
    v21 = v0[15];

    v16(v17, v18);
    (*(v21 + 8))(v19, v20);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1DD959E8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD959FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD959FDC, 0, 0);
}

uint64_t sub_1DD959FDC()
{
  v1 = v0[5];
  swift_unownedRetainStrong();
  v0[6] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DD958598;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1DD95A09C(v5, v3, v4);
}

uint64_t sub_1DD95A09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83008, &qword_1DDA1A280);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  v4[7] = swift_task_alloc();
  v5 = sub_1DDA13A80();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v4[13] = swift_task_alloc();
  v6 = sub_1DDA139B0();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v7 = sub_1DDA138A0();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = sub_1DDA136B0();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v9 = sub_1DDA13FF0();
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD95A424, 0, 0);
}

uint64_t sub_1DD95A424()
{
  v71 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[4];
  v5 = sub_1DDA14810();
  v0[31] = __swift_project_value_buffer(v5, qword_1ECDA20C8);
  v6 = *(v3 + 16);
  v0[32] = v6;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14F00();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  if (v9)
  {
    v13 = v0[26];
    v14 = v0[21];
    v15 = v0[22];
    v16 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v70 = v68;
    *v16 = 136315138;
    v66 = v11;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v17 = sub_1DDA15400();
    v64 = v8;
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v66);
    v21 = sub_1DD93FA54(v17, v19, &v70);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1DD8F8000, v7, v64, "Received complete prompt template request with identifier: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x1E12B8CE0](v68, -1, -1);
    MEMORY[0x1E12B8CE0](v16, -1, -1);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[34] = v20;
  v23 = v0[19];
  v22 = v0[20];
  v24 = v0[18];
  v25 = sub_1DDA13FE0();
  v27 = v26;
  v28 = sub_1DDA13FD0();
  v30 = v29;
  sub_1DDA13C50();
  v31 = sub_1DDA13890();
  (*(v23 + 8))(v22, v24);
  v32 = sub_1DD9C13D0(v28, v30, v31);
  v34 = v33;
  LOBYTE(v30) = v35;
  v0[35] = sub_1DD95FD2C(v25, v27, v32, v33, v35 & 1);
  sub_1DD928DD4(v32, v34, v30 & 1);

  v36 = v0[24];
  v37 = v0[25];
  v38 = v0[22];
  v39 = v0[21];
  v61 = v0[12];
  v40 = sub_1DDA13FD0();
  v67 = v41;
  v69 = v40;
  v0[36] = v41;
  sub_1DDA13FC0();
  v42 = sub_1DDA13690();
  v63 = v43;
  v65 = v42;
  v0[37] = v43;
  v44 = *(v38 + 8);
  v0[38] = v44;
  v0[39] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v37, v39);
  sub_1DDA13FB0();
  v62 = sub_1DDA13690();
  v46 = v45;
  v0[40] = v45;
  v44(v36, v39);
  sub_1DDA13FA0();
  sub_1DDA13F90();
  sub_1DDA13BF0();
  v47 = sub_1DDA13F30();
  (*(*(v47 - 8) + 56))(v61, 0, 1, v47);
  sub_1DDA13C40();
  sub_1DDA13C00();
  v48 = sub_1DDA13C30();
  v49 = sub_1DD9610EC(v48);
  v0[41] = v49;

  sub_1DDA13C10();
  v50 = sub_1DDA13C60();
  v0[42] = v50;
  sub_1DDA13C20();
  v51 = swift_task_alloc();
  v0[43] = v51;
  *v51 = v0;
  v51[1] = sub_1DD95AA1C;
  v52 = v0[23];
  v53 = v0[17];
  v55 = v0[12];
  v54 = v0[13];
  v57 = v0[10];
  v56 = v0[11];
  v59 = v0[6];
  v58 = v0[7];
  v79 = v50;
  v80 = v59;
  v77 = v49;
  v78 = v58;
  v75 = v56;
  v76 = v57;
  v73 = v54;
  v74 = v55;

  return sub_1DD923798(v53, v69, v67, v65, v63, v62, v46, v52);
}

uint64_t sub_1DD95AA1C()
{
  v14 = *(*v1 + 304);
  v13 = *(*v1 + 184);
  v12 = *(*v1 + 168);
  v11 = *(*v1 + 104);
  v10 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v8 = *(*v1 + 80);
  v2 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 352) = v0;

  sub_1DD90D378(v4, &qword_1ECD83008, &qword_1DDA1A280);
  sub_1DD90D378(v3, &qword_1ECD82FC0, &qword_1DDA18998);
  (*(v2 + 8))(v8, v7);
  sub_1DD90D378(v9, &qword_1ECD82FC8, &qword_1DDA189A0);
  sub_1DD90D378(v10, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90D378(v11, &qword_1ECD82F60, &qword_1DDA18890);
  v14(v13, v12);
  if (v0)
  {
    v5 = sub_1DD961618;
  }

  else
  {
    v5 = sub_1DD95AD88;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD95AD88()
{
  v31 = v0;
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[4];
  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  sub_1DDA13B50();
  v1(v2, v4, v3);
  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14F00();
  if (os_log_type_enabled(v5, v6))
  {
    v25 = v0[38];
    v26 = v0[34];
    v7 = v0[29];
    v8 = v0[26];
    v24 = v0[27];
    v9 = v0[21];
    v27 = v0[15];
    v28 = v0[14];
    v29 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_1DDA15400();
    v14 = v13;
    v25(v8, v9);
    v26(v7, v24);
    v15 = sub_1DD93FA54(v12, v14, &v30);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1DD8F8000, v5, v6, "Finished complete prompt template request with identifier: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
    MEMORY[0x1E12B8CE0](v10, -1, -1);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v16 = v0[34];
    v17 = v0[29];
    v18 = v0[27];
    v19 = v0[17];
    v20 = v0[14];
    v21 = v0[15];

    v16(v17, v18);
    (*(v21 + 8))(v19, v20);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1DD95B0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83378, &qword_1DDA1A278);
  v113 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83008, &qword_1DDA1A280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v107 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v94 - v10;
  v106 = sub_1DDA13A80();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v101 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v100 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v115 = &v94 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v122 = &v94 - v17;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  MEMORY[0x1EEE9AC00](v99);
  v114 = &v94 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83380, &qword_1DDA1A288);
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v103 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v94 - v22;
  v23 = sub_1DDA138A0();
  v119 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v118 = (&v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1DDA136B0();
  v26 = *(v25 - 8);
  v123 = v25;
  v124 = v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v121 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v98 = &v94 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v117 = &v94 - v31;
  v32 = sub_1DDA13FF0();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v36 = sub_1DDA14810();
  __swift_project_value_buffer(v36, qword_1ECDA20C8);
  (*(v33 + 16))(v35, a2, v32);
  v37 = sub_1DDA147F0();
  v38 = sub_1DDA14F00();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v97 = a1;
    v40 = v39;
    v41 = swift_slowAlloc();
    v116 = a3;
    v94 = v41;
    v125 = v41;
    *v40 = 136315138;
    v95 = v23;
    v42 = v117;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v43 = v123;
    v44 = sub_1DDA15400();
    v96 = a2;
    v46 = v45;
    v47 = v42;
    v23 = v95;
    (*(v124 + 8))(v47, v43);
    (*(v33 + 8))(v35, v32);
    v48 = sub_1DD93FA54(v44, v46, &v125);

    *(v40 + 4) = v48;
    _os_log_impl(&dword_1DD8F8000, v37, v38, "Received streaming complete prompt request with identifier: %s", v40, 0xCu);
    v49 = v94;
    __swift_destroy_boxed_opaque_existential_1(v94);
    a3 = v116;
    MEMORY[0x1E12B8CE0](v49, -1, -1);
    MEMORY[0x1E12B8CE0](v40, -1, -1);
  }

  else
  {

    (*(v33 + 8))(v35, v32);
  }

  v50 = sub_1DDA13FE0();
  v52 = v51;
  v53 = sub_1DDA13FD0();
  v55 = v54;
  v56 = v118;
  sub_1DDA13B30();
  v57 = sub_1DDA13890();
  (*(v119 + 1))(v56, v23);
  v58 = sub_1DD9C13D0(v53, v55, v57);
  v60 = v59;
  LOBYTE(v56) = v61 & 1;
  v120 = sub_1DD95FD2C(v50, v52, v58, v59, v61 & 1);
  sub_1DD928DD4(v58, v60, v56);

  v62 = sub_1DDA13FD0();
  v118 = v63;
  v64 = v117;
  sub_1DDA13FC0();
  v65 = sub_1DDA13690();
  v112 = v66;
  v113 = v65;
  v67 = v123;
  v69 = v124 + 8;
  v68 = *(v124 + 8);
  v68(v64, v123);
  v124 = v69;
  v119 = v68;
  v70 = v98;
  sub_1DDA13FB0();
  v117 = sub_1DDA13690();
  v111 = v71;
  v68(v70, v67);
  sub_1DDA13FA0();
  sub_1DDA13F90();
  v72 = sub_1DDA13F30();
  v73 = v115;
  (*(*(v72 - 8) + 56))();
  v74 = v100;
  sub_1DDA13B20();
  v75 = sub_1DDA13EE0();
  (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
  v76 = v101;
  sub_1DDA13AE0();
  v77 = sub_1DDA13B10();
  v78 = sub_1DD9610EC(v77);

  v79 = v105;
  sub_1DDA13AF0();
  v80 = sub_1DDA13B40();
  v116 = a3;
  v81 = v80;
  v82 = v107;
  sub_1DDA13B00();
  sub_1DD9225A0(v62, v118, v113, v112, v117, v111, v121, v122, v114, v73, v74, v76, v78, v79, v81, v82);

  sub_1DD90D378(v82, &qword_1ECD83008, &qword_1DDA1A280);
  sub_1DD90D378(v79, &qword_1ECD82FC0, &qword_1DDA18998);
  (*(v104 + 8))(v76, v106);
  sub_1DD90D378(v74, &qword_1ECD82FC8, &qword_1DDA189A0);
  sub_1DD90D378(v115, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90D378(v122, &qword_1ECD82F60, &qword_1DDA18890);
  v119(v121, v123);
  sub_1DDA13BD0();
  sub_1DD9613D0(&qword_1ECD83020, &qword_1ECD82FD8, &qword_1DDA189B0);
  v83 = v108;
  sub_1DDA15170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83388, &qword_1DDA1A298);
  v84 = swift_allocBox();
  v86 = v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83390, &qword_1DDA1A2A0);
  (*(*(v87 - 8) + 56))(v86, 1, 1, v87);
  v89 = v109;
  v88 = v110;
  v90 = v103;
  (*(v109 + 16))(v103, v83, v110);
  v91 = (*(v89 + 80) + 24) & ~*(v89 + 80);
  v92 = swift_allocObject();
  *(v92 + 16) = v84;
  (*(v89 + 32))(v92 + v91, v90, v88);

  sub_1DDA14E30();

  (*(v89 + 8))(v83, v88);
}

uint64_t sub_1DD95BE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v124 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83378, &qword_1DDA1A278);
  v112 = *(v5 - 8);
  v113 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v97 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83008, &qword_1DDA1A280);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v107 = &v97 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v97 - v10;
  v106 = sub_1DDA13A80();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v101 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = &v97 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v116 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v114 = &v97 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  MEMORY[0x1EEE9AC00](v100);
  v115 = &v97 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83380, &qword_1DDA1A288);
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v103 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v97 - v22;
  v23 = sub_1DDA138A0();
  v121 = *(v23 - 8);
  v122 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DDA136B0();
  v26 = *(v25 - 8);
  v126 = v25;
  v127 = v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v125 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v97 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v119 = &v97 - v32;
  v33 = sub_1DDA13FF0();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v37 = sub_1DDA14810();
  __swift_project_value_buffer(v37, qword_1ECDA20C8);
  (*(v34 + 16))(v36, a2, v33);
  v38 = sub_1DDA147F0();
  v39 = sub_1DDA14F00();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v118 = a3;
    v41 = v40;
    v97 = v40;
    v42 = swift_slowAlloc();
    v99 = a2;
    v98 = v42;
    v128 = v42;
    *v41 = 136315138;
    v43 = v119;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v44 = v31;
    v45 = v126;
    v46 = sub_1DDA15400();
    v48 = v47;
    v49 = v45;
    v31 = v44;
    (*(v127 + 8))(v43, v49);
    (*(v34 + 8))(v36, v33);
    v50 = sub_1DD93FA54(v46, v48, &v128);

    v51 = v97;
    *(v97 + 4) = v50;
    v52 = v51;
    _os_log_impl(&dword_1DD8F8000, v38, v39, "Received streaming complete prompt template request with identifier: %s", v51, 0xCu);
    v53 = v98;
    __swift_destroy_boxed_opaque_existential_1(v98);
    MEMORY[0x1E12B8CE0](v53, -1, -1);
    a3 = v118;
    MEMORY[0x1E12B8CE0](v52, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v36, v33);
  }

  v54 = sub_1DDA13FE0();
  v56 = v55;
  v57 = sub_1DDA13FD0();
  v59 = v58;
  v60 = v120;
  sub_1DDA13C50();
  v61 = sub_1DDA13890();
  (*(v121 + 8))(v60, v122);
  v62 = sub_1DD9C13D0(v57, v59, v61);
  v64 = v63;
  LOBYTE(v60) = v65 & 1;
  v123 = sub_1DD95FD2C(v54, v56, v62, v63, v65 & 1);
  sub_1DD928DD4(v62, v64, v60);

  v121 = sub_1DDA13FD0();
  v67 = v66;
  v68 = v119;
  sub_1DDA13FC0();
  v120 = sub_1DDA13690();
  v113 = v69;
  v70 = v126;
  v72 = v127 + 8;
  v71 = *(v127 + 8);
  v71(v68, v126);
  v127 = v72;
  v122 = v71;
  sub_1DDA13FB0();
  v73 = sub_1DDA13690();
  v118 = a3;
  v119 = v73;
  v112 = v74;
  v71(v31, v70);
  sub_1DDA13FA0();
  sub_1DDA13F90();
  v75 = v116;
  sub_1DDA13BF0();
  v76 = sub_1DDA13F30();
  v77 = v75;
  (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
  v78 = v117;
  sub_1DDA13C40();
  v79 = v101;
  sub_1DDA13C00();
  v80 = sub_1DDA13C30();
  v81 = sub_1DD9610EC(v80);

  v82 = v105;
  sub_1DDA13C10();
  v83 = sub_1DDA13C60();
  v84 = v107;
  sub_1DDA13C20();
  v85 = v114;
  sub_1DD9225A0(v121, v67, v120, v113, v119, v112, v125, v114, v115, v77, v78, v79, v81, v82, v83, v84);

  sub_1DD90D378(v84, &qword_1ECD83008, &qword_1DDA1A280);
  sub_1DD90D378(v82, &qword_1ECD82FC0, &qword_1DDA18998);
  (*(v104 + 8))(v79, v106);
  sub_1DD90D378(v117, &qword_1ECD82FC8, &qword_1DDA189A0);
  sub_1DD90D378(v116, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90D378(v85, &qword_1ECD82F60, &qword_1DDA18890);
  v122(v125, v126);
  sub_1DDA13BD0();
  sub_1DD9613D0(&qword_1ECD83020, &qword_1ECD82FD8, &qword_1DDA189B0);
  v86 = v108;
  sub_1DDA15170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83388, &qword_1DDA1A298);
  v87 = swift_allocBox();
  v89 = v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83390, &qword_1DDA1A2A0);
  (*(*(v90 - 8) + 56))(v89, 1, 1, v90);
  v92 = v109;
  v91 = v110;
  v93 = v103;
  (*(v109 + 16))(v103, v86, v110);
  v94 = (*(v92 + 80) + 24) & ~*(v92 + 80);
  v95 = swift_allocObject();
  *(v95 + 16) = v87;
  (*(v92 + 32))(v95 + v94, v93, v91);

  sub_1DDA14E30();

  (*(v92 + 8))(v86, v91);
}

uint64_t sub_1DD95CB94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_unownedRetainStrong();

  a4(a1, a2);
}

uint64_t sub_1DD95CC1C@<X0>(uint64_t (*a1)(_BYTE *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a1;
  v99 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D38, &unk_1DDA18610);
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v82[-v5];
  v105 = sub_1DDA134E0();
  v85 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v7 = &v82[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1DDA140A0();
  v87 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v82[-v12];
  v14 = sub_1DDA138A0();
  v97 = *(v14 - 8);
  v98 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v82[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1DDA136B0();
  v17 = *(v16 - 8);
  v100 = v16;
  v101 = v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v95 = &v82[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v91 = &v82[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v90 = &v82[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v82[-v24];
  v26 = sub_1DDA13FF0();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v82[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v30 = sub_1DDA14810();
  __swift_project_value_buffer(v30, qword_1ECDA20C8);
  v31 = *(v27 + 16);
  v103 = a2;
  v31(v29, a2, v26);
  v32 = sub_1DDA147F0();
  v33 = sub_1DDA14F00();
  v34 = os_log_type_enabled(v32, v33);
  v88 = v8;
  v89 = v7;
  v86 = v10;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v106[0] = v84;
    *v35 = 136315138;
    v83 = v33;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v36 = v25;
    v37 = v100;
    v38 = sub_1DDA15400();
    v39 = v13;
    v41 = v40;
    (*(v101 + 8))(v36, v37);
    (*(v27 + 8))(v29, v26);
    v42 = sub_1DD93FA54(v38, v41, v106);
    v13 = v39;

    *(v35 + 4) = v42;
    _os_log_impl(&dword_1DD8F8000, v32, v83, "Received register document(s) request with identifier: %s", v35, 0xCu);
    v43 = v84;
    __swift_destroy_boxed_opaque_existential_1(v84);
    MEMORY[0x1E12B8CE0](v43, -1, -1);
    MEMORY[0x1E12B8CE0](v35, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v29, v26);
  }

  v44 = sub_1DDA13FE0();
  v46 = v45;
  v47 = sub_1DDA13FD0();
  v49 = v48;
  v50 = v96;
  sub_1DDA13BB0();
  v51 = sub_1DDA13890();
  (*(v97 + 8))(v50, v98);
  v52 = sub_1DD9C13D0(v47, v49, v51);
  v54 = v53;
  LOBYTE(v50) = v55;
  v98 = sub_1DD95FD2C(v44, v46, v52, v53, v55 & 1);
  sub_1DD928DD4(v52, v54, v50 & 1);

  v96 = sub_1DDA13FD0();
  v57 = v56;
  v58 = v90;
  sub_1DDA13FC0();
  v94 = sub_1DDA13690();
  v97 = v59;
  v61 = v101 + 8;
  v60 = *(v101 + 8);
  v62 = v58;
  v63 = v100;
  (v60)(v62, v100);
  v64 = v91;
  sub_1DDA13FB0();
  v92 = sub_1DDA13690();
  v93 = v65;
  v101 = v61;
  (v60)(v64, v63);
  sub_1DDA13FA0();
  sub_1DDA13F90();
  v66 = sub_1DDA13BC0();
  v67 = *(v66 + 16);
  if (v67)
  {
    v84 = v57;
    v90 = v60;
    v91 = v13;
    v106[0] = MEMORY[0x1E69E7CC0];
    sub_1DDA15120();
    v68 = v88;
    v70 = v87 + 16;
    v69 = *(v87 + 16);
    v71 = *(v87 + 80);
    v87 = v66;
    v72 = v66 + ((v71 + 32) & ~v71);
    v103 = *(v70 + 56);
    v104 = v69;
    v102 = (v70 - 8);
    v73 = (v85 + 32);
    v74 = v89;
    v75 = v86;
    do
    {
      v104(v75, v72, v68);
      v76 = sub_1DDA14070();
      sub_1DDA14080();
      v77 = sub_1DDA14090();
      (*v102)(v75, v68);
      type metadata accessor for ImmutableFileHandle(0);
      v78 = swift_allocObject();
      *(v78 + 16) = v76;
      (*v73)(v78 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_url, v74, v105);
      *(v78 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_metadata) = v77;
      sub_1DDA15100();
      sub_1DDA15130();
      sub_1DDA15140();
      sub_1DDA15110();
      v72 += v103;
      --v67;
    }

    while (v67);

    v79 = v106[0];
    v60 = v90;
    v13 = v91;
    v57 = v84;
  }

  else
  {

    v79 = MEMORY[0x1E69E7CC0];
  }

  v80 = v95;
  sub_1DD9184B0(v96, v57, v94, v97, v92, v93, v95, v13, v99, v79);

  sub_1DD90D378(v13, &qword_1ECD82F60, &qword_1DDA18890);
  return (v60)(v80, v100);
}

uint64_t sub_1DD95D618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD95D63C, 0, 0);
}

uint64_t sub_1DD95D63C()
{
  v1 = v0[5];
  swift_unownedRetainStrong();
  v0[6] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DD95D6FC;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1DD95D89C(v5, v3, v4);
}

uint64_t sub_1DD95D6FC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD95D838, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DD95D838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD95D89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83368, &qword_1DDA1A268);
  v4[6] = swift_task_alloc();
  v5 = sub_1DDA13F30();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1DDA138A0();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_1DDA136B0();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_1DDA13FF0();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD95DAAC, 0, 0);
}

uint64_t sub_1DD95DAAC()
{
  v40 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[4];
  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA20C8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14F00();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  if (v8)
  {
    v36 = v0[16];
    v12 = v0[14];
    v13 = v0[15];
    v14 = v0[13];
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v15 = 136315138;
    v37 = v7;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1DDA15400();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v36);
    v19 = sub_1DD93FA54(v16, v18, &v39);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DD8F8000, v6, v37, "Received count tokens in prompt template request with identifier: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E12B8CE0](v38, -1, -1);
    MEMORY[0x1E12B8CE0](v15, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];
  v23 = sub_1DDA13FE0();
  v25 = v24;
  v26 = sub_1DDA13FD0();
  v28 = v27;
  sub_1DDA13C80();
  v29 = sub_1DDA13890();
  (*(v21 + 8))(v20, v22);
  v30 = sub_1DD9C13D0(v26, v28, v29);
  v32 = v31;
  LOBYTE(v26) = v33;
  v0[19] = sub_1DD95FD2C(v23, v25, v30, v31, v33 & 1);
  sub_1DD928DD4(v30, v32, v26 & 1);

  sub_1DDA13C70();
  v34 = swift_task_alloc();
  v0[20] = v34;
  *v34 = v0;
  v34[1] = sub_1DD95DEAC;

  return sub_1DD928A40();
}

uint64_t sub_1DD95DEAC(uint64_t a1)
{
  v4 = *v2;
  v4[21] = v1;

  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1DD95E144;
  }

  else
  {
    v4[22] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1DD95E034;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DD95E034()
{
  v1 = *(v0 + 48);
  v2 = sub_1DDA13ED0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1DDA13A90();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DD95E144()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BlackPowderInferenceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  BlackPowderInferenceProvider.init()();
  return v0;
}

void BlackPowderInferenceProvider.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Anvil28BlackPowderInferenceProvider____lazy_storage___handler;
  v3 = sub_1DDA13BA0();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  type metadata accessor for InferenceProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 16) = v4;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA20C8);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14F00();
  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_6;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v24 = v9;
  *v8 = 136315650;
  v10 = objc_opt_self();
  v11 = [v10 processInfo];
  v12 = [v11 processName];

  v13 = sub_1DDA14B10();
  v15 = v14;

  v16 = sub_1DD93FA54(v13, v15, &v24);

  *(v8 + 4) = v16;
  *(v8 + 12) = 2080;
  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  if (v18)
  {
    v19 = sub_1DDA14B10();
    v21 = v20;

    v22 = sub_1DD93FA54(v19, v21, &v24);

    *(v8 + 14) = v22;
    *(v8 + 22) = 1024;
    v23 = [v10 processInfo];
    LODWORD(v22) = [v23 processIdentifier];

    *(v8 + 24) = v22;
    _os_log_impl(&dword_1DD8F8000, v6, v7, "Starting process: %s, bundle identifier: %s, pid: %d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v9, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
LABEL_6:

    return;
  }

  __break(1u);
}

uint64_t BlackPowderInferenceProvider.loadIn(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD95E54C, 0, 0);
}

uint64_t sub_1DD95E54C()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DD941194;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1DD95E5E8(v3, v2);
}

uint64_t sub_1DD95E5E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD95E60C, 0, 0);
}

uint64_t sub_1DD95E60C()
{
  v13 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20C8);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DD93FA54(v5, v4, &v12);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Received load in request for asset: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v8 = *(v0[4] + 16);
  v0[5] = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_1DD95E830;

    return sub_1DD927F80();
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1DD95E830()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD95E96C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DD95E96C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BlackPowderInferenceProvider.loadOut(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD95E9F4, 0, 0);
}

uint64_t sub_1DD95E9F4()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DD941194;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1DD95EA90(v3, v2);
}

uint64_t sub_1DD95EA90(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD95EAB4, 0, 0);
}

uint64_t sub_1DD95EAB4()
{
  v13 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20C8);

  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DD93FA54(v5, v4, &v12);
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Received load out request for asset: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
    MEMORY[0x1E12B8CE0](v6, -1, -1);
  }

  v8 = *(v0[4] + 16);
  v0[5] = v8;
  if (v8)
  {

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_1DD95ECD8;

    return sub_1DD928114();
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1DD95ECD8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD961614, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t BlackPowderInferenceProvider.requestStream(clientData:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DDA13BA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD957FE0(v6);
  sub_1DDA13B70();
  return (*(v4 + 8))(v6, v3);
}

uint64_t BlackPowderInferenceProvider.requestStream(clientData:configuration:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA13BA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD957FE0(v5);
  sub_1DDA13B60();
  return (*(v3 + 8))(v5, v2);
}

uint64_t BlackPowderInferenceProvider.requestOneShot(clientData:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1DDA13BA0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD95F0C0, 0, 0);
}

uint64_t sub_1DD95F0C0()
{
  sub_1DD957FE0(v0[8]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1DD95F16C;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return MEMORY[0x1EEE4A098](v4, v2, v3);
}

uint64_t sub_1DD95F16C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 80) = v2;

  (*(v6[7] + 8))(v6[8], v6[6]);
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD95F324, 0, 0);
  }

  else
  {

    v8 = v7[1];

    return v8(a1, a2);
  }
}

uint64_t sub_1DD95F324()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BlackPowderInferenceProvider.deinit()
{

  sub_1DD90D378(v0 + OBJC_IVAR____TtC5Anvil28BlackPowderInferenceProvider____lazy_storage___handler, &qword_1ECD83328, qword_1DDA1A108);
  return v0;
}

uint64_t BlackPowderInferenceProvider.__deallocating_deinit()
{

  sub_1DD90D378(v0 + OBJC_IVAR____TtC5Anvil28BlackPowderInferenceProvider____lazy_storage___handler, &qword_1ECD83328, qword_1DDA1A108);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1DD95F444(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  BlackPowderInferenceProvider.init()();
  *a1 = v2;
}

uint64_t sub_1DD95F480(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DD95F4A8, 0, 0);
}

uint64_t sub_1DD95F4A8()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DD93DEB4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1DD95E5E8(v3, v2);
}

uint64_t sub_1DD95F544(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DD95E9F4, 0, 0);
}

void sub_1DD95F56C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DD92BD10;

  JUMPOUT(0x1E12B6E40);
}

uint64_t sub_1DD95F634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DDA13BA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD957FE0(v6);
  sub_1DDA13B70();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DD95F730(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DDA13BA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD957FE0(v5);
  sub_1DDA13B60();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1DD95F824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_1DDA13BA0();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1DD95F8EC, 0, 0);
}

uint64_t sub_1DD95F8EC()
{
  sub_1DD957FE0(v0[7]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1DD95F994;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return MEMORY[0x1EEE4A098](v4, v2, v3);
}